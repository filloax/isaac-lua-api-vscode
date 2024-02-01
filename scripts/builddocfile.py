"""
Merge all lua docs file from the autocomplete API repository.
Needs `git submodule init` to have been run.
"""

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

API_OUT_NAME = os.path.join("vanilla", "repentanceapi.lua")
API_OUT_NAME_RPGN = os.path.join("repentogon", "repentanceapi.lua")

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

def main():
    args = parser.parse_args()

    track_files: bool = args.track_files

    os.makedirs(EMMYLUA_DIR, exist_ok=True)

    sourcefiles = [
        (API_OUT_NAME, [API_DIR_VANILLA, API_DIR_NO_RPGN]),
        (API_OUT_NAME_RPGN, [API_DIR_VANILLA, API_DIR_RPGN_MOD, API_DIR_RPGN_NEW]),
    ]

    for fname, sourcedirs in sourcefiles:
        os.makedirs(os.path.dirname(os.path.join(EMMYLUA_DIR, fname)), exist_ok=True)
        with open(os.path.join(EMMYLUA_DIR, fname), 'w') as f:
            f.write("---@diagnostic disable: missing-return\n\n")
            files = get_files_relative_paths(sourcedirs)
            for luafile in filter(lambda f: f.endswith(".lua"), files):
                if track_files:
                    f.write(f'-- START FILE {luafile} --\n')
                with open(luafile, 'r') as lf:
                    f.write(lf.read())
                    f.write("\n\n")
                if track_files:
                    f.write(f'-- END FILE {luafile} --\n\n')
        print("Written", os.path.join(EMMYLUA_DIR, fname))

if __name__ == "__main__":
    main()
