<div align="center">

# Binding of Isaac Lua API

A VSCode Extension to add support and autocomplete for the The Binding of Isaac: Repentance modding API to the Lua Language Server by Sumneko.

[![Open in VSCode](https://img.shields.io/static/v1?logo=visualstudiocode&label=&message=Open%20in%20Visual%20Studio%20Code&labelColor=2c2c32&color=007acc&logoColor=007acc)](https://open.vscode.dev/Filloax/isaac-lua-api-vscode) [![Build Status](https://github.com/ManticoreGamesInc/vscode-core/workflows/CI/badge.svg)](https://github.com/Filloax/isaac-lua-api-vscode/actions?workflow=CI) [![Marketplace Version](https://img.shields.io/visual-studio-marketplace/v/Filloax.isaac-lua-api-vscode?label=Visual%20Studio%20Marketplace&logo=visual-studio-code "Current Version")](https://marketplace.visualstudio.com/items?itemName=Filloax.isaac-lua-api-vscode)

![](https://i.imgur.com/iZDP2iy.png)

</div>

This extension uses the [Lua Language Server](https://microsoft.github.io/language-server-protocol/) by [Sumneko](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) to add autocomplete for The Binding of Isaac: Repentance's modding API with [EmmyLua](https://github.com/sumneko/lua-language-server/wiki/EmmyLua-Annotations) annotations.

> Tired of having to go to the [docs](https://wofsauge.github.io/IsaacDocs/rep/) every time you want to mod any small thing? Of having to run the whole game to find out if you made an error that would have been immediately visible in the editor in any other language? Or just want an autocomplete that isn't "here's every single function name I found in the mod folder"? Then this might help you.

This extension is based on the [isaac-api-autocomplete-lua](https://github.com/filloax/isaac-api-autocomplete-lua) repository.

## How to use

By default, with the extension global functions like `Game()`, `Vector(x, y)` and `Isaac.xxx` should already be recognized. To have it work for callback parameters, you'll need to add `---@param` tags, like so:

```Lua
---@param npc EntityNPC
---@param intParameter integer
---@param source EntityRef
local myCallbackFunction(_, npc, intParameter, source)
```

Autocomplete should work with the type specifications too, so it shouldn't be too annoying. You should also do this for any other function where you want the autocomplete to work on its params, also adding `---@return` for return types.

You can also use `---@type` for specific variables, more info on the [annotation documentation](https://github.com/sumneko/lua-language-server/wiki/EmmyLua-Annotations). Example:

```Lua
---@type ItemConfig_Item
local item = [etc.]
```

More examples:

![](https://i.imgur.com/1BiL3CE.png)
![](https://i.imgur.com/WnC5IFv.png)

## Extension Settings

This extension has no settings; you can configure behavior in the Lua Language Server extension settings.

## Known Issues

There are some issues on the Lua Language Server (which otherwise is very very good) side. They might be fixed when the language server is updated.

- Variables obtained from vector and color operators won't be detected as the correct type: for example, `local c = a + b` where `a` and `b` are Vectors won't have `c` be recognized as a Vector.
- Entity convertion operations (like `entity = entity:ToNPC()`) won't make the language server recognize the variable as the new type after the call; either use a separate variable or even better a `---@type EntityNPC` or equivalent comment above it, for now.

## Release Notes

## 1.2.0

- Settings are now applied locally to the project, without affecting the global settings of the Lua extension, will be configurable in the future on a per-project basis
- Added "workspaceSettings" setting to disable changing base VSCode settings (ie anm2 to XML file associations)

### 1.1.0

- Added enums to the autocomplete.

### 1.0.0

- Initial release.