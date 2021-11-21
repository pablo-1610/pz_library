--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 02:02
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.table_count = function(table)
    local i = 0
    for _,_ in pairs(table) do
        i = (i+1)
    end
    return (i)
end