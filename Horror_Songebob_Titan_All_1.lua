for i, v in pairs (game.Players:GetPlayers()) do
local char = v.Character
for i,v in pairs(char.Torso:GetChildren()) do
if v.ClassName == 'Decal' then
v:Destroy() end end
for i,v in pairs(char:GetChildren()) do
if v.ClassName == 'Hat' then
v:Destroy() end end
for i,v in pairs(char.Head:GetChildren()) do
if v.ClassName == 'Decal' then
v:Destroy() end end
local sponge = Instance.new('SpecialMesh', char.Torso)
sponge.MeshType = 'FileMesh'
sponge.MeshId = 'http://www.roblox.com/asset/?id=430088036'
sponge.TextureId = 'http://www.roblox.com/asset/?id=430088043'
sponge.Scale = Vector3.new(30, 30, 30)
char.Head.Transparency = 1
char['Left Arm'].Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1
end