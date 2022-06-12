Game.Workspace.yfc.Head.Transparency = 1
Game.Workspace.yfc.Torso.Transparency = 1
Game.Workspace.yfc["Right Leg"].Transparency = 1
Game.Workspace.yfc["Right Arm"].Transparency = 1
Game.Workspace.yfc["Left Arm"].Transparency = 1
Game.Workspace.yfc["Left Leg"].Transparency = 1
Game.Workspace.yfc.Head.face:Remove()
--Game.Workspace.yfc["Right Arm"].CanCollide = false
--Game.Workspace.yfc["Left Arm"].CanCollide = false
--Game.Workspace.yfc.Torso.CanCollide = false

w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = Workspace.yfc["Right Arm"] 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.5, 3.5) 

w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = Workspace.yfc.Head 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.5, 0) 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.yfc 
h.Size = Vector3.new(3,1,4.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Camo") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
--m = Instance.new("BlockMesh") 
--m.Parent = h 
--m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1.5, 0) 

--Seat-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.yfc 
h.Size = Vector3.new(3,1,4.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Camo") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
--m = Instance.new("BlockMesh") 
--m.Parent = h 
--m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.5, 0) 

--Seat-- 
local h = Instance.new("Seat") 
h.Name = "Handle" 
h.Parent = Workspace.yfc 
h.Size = Vector3.new(3,1,4.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Camo") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
--m = Instance.new("BlockMesh") 
--m.Parent = h 
--m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.5, 2) 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.yfc 
h.Size = Vector3.new(3,1,4.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Camo") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
--m = Instance.new("BlockMesh") 
--m.Parent = h 
--m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1.3, 3) 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.yfc 
h.Size = Vector3.new(2,1,2.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Camo") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
--m = Instance.new("BlockMesh") 
--m.Parent = h 
--m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-0.2, 0, 0) + Vector3.new(0, 0.9, -3) 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.yfc 
h.Size = Vector3.new(2,1,2.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Camo") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
--m = Instance.new("BlockMesh") 
--m.Parent = h 
--m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-0.1, 0, 0) + Vector3.new(0, 1.1, -4) 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.yfc 
h.Size = Vector3.new(2,1,2.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Camo") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
--m = Instance.new("BlockMesh") 
--m.Parent = h 
--m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-0.2, 0, 0) + Vector3.new(0, 0.9, -5) 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.yfc 
h.Size = Vector3.new(2,1,2.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Camo") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
--m = Instance.new("BlockMesh") 
--m.Parent = h 
--m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.yfc.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-0.1, 0, 0) + Vector3.new(0, 1.1, -7) 

t = Instance.new("Tool") 
t.Parent = game.Players.yfc.Backpack 
t.Name = "Sword" 
handlee = Instance.new("Part") 
handlee.Size = Vector3.new(1,1,1) 
handlee.BrickColor = BrickColor.new("Bright Red") 
handlee.Anchored = false 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.Transparency = 0 
handlee.BottomSurface = 0 
handlee.Material = "Plastic" 
handlee.TopSurface = 0 
handlee.Shape = (0)


---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = handlee 
Tool = t 




Tool.Enabled = true 

function onActivated() 

if not Tool.Enabled then 
return 
end 

Tool.Enabled = false 

local character = Tool.Parent; 
local humanoid = character.Humanoid 
if humanoid == nil then 
print("Humanoid not found") 
return 
end 



attack() 

wait() 

Tool.Enabled = true 
end 


function onEquipped() 

end 


------part 3 
------part 3 
------part 3 
function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h:TakeDamage(35) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 