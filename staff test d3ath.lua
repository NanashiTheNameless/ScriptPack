local t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Staff" 
script.Parent = t.Parent.Parent.Character 


local b = Instance.new("Part") 
b.Parent = t 
b.Position = Vector3.new(0,0,0) 
b.Size = Vector3.new(1,7,1) 
b.BrickColor = BrickColor.new("Really black") 
b.Anchored = false 
b.Locked = true 
b.Name = "Handle" 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

a = Instance.new("Part") 
a.Parent = t 
a.Position = Vector3.new(0,0,0) 
a.Size = Vector3.new(1,1,1) 
a.BrickColor = BrickColor.new("White") 
a.Anchored = false 
a.Locked = true 
a.Name = "Handle2" 
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth" 

m1 = Instance.new("CylinderMesh") 
m1.Scale = Vector3.new(0.2,1,0.2) 
m1.Parent = b 

m2 = Instance.new("CylinderMesh") 
m2.Scale = Vector3.new(0.19,1,0.19) 
m2.Parent = a 

w1 = Instance.new("Weld") 
w1.Parent = b 
w1.Part0 = b 
w1.Part1 = a 
w1.C0 = CFrame.new(0,4,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

r = game:service("RunService") 


local damage = 25 


local slash_damage = 25 


sword = b 
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



function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h:TakeDamage(25) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 