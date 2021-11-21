--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 00:20
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib = {}

AddEventHandler("zLib:getLibrary", function(cb)
    if (cb ~= nil) then
        cb(_zLib)
    end
end)

AddEventHandler("zLib:getLibraryWithESX", function(cb)
    TriggerEvent("esx:getSharedObject", function(obj)
        if (cb ~= nil) then
            cb(_zLib, obj)
        end
    end)
end)

_zLib.info = function(message)
    print(("^7[^6Infos^7] %s"):format(message))
end

_zLib.success = function(message)
    print(("^7[^2Success^7] %s"):format(message))
end

_zLib.error = function(message)
    print(("^7[^1Error^7] %s"):format(message))
end