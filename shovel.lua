Name = "xSoulStealerx"
me = game.Players[Name]
char = me.Character
Modelname = "SoulBall"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
able = true

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
		bg.P = 8000
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
	w.C1 = CFrame.Angles(a,b,c) * CFrame.new(x,y,z)
	return w
end

function ComputePos(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CFrame.new(pos1, pos3)
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

hitsound = Instance.new("Sound")
hitsound.SoundId = "http://www.roblox.com/asset/?id=2801263"
hitsound.Volume = 0.55
hitsound.Pitch = 1.8

Mo = Instance.new("Model")
Mo.Name = Modelname

RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
HBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1, 0, 0, 0, 0)
HBW = Weld(Rarm, HBrick, 0, 1, 0, -0.4, -math.pi*0.94, math.pi/4)

RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 1, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 1, 0, 0, 0, 0)
HW = Weld(HBrick, nil, 0, 0, 0, 0, 0, 0)
TW = Weld(torso, nil, 0, -0.5, -0.7, 0, 0, 0.6)

handle = Part(Mo, false, false, 0, 0, "Brown", 0.4, 3.3, 0.4, true)
Instance.new("CylinderMesh",handle)
TW.Part1 = handle

for i = 0, 180, 25 do
	local p = Part(Mo, false, false, 0, 0, "Brown", 0.4, 0.3, 0.4, true)
	Instance.new("CylinderMesh",p)
	local wasd = Weld(handle, p, 0, 0, 0, 0, 0, 0)
	wasd.C0 = CFrame.new(0, 3.3/2+0.6, 0) * CFrame.Angles(0, 0, math.rad(i))
	wasd.C1 = CFrame.new(0.5, 0, 0)
end

han = Part(Mo, false, false, 0, 0, "Dark grey", 0.5, 1.7, 0.5, true)
Weld(handle, han, 0, -3.3/2-0.9, 0, 0, 0, math.pi/2)
Instance.new("SpecialMesh",han)

han2 = Part(Mo, false, false, 0, 0, "Reddish brown", 2, 0.5, 0.5, true)
Weld(handle, han2, 0, 3.3/2, 0, 0, 0, 0)

for i = -10, 40, 10 do
	for x = -20, 20, 10 do
		local p = Part(Mo, false, false, 0, 0, "Mid. grey", 0.6, 0.4, 0.2, true)
		Instance.new("BlockMesh",p)
		local wasd = Weld(han2, p, 0, 0, 0, 0, 0, 0)
		wasd.C0 = CFrame.new(0, -0.7, 1.55) * CFrame.Angles(math.rad(-i), math.rad(x/1.2), 0)
		wasd.C1 = CFrame.new(0, 0, 1.7)
	end
	local p = Part(Mo, false, false, 0, 0, "Mid. grey", 0.6, 0.35, 0.2, true)
	Instance.new("BlockMesh",p)
	local wasd = Weld(han2, p, 0, 0, 0, 0, 0, 0)
	wasd.C0 = CFrame.new(0, -1.4, -0.06) * CFrame.Angles(math.rad(-40), math.rad(-(i-15)/2), math.rad(90+((i-15)*1.5)))
	wasd.C1 = CFrame.new(0.75, 0, 0)
end

Mo.Parent = char

RAWBattle = nil
LAWBattle = nil

function SelectAnim()
	RAW.Part1 = Rarm
	LAW.Part1 = Larm
	for i=0,200,10 do
		RAW.C0 = CFrame.Angles(math.rad(i),0,0) * CFrame.new(0,-i/300,0)
		LAW.C0 = CFrame.Angles(0,0,math.rad(-i))
		wait()
	end
	HW.Part1 = han
	TW.Part1 = nil
	local w1, w2 = RAW.C0, LAW.C0
	for i=0,100,10 do
		RAW.C0 = w1 * CFrame.Angles(math.rad(-i),0,math.rad(i/2)) * CFrame.new(0,0,0)
		LAW.C0 = w2 * CFrame.Angles(0,0,math.rad(-i))
		wait()
	end
	if RAWBattle == nil then
		RAWBattle = RAW.C0
		LAWBattle = LAW.C0
	end
end

function Sel(mouse)
	SelectAnim()
end

function Desel()
	RAW.Part1 = nil
	LAW.Part1 = nil
	HW.Part1 = nil
	TW.Part1 = handle
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Shovel"
	script.Parent = h
end

bin = script.Parent

bin.Selected:connect(Sel)
bin.Deselected:connect(Desel)
