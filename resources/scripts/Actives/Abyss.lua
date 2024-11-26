--[[
    TODO:
    - Make Damage scale with items quality (Base functionality done, need to check special cases)
    - All fucking synergies and new interactions ()
]]

local mod = RepPlusBalMod

local multipliers = {
    [0] = 0.5,
    [1] = 0.75,
    [2] = 1,
    [3] = 1.5,
    [4] = 2,
}

---comment
---@param entity Entity
---@param amount number
---@param flags integer
---@param source EntityRef
---@param countdown integer
function mod:AbyssLocustDamageManager(entity, amount, flags, source, countdown)
    local sourceEnt = source.Entity
    local familiar = sourceEnt:ToFamiliar()

    if not familiar then return end

    if familiar.Variant ~= FamiliarVariant.ABYSS_LOCUST then return end

    local player = familiar.Player

    local itemConfig = Isaac.GetItemConfig():GetCollectible(familiar.SubType)
    local quality = itemConfig.Quality
    local QualityMult = multipliers[quality]    

    if quality == 2 then return end

    if amount == player.Damage then
        entity:TakeDamage(amount * QualityMult, flags, source, countdown)

        return false
    end
end
mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mod.AbyssLocustDamageManager)