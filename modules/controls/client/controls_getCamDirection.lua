--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 17:34
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.controls_getCamDirection = function()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()
    local coords = vector3(-math.sin(heading * math.pi / 180.0), math.cos(heading * math.pi / 180.0), math.sin(pitch * math.pi / 180.0))
    local len = math.sqrt((coords.x * coords.x) + (coords.y * coords.y) + (coords.z * coords.z))
    if len ~= 0 then
        coords = coords / len
    end
    return coords
end