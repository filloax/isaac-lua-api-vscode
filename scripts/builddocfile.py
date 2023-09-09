"""
Merge all lua docs file from the autocomplete API repository.
Needs `git submodule init` to have been run.
"""

import os
from typing import TextIO

SCRIPT_PATH = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.join(SCRIPT_PATH, "..")
EMMYLUA_DIR = os.path.join(ROOT_DIR, "src", "emmylua")
API_META_DIR = os.path.join(ROOT_DIR, "isaac-api-autocomplete-lua", "meta")

API_OUT_NAME = "repentanceapi.lua"

def merge_lua_in_dir(path: str, out: TextIO):
    for element in os.listdir(path):
        el_path = os.path.join(path, element)
        if os.path.isdir(el_path):
            merge_lua_in_dir(el_path, out)
        elif element.endswith(".lua"):
            with open(el_path, 'r') as luafile:
                out.write(luafile.read())
                out.write("\n\n")


def main():
    os.makedirs(EMMYLUA_DIR, exist_ok=True)
    with open(os.path.join(EMMYLUA_DIR, API_OUT_NAME), 'w') as f:
        f.write("---@diagnostic disable: missing-return\n\n")
        merge_lua_in_dir(API_META_DIR, f)


if __name__ == "__main__":
    main()