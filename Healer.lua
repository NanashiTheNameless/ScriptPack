script/t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Sword" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.formFactor = "Plate" 
handlee.BrickColor = BrickColor.new("Brown") 
handlee.Size = Vector3.new(1, 1, 1) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.3, 1.2, 0.55) 
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Shaft" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Bright yellow") 
brick2.Size = Vector3.new(1, 3, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(0.4, 1, 0.6) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2, 0)
-----------------------------------------Brick3
local brick3 = Instance.new("Part") 
brick3.Name = "3" 
brick3.Parent = t 
brick3.formFactor = "Plate" 
brick3.BrickColor = BrickColor.new("Bright yellow") 
brick3.Size = Vector3.new(1, 1, 1) 
brick3.TopSurface = "Smooth" 
brick3.BottomSurface = "Smooth" 
brick3.Transparency = 0 
brick3.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick3 
m.Scale = Vector3.new(0.2, 0.5, 0.4) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = brick2
w2.Part0 = brick3
w2.Part1 = brick2
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -1.5, 0)
-----------------------------------------Brick4
local brick4 = Instance.new("Part") 
brick4.Name = "4" 
brick4.Parent = t 
brick4.formFactor = "Plate" 
brick4.BrickColor = BrickColor.new("Bright yellow") 
brick4.Size = Vector3.new(1, 1, 1) 
brick4.TopSurface = "Smooth" 
brick4.BottomSurface = "Smooth" 
brick4.Transparency = 0 
brick4.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick4 
m.Scale = Vector3.new(0.07, 0.3, 0.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = brick3
w2.Part0 = brick4
w2.Part1 = brick3
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.35, 0)
-----------------------------------------Brick5
local brick5 = Instance.new("Part") 
brick5.Name = "4" 
brick5.Parent = t 
brick5.formFactor = "Plate" 
brick5.BrickColor = BrickColor.new("Bright Red") 
brick5.Size = Vector3.new(1, 1, 1) 
brick5.TopSurface = "Smooth" 
brick5.BottomSurface = "Smooth" 
brick5.Transparency = 0 
brick5.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick5 
m.Scale = Vector3.new(0.16, 0.3, 0.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = brick2
w2.Part0 = brick5
w2.Part1 = brick2
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0)
-----------------------------------------Brick6
local brick6 = Instance.new("Part") 
brick6.Name = "4" 
brick6.Parent = t 
brick6.formFactor = "Plate" 
brick6.BrickColor = BrickColor.new("Bright Red") 
brick6.Size = Vector3.new(1, 1, 1) 
brick6.TopSurface = "Smooth" 
brick6.BottomSurface = "Smooth" 
brick6.Transparency = 0 
brick6.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick6 
m.Scale = Vector3.new(0.16, 0.3, 0.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = brick2
w2.Part0 = brick6
w2.Part1 = brick2
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1, 0)

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = brick2 
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
h.TakeDamage(-100) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 