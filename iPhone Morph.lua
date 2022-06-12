local player = game.Players.LocalPlayer.Name
local pchar = game.Workspace[player]              
local phone = Instance.new("SpecialMesh", pchar.Torso)
phone.MeshType = "FileMesh"
phone.MeshId = "http://www.roblox.com/asset/?id=430345282"
phone.TextureId = "http://www.roblox.com/asset/?id=430345284"
phone.Scale = Vector3.new(1, 1, 1)
pchar.Head.Transparency = 1
pchar["Left Arm"].Transparency = 1
pchar["Right Arm"].Transparency = 1
pchar["Left Leg"].Transparency = 1
pchar["Right Leg"].Transparency = 1
pchar.Head.face:Destroy()
for i,v in pairs(game.Workspace[player]:GetChildren()) do
if v:IsA("Accessory") then
v:Destroy()
end
end