--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 02:15
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.table_containsString = function(t, string)
    for k, v in pairs(t) do
        if (v == string) then
            return (true)
        end
    end
    return (false)
end