---@diagnostic disable: missing-return

_G.Console = {}

---Returns a table containing current command history.
---@return string[]
function Console.GetCommandHistory()
end

---Returns a table containing every previous entry printed to the console.
---
---This is ordered last-to-first- the first entry will be the currently blank line awaiting user input, followed by the previous print, and so on. The last line will always be "Repentance Console".
---@return string[]
function Console.GetHistory()
end

---Removes previous lines from history.
---@param amount? number @default: `1`. The amount of lines to remove from the history.
function Console.PopHistory(amount)
end

---Prints an error to the console, errors display in red text.
---@param error string
function Console.PrintError(error)
end

---Prints a warning to the console, warnings display in yellow text.
---@param warning string
function Console.PrintWarning(warning)
end

---Registers a command in the new console. These will show up in the new console's autocomplete.
---@param name string The name of the command
---@param description string The description of the command. It will show when typing the `help` command.
---@param helpText string Helpful information about the command. It will show up when typing `help (name)`.
---@param showOnMenu boolean
---@param autoCompleteType AutocompleteType Has the command inherit the autocomplete type. If the command doesn't fit into any of the standard types, use `AutocompleteType.CUSTOM` combined with the `MC_CONSOLE_AUTOCOMPLETE` callback to create a bespoke one for this command.
function Console.RegisterCommand(name, description, helpText, showOnMenu, autoCompleteType)
end

---Registers a macro in the new console. These will show up in the new console's autocomplete for the `macro` command.
---@param name string The name of the macro
---@param commands string[] Table of strings containing the commands to be executed in order
function Console.RegisterMacro(name, commands)
end
