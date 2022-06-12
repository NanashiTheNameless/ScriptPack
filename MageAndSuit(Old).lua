me = game.Workspace.yfc
mod = Instance.new("Model") 
mod.Parent = me 
mod.Name = "Teh Epic Scripter" 
wait() 

for _, v in pairs(me:GetChildren()) do 
if v:IsA("Hat") then 
v:remove() 
end 
end 

me["Right Leg"].Transparency = 1 
me["Left Leg"].Transparency = 1 

rleg1 = Instance.new("Part") 
rleg1.formFactor = 2 
rleg1.Size = Vector3.new(1, 2, 1) 
rleg1.BrickColor = BrickColor.new("White") 
rleg1.Name = "Face" 
rleg1.Reflectance = 0 
rleg1.TopSurface = 0 
rleg1.CanCollide = false 
rleg1.Parent = mod 
rleg1.Position = Vector3.new(0, 0, 0)
rleg1:BreakJoints() 
rleg1.BottomSurface = 0 
rlegm1 = Instance.new("SpecialMesh") 
rlegm1.MeshType = 6 
rlegm1.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm1.Parent = rleg3 
rlegw1 = Instance.new("Weld") 
rlegw1.Part0 = me["Right Leg"] 
rlegw1.Part1 = rleg1 
rlegw1.Parent = rleg1 
rlegw1.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg2 = Instance.new("Part") 
rleg2.formFactor = 2 
rleg2.Size = Vector3.new(1, 2, 1) 
rleg2.BrickColor = BrickColor.new("White") 
rleg2.Name = "Face" 
rleg2.Reflectance = 0 
rleg2.TopSurface = 0 
rleg2.CanCollide = false 
rleg2.Parent = mod 
rleg2.Position = Vector3.new(0, 0, 0)
rleg2:BreakJoints() 
rleg2.BottomSurface = 0 
rlegm2 = Instance.new("SpecialMesh") 
rlegm2.MeshType = 6 
rlegm2.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm2.Parent = rleg2 
rlegw2 = Instance.new("Weld") 
rlegw2.Part0 = me["Left Leg"] 
rlegw2.Part1 = rleg2 
rlegw2.Parent = rleg2 
rlegw2.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(2, 2, 1) 
rleg3.BrickColor = BrickColor.new("White") 
rleg3.Name = "Face" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.Position = Vector3.new(0, 0, 0)
rleg3:BreakJoints() 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = me["Torso"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg4 = Instance.new("Part") 
rleg4.formFactor = 2 
rleg4.Size = Vector3.new(1, 2, 1) 
rleg4.BrickColor = BrickColor.new("White") 
rleg4.Name = "Face" 
rleg4.Reflectance = 0 
rleg4.TopSurface = 0 
rleg4.CanCollide = false 
rleg4.Parent = mod 
rleg4.Position = Vector3.new(0, 0, 0)
rleg4:BreakJoints() 
rleg4.BottomSurface = 0 
rlegm4 = Instance.new("SpecialMesh") 
rlegm4.MeshType = 6 
rlegm4.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm4.Parent = rleg4 
rlegw4 = Instance.new("Weld") 
rlegw4.Part0 = me["Right Arm"] 
rlegw4.Part1 = rleg4 
rlegw4.Parent = rleg4 
rlegw4.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg5 = Instance.new("Part") 
rleg5.formFactor = 2 
rleg5.Size = Vector3.new(1, 2, 1) 
rleg5.BrickColor = BrickColor.new("White") 
rleg5.Name = "Face" 
rleg5.Reflectance = 0 
rleg5.TopSurface = 0 
rleg5.CanCollide = false 
rleg5.Parent = mod 
rleg5.Position = Vector3.new(0, 0, 0)
rleg5:BreakJoints() 
rleg5.BottomSurface = 0 
rlegm5 = Instance.new("SpecialMesh") 
rlegm5.MeshType = 6 
rlegm5.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm5.Parent = rleg5 
rlegw5 = Instance.new("Weld") 
rlegw5.Part0 = me["Left Arm"] 
rlegw5.Part1 = rleg5 
rlegw5.Parent = rleg5 
rlegw5.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

ht = Instance.new("Part") 
ht.Size = Vector3.new(1,1,1) 
ht.Name = "Handle" 
ht.Parent = me 
hod = Instance.new("SpecialMesh") 
hod.Parent = ht 
hod.MeshId = "http://www.roblox.com/asset/?id=16952952" 
hod.TextureId = "http://www.roblox.com/asset/?id=37102731" 
hod.VertexColor = Vector3.new(1,1,1) 
hod.Scale = Vector3.new(1.05,1.05,1.05) 
rlegw5 = Instance.new("Weld") 
rlegw5.Part0 = ht 
rlegw5.Part1 = me.Head 
rlegw5.Parent = ht 
rlegw5.C0 = CFrame.new(0, -0.4, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rib1 = Instance.new("Part") 
rib1.formFactor = 2 
rib1.Size = Vector3.new(1, 2, 1) 
rib1.BrickColor = BrickColor.new("Mid grey") 
rib1.Name = "Face" 
rib1.Reflectance = 0 
rib1.TopSurface = 0 
rib1.CanCollide = false 
rib1.Parent = mod 
rib1.Position = Vector3.new(0, 0, 0)
rib1:BreakJoints() 
rib1.BottomSurface = 0 
ribm1 = Instance.new("SpecialMesh") 
ribm1.MeshType = 6 
ribm1.Scale = Vector3.new(0.32, 1.3, 1.02) 
ribm1.Parent = rib1 
ribw1 = Instance.new("Weld") 
ribw1.Part0 = me["Torso"] 
ribw1.Part1 = rib1 
ribw1.Parent = rib1 
ribw1.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0.85) 

rib2 = Instance.new("Part") 
rib2.formFactor = 2 
rib2.Size = Vector3.new(1, 2, 1) 
rib2.BrickColor = BrickColor.new("Dark stone grey") 
rib2.Name = "Face" 
rib2.Reflectance = 0 
rib2.TopSurface = 0 
rib2.CanCollide = false 
rib2.Parent = mod 
rib2.Position = Vector3.new(0, 0, 0)
rib2:BreakJoints() 
rib2.BottomSurface = 0 
ribm2 = Instance.new("CylinderMesh") 
ribm2.Scale = Vector3.new(0.72, 1.3, 1.02) 
ribm2.Parent = rib2 
ribw2 = Instance.new("Weld") 
ribw2.Part0 = me["Torso"] 
ribw2.Part1 = rib2 
ribw2.Parent = rib2 
ribw2.C0 = CFrame.new(0, 0, 0.85)*CFrame.fromEulerAnglesXYZ(0, 0, 0.85) 

rib3 = Instance.new("Part") 
rib3.formFactor = 2 
rib3.Size = Vector3.new(1, 2, 1) 
rib3.BrickColor = BrickColor.new("Mid grey") 
rib3.Name = "Face" 
rib3.Reflectance = 0 
rib3.TopSurface = 0 
rib3.CanCollide = false 
rib3.Parent = mod 
rib3.Position = Vector3.new(0, 0, 0)
rib3:BreakJoints() 
rib3.BottomSurface = 0 
ribm3 = Instance.new("CylinderMesh") 
ribm3.Scale = Vector3.new(0.711, 1.4, 1.011) 
ribm3.Parent = rib3 
ribw3 = Instance.new("Weld") 
ribw3.Part0 = me["Torso"] 
ribw3.Part1 = rib3 
ribw3.Parent = rib3 
ribw3.C0 = CFrame.new(0, 0, 0.85)*CFrame.fromEulerAnglesXYZ(0, 0, 0.85) 

me = game.Players.yfc

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Staff" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 

sp = script.Parent

han = Instance.new("Part") 
han.Parent = me.Character
han.Size = Vector3.new(1, 2, 1)
han.CanCollide = false 
han.Position = Vector3.new(0, 0, 0) 
han:BreakJoints() 
han.BrickColor = BrickColor.new("Brown")
hanm = Instance.new("CylinderMesh")
hanm.Scale = Vector3.new(0.1, 1.8, 0.1)
hanm.Parent = han 
hanw = Instance.new("Weld")
hanw.Parent = han 
hanw.Part0 = han 
hanw.Part1 = me.Character["Torso"] 
hanw.C0 = CFrame.fromEulerAnglesXYZ(0, 0.5, -0.9) + Vector3.new(-0.45, -1.25, -0.65) 
ha = Instance.new("Part") 
ha.Parent = me.Character
ha.Size = Vector3.new(1, 1, 1)
ha.CanCollide = false 
ha.Transparency = 1 
ha.Reflectance = 0.1 
ha.Position = Vector3.new(0, 0, 0) 
ha:BreakJoints() 
ha.BrickColor = BrickColor.new("Mid grey")
ham = Instance.new("SpecialMesh")
ham.Scale = Vector3.new(0.9, 0.9, 0.9)
ham.Parent = ha 
ham.MeshType = "Sphere" 
haw = Instance.new("Weld")
haw.Parent = ha 
haw.Part0 = ha 
haw.Part1 = han 
haw.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 2, 0) 

spell = no 

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if key=="q" and spell == no then 
spell = yes 
fire = Instance.new("Fire")
fire.Heat = 0 
fire.Size = 0
fire.Parent = ha 
mouse.Target:BreakJoints() 
wait(1) 
fire:Remove() 
spell = no 
print(1) 
end 
if key=="t" and spell == no then 
spell = yes 
p = Instance.new("Part")
p.Parent = workspace 
p.CanCollide = false 
p.Transparency = 1 
p.Anchored = true 
p.Size = Vector3.new(1, 1, 1) 
p.Position = mouse.hit.p 
fire = Instance.new("Fire")
fire.Color = Color3.new(14, 186, 123) 
fire.Heat = 0 
fire.Size = 0
fire.Parent = ha 
me.Character.Torso.CFrame = p.CFrame + Vector3.new(0, 3, 0)
wait(1) 
fire:Remove() 
p:remove() 
spell = no 
print(2) 
end 
if key=="e" and spell == no then 
if mouse.Target.Name ~= "Base" then 
spell = yes 
fire = Instance.new("Fire") 
fire.Color = Color3.new(12, 12, 12) 
fire.Heat = 0 
fire.Size = 0
fire.Parent = ha 
mouse.Target.CFrame = CFrame.new(0, 5, 0) 
wait(1) 
fire:Remove() 
spell = no 
print(3) 
end 
if key=="f" and spell == no then 
spell = yes 
p = Instance.new("Part") 
p.Parent = workspace 
p.Size = Vector3.new(1, 1, 1) 
p.BrickColor = BrickColor.new("White") 
p.CFrame = me.Character.Torso.CFrame - CFrame.new(0, 3, 0)
wait(1) 

spell = no 
print(2) 
end 
end 
end 
end 

function selected(mouse) 
ha.Transparency = 0.5 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
hanw.Part1 = me.Character["Right Arm"] 
hanw.C0 = CFrame.fromEulerAnglesXYZ(-1.55, 0, 0) + Vector3.new(0, 0.8, -1) 
rightarm = game.workspace.yfc.Torso["Right Shoulder"] 
rightarm.C0 = rightarm.C0 * CFrame.Angles(0,0,math.rad(45)) 
end 

function deselected()
ha.Transparency = 1 
hanw.Part1 = me.Character["Torso"] 
hanw.C0 = CFrame.fromEulerAnglesXYZ(0, 0.5, -0.9) + Vector3.new(-0.45, -1.25, -0.65) 
rightarm = game.workspace.yfc.Torso["Right Shoulder"] 
rightarm.C0 = rightarm.C0 * CFrame.Angles(0,0,math.rad(-45)) 
end

sp.Selected:connect(selected)
sp.Deselected:connect(deselected)