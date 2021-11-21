--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 10:47
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.table_countIterator = function(func)
    local i = 0
    for v in func() do
        i = (i + 1)
    end
    return (i)
end