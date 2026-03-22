"""
Merge Lua files from the docs folder into two different libraries,
plus move config files for the Lua addon.
"""

import json
import os
import argparse
import shutil

parser = argparse.ArgumentParser()
parser.add_argument("-T", "--track-files", action='store_true', help="Prints a comment at the start of the segment of each file")

SCRIPT_PATH = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.abspath(os.path.join(SCRIPT_PATH, ".."))
ADDON_DIR = os.path.join(ROOT_DIR, "merge", "addon")

API_DIR_VANILLA = os.path.join(ROOT_DIR, "src", "docs", "vanilla")
API_DIR_NO_RPGN = os.path.join(ROOT_DIR, "src", "docs", "no_repentogon_only")
API_DIR_RPGN_NEW = os.path.join(ROOT_DIR, "src", "docs", "repentogon_new")
API_DIR_RPGN_MOD = os.path.join(ROOT_DIR, "src", "docs", "repentogon_changes")

ENUMS_VANILLA = os.path.join(ROOT_DIR, "src", "docs", "enums", "vanilla.json")
ENUMS_REPENTOGON = os.path.join(ROOT_DIR, "src", "docs", "enums", "repentogon.json")

CONFIG_FILE_VANILLA = os.path.join(ROOT_DIR, "addon", "config-vanilla.jsonc")
CONFIG_FILE_REPENTOGON = os.path.join(ROOT_DIR, "addon", "config-repentogon.jsonc")

CONFIG_FILENAME = "config.json"

def get_files_by_relative_path(dirs):
    files_dict = {}
    for dir_path in dirs:
        for root, _, files in os.walk(dir_path):
            for file in files:
                if file.endswith(".lua"):
                    full_path = os.path.join(root, file)
                    rel_path = os.path.relpath(full_path, dir_path)
                    if rel_path not in files_dict:
                        files_dict[rel_path] = []
                    files_dict[rel_path].append(full_path)
    return files_dict

def merge_files(file_paths, track_files=False):
    merged = "---@meta\n\n"
    for path in file_paths:
        if track_files:
            merged += f'-- START FILE {path} --\n'
        with open(path, 'r') as f:
            merged += f.read()
        merged += "\n\n"
        if track_files:
            merged += f'-- END FILE {path} --\n\n'
    return merged

def create_enums_from_json(json_paths: list[str], writer):
    data = {}
    for json_path in json_paths:
        with open(json_path, 'r') as jf:
            data2 = json.load(jf)
            data = merge(data, data2, ignore_conflicts=True)

    for key in data:
        __write_enum(key, data[key], writer)

DEPTH_SEP = '    '

def __write_enum(name: str, enum_dict: dict, writer, depth: int = 0):
    is_parent = False
    for (key, item) in enum_dict.items():
        is_value = _is_enum_dict_value(item)
        if is_value and is_parent:
            raise Exception(f"Enum dict contains mix of values and enums: {enum_dict}")
        elif not is_value:
            is_parent = True
    if not is_parent:
        print(DEPTH_SEP * depth + f"---@enum {name}", file=writer)
    print(DEPTH_SEP * depth + f"{name} = ""{", file=writer)
    for (key, item) in enum_dict.items():
        if is_parent:
            __write_enum(key, item, writer, depth + 1)
        elif type(item) is dict:
            print(DEPTH_SEP * (depth + 1) + f"{key} = {item['value']}, -- {item['comment']}", file=writer)
        else:
            print(DEPTH_SEP * (depth + 1) + f"{key} = {item},", file=writer)
    if depth == 0:
        print(DEPTH_SEP * depth + "}", file=writer)
    else:
        print(DEPTH_SEP * depth + "},", file=writer)

def _is_enum_dict_value(val):
    return (
        type(val) is not dict 
        or (type(val) is dict and "value" in val)
    )

def merge(a: dict, b: dict, path=[], ignore_conflicts=False):
    for key in b:
        if key in a:
            if isinstance(a[key], dict) and isinstance(b[key], dict):
                merge(a[key], b[key], path + [str(key)], ignore_conflicts)
            elif type(a[key]) != type(b[key]) and not ignore_conflicts:
                raise Exception('Conflict at ' + '.'.join(path + [str(key)]) + ": a=" + str(type(a[key])) + ", b=" + str(type(b[key])))
            else:
                a[key] = b[key]
        else:
            a[key] = b[key]
    return a

def main():
    args = parser.parse_args()
    track_files = args.track_files

    sourcefiles = [
        ("vanilla", [API_DIR_VANILLA, API_DIR_NO_RPGN], [ENUMS_VANILLA]),
        ("repentogon", [API_DIR_VANILLA, API_DIR_RPGN_MOD, API_DIR_RPGN_NEW], [ENUMS_VANILLA, ENUMS_REPENTOGON]),
    ]
    
    config_files = {
        "vanilla": CONFIG_FILE_VANILLA,
        "repentogon": CONFIG_FILE_REPENTOGON,
    }

    # Clear folders
    shutil.rmtree(ADDON_DIR)
    
    for config_name, dirs, enumfiles in sourcefiles:
        output_base = os.path.join(ROOT_DIR, "merge", "addon", config_name)
        output_library = os.path.join(output_base, "library")
        
        os.makedirs(output_base, exist_ok=True)

        files_dict = get_files_by_relative_path(dirs)

        # Merge docs files
        c = 0
        for rel_path, paths in files_dict.items():
            output_path = os.path.join(output_library, rel_path)
            os.makedirs(os.path.dirname(output_path), exist_ok=True)

            merged_content = merge_files(paths, track_files)

            with open(output_path, 'w') as f:
                f.write(merged_content)
                c += 1

        print(f"{config_name} | Written {c} merged files")

        # Create enums
        enum_output_path = os.path.join(output_library, "enums.lua")
        with open(enum_output_path, 'w') as f:
            f.write("---@meta\n\n")
            create_enums_from_json(enumfiles, f)
        print(f"{config_name} | Written enum file: {enum_output_path}")
        
        config_file = config_files[config_name]
        output_config_file = os.path.join(output_base, CONFIG_FILENAME)
        shutil.copy(config_file, output_config_file)
        print(f"{config_name} | Written configuration file: {output_config_file}")

if __name__ == "__main__":
    main()