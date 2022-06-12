plyr = game.Players.acb227 
char = plyr.Character 
fire = Instance.new("Fire", char.Head) 
fire.Heat = 255 
fire.Color = Color3.new(1, 0, 0) 
fire.Size = 2555

local part = Instance.new("Part", char) 
part.Anchored = true 
part.Size = Vector3.new(10, 50, 10) 
part.CFrame = CFrame.new(0, 25, 0) 
part.BrickColor = BrickColor.new("Really black") 
fire2 = Instance.new("Fire", part) 
fire2.Heat = 255 
fire2.Color = Color3.new(1, 0, 0) 
fire2.Size = 2555
local part2 = Instance.new("Part", char) 
part2.Anchored = true 
part2.Size = Vector3.new(40, 15, 9) 
part2.CFrame = CFrame.new(0, 15, 0) 
part2.BrickColor = BrickColor.new("Really black") 
fire3 = Instance.new("Fire", part2) 
fire3.Heat = 255 
fire3.Color = Color3.new(1, 0, 0) 
fire3.Size = 2555

Game.Workspace.acb227["Right Arm"].Transparency = 1 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h:BreakJoints() 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227 ["Right Arm"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227 ["Right Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

Game.Workspace.acb227["Left Arm"].Transparency = 1 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h:BreakJoints() 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227 ["Left Arm"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227 ["Left Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

Game.Workspace.acb227["Left Leg"].Transparency = 1 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h:BreakJoints() 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227 ["Left Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227 ["Left Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

Game.Workspace.acb227["Right Leg"].Transparency = 1 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h:BreakJoints() 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227 ["Right Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227 ["Right Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

Game.Workspace.acb227["Left Leg"].Transparency = 1 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h:BreakJoints() 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227 ["Left Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227 ["Left Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

Game.Workspace.acb227.Torso.Transparency = 1 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h:BreakJoints() 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
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

Game.Workspace.acb227.Head.Transparency = 1 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h:BreakJoints() 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.3, 1.3, 1.3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,3,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
h:BreakJoints() 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.5, -0.5, -1) 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,3,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h:BreakJoints() 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.5, -0.5, -1) 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,3,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h:BreakJoints() 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1.5, -1.5, -1) 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,3,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h:BreakJoints() 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-1.5, -1.5, -1) 


local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,3,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h:BreakJoints() 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(3.5, -3.5, -1) 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,3,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
h:BreakJoints() 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-3.5, -3.5, -1) 

t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Devil" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.Shape = "Ball"
handlee.BrickColor = BrickColor.new("New Yeller") 
handlee.Size = Vector3.new(1, 1, 1) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.5, 1.0, 0.5) 
-----------------------------------------Brick2
local brick3 = Instance.new("Part") 
brick3.Name = "Part" 
brick3.Parent = t 
brick3.formFactor = "Plate" 
brick3.BrickColor = BrickColor.new("Neon orange") 
brick3.Size = Vector3.new(2, 1, 1) 
brick3.TopSurface = "Smooth" 
brick3.BottomSurface = "Smooth" 
brick3.Transparency = 0 
brick3.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = brick3 
m.Scale = Vector3.new(1.4, 0.3, 1.4) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick3
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Bright red") 
brick2.Size = Vector3.new(1, 1, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0.5 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(5, 10000, 5) 
m.Offset = Vector3.new(0, -5000, 0)
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2, 0)

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = brick3 
Tool = t 

function attack() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Slash" 
anim.Parent = Tool 
end 


function swordUp() 
Tool.GripForward = Vector3.new(-1,0,0) 
Tool.GripRight = Vector3.new(0,1,0) 
Tool.GripUp = Vector3.new(0,0,1) 
end 

function swordOut() 
Tool.GripForward = Vector3.new(0,0,1) 
Tool.GripRight = Vector3.new(0,-1,0) 
Tool.GripUp = Vector3.new(-1,0,0) 
end 



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
h.Health = 0 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 

t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Claw" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.BrickColor = BrickColor.new("Really black") 
handlee.Size = Vector3.new(1, 1, 2) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.2, 0.2, 1) 
-----------------------------------------Brick2
local brick3 = Instance.new("Part") 
brick3.Name = "Part" 
brick3.Parent = t 
brick3.formFactor = "Plate" 
brick3.BrickColor = BrickColor.new("Really black") 
brick3.Size = Vector3.new(1, 1, 2) 
brick3.TopSurface = "Smooth" 
brick3.BottomSurface = "Smooth" 
brick3.Transparency = 0 
brick3.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick3 
m.Scale = Vector3.new(0.2, 0.2, 1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick3
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.3, 0, 0)
-----------------------------------------Brick2
local brick4 = Instance.new("Part") 
brick4.Name = "Part" 
brick4.Parent = t 
brick4.formFactor = "Plate" 
brick4.BrickColor = BrickColor.new("Really black") 
brick4.Size = Vector3.new(1, 1, 2) 
brick4.TopSurface = "Smooth" 
brick4.BottomSurface = "Smooth" 
brick4.Transparency = 0 
brick4.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick4 
m.Scale = Vector3.new(0.2, 0.2, 1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick4
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.3, 0, 0)

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = brick4 
Tool = t 

function attack() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Slash" 
anim.Parent = Tool 
end 


function swordUp() 
Tool.GripForward = Vector3.new(-1,0,0) 
Tool.GripRight = Vector3.new(0,1,0) 
Tool.GripUp = Vector3.new(0,0,1) 
end 

function swordOut() 
Tool.GripForward = Vector3.new(0,0,1) 
Tool.GripRight = Vector3.new(0,-1,0) 
Tool.GripUp = Vector3.new(-1,0,0) 
end 



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
h:TakeDamage(25) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 