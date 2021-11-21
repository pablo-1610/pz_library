--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 15:58
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.menu_displayOrValue = function(value, display, displayIfNot)
    return (value ~= nil and display or displayIfNot)
end