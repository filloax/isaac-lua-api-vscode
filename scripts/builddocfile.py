"""
Merge all lua docs file from the autocomplete API repository.
Needs `git submodule init` to have been run.
"""

import json
import os
from typing import TextIO
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-T", "--track-files", action='store_true', help="Prints a comment at the start of the segment of each file")

SCRIPT_PATH = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.abspath(os.path.join(SCRIPT_PATH, ".."))
EMMYLUA_DIR = os.path.join(ROOT_DIR, "merge", "emmylua")

API_DIR_VANILLA = os.path.join(ROOT_DIR, "src", "docs", "vanilla")
API_DIR_NO_RPGN = os.path.join(ROOT_DIR, "src", "docs", "no_repentogon_only")
API_DIR_RPGN_NEW = os.path.join(ROOT_DIR, "src", "docs", "repentogon_new")
API_DIR_RPGN_MOD = os.path.join(ROOT_DIR, "src", "docs", "repentogon_changes")

ENUMS_VANILLA = os.path.join(ROOT_DIR, "src", "docs", "enums", "vanilla.json")
ENUMS_REPENTOGON = os.path.join(ROOT_DIR, "src", "docs", "enums", "repentogon.json")

API_OUT_NAME = os.path.join("vanilla", "repentanceapi.lua")
API_OUT_NAME_RPGN = os.path.join("repentogon", "repentanceapi.lua")

ENUMS_RELPATH = "enums.json"

def get_files_relative_paths(folders):
    file_paths = {}

    for folder in folders:
        for root, _, files in os.walk(folder):
            for file in files:
                file_path = os.path.join(folder, root, file)
                if file in file_paths:
                    file_paths[file].append(file_path)
                else:
                    file_paths[file] = [file_path]

    return [file for key in file_paths for file in file_paths[key]]

def merge_lua_in_dir(path: str, out: TextIO):
    for element in os.listdir(path):
        el_path = os.path.join(path, element)
        if os.path.isdir(el_path):
            merge_lua_in_dir(el_path, out)
        elif element.endswith(".lua"):
            with open(el_path, 'r') as luafile:
                out.write(luafile.read())
                out.write("\n\n")

def create_enums_from_json(json_paths: list[str], writer: TextIO):
    data = {}
    for json_path in json_paths:
        with open(json_path, 'r') as jf:
            data2 = json.load(jf)
            data = merge(data, data2, ignore_conflicts=True)

    for key in data:
        _write_enum(key, data[key], writer)

DEPTH_SEP = '    '

def _write_enum(name: str, enum_dict: dict, writer: TextIO, depth: int = 0):
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
            _write_enum(key, item, writer, depth + 1)
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

    track_files: bool = args.track_files

    os.makedirs(EMMYLUA_DIR, exist_ok=True)

    sourcefiles = [
        (API_OUT_NAME, [API_DIR_VANILLA, API_DIR_NO_RPGN], [ENUMS_VANILLA]),
        (API_OUT_NAME_RPGN, [API_DIR_VANILLA, API_DIR_RPGN_MOD, API_DIR_RPGN_NEW], [ENUMS_VANILLA, ENUMS_REPENTOGON]),
    ]

    for fname, sourcedirs, enumfiles in sourcefiles:
        os.makedirs(os.path.dirname(os.path.join(EMMYLUA_DIR, fname)), exist_ok=True)
        with open(os.path.join(EMMYLUA_DIR, fname), 'w') as f:
            f.write("---@diagnostic disable: missing-return, duplicate-doc-alias\n\n")
            files = get_files_relative_paths(sourcedirs)
            for luafile in filter(lambda f: f.endswith(".lua"), files):
                if track_files:
                    f.write(f'-- START FILE {luafile} --\n')
                with open(luafile, 'r') as lf:
                    f.write(lf.read())
                    f.write("\n\n")
                if track_files:
                    f.write(f'-- END FILE {luafile} --\n\n')

            f.write('\n\n-- Enums\n')
            create_enums_from_json(enumfiles, f)
        print("Written", os.path.join(EMMYLUA_DIR, fname))

if __name__ == "__main__":
    main()
