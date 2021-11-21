--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 00:22
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

local list = {}

_zLib.keyBinder_exists = function(name)
    for k, v in pairs(list) do
        if (v == name) then
            return (true)
        end
    end
    return (false)
end

_zLib.keyBinder_addKeyBind = function(name, description, key, onPressed)
    local command = ("+z_%s"):format(name)
    local fallback = ("-z_%s"):format(name)
    RegisterKeyMapping(command, description, "keyboard", key)
    RegisterCommand(command, function()
        onPressed()
    end)
    RegisterCommand(fallback, function()
    end)
end