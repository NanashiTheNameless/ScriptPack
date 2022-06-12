                                                                                                                        
                                                                                                                        
                                                                                                                        
me = "lordsheen" 
bin = game.Players[me] 
char =  game.Players[me].Character 
scale = 3 --This is the scale you will upsize by 
bin = bin.Character 
bin.Parent = game.Workspace
bin:MakeJoints()
for i,p in pairs(char.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "CharacterMesh" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Hat" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Shirt" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Pants" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "ShirtGraphic" then 
p:Remove() 
end 
end 
wait() 
la = bin["Left Arm"] 
ra = bin["Right Arm"] 
ll = bin["Left Leg"] 
rl = bin["Right Leg"] 
h = bin.Head 
t = bin.Torso 
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
ls.C0 = CFrame.new(-sizex - la.Size.x/2,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs = Instance.new("Motor") 
rs.Parent = t 
rs.Name = "Right Shoulder" 
rs.Part0 = t 
rs.Part1 = ra 
rs.MaxVelocity = 0.1 
rs.C0 = CFrame.new(sizex + ra.Size.x/2,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
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
n.C0 = CFrame.new(0,sizey + h.Size.y/2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)  
o = bin.Animate:Clone()
bin.Animate:remove()
o.Parent = bin 
--[[ lego ]]-- 