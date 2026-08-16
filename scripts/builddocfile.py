"""
Merge all lua docs files.
"""

import json
import os
from pathlib import Path
from typing import TextIO, TypedDict
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-T", "--track-files", action='store_true', help="Prints a comment at the start of the segment of each file")

SCRIPT_PATH = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = Path(SCRIPT_PATH).parent.absolute()
DOCS_DIR = ROOT_DIR / "src" / "docs"
EMMYLUA_DIR = ROOT_DIR / "merge" / "emmylua"
PLUGIN_DIR = ROOT_DIR / "merge" / "plugin"
DEPTH_SEP = '    '

class Configuration(TypedDict, total=False):
    name: str
    fname: Path
    sourcedirs: list[Path]
    enumfiles: list[Path]
    callbackfiles: list[Path]
    
# not all callback-related fields are used (mainly param comments),
# keep in case we find a way later
    
class CallbackParam(TypedDict):
    name: str | None
    type: str
    """Should be a luadoc type string"""
    comment: str | None
    optional: bool | None
    """Defaults to False for params, True for returns"""
    
class CallbackDef(TypedDict):
    value: str
    args: list[CallbackParam]
    returns: list[CallbackParam]
    param: CallbackParam | None
    comment: str

# for enums, later items overwrite earlier items
CONFIGURATIONS: list[Configuration] = [
    Configuration(
        name="vanilla",
        fname=Path("vanilla") / "repentanceapi.lua",
        sourcedirs=[
            DOCS_DIR / "vanilla",
            DOCS_DIR / "no_repentogon_only",
        ],
        enumfiles=[
            DOCS_DIR / "enums" / "vanilla.json",
        ],
        callbackfiles=[
            DOCS_DIR / "enums" / "callbacks" / "vanilla.json",
        ],
    ),
    Configuration(
        name="repentogon",
        fname=Path("repentogon") / "repentanceapi.lua",
        sourcedirs=[
            DOCS_DIR / "vanilla",
            DOCS_DIR / "repentogon_changes",
            DOCS_DIR / "repentogon_new",
        ],
        enumfiles=[
            DOCS_DIR / "enums" / "vanilla.json",
            DOCS_DIR / "enums" / "repentogon.json",
        ],
        callbackfiles=[
            DOCS_DIR / "enums" / "callbacks" / "vanilla.json",
            DOCS_DIR / "enums" / "callbacks" / "repentogon.json",
        ],
    )
]

class ExtraConfiguration(TypedDict):
    name: str
    fname: Path
    plugin_fname: str
    callbackfiles: list[Path]
    has_mod_arg: bool
    extra_config_args: list[str]

# used for extra files for library callbacks (libraries are expected to provide their own types otherwise)
EXTRA_CONFIGURATIONS = [
    ExtraConfiguration(
        name="stageAPI",
        fname=Path("stageapi") / "stageapi.lua",
        plugin_fname="callbackParamsStageAPI.lua",
        callbackfiles=[
            DOCS_DIR / "enums" / "callbacks" / "stageapi.json",
        ],
        has_mod_arg=False,
        extra_config_args=['RequireRegisterFunc="StageAPI.AddCallback"']
    )
]

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

def create_enums_from_json(json_paths: list[Path], writer: TextIO):
    enums = {}
    for json_path in json_paths:
        data = json.loads(json_path.read_text())
        enums = _merge(enums, data, ignore_conflicts=True)

    for key in enums:
        _write_enum(key, enums[key], writer)

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

        
def create_callbacks_from_json(json_paths: list[Path], writer: TextIO, aliases_only=False, has_mod_arg=True):
    def pr(*args):
        print(*args, file=writer)
        
    callbacks: dict[str, CallbackDef] = {}
    for json_path in json_paths:
        data = json.loads(json_path.read_text())
        callbacks = _merge(callbacks, data, ignore_conflicts=True)
    
    if not aliases_only:
        pr("---@enum ModCallbacks")
        pr("ModCallbacks = {")
        
        for key, callback in callbacks.items():
            _write_callback_enum(key, callback, writer)
            
        pr("}")
        pr()
    
    pr("-- Callback alias functions")
    pr()
    
    for key, callback in callbacks.items():
        _write_callback_alias_fun(key, callback, writer, has_mod_arg)

def _write_callback_enum(name: str, callback: CallbackDef, writer: TextIO):
    result = DEPTH_SEP
    
    result += name + " = "
    
    value = callback["value"]
    try:
        value = str(int(value))
    except ValueError:
        value = f'"{value}"'
    
    result += value
    if len(callback.get("args", [])) > 0:
        result += ", -- ("
        
        for i, arg in enumerate(callback["args"]):
            result += _format_fun_arg(arg)
            if i < len(callback["args"]) - 1:
                result += ", "
        result += ")"
    else:
        # still use () for returns so it looks like (): return for consistency with prev format
        if len(callback.get("returns", [])) > 0:
            result += ", -- ()"
        else:
            result += ", -- Callback has no arguments."
    
    if len(callback.get("returns", [])) > 0:
        result += ": "
        for i, ret in enumerate(callback["returns"]):
            result += ret["type"]
            if i < len(callback["returns"]) - 1:
                result += ", "
                
    if callback.get("param"):
        result += "; Optional Arg: "
        result += callback["param"]["type"]
        if callback["param"].get("name"):
            result += f' {callback["param"]["name"]}'
        if callback["param"].get("comment"):
            result += f' ({callback["param"]["comment"]})'
    
    if callback.get("comment"):
        result += " "
        if len(callback.get("args", [])) > 0:
            result += "- "
        result += callback["comment"]
    
    print(result, file=writer)

def _write_callback_alias_fun(name: str, callback: CallbackDef, writer: TextIO, has_mod_arg):
    result = f"---@alias {name}_FUN fun("
    if has_mod_arg:
        result += "self: ModReference"
    
    for i, arg in enumerate(callback.get("args", [])):
        if has_mod_arg or i > 0:
            result += ", "
        result += _format_fun_arg(arg, lua_name=True)
            
    result += ")"
    
    if len(callback.get("returns", [])) > 0:
        result += ": "
        for i, ret in enumerate(callback["returns"]):
            result += ret["type"]
            # default to optional for returns
            if ret.get("optional") != True:
                result += "?"
            if i < len(callback["returns"]) - 1:
                result += ", "
    
    print(result, file=writer)
    
def _format_fun_arg(param: CallbackParam, lua_name: bool = False):
    typ = param["type"]
    name = param.get("name", typ)
    if lua_name:
        name = _to_camel_case(name)
    if param.get("optional"):
        name += "?"
        
    return f'{name}: {typ}'

def _to_camel_case(name: str) -> str:
    if name.isupper():
        return name.lower()
    return name[0].lower() + name[1:]

def create_callback_params_lua(json_paths: list[Path], writer: TextIO, extra_config_args: list[str] = []):
    callbacks: dict[str, CallbackDef] = {}
    for json_path in json_paths:
        data = json.loads(json_path.read_text())
        callbacks = _merge(callbacks, data, ignore_conflicts=True)

    print("-- AUTO-GENERATED by scripts/builddocfile.py, do not edit", file=writer)
    print("-- used by plugin.lua to give type to callback functions passed to AddCallback", file=writer)
    print("---@type table<string, CallbackTypes>", file=writer)
    print("return {", file=writer)
    for name, callback in callbacks.items():
        args = callback.get("args", [])
        returns = callback.get("returns", [])
        if not args and not returns:
            continue
        arg_types = ", ".join(f'"{arg["type"]}"' for arg in args)
        return_types = ", ".join(f'"{ret["type"]}"' for ret in returns)
        extra_config_args_str = (", " + ", ".join(extra_config_args)) if len(extra_config_args) > 0 else ""
        print(f'{DEPTH_SEP}["{name}"] = {{ Args = {{ {arg_types} }}, Returns = {{ {return_types} }}{extra_config_args_str} }},', file=writer)
    print("}", file=writer)

def _merge(a: dict, b: dict, path=[], ignore_conflicts=False):
    for key in b:
        if key in a:
            if isinstance(a[key], dict) and isinstance(b[key], dict):
                _merge(a[key], b[key], path + [str(key)], ignore_conflicts)
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

    for config in CONFIGURATIONS:
        fname = config["fname"]
        sourcedirs = config["sourcedirs"]
        enumfiles = config["enumfiles"]
        callbackfiles = config["callbackfiles"]

        out_path = EMMYLUA_DIR / fname
        os.makedirs(out_path.parent, exist_ok=True)
        with out_path.open("w") as f:
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
                    
            f.write("\n\n--Callbacks\n")
            create_callbacks_from_json(callbackfiles, f)

            f.write('\n\n-- Enums\n')
            create_enums_from_json(enumfiles, f)
        print("Written", out_path)

    os.makedirs(PLUGIN_DIR, exist_ok=True)
    plugin_data_path = PLUGIN_DIR / "callbackParams.lua"
    with plugin_data_path.open("w") as f:
        create_callback_params_lua([
            DOCS_DIR / "enums" / "callbacks" / "vanilla.json",
            DOCS_DIR / "enums" / "callbacks" / "repentogon.json",
        ], f)
    print("Written", plugin_data_path)
    
    # extra library configurations: plugin and callbacks
    for config in EXTRA_CONFIGURATIONS:
        fname = config["fname"]
        plugin_fname = config["plugin_fname"]
        callbackfiles = config["callbackfiles"]
        has_mod_arg = config["has_mod_arg"]
        extra_config_args = config["extra_config_args"]

        out_path = EMMYLUA_DIR / fname
        os.makedirs(out_path.parent, exist_ok=True)
        with open(out_path, 'w') as f:
            f.write("---@diagnostic disable: missing-return, duplicate-doc-alias\n\n")
            f.write("\n\n--Callbacks\n")
            create_callbacks_from_json(callbackfiles, f, aliases_only=True, has_mod_arg=has_mod_arg)
        print("Written", out_path)
        
        plugin_data_path = PLUGIN_DIR / plugin_fname
        with plugin_data_path.open("w") as f:
            create_callback_params_lua(callbackfiles, f, extra_config_args=extra_config_args)
        print("Written", plugin_data_path)


if __name__ == "__main__":
    main()
