--Simple invisibility script, by chromium
local plr = game.Players.LocalPlayer
local char = plr.Character
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local head = char.Head
local torso = char.Torso

for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end

for i,v in pairs (head:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end

larm.Transparency = 1
rarm.Transparency = 1
lleg.Transparency = 1
rleg.Transparency = 1
torso.Transparency = 1
head.Transparency = 1
head.face.Transparency = 1

larm.CanCollide = false
rarm.CanCollide = false
lleg.CanCollide = false
rleg.CanCollide = false
head.CanCollide = false
torso.CanCollide = false



