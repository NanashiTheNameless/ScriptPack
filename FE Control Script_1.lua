local plr = game.Workspace.'VICTIM'
local lol = 'Torso'
local omg = 'Torso'
local lpChar = game.Players.LocalPlayer.Character[omg]

wait()
local w = Instance.new('Weld', lpChar)
w.Part0 = plr[lol]
w.Part1 = lpChar
w.C0 = plr.CFrame
w.C1 = lpChar.CFrame
