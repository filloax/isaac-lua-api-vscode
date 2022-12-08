# Change Log

* [1.3.9]

- Added new enum and API from Repentance 1.7.9b

* [1.3.8]

- Added new enum values from Repentance 1.7.9a
    + ModCallbacks
        + MC_PRE_ENTITY_DEVOLVE
    + SoundEffect: various missing values
    + TearFlags: various missing values
- Added functions to Hud from Repentance 1.7.9a
    + Hud:Update()
    + Hud:Render()
    + Hud:PostUpdate()

* [1.3.7]

- Added new enum values from Repentance 1.7.9
    + PickupPrice
        + PRICE_ONE_SOUL_HEART
        + PRICE_TWO_SOUL_HEARTS
        + PRICE_ONE_HEART_AND_ONE_SOUL_HEART
- Added missing enum value
    + PickupVariant 
        + PICKUP_BROKEN_SHOVEL 

* [1.3.6]

- Add some fields that were officially undocumented but work (thanks to kittenchilly)
    + EntityFamiliar:
        + IsDelayed
        + IsFollower
        + OrbitLayer
        + OrbitSpeed
    + ItemConfig_Item:
        + AddCostumeOnPickup
    + RoomConfig_Room:
        + OriginalVariant
    + RoomConfig_Spawn:
        + Entries

* [1.3.5]

- Set lua version to 5.3
- Fix function params for various EntityPlayer methods
- Add MinimapAPI to globals

* [1.3.4]

- Fix warnings in repentanceapi.lua
- Fix function params for Isaac.CountEntities, Isaac.GridSpawn, EntityPlayer:SetPocketActive, EntityNPC.ThrowSpider

* [1.3.3]

- Fix UseActiveItem

* [1.3.2]

- Fix Isaac.Spawn and Game:Spawn parent not being nullable
- Fix Game:HasHallucination return type

* [1.3.1]

- Fix GetPtrHash warnings

* [1.3.0]

- Use vscode-lua's 3.5.0 new features:
    - @operator: Vectors and other classes with custom operators should work, currently doesn't support number-vector operators such as

    ```
    local a = Vector(0,1)
    local b = 2 * a
    ```
    - @enum: Enums are now properly defined as enum types
- Fix EntityPlayer:UseActiveItem overloading
- Fix removing old versions of library

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