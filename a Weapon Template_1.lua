Players = game:GetService("Players")
Me = Players.LocalPlayer
Char = Me.Character
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 

Selected = false
Attacking = false
Debounce = true
Hurt = false
ModelName = "Weapon"
ToolName = "Weapon"

ContentProvider = game:GetService("ContentProvider")

V3 = Vector3.new
C3 = Color3.new
BN = BrickColor.new
CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MRA = math.random
MP = math.pi
MH = math.huge
UD = UDim2.new

function RC(Pos, Dir, Max, Ignore)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end

function RayC(Start, En, MaxDist, Ignore)
	return RC(Start, (En - Start), MaxDist, Ignore)
end

function ComputePos(pos1, pos2)
	return CN(pos1, V3(pos2.x, pos1.y, pos2.z))
end

function DetectSurface(pos, part)
	local surface = nil
	local pospos = part.CFrame
	local pos2 = pospos:pointToObjectSpace(pos)
	local siz = part.Size
	local shaep = part.Shape
	if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
		surface = {"Anything", CN(pospos.p, pos)*CN(0, 0, -(pospos.p - pos).magnitude)*CA(MR(-90), 0, 0)}
	else
		if pos2.Y > ((siz.Y/2)-0.04) then
			surface = {"Top", CA(0, 0, 0)}
		elseif pos2.Y < -((siz.Y/2)-0.04) then
			surface = {"Bottom", CA(-MP, 0, 0)}
		elseif pos2.X > ((siz.X/2)-0.04) then
			surface = {"Right", CA(0, 0, MR(-90))}
		elseif pos2.X < -((siz.X/2)-0.04) then
			surface = {"Left", CA(0, 0, MR(90))}
		elseif pos2.Z > ((siz.Z/2)-0.04) then
			surface = {"Back", CA(MR(90), 0, 0)}
		elseif pos2.Z < -((siz.Z/2)-0.04) then
			surface = {"Front", CA(MR(-90), 0, 0)}
		end
	end
	return surface
end

function Compute(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CN(pos1, pos3)
end

function waitChild(n, p)
	local c = p:findFirstChild(n)
	if c then return c end
	while true do
		c = p.ChildAdded:wait()
		if c.Name == n then return c end
	end
end

function Notime(func)
	coroutine.resume(coroutine.create(function()
		func()
	end))
end

Torso = waitChild("Torso", Char)
Head = waitChild("Head", Char)
Rarm = waitChild("Right Arm", Char)
Larm = waitChild("Left Arm", Char)
Rleg = waitChild("Right Leg", Char)
Lleg = waitChild("Left Leg", Char)
Neck = waitChild("Neck", Torso)
Hum = waitChild("Humanoid", Char)

RSH = waitChild("Right Shoulder", Torso)
LSH = waitChild("Left Shoulder", Torso)
RH = waitChild("Right Hip", Torso)
LH = waitChild("Left Hip", Torso)

RSH.Part0 = Torso
LSH.Part0 = Torso
RH.Part0 = Torso
LH.Part0 = Torso

Add = {
	Mesh = function(P, ID, Scale, Tex)
		local m = Instance.new("SpecialMesh")
		m.MeshType = "FileMesh"
		m.MeshId = ID or ""
		m.Scale = Scale or V3(1, 1, 1)
		m.TextureId = Tex or ""
		m.Parent = P
		return m
	end,
	Sphere = function(P, Scale)
		local m = Instance.new("SpecialMesh")
		m.MeshType = "Sphere"
		m.Scale = Scale or V3(1, 1, 1)
		m.Parent = P
		return m
	end
}

Sounds = {
	Shoot = {Id = "http://www.roblox.com/asset/?id=2697431", Pitch = 0.3, Volume = 0.5},
	Boom = {Id = "http://www.roblox.com/asset/?id=2692806", Pitch = 0.55, Volume = 0.4},
	Slash = {Id = "rbxasset://sounds//swordslash.wav", Pitch = 0.5, Volume = 0.5},
	Hit = {Id = "http://www.roblox.com/asset/?id=2801263", Pitch = 0.85, Volume = 0.35},
	Reload = {Id = "rbxasset://sounds\\metal.ogg", Pitch = 1, Volume = 0.45},
}

for _,v in pairs(Sounds) do
	ContentProvider:Preload(v.Id)
end

function PlaySound(Sound, bool)
	local s = Instance.new("Sound")
	s.Looped = false
	s.Volume = Sound.Volume
	s.SoundId = Sound.Id
	if bool then
		s.Pitch = MRA((Sound.Pitch*0.75)*1000, (Sound.Pitch*1.15)*1000)/1000
	else
		s.Pitch = Sound.Pitch
	end
	s.PlayOnRemove = true
	s.Parent = Torso
	Notime(function()
		wait()
		s.Parent = nil
	end)
end

function GetParts(pos, dist)
	local parts = {}
	local function o(p)
		for _,v in pairs(p:children()) do
			if v:IsA("BasePart") then
				if (pos - v.Position).magnitude <= dist then
					table.insert(parts, {v, (pos - v.Position).magnitude, v.Anchored})
				end
			end
			o(v)
		end
	end
	o(workspace)
	return parts
end

function GetHum(P)
	for _,v in pairs(P:children()) do
		if v:IsA("Humanoid") then
			if v.Health > 0 then
				return v
			end
		end
	end
end

function GetGroup(Pos, Distance, Hit)
	local tab = {}
	for _,v in pairs(workspace:children()) do
		local h = GetHum(v)
		local t = v:findFirstChild("Torso")
		if h and t and v ~= Hit.Parent then
			if (t.Position - Pos).magnitude <= Distance then
				table.insert(tab, {h, v, (t.Position - Pos).magnitude})
			end
		end
	end
	if Hit then
		local h = GetHum(Hit.Parent)
		if h then
			table.insert(tab, {h, Hit.Parent, 0})
		end
	end
	return tab
end

function Part(Par, Anc, Colli, Tran, Ref, Col, Siz)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.Anchored = Anc
	p.CanCollide = Colli
	p.BrickColor = Col
	p.Size = Siz
	p.Locked = true
	p.Parent = Par
	p:BreakJoints()
	return p
end

function Weld(P0, P1, C0, C1)
	local w = Instance.new("Weld")
	w.Part0 = P0
	w.Part1 = P1
	if C0 then
		w.C0 = C0
	end
	if C1 then
		w.C1 = C1
	end
	w.Parent = P0
	return w
end

for _,v in pairs(Char:children()) do
	if v.Name == ModelName then
		v:remove()
	end
end

Model = Instance.new("Model")
Model.Name = ModelName

FTorso = Part(Model, false, false, 1, 0, Torso.BrickColor, V3(2, 2, 1))
FW = Weld(Torso, FTorso)

--

TW = Weld(Torso, nil, CN(0.7, 0.8, 1.2), CA(0, MR(180), MR(55)))

Weapon = Instance.new("Model")
Weapon.Name = "Weapon"

HB = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBW = Weld(Rarm, HB, CN(0, -0.7, 0), CA(0, MR(90), MR(90)))
HW = Weld(HB, nil)

function Show_Damage(P, D)
	local mo = Instance.new("Model")
	mo.Name = D
	local p = Part(mo, false, false, 0, 0, BN("Bright red"), V3(0.2, 0.2, 0.2))
	p.Name = "Head"
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(4.5, 2.3, 4.5)
	m.Parent = p
	local bp = Instance.new("BodyPosition", p)
	bp.maxForce = V3(MH, MH, MH)
	bp.P = 9001
	bp.position = CN(P) * CN(0, 1.5, 0).p
	local h = Instance.new("Humanoid")
	h.Health = 0
	h.MaxHealth = 0
	h.Name = "asd"
	h.Parent = mo
	local nah = true
	mo.Parent = workspace
	p.CFrame = CN(P) 
	Notime(function()
		wait(1.5)
		for i = 0, 1, 0.05 do
			p.Transparency = i
			if nah then mo.Name = "" nah = false else mo.Name = "- "..D nah = true end
			wait()
		end
		mo:remove()
	end)
end

Weapon.Parent = Model
Model.Parent = Char

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin", Me.Backpack)
	h.Name = ToolName
	script.Parent = h
end

bin = script.Parent

function Attach(t)
	RSH.Part0 = t
	LSH.Part0 = t
	RH.Part0 = t
	LH.Part0 = t
	RABW.Part0 = t
	LABW.Part0 = t
	LLBW.Part0 = t
	RLBW.Part0 = t
	if t == Torso then
		FTorso.Transparency = 1
	else
		Torso.Transparency = 1
	end
	t.Transparency = 0
end

function SelectAnim()
end

function DeselAnim()
end

function onSelected(mouse)
	SelectAnim()
	Selected = true
	mouse.Button1Down:connect(function()
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
	end)
end

function onDeselected(mouse)
	Selected = false
	DeselAnim()
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDeselected)
