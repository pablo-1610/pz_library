--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 01:29
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.toServer = function(event, ...)
    TriggerServerEvent(_zLib.format(event), ...)
end

_zLib.toServerExposed = function(event, ...)
    TriggerServerEvent(event, ...)
end