local char = game.Players.LocalPlayer.Character

for i,v in pairs (char.Torso:GetChildren()) do
    if v.ClassName == 'Decal' then
         v:Destroy()
    end
end
for i,v in pairs (char:GetChildren()) do
    if v.ClassName == 'Hat' then
        v:Destroy()
    end
end
for i,v in pairs (char.Head:GetChildren()) do
    if v.ClassName == 'Decal' then
        v:Destroy()
    end
end

local harambe = Instance.new('SpecialMesh', char.Torso)
harambe.MeshType = 'FileMesh'
harambe.MeshId = 'http://www.roblox.com/asset/?id=430330296'
harambe.TextureId = 'http://www.roblox.com/asset/?id=430330316'
harambe.Scale = Vector3.new(0.01, 0.01, 0.01)
char.Head.Transparency = 1
char['Left Arm'].Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1