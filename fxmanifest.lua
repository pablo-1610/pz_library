--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 00:20
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

lua54 'yes'
fx_version 'adamant'
game 'gta5'

shared_scripts {
    "_main.lua",
    "include/**/shared/*.lua",
    "modules/**/shared/*.lua"
}

client_scripts {
    "include/**/client/*.lua",
    "modules/**/client/*.lua"
}

server_scripts {
    "include/**/server/*.lua",
    "modules/**/server/*.lua"
}