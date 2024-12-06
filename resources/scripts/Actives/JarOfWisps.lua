local mod = RepPlusBalMod

local config = Isaac.GetItemConfig():GetCollectible(CollectibleType.COLLECTIBLE_JAR_OF_WISPS)
config.MaxCharges = 6

--[[ function mod:JarOfWispsCharge(collectible, player, var)
	return 6
end
mod:AddCallback(ModCallbacks.MC_PLAYER_GET_ACTIVE_MAX_CHARGE, mod.JarOfWispsCharge, CollectibleType.COLLECTIBLE_JAR_OF_WISPS)
 ]]