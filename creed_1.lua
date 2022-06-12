--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
suit = game.Players.yfc.Character

mod = Instance.new("Model") 
mod.Parent = suit 
mod.Name = "Suit" 
wait() 

game.Workspace.yfc.Torso.Transparency = 1
game.Workspace.yfc["Left Arm"].Transparency = 1
game.Workspace.yfc["Right Arm"].Transparency = 1
game.Workspace.yfc["Left Leg"].Transparency = 1
game.Workspace.yfc["Right Leg"].Transparency = 1
------------Chest----------
rleg3 = Instance.new("Part") 
rleg3.formFactor = ("Symmetric") 
rleg3.Size = Vector3.new(2, 2, 1) 
rleg3.BrickColor = BrickColor.new("Institutional white") 
rleg3.Name = "Middle" 
rleg3.Reflectance = 0 
rleg3:BreakJoints() 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Torso"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------------Left Arm--------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Institutional white") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Left Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------------Right Arm---------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Institutional white") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------Right Leg----------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Institutional white") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------------Left Leg--------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Institutional white") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Left Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------------Hand----------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Nougat") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.04, 0.2, 1.04) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Left Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, -0.94, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
------------------Glove Cutt Off--------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Reddish brown") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.04, 0.5, 1.04) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Left Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, -0.66, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------------Shoulder--------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Reddish brown") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.04, 1.3, 1.05) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Left Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
--------Strings---------------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Really black") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("CylinderMesh") 
rlegm3.Scale = Vector3.new(1.05, 0.25, 1.05) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Left Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0.4, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------------Hand2----------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Reddish brown") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.04, 0.2, 1.04) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Arm"]
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, -0.94, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
------------------Glove Cutt Off2--------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Reddish brown") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.04, 0.5, 1.04) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Arm"]
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, -0.66, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------------Shoulder2--------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Reddish brown") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.04, 1.3, 1.05) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
--------Strings2---------------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Really black") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("CylinderMesh") 
rlegm3.Scale = Vector3.new(1.05, 0.25, 1.05) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----------Belt--------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(2, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Bright red") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.02, 0.50, 1.03) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Torso"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, -0.8, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
------------Head----------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(2, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Nougat") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.Scale = Vector3.new(1.26, 1.5, 1.26)
rlegm3.MeshType = "Head" 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Head"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0.01, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
rlegd3 = Instance.new("Decal")
rlegd3.Parent = rleg3
rlegd3.Face = "Front"
rlegd3.Texture = "http://www.roblox.com/asset/?id=26336102"
--------------------------------------------------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(2, 1, 1)
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Institutional white") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("FileMesh") 
rlegm3.Parent = rleg3 
rlegm3.MeshId = "http://www.roblox.com/asset/?id=16952952" 
rlegm3.TextureId = "http://www.roblox.com/asset/?id=0" 
rlegm3.VertexColor = Vector3.new(0,0,0) 
rlegm3.Scale = Vector3.new(1.05, 1.03, 1.03) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Head"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0.31, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
---------------CHest gaurd------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(2, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Dark stone grey") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(0.7, 1.2, 1.10) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Torso"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(-0.35, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0.3)
-----Chest gaurd 2 _-----------------------------------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(2, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Dark stone grey") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(0.7, 1.2, 1.10) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Torso"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0.35, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, -0.3)
-----Boot1 _-----------------------------------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Reddish brown") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.04, 0.4, 1.04) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Left Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, -0.89, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----Boot2 _-----------------------------------------
rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3:BreakJoints() 
rleg3.BrickColor = BrickColor.new("Reddish brown") 
rleg3.Name = "Face"
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh") 
rlegm3.Scale = Vector3.new(1.04, 0.4, 1.04) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, -0.89, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
-----Cloak red _-----------------------------------------
me = Game.Players.yfc 

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Sword" 
bin.Parent = game.Players.yfc.Backpack 
script.Parent = bin 
end 

bin = script.Parent 

arm = Instance.new("Weld") 
arm.Part0 = me.Character["Right Arm"] 
arm.Part1 = me.Character.Torso 
arm.Parent = me.Character 
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.37, -1, 0) 

arm2 = Instance.new("Weld") 
arm2.Part0 = me.Character["Left Arm"] 
arm2.Part1 = me.Character.Torso 
arm2.Parent = me.Character 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.37, 0.47, 0) 

mo = Instance.new("Model") 
mo.Parent = me.Character 
mo.Name = "Sword" 

p5 = Instance.new("Part") 
p5.Parent = mo 
p5.Name = "Handle" 
p5.Size = Vector3.new(1, 1.2, 1) 
p5.Shape = 0 
p5.TopSurface = 0 
p5.BottomSurface = 0 
p5.Transparency = 1 
p5.BrickColor = BrickColor.new("Black") 
-------------------------------------- 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.3,1,0.3) 
m.Parent = p5 
--------------------------- 
wes = Instance.new("Weld") 
wes.Part0 = p5 
wes.Part1 = me.Character["Right Arm"] 
wes.Parent = p5 
wes.C0 = CFrame.new(0, 0, 1)*CFrame.fromEulerAnglesXYZ(1.57, 0, 0) 
--------------------------------- 
p = Instance.new("Part") 
p.Parent = mo 
p.Name = "111" 
p.Size = Vector3.new(1, 1.2, 1) 
p.TopSurface = 0 
p.BottomSurface = 0 
p.BrickColor = BrickColor.new("Black") 
----------------------------------- 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.4,1,0.3) 
m.Parent = p 
---------------------------- 
w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = p5 
w.Parent = p 
w.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
--------------------------------- 
p1 = Instance.new("Part") 
p1.Parent = mo 
p1.Name = "112" 
p1.Size = Vector3.new(1, 1, 1.6) 
p1.TopSurface = 0 
p1.BottomSurface = 0 
p1.BrickColor = BrickColor.new("Really black") 
------------m.Scale = Vector3.new(1,0.3,0.3) ----------------------- 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(0.58,0.3,0.5) 
m.Parent = p1 
---------------------------- 
w1 = Instance.new("Weld") 
w1.Part0 = p1 
w1.Part1 = p 
w1.Parent = p1 
w1.C0 = CFrame.new(0, -0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
------------Blade Finished--------------------- 
p2 = Instance.new("Part") 
p2.Parent = mo 
p2.Name = "113" 
p2.Size = Vector3.new(1, 2.4, 3) 
p2.TopSurface = 0 
p2.BottomSurface = 0 
p2.BrickColor = BrickColor.new("White") 
----------------------------------- 
m2 = Instance.new("BlockMesh") 
m2.Scale = Vector3.new(0.2, 1, 0.25) 
m2.Parent = p2 
---------------------------- 
w2 = Instance.new("Weld") 
w2.Part0 = p2 
w2.Part1 = p 
w2.Parent = p2 
w2.C0 = CFrame.new(0, -1.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---------------------------------------- 
p3 = Instance.new("Part") 
p3.Parent = mo 
p3.Name = "113" 
p3.Size = Vector3.new(1, 1.2, 1) 
p3.TopSurface = 0 
p3.BottomSurface = 0 
p3.Shape = "Block" 
p3.BrickColor = BrickColor.new("White") 
----------------------------------- 
m3 = Instance.new("BlockMesh") 
m3.Scale = Vector3.new(0.2, 1.50, 0.8) 
m3.Parent = p3 
---------------------------- 
w3 = Instance.new("Weld") 
w3.Part0 = p3 
w3.Part1 = p 
w3.Parent = p3 
w3.C0 = CFrame.new(0, -3.6, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
--------------------------------------------------------- 
p6 = Instance.new("Part") 
p6.Parent = mo 
p6.Name = "113" 
p6.Size = Vector3.new(1, 2.4, 3) 
p6.TopSurface = 0 
p6.BottomSurface = 0 
p6.BrickColor = BrickColor.new("Really black") 
----------------------------------- 
m6 = Instance.new("BlockMesh") 
m6.Scale = Vector3.new(0.32, 1.8, 0.07) 
m6.Parent = p6 
---------------------------- 
w6 = Instance.new("Weld") 
w6.Part0 = p6 
w6.Part1 = p 
w6.Parent = p6 
w6.C0 = CFrame.new(0, -2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---------------------------------------------------- 
p16 = Instance.new("Part") 
p16.Parent = mo 
p16.Name = "113" 
p16.Size = Vector3.new(1, 2.4, 3) 
p16.TopSurface = 0 
p16.BottomSurface = 0 
p16.BrickColor = BrickColor.new("Black") 
p16.Transparency = 0.4 
----------------------------------- 
m16 = Instance.new("BlockMesh") 
m16.Scale = Vector3.new(0.32, 1.6, 0.07) 
m16.Parent = p16 
---------------------------- 
w16 = Instance.new("Weld") 
w16.Part0 = p16 
w16.Part1 = p 
w16.Parent = p16 
w16.C0 = CFrame.new(0, -2.57, 0.40)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---------------------------------------------------- 
p116 = Instance.new("Part") 
p116.Parent = mo 
p116.Name = "113" 
p116.Size = Vector3.new(1, 2.4, 3) 
p116.TopSurface = 0 
p116.BottomSurface = 0 
p116.BrickColor = BrickColor.new("Black") 
p116.Transparency = 0.4 
----------------------------------- 
m116 = Instance.new("BlockMesh") 
m116.Scale = Vector3.new(0.32, 2, 0.07) 
m116.Parent = p116 
---------------------------- 
w116 = Instance.new("Weld") 
w116.Part0 = p116 
w116.Part1 = p 
w116.Parent = p116 
w116.C0 = CFrame.new(0, -2.8, -0.40)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
------------------------------------------ 
p1176 = Instance.new("Part") 
p1176.Parent = mo 
p1176.Name = "113" 
p1176.Size = Vector3.new(1, 2.4, 3) 
p1176.TopSurface = 0 
p1176.BottomSurface = 0 
p1176.BrickColor = BrickColor.new("White") 
----------------------------------- 
m18 = Instance.new("SpecialMesh") 
m18.Scale = Vector3.new(0.2, 0.4, 0.3) 
m18.MeshType = "Wedge" 
m18.Parent = p1176 
---------------------------- 
w1176 = Instance.new("Weld") 
w1176.Part0 = p1176 
w1176.Part1 = p 
w1176.Parent = p1176 
w1176.C0 = CFrame.new(0, -4.8, 0.01)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
--------------------------------------- 
p117611 = Instance.new("Part") 
p117611.Parent = mo 
p117611.Name = "113" 
p117611.Size = Vector3.new(1, 2.4, 3) 
p117611.TopSurface = 0 
p117611.BottomSurface = 0 
p117611.BrickColor = BrickColor.new("Black") 
p117611.Transparency = 0.4 
----------------------------------- 
m1811 = Instance.new("BlockMesh") 
m1811.Scale = Vector3.new(0.32, 0.54, 0.07) 
m1811.Parent = p117611 
---------------------------- 
w117611 = Instance.new("Weld") 
w117611.Part0 = p117611 
w117611.Part1 = p 
w117611.Parent = p117611 
w117611.C0 = CFrame.new(0, -3, 3.8)*CFrame.fromEulerAnglesXYZ(-0.89, 0, 0) 


function onButton1Down(mouse) 
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.47, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.47, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.57, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.57, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.67, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.67, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.77, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.77, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.87, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.87, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.97, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.97, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-2.07, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-2.07, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-2.17, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-2.17, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-2.07, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-2.07, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.97, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.97, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.87, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.87, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.77, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.77, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.67, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.67, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.57, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.57, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.47, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.47, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.37, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.37, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.27, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.27, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.17, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.17, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.07, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.07, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-0.97, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-0.97, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.07, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.07, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.17, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.17, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.27, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.27, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.37, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.37, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.47, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.47, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.37, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.37, 0.47, 0) 
wait(0.000001)  
end 

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
 
if key == "q" then 
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.47, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.47, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.57, -2, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.57, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.67, -3, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.67, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.77, -4, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.77, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.87, -5, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.87, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.97, -6, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.97, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-2.07, -5, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-2.07, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-2.17, -4, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-2.17, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-2.07, -3, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-2.07, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.97, -2, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.97, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.87, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.87, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.77, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.77, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.67, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.67, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.57, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.57, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.47, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.47, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.37, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.37, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.27, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.27, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.17, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.17, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.07, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.07, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-0.97, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-0.97, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.07, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.07, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.17, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.17, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.27, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.27, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.37, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.37, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.47, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.47, 0.47, 0) 
wait(0.000001)  
arm.C0 = CFrame.new(-1, 0, 0.25)*CFrame.fromEulerAnglesXYZ(-1.37, -1, 0) 
arm2.C0 = CFrame.new(1.15, 0.05, 0.5)*CFrame.fromEulerAnglesXYZ(-1.37, 0.47, 0) 
wait(0.000001)  
end

if key == "f" then
me.Character.Humanoid.WalkSpeed = 75
end 
end 

if key == "z" then
me.Character.Humanoid.WalkSpeed = 20
end 
end 

function Selected(mouse) 
print("hi") 
end 

function touch(hit) 
h = hit.Parent:FindFirstChild("Humanoid") 
if h == nil then 
h.Health = h.Health - math.random(25, 45) 
end 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end) 

p2.Touched:connect(touch)