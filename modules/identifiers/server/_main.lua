--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 01:32
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.identifiers_getAll = function(_src)
    local identifiers = {}
    local playerIdentifiers = GetPlayerIdentifiers(_src)
    for _, v in pairs(playerIdentifiers) do
        local before, after = playerIdentifiers[_]:match("([^:]+):([^:]+)")
        identifiers[before] = playerIdentifiers[_]
    end
    return (identifiers)
end

_zLib.identifiers_license = function(_src)
    return (_zLib.identifiers_getAll(_src)["license"])
end