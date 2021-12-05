--[[
  This file belongs to the Pablo Tebex store
  Created at 24/11/2021 17:06
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.proximity_getClosestVehicle = function()
    local pCoords = GetEntityCoords(PlayerPedId())
    local closestVehicle, closestDistance = nil, 0
    for vehicle in (_zLib.entityer_getVehicles()) do
        local dst = #(GetEntityCoords(vehicle)-pCoords)
        if (dst > 0.0) then
            if (not (closestVehicle)) then
                closestVehicle = vehicle
                closestDistance = dst
            end
            if (dst < closestDistance) then
                closestVehicle = vehicle
                closestDistance = dst
            end
        end
    end
    return closestVehicle, closestDistance
end