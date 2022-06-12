--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1.9,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.3 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Cape-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,1,2) 
h.formFactor = "Plate" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.3 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 0.4, 2) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1.2, 0, 0) + Vector3.new(0, -0.8, -1.2) 
--Right Arm-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.3 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.2, 1.2, 1.2) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227["Right Arm"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227["Right Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Left Arm-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.3 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.2, 1.2, 1.2) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227["Left Arm"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227["Left Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Right Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.3 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.2, 1.2, 1.2) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227["Right Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227["Right Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Left Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.3 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.2, 1.2, 1.2) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227["Left Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227["Left Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Mask-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(2, .5, .5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.2, -0.2, 0.6) 
--Mask-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(2, .5, .5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.2, -0.2, 0.6) 
--Head-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.3 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.4, 1.4, 1.4) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Mask-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("White") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(2, .3, .3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.2, -0.2, 0.8) 
--Mask-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("White") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(2, .3, .3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.2, -0.2, 0.8) 
--Body-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Stone grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(.3, .5, .3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.4) + Vector3.new(-0.6, 0.05, 0.7) 
--Body-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Stone grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(.3, .5, .3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -0.4) + Vector3.new(-0.6, -0.1, 0.7) 
--Body-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Stone grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, .2, .3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.1, 0.7) 
--Body-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Stone grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(.3, .5, .3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -0.4) + Vector3.new(0.6, 0.05, 0.7) 
--Body-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Stone grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(.3, .5, .3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.4) + Vector3.new(0.6, -0.1, 0.7) 
--Body-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Stone grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.5,0.5,0.5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 1.55) + Vector3.new(0.1, -0.1, 0.8) 

game.Workspace.acb227.Head.Transparency = 1 
game.Workspace.acb227.Torso.Transparency = 1 
game.Workspace.Sacb227["Right Arm"].Transparency = 1 
game.Workspace.acb227["Left Arm"].Transparency = 1 
game.Workspace.acb227["Right Leg"].Transparency = 1 
game.Workspace.acb227["Left Leg"].Transparency = 1 
