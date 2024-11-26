local mod = RepPlusBalMod
local game = Game()
local room = game:GetRoom()

function mod:TammysHeadRemoveAnim(_, _, player)
    room:MamaMegaExplosion(player.Position)
end
mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.TammysHeadRemoveAnim, CollectibleType.COLLECTIBLE_MEGA_BEAN)

function mod:MegaBeanSixCharges()
	return 6
end
mod:AddCallback(ModCallbacks.MC_PLAYER_GET_ACTIVE_MAX_CHARGE, mod.MegaBeanSixCharges, CollectibleType.COLLECTIBLE_MEGA_BEAN)
