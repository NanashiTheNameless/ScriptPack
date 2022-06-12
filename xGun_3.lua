Name = "xSoulStealerx"
Colors = {"Cyan", "Black"}
Plrs = game:GetService("Players")

me = Plrs[Name]
char = me.Character
Modelname = "xGun"
Toolname = "xGun"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
selected = false
Hurt = false
Deb = true
Able = true
Prop = {Damage = 30}

ToolIcon = ""
MouseIc = ""
MouseDo = ""

Add = {
	Sphere = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Sphere"
		return m
	end,
	BF = function(P)
		local bf = Instance.new("BodyForce",P)
		bf.force = Vector3.new(0, P:GetMass()*147, 0)
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
			if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide == true then
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

slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 0.8)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)
smashsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2692806", 0.8, 0.35)
boomboom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2760979", 1, 0.18)

function PlaySound(sound, pitch, vol)
	local s = sound:clone()
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
HW = Weld(HB, nil, 0, -0.2, 0, math.pi/2, 0, 0)

TH = Weld(torso, nil, -0.3, -0.25, 1.5, math.rad(-60), 0, math.rad(-45))
THMain = TH.C1

BG = Add.BG(nil)

RAWStand, LAWStand, RLWStand, LLWStand, HWStand, NeckStand = nil

handle = Part(Mo, false, false, 0, 0, Colors[2], 0.6, 1.6, 0.6, true)
Instance.new("SpecialMesh",handle)
handle.Name = "Handle"

tip1 = Part(Mo, false, false, 0, 0, Colors[2], 1, 0.8, 1, true)
Instance.new("SpecialMesh",tip1)
Weld(handle, tip1, 0, -0.1, 1, math.rad(-90), 0, 0)

tip2 = Part(Mo, false, false, 0, 0, Colors[2], 0.6, 0.8, 0.6, true)
Instance.new("SpecialMesh",tip2)
Weld(tip1, tip2, 0, -0.4, 0, 0, 0, 0)

tip3 = Part(Mo, false, false, 0, 0, Colors[2], 1.2, 0.3, 1.2, true)
Instance.new("CylinderMesh",tip3)
Weld(tip2, tip3, 0, -0.3, 0, 0, 0, 0)

for i = 0, 360, 22.5 do
	local tip4 = Part(Mo, false, false, 0, 0, Colors[1], 0.2, 1, 0.2, true)
	Instance.new("BlockMesh",tip4).Scale = Vector3.new(1, 1, 0.9)
	local w = Weld(tip3, tip4, -0.35, 0, 0, 0, 0, 0)
	w.C0 = CFrame.new(0, 0.65, 0) * CFrame.Angles(0, math.rad(i), 0)
	local tip5 = Part(Mo, false, false, 0, 0, Colors[2], 0.35, 0.2, 0.25, true)
	Instance.new("BlockMesh",tip5)
	local w2 = Weld(tip4, tip5, -0.05, -0.6, 0, 0, 0, 0)
	local tip7 = Part(Mo, false, false, 0, 0, Colors[2], 0.2, 0.4, 0.2, true)
	Instance.new("BlockMesh",tip7).Scale = Vector3.new(1, 1, 1)
	Weld(tip5, tip7, 0.1, -0.3, 0, 0, 0, 0)
	local tip8 = Part(Mo, false, false, 0, 0, Colors[2], 0.35, 0.2, 0.25, true)
	Instance.new("BlockMesh",tip8)
	Weld(tip5, tip8, 0, -0.5, 0, 0, 0, 0)
end

for i = 0, 360, 90 do
	local tip6 = Part(Mo, false, false, 0, 0, Colors[2], 0.2, 1, 0.2, true)
	Instance.new("BlockMesh",tip6)
	local w = Weld(tip3, tip6, -0.45, 0, 0, 0, 0, 0)
	w.C0 = CFrame.new(0, 0.65, 0) * CFrame.Angles(0, math.rad(i), 0)
end


Mo.Parent = char
TH.Part1 = handle

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = Toolname
	h.TextureId = ToolIcon
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
	neck.C0 = NeckStand
	RAW.C0 = RAWStand
	LAW.C0 = LAWStand
	RLW.C0 = RLWStand
	LLW.C0 = LLWStand
	RAW.C1 = CFrame.new(0, 0.5, 0)
	LAW.C1 = CFrame.new(0, 0.5, 0)
	RLW.C1 = CFrame.new(0, 0.8, 0)
	LLW.C1 = CFrame.new(0, 0.8, 0)
	HW.C0 = HWStand
end

function idleanim()
	attach()
	for i = 0, 1, 0.03 do
		RAW.C0 = RAWStand * CFrame.Angles(0, 0, 0)
		LAW.C0 = LAWStand * CFrame.Angles(0, 0, 0)
		RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0)
		LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0)
		neck.C0 = NeckStand * CFrame.Angles(0, 0, 0)
		if selected == false or torso.Velocity.magnitude > 2 or Able == false then break end
		wait()
	end
	wait()
	for i = 1, 0, -0.02 do
		RAW.C0 = RAWStand * CFrame.Angles(0, 0, 0)
		LAW.C0 = LAWStand * CFrame.Angles(0, 0, 0)
		RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0)
		LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0)
		neck.C0 = NeckStand * CFrame.Angles(0, 0, 0)
		if selected == false or torso.Velocity.magnitude > 2 or Able == false then break end
		wait()
	end
	normal()
end

function runanim()
	RLW.Part1 = nil
	LLW.Part1 = nil
end

--[[coroutine.resume(coroutine.create(function()
	while true do
		wait()
		if selected and Able == true then
			if torso.Velocity.magnitude < 2 then
				idleanim()
				wait()
			else
				runanim()
				wait()
			end
		end
	end
end))]]

function selectanim()
	RAW.Part1 = Rarm
	for i = 0, 1, 0.14 do
		RAW.C0 = CFrame.Angles(math.rad(100*i), math.rad(-10*i), math.rad(-70*i)) * CFrame.new(0.6*i, -1*i, 0)
		neck.C0 = necko * CFrame.Angles(math.rad(-25*i), 0, math.rad(30*i))
		wait()
	end
	HW.C0 = CFrame.Angles(0, math.rad(70), math.rad(40)) * CFrame.new(0, 0, -0.8)
	HW.Part1 = handle
	TH.Part1 = nil
	LAW.Part1 = Larm
	for i = 0, 1, 0.14 do
		RAW.C0 = CFrame.Angles(math.rad(100), math.rad(-10-15*i), math.rad(-70+60*i)) * CFrame.new(0.6-0.6*i, -1+1*i, 0)
		LAW.C0 = CFrame.Angles(math.rad(35*i), math.rad(20*i), math.rad(-25*i))
		neck.C0 = necko * CFrame.Angles(math.rad(-25+5*i), 0, math.rad(30-55*i))
		HW.C0 = CFrame.Angles(0, math.rad(70-70*i), math.rad(40+80*i)) * CFrame.new(0, 0, -0.8+0.6*i)
		wait()
	end
	for i = 0, 1, 0.1 do
		RAW.C0 = CFrame.Angles(math.rad(100-10*i), math.rad(-10-15+25*i), math.rad(-10+55*i)) * CFrame.new(-0.8*i, 0, 0.05*i)
		LAW.C0 = CFrame.Angles(math.rad(35+55*i), math.rad(20-20*i), math.rad(-25+90*i)) * CFrame.new(-0.3*i, -1.2*i, 0)
		neck.C0 = necko * CFrame.Angles(math.rad(-20+20*i), 0, math.rad(30-55-20*i))
		HW.C0 = CFrame.Angles(0, 0, math.rad(120+60*i)) * CFrame.new(0, 0, -0.2+0.6*i)
		wait()
	end
	if RAWStand == nil then
		RAWStand = RAW.C0
		LAWStand = LAW.C0
		RLWStand = RLW.C0
		LLWStand = LLW.C0
		HWStand = HW.C0
		NeckStand = neck.C0
	end
	BG.Parent = torso
end

function deselanim()
	BG.Parent = nil
	for i = 1, 0, -0.1 do
		RAW.C0 = CFrame.Angles(math.rad(100-10*i), math.rad(-10-15+25*i), math.rad(-10+55*i)) * CFrame.new(-0.8*i, 0, 0.05*i)
		LAW.C0 = CFrame.Angles(math.rad(35+55*i), math.rad(20-20*i), math.rad(-25+90*i)) * CFrame.new(-0.3*i, -1.2*i, 0)
		neck.C0 = necko * CFrame.Angles(math.rad(-20+20*i), 0, math.rad(30-55-20*i))
		HW.C0 = CFrame.Angles(0, 0, math.rad(120+60*i)) * CFrame.new(0, 0, -0.2+0.6*i)
		wait()
	end
	for i = 1, 0, -0.14 do
		RAW.C0 = CFrame.Angles(math.rad(100), math.rad(-10-15*i), math.rad(-70+60*i)) * CFrame.new(0.6-0.6*i, -1+1*i, 0)
		LAW.C0 = CFrame.Angles(math.rad(35*i), math.rad(20*i), math.rad(-25*i))
		neck.C0 = necko * CFrame.Angles(math.rad(-25+5*i), 0, math.rad(30-55*i))
		HW.C0 = CFrame.Angles(0, math.rad(70-70*i), math.rad(40+80*i)) * CFrame.new(0, 0, -0.8+0.6*i)
		wait()
	end
	HW.Part1 = nil
	LAW.Part1 = nil
	TH.Part1 = handle
	for i = 1, 0, -0.14 do
		RAW.C0 = CFrame.Angles(math.rad(100*i), math.rad(-10*i), math.rad(-70*i)) * CFrame.new(0.6*i, -1*i, 0)
		neck.C0 = necko * CFrame.Angles(math.rad(-25*i), 0, math.rad(30*i))
		wait()
	end
	neck.C0 = necko
	detach(true)
end

function fire()
	local ball = Part(workspace, false, false, 0, 0, Colors[1], 1, 1, 1, true)
	Add.BF(ball)
	Add.Sphere(ball)
	ball.CFrame = tip1.CFrame * CFrame.new(0, 1.5, 0)
	local cf = CFrame.new(handle.Position, handle.CFrame * CFrame.new(0, 0, -5).p)
	ball.Velocity = cf.lookVector * -80
	local w1, w2, w3 = RAW.C0, LAW.C0
	for i = 0, 1, 0.5 do
		RAW.C0 = w1 * CFrame.Angles(math.rad(25*i), 0, 0)
		LAW.C0 = w2 * CFrame.Angles(math.rad(25*i), 0, 0)
		HW.C0 = HWStand * CFrame.Angles(math.rad(-20*i), 0, 0)
		wait()
	end
	for i = 1, 0, -0.2 do
		RAW.C0 = w1 * CFrame.Angles(math.rad(25*i), 0, 0)
		LAW.C0 = w2 * CFrame.Angles(math.rad(25*i), 0, 0)
		HW.C0 = HWStand * CFrame.Angles(math.rad(-20*i), 0, 0)
		wait()
	end
end
	

function select(mouse)
	selectanim()
	selected = true
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "q" then
		end
	end)
	local hold = false
	mouse.Button1Down:connect(function()
		hold = true
		coroutine.resume(coroutine.create(function()
			mouse.Button1Up:wait()
			hold = false
		end))
		while hold do
			local pos = torso.CFrame * CFrame.new(0, 0.85, 0).p
			local offset = (pos.Y - mouse.Hit.p.Y) / 60 
			local mag = (pos - mouse.Hit.p).magnitude / 80 
			offset = offset / mag 
			if offset > 1 then offset = 1 elseif offset < -1 then offset = -1 end
			RAW.C0 = RAWStand * CFrame.Angles(-offset, 0, 0) * CFrame.new(0, 0, 0)
			LAW.C0 = LAWStand * CFrame.Angles(-offset/1.5, 0, offset/5) * CFrame.new(0, 0, 0)
			neck.C0 = NeckStand * CFrame.Angles(offset/1.6, 0, 0)
			wait()
		end
		fire()
		LAW.C0 = LAWStand
		RAW.C0 = RAWStand
		neck.C0 = NeckStand
	end)
	while selected do
		BG.cframe = ComputePos(torso.Position, mouse.Hit.p) * CFrame.Angles(0, math.rad(45), 0)
		wait()
	end
end

function deselect(mouse)
	selected = false
	deselanim()
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)
