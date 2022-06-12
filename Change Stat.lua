--[[
    
    RAINDROP DEFAULT SCRIPTS
    
    NAME            ::    AUTHOR    ::    DATE
    Change Stat    ::    brack4712    ::    10/29/16
    
    INSTRUCTIONS
    [*] Go to where it says "TargetPlayer" and change it to your name or the player you want to change.
    [*] Go down to where you see "StatToChange" and write the name of the stat.
    [*] Go down to just below the above item, and change "NewStat" to whatever you want to change the value to.
    [*] Press Execute!
    
    ENJOY!
    
--]]

local TargetPlayer = "TARGET_NAME_HERE" --- FULL NAME IS REQUIRED! cAsE sEnSiTiVe! ---
local StatToChange = "STAT_NAME_HERE" --- FULL STAT NAME IS REQUIRED! cAsE sEnSiTiVe! ---
local NewStat = "NEW_VALUE_HERE"

--- DO NOT EDIT BELOW THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOING! ---


game.Players[TargetPlayer].leaderstats[StatToChange].Value = NewStat