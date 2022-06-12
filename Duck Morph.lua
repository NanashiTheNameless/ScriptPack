local pchar = game.Players.LocalPlayer.Character
for i,v in pairs(pchar.Torso:GetChildren()) do
   if v.ClassName == 'Decal' then
        v:Destroy()
   end
end
for i,v in pairs(pchar:GetChildren()) do
   if v.ClassName == 'Hat' then
       v:Destroy()
   end
end
for i,v in pairs(pchar.Head:GetChildren()) do
   if v.ClassName == 'Decal' then
       v:Destroy()
   end
end
local duck = Instance.new('SpecialMesh', pchar.Torso)
duck.MeshType = 'FileMesh'
duck.MeshId = 'http://www.roblox.com/asset/?id=9419831'
duck.TextureId = 'http://www.roblox.com/asset/?id=9419827'
duck.Scale = Vector3.new(5, 5, 5)
pchar.Head.Transparency = 1
pchar['Left Arm'].Transparency = 1
pchar['Right Arm'].Transparency = 1
pchar['Left Leg'].Transparency = 1
pchar['Right Leg'].Transparency = 1
  