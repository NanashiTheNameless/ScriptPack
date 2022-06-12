scale = 2
player = game.Players.yfc
z = player.Character 
z.Humanoid.MaxHealth = 150000
z.Humanoid.Health = 150000
for _,l in pairs (z:GetChildren()) do 
if l.className == "Hat" then 
l:Remove() 
end end 
for _,i in pairs (z:GetChildren()) do 
if i.className == "Shirt" then 
i:Remove() 
end end 
for _,g in pairs (z:GetChildren()) do 
if g.className == "Pants" then 
g:Remove() 
end end 
for _,j in pairs (z:GetChildren()) do 
if j.className == "CharacterMesh" then 
j:Remove() 
end end 

la = z["Left Arm"] 
ra = z["Right Arm"] 
ll = z["Left Leg"] 
rl = z["Right Leg"] 
h = z.Head 
t = z.Torso 
sizeup = {t,h,ll,rl,ra,la} 
for i = 1, #sizeup do 
sizeup[i].Size = Vector3.new(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale) 
sizeup[i].TopSurface = 0 
sizeup[i].BottomSurface = 0 
sizeup[i].RightSurface = 0 
sizeup[i].LeftSurface = 0 
sizeup[i].FrontSurface = 0 
sizeup[i].BackSurface = 0 

end 

sizex = t.Size.x/2 
sizey = t.Size.x/2 
sizez = t.Size.x/2 

ls = Instance.new("Motor") 
ls.Parent = t 
ls.Name = "Left Shoulder" 
ls.Part0 = t 
ls.Part1 = la 
ls.MaxVelocity = 0.1 
ls.C0 = CFrame.new(-sizex - la.Size.x/2+2,la.Size.y/4-4,-6) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

rs = Instance.new("Motor") 
rs.Parent = t 
rs.Name = "Right Shoulder" 
rs.Part0 = t 
rs.Part1 = ra 
rs.MaxVelocity = 0.1 
rs.C0 = CFrame.new(sizex + ra.Size.x/2-2,ra.Size.y/4-4,-6) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs.C1 = CFrame.new(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

lh = Instance.new("Motor") 
lh.Parent = t 
lh.Name = "Left Hip" 
lh.Part0 = t 
lh.Part1 = ll 
lh.MaxVelocity = 0.1 
lh.C0 = CFrame.new(sizex - ll.Size.x*1.5,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
lh.C1 = CFrame.new(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

rh = Instance.new("Motor") 
rh.Parent = t 
rh.Name = "Right Hip" 
rh.Part0 = t 
rh.Part1 = rl 
rh.MaxVelocity = 0.1 
rh.C0 = CFrame.new(sizex - rl.Size.x/2,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh.C1 = CFrame.new(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 


n = Instance.new("Snap") 
n.Parent = t 
n.Name = "Neck" 
n.Part0 = t 
n.Part1 = h 
n.C0 = CFrame.new(0,sizey + h.Size.y/2-4,-6) * CFrame.fromEulerAnglesXYZ(0,0,0) 

a = z.Animate 
a:Remove() 
a:clone() 
a.Parent = z 
 

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(4,2,8) 
knife.BrickColor = BrickColor.Yellow() 
knife.Parent = player.Character
knife.Locked = true 
knife.CanCollide = true
knife.Transparency = 0
knife.TopSurface = 0
knife.BottomSurface = 0
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-3,-3) * CFrame.fromEulerAnglesXYZ(0,0,0)

player.Character.Torso.Transparency = 1

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(2,4,2) 
knife.BrickColor = BrickColor.Yellow() 
knife.Parent = player.Character
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
knife.TopSurface = 0
knife.BottomSurface = 0
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(2,2,2) 
knife.BrickColor = BrickColor.Yellow() 
knife.Parent = player.Character
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
knife.TopSurface = 0
knife.BottomSurface = 0
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,1,2) * CFrame.fromEulerAnglesXYZ(0,0,0)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(2,2,2) 
knife.BrickColor = BrickColor.Yellow() 
knife.Parent = player.Character
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
knife.TopSurface = 0
knife.BottomSurface = 0
kmesh = Instance.new("SpecialMesh")
kmesh.Scale = Vector3.new(2,2,2)
kmesh.MeshType = "FileMesh"
kmesh.TextureId = "http://www.roblox.com/asset/?id=23512577"
kmesh.MeshId = "http://www.roblox.com/asset/?id=1374148"
kmesh.Parent = knife
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,0.2,-6) * CFrame.fromEulerAnglesXYZ(0,0,0)

for i,v in pairs(player.Character:GetChildren()) do if v.className == "Part" then v.BrickColor = BrickColor.new("Really black") v.Material = "Plastic" end end