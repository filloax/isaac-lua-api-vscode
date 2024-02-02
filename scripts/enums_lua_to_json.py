from io import TextIOWrapper
import re
import json
import sys
import tempfile
import os

def convert_lua_enums_to_json(input_path, output_path):
    no_com_file = tempfile.TemporaryFile(delete=False)
    no_com_file.close()
    remove_comments_from_lua_file(input_path, no_com_file.name)
    table_lines = extract_table_lines(no_com_file.name, True)
    os.remove(no_com_file.name)    

    with open(input_path, 'r') as file:
        lua_lines = file.readlines()

    data = {}

    for (enumPath, lines) in table_lines.items():
        curData = data
        for key in enumPath.split("."):
            if key not in curData:
                curData[key] = {}
            curData = curData[key]
        # lines start from 1
        relevant_lines = lua_lines[lines[0]:lines[1] - 1]

        cur_comment = None

        for line in relevant_lines:
            line = line.strip()
            if line.startswith("--"):
                if cur_comment is None:
                    cur_comment = re.sub(r'^--s*', '', line)
                else:
                    cur_comment += f"\n{re.sub(r'^--s*', '', line)}"
            elif m := re.match(r'\s*(?P<key>\w+)\s*=\s*(?P<value>[^\s,]+),?\s*(?:--\s*(?P<comment>.+))?', line):
                key = m.group("key")
                value = m.group("value")
                comment = m.groupdict().get("comment", None)

                if comment is None:
                    curData[key] = value
                else:
                    curData[key] = {
                        "value": value,
                        "comment": comment,
                    }
            elif line != "":
                print(f"Line <{line}> could not be parsed")

    with open(output_path, 'w') as output_file:
        json.dump(data, output_file, indent=2)

def remove_comments_from_lua_file(input_file, output_file):
    """Preserves line numbers.
    """
    with open(input_file, 'r') as infile:
        lua_code = infile.readlines()

    # Remove comments from each line
    lua_code = [re.sub(r'--.*', '', line) for line in lua_code]

    with open(output_file, 'w') as outfile:
        outfile.writelines(lua_code)

def extract_table_lines(lua_file_path, only_deepest_in_branch=False):
    table_lines = {}
    stack = []

    with open(lua_file_path, 'r') as file:
        for line_num, line in enumerate(file, 1):
            if m := re.search(r'\s*(\w+)\s*=\s*{', line):
                table_name = m.group(1)
                if stack:
                    parent_table, _ = stack[-1]
                    table_name = f"{parent_table}.{table_name}"
                stack.append((table_name, line_num))
            elif '}' in line:
                end_line = line_num
                while stack and '}' in line:
                    current_table, start_line = stack.pop()
                    table_lines[current_table] = (start_line, end_line)
                    line = line.replace('}', '', 1)

    keys = table_lines.keys()
    drop_keys = list(filter(lambda key: len([key2 for key2 in keys if key2.startswith(key) and key != key2]) > 0, keys))

    for key in drop_keys:
        del table_lines[key]

    return table_lines

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_file_path> <output_file_path>")
        sys.exit(1)

    input_path = sys.argv[1]
    output_path = sys.argv[2]

    convert_lua_enums_to_json(input_path, output_path)
