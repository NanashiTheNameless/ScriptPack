name = "Geomaster"

local player = game.Players:findFirstChild(name)
if player.Name == script.Parent.Name then
local character = player.Character
local head2=character.Head:clone()
local Neck=character.Torso.Neck:clone()
character.Head.Transparency=1
head2.Parent=character
head2.Name="Head2"
Neck.Parent=character.Torso
Neck.Part0=character.Torso
Neck.Part1=head2
if head2:findFirstChild("face") then
head2.face:remove()
end
end
