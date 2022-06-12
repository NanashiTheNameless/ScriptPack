me = Game.Players.rigletto 

tool = Instance.new("Tool") 
tool.Parent = me.Backpack 
tool.Name = "Sword" 

han = Instance.new("Part") 
han.Parent = tool 
han.Name = "Handle" 
han.TopSurface = "Smooth" 
han.CanCollide = false 
han.BottomSurface = "Smooth" 
han.BrickColor = BrickColor.new("Really black") 
han.Size = Vector3.new(1, 1, 1) 
mesh = Instance.new("SpecialMesh")
mesh.Parent = han 
mesh.Scale = Vector3.new(0.5, 0.8, 0.5)

part = Instance.new("Part") 
part.Parent = tool 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Size = Vector3.new(1, 1, 2) 
part.BrickColor = BrickColor.new("Really black") 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.6, 0.2, 0.6) 

parta = Instance.new("Part") 
parta.Parent = tool 
parta.CanCollide = false 
parta.TopSurface = "Smooth" 
parta.BottomSurface = "Smooth" 
parta.Size = Vector3.new(1, 4, 1) 
parta.BrickColor = BrickColor.new("Really red") 
mesh = Instance.new("BlockMesh") 
mesh.Parent = parta 
mesh.Scale = Vector3.new(0.25, 1, 0.4) 

partb = Instance.new("Part") 
partb.Parent = tool 
partb.TopSurface = "Smooth" 
partb.CanCollide = false 
partb.BottomSurface = "Smooth" 
partb.Size = Vector3.new(1, 1, 1) 
partb.BrickColor = BrickColor.new("Really red") 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = partb 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(0.25, 1, 0.4) 

r = game:service("RunService") 


local damage = 0


local slash_damage = 0
local lunge_damage = 0

sword = script.Parent.Handle
Tool = script.Parent

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Parent = sword
SlashSound.Volume = .7

local LungeSound = Instance.new("Sound")
LungeSound.SoundId = "rbxasset://sounds\\swordlunge.wav"
LungeSound.Parent = sword
LungeSound.Volume = .6

local UnsheathSound = Instance.new("Sound")
UnsheathSound.SoundId = "rbxasset://sounds\\unsheath.wav"
UnsheathSound.Parent = sword
UnsheathSound.Volume = 1


function equip() 
weld = Instance.new("Weld") 
weld.Parent = tool 
weld.Part0 = part 
weld.Part1 = han 
weld.C0 = CFrame.new(0, -0.5, 0) 
weld.C1 = CFrame.new() 

weld = Instance.new("Weld") 
weld.Parent = tool 
weld.Part0 = parta 
weld.Part1 = part 
weld.C0 = CFrame.new(0, -1.85, 0) 
weld.C1 = CFrame.new() 

weld = Instance.new("Weld") 
weld.Parent = tool 
weld.Part0 = partb 
weld.Part1 = part 
weld.C0 = CFrame.new(0, -4.25, 0) 
weld.C1 = CFrame.new() 
end 

sword = parta 
Tool = tool 

function Unequipped() 
end 


function attack()
	damage = slash_damage
	SlashSound:play()
	local anim = Instance.new("StringValue")
	anim.Name = "toolanim"
	anim.Value = "Slash"
	anim.Parent = Tool
end

function lunge()
	damage = lunge_damage

	LungeSound:play()

	local anim = Instance.new("StringValue")
	anim.Name = "toolanim"
	anim.Value = "Lunge"
	anim.Parent = Tool
	
	
	force = Instance.new("BodyVelocity")
	force.velocity = Vector3.new(0,0,0) --Tool.Parent.Torso.CFrame.lookVector * 80
	force.Parent = Tool.Parent.Torso
	Tool.Parent.Humanoid.WalkSpeed=40
	for p = 1,2 do
		for i = 1,3 do
			wait()
			Tool.GripRight = Tool.GripRight + Vector3.new(0,0,.5)
		end
		for f = 1,3 do
			wait()
			Tool.GripUp = Tool.GripUp + Vector3.new(0,0,-.5)
		end
		for g = 1,3 do
			wait()
			Tool.GripUp = Tool.GripUp + Vector3.new(0,.5,0)
		end
		for h = 1,3 do
			wait()
			Tool.GripRight = Tool.GripRight + Vector3.new(0,0,-.5)
		end
		for o = 1,3 do
			wait()
			Tool.GripUp = Tool.GripUp + Vector3.new(0,0,.5)
		end
	end
	swordUp()
	force.Parent = nil
	Tool.Parent.Humanoid.WalkSpeed=16

	damage = damage
end

function hilt()
	damage = lunge_damage

	LungeSound:play()

	local anim = Instance.new("StringValue")
	anim.Name = "toolanim"
	anim.Value = "Lunge"
	anim.Parent = Tool
	Tool.GripForward = Vector3.new(-0.561, 0.238, -0.793)
	Tool.GripPos = Vector3.new(0.5, 0, -1.5)
	Tool.GripRight = Vector3.new(0, 0.958, 0.287)
	Tool.GripUp = Vector3.new(-0.828, -0.161, 0.537)
	wait(.3)
	Tool.GripPos = Vector3.new(0.5,0,-1)
	wait(.1)
	Tool.GripPos = Vector3.new(0.5,0,-.5)
	wait(.5)
	swordUp()
	damage = damage
end

function stab()
	damage = lunge_damage

	LungeSound:play()

	local anim = Instance.new("StringValue")
	anim.Name = "toolanim"
	anim.Value = "Lunge"
	anim.Parent = Tool
	
	
	force = Instance.new("BodyVelocity")
	force.velocity = Vector3.new(0,0,0) --Tool.Parent.Torso.CFrame.lookVector * 80
	force.Parent = Tool.Parent.Torso
	wait(.25)
	swordOut()
	wait(.25)
	force.Parent = nil
	wait(.5)
	swordUp()

	damage = damage
end

function swordUp()
	Tool.GripForward = Vector3.new(-1,0,0)
	Tool.GripRight = Vector3.new(0,1,0)
	Tool.GripUp = Vector3.new(0,0,1)
	Tool.GripPos = Vector3.new(0,0,-1.5)
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

m = math.random(1, 4) 
if m == 1 then 
attack() 
elseif m == 2 then 
stab() 
elseif m == 3 then 
hilt() 
elseif m == 4 then 
lunge() 
end 

Tool.Enabled = true 
end 

function onEquipped() 
equip() 
end 


------part 3 
------part 3 
------part 3 
sword.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Tool.Parent.Name then 
hit.Parent.Humanoid.Health = human.Health - 15 
hit.BrickColor = BrickColor.new("Really red")
end 
end 
end) 

Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
Tool.Unequipped:connect(Unequipped) 
sword.Touched:connect(Touched) 