me = Game.Players.yfc.Character
color1 = "Bright red" 
color2 = "Really black"
color3 = "Really black"
color4 = "Really black"

m = math.random(1, 5)
if m == 1 then 
color1 = "Bright red"
color2 = "Really blue"
color3 = "Really black"
color4 = "Really black"
end 
if m == 2 then 
color1 = "Bright green"
color2 = "Bright yellow"
color3 = "Really black"
color4 = "Mid grey"
end 
if m == 3 then 
color1 = "Bright yellow"
color2 = "Black"
color3 = "Mid grey"
color4 = "Really black"
end 
if m == 4 then 
color1 = "Mid grey"
color2 = "Dark stone grey"
color3 = "Really black"
color4 = "Really black"
end 
if m == 5 then 
color1 = "Dark stone grey"
color2 = "Really black"
color3 = "Black"
color4 = "Mid grey"
end 

--suit--
part = Instance.new("Part")
part.Parent = me
part.Locked = true 
part.CanCollide = false 
part.Size = Vector3.new(2, 2, 1)
part.Position = Vector3.new(0, 0, 0)
part.BrickColor = BrickColor.new(color1)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.01, 0.85, 1.05)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me.Torso
weld.C0 = CFrame.new(0, 0, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Parent = me
part.Size = Vector3.new(2, 2, 1)
part.CanCollide = false 
part.Locked = true 
part.Position = Vector3.new(0, 0, 0)
part.BrickColor = BrickColor.new(color2)
part.Reflectance = 0.05
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.98, 0.85/2, 1.07)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me.Torso
weld.C0 = CFrame.new(0, 0.5, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Locked = true 
part.CanCollide = false 
part.Parent = me
part.Size = Vector3.new(1, 2, 1)
part.Position = Vector3.new(0, 0, 0)
part.BrickColor = BrickColor.new(color1)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.01, 0.85, 1.05)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Right Arm"]
weld.C0 = CFrame.new(0, 0, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Parent = me
part.Locked = true 
part.Size = Vector3.new(1, 2, 1)
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color2)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.02, 0.85/2, 1.06)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Right Arm"]
weld.C0 = CFrame.new(0, 0.5, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.CanCollide = false 
part.Parent = me
part.Size = Vector3.new(1, 2, 1)
part.Locked = true 
part.Position = Vector3.new(0, 0, 0)
part.BrickColor = BrickColor.new(color1)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.01, 0.85, 1.05)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Left Arm"]
weld.C0 = CFrame.new(0, 0, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Parent = me
part.Size = Vector3.new(1, 2, 1)
part.Locked = true 
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color2)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.02, 0.85/2, 1.06)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Left Arm"]
weld.C0 = CFrame.new(0, 0.5, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.CanCollide = false 
part.Locked = true 
part.Parent = me
part.Size = Vector3.new(1, 2, 1)
part.Position = Vector3.new(0, 0, 0)
part.BrickColor = BrickColor.new(color1)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.01, 0.85, 1.05)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Left Leg"]
weld.C0 = CFrame.new(0, 0, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Locked = true 
part.Parent = me
part.Size = Vector3.new(1, 2, 1)
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color2)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.02, 0.85/2, 1.06)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Left Leg"]
weld.C0 = CFrame.new(0, 0.5, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.CanCollide = false 
part.Parent = me
part.Locked = true 
part.Size = Vector3.new(1, 2, 1)
part.Position = Vector3.new(0, 0, 0)
part.BrickColor = BrickColor.new(color1)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.01, 0.85, 1.05)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Right Leg"]
weld.C0 = CFrame.new(0, 0, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Locked = true 
part.Parent = me
part.Size = Vector3.new(1, 2, 1)
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color2)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.02, 0.85/2, 1.06)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Right Leg"]
weld.C0 = CFrame.new(0, 0.5, 0)
weldC1 = CFrame.new() 
--shield--
part = Instance.new("Part")
part.Parent = me
part.Size = Vector3.new(1, 3, 2)
part.Locked = true 
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color2)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.02, 1.5, 1.56)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Left Arm"]
weld.C0 = CFrame.new(1, 0, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Locked = true 
part.Parent = me
part.Size = Vector3.new(1, 2, 1)
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color1)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.03, 1.49, 1.56)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Left Arm"]
weld.C0 = CFrame.new(1, 0, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Parent = me
part.Size = Vector3.new(1, 1, 1)
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color2)
part.Reflectance = 0.15
part.Locked = true 
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.03, 1.49, 1.56)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Left Arm"]
weld.C0 = CFrame.new(0.78, 0, 0)
weldC1 = CFrame.new() 
--sword--
part = Instance.new("Part")
part.Parent = me
part.Size = Vector3.new(1, 1, 1)
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.Locked = true 
part.BrickColor = BrickColor.new(color3)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.4, 0.45, 0.8)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Right Arm"]
weld.C0 = CFrame.new(0, 1, 0)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Parent = me
part.Size = Vector3.new(1, 1, 1)
part.Locked = true 
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color3)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.8, 0.4, 0.2)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Right Arm"]
weld.C0 = CFrame.new(0, 1.15, 0.5)
weldC1 = CFrame.new() 
part = Instance.new("Part")
part.Parent = me
part.Size = Vector3.new(1, 1, 3)
part.Locked = true 
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color4)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.4, 0.2, 1)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Right Arm"]
weld.C0 = CFrame.new(0, 1.15, 2.1)
weldC1 = CFrame.new()
part = Instance.new("Part")
part.Parent = me
part.Size = Vector3.new(1, 1, 1)
part.Locked = true 
part.Position = Vector3.new(0, 0, 0)
part.CanCollide = false 
part.BrickColor = BrickColor.new(color4)
part.Reflectance = 0.15
part:BreakJoints()
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.25, 0.3, 0.4)
weld = Instance.new("Weld")
weld.Parent = me
weld.Part0 = part
weld.Part1 = me["Right Arm"]
weld.C0 = CFrame.fromEulerAnglesXYZ(1.55/1.5, 0, 1.55) + Vector3.new(-1.15, -3, 1.8) 
weldC1 = CFrame.new() 
--tool--
tool = Instance.new("Tool") 
tool.Parent = me 
tool.Name = "Sword" 

han = Instance.new("Part")
han.Parent = tool
han.Name = "Handle" 
han.Size = Vector3.new(1, 3, 1)
han.Transparency = 1

 r = game:service("RunService") 


local damage = 6 


local slash_damage = 15 


local lunge_damage = 25 

function equip() 

end 

sword = han 
Tool = tool 

function attack()
	damage = slash_damage
	local anim = Instance.new("StringValue")
	anim.Name = "toolanim"
	anim.Value = "Slash"
	anim.Parent = Tool
end

function stab()
	damage = lunge_damage
	local anim = Instance.new("StringValue")
	anim.Name = "toolanim"
	anim.Value = "Lunge"
	anim.Parent = Tool
end

function swordUp()
	Tool.GripForward = Vector3.new(0,0,0)
	Tool.GripRight = Vector3.new(0,0,0)
	Tool.GripUp = Vector3.new(0,1,0)
	Tool.GripPos = Vector3.new(0,0,0.15)
end

function swordOut()
	Tool.GripForward = Vector3.new(0,0,1)
	Tool.GripRight = Vector3.new(0,-1,0)
	Tool.GripUp = Vector3.new(-1,0,0)
end

function Unequipped() 

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

Tool.Enabled = true 
end 

function onEquipped() 

end 

attack() 

------part 3 
------part 3 
------part 3 
function Touched(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= me.Name then 
hit.Parent.Humanoid.Health = human.Health - damage 
end 
end 
end 

Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
Tool.Unequipped:connect(Unequipped) 
sword.Touched:connect(Touched)