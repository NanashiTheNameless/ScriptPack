script/t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Sword" 
local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.formFactor = "Plate" 
handlee.BrickColor = BrickColor.new("Brown") 
handlee.Size = Vector3.new(1, 2, 1) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.3, 0.7, 0.3) 
-----------------------------------------Brick2
local shit = Instance.new("Part") 
shit.Name = "Part" 
shit.Parent = t 
shit.formFactor = "Plate" 
shit.BrickColor = BrickColor.new("Brown") 
shit.Size = Vector3.new(2, 1, 1) 
shit.TopSurface = "Smooth" 
shit.BottomSurface = "Smooth" 
shit.Transparency = 0 
shit.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = shit 
m.Scale = Vector3.new(0.7, 0.3, 0.4) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = shit
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.7, 0)
-----------------------------------------Brick2
local shit = Instance.new("Part") 
shit.Name = "Part" 
shit.Parent = t 
shit.formFactor = "Plate" 
shit.BrickColor = BrickColor.new("Brown") 
shit.Size = Vector3.new(1, 2, 1) 
shit.TopSurface = "Smooth" 
shit.BottomSurface = "Smooth" 
shit.Transparency = 0 
shit.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = shit 
m.Scale = Vector3.new(0.3, 0.3, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = shit
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.55, -0.9, 0)
-----------------------------------------Brick2
local shit = Instance.new("Part") 
shit.Name = "Part" 
shit.Parent = t 
shit.formFactor = "Plate" 
shit.BrickColor = BrickColor.new("Brown") 
shit.Size = Vector3.new(1, 2, 1) 
shit.TopSurface = "Smooth" 
shit.BottomSurface = "Smooth" 
shit.Transparency = 0 
shit.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = shit 
m.Scale = Vector3.new(0.3, 0.3, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = shit
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.55, -0.9, 0)
-----------------------------------------Brick2
local shit = Instance.new("Part") 
shit.Name = "Part" 
shit.Parent = t 
shit.formFactor = "Plate" 
shit.BrickColor = BrickColor.new("Brown") 
shit.Size = Vector3.new(1, 4, 1) 
shit.TopSurface = "Smooth" 
shit.BottomSurface = "Smooth" 
shit.Transparency = 0 
shit.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = shit 
m.Scale = Vector3.new(0.5, 0.7, 0.3) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = shit
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2, 0)
-----------------------------------------Brick2
local shit2 = Instance.new("Part") 
shit2.Name = "Part" 
shit2.Parent = t 
shit2.formFactor = "Plate" 
shit2.BrickColor = BrickColor.new("Brown") 
shit2.Size = Vector3.new(1, 1, 1) 
shit2.TopSurface = "Smooth" 
shit2.BottomSurface = "Smooth" 
shit2.Transparency = 0 
shit2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = shit2 
m.Scale = Vector3.new(0.4, 0.4, 0.3) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = shit2
w2.Part0 = shit
w2.Part1 = shit2
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.8) + Vector3.new(0, 1.4, 0)

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = shit2 
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