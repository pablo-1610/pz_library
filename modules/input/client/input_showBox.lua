--[[
  This file belongs to the Pablo Tebex store
  Created at 21/11/2021 12:43
  
  Copyright (c) Pablo Tebex Store - All Rights Reserved
--]]
---@author Pablo_1610

_zLib.input_showBox = function(description, exampleText, maxLenght, isValueInt)
    AddTextEntry('FMMC_KEY_TIP1', description)
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", exampleText, "", "", "", maxLenght)
    local blockInput = true
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Wait(0)
    end
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Wait(500)
        blockInput = false
        if isValueInt then
            local isNumber = tonumber(result)
            if isNumber ~= nil then
                return result
            else
                return nil
            end
        end

        return result
    else
        Wait(500)
        blockInput = false
        return nil
    end
end