Plrs = game:GetService("Players")

me = Plrs.LocalPlayer
char = me.Character

Modelname = "xWep"
Toolname = "Drage"
Selected = false
Able = true
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
effectOn = false

for _, v in pairs(char:children()) do
	if v.Name == "Block" then v:remove() end
end

BlockRealPowa = 4

Block = Instance.new("BoolValue")
Block.Name = "Block"
Block.Value = false
BlockPower = Instance.new("IntValue")
BlockPower.Name = "BlockPower"
BlockPower.Value = BlockRealPowa
BlockPower.Parent = Block
Block.Parent = char

CA = CFrame.Angles
CN = CFrame.new
MR = math.rad
MP = math.pi
MD = math.deg
MH = math.huge
MRA = math.random

EffPos = CFrame.new(0, 0.5, 0)

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

torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]

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

function getCharacters(where, pos, dist)
	local chars = {}
	for _, v in pairs(where:children()) do
		local hum = getHumanoid(v)
		local tors = v:findFirstChild("Torso")
		if tors ~= nil and hum ~= nil then
			local anypart = nil
			for _,k in pairs(v:children()) do
				if k:IsA("BasePart") then
					if (k.Position - pos).magnitude <= dist then
						anypart = k
						break
					end
				end
			end
			if anypart then
				table.insert(chars, {v, tors, hum})
			end
		end
	end
	return chars
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

PlrGui = waitChild(me, "PlayerGui")

for _, v in pairs(char:children()) do if v.Name == Modelname then v:remove() end end 
for _, v in pairs(PlrGui:children()) do
	if v.Name == "HealthGUI" or v.Name == "MyGui" then
		v:remove()
	end
end

function EditGui(obj, parent, size, position, bgcolor, bordercolor, transparency, text, textcolor, auto)
	obj.Size = size
	obj.Position = position
	obj.BackgroundColor3 = bgcolor
	obj.BorderColor3 = bordercolor
	obj.BackgroundTransparency = transparency
	if obj:IsA("TextLabel") or obj:IsA("TextButton") then
		obj.Text = text
		obj.TextColor3 = textcolor
	end
	if obj:IsA("ImageButton") or obj:IsA("TextButton") then
		obj.AutoButtonColor = auto
		obj.MouseButton1Down:connect(function()
			RemoveOptions()
		end)
	end
	obj.Parent = parent
end

C3 = Color3.new
UD = UDim2.new

Sc = Instance.new("ScreenGui", PlrGui)
Sc.Name = "MyGui"

Fr = Instance.new("Frame")
EditGui(Fr, Sc, UD(0, 60, 0, 250), UD(1, -70, 0.5, -125), C3(0.1, 0.2, 0.5), C3(), 0)

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
HBW = Weld(Rarm, HB, 0, 0, 1, MP/2, 0, 0)
HW = Weld(HB, nil, 0, 0, 0, 0, 0, 0)

SW = Weld(Larm, nil, -0.5, 0, 0.3, MP/2, 0, 0)

TH = Weld(torso, nil, 0, -0.3, 0, 0, 0, 0)
TH.C0 = CN(1, -0.8, -0.3) * CA(MR(180), 0, MR(-20))

Weapon = Instance.new("Model")
Weapon.Name = "Weapon"

Handle = Part(Weapon, false, false, 0, 0, "Dark grey", 0.5, 0.3, 0.4)
Instance.new("BlockMesh",Handle)

local last1, last2 = nil

for i = -70, 50, 20 do
	local p = Part(Weapon, false, false, 0, 0, "Dark grey", 0.5, 0.25, 0.3)
	local w = Weld(Handle, p, 0, 0, 0.55, 0, 0, 0)
	w.C0 = CN(0, 0.54, -0.08) * CA(MR(i), 0, 0)
	Instance.new("BlockMesh",p)
	last1 = p
end

last1.BrickColor = BrickColor.new("Bright red")

for i = 70, -50, -20 do
	local p = Part(Weapon, false, false, 0, 0, "Dark grey", 0.5, 0.25, 0.3)
	local w = Weld(Handle, p, 0, 0, -0.55, 0, 0, 0)
	w.C0 = CN(0, 0.54, 0.08) * CA(MR(i), 0, 0)
	Instance.new("BlockMesh",p)
	last2 = p
end

last2.BrickColor = BrickColor.new("Navy blue")

Weapon.Parent = Mo
Mo.Parent = char

TH.Part1 = Handle

if script.Parent.className ~= "HopperBin" then
	H = Instance.new("HopperBin", me.Backpack)
	H.Name = Toolname
	script.Parent = H
end

Bin = script.Parent

function Detach()
	RAW.Part1 = nil
	LAW.Part1 = nil
	RLW.Part1 = nil
	LLW.Part1 = nil
	RAW.C0 = CN()
	LAW.C0 = CN()
	RLW.C0 = CN()
	LLW.C0 = CN()
end

function Normalize()
	RAW.C0 = CA(MR(0), MR(0), 0)
	LAW.C0 = CA(MR(0), MR(0), MR(0))
	HW.C0 = CA(0, 0, 0)
	neck.C0 = necko
end

SelectAnim = function()
	RAW.Part1 = Rarm
	HW.Part1 = nil
	TH.Part1 = Handle
	for i = 0.1, 1, 0.2 do
		RAW.C0 = CA(MR(10*i), 0, MR(-20*i)) * CN(0, -0.2*i, 0)
		wait()
	end
	HW.C0 = CN(0, 0, 0) * CA(MR(-90), 0, MR(-40))
	HW.Part1 = Handle
	TH.Part1 = nil
	LAW.Part1 = Larm
	for i = 0.1, 1, 0.12 do
		RAW.C0 = CA(MR(10+140*i), 0, MR(-40*i)) * CN(0, -0.2-0.6*i, 0)
		LAW.C0 = CA(MR(150*i), 0, MR(40*i)) * CN(0, -0.8*i, 0)
		wait()
	end
	wait(1)
	Normalize()
end

DeselectAnim = function()
	for i = 0.07, 1, 0.14 do
	end
	LAW.Part1 = nil
	HW.Part1 = nil
	TH.Part1 = Handle
	neck.C0 = necko
	Detach()
end

function KeyDown(key, mouse)
	key = key:lower()
	if key == "q" then
	end
end

Select = function(mouse)
	SelectAnim()
	Selected = true
	mouse.KeyDown:connect(function(key) KeyDown(key, mouse) end)
	mouse.Button1Down:connect(function() Clicked(mouse.Hit.p) end)
end

Deselect = function(mouse)
	Selected = false
	DeselectAnim()
end

Bin.Selected:connect(Select)
Bin.Deselected:connect(Deselect)
