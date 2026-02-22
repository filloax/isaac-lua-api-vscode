---@return Sprite
function _G.Sprite()
end

---@param LayerId integer
---@param PngFilename string
---@return boolean @**[Repentance+ Only]** Returns `true` if the spritesheet at `LayerId` was successfully replaced and if the new spritesheet is not the same as the old one, otherwise returns `false`. It does not confirm whether the new spritesheet actually exists or not, so a non-existent spritesheet can still return `true`.
function Sprite:ReplaceSpritesheet(LayerId, PngFilename)
end

---@param AnimationName string
---@param FrameNum integer
function Sprite:SetOverlayFrame(AnimationName, FrameNum)
end


function Sprite:Stop()
end
