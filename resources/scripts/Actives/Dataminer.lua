local mod = RepPlusBalMod
local itemPool = Game():GetItemPool()

function mod:DataminerUse(player)

    local player = Isaac.GetPlayer(0)
    player:AddCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)

    local entities = Isaac:GetRoomEntities()

    for i=1, #entities do
        if entities[i].Type == EntityType.ENTITY_PICKUP then
            if entities[i].Variant == PickupVariant.PICKUP_COLLECTIBLE then
                if entities[i].SubType ~= 0 then
                    entities[i]:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, math.random(1000) + 1, true)
                    while entities[i]:ToPickup().SubType == 25 do
                        entities[i]:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, math.random(1000) + 1, true)
                    end
                end
            end
        end
    end

    player:RemoveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)
    
    return {
        Discharge = true,
        Remove = false,
        ShowAnim = true
    }
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.DataminerUse, CollectibleType.COLLECTIBLE_DATAMINER)