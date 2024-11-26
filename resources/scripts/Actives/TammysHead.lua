local mod = RepPlusBalMod

function mod:TammysHeadRemoveAnim(collectibleID, rngObj, playerWhoUsedItem, useFlags, activeSlot, varData)
    return true
end
mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.TammysHeadRemoveAnim, CollectibleType.COLLECTIBLE_TAMMYS_HEAD)
