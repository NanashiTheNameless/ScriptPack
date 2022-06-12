char = game.Players.LocalPlayer.Character

for i,v in pairs(char.Head:GetChildren()) do
    if v.ClassName == 'Decal' then
         v:Destroy()
    end
end
for i,v in pairs(char:GetChildren()) do
    if v.ClassName == 'Accessory' then
        v:Destroy()
    end
end
for i,v in pairs(char.Head:GetChildren()) do
    if v.ClassName == 'Decal' or v.ClassName == 'Mesh' then
        v:Destroy()
    end
end

part = Instance.new("Part", char.Torso)
part.CanCollide = false
part.CFrame = char.Torso.CFrame

weld = Instance.new("Weld", part)
weld.Part0 = char.Torso
weld.Part1 = part
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(180),0)

local spongebob = Instance.new('SpecialMesh', part)
spongebob.MeshType = 'FileMesh'
spongebob.MeshId = 'http://www.roblox.com/asset/?id=430087593'
spongebob.TextureId = 'http://www.roblox.com/asset/?id=430087598'
spongebob.Scale = Vector3.new(6, 6, 6)

char.Head.Transparency = 1
char.Torso.Transparency = 1
char['Left Arm'].Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1