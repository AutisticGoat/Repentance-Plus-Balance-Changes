local mod = RepPlusBalMod

---comment
---@param player EntityPlayer
---@return boolean
local function isTaintedLazarus(player)
    local type = player:GetPlayerType()

    return type == PlayerType.PLAYER_LAZARUS_B or type == PlayerType.PLAYER_LAZARUS2_B
end

function mod:FlipFourCharges(collectible, player, var)
	return isTaintedLazarus(player) and 4 or 6
end
mod:AddCallback(ModCallbacks.MC_PLAYER_GET_ACTIVE_MAX_CHARGE, mod.FlipFourCharges, CollectibleType.COLLECTIBLE_FLIP)
