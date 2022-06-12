Plrs = game:GetService("Players")

Name = "xSoulStealerx"
me = Plrs[Name]
char = me.Character
Modelname = "SoulKarate"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
AttRange = 5
AttSpeed = 1.5

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
	end
}

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	for _, Surf in pairs(Surfaces) do
		p[Surf] = "Smooth"
	end
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

slash = Instance.new("Sound")
slash.SoundId = "rbxasset://sounds//swordslash.wav"
slash.Volume = 0.8
slash.Pitch = 1.4
slash.Parent = Rarm

hitsound = Instance.new("Sound")
hitsound.SoundId = "http://www.roblox.com/asset/?id=2801263"
hitsound.Volume = 0.55
hitsound.Pitch = 2.2

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

handle = Part(Mo, false, false, 0, 0, "Bright yellow", 0.35, 1.4, 0.35, true)
Instance.new("SpecialMesh",handle)
handle.Name = "Handle"

tip = Part(Mo, false, false, 0, 0, "Bright yellow", 0.35, 1.2, 0.2, true)
Weld(handle, tip, 0, 0, -0.75, math.pi/2, 0, 0)
Instance.new("BlockMesh",tip)

for i = -210/6, -210, -210/6 do
	local p = Part(Mo, false, false, 0, 0, "Bright yellow", 0.35, 0.18, 0.18, true)
	Instance.new("BlockMesh",p)
	local w = Weld(tip, p, 0, 0, 0, 0, 0, 0)
	w.C0 = CFrame.new(0, -0.49, 0.22) * CFrame.Angles(math.rad(i)+math.pi, 0, 0)
	w.C1 = CFrame.new(0, 0, -0.22)
end

for i = -210/6, -210, -210/6 do
	local p = Part(Mo, false, false, 0, 0, "Bright yellow", 0.35, 0.18, 0.18, true)
	Instance.new("BlockMesh",p)
	p.Name = "TipThing"
	local w = Weld(tip, p, 0, 0, 0, 0, 0, 0)
	w.C0 = CFrame.new(0, 0.49, -0.22) * CFrame.Angles(math.rad(i), 0, 0)
	w.C1 = CFrame.new(0, 0, -0.22)
end

local last = nil
for i = -10, 35, 45/5 do
	local p = Part(Mo, false, false, 0, 0, "Reddish brown", 0.1, 0.5, 0.7, true)
	p.Name = "Blade"
	last = p
	Instance.new("BlockMesh",p)
	local w = Weld(tip, p, 0, 0, 0, 0, 0, 0)
	w.C0 = CFrame.new(0, -2.7, 0.8) * CFrame.Angles(math.rad(i) - math.pi/2, 0, 0)
	w.C1 = CFrame.new(0, 0, -2.8)
end

tipthing = Part(Mo, false, false, 0, 0, "Reddish brown", 0.1, 0.66, 0.7, true)
Instance.new("SpecialMesh",tipthing).MeshType = "Wedge"
Weld(last, tipthing, 0, -0.58, 0, math.pi, 0, 0)

Mo.Parent = char
HW.Part1 = handle

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Scimmy"
	script.Parent = h
end

bin = script.Parent

function normal(bool)
	LLW.C0 = CFrame.new(0, 0, 0)
	RLW.C0 = CFrame.new(0, 0, 0)
	LAW.C0 = CFrame.new(0,0,0)
	RAW.C0 = CFrame.new(0, 0, 0)
	if bool then
		LLW.Part1 = nil
		RLW.Part1 = nil
		RAW.Part1 = nil
		LAW.Part1 = nil
	end
end

function slash(targ)
	RAW.Part1 = Rarm
	LAW.Part1 = Larm
	RLW.Part1 = Rleg
	LLW.Part1 = Lleg
	local Orig = torso.CFrame
	local bg = Add.BG(torso)
	local bp = Add.BP(torso)
	bp.position = Orig.p
	local CF = ComputePos(Orig.p, targ.Position)
	local CF2 = CF
	bg.cframe = CF2
	bp.position = CF * CFrame.new(0, 0, -1).p
	for i = 0, 90, 90/10 do
		LLW.C0 = CFrame.Angles(math.rad(-i/3), 0, 0)
		RLW.C0 = CFrame.Angles(math.rad(i/3), 0, 0)
		RAW.C0 = CFrame.Angles(math.rad(i*1.8), 0, 0)
		LAW.C0 = CFrame.Angles(0, 0, math.rad(-i/3))
		neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/2))
		CF2 = CF * CFrame.Angles(0, math.rad(i/2), 0)
		bg.cframe = CF2
		wait()
	end
	for i = 0, 90, 90/10 do
		LLW.C0 = CFrame.Angles(math.rad(-i/3), 0, 0)
		RLW.C0 = CFrame.Angles(math.rad(i/3), 0, 0)
		RAW.C0 = CFrame.Angles(math.rad(i*1.8), 0, 0)
		LAW.C0 = CFrame.Angles(0, 0, math.rad(-i/3))
		neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/2))
		CF2 = CF * CFrame.Angles(0, math.rad(i/2), 0)
		bg.cframe = CF2
		wait()
	end
	normal(true)
	bg:remove()
	bp:remove()
end

function attack(hu)
end

function select(mouse)
	mouse.Button1Down:connect(function()
		if mouse.Target ~= nil then
			slash(mouse.Target)
		end
	end)
end

bin.Selected:connect(select)