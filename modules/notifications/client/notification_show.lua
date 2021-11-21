--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 17:42
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.notifications_show = function(msg, flash, saveToBrief, hudColorIndex)
    if saveToBrief == nil then saveToBrief = true end
    AddTextEntry('zLibNotification', msg)
    BeginTextCommandThefeedPost('zLibNotification')
    if hudColorIndex then ThefeedNextPostBackgroundColor(hudColorIndex) end
    EndTextCommandThefeedPostTicker(flash or false, saveToBrief)
end
