---@class AddCollectibleResult
---@field Type CollectibleType?
---@field Charge integer?
---@field FirstTime boolean?
---@field Slot integer?
---@field VarData integer?
---@field Player EntityPlayer?

---@class SFXPlayResult
---@field ID SoundEffect?
---@field Volume number?
---@field FrameDelay integer?
---@field Loop boolean?
---@field Pitch number?
---@field Pan number?

---@class MusicPlayResult
---@field ID Music?
---@field Volume number? @Only meaningful when overriding a `MusicManager:Play` call (i.e. `IsFade` is false)
---@field FadeRate number? @Only meaningful when overriding a `MusicManager:Crossfade` call (i.e. `IsFade` is true)

---@class ChangeRoomResult
---@field TargetRoomIdx integer?
---@field Dimension integer?

---@class NPCMorphResult
---@field EntityType EntityType?
---@field Variant integer?
---@field SubType integer?
---@field ChampionId ChampionColor? @Optional; when provided the entity morphs into a champion of this color

---@class PickupMorphResult
---@field EntityType integer?
---@field Variant integer?
---@field SubType integer?
---@field KeepPrice boolean?
---@field KeepSeed boolean?
---@field IgnoreModifiers boolean?

---@class ReplaceSpritesheetResult
---@field LayerID integer?
---@field PNGFilename string?

---@class LevelSelectResult
---@field Level LevelStage?
---@field Type StageType?

---@class BombDamageResult
---@field Position Vector?
---@field Damage number?
---@field Radius number?
---@field TearFlags TearFlags?
---@field DamageFlags DamageFlag?

---@class BombTearflagEffectsResult
---@field Position Vector?
---@field Radius number?
---@field TearFlags TearFlags?
---@field RadiusMult number?

---@class PlayerHUDTrinketRenderResult
---@field Position Vector?
---@field Scale number?
---@field CropOffset Vector?

---@class BossThematicItemResult
---@field Collectible CollectibleType? @Spawns this collectible as the boss's second item
---@field Trinket TrinketType? @Spawns this trinket as the boss's second item

---@class PlayerHUDActiveItemRenderResult
---@field HideItem boolean? @Hides the item from the active slot
---@field HideOutline boolean? @Hides the item's outline
---@field HideChargeBar boolean? @Hides the item's charge bar
---@field CropOffset Vector? @Crop rectangle applied to the active item's sprite when rendered in the slot
