local mod = RepPlusBalMod
local game = Game()

function mod:TammysHeadRemoveAnim(_, _, player)
    local room = game:GetRoom()
    room:MamaMegaExplosion(player.Position)
end
mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.TammysHeadRemoveAnim, CollectibleType.COLLECTIBLE_MEGA_BEAN)

local config = Isaac.GetItemConfig():GetCollectible(CollectibleType.COLLECTIBLE_MEGA_BEAN)
config.MaxCharges = 6

--[[ function mod:MegaBeanSixCharges()
	return 6
end
mod:AddCallback(ModCallbacks.MC_PLAYER_GET_ACTIVE_MAX_CHARGE, mod.MegaBeanSixCharges, CollectibleType.COLLECTIBLE_MEGA_BEAN)
 ]]