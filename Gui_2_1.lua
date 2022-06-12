--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 800.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Tad" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
--Tad Suit in Progress made by acb227--------------------------------------------------------------------------------------------------- 
Game.Workspace.acb227["Right Arm"].Transparency = 1 
Game.Workspace.acb227["Left Arm"].Transparency = 1 
Game.Workspace.acb227["Right Leg"].Transparency = 1 
Game.Workspace.acb227["Left Leg"].Transparency = 1 
Game.Workspace.acb227.Head.Transparency = 1 
Game.Workspace.acb227.Torso.Transparency = 1 
Game.Workspace.acb227.Head.face:Remove()

--Right Arm--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 

h.Locked = true

---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.5, 1.1, 1.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Right Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Right Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.45, 0) 

local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Right Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Right Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 

---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Right Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Right Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.45, 0) 

local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.8, .8, .8) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Right Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Right Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.7, 0) 
--thumb--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.2, .2, .2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Right Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Right Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.25, 1.2, -0.2) 
--index--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.2, .2, .2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Right Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Right Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.18, 1.2, 0.3) 
--middle--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.2, .2, .2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Right Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Right Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.22, 1.2, 0.25) 
--Pink-
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.2, .2, .2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Right Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Right Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.22, 1.2, 0) 
--Left Arm--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.5, 1.1, 1.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Left Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Left Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.45, 0) 

local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Left Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Left Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 

---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Left Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Left Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.45, 0) 

local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.8, .8, .8) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Left Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Left Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.7, 0) 
--thumb--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.2, .2, .2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Left Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Left Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.22, 1.2, -0.2) 
--pink--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.2, .2, .2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Left Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Left Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.18, 1.2, 0.3) 
--middle--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.2, .2, .2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Left Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Left Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.22, 1.2, -0.1) 
--index--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(.2, .2, .2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227 ["Left Arm"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227 ["Left Arm"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.22, 1.2, 0.3) 
--Torso--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(2,2,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.05, 1.2, 1.2) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

--Head--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("CylinderMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.3, 1, 1.3) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Head 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Head 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Right leg--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,2,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227["Right Leg"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227["Right Leg"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Left leg--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,2,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227["Left Leg"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227["Left Leg"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Right Foot--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 0.2, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227["Right Leg"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227["Right Leg"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.85, 0) 
--Left Foot--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 0.2, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227["Left Leg"] 

w1.Part0 = h 

w1.Part1 = Workspace.acb227["Left Leg"] 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.85, 0) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.5, 0.1, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.35, -0.5, 0.2) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.1, 0.5, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.35, -0.25, 0.2) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.1, 0.5, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -10) + Vector3.new(0.25, 0.3, 0.2) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.1, 0.5, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 10) + Vector3.new(-0.46, 0.21, 0.2) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.5, 0.1, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.1, -0.28, 0.2) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.1, 0.5, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.5, -0.28, 0.2) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.3, 0.1, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -0.5) + Vector3.new(0.35, -0.73, 0.2) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.3, 0.1, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.5) + Vector3.new(0.6, 0.3, 0.2) 
--Sign--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Camo") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 
h.Locked = true
---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(0.1, 0.3, 0.5) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.8, -0.3, 0.2) 


end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removea" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 700.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Kill all" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace:BreakJoints()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 


--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 600.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Death" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227:BreakJoints()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removec" then 
sc:Remove() 
end 
end) 


--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 500.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Tele script" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227.Torso.CFrame = Game.Workspace.Scriptaxor.Torso.CFrame
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 


--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 600.5, 0, 0) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Tele blox" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227.Torso.CFrame = Game.Workspace.ImInABlox.Torso.CFrame
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 


--Gui------------------------------------------------------------------------------------------------------------ 
vip = "Scriptaxor" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 500.5, 0, 0.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Tele base" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.Scriptaxor.Torso.CFrame = Game.Workspace.acb227.torso.CFrame
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 


--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 700.5, 0, 0.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Tele crusher" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227.Torso.CFrame = Game.Workspace.crusher12555.Torso.CFrame
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 700.5, 0, 0.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Tele crusher" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

