Plrs = game:GetService("Players")

Name = "yfc"
me = Plrs[Name]
char = me.Character
Modelname = "Gun"
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
selected = false
Hurt = false
Able = true

Add = {
	Sphere = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Sphere"
		return m
	end,
	BF = function(P)
		local bf = Instance.new("BodyForce",P)
		bf.force = Vector3.new(0, P:GetMass()*187, 0)
		return bf
	end,
	BP = function(P)
		local bp = Instance.new("BodyPosition",P)
		bp.maxForce = Vector3.new(math.huge, 0, math.huge)
		bp.P = 14000
		return bp
	end,
	BG = function(P)
		local bg = Instance.new("BodyGyro",P)
		bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bg.P = 14000
		return bg
	end,
	Mesh = function(P, ID, x, y, z)
		local m = Instance.new("SpecialMesh")
		m.MeshId = ID
		m.Scale = Vector3.new(x, y, z)
		m.Parent = P
		return m
	end,
	Sound = function(P, ID, vol, pitch)
		local s = Instance.new("Sound")
		s.SoundId = ID
		s.Volume = vol
		s.Pitch = pitch
		s.Parent = P
		return s
	end
}

function find(tab, arg)
	local ah = nil
	for i,v in pairs(tab) do
		if v == arg then
			ah = v
		end
	end
	return ah
end

function getAllParts(from)
	local t = {}
	function getParts(where)
		for i, v in pairs(where:children()) do
			if v:IsA("BasePart") then
				if v.Parent ~= char and v.Parent.Parent ~= char then
					table.insert(t, v)
				end
			end
			getParts(v)
		end
	end
	getParts(workspace)
	return t
end

function RayCast(pos1, pos2, maxDist, forward)
	local list = getAllParts(workspace)
	local pos0 = pos1
	for dist = 1, maxDist, forward do
		pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p
		for _, v in pairs(list) do
			local pos3 = v.CFrame:pointToObjectSpace(pos0)
			local s = v.Size
			if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) then
				return pos0, v
			end
		end
	end
	return pos0, nil
end

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	p.TopSurface = "Smooth"
	p.BottomSurface = "Smooth"
	p.Size = Vector3.new(X, Y, Z)
	if Break then
		p:BreakJoints()
	else p:MakeJoints() end
	p.Parent = Parent
	return p
end

function Weld(p0, p1, x, y, z, a, b, c)
	local w = Instance.new("Weld")
	w.Parent = p0
	w.Part0 = p0
	w.Part1 = p1
	w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
	return w
end

function ComputePos(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CFrame.new(pos1, pos3)
end

function getHumanoid(c)
	local h = nil
	for i,v in pairs(c:children()) do
		if v:IsA("Humanoid") and c ~= char then
			if v.Health > 0 then
				h = v
			end
		end
	end
	return h
end

for i,v in pairs(char:children()) do
	if v.Name == Modelname then
		v:remove()
	end
end

torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]

hc = Instance.new("Humanoid")
hc.Health = 0
hc.MaxHealth = 0

slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 0.6)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)

function PlaySound(sound)
	local s = sound:clone()
	s.Parent = torso
	s.PlayOnRemove = true
	coroutine.resume(coroutine.create(function()
		wait()
		s:remove()
	end))
end

Mo = Instance.new("Model")
Mo.Name = Modelname

RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)

RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)

HB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
HBW = Weld(Rarm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, 0, 0, 0, math.pi/2, 0, 0)

TH = Weld(torso, nil, -1.2, -0.5, 0, math.rad(45+45+45), 0, 0)

RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil

handle = Part(Mo, false, false, 0, 0, "Reddish brown", 0.4, 1, 0.4, true)
Instance.new("SpecialMesh",handle)

tip = Part(Mo, false, false, 0, 0, "Reddish brown", 0.4, 1, 0.4, true)
Weld(handle, tip, 0, 0, 0.2, 0, 0, 0)

for i = -0.25, 0.261, 0.5 do
	local tip2 = Part(Mo, false, false, 0, 0, "Reddish brown", 0.4, 0.4, 0.4, true)
	local w = Weld(tip, tip2, 0, 0, 0, math.rad(45), 0, 0)
	w.C0 = CFrame.new(0, i, -0.1)
end

pipe = Part(Mo, false, false, 0, 0, "Dark grey", 0.4, 0.4, 1.6, true)
Weld(handle, pipe, 0.55, -0.55, 1.8, math.rad(-5), 0, math.rad(45))

for i = -0.75, -1.45, -0.7 do
	local p = Part(Mo, false, false, 0, 0, "Dark grey", 0.6, 0.6, 0.2, true)
	Weld(pipe, p, 0, 0, i, 0, 0, math.pi/4)
	Instance.new("BlockMesh",p)
end

for i = -0.3, 0.31, 0.6 do
	local p = Part(Mo, false, false, 0, 0, "Dark grey", 0.6, 0.2, 0.825, true)
	Weld(pipe, p, 0, i, -1.05, 0, 0, math.pi/4+(math.pi/2))
	Instance.new("BlockMesh",p)
end

main = Part(Mo, false, false, 1, 0, "Dark grey", 0.1, 0.1, 0.1, true)
Weld(pipe, main, 0, 0, -1.1, 0, 0, 0)

block = Part(Mo, false, false, 0, 0, "Dark grey", 0.45, 0.8, 0.65, true)
Weld(handle, block, 0, -0.76, 0, 0, 0, 0)
Instance.new("BlockMesh",block)

for i = 0, 360, 60 do
	local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.6, 0.2, true)
	local w = Weld(main, p, 0, 0, 0, 0, 0, 0)
	w.C0 = CFrame.Angles(0, 0, math.rad(i))
	w.C1 = CFrame.new(-0.2, 0, 0) * CFrame.Angles(math.pi/2, 0, 0)
	Instance.new("CylinderMesh",p)
end

Mo.Parent = char
TH.Part1 = handle

function showdmg(dmg, p, pos)
	local mo = Instance.new("Model")
	mo.Name = dmg
	local pa = Part(mo, false, true, 0, 0, "Bright red", 0.8, 0.3, 0.8, true)
	pa.CFrame = CFrame.new(p.Position) * CFrame.new(0, pos, 0)
	pa.Name = "Head"
	local hah = hc:clone()
	hah.Parent = mo
	local bp = Add.BP(pa)
	bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	bp.position = p.Position + Vector3.new(0, 3+pos, 0)
	Add.BG(pa)
	coroutine.resume(coroutine.create(function()
		wait()
		mo.Parent = workspace
		wait(1.4)
		mo:remove()
	end))
end

function damage(hum, p, num, dm1, dm2)
	local dmg = math.random(dm1, dm2)
	hum.Health = hum.Health - dmg
	showdmg(dmg, p, num)
	return dmg
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "xGun"
	script.Parent = h
end

bin = script.Parent

function detach(bool)
	LLW.C0 = CFrame.new(0, 0, 0)
	RLW.C0 = CFrame.new(0, 0, 0)
	LAW.C0 = CFrame.new(0, 0, 0)
	RAW.C0 = CFrame.new(0, 0, 0)
	if bool then
		LLW.Part1 = nil
		RLW.Part1 = nil
		RAW.Part1 = nil
		LAW.Part1 = nil
	end
end

function attach()
	RAW.Part1 = Rarm
	LAW.Part1 = Larm
	RLW.Part1 = Rleg
	LLW.Part1 = Lleg
end

function normal()
	neck.C0 = necko
	RAW.C0 = RAWStand
	LAW.C0 = LAWStand
	RLW.C0 = RLWStand
	LLW.C0 = LLWStand
	HW.C0 = HWStand
end

function selectanim()
	TH.Part1 = nil
	HW.Part1 = handle
end

function deselanim()
	TH.Part1 = handle
	HW.Part1 = nil
	detach(true)
end

function select(mouse)
	selectanim()
	selected = true
	mouse.Button1Down:connect(function()
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "q" then
		end
	end)
end

function deselect(mouse)
	selected = false
	deselanim()
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)
