--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 01:21
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

local registredEvents = {}

local function registerEvent(event)
    RegisterNetEvent(event)
    table.insert(registredEvents, event)
end

local isEventRegistred = function(event)
    for _, eventName in pairs(registredEvents) do
        if (eventName == event) then
            return (true)
        end
    end
    return (false)
end

_zLib.toInternal = function(event, ...)
    TriggerEvent(_zLib.format(event), ...)
end

_zLib.toInternalExposed = function(event, ...)
    TriggerEvent(event, ...)
end

_zLib.format = function(string)
    return (("z:%s"):format(GetHashKey(string)))
end

_zLib.onReceiveWithoutNet = function(event, handler)
    event = _zLib.format(event)
    AddEventHandler(event, handler)
end

_zLib.onReceiveWithoutNetExposed = function(event, handler)
    AddEventHandler(event, handler)
end

_zLib.onReceiveExposed = function(event, handler)
    if (not (isEventRegistred(event))) then
        registerEvent(event)
    end
    AddEventHandler(event, handler)
end

_zLib.onReceive = function(event, handler)
    event = _zLib.format(event)
    if (not (isEventRegistred(event))) then
        registerEvent(event)
    end
    AddEventHandler(event, function(...)
        local _src = source
        handler(_src, ...)
    end)
end
