Plrs = game:GetService("Players")

Name = "yfc"
me = Plrs[Name]
char = me.Character
Modelname = "Ax of Doom"
Toolname = "Ax of Doom"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
selected = false
Hurt = false
Able = true

CA = CFrame.Angles
CN = CFrame.new
MR = math.rad
MP = math.pi
MD = math.deg
MH = math.huge
MRA = math.random

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
	w.C1 = CN(x,y,z) * CA(a,b,c)
	return w
end

function ComputePos(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CN(pos1, pos3)
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

slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 1)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)

function PlaySound(sound)
	local s = sound:clone()
	s.Parent = torso
	s.PlayOnRemove = true
	coroutine.resume(coroutine.create(function()
		wait()
		s:remove()
	end))
end


--[[ PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
]]
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
HW = Weld(HB, nil, 0, -1, 0, math.pi/2, 0, 0)

TH = Weld(torso, nil, -0.75, 0.7, 0.4, 0, math.pi/2, MR(-140))
TH.C0 = CA(MR(-10), MR(10), 0)

handle = Part(Mo, false, false, 0, 0, "Camo", 0.45, 5.5, 0.45, true)
Instance.new("SpecialMesh",handle)
handle.Name = "Handle"

dec1 = Part(Mo, false, false, 0, 0, "Dark green", 0.2, 6, 0.2, true)
Add.Mesh(dec1, "http://www.roblox.com/asset/?id=16606212", 0.38, 0.38, 1.55)
Weld(handle, dec1, 0, 0, 0, math.pi/2, 0, 0)

dec2 = Part(Mo, false, false, 0, 0, "Earth green", 0.2, 6, 0.2, true)
Add.Mesh(dec2, "http://www.roblox.com/asset/?id=16606212", -0.3, 0.3, 1.55)
Weld(handle, dec2, 0, 0, 0, math.pi/2, math.pi/2, 0)

skull = Part(Mo, false, false, 0, 0, "Bright green", 0.2, 6, 0.2, true)
Add.Mesh(skull, "http://www.roblox.com/asset/?id=4770583", 2.9, 2.9, 2.3)
Weld(handle, skull, 0, -2.5, 0, 0, 0, 0)

for x = 0, 180, 180 do
	for i = -40, 70, 110/3 do
		local asd = (i+90)/85
		local p = Part(Mo, false, false, 0, 0, "Camo", 0.3, 0.8, 0.3, true)
		Add.Mesh(p, "http://www.roblox.com/asset/?id=1033714", 0.16, asd*1.2, 0.16)
		local w = Weld(skull, p, 0, 0, 0, 0, 0, 0)
		w.C0 = CA(0, MR(x), MR(i))
		w.C1 = CN(0, -1, 0) * CA(math.pi/2, math.pi/2, 0)
	end
end

handletip1 = Part(Mo, false, false, 0, 0.2, "Earth green", 0.5, 0.5, 0.5, true)
w1 = Weld(handle, handletip1, 0, 2.6, 0, 0, 0, 0)
Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.6, 0.5, 0.6)

handletip2 = Part(Mo, false, false, 0, 0.2, "Camo", 0.5, 0.5, 0.5, true)
Weld(handletip1, handletip2, 0, 0, 0, 0, MR(45), 0)
Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.6, 0.55, 0.6)

Mo.Parent = char
TH.Part1 = handle

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = Toolname
	script.Parent = h
end

bin = script.Parent

--[[ ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
]]

function detach(bool)
	LLW.C0 = CN(0, 0, 0)
	RLW.C0 = CN(0, 0, 0)
	LAW.C0 = CN(0, 0, 0)
	RAW.C0 = CN(0, 0, 0)
	if bool then
		LLW.Part1 = nil
		RLW.Part1 = nil
		RAW.Part1 = nil
		LAW.Part1 = nil
		TH.Part1 = handle
		HW.Part1 = nil
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

function idleanim()
	attach()
	for i = 0, 1, 0.016 do
		RAW.C0 = RAWStand * CA(0, MR(-7*i), MR(12*i))
		LAW.C0 = LAWStand * CA(0, MR(-5*i), MR(7*i)) * CN(0, -0.2*i, 0)
		RLW.C0 = RLWStand * CA(MR(-4*i), 0, MR(3*i))
		LLW.C0 = LLWStand * CA(MR(4*i), 0, MR(-3*i))
		neck.C0 = necko * CA(MR(7*i), 0, MR(-6*i))
		if selected == false or torso.Velocity.magnitude > 4 or Able == false then break end
		wait()
	end
	wait()
	for i = 1, 0, -0.013 do
		RAW.C0 = RAWStand * CA(0, MR(-7*i), MR(12*i))
		LAW.C0 = LAWStand * CA(0, MR(-5*i), MR(7*i)) * CN(0, -0.2*i, 0)
		RLW.C0 = RLWStand * CA(MR(-4*i), 0, MR(3*i))
		LLW.C0 = LLWStand * CA(MR(4*i), 0, MR(-3*i))
		neck.C0 = necko * CA(MR(7*i), 0, MR(-6*i))
		if selected == false or torso.Velocity.magnitude > 4 or Able == false then break end
		wait()
	end
	normal()
end

function runanim()
	RLW.Part1 = nil
	LLW.Part1 = nil
end

coroutine.resume(coroutine.create(function()
	while true do
		wait()
		if selected and Able == true then
			if torso.Velocity.magnitude < 0.1 then
				idleanim()
			else
				runanim()
			end
			wait()
		end
	end
end))

function selectanim()
	RAW.Part1 = Rarm
	LLW.Part1 = Lleg
	RLW.Part1 = Rleg
	for i = 0, 1, 0.2 do
		RAW.C0 = CA(MR(185*i), MR(70*i), 0)
		LLW.C0 = CA(MR(2*i), 0, MR(-5*i))
		RLW.C0 = CA(MR(-2*i), 0, MR(5*i))
		neck.C0 = necko * CA(0, 0, MR(-40*i))
		wait()
	end
	TH.Part1 = nil
	HW.Part1 = handle
	HW.C0 = CA(MR(40), 0, MR(-20))
	for i = 0, 1, 0.08 do
		RAW.C0 = CA(MR(185-110*i), MR(70-60*i), MR(30*i))
		LLW.C0 = CA(MR(2-8*i), 0, MR(-5-10*i))
		RLW.C0 = CA(MR(-2+8*i), 0, MR(5+10*i))
		neck.C0 = necko * CA(MR(-15*i), 0, MR(-40+35*i))
		HW.C0 = CA(MR(40-80*i), 0, MR(-20+20*i))
		wait()
	end
	LAW.Part1 = Larm
	for i = 0, 1, 0.1 do
		RAW.C0 = CA(MR(185-110+15*i), MR(70-60-10*i), MR(30-65*i)) * CN(0, -0.8*i, 0)
		LAW.C0 = CA(MR(90*i), 0, MR(35*i)) * CN(0.1*i, -0.1*i, 0) * CN(0, -0.8*i, 0)
		LLW.C0 = CA(MR(-6), 0, MR(-5-10+10*i))
		RLW.C0 = CA(MR(6), 0, MR(5+10-10*i))
		neck.C0 = necko * CA(MR(-15+15*i), 0, MR(-5+5*i))
		HW.C0 = CA(MR(-40+40*i), 0, MR(35*i)) * CN(0, 0, 1.6*i)
		wait()
	end
	selected = true
end

function deselanim()
	selected = false
	for i = 1, 0, -0.1 do
		RAW.C0 = CA(MR(185-110+15*i), MR(70-60-10*i), MR(30-65*i)) * CN(0, -0.8*i, 0)
		LAW.C0 = CA(MR(90*i), 0, MR(35*i)) * CN(0.1*i, -0.1*i, 0) * CN(0, -0.8*i, 0)
		LLW.C0 = CA(MR(-6), 0, MR(-5-10+10*i))
		RLW.C0 = CA(MR(6), 0, MR(5+10-10*i))
		neck.C0 = necko * CA(MR(-15+15*i), 0, MR(-5+5*i))
		HW.C0 = CA(MR(-40+40*i), 0, 0) * CN(0, 0, 1.6*i)
		wait()
	end
	LAW.Part1 = nil
	for i = 1, 0, -0.08 do
		RAW.C0 = CA(MR(185-110*i), MR(70-60*i), MR(30*i))
		LLW.C0 = CA(MR(2-8*i), 0, MR(-5-10*i))
		RLW.C0 = CA(MR(-2+8*i), 0, MR(5+10*i))
		neck.C0 = necko * CA(MR(-15*i), 0, MR(-40+35*i))
		HW.C0 = CA(MR(40-70*i), 0, MR(-20+20*i))
		wait()
	end
	TH.Part1 = handle
	HW.Part1 = nil
	HW.C0 = CA(MR(40), 0, MR(-20))
	for i = 1, 0, -0.2 do
		RAW.C0 = CA(MR(185*i), MR(70*i), 0)
		LLW.C0 = CA(MR(2*i), 0, MR(-5*i))
		RLW.C0 = CA(MR(-2*i), 0, MR(5*i))
		neck.C0 = necko * CA(0, 0, MR(-40*i))
		wait()
	end
	detach(true)
end

function slash(mp)
	attach()
	local Orig = torso.CFrame
	local bg = Add.BG(torso)
	local bp = Add.BP(torso)
	bp.position = Orig.p
	local CF = ComputePos(Orig.p, mp)
	bg.cframe = CF
	for i = 0, 1, 0.05 do
		RAW.C0 = RAWStand * CA(MR(-80*i), 0, MR(20*i)) * CN(0, 0.2*i, 0.8*i)
		LAW.C0 = LAWStand * CA(MR(-50*i), 0, MR(40*i)) * CN(0, -0.8*i, 0)
		HW.C0 = HWStand * CA(0, 0, 0) * CN(0, 0, 0.4*i)
		neck.C0 = necko * CA(MR(20*i), 0, MR(-40*i))
		wait()
	end
	for i = 0, 1, 0.1 do
		RAW.C0 = RAWStand * CA(MR(-80-4*i), 0, MR(20+2*i)) * CN(0, 0.2-0.1*i, 0.8-0.1*i)
		LAW.C0 = LAWStand * CA(MR(-50-3*i), 0, MR(40-2*i)) * CN(0, -0.8-0.1*i, 0)
		HW.C0 = HWStand * CA(0, 0, MR(-35*i)) * CN(0, 0, 0.4)
		neck.C0 = necko * CA(MR(20+2*i), 0, MR(-40))
		wait()
	end
	wait(1)
	for i = 0, 1, 0.03 do
		RAW.C0 = RAWStand * CA(MR(-84+64*i), 0, MR(22)) * CN(0, 0.1, 0.7)
		LAW.C0 = LAWStand * CA(MR(-53), 0, MR(38)) * CN(0, -0.9, 0)
		HW.C0 = HWStand * CA(MR(-45*i), MR(15*i), MR(-35)) * CN(-1.5*i, 0, 0.4-2.4*i)
		neck.C0 = necko * CA(MR(22), 0, MR(-40))
		wait()
	end
	normal()
	bg:remove()
	bp:remove()
end

function select(mouse)
	selectanim()
	mouse.Button1Down:connect(function()
		if Able then
			Able = false
			slash(mouse.Hit.p)
			Able = true
		end
	end)
end

function deselect(mouse)
	deselanim()
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)
--lego
