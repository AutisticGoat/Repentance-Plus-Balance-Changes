local mod = RepPlusBalMod

local config = Isaac.GetItemConfig():GetCollectible(CollectibleType.COLLECTIBLE_VOID)
config.MaxCharges = 4

--[[ function mod:VoidFourCharges(collectible, player, var)
	return 4
end
mod:AddCallback(ModCallbacks.MC_PLAYER_GET_ACTIVE_MAX_CHARGE, mod.VoidFourCharges, CollectibleType.COLLECTIBLE_VOID)
 ]]