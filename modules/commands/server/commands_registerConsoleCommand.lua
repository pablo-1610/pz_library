--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 16:40
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.commands_registerConsoleCommand = function(name, handler)
    RegisterCommand(name, function(_src, args)
        if (_src ~= 0) then
            return
        end
        handler(args)
    end)
end