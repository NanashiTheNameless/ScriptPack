me = game.Workspace.acb227
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