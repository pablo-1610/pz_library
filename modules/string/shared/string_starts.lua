--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 19:35
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.string_starts = function(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end