tool = Instance.new("Tool")
tool.Parent = Game.Players.acb227.Backpack
tool.Name = "Sword" 
tool.TextureId = "http://www.roblox.com/asset/?id=26768509" 

han = Instance.new("Part")
han.BrickColor = BrickColor.new("Black")
han.Size = Vector3.new(1, 1, 1)
han.Name = "Handle" 
han.Parent = tool 
mesh = Instance.new("CylinderMesh")
mesh.Parent = han
mesh.Scale = Vector3.new(0.5, 1, 0.5)

ha = Instance.new("Part")
ha.BrickColor = BrickColor.new("Black")
ha.Size = Vector3.new(1, 1, 2)
ha.Name = "part" 
ha.Parent = tool 
mesh = Instance.new("BlockMesh")
mesh.Parent = ha
mesh.Scale = Vector3.new(0.7, 0.4, 0.7)
weld = Instance.new("Weld")
weld.Parent = tool
weld.Part0 = ha
weld.Part1 = han
weld.C0 = CFrame.new(0, -0.8, 0)
weld.C1 = CFrame.new() 

hb = Instance.new("Part")
hb.BrickColor = BrickColor.new("Bright red")
hb.Size = Vector3.new(1, 4, 2)
hb.Name = "part" 
hb.Parent = tool 
mesh = Instance.new("BlockMesh")
mesh.Parent = hb
mesh.Scale = Vector3.new(0.2, 1, 0.5)
weld = Instance.new("Weld")
weld.Parent = tool
weld.Part0 = hb
weld.Part1 = ha
weld.C0 = CFrame.new(0, -2, 0)
weld.C1 = CFrame.new() 

hc = Instance.new("WedgePart")
hc.BrickColor = BrickColor.new("Bright red")
hc.Size = Vector3.new(1, 1, 2)
hc.Name = "part" 
hc.Parent = tool 
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge" 
mesh.Parent = hc
mesh.Scale = Vector3.new(0.2, 1, 0.5)
weld = Instance.new("Weld")
weld.Parent = tool
weld.Part0 = hc
weld.Part1 = hb
weld.C0 = CFrame.new(0, -2.38, 0)
weld.C1 = CFrame.new() 


---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damg = 6 


local slash_damage = 15 


local spec_damage = 25 


sword = hb 
Tool = tool 

function spa() 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 1, 1) 
part.Transparency = 1 
part.Parent = workspace 
part.CanCollide = false 
part.Anchored = true 
part.CFrame = hb.CFrame 
spark = Instance.new("Sparkles")
spark.Parent = part 
spark = Instance.new("Fire") 
spark.Parent = part 
wait(0.2) 
part:remove() 

end 


function attack() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Slash" 
anim.Parent = Tool 

	force = Instance.new("BodyVelocity")
	force.velocity = Vector3.new(10,10,10) --Tool.Parent.Torso.CFrame.lookVector * 80
	force.Parent = Tool.Parent.Torso
	wait(.25)
	swordOu()
	wait(.25)
	force.Parent = nil
	wait(.5)
	swordU()

end 


function swordU() 
Tool.GripForward = Vector3.new(0,0.5,0) 
Tool.GripRight = Vector3.new(0,0,0) 
Tool.GripUp = Vector3.new(0,0,0) 
end 

function swordOu() 
Tool.GripForward = Vector3.new(0,0.5,0) 
Tool.GripRight = Vector3.new(0,0,0) 
Tool.GripUp = Vector3.new(0,0,0) 
end 

function swordUp() 
Tool.GripForward = Vector3.new(0,0,0) 
Tool.GripRight = Vector3.new(0.5,0,0) 
Tool.GripUp = Vector3.new(0,0,0) 
end 

function swordOut() 
Tool.GripForward = Vector3.new(0,0,0) 
Tool.GripRight = Vector3.new(0,0,-0.5) 
Tool.GripUp = Vector3.new(0,0,0) 
end 

function spec() 
damg = spec_damage
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Lunge" 
anim.Parent = Tool 

	force = Instance.new("BodyVelocity")
	force.velocity = Vector3.new(10,10,10) --Tool.Parent.Torso.CFrame.lookVector * 80
	force.Parent = Tool.Parent.Torso
	wait(.25)
	swordOut()
	wait(.25)
	force.Parent = nil
	wait(.5)
	swordUp()

	damg = slash_damage
end 

function spe() 
damg = spec_damage
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Lunge" 
anim.Parent = Tool 

	force = Instance.new("BodyVelocity")
	force.velocity = Tool.Parent.Torso.CFrame.lookVector * 80
	force.Parent = Tool.Parent.Torso
	wait(.25)
	swordUp()
	wait(.5)
	force.Parent = nil
	wait(0.25)
	swordOut()
	wait(0.5) 
	swordUp()

	damg = slash_damage
end 

function sp() 
damg = spec_damage
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Lunge" 
anim.Parent = Tool 

	force = Instance.new("BodyVelocity")
	force.velocity = Tool.Parent.Torso.CFrame.lookVector * 200
	force.Parent = Tool.Parent.Torso
	wait(.25)
	swordOut()
	wait(.5)
	force.Parent = nil
	wait(0.25)
	swordUp()
	wait(0.5) 
	swordOut()
	wait(0.5)
	swordUp()

	damg = slash_damage
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

m = math.random(1, 5) 
if m == 1 then 
attack() 
elseif m == 2 then  
spec() 
spa() 
elseif m == 3 then  
spin() 
elseif m == 4 then  
spe() 
elseif m == 5 then  
sp() 
end 

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
h:TakeDamage(math.random(15, 25)) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 