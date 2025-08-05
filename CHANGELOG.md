# Change Log

* [1.12.2]
    - PR [#31](https://github.com/filloax/isaac-lua-api-vscode/pull/31): ItemPool and ItemConfig changes (epfly6)

* [1.12.1]

    - Add Get/SetBloodLustCounter, SubCharge field under ActiveItemDesc, CharacterMenu.SetSelectedCharacterID(ID), RandomVector(), EntityPickup.GetRandomPickupVelocity(Position, RNG, VelocityType), and various Room functions
	- Add PRE_LASER_COLLISION callback
	- Update comments to GRID_COLLISION callbacks with return types and optional args
	- Update comments to PRE_KNIFE_COLLISION and PRE_NPC_COLLISION to be consistent with the other PRE_COLLISION callbacks
	- Add comments to various functions and class fields for more detailed information found on the API docs
	- Fix GetCollectibleFlag.BAN_PASSIVES being incorrectly named as GetCollectibleFlag.BAN_PASSIVE
	- WeaponModifier and EntityTag enumerations are now defined with BitFlags instead of all being "1"
	- Specify specific enumerations for various parameters instead of plain integers
	- Fix some incorrect/missing parameters and returns in various functions and class fields
	- Many functions updated to specify if their arguments are optional
	- PR [#28](https://github.com/filloax/isaac-lua-api-vscode/pull/28): Param and return changes (Kerkel)
	- PR [#29](https://github.com/filloax/isaac-lua-api-vscode/pull/29): Merge RoomConfig with RoomConfigHolder and Add BossPool related classes (Guantol-Lemat)

* [1.12.0]

    - Fix extension erroring when opneing files outside of a workspace, will now self-disable in that case (check README!)
    - Add REPENTANCE_PLUS global
    - Fix FromAngle not being available on global Vector
    - Add Options.JacobEsauControls for Repentance+
    - Rename GetPillcolor -> GetPillColor
    - LoadGraphics argument on Sprite:Load is optional
    - Corrected LevelCurse enum's values all being the exact same
    - Add various missing variables, functions, and arguments for both vanilla and REPENTOGON content
    - PR #25: ItemConfigCard changes

* [1.11.1]

    - Fix enum typos in build
    - Fix EntityEffect.CreateLight (from nazjun)
    - Document Isaac.GetAxisAlignedUnitVectorFromDir (from nazjun)
    - Explain return type on ENTITY_TAKE_DMG
    - strings on HUD:ShowFortuneText are optional
    - Add Color.Default
    - Fix collision callback descriptions
    - Fix FullCharge, Color.Lerp
    - Add Color.Default

* [1.11.0]

    - Support for Repentogon 1.0.12
    - Fix issues with ItemConfig: Correct enum values, add descriptions, and move ItemConfig.Config under the enum instead of the class
    - Add missing description information to MC_USE_ITEM and MC_USE_CARD
    - Add XMLNode.BOSSCOLOR

* [1.10.1]

    - Tweaks to Repentogon docs

* [1.10.0]

    - Support for Repentogon 1.0.11
    - Fix Repentogon-added Grid Entity subclasses not being a child of the GridEntity class
    - Fix EntityPlayer:GetFootprintColor returning Color instead of KColor
    - ItemConfig and RoomDescriptor both now work properly as both a class and an enum
    - Add some missing functions

* [1.9.7]

    - Fix for dupe ItemConfig and missing TEARFLAG warnings
    - Fix a few incomplete functions
    - Add remaining additions up to Repentogon v1.0.10c

* [1.9.6]

    - Fix EntityConfigEntity:GetGibsAmount
    - RNG constructor and Get/SetConceptionFlags
    - Add ItemConfigItem.CraftingQuality
    - Assort RGON update additions
    - Fix $schema issue when editing files that led to wrong .luarc.json being generated

* [1.9.5]

    - Remove duplicates for SetOverlayFrame

* [1.9.4]

    - Accepts and preserves non-standard JSON formatting in .luarc (comments, trailing commas)

* [1.9.3]

    - Support for Repentogon 1.0.9b
    - Tweaks to Repentogon and Vanilla docs

* [1.9.2]

    - Support for Repentogon 1.0.9a
    - Tweaks to Repentogon docs (Sanio, SomeEngineer and thicco-catto contribution)

* [1.9.1]

    - Add Giantbook.MEGA_MUSH
    - Fix MC_TRIGGER_PLAYER_DEATH_POST_CHECK_REVIVES not having it's ID
    - Fix XMLData.GetEntryFromEntity using EntityPlayer instead of Entity

* [1.9.0]

    - Support for Repentogon 1.0.9 and some other docs adjustments by Sanio (It's me, I'm Sanio, I can do this now :>)

* [1.8.3]

    - Assorted tweaks and improvements (Sanio & S0meEngineer contribution)

* [1.8.2]

    - Tweaks to Repentogon docs (Syntax Sculptor contribution)

* [1.8.1]

    - Tweaks to Repentogon docs

* [1.8.0]

    - include defined as alias of require
    - Support for Repentogon 1.0.8 (thanks Sanio!)

* [1.7.4]

    - Fix flag enums

* [1.7.3]

    - Repentogon
        - XMLData.GetBossColorByTypeVarSub
    - Define Vector.One and Vector.Zero as Vectors
    - Assorted fixes

* [1.7.2]

    - Fix some Repentogon functions and overloads
    - Fix some vanilla functions

* [1.7.1]

    - Fix various duplicate entries in repentogon docs
    - More contributions by Sanio and Maya-bee
    - Internal changes: enums are saved as JSON instead
    - Internal changes: now no longer uses docs repo as submodule

* [1.7.0]

    - Many fixes, docs and improvements thanks to Sanio!

* [1.6.1]

    - Fix syntax errors in Repentogon API docs

* [1.6.0]

    - Support for [Repentogon](https://repentogon.com/) API! Can be enabled via extension settings. Thanks to 4head for writing the Lua docs for it!
    - Re-enabled ModReference class
    - Internal changes

* [1.5.0]

    - The extension now detects if the workspace matches a isaac mod project, and asks the user for confirmation before enabling (once per workspace).
    - Add palette commands to manually enable/disable the extension in the workspace (if you initially denied to enable it)
    - Fixed some warnings in the lua api file

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