local Player = "LocalPlayer" -- Don't change if you want it to be you
local StatName = "StatName" -- Change it to the name of the stat
local Value = "69" -- Change it to the value you want the stat to change to

-- Do not touch below --

local Plr = game:GetService("Players"):FindFirstChild(Player)
if Plr and Plr.Character then
	Plr.leaderstats[StatName].Value = Value
end

-- joseph2235 --