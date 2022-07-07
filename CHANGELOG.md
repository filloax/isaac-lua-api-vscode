# Change Log

* [1.2.2]

- Fixed associations setting

* [1.2.1]

- Fixed some return types for Isaac and Entity classes

* [1.2.0]

- Settings are now applied locally to the project, without affecting the global settings of the Lua extension, will be configurable in the future on a per-project basis
- Added "workspaceSettings" setting to disable changing base VSCode settings (ie anm2 to XML file associations)
- Added placeholder metamethods (:__add, etc) to Vector, will replace with proper metamethod definitions when the Lua extension adds them

* [1.1.3]

- Fix Entity:ToX() methods
- Fix RoomDescriptor enum namespace

# [1.1.2]

- Add API globals to Lua settings 

## [1.1.1]

- Fix Isaac.FindInRadius and Isaac.FindByType return type
- Fix some methods having arguments wrongly set as required
- Fix misnamed fields

## [1.1.0]

- Added enums to the autocomplete
- Fix ItemConfig autocomplete

## [1.0.4]

- Page fixes (still still learning VSCode publishing)

# [1.0.3]

- Update API to repository changes.

## [1.0.1] - [1.0.2]

- Page fixes (still learning VSCode publishing)

## [1.0.0]

- Initial release