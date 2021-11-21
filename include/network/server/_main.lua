--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 01:28
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.toClient = function(event, targetSrc, ...)
    TriggerClientEvent(_zLib.format(event), targetSrc, ...)
end

_zLib.toClients = function(event, ...)
    TriggerClientEvent(_zLib.format(event), -1, ...)
end

_zLib.toClientExposed = function(event, targetSrc, ...)
    TriggerClientEvent(event, targetSrc, ...)
end