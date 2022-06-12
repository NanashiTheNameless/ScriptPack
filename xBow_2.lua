Plrs = game:GetService("Players")

Name = "xSoulStealerx"
me = Plrs[Name]
char = me.Character
Modelname = "xBow"
Toolname = "Bowx"
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
HW = Weld(HB, nil, 0, -1.3, 0, math.pi/2, 0, 0)

TH = Weld(torso, nil, -0.8, 0.4, -0.4, 0, math.pi/2, math.rad(80))
THMain = TH.C1

RAWStand, LAWStand, RLWStand, LLWStand, HWStand, NeckStand = nil

handle = Part(Mo, false, false, 0, 0, GuitarColour, 0.6, 1.5, 1.5, true)
handle.Name = "Handle"

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
	if RAWStand == nil then
		RAWStand = RAW.C0
		LAWStand = LAW.C0
		RLWStand = RLW.C0
		LLWStand = LLW.C0
		HWStand = HW.C0
		NeckStand = neck.C0
	end
end

function deselanim()
	neck.C0 = necko
	detach(true)
end


function select(mouse)
	selectanim()
	selected = true
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "q" then
		end
	end)
	mouse.Button1Down:connect(function()
	end)
end

function deselect(mouse)
	selected = false
	deselanim()
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)
