Me = game.Players.LocalPlayer
Char = Me.Character
Selected = false
Modelname = "Earth"

CA = CFrame.Angles
CN = CFrame.new
MR = math.rad
MP = math.pi
MD = math.deg
MH = math.huge
MRA = math.random

Sounds = {
	Equip = {"rbxasset://sounds//unsheath.wav", 0.7, 0.6},
	Hit = {"http://www.roblox.com/asset/?id=2801263", 0.9, 0.6},
	Block = {"", 1, 0.5},
	Slash = {"rbxasset://sounds//swordslash.wav", 2, 0.8},
	SmashHit = {"rbxasset://sounds\\metal.ogg", 1.5, 0.8},
	Jump = {"rbxasset://sounds/swoosh.wav", 1, 1},
	Boom = {"http://www.roblox.com/asset?id=1369158", 1.2, 1},
	SmashBoom = {"http://www.roblox.com/asset/?id=2760979", 0.25, 1},
	Jump2 = {"http://www.roblox.com/asset/?id=2101148", 2, 1},
	GoRage = {"http://www.roblox.com/asset/?id=2767090", 1, 1},
	Shout = {"http://www.roblox.com/asset/?id=2676305", 1.1, 0.8},
	RageOff = {"http://www.roblox.com/asset/?id=3264793", 1.6, 0.6},
}

Add = {
	Sphere = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Sphere"
		return m
	end,
	BP = function(P)
		local bp = Instance.new("BodyPosition",P)
		bp.maxForce = Vector3.new(MH, MH, MH)
		bp.P = 14000
		return bp
	end,
	BG = function(P)
		local bg = Instance.new("BodyGyro",P)
		bg.maxTorque = Vector3.new(MH, MH, MH)
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
	Head = function(P)
		local s = Instance.new("SpecialMesh")
		s.MeshType = "Head"
		s.Parent = P
		return s
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

function RC(Pos, Dir, Max, Ignore)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end

function RayC(Start, En, MaxDist, Ignore)
	return RC(Start, (En - Start), MaxDist, Ignore)
end

function Notime(func, tim)
	coroutine.resume(coroutine.create(function()
		if tim then
			wait(tim)
		end
		func()
	end))
end

function waitChild(parent, name)
	local child = parent:findFirstChild(name)
	if child then return child end
	while true do
		child = parent.ChildAdded:wait()
		if child.Name == name then return child end
	end
end

function ComputePos(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CFrame.new(pos1, pos3)
end

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Size = Vector3.new(X, Y, Z)
	if Break then
		p:BreakJoints()
	else p:MakeJoints() end
	p.Parent = Parent
	p.Locked = true
	return p
end

function Weld(p0, p1, x, y, z, a, b, c)
	local w = Instance.new("Weld")
	w.Parent = p0
	w.Part0 = p0
	w.Part1 = p1
	w.C1 = CN(x,y,z) * CA(a,b,c)
	return w
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

function PlaySound(id, pitch, vol)
	local s = Add.Sound(nil, id, vol, pitch)
	if pitch ~= nil then
		if tonumber(pitch) then
			s.Pitch = tonumber(pitch)
		end
	end
	if vol ~= nil then
		if tonumber(vol) then
			s.Volume = tonumber(vol)
		end
	end
	s.Parent = torso
	s.PlayOnRemove = true
	Notime(function()
		wait()
		s:remove()
	end)
end

function playz(sound)
	PlaySound(sound[1], sound[2], sound[3])
end

torso = Char.Torso
neck = torso.Neck
hum = Char.Humanoid
Rarm = Char["Right Arm"]
Larm = Char["Left Arm"]
Rleg = Char["Right Leg"]
Lleg = Char["Left Leg"]

motors = {waitChild(torso, "Right Shoulder"),waitChild(torso, "Left Shoulder"),waitChild(torso, "Left Hip"),waitChild(torso, "Right Hip")}

for _,v in pairs(Char:children()) do
	if v.Name == Modelname then v:remove() end
end

Mo = Instance.new("Model")
Mo.Name = Modelname

Fake = Part(Mo, false, false, 1, 0, torso.BrickColor.Name, 2, 2, 1, true)

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

RHB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RHBW = Weld(Rarm, HB, 0, 0, 1, MP/2, 0, 0)
RW = Weld(HB, nil, 0, 0, 0, 0, 0, 0)

RHB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RHBW = Weld(Rarm, RHB, 0, 0, 1, MP/2, 0, 0)
RW = Weld(RHB, nil, 0, 0, 0, 0, 0, 0)

LHB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LHBW = Weld(Larm, LHB, 0, 0, 1, MP/2, 0, 0)
LW = Weld(LHB, nil, 0, 0, 0, 0, 0, 0)

Mo.Parent = Char

function Atch(t)
	for _,v in pairs(motors) do
		v.Part0 = t
	end
	RAW.Part0 = t
	LAW.Part0 = t
	RLW.Part0 = t
	LLW.Part0 = t
end

function Attach(parts)
	for _,v in pairs(parts) do
		v.Part0 = v[1]
		v.Part1 = v[2]
	end
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin", Me.Backpack)
	h.Name = "Earth"
	script.Parent = h
end

bin = script.Parent

function SelAnim()
	RAW.Part1 = Rarm
	LAW.Part1 = Larm
	for i = 0.15, 1, 0.15 do
		RAW.C0 = CA(0, 0, MR(25*i))
		LAW.C0 = CA(0, 0, MR(-25*i))
		wait()
	end
end

function DeselAnim()
	for i = 0.15, 1, 0.15 do
		RAW.C0 = CA(0, 0, MR(25-25*i))
		LAW.C0 = CA(0, 0, MR(-25+25*i))
		wait()
	end
	RAW.Part1 = nil
	LAW.Part1 = nil
end

function Throw()
end

function Selected(mouse)
	SelAnim()
	Selected = true
end

function DeSelected(mouse)
	Selected = false
	DeselAnim()
end

bin.Selected:connect(Selected)
bin.Deselected:connect(DeSelected)
