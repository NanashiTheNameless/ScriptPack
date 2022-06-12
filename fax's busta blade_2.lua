--[[To Acb
If you go to google immages and look buster blade, ull see theres 2 holes in the dark stone grey side
I could not add those. they broke it so i removed them.
Add what attacks you want, ik ull make them epic :)
Oh, and do remember... this is a 2 handed blade :)
The wegdes havent been added... too dificult...
Kthx
]]
local Me = game.Players.LocalPlayer 
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end)
local Model = Instance.new("Model",char)
Model.Name = ":P" 
local prts = Instance.new("Model", char) 
prts.Name = "Parts" 
local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()
local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)
local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()
local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)
local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)
local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0)
----SWORD SHEATHE AND HANDLE------------------------------------ 
Handle = Instance.new("Part") 
Handle.Transparency = 0
Handle.Parent = prts 
Handle.formFactor = "Custom" 
Handle.Size = Vector3.new(0.25,1,0.25)  -- Om nom nom
Handle.BrickColor = BrickColor.new(0.5,0,0) 
Handle:BreakJoints() 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = Handle 
mesh.Scale = Vector3.new(1,1,1) 
weld = Instance.new("Weld") 
weld.Parent = Handle  
weld.Part0 = Handle
weld.Part1 = Torso 
weld.C0 = CFrame.new(0, -1.5, -0.6) * CFrame.Angles(0, 0, 0.8) 
Handle.CanCollide = false
-- 
end1 = Instance.new("Part") 
end1.Transparency = 0
end1.Parent = prts 
end1.formFactor = "Custom" 
end1.Size = Vector3.new(0.25,0.3,0.25)  -- Om nom nom
end1.BrickColor = BrickColor.new("Olive") 
end1:BreakJoints() 
mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = end1
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = end1 
weld2.Part0 = end1
weld2.Part1 = Handle
weld2.C0 = CFrame.new(0, -0.65, 0) * CFrame.Angles(0, 0, 0) 
end1.CanCollide = false
--
end2 = Instance.new("Part") 
end2.Transparency = 0
end2.Parent = prts 
end2.formFactor = "Custom" 
end2.Size = Vector3.new(0.25,0.3,0.25)  -- Om nom nom
end2.BrickColor = BrickColor.new("Olive") 
end2:BreakJoints() 
mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = end2
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = end2 
weld2.Part0 = end2
weld2.Part1 = Handle
weld2.C0 = CFrame.new(0, 0.65, 0) * CFrame.Angles(0, 0, 0) 
end2.CanCollide = false
--
s2 = Instance.new("Part") 
s2.Transparency = 0
s2.Parent = prts 
s2.formFactor = "Custom" 
s2.Size = Vector3.new(3,0.5,0.25)  -- Om nom nom
s2.BrickColor = BrickColor.new("Olive") 
s2:BreakJoints() 
mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = s2
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = s2 
weld2.Part0 = s2
weld2.Part1 = end2
weld2.C0 = CFrame.new(0, 0.4, 0) * CFrame.Angles(0, 0, 0) 
s2.CanCollide = false
----------BLADE BEGINS :D------------------------ 
sw2 = Instance.new("Part") 
sw2.Transparency = 0
sw2.Parent = prts 
sw2.formFactor = "Custom" 
sw2.Size = Vector3.new(2.5,6,0.25)  -- Om nom nom
sw2.BrickColor = BrickColor.new("Dark stone grey") 
sw2:BreakJoints() 
mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = sw2
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = sw2 
weld2.Part0 = sw2
weld2.Part1 = s2
weld2.C0 = CFrame.new(0.25, 3.25, 0) * CFrame.Angles(0, 0, 0) 
sw2.CanCollide = false
--
sw22 = Instance.new("Part") 
sw22.Transparency = 0
sw22.Parent = prts 
sw22.formFactor = "Custom" 
sw22.Size = Vector3.new(0.5,6,0.25)  -- Om nom nom
sw22.BrickColor = BrickColor.new("Medium stone grey") 
sw22:BreakJoints() 
mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = sw22
mesh2.Scale = Vector3.new(1,1,1) 
weld2 = Instance.new("Weld") 
weld2.Parent = sw22 
weld2.Part0 = sw22
weld2.Part1 = s2
weld2.C0 = CFrame.new(-1.25, 3.25, 0) * CFrame.Angles(0, 0, 0) 
sw22.CanCollide = false
--LEGO
