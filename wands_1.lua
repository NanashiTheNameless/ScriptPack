me = Game.Players.rigletto 

tool = Instance.new("Tool")
tool.Parent = me.Backpack
tool.Name = "Wand" 

han = Instance.new("Part")
han.Name = "Handle" 
han.Parent = tool
han.BrickColor = BrickColor.new("Mid grey")
han.Size = Vector3.new(1, 2, 1) 
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(0.2, 1, 0.2)
me.Parent = han 

p1 = Instance.new("Part")
p1.Parent = tool 
p1.BrickColor = BrickColor.new("Mid grey")
p1.Size = Vector3.new(1, 1, 1)
p1.Name = "Energy" 
mes = Instance.new("SpecialMesh") 
mes.Parent = p1 
mes.Scale = Vector3.new(0.3, 0.2, 0.3)
w1 = Instance.new("Weld")
w1.Parent = tool 
w1.Part0 = p1 
w1.Part1 = han 
w1.C0 = CFrame.new(0, 1, 0)
w1.C1 = CFrame.new() 

p2 = Instance.new("Part")
p2.Parent = tool 
p2.BrickColor = BrickColor.new("Mid grey")
p2.Size = Vector3.new(1, 1, 1)
p2.Name = "Energy" 
mes = Instance.new("SpecialMesh") 
mes.Parent = p2 
mes.Scale = Vector3.new(0.3, 0.2, 0.3)
w1 = Instance.new("Weld")
w1.Parent = tool 
w1.Part0 = p2 
w1.Part1 = han 
w1.C0 = CFrame.new(0, 0.5, 0)
w1.C1 = CFrame.new() 

p3 = Instance.new("Part")
p3.Parent = tool 
p3.BrickColor = BrickColor.new("Mid grey")
p3.Size = Vector3.new(1, 1, 1)
p3.Name = "Energy" 
mes = Instance.new("SpecialMesh") 
mes.Parent = p3 
mes.Scale = Vector3.new(0.27, 0.2, 0.27)
w1 = Instance.new("Weld")
w1.Parent = tool 
w1.Part0 = p3 
w1.Part1 = han 
w1.C0 = CFrame.new(0, 0, 0)
w1.C1 = CFrame.new() 

p4 = Instance.new("Part")
p4.Parent = tool 
p4.BrickColor = BrickColor.new("Mid grey")
p4.Size = Vector3.new(1, 1, 1)
p4.Name = "Energy" 
mes = Instance.new("SpecialMesh") 
mes.Parent = p4 
mes.Scale = Vector3.new(0.25, 0.2, 0.25)
w1 = Instance.new("Weld")
w1.Parent = tool 
w1.Part0 = p4 
w1.Part1 = han 
w1.C0 = CFrame.new(0, -0.5, 0)
w1.C1 = CFrame.new() 

p5 = Instance.new("Part")
p5.Parent = tool 
p5.BrickColor = BrickColor.new("Mid grey")
p5.Size = Vector3.new(1, 1, 1)
p5.Name = "Energy" 
mes = Instance.new("SpecialMesh") 
mes.Parent = p5 
mes.Scale = Vector3.new(0.23, 0.2, 0.23)
w1 = Instance.new("Weld")
w1.Parent = tool 
w1.Part0 = p5 
w1.Part1 = han 
w1.C0 = CFrame.new(0, -1, 0)
w1.C1 = CFrame.new() 

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = p5
Tool = tool 

function attack() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Lunge" 
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
h.Parent.Torso:Remove() 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 