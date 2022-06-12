t = Instance.new("Tool") 
t.Parent = game.Players.yfc.Backpack 
t.Name = "Sword" 
local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.formFactor = "Plate" 
handlee.BrickColor = BrickColor.new("Brown") 
handlee.Size = Vector3.new(2, 2, 2) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.5, 1.5, 0.5) 
-----------------------------------------Brick2
local shit = Instance.new("Part") 
shit.Name = "Part" 
shit.Parent = t 
shit.formFactor = "Plate" 
shit.BrickColor = BrickColor.new("New Yeller") 
shit.Size = Vector3.new(2, 1, 1) 
shit.TopSurface = "Smooth" 
shit.BottomSurface = "Smooth" 
shit.Transparency = 0 
shit.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = shit 
m.Scale = Vector3.new(0.7, 0.3, 0.7) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = shit
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("New Yeller") 
brick2.Size = Vector3.new(2, 1, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(0.7, 0.3, 0.7) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("New Yeller") 
brick2.Size = Vector3.new(2, 1, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(0.7, 0.3, 0.7) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -1, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Mid grey")
brick2.Size = Vector3.new(1, 3, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0.3 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(0.5, 0.7, 0.5) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2, 0)
-----------------------------------------Brick2
local brick5 = Instance.new("Part") 
brick5.Name = "Part" 
brick5.Parent = t 
brick5.formFactor = "Plate" 
brick5.BrickColor = BrickColor.new("Mid grey")
brick5.Size = Vector3.new(1, 3, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick5.Transparency = 0 
brick5.Reflectance = 0.3 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick5 
m.Scale = Vector3.new(0.2, 0.7, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick5
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2.5, 0)

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = brick5 
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