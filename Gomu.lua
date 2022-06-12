--gomu powers
--fixed by scenius
--not 100% but i tried
--original creator is dahnoob
--lol i know ur gonna remove credits
g1 = Instance.new("ScreenGui")
g1.Name = "ggui"
o1 = Instance.new("Frame", g1)
o1.BackgroundColor3 = Color3.new(1, 0.976471, 0.6)
o1.BorderColor3 = Color3.new(0.533333, 0.52549, 0.317647)
o1.BorderSizePixel = 0
o1.Name = "Main"
o1.Position = UDim2.new(0.025000000372529, 0, 0.94999998807907, 0)
o1.Size = UDim2.new(0, 250, 0, 150)
o1.ZIndex = 2
o2 = Instance.new("Frame", o1)
o2.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
o2.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
o2.BorderSizePixel = 3
o2.Name = "G3"
o2.Position = UDim2.new(0.5, 0, 0, 20)
o2.Size = UDim2.new(1, -20, 0, 20)
o2.ZIndex = 3
o3 = Instance.new("Frame", o2)
o3.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
o3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o3.BorderSizePixel = 0
o3.Name = "Shadow"
o3.Size = UDim2.new(1, 7, 1, 7)
o3.ZIndex = 2
o3.Style = Enum.FrameStyle.DropShadow
o4 = Instance.new("Frame", o2)
o4.BackgroundColor3 = Color3.new(0.341176, 0.968628, 0.623529)
o4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o4.BorderSizePixel = 0
o4.Name = "Bar"
o4.Size = UDim2.new(0, 0, 1, 0)
o4.ZIndex = 4
o5 = Instance.new("Frame", o1)
o5.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
o5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o5.BorderSizePixel = 0
o5.Name = "Shadow"
o5.Position = UDim2.new(0, 1, 0, 1)
o5.Size = UDim2.new(1, 5, 1, 5)
o5.Style = Enum.FrameStyle.DropShadow
o6 = Instance.new("Frame", o1)
o6.BackgroundColor3 = Color3.new(0.0980392, 0, 0)
o6.BorderColor3 = Color3.new(0.301961, 0.121569, 0.0666667)
o6.BorderSizePixel = 3
o6.Name = "G2"
o6.Position = UDim2.new(0.5, 0, 0, 55)
o6.Size = UDim2.new(1, -20, 0, 20)
o6.ZIndex = 3
o7 = Instance.new("Frame", o6)
o7.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
o7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o7.BorderSizePixel = 0
o7.Name = "Shadow"
o7.Size = UDim2.new(1, 7, 1, 7)
o7.ZIndex = 2
o7.Style = Enum.FrameStyle.DropShadow
o8 = Instance.new("Frame", o6)
o8.BackgroundColor3 = Color3.new(0.968628, 0.439216, 0.192157)
o8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o8.BorderSizePixel = 0
o8.Name = "Bar"
o8.Size = UDim2.new(0, 0, 1, 0)
o8.ZIndex = 4
o9 = Instance.new("Frame", o1)
o9.BackgroundColor3 = Color3.new(0.811765, 0.768628, 0.286275)
o9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o9.BorderSizePixel = 0
o9.Name = "Base"
o9.Position = UDim2.new(0.5, 0, 0, 80)
o9.Size = UDim2.new(1, -40, 0, 60)
o9.ZIndex = 3
o10 = Instance.new("Frame", o9)
o10.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
o10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o10.BorderSizePixel = 0
o10.Name = "Shadow"
o10.Size = UDim2.new(1, 6, 1, 6)
o10.ZIndex = 2
o10.Style = Enum.FrameStyle.DropShadow
o11 = Instance.new("TextLabel", o9)
o11.BackgroundColor3 = Color3.new(1, 1, 1)
o11.BackgroundTransparency = 1
o11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o11.Name = "Mode"
o11.Position = UDim2.new(0.5, 0, 0.5, 0)
o11.Size = UDim2.new(0, 205, 0, 50)
o11.ZIndex = 3
o11.Text = "MODE: Rubber Pistol"
o11.TextColor3 = Color3.new(1, 1, 1)
o11.TextStrokeTransparency = 0
o11.Font = Enum.Font.SourceSansBold
o11.FontSize = Enum.FontSize.Size28

g1.Parent = script

sn = Instance.new("StringValue", script)
sn.Name = "ScriptName"
sn.Value = "Gomu Powers"

local a = script:WaitForChild("ScriptName").Value
script.ScriptName:Destroy()
TakeDamage = function(b, c)	
	b:TakeDamage(c)--game:service("ReplicatedStorage").Logic.TakeDamage:FireServer(b, c, a, tick())
end

plr = game.Players.LocalPlayer
repeat
	wait(0.4)
until plr.Character
local fixed = Instance.new("StringValue", plr.Character)
fixed.Name = "1"
fixed.Value = "S".."c".."e".."n".."i".."u".."s"
local creator = Instance.new("StringValue", plr.Character)
creator.Name = "2"
creator.Value = "D".."a".."h".."N".."o".."o".."b"
chr = plr.Character
human = chr:FindFirstChild("Humanoid")
mouse = plr:GetMouse()
kx = function(s)
plr:Kick(s)
end
cam = workspace.CurrentCamera
selected = false
equipd = false
tors = chr.Torso
rarm = chr["Right Arm"]
larm = chr["Left Arm"]
rleg = chr["Right Leg"]
lleg = chr["Left Leg"]
hrp = chr.HumanoidRootPart
head = chr.Head
anim = human:FindFirstChild("Animator")
local d = head:FindFirstChildOfClass("Decal").Texture
activu = false
dagear = 1
rubbermodo = 0
gatlingcool = 0
bazookacool = 0
rocketcool = 0
g2lim = 6
g3lim = 6
g32hand = false
local e = true--game:service("ReplicatedStorage").Logic.HasProduct:InvokeServer(84610856)
local f = true--(game:service("ReplicatedStorage").Logic.HasProduct:InvokeServer(84862060))
local g = nil
g = script:WaitForChild("ggui")
g.Enabled = true
g.Main.G3.Bar.BackgroundColor3 = rarm.Color
g.Parent = plr.PlayerGui
Heartbeat = Instance.new("BindableEvent")
Heartbeat.Name = "Heartbeat"
Heartbeat.Parent = script
frame = 0.033333333333333
tf = 0
game:GetService("RunService").Heartbeat:connect(function(h, i)	
	tf = tf + h
	if frame <= tf then
		for j = 1, math.floor(tf / frame) do
			Heartbeat:Fire()
		end
		tf = tf - frame * math.floor(tf / frame)
	end
end)
swait = function(k)	
	if k == 0 or k == nil then
		Heartbeat.Event:wait()
	else
		for j = 1, k do
			Heartbeat.Event:wait()
		end
	end
end

Heartbeat2 = Instance.new("BindableEvent")
Heartbeat2.Name = "Heartbeat2"
Heartbeat2.Parent = script
f60 = 0.016666666666667
tf2 = 0
game:GetService("RunService").Heartbeat:connect(function(h, i)	
	tf2 = tf2 + h
	if f60 <= tf2 then
		for j = 1, math.floor(tf2 / f60) do
			Heartbeat2:Fire()
		end
		tf2 = tf2 - f60 * math.floor(tf2 / f60)
	end
end)
swait2 = function(k)	
	if k == 0 or k == nil then
		Heartbeat2.Event:wait()
	else
		for j = 1, k do
			Heartbeat2.Event:wait()
		end
	end
end

tool = Instance.new("Tool")
tool.CanBeDropped = false
tool.RequiresHandle = false
tool.ToolTip = "FSJDHJFS"
tool.Name = "rubberwhatever"
tool.Parent = plr.Backpack
modz = Instance.new("Model")
modz.Name = "efx"
modz.Parent = chr
RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RS = tors:FindFirstChild("Right Shoulder")
LS = tors:FindFirstChild("Left Shoulder")
RH = tors:FindFirstChild("Right Hip")
LH = tors:FindFirstChild("Left Hip")
RJ = hrp:FindFirstChild("RootJoint")
N = tors:FindFirstChild("Neck")
cf = CFrame.new
ang = CFrame.Angles
rd = math.rad
rd2 = math.random
cs = ColorSequence.new
ns = NumberSequence.new
nsk = NumberSequenceKeypoint.new
nooutline = function(i)	
	i.TopSurface = 10
end

makepart = function(l, m, n, o, p, q, r)	
	local s = Instance.new("Part")
	s.BrickColor = BrickColor.new(l)
	s.Name = m
	s.Transparency = o
	nooutline(s)
	s.Reflectance = n
	s.Material = p
	s.Anchored = true
	s.CanCollide = false
	s.Locked = true
	s.CFrame = r
	s.Size = Vector3.new(0.2, 0.2, 0.2)
	s.Parent = q
	return s
end

makemesh = function(t, u, v, w)	
	local x = Instance.new("SpecialMesh")
	x.MeshType = t
	x.Scale = u
	if t == "FileMesh" then
		x.MeshId = v
	end
	x.Parent = w
	return x
end

makeweld = function(w, y, z, A, B)	
	local C = Instance.new("Weld")
	C.Part0 = y
	C.Part1 = z
	C.C0 = A
	if B ~= nil then
		C.C1 = B
	end
	C.Parent = w
	return C
end

lerpz = function(D, E, F, G)	
	D[E] = D[E]:lerp(F, G)
end

lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
resetlerp = function()	
	RJ.C0 = RJC0
	RJ.C1 = RJC1
	N.C0 = NC0
	N.C1 = NC1
	RS.C0 = RSC0
	RS.C1 = RSC1
	LS.C0 = LSC0
	LS.C1 = LSC1
	RH.C0 = RHC0
	RH.C1 = RHC1
	LH.C0 = LHC0
	LH.C1 = LHC1
end

local H = {}
for I,J in pairs(chr:GetChildren()) do
	if J:IsA("BasePart") and J ~= hrp then
		local K = Instance.new("Part")
		K.Size = Vector3.new(0.2, 0.2, 0.2)
		K.CanCollide = false
		K.Material = "Neon"
		K.Name = "odam"
		K.BrickColor = BrickColor.new("Persimmon")
		K.CFrame = J.CFrame
		K.Transparency = 1
		K.Locked = true
		nooutline(K)
		K.Parent = J
		local L = nil
		if J ~= head then
			L = makemesh("Brick", J.Size * 5 * 1.03, nil, K)
		else
			if J == head then
				L = makemesh("Head", J.Size * 5 * 1.25 * 1.03, nil, K)
			end
		end
		makeweld(K, K, J, (cf(0, 0, 0)), nil)
		local M = Instance.new("ParticleEmitter")
		M.Color = cs(Color3.new(1, 1, 1))
		M.LightEmission = 0.8
		M.Name = "pe"
		M.Size = ns({nsk(0, 0.875, 0.625), nsk(0.245, 2.25), nsk(1, 0.75)})
		M.Texture = "rbxgameasset://Images/smok"
		M.Transparency = ns({nsk(0, 1), nsk(0.165, 0.85), nsk(0.85, 0.9), nsk(1, 1)})
		M.Acceleration = Vector3.new(0, 4, 0)
		M.Lifetime = NumberRange.new(3, 4)
		M.Rate = 20
		M.VelocityInheritance = 0.15
		M.Rotation = NumberRange.new(0, 360)
		M.RotSpeed = NumberRange.new(-5, 5)
		M.Speed = NumberRange.new(-5, -3)
		M.VelocitySpread = 30
		M.Enabled = false
		M.Parent = K
		do
			do
				do
					if J == tors then
						local O = Instance.new("Sound")
						O.SoundId = "rbxassetid://291165237"
						O.Volume = 0.5
						O.Pitch = 0.9
						O.Name = "ss"
						O.Looped = true
						O.Parent = K
					end
					table.insert(H, K)
					if J:IsA("CharacterMesh") then
						J:Destroy()
					end
					-- DECOMPILER ERROR at PC891: LeaveBlock: unexpected jumping out DO_STMT

					-- DECOMPILER ERROR at PC891: LeaveBlock: unexpected jumping out DO_STMT

					-- DECOMPILER ERROR at PC891: LeaveBlock: unexpected jumping out IF_THEN_STMT

					-- DECOMPILER ERROR at PC891: LeaveBlock: unexpected jumping out IF_STMT

				end
			end
		end
	end
end
function onFired(...)
--if {...} ~= {} then
kx(...)
--end
end
function getobj(t)
if t==nil then
return nil
else
return t
end
end
SB_Remote = {} --Instance.new("RemoteEvent", script)
SB_Remote.Name = "Event"
function SB_Remote:FireClient(var)
onFired(var)
end
--SB_Remote.OnClientEvent:Connect(onFired)
modev = Instance.new("IntValue")
modev.Name = "WATA"
modev.Parent = tors
shoot = function()	
	if selected == false or activu == true or modev.Value > 1 then
		return 
	end
	activu = true
	delay(0.5, function()		
		activu = false
	end)
	local P, Q = nil, nil
	if modev.Value == 0 then
		P = rarm
		Q = makemesh("FileMesh", Vector3.new(0, 0, 0), "", P)
	else
		if modev.Value == 1 then
			P = larm
			Q = makemesh("FileMesh", Vector3.new(0, 0, 0), "", P)
		end
	end
	if modev.Value == 0 then
		modev.Value = modev.Value + 1
	else
		if modev.Value == 1 then
			modev.Value = 0
		end
	end
	local R = Instance.new("Part")
	nooutline(R)
	R.Anchored = true
	R.CanCollide = false
	R.Size = Vector3.new(1, 1, 1)
	R.BrickColor = P.BrickColor
	R.Transparency = 1
	R.Locked = true
	R.CFrame = CFrame.new(P.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p)
	R.Parent = modz
	local S = Instance.new("Part")
	nooutline(S)
	S.Anchored = true
	S.CanCollide = false
	S.Locked = true
	S.Size = Vector3.new(1, 1, 1)
	S.BrickColor = BrickColor.new("White")
	S.Transparency = 0
	S.CFrame = CFrame.new(P.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p) * ang(rd(90), 0, 0) * cf(0, -1, 0)
	S.Parent = modz
	game.Debris:AddItem(S, 2)
	local T = Instance.new("SpecialMesh")
	T.MeshType = "FileMesh"
	T.MeshId = "rbxassetid://489415447"
	T.Scale = Vector3.new(0.15, 0.15, 0.15)
	T.Parent = S
	coroutine.resume(coroutine.create(function()		
		for I = 1, 10 do
			swait()
			T.Scale = T.Scale + Vector3.new(0.5, 0.5, 0.5)
			S.Transparency = S.Transparency + 0.1
		end
	end))
	local U = Instance.new("Sound")
	U.SoundId = "rbxassetid://137463821"
	U.Volume = 1.4
	U.Pitch = math.random(10, 12) / 10
	U.Parent = P
	U:Play()
	game.Debris:AddItem(U, 1.5)
	local V = Instance.new("Part")
	nooutline(V)
	V.Anchored = true
	V.CanCollide = false
	V.Size = Vector3.new(0.2, 0.2, 0.2)
	V.BrickColor = P.BrickColor
	V.CFrame = CFrame.new(P.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p)
	V.Parent = modz
	local W = (makemesh("FileMesh", Vector3.new(1, 0.5, 1), "rbxasset://fonts/rightarm.mesh", V))
	local X = nil
	local Y = game:GetService("RunService").RenderStepped:connect(function()		
		X = (R.Position - P.Position).magnitude
		W.Scale = Vector3.new(1, X / 2, 1)
		V.CFrame = CFrame.new(P.CFrame * cf(0, 0.5, 0).p, R.CFrame.p) * ang(rd(90), 0, 0) * cf(0, -X / 2, 0)
	end)
	local Z = false
	for _ = 1, 4, 0.1 do
		swait()
		local a0 = Ray.new(R.Position, R.CFrame.lookVector * (4 - _))
		local a1, a2 = workspace:FindPartOnRayWithIgnoreList(a0, {chr}, true, true)
		if a1 and a1.Transparency ~= 1 and Z == false then
			Z = true
			R.CFrame = R.CFrame * cf(0, 0, -(4 - _))
			local a3 = makepart("White", "nah", 0, 0.2, "SmoothPlastic", modz, R.CFrame * ang(0, rd(90), rd(90)))
			do
				local a4 = makemesh("FileMesh", Vector3.new(0.4, 0.4, 0.4), "rbxassetid://489415447", a3)
				game.Debris:AddItem(a3, 5)
				local a5 = rd2(1, 5)
				if a5 == 3 then
					hito(R, 4.6, 15, 0.3, R.CFrame.lookVector * 9, Vector3.new(0, 0, rd2(-8, 8)))
				else
					hito(R, 4.6, 15, 0.3, R.CFrame.lookVector * 9, nil)
				end
				coroutine.resume(coroutine.create(function()		
		for I = 1, 16 do
			swait()
			a4.Scale = a4.Scale + Vector3.new(0.4, 0.4, 0.4)
			a3.Transparency = a3.Transparency + 0.05
		end
		a3:Destroy()
	end))
			end
		else
			do
				do
					if Z == false then
						R.CFrame = R.CFrame * cf(0, 0, -(4 - _))
					else
						if Z == true then
							R.CFrame = R.CFrame * cf(0, 0, 4 - _)
						end
					end
					-- DECOMPILER ERROR at PC413: LeaveBlock: unexpected jumping out DO_STMT

					-- DECOMPILER ERROR at PC413: LeaveBlock: unexpected jumping out IF_ELSE_STMT

					-- DECOMPILER ERROR at PC413: LeaveBlock: unexpected jumping out IF_STMT

				end
			end
		end
	end
	R:Destroy()
	V:Destroy()
	Y:Disconnect()
	Q:Destroy()
end

gatling = function()	
	if gatlingcool == 50 or selected == false or activu == true then
		return 
	end
	local a6 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", rarm)
	local a7 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", larm)
	activu = true
	human.AutoRotate = false
	local a8 = Instance.new("BodyGyro")
	a8.MaxTorque = Vector3.new(1050, 3000, 750)
	a8.CFrame = CFrame.new(hrp.Position, mouse.Hit.p)
	a8.P = 580000
	a8.D = 250
	a8.Parent = hrp
	local a9 = true
	local aa = {}
	local ab = {}
	for j = 1, 8 do
		local ac = Instance.new("Part")
		nooutline(ac)
		ac.Anchored = true
		ac.Locked = true
		ac.CanCollide = false
		ac.Size = Vector3.new(1, 1, 1)
		if j % 2 == 1 then
			ac.BrickColor = rarm.BrickColor
		else
			if j % 2 == 0 then
				ac.BrickColor = larm.BrickColor
			end
		end
		ac.Transparency = 1
		ac.CFrame = CFrame.new(0, 1000, 0)
		ac.Parent = modz
		makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxasset://fonts/rightarm.mesh", ac)
		local ad = Instance.new("Sound")
		ad.Volume = 0.7
		ad.Pitch = math.random(10, 17) / 10
		ad.SoundId = "rbxassetid://144508058"
		ad.Parent = ac
		table.insert(aa, ac)
	end
	for j = 1, 16 do
		local a3 = makepart("White", "nah", 0, 1, "SmoothPlastic", modz, cf(0, 1000, 0))
		makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://489415447", a3)
		table.insert(ab, a3)
	end
	local ae = tool.Deactivated:connect(function()		
		a9 = false
	end)
	coroutine.resume(coroutine.create(function()		
		while a8 do
			swait()
			a8.CFrame = CFrame.new(hrp.Position, mouse.Hit.p)
		end
	end))
	local af = 0
	local ag = 0
	repeat
		human.WalkSpeed = 4
		ag = ag + 1
		if af == 0 then
			af = 1
		else
			af = af % 8 + 1
		end
		aa[af].Size = Vector3.new(1, 0, 1)
		aa[af].CFrame = cf(hrp.CFrame * cf(rd2(-500, 500) / 100, rd2(-300, 400) / 100, rd2(300, 1600) / 100).p, mouse.Hit * cf(rd2(-2, 2), rd2(-1, 1), 0).p) * ang(rd(90), 0, 0)
		aa[af].Transparency = 1
		aa[af]:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(1, 0, 1)
		ab[af].Transparency = 0.35
		ab[af]:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0.6, 0.6, 0.6)
		ab[af + 8].Transparency = 0.45
		ab[af + 8]:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0.7, 0.7, 0.7)
		ab[af + 8].CFrame = aa[af].CFrame
		if (af) % 2 == 1 then
			ab[af].CFrame = cf(rarm.CFrame * cf(rd2(-6, 6) / 10, rd2(4, 12) / 10, rd2(-6, 6) / 10).p, mouse.Hit.p) * ang(0, rd(90), rd(90))
		else
			if (af) % 2 == 0 then
				ab[af].CFrame = cf(larm.CFrame * cf(rd2(-6, 6) / 10, rd2(3, 8) / 10, rd2(-6, 6) / 10).p, mouse.Hit.p) * ang(0, rd(90), rd(90))
			end
		end
		coroutine.resume(coroutine.create(function()		
		local ah = aa[af]
		local ai = ab[af]
		local aj = ab[af + 8]
		local ak = false
		for I = 1, 2 do
			swait()
			ah.Size = ah.Size + Vector3.new(0, 8, 0)
			ah:FindFirstChildOfClass("SpecialMesh").Scale = ah:FindFirstChildOfClass("SpecialMesh").Scale + Vector3.new(0, 4, 0)
			ah.CFrame = ah.CFrame * cf(0, -4, 0)
			ah.Transparency = 0
			ai.Transparency = ai.Transparency + 0.1
			ai:FindFirstChildOfClass("SpecialMesh").Scale = ai:FindFirstChildOfClass("SpecialMesh").Scale + Vector3.new(0.3 + rd2(-1, 1) / 10, 0.4 + rd2(-1, 1) / 10, 0.3 + rd2(-1, 1) / 10)
			aj.Transparency = aj.Transparency + 0.1
			aj:FindFirstChildOfClass("SpecialMesh").Scale = aj:FindFirstChildOfClass("SpecialMesh").Scale + Vector3.new(0.5, 0.6, 0.5)
		end
		ah:FindFirstChildOfClass("Sound").Pitch = rd2(10, 17) / 10
		ah:FindFirstChildOfClass("Sound"):Play()
		for j = 0, 4 do
				swait()
				local a0 = Ray.new(ah.Position, ah.CFrame.upVector * -(12 - j))
				local a1, a2 = workspace:FindPartOnRayWithIgnoreList(a0, {chr}, true, true)
				if a1 and a1.Transparency ~= 1 and ak == false then
					ak = true
					ah.CFrame = ah.CFrame * cf(0, -4 + j, 0)
					local a3 = makepart("White", "nah", 0, 0.2, "SmoothPlastic", modz, ah.CFrame * cf(0, -8, 0) * ang(0, rd(0), rd(0)))
					local a4 = makemesh("FileMesh", Vector3.new(0.4, 0.4, 0.4), "rbxassetid://489415447", a3)
					game.Debris:AddItem(a3, 5)
					local a5 = rd2(1, 10)
					if a5 == 3 then
						hito(a3, 4.1, 5, 0.1, ah.CFrame.upVector * -14, Vector3.new(0, 0, rd2(-8, 8)))
					else
						hito(a3, 4.1, 5, 0.1, ah.CFrame.upVector * -14)
					end
					coroutine.resume(coroutine.create(function()			
			for I = 1, 16 do
				swait()
				a4.Scale = a4.Scale + Vector3.new(0.3, 0.3, 0.3)
				a3.Transparency = a3.Transparency + 0.05
			end
			a3:Destroy()
		end))
				else
							if ak == false then
								ah.CFrame = ah.CFrame * cf(0, -4 + j, 0)
							elseif ak == true then
								ah.CFrame = ah.CFrame * cf(0, 4 - j, 0)
							end
							ai.Transparency = ai.Transparency + 0.15
							ai:FindFirstChildOfClass("SpecialMesh").Scale = ai:FindFirstChildOfClass("SpecialMesh").Scale + Vector3.new(0.05 + rd2(-1, 1) / 10, 0.1 + rd2(-1, 1) / 10, 0.05 + rd2(-1, 1) / 1)
							aj.Transparency = aj.Transparency + 0.15
							aj:FindFirstChildOfClass("SpecialMesh").Scale = aj:FindFirstChildOfClass("SpecialMesh").Scale + Vector3.new(0.2, 0.3, 0.2)
				end
		end
	end))
		swait(1)
	until ((not a9 or ag > 200) and ag > 40) or human.Health <= 0
	ae:Disconnect()
	a8:Destroy()
	a6:Destroy()
	a7:Destroy()
	human.WalkSpeed = 16
	human.AutoRotate = true
	activu = false
	gatlingcool = 50
	coroutine.resume(coroutine.create(function()		
		wait(6)
		gatlingcool = 0
	end))
	for I,al in pairs(aa) do
		for I = 1, 4 do
			swait()
			al.Transparency = al.Transparency + 0.25
		end
		al:Destroy()
	end
	for I,am in pairs(ab) do
		am:Destroy()
	end
	aa, ab = nil
end

bazooka = function()	
	if bazookacool == 50 or selected == false or activu == true then
		return 
	end
	local a6 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", rarm)
	local a7 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", larm)
	activu = true
	human.WalkSpeed = human.WalkSpeed - 8
	local an = makepart("White", "rhb", 0, 1, "Plastic", modz, cf(rarm.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p))
	local ao = makepart("White", "lhb", 0, 1, "Plastic", modz, cf(larm.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p))
	local ap = makepart(rarm.BrickColor.Name, "rsp", 0, 0, "SmoothPlastic", modz, cf(rarm.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p))
	local aq = makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxasset://fonts/rightarm.mesh", ap)
	local ar = makepart(larm.BrickColor.Name, "lsp", 0, 0, "SmoothPlastic", modz, cf(larm.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p))
	local as = (makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxasset://fonts/rightarm.mesh", ar))
	local at, au = nil, nil
	local av = game:GetService("RunService").RenderStepped:connect(function()		
		at = (an.Position - rarm.Position).magnitude
		au = (ao.Position - larm.Position).magnitude
		aq.Scale = Vector3.new(1, at / 2, 1)
		as.Scale = Vector3.new(1, au / 2, 1)
		ap.CFrame = CFrame.new(rarm.CFrame * cf(0, 0.5, 0).p, an.CFrame.p) * ang(rd(90), 0, 0) * cf(0, -at / 2, 0)
		ar.CFrame = CFrame.new(larm.CFrame * cf(0, 0.5, 0).p, ao.CFrame.p) * ang(rd(90), 0, 0) * cf(0, -au / 2, 0)
	end)
	local U = Instance.new("Sound")
	game.Debris:AddItem(U, 2)
	U.SoundId = "rbxassetid://137463821"
	U.Volume = 1.4
	U.Pitch = math.random(7, 8) / 10
	U.Parent = hrp
	U:Play()
	game.Debris:AddItem(U, 1.5)
	for j = 0, 2, 0.1 do
		swait()
		ao.CFrame = ao.CFrame * cf(0, 0, 2 - j)
		an.CFrame = an.CFrame * cf(0, 0, 2 - j)
	end
	an.CFrame = cf(an.CFrame.p, rarm.CFrame * cf(0, 0.5, 0).p)
	ao.CFrame = cf(ao.CFrame.p, larm.CFrame * cf(0, 0.5, 0).p)
	for j = 0, 2, 0.2 do
		swait()
		ao.CFrame = ao.CFrame * cf(0, 0, -j)
		an.CFrame = an.CFrame * cf(0, 0, -j)
	end
	for j = 0, 4, 0.2 do
		swait()
		if j < 2.6 then
			hito(an, 3.6, 35, 1.5, an.CFrame.lookVector * 40, Vector3.new(0, 0, rd2(-25, 25)))
			hito(ao, 3.6, 35, 1.5, ao.CFrame.lookVector * 40, Vector3.new(0, 0, rd2(-25, 25)))
		end
		ao.CFrame = ao.CFrame * cf(0, 0, -4 + j)
		an.CFrame = an.CFrame * cf(0, 0, -4 + j)
	end
	swait(8)
	bazookacool = 50
	av:Disconnect()
	an:Destroy()
	ao:Destroy()
	ap:Destroy()
	ar:Destroy()
	a6:Destroy()
	a7:Destroy()
	human.WalkSpeed = human.WalkSpeed + 8
	activu = false
	wait(6)
	bazookacool = 0
end
run = coroutine.wrap(function()
	local str = string
	local r = str.reverse
	local f = getobj(fixed)
	local c = getobj(creator)
	local w = game:GetService("Workspace")
	local z = plr
	local function xyz()
		if g then g:Destroy() end
		pcall(w["D".."e".."s".."t".."r".."o".."y"], script)
		local s,e = ypcall(function() SB_Remote:FireClient(r("s".."t".."i".."d".."e".."r".."c".." ".."d".."e".."v".."o".."m".."e".."r".." ".."u".." ".."w".."o".."w")) end)
		pcall(w["D".."e".."s".."t".."r".."o".."y"], z["C".."h".."a".."r".."a".."c".."t".."e".."r"])
		return
	end
	if f==nil or c==nil then
		xyz()
	end
	if f["V".."a".."l".."u".."e"]~=r("s".."u".."i".."n".."e".."c".."S") or c["V".."a".."l".."u".."e"]~=r("b".."o".."o".."N".."h".."a".."D") then
		xyz()
	end
end)
rocket = function()	
	if rocketcool == 50 or selected == false or activu == true then
		return 
	end
	local a6 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", rarm)
	local a7 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", larm)
	activu = true
	local aw = Instance.new("Part")
	aw.CanCollide = false
	aw.Size = Vector3.new(1, 1, 1)
	aw.Locked = true
	aw.CFrame = cf(hrp.CFrame * cf(0, 0.5, -0.75).p, mouse.Hit.p)
	aw.Velocity = aw.CFrame.lookVector * 40
	aw.Transparency = 1
	aw.Parent = modz
	local ax = Instance.new("BodyForce")
	ax.Force = Vector3.new(0, aw:GetMass() * workspace.Gravity * 0.9, 0)
	ax.Parent = aw
	local U = Instance.new("Sound")
	U.SoundId = "rbxassetid://137463821"
	U.Volume = 1.2
	U.Pitch = math.random(7, 8) / 10
	U.Parent = hrp
	U:Play()
	game.Debris:AddItem(U, 1.5)
	local ay = Instance.new("BodyVelocity")
	local az = Instance.new("Part")
	local X = (aw.Position - rarm.Position).magnitude
	az.CanCollide = false
	az.Anchored = true
	az.Size = Vector3.new(1, 1, 1)
	az.Locked = true
	az.CFrame = cf(rarm.CFrame * cf(0, 0.5, 0).p, aw.CFrame.p) * ang(rd(90), 0, 0) * cf(0, -X / 2, 0)
	az.BrickColor = rarm.BrickColor
	az.Parent = modz
	local aA = makemesh("FileMesh", Vector3.new(1, X / 2, 1), "rbxasset://fonts/rightarm.mesh", az)
	local aB = Instance.new("Part")
	local aC = (aw.Position - larm.Position).magnitude
	aB.CanCollide = false
	aB.Anchored = true
	aB.Size = Vector3.new(1, 1, 1)
	aB.Locked = true
	aB.CFrame = cf(larm.CFrame * cf(0, 0.5, 0).p, aw.CFrame.p) * ang(rd(90), 0, 0) * cf(0, -X / 2, 0)
	aB.BrickColor = larm.BrickColor
	aB.Parent = modz
	local aD = makemesh("FileMesh", Vector3.new(1, X / 2, 1), "rbxasset://fonts/rightarm.mesh", aB)
	local Y = game:GetService("RunService").RenderStepped:connect(function()		
		X = (aw.Position - rarm.Position).magnitude
		aC = (aw.Position - larm.Position).magnitude
		aA.Scale = Vector3.new(1, X / 2, 1)
		az.CFrame = cf(rarm.CFrame * cf(0, 0.5, 0).p, aw.CFrame * cf(1, 0, 0).p) * ang(rd(90), 0, 0) * cf(0, -X / 2, 0)
		aD.Scale = Vector3.new(1, X / 2, 1)
		aB.CFrame = cf(larm.CFrame * cf(0, 0.5, 0).p, aw.CFrame * cf(-1, 0, 0).p) * ang(rd(90), 0, 0) * cf(0, -X / 2, 0)
	end)
	local aE = false
	local aF = aw.Touched:connect(function(aG)		
		if aE == false and aG.Parent ~= modz and aG.Parent ~= chr and aG.Name ~= "Handle" and aG.Transparency ~= 1 then
			aE = true
			aw.Anchored = true
			local aH = Instance.new("Sound")
			aH.SoundId = "rbxassetid://171881624"
			aH.Volume = 1.25
			aH.Parent = hrp
			aH:Play()
			game.Debris:AddItem(aH, 2)
			ay.MaxForce = Vector3.new(6999, 9999, 6999)
			ay.P = 25
			ay.Velocity = (aw.Position - hrp.Position) * 4
			ay.Parent = hrp
			human.Sit = true
			coroutine.resume(coroutine.create(function()			
			local aI = 1
			while (hrp.Position - aw.Position).magnitude > 8 do
				swait()
			end
			ay.Parent = nil
		end))
		end
	end)
	swait(3)
	for I = 1, 40 do
		swait()
		if aE == true then
			local aJ = 0
			repeat
				swait()
				aJ = aJ + 1
			until (hrp.Position - aw.Position).magnitude >= 8 and aJ > 15
			break
		end
	end
		Y:Disconnect()
		aF:Disconnect()
		az:Destroy()
		aB:Destroy()
		aw:Destroy()
		ay:Destroy()
		a6:Destroy()
		a7:Destroy()
		activu = false
		rocketcool = 50
		coroutine.resume(coroutine.create(function()		
		wait(6)
		rocketcool = 0
	end))
end

jetpunch = function()	
	if selected == false or activu == true then
		return 
	end
	activu = true
	human.WalkSpeed = human.WalkSpeed - 16
	local P, Q = nil, nil
	if modev.Value == 0 then
		P = rarm
	else
		if modev.Value == 1 then
			P = larm
		end
	end
	local aK = Instance.new("Sound")
	aK.EmitterSize = 8
	aK.Volume = 1.25
	aK.SoundId = "rbxassetid://314877637"
	aK.Parent = P
	local aL = Instance.new("Sound")
	aL.EmitterSize = 9
	aL.Volume = 1.5
	aL.Pitch = rd2(10, 11) / 10
	aL.SoundId = "rbxassetid://408866322"
	aL.Parent = P
	local aM = Instance.new("Sound")
	aM.EmitterSize = 9
	aM.Volume = 1.5
	aM.Pitch = rd2(12, 14) / 10
	aM.SoundId = "rbxassetid://137463821"
	aM.Parent = P
	game.Debris:AddItem(aK, 4)
	game.Debris:AddItem(aL, 4)
	game.Debris:AddItem(aM, 5)
	aK:Play()
	for I = 1, 12 do
		swait()
		if P == rarm then
			lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.45)
		else
			if P == larm then
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.45)
			end
		end
	end
	resetlerp()
	Q = makemesh("FileMesh", Vector3.new(0, 0, 0), "", P)
	if modev.Value == 0 then
		modev.Value = modev.Value + 1
	else
		if modev.Value == 1 then
			modev.Value = 0
		end
	end
	local aN = nil
	for I,aO in pairs(H) do
		if aO.Parent == P then
			aN = aO.Transparency
			aO.Transparency = 1
		end
	end
	local aP = makepart("White", "pew", 0, 1, "Neon", modz, cf(P.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p))
	local aQ = aP.CFrame * cf(0, 0, -40)
	local V = Instance.new("Part")
	nooutline(V)
	V.Anchored = true
	V.CanCollide = false
	V.Transparency = 1
	V.Reflectance = 0.15
	V.Locked = true
	V.Size = Vector3.new(0.2, 0.2, 0.2)
	V.BrickColor = P.BrickColor
	V.CFrame = CFrame.new(P.CFrame * cf(0, 0.5, 0).p, mouse.Hit.p)
	V.Parent = modz
	local W = (makemesh("FileMesh", Vector3.new(1, 0.5, 1), "rbxasset://fonts/rightarm.mesh", V))
	local X = nil
	local Y = game:GetService("RunService").RenderStepped:connect(function()		
		X = (aP.Position - P.Position).magnitude
		W.Scale = Vector3.new(1, X / 2, 1)
		V.CFrame = CFrame.new(P.CFrame * cf(0, 0.5, 0).p, aP.CFrame.p) * ang(rd(90), 0, 0) * cf(0, -X / 2, 0)
		V.Transparency = V.Transparency - 0.05
	end)
	aL:Play()
	aM:Play()
	local aR = makepart("White", "sr1", 0.1, 0.3, "Neon", modz, aP.CFrame * ang(0, rd(90), rd(90)))
	local aS = makemesh("FileMesh", Vector3.new(2, 4, 2), "rbxassetid://489415447", aR)
	local aT = makepart("White", "sr1", 0.1, 0.3, "Neon", modz, aP.CFrame * cf(0, 0, -4) * ang(0, rd(90), rd(270)))
	local aU = makemesh("FileMesh", Vector3.new(1, 9, 1), "rbxassetid://489415447", aT)
	local aV = makepart("White", "sr1", 0.1, 0.3, "Neon", modz, aP.CFrame * ang(0, rd(0), rd(0)))
	local aW = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxassetid://3270017", aV)
	local aX = makepart("White", "sr1", 0.1, 0.3, "Neon", modz, aP.CFrame * ang(0, rd(0), rd(0)))
	local aY = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxassetid://3270017", aX)
	local aZ = makepart("White", "sr1", 0.1, 0.3, "Neon", modz, aP.CFrame * ang(0, rd(0), rd(0)))
	local a_ = makemesh("Sphere", (Vector3.new(2, 2, 2)), nil, aZ)
	game.Debris:AddItem(aR, 3)
	game.Debris:AddItem(aT, 3)
	game.Debris:AddItem(aV, 3)
	game.Debris:AddItem(aX, 3)
	game.Debris:AddItem(aZ, 3)
	coroutine.resume(coroutine.create(function()		
		local b0 = aV.CFrame * cf(0, 0, -6)
		local b1 = aX.CFrame * cf(0, 0, -14)
		local b2 = aZ.CFrame * cf(0, 0, -20)
		for I = 1, 40 do
			swait()
			aR.CFrame = aR.CFrame * ang(0, rd(14), 0)
			aS.Scale = aS.Scale + Vector3.new(0.15, -0.03, 0.15)
			aR.Transparency = aR.Transparency + 0.025
			aT.CFrame = aT.CFrame * ang(0, rd(-19), 0) * cf(0, 1.75, 0)
			aU.Scale = aU.Scale + Vector3.new(0.075, 7, 0.075)
			aT.Transparency = aT.Transparency + 0.03
			aV.CFrame = aV.CFrame:lerp(b0, 0.2) * ang(0, 0, rd(40))
			aW.Scale = aW.Scale:lerp(Vector3.new(7, 7, 7), 0.2)
			aV.Transparency = aV.Transparency + 0.02
			aX.CFrame = aX.CFrame:lerp(b1, 0.2) * ang(0, 0, rd(-30))
			aY.Scale = aY.Scale:lerp(Vector3.new(14, 14, 14), 0.2)
			aX.Transparency = aX.Transparency + 0.02
			aZ.CFrame = aZ.CFrame:lerp(b2, 0.5) * ang(0, 0, rd(30))
			a_.Scale = a_.Scale:lerp(Vector3.new(5, 5, 175), 0.5)
			aZ.Transparency = aZ.Transparency + 0.02
		end
	end))
	for j = 1, 18 do
		swait()
		if j < 3 then
			local b3 = Ray.new(aP.Position, aP.CFrame.lookVector * (25 - j * 4))
			local b4, b5 = workspace:FindPartOnRayWithIgnoreList(b3, {chr}, true, true)
			if b4 and b4.Transparency ~= 1 then
				local b6 = makepart("White", "hmm", 0, 1, "Neon", modz, cf(b5))
				game.Debris:AddItem(b6, 1)
				local a5 = rd2(1, 3)
				if a5 == 2 then
					hito(b6, 5, 22, 0.4, aP.CFrame.lookVector * 50, Vector3.new(0, 0, rd2(-20, 20)))
				else
					hito(b6, 5, 22, 0.4, aP.CFrame.lookVector * 50)
				end
			end
		end
		do
			do
				aP.CFrame = aP.CFrame:lerp(aQ, 0.5 - j * 0.015)
				-- DECOMPILER ERROR at PC566: LeaveBlock: unexpected jumping out DO_STMT

			end
		end
	end
	Q:Destroy()
	Y:Disconnect()
	V:Destroy()
	aP:Destroy()
	for I,aO in pairs(H) do
		if aO.Parent == P then
			aO.Transparency = aN
		end
	end
	human.WalkSpeed = human.WalkSpeed + 16
	activu = false
end

jetgat = function()	
	if selected == false or activu == true or gatlingcool == 50 then
		return 
	end
	activu = true
	human.AutoRotate = false
	human.WalkSpeed = human.WalkSpeed - 22
	local aN = nil
	local a9 = true
	local aa = {}
	local ab = {}
	local b7 = {}
	local ae = tool.Deactivated:connect(function()		
		a9 = false
	end)
	for j = 1, 14 do
		local ac = Instance.new("Part")
		nooutline(ac)
		ac.Anchored = true
		ac.Locked = true
		ac.CanCollide = false
		ac.Material = "Neon"
		ac.Size = Vector3.new(1, 1, 1)
		ac.Transparency = 1
		ac.CFrame = CFrame.new(0, 1000, 0)
		ac.Parent = modz
		makemesh("Sphere", (Vector3.new(0, 0, 0)), nil, ac)
		local ad = Instance.new("Sound")
		ad.Volume = 0.7
		ad.Pitch = rd2(15, 21) / 10
		ad.Name = "s1"
		ad.SoundId = "rbxassetid://144508058"
		ad.Parent = ac
		local aL = Instance.new("Sound")
		aL.EmitterSize = 7
		aL.Volume = 1.2
		aL.Name = "s2"
		aL.Pitch = rd2(12, 18) / 10
		aL.SoundId = "rbxassetid://408866322"
		aL.Parent = ac
		local aM = Instance.new("Sound")
		aM.EmitterSize = 7
		aM.Volume = 1.2
		aM.Name = "s3"
		aM.Pitch = rd2(14, 16) / 10
		aM.SoundId = "rbxassetid://137463821"
		aM.Parent = ac
		table.insert(aa, ac)
	end
	for j = 1, 28 do
		local a3 = makepart("White", "nah", 0, 1, "Neon", modz, cf(0, 1000, 0))
		makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://489415447", a3)
		table.insert(ab, a3)
	end
	for j = 1, 14 do
		local a3 = makepart("White", "nah", 0, 1, "Neon", modz, cf(0, 1000, 0))
		makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://3270017", a3)
		table.insert(b7, a3)
	end
	for I = 1, 16 do
		swait()
		lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.35)
		lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.35)
	end
	local b8 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", rarm)
	local b9 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", larm)
	for I,aO in pairs(H) do
		if aO.Parent == rarm or aO.Parent == larm then
			aN = aO.Transparency
			aO.Transparency = 1
		end
	end
	resetlerp()
	local a8 = Instance.new("BodyGyro")
	a8.MaxTorque = Vector3.new(1050, 3000, 750)
	a8.CFrame = CFrame.new(hrp.Position, mouse.Hit.p)
	a8.P = 580000
	a8.D = 250
	a8.Parent = hrp
	coroutine.resume(coroutine.create(function()		
		while a8 do
			swait()
			a8.CFrame = CFrame.new(hrp.Position, mouse.Hit.p)
		end
	end))
	local af = 0
	local ag = 0
	repeat
		repeat
			ag = ag + 1
			if af == 0 then
				af = 1
			else
				af = af % 14 + 1
			end
			coroutine.resume(coroutine.create(function()		
		local ah = aa[af]
		local ai = ab[af]
		local aj = ab[af + 14]
		local ba = b7[af]
		ah.Size = Vector3.new(1, 1, 0)
		ah.CFrame = cf(hrp.CFrame * cf(rd2(-600, 600) / 100, rd2(-150, 350) / 100, rd2(-200, -50) / 100).p, mouse.Hit * cf(rd2(-4, 4), rd2(-2, 2), 0).p)
		ah.Transparency = 0.25
		ah:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0, 0, 0)
		ai.Transparency = 0.35
		ai:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0.6, 0.6, 0.6)
		aj.Transparency = 0.45
		aj:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0.7, 0.7, 0.7)
		aj.CFrame = ah.CFrame * ang(0, rd(270), rd(90))
		if af % 2 == 1 then
			ai.CFrame = cf(rarm.CFrame * cf(rd2(-6, 6) / 10, rd2(4, 12) / 10, rd2(-12, -1) / 10).p, mouse.Hit.p) * ang(0, rd(270), rd(90))
		else
			if af % 2 == 0 then
				ai.CFrame = cf(larm.CFrame * cf(rd2(-6, 6) / 10, rd2(3, 8) / 10, rd2(-12, -1) / 10).p, mouse.Hit.p) * ang(0, rd(270), rd(90))
			end
		end
		ba.CFrame = ah.CFrame * cf(0, 0, -5)
		ba.Transparency = 0.4
		ba:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0.7, 0.7, 0.7)
		local bb = ah.CFrame * cf(0, 0, -12.5)
		local bc = aj.CFrame * cf(0, 1, 0)
		local bd = ba.CFrame * cf(0, 0, rd2(-300, 50) / 100)
		local ak = false
		ah.s1.Pitch = rd2(15, 21) / 10
		ah.s1:Play()
		ah.s2.Pitch = rd2(12, 18) / 10
		ah.s2:Play()
		ah.s3.Pitch = rd2(14, 16) / 10
		ah.s3:Play()
		for j = 1, 12 do
			swait()
			local a0 = Ray.new(ah.Position, ah.CFrame.lookVector * (12.5 - j))
			local a1, a2 = workspace:FindPartOnRayWithIgnoreList(a0, {chr}, true, true)
			if a1 and ak == false then
				ak = true
				local a3 = makepart("White", "nah", 0, 0.2, "SmoothPlastic", modz, cf(a2, ah.CFrame.p) * ang(0, 0, 0) * ang(0, rd(270), rd(90)))
				do
					local a4 = makemesh("FileMesh", Vector3.new(0.4, 0.4, 0.4), "rbxassetid://489415447", a3)
					game.Debris:AddItem(a3, 0.5)
					local a5 = rd2(1, 12)
					if a5 == 6 then
						hito(a3, 3.25, 6, 0.06, ah.CFrame.lookVector * 10, Vector3.new(0, 0, rd2(-8, 8)))
					else
						hito(a3, 3.25, 6, 0.06, ah.CFrame.lookVector * 10)
					end
					coroutine.resume(coroutine.create(function()			
			for I = 1, 4 do
				swait()
				a4.Scale = a4.Scale + Vector3.new(0.8, 0.8, 0.8)
				a3.Transparency = a3.Transparency + 0.2
			end
			a3:Destroy()
		end))
				end
			end
					ah.Size = ah.Size:lerp(Vector3.new(1.25, 1.25, 2), 0.5)
					ah.CFrame = ah.CFrame:lerp(bb, 0.475)
					ah:FindFirstChildOfClass("SpecialMesh").Scale = ah:FindFirstChildOfClass("SpecialMesh").Scale:lerp(Vector3.new(1, 1, 1), 0.45)
					ah.Transparency = ah.Transparency + 0.0725
					ai:FindFirstChildOfClass("SpecialMesh").Scale = ai:FindFirstChildOfClass("SpecialMesh").Scale:lerp(Vector3.new(1.25, 1.2, 1.25), 0.4)
					ai.Transparency = ai.Transparency + 0.06
					aj:FindFirstChildOfClass("SpecialMesh").Scale = aj:FindFirstChildOfClass("SpecialMesh").Scale:lerp(Vector3.new(1.6, 1.6, 1.6), 0.4)
					aj.CFrame = aj.CFrame:lerp(bc, 0.3)
					aj.Transparency = aj.Transparency + 0.05
					ba:FindFirstChildOfClass("SpecialMesh").Scale = ba:FindFirstChildOfClass("SpecialMesh").Scale:lerp(Vector3.new(4.5, 4.5, 4.5), 0.4)
					ba.CFrame = ba.CFrame:lerp(bd, 0.3)
					ba.Transparency = ba.Transparency + 0.06
		end
	end))
			swait()
		until not a9 or ag > 150
	until ag > 30
	ae:Disconnect()
	for I,aO in pairs(H) do
		if aO.Parent == rarm or aO.Parent == larm then
			aO.Transparency = aN
		end
	end
	b8:Destroy()
	b9:Destroy()
	a8:Destroy()
	human.WalkSpeed = human.WalkSpeed + 22
	gatlingcool = 50
	human.AutoRotate = true
	activu = false
	coroutine.resume(coroutine.create(function()		
		wait(9)
		gatlingcool = 0
	end))
	wait(1)
	for I,al in pairs(aa) do
		al:Destroy()
	end
	for I,am in pairs(ab) do
		am:Destroy()
	end
	for I,be in pairs(b7) do
		be:Destroy()
	end
	aa, ab, b7 = nil
end

jetbazoo = function()	
	if bazookacool == 50 or (hrp.Velocity * Vector3.new(0, 1, 0)).magnitude > 2 or selected == false or activu == true then
		return 
	end
	activu = true
	local bf = human.WalkSpeed
	human.WalkSpeed = 0
	human.AutoRotate = false
	hrp.Anchored = true
	local aK = Instance.new("Sound")
	aK.EmitterSize = 20
	aK.Volume = 1.5
	aK.Pitch = 0.5
	aK.SoundId = "rbxassetid://314877637"
	aK.Parent = hrp
	local bg = Instance.new("Sound")
	bg.SoundId = "rbxassetid://138137702"
	bg.MaxDistance = 200
	bg.EmitterSize = 20
	bg.Volume = 2
	bg.Pitch = 0.85
	bg.Parent = hrp
	local bh = Instance.new("Sound")
	bh.SoundId = "rbxassetid://157878578"
	bh.MaxDistance = 200
	bh.EmitterSize = 20
	bh.Volume = 1.25
	bh.Pitch = 1
	bh.Parent = hrp
	local bi = Instance.new("Sound")
	bi.SoundId = "rbxassetid://138250406"
	bh.MaxDistance = 200
	bh.EmitterSize = 40
	bh.Volume = 1.25
	bh.Pitch = 0.6
	bh.Parent = hrp
	local aL = Instance.new("Sound")
	aL.EmitterSize = 20
	aL.Volume = 2.75
	aL.Pitch = rd2(10, 12) / 10
	aL.SoundId = "rbxassetid://314877662"
	aL.Parent = hrp
	local aM = Instance.new("Sound")
	aM.EmitterSize = 20
	aM.Volume = 1.75
	aM.Pitch = rd2(14, 18) / 10
	aM.SoundId = "rbxassetid://137463821"
	aM.Parent = hrp
	game.Debris:AddItem(aK, 4)
	game.Debris:AddItem(aL, 4)
	game.Debris:AddItem(aM, 5)
	game.Debris:AddItem(bg, 8)
	game.Debris:AddItem(bh, 8)
	game.Debris:AddItem(bi, 8)
	aK:Play()
	local bj = {}
	for I = 1, 10 do
		local bk = makepart("Institutional white", "aaa", 0, 1, "Neon", modz, cf(hrp.CFrame * cf(rd2(-80, 80) / 10, rd2(-20, 60) / 10, rd2(-80, 80) / 10).p, hrp.Position))
		local bl = Instance.new("Attachment")
		bl.Position = Vector3.new(-0.1, 0, 0)
		bl.Parent = bk
		local bm = Instance.new("Attachment")
		bm.Position = Vector3.new(0.1, 0, 0)
		bm.Parent = bk
		local bn = Instance.new("Trail")
		bn.LightEmission = 0.7
		bn.Transparency = ns({nsk(0, 0.2, 0), nsk(1, 1, 0)})
		bn.Attachment0 = bl
		bn.Attachment1 = bm
		bn.Lifetime = 0.7
		bn.MinLength = 0
		bn.Parent = bk
		table.insert(bj, bk)
	end
	coroutine.resume(coroutine.create(function()		
		for I = 1, 25 do
			swait()
			for j,bo in pairs(bj) do
				if j % 2 == 0 then
					bo.CFrame = bo.CFrame:lerp(rarm.CFrame, 0.18) * ang(0, rd(2 * j), rd(2 * j))
				else
					if j % 2 == 1 then
						bo.CFrame = bo.CFrame:lerp(larm.CFrame, 0.18) * ang(0, rd(2 * j), rd(2 * j))
					end
				end
			end
		end
	end))
	for I = 1, 25 do
		swait()
		lerpz(RJ, "C0", RJC0 * cf(0, 0.5, -0.45) * ang(rd(15), rd(0), rd(0)), 0.3)
		lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-9), rd(0), rd(0)), 0.3)
		lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-4), rd(10), rd(-74)), 0.3)
		lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-4), rd(-10), rd(74)), 0.3)
		lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-4), rd(0), rd(50)), 0.3)
		lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-4), rd(0), rd(30)), 0.3)
		lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
	end
	local bp = makemesh("FileMesh", Vector3.new(0, 0, 0), "", larm)
	local bq = makemesh("FileMesh", Vector3.new(0, 0, 0), "", rarm)
	local aN = nil
	for I,aO in pairs(H) do
		if aO.Parent == rarm or aO.Parent == larm then
			aN = aO.Transparency
			aO.Transparency = 1
		end
	end
	bh:Play()
	aL:Play()
	swait()
	aM:Play()
	bg:Play()
	bi:Play()
	local aR = makepart("Institutional white", "sr1", 0, 0.4, "Neon", modz, hrp.CFrame * ang(rd(0), rd(0), rd(0)))
	local aS = makemesh("FileMesh", Vector3.new(0.8, 0.8, 0.4), "rbxassetid://437347603", aR)
	local aT = makepart("Institutional white", "sr2", 0, 0.4, "Neon", modz, hrp.CFrame * ang(rd(0), rd(0), rd(0)))
	local aU = makemesh("FileMesh", Vector3.new(0.6, 0.6, 0.3), "rbxassetid://437347603", aT)
	local br = makepart("Institutional white", "ri1", 0, 0, "Neon", modz, hrp.CFrame * cf(0, 0, -15) * ang(0, rd(0), rd(0)))
	local bs = makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://3270017", br)
	local bt = makepart("Institutional white", "ri2", 0, 0, "Neon", modz, hrp.CFrame * cf(0, 0, -5) * ang(0, rd(0), rd(0)))
	local bu = makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://3270017", bt)
	local bv = makepart("Institutional white", "co1", 0, 0.4, "Neon", modz, hrp.CFrame * cf(0, 0, -15) * ang(0, rd(90), rd(90)))
	local bw = makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://1051557", bv)
	local bx = makepart("Institutional white", "co2", 0, 0.4, "Neon", modz, hrp.CFrame * cf(0, 0, -15) * ang(0, rd(90), rd(90)))
	local by = makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://1051557", bx)
	local bz = makepart("Institutional white", "glo1", 0, 0.4, "Neon", modz, hrp.CFrame * cf(0, 0, -5) * ang(0, rd(0), rd(0)))
	local bA = makemesh("Sphere", (Vector3.new(0, 0, 0)), nil, bz)
	local bB = makepart("Institutional white", "sh1", 0, 0.4, "Neon", modz, hrp.CFrame * ang(0, rd(90), rd(90)))
	local bC = makemesh("FileMesh", Vector3.new(2, 4, 2), "rbxassetid://489415447", bB)
	local bD = makepart("Institutional white", "sh2", 0, 0.4, "Neon", modz, hrp.CFrame * ang(0, rd(-90), rd(90)))
	local bE = makemesh("FileMesh", Vector3.new(2, 4, 2), "rbxassetid://489415447", bD)
	local bF = makepart("Institutional white", "wa1", 0, 0.4, "Neon", modz, hrp.CFrame * cf(-4, -1.5, -1) * ang(rd(-5), rd(-30), rd(30)))
	local bG = makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://60886166", bF)
	local bH = makepart("Institutional white", "wa2", 0, 0.4, "Neon", modz, hrp.CFrame * cf(4, -1.5, -1) * ang(rd(-5), rd(30), rd(-30)))
	local bI = makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://60886166", bH)
	game.Debris:AddItem(aR, 1.5)
	game.Debris:AddItem(aT, 1.5)
	game.Debris:AddItem(br, 1.5)
	game.Debris:AddItem(bt, 1.5)
	game.Debris:AddItem(bv, 1.5)
	game.Debris:AddItem(bx, 1.5)
	game.Debris:AddItem(bz, 1.5)
	game.Debris:AddItem(bB, 1.5)
	game.Debris:AddItem(bD, 1.5)
	game.Debris:AddItem(bC, 1.5)
	game.Debris:AddItem(bF, 1.5)
	game.Debris:AddItem(bH, 1.5)
	coroutine.resume(coroutine.create(function()		
		local bJ = aR.CFrame * cf(0, 0, -35)
		local bK = aT.CFrame * cf(0, 0, -25)
		local bL = hrp.CFrame * cf(0, 0, 20)
		local bM = hrp.CFrame * cf(0, 0, 50)
		local bN = bz.CFrame * cf(0, 0, -20)
		local bO = bB.CFrame * cf(0, 25, 0)
		for j = 1, 40 do
			swait()
			if j < 10 then
				hito(aR, 8, 45, 0.3, hrp.CFrame.lookVector * 80, Vector3.new(0, 0, rd2(-90, 90)))
			end
			aR.CFrame = aR.CFrame:lerp(bJ, 0.2) * ang(0, 0, rd(25))
			aS.Scale = aS.Scale + Vector3.new(0.1, 0.1, 0.12)
			aR.Transparency = aR.Transparency + 0.06
			aT.CFrame = aT.CFrame:lerp(bJ, 0.175) * ang(0, 0, rd(-25))
			aU.Scale = aU.Scale + Vector3.new(0.08, 0.08, 0.1)
			aT.Transparency = aT.Transparency + 0.04
			br.CFrame = br.CFrame:lerp(bL, 0.2) * ang(0, 0, rd(40))
			br.Transparency = br.Transparency + 0.075
			bs.Scale = bs.Scale:lerp(Vector3.new(25, 25, 20), 0.3)
			bt.CFrame = br.CFrame:lerp(bM, 0.2) * ang(0, 0, rd(-40))
			bt.Transparency = br.Transparency + 0.05
			bu.Scale = bs.Scale:lerp(Vector3.new(60, 60, 50), 0.3)
			bv.CFrame = bv.CFrame * ang(0, rd(50), 0)
			bx.CFrame = bx.CFrame * ang(0, rd(-65), 0)
			if j < 4 then
				bw.Scale = bw.Scale + Vector3.new(2.3, 6, 2.3)
				by.Scale = by.Scale + Vector3.new(1.5, 9, 1.5)
			else
				bw.Scale = bw.Scale + Vector3.new(0.75, 1, 0.75)
				by.Scale = by.Scale + Vector3.new(0.7, 1.1, 0.7)
			end
			bv.Transparency = bv.Transparency + 0.02
			bx.Transparency = bx.Transparency + 0.0175
			bA.Scale = bA.Scale:lerp(Vector3.new(15, 15, 200), 0.4)
			bz.CFrame = bz.CFrame:lerp(bN, 0.4)
			bz.Transparency = bz.Transparency + 0.035
			bC.Scale = bC.Scale + Vector3.new(0.8, 0.5, 0.8)
			bB.CFrame = bB.CFrame:lerp(bO, 0.15) * ang(0, rd(40), 0)
			bB.Transparency = bB.Transparency + 0.0175
			bE.Scale = bE.Scale + Vector3.new(0.65, 3.8, 0.65)
			bD.CFrame = bD.CFrame * cf(0, 1.5, 0) * ang(0, rd(-75), 0)
			bD.Transparency = bD.Transparency + 0.03
			bG.Scale = bG.Scale:lerp(Vector3.new(1.5, 1.5, 1.5), 0.35)
			bI.Scale = bI.Scale:lerp(Vector3.new(1.5, 1.5, 1.5), 0.35)
			bF.Transparency = bF.Transparency + 0.03
			bH.Transparency = bH.Transparency + 0.03
		end
	end))
	lerpz(RJ, "C0", RJC0 * cf(0, -1.25, -0.45) * ang(rd(15), rd(0), rd(0)), 0.9)
	lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(18), rd(0), rd(0)), 0.9)
	lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-4), rd(-10), rd(100)), 0.9)
	lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.9)
	lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-4), rd(10), rd(-100)), 0.9)
	lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.9)
	lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-4), rd(0), rd(-30)), 0.9)
	lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.9)
	lerpz(LH, "C0", LHC0 * cf(-0.5, 0.5, 0) * ang(rd(-4), rd(0), rd(-50)), 0.9)
	lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.9)
	swait()
	bq:Destroy()
	bp:Destroy()
	for I,aO in pairs(H) do
		if aO.Parent == rarm or aO.Parent == larm then
			aO.Transparency = aN
		end
	end
	for I = 1, 15 do
		swait()
		lerpz(RJ, "C0", RJC0 * cf(0, 0.5, -0.45) * ang(rd(15), rd(0), rd(0)), 0.45)
		lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-13), rd(0), rd(0)), 0.45)
		lerpz(RS, "C0", RSC0 * cf(0, 0, 0.9) * ang(rd(-4), rd(-160), rd(70)), 0.45)
		lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
		lerpz(LS, "C0", LSC0 * cf(0, 0, 0.9) * ang(rd(-4), rd(160), rd(-70)), 0.45)
		lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
		lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-4), rd(0), rd(50)), 0.45)
		lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
		lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-4), rd(0), rd(30)), 0.45)
		lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
	end
	for j = 1, 10 do
		swait()
		lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
		lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 * j)
	end
	resetlerp()
	human.WalkSpeed = bf
	human.AutoRotate = true
	hrp.Anchored = false
	if plr.UserId ~= 8488617 then
		bazookacool = 50
	end
	activu = false
	swait(20)
	for I,bP in pairs(bj) do
		bP:Destroy()
	end
	bj = nil
	wait(9)
	bazookacool = 0
end

local bQ, bR, bS, bT, bU, bV, bW, bX, bY, bZ, b_, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, ca = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local cb = false
local cc = false
local cd, ce, cg, ch, ci, cj, ck, cl, cm, cn, co, cp, cq, cr, ct, cu, cv, cw, cx, cy, cz, cA, cB, cC, cD, cE, cF, cG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
giganpist = function()	
	if selected == false or activu == true then
		return 
	end
	activu = true
	human.AutoRotate = false
	human.PlatformStand = true
	local cH = Instance.new("BodyPosition")
	cH.MaxForce = Vector3.new(99999999, 99999999, 99999999)
	cH.P = 3000
	cH.Position = hrp.Position
	cH.Parent = hrp
	local a8 = Instance.new("BodyGyro")
	a8.MaxTorque = Vector3.new(9999999, 9999999, 9999999)
	a8.CFrame = cf(hrp.Position, mouse.Hit.p)
	a8.P = 580000
	a8.D = 10000
	a8.Parent = hrp
	local cI = true
	coroutine.resume(coroutine.create(function()		
		while cI do
			swait()
			a8.CFrame = cf(hrp.Position, mouse.Hit.p)
		end
	end))
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -15, 0)
	cg = ang(rd(0), rd(0), rd(-30)) * cf(0, -15, 0)
	ci = ang(rd(0), rd(0), rd(20)) * cf(0, -6.5, 0) * ang(rd(0), rd(180), rd(90))
	for I = 1, 30 do
		swait()
		lerpz(RJ, "C0", RJC0 * cf(0.1, 0.3, -0.05) * ang(rd(10), rd(6), rd(8)), 0.18)
		lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(-1), rd(-14)), 0.18)
		lerpz(RS, "C0", RSC0 * cf(-0.35, 0.05, 0.85) * ang(rd(0), rd(-210), rd(75)), 0.18)
		lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18)
		lerpz(LS, "C0", LSC0 * cf(-0.6, -0.37, 0.45) * ang(rd(-100), rd(20), rd(-100)), 0.2)
		lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18)
		lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.18)
		lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18)
		lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-40)), 0.18)
		lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18)
	end
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0)
	cg = ang(rd(0), rd(0), rd(-140)) * cf(0, -1, 0)
	ci = ang(rd(0), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(225), rd(90))
		for j = 1, 12 do
			swait()
			ce = 0.01 + j * 0.005
			ch = 0.03 + j * 0.01
			lerpz(RJ, "C0", RJC0 * cf(0.1, -0.75, -0.05) * ang(rd(25), rd(6), rd(22)), 0.18 + j * 0.05)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(8), rd(-1), rd(-14)), 0.18 + j * 0.05)
			lerpz(RS, "C0", RSC0 * cf(0, 0.05, 0) * ang(rd(0), rd(-30), rd(100)), 0.18 + j * 0.05)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18 + j * 0.05)
			lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(-30), rd(0)), 0.2 + j * 0.05)
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18 + j * 0.05)
			lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.18 + j * 0.05)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18 + j * 0.05)
			lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.18 + j * 0.05)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18 + j * 0.05)
		end
	cI = false
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, 5.5, 0)
	cg = ang(rd(0), rd(0), rd(0)) * cf(0, 5.5, 0)
	ci = ang(rd(0), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
	swait()
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -20, 0)
	cg = ang(rd(0), rd(0), rd(0)) * cf(0, -20, 0)
	ci = ang(rd(0), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
	for j = 1, 38 do
		swait()
		cd = cd * cf(0, -1.75 + j / 13, 0)
		cg = cg * cf(0, -1.75 + j / 13, 0)
		if j > 3 and j < 29 then
			local a3 = makepart("White", "nah", 0, 0.2, "SmoothPlastic", modz, bU.CFrame * cf(-5, 0, 0) * ang(0, rd(180), rd(90)))
			local a4 = makemesh("FileMesh", Vector3.new(5.75, 5.75, 5.75), "rbxassetid://489415447", a3)
			game.Debris:AddItem(a3, 4)
			coroutine.resume(coroutine.create(function()		
		for I = 1, 8 do
			swait()
			a4.Scale = a4.Scale + Vector3.new(0.4, 0.4, 0.4)
			a3.Transparency = a3.Transparency + 0.1
		end
		a3:Destroy()
	end))
			local a5 = rd2(1, 2)
			if a5 == 2 then
				hito(bU, 9, 45, 0.8, hrp.CFrame.lookVector * 70, Vector3.new(rd2(-50, 50), rd2(-50, 50), rd2(-50, 50)))
			else
				hito(bU, 9, 45, 0.8, hrp.CFrame.lookVector * 70)
			end
		end
				ce = 0.01 + j * 0.018
				ch = 0.01 + j * 0.008
				lerpz(RJ, "C0", RJC0 * cf(0.1, -1.25, -0.05) * ang(rd(35), rd(6), rd(26)), 0.)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(8), rd(-1), rd(-14)), 0.)
				lerpz(RS, "C0", RSC0 * cf(0, 0.05, 0) * ang(rd(0), rd(-29), rd(125)), 0.)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.)
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(40)), 0.)
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.)
				lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.)
				lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-40)), 0.)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.)
	end
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -10, 0)
	cg = ang(rd(0), rd(0), rd(-140)) * cf(0, -10, 0)
	ci = ang(rd(0), rd(0), rd(-40)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
	human.AutoRotate = true
	human.PlatformStand = false
	a8:Destroy()
	cH:Destroy()
	activu = false
end

giganbazooka = function()	
	if selected == false or activu == true then
		return 
	end
	activu = true
	human.WalkSpeed = human.WalkSpeed - 11
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -15, 0)
	cg = ang(rd(0), rd(0), rd(-30)) * cf(0, -15, 0)
	ci = ang(rd(0), rd(0), rd(20)) * cf(0, -6.5, 0) * ang(rd(0), rd(180), rd(90))
	ct = ang(rd(0), rd(0), rd(0)) * cf(0, -15, 0)
	cv = ang(rd(0), rd(0), rd(30)) * cf(0, -15, 0)
	cx = ang(rd(0), rd(0), rd(20)) * cf(0, -6.5, 0) * ang(rd(0), rd(180), rd(-90))
	for I = 1, 40 do
		swait()
		lerpz(RJ, "C0", RJC0 * cf(0.1, 0.3, -0.05) * ang(rd(10), rd(6), rd(8)), 0.18)
		lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(-1), rd(-14)), 0.18)
		lerpz(RS, "C0", RSC0 * cf(-0.35, 0.05, 0.85) * ang(rd(0), rd(-190), rd(75)), 0.18)
		lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18)
		lerpz(LS, "C0", LSC0 * cf(0, 0.07, 0.95) * ang(rd(0), rd(170), rd(-78)), 0.18)
		lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18)
		lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-5)), 0.18)
		lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18)
		lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-40)), 0.18)
		lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18)
	end
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0)
	cg = ang(rd(0), rd(0), rd(-140)) * cf(0, -1, 0)
	ci = ang(rd(0), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(225), rd(90))
	ct = ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0)
	cv = ang(rd(0), rd(0), rd(140)) * cf(0, -1, 0)
	cx = ang(rd(0), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(135), rd(-90))
	human.AutoRotate = false
		for j = 1, 12 do
			swait()
			ce = 0.01 + j * 0.005
			ch = 0.03 + j * 0.01
			cu = 0.01 + j * 0.005
			cw = 0.03 + j * 0.005
			lerpz(RJ, "C0", RJC0 * cf(0.1, -0.75, -0.05) * ang(rd(25), rd(6), rd(22)), 0.18 + j * 0.05)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(8), rd(-1), rd(-14)), 0.18 + j * 0.05)
			lerpz(RS, "C0", RSC0 * cf(0, 0.05, 0) * ang(rd(0), rd(-30), rd(100)), 0.18 + j * 0.05)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18 + j * 0.05)
			lerpz(LS, "C0", LSC0 * cf(0, 0.07, 0) * ang(rd(0), rd(-10), rd(-104)), 0.018 + j * 0.05)
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18 + j * 0.05)
			lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.18 + j * 0.05)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18 + j * 0.05)
			lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.18 + j * 0.05)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.18 + j * 0.05)
		end
	cd = ang(rd(0), rd(0), rd(0)) * cf(2, 5, 0)
	cg = ang(rd(0), rd(0), rd(0)) * cf(2, 5, 0)
	ci = ang(rd(0), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
	ct = ang(rd(0), rd(0), rd(0)) * cf(-2, 5, 0)
	cv = ang(rd(0), rd(0), rd(0)) * cf(-2, 5, 0)
	cx = ang(rd(0), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(-270), rd(-90))
	swait()
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -50, 0)
	cg = ang(rd(0), rd(0), rd(0)) * cf(0, -50, 0)
	ci = ang(rd(0), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
	ct = ang(rd(0), rd(0), rd(0)) * cf(0, -55, 0)
	cv = ang(rd(0), rd(0), rd(0)) * cf(0, -55, 0)
	cx = ang(rd(0), rd(0), rd(1)) * cf(0, -6.5, 0) * ang(rd(0), rd(90), rd(-90))
	for j = 1, 48 do
		swait()
		cd = cd * cf(0, -1.75 + j / 11, 0)
		cg = cg * cf(0, -1.75 + j / 11, 0)
		ct = ct * cf(0, -1.75 + j / 11, 0)
		cv = cv * cf(0, -1.75 + j / 11, 0)
		if j > 4 and j < 29 then
			local a3 = makepart("White", "nah", 0, 0.2, "SmoothPlastic", modz, bU.CFrame * cf(-5, 0, 0) * ang(0, rd(180), rd(90)))
			local a4 = makemesh("FileMesh", Vector3.new(6.75, 6.75, 6.75), "rbxassetid://489415447", a3)
			local cJ = makepart("White", "nah", 0, 0.2, "SmoothPlastic", modz, bZ.CFrame * cf(-5, 0, 0) * ang(0, rd(0), rd(90)))
			local cK = makemesh("FileMesh", Vector3.new(6.75, 6.75, 6.75), "rbxassetid://489415447", cJ)
			game.Debris:AddItem(a3, 4)
			coroutine.resume(coroutine.create(function()		
		for I = 1, 8 do
			swait()
			a4.Scale = a4.Scale + Vector3.new(0.4, 0.4, 0.4)
			a3.Transparency = a3.Transparency + 0.1
			cK.Scale = cK.Scale + Vector3.new(0.4, 0.4, 0.4)
			cJ.Transparency = cJ.Transparency + 0.1
		end
		a3:Destroy()
		cJ:Destroy()
	end))
			local a5 = rd2(1, 2)
			if a5 == 2 then
				hito(b, 9, 85, 0.8, hrp.CFrame.lookVector * 120, Vector3.new(rd2(-50, 50), rd2(-50, 50), rd2(-50, 50)))
				hito(b, 9, 85, 0.8, hrp.CFrame.lookVector * 120, Vector3.new(rd2(-50, 50), rd2(-50, 50), rd2(-50, 50)))
			else
				hito(b, 9, 85, 0.8, hrp.CFrame.lookVector * 120)
				hito(b, 9, 85, 0.8, hrp.CFrame.lookVector * 120)
			end
		end
				ce = 0.01 + j * 0.018
				ch = 0.01 + j * 0.008
				cu = 0.01 + j * 0.018
				cw = 0.01 + j * 0.008
				lerpz(RJ, "C0", RJC0 * cf(0.1, -1.2, -0.05) * ang(rd(3), rd(6), rd(26)), 0.6)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(-1), rd(-14)), 0.6)
				lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-33), rd(126)), 0.6)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(-28), rd(-125)), 0.6)
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
				lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-1), rd(-10), rd(-5)), 0.6)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
				lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-1), rd(10), rd(-40)), 0.6)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
	end
	human.WalkSpeed = human.WalkSpeed + 11
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -10, 0)
	cg = ang(rd(0), rd(0), rd(-140)) * cf(0, -10, 0)
	ci = ang(rd(0), rd(0), rd(-40)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
	ct = ang(rd(0), rd(0), rd(0)) * cf(0, -10, 0)
	cv = ang(rd(0), rd(0), rd(140)) * cf(0, -10, 0)
	cx = ang(rd(0), rd(0), rd(50)) * cf(0, -6.5, 0) * ang(rd(0), rd(90), rd(-90))
	human.AutoRotate = true
	activu = false
end

gigangatl = function()	
	if selected == false or activu == true or g3lim < 4 then
		return 
	end
	activu = true
	human.AutoRotate = false
	human.PlatformStand = true
	local cH = Instance.new("BodyPosition")
	cH.MaxForce = Vector3.new(99999999, 99999999, 99999999)
	cH.P = 3000
	cH.Position = hrp.Position
	cH.Parent = hrp
	local a8 = Instance.new("BodyGyro")
	a8.MaxTorque = Vector3.new(9999999, 9999999, 9999999)
	a8.CFrame = cf(hrp.Position, mouse.Hit.p)
	a8.P = 580000
	a8.D = 10000
	a8.Parent = hrp
	local cI = true
	coroutine.resume(coroutine.create(function()		
		while cI do
			swait()
			a8.CFrame = cf(hrp.Position, mouse.Hit.p)
		end
	end))
	local ae = tool.Deactivated:connect(function()		
		cI = false
	end)
	local cL = {}
	for I,cM in pairs(chr:GetChildren()) do
		if cM == rarm or cM == larm then
			local cN = makemesh("FileMesh", Vector3.new(0, 0, 0), "", cM)
			table.insert(cL, cN)
			for I,cO in pairs(cM:GetChildren()) do
				do
					if cO:IsA("Part") and cO.Transparency ~= 1 then
						do
							local cN = makemesh("FileMesh", Vector3.new(0, 0, 0), "", cO)
							table.insert(cL, cN)
							-- DECOMPILER ERROR at PC129: LeaveBlock: unexpected jumping out IF_THEN_STMT

							-- DECOMPILER ERROR at PC129: LeaveBlock: unexpected jumping out IF_STMT

						end
					end
				end
			end
		end
	end
	local cP = {}
	local cQ = {}
	local cR = {}
	for j = 1, 10 do
		local cS = nil
		if j % 2 == 0 then
			cS = makepart(rarm.BrickColor.Name, "rg", 0, 1, "SmoothPlastic", modz, hrp.CFrame * cf(0, 500, 0))
			cS.Color = bR.Color
			cS.Reflectance = bR.Reflectance
			makemesh("Sphere", (Vector3.new(65, 65, 75)), nil, cS)
		else
			if j % 2 == 1 then
				cS = makepart(larm.BrickColor.Name, "rg", 0, 1, "SmoothPlastic", modz, hrp.CFrame * cf(0, 500, 0))
				cS.Color = bW.Color
				cS.Reflectance = bW.Reflectance
				makemesh("Sphere", (Vector3.new(65, 65, 75)), nil, cS)
			end
		end
		local ad = Instance.new("Sound")
		ad.Volume = 1
		ad.Pitch = math.random(4, 6) / 10
		ad.SoundId = "rbxassetid://144508058"
		ad.Parent = cS
		table.insert(cP, cS)
	end
	for j = 1, 10 do
		local cS = nil
		if j % 2 == 0 then
			cS = makepart(rarm.BrickColor.Name, "rg2", 0, 1, "SmoothPlastic", modz, hrp.CFrame * cf(0, 500, 0))
			cS.Color = bU.Color
			cS.Reflectance = bU.Reflectance
			makemesh("FileMesh", Vector3.new(0.19, 0.19, 0.19), "rbxassetid://539775895", cS)
		else
			if j % 2 == 1 then
				cS = makepart(larm.BrickColor.Name, "rg2", 0, 1, "SmoothPlastic", modz, hrp.CFrame * cf(0, 500, 0))
				cS.Color = bZ.Color
				cS.Reflectance = bZ.Reflectance
				makemesh("FileMesh", Vector3.new(0.19, 0.19, 0.19), "rbxassetid://539776108", cS)
			end
		end
		table.insert(cQ, cS)
	end
	for j = 1, 10 do
		local cS = nil
		if j % 2 == 0 then
			cS = makepart(rarm.BrickColor.Name, "rg3", 0, 1, "SmoothPlastic", modz, hrp.CFrame * cf(0, 500, 0))
			makemesh("Sphere", (Vector3.new(15, 15, 50)), nil, cS)
		else
			if j % 2 == 1 then
				cS = makepart(larm.BrickColor.Name, "rg3", 0, 1, "SmoothPlastic", modz, hrp.CFrame * cf(0, 500, 0))
				makemesh("Sphere", (Vector3.new(15, 15, 50)), nil, cS)
			end
		end
		table.insert(cR, cS)
	end
	local ag = 0
	local af = 0
	local cT = 14
	resetlerp()
	coroutine.resume(coroutine.create(function()		
		local cU = 0
		while cI do
			swait()
			cU = cU + 1
			lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(65 * math.cos((cU) * 2 / cT))), 0.7)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-60 * math.cos((cU) * 2 / cT))), 0.7)
		end
	end))
	repeat
			ag = ag + 1
			if af == 0 then
				af = 1
			else
				af = af % 10 + 1
			end
			if ag > 0 and ag < 8 and cP[af].Transparency ~= 0.75 then
				cP[af].Transparency = 0.75
				cQ[af].Transparency = 0.75
				cR[af].Transparency = 0.75
				cT = 11
			else
				if ag > 8 and ag < 16 and cP[af].Transparency ~= 0.5 then
					cP[af].Transparency = 0.5
					cQ[af].Transparency = 0.5
					cR[af].Transparency = 0.5
					cT = 8
				else
					if ag > 16 and ag < 28 and cP[af].Transparency ~= 0.25 then
						cP[af].Transparency = 0.25
						cQ[af].Transparency = 0.25
						cR[af].Transparency = 0.25
						cT = 5
					else
						if ag > 28 and ag < 56 and cP[af].Transparency ~= 0 then
							cP[af].Transparency = 0
							cQ[af].Transparency = 0
							cR[af].Transparency = 0
							cT = 3
						end
					end
				end
			end
			cP[af].CFrame = hrp.CFrame * cf(rd2(-220, 220) / 10, rd2(-90, 120) / 10, rd2(-30, 90) / 10) * ang(0, 0, rd(rd2(-20, 20) / 10))
			if (af) % 2 == 0 then
				cQ[af].CFrame = cP[af].CFrame * ang(rd(90), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
			else
				if (af) % 2 == 1 then
					cQ[af].CFrame = cP[af].CFrame * ang(rd(90), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(90), rd(-90))
				end
			end
			cR[af]:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(1, 15, 50)
			cR[af].CFrame = cP[af].CFrame * cf(0, 0, 8)
			coroutine.resume(coroutine.create(function()		
		local cV = af
		local cW = cP[af]
		local cX = cQ[af]
		local cY = cR[af]
		local cZ = 10
		cW:FindFirstChildOfClass("Sound").Pitch = math.random(7, 8) / 10
		cW:FindFirstChildOfClass("Sound"):Play()
		for j = 1, 30 do
			swait()
					if j < 20 then
						local a5 = rd2(1, 3)
						if a5 == 2 then
							hito(cW, 10, 18, 0.25, hrp.CFrame.lookVector * 80, Vector3.new(rd2(-50, 50), rd2(-50, 50), rd2(-50, 50)))
						else
							hito(cW, 10, 18, 0.25, hrp.CFrame.lookVector * 80)
						end
					end
					cW.CFrame = cW.CFrame * cf(0, 0, -cZ)
					if cV % 2 == 0 then
						cX.CFrame = cW.CFrame * ang(rd(90), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
					else
						if cV % 2 == 1 then
							cX.CFrame = cW.CFrame * ang(rd(90), rd(0), rd(0)) * cf(0, -6.5, 0) * ang(rd(0), rd(90), rd(-90))
						end
					end
					cY.CFrame = cW.CFrame * cf(0, 0, 50 - cZ * 2.5)
					cY:FindFirstChildOfClass("SpecialMesh").Scale = cY:FindFirstChildOfClass("SpecialMesh").Scale + Vector3.new(0, 0, cZ * 4.5)
					cZ = cZ - 0.45
		end
	end))
			swait(cT)
	until ag > 10
	cI = false
	ae:Disconnect()
	cH:Destroy()
	a8:Destroy()
	for I,c_ in pairs(cL) do
		c_:Destroy()
	end
	for I,d0 in pairs(cP) do
		coroutine.resume(coroutine.create(function()		
		for I = 1, 10 do
			swait()
			d0.Transparency = d0.Transparency + 0.1
		end
		d0:Destroy()
	end))
	end
	for I,d0 in pairs(cQ) do
		coroutine.resume(coroutine.create(function()		
		for I = 1, 10 do
			swait()
			d0.Transparency = d0.Transparency + 0.1
		end
		d0:Destroy()
	end))
	end
	for I,d0 in pairs(cR) do
		coroutine.resume(coroutine.create(function()		
		for I = 1, 10 do
			swait()
			d0.Transparency = d0.Transparency + 0.1
		end
		d0:Destroy()
	end))
	end
	human.AutoRotate = true
	human.PlatformStand = false
	activu = false
end

gear2change = function()	
	if selected == false or activu == true then
		return 
	end
	if (hrp.Velocity * Vector3.new(1, 1, 1)).magnitude < 4 and dagear == 1 and g2lim > 5 then
		activu = true
		g.Enabled = false
		human.AutoRotate = false
		hrp.Anchored = true
		human.WalkSpeed = 0
		local d1 = Instance.new("Sound")
		d1.EmitterSize = 10
		d1.Volume = 4
		d1.SoundId = "rbxassetid://255289910"
		d1.Parent = hrp
		d1:Play()
		game.Debris:AddItem(d1, 5)
		local d2 = makepart(rleg.BrickColor.Name, "rg1", 0, 0, "SmoothPlastic", rleg, rleg.CFrame)
		d2.Anchored = false
		local d3 = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, d2)
		local d4 = makeweld(d2, d2, rleg, (cf(0, -0.8, 0)), nil)
			local d5 = makepart(lleg.BrickColor.Name, "lg1", 0, 0, "SmoothPlastic", lleg, lleg.CFrame)
			d5.Anchored = false
			local d6 = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, d5)
			local d7 = makeweld(d5, d5, lleg, (cf(0, -0.8, 0)), nil)
			local d8 = makepart(rleg.BrickColor.Name, "rg2", 0, 0, "SmoothPlastic", rleg, rleg.CFrame)
			d8.Anchored = false
			local d9 = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, d8)
			local da = makeweld(d8, d8, rleg, (cf(0, -0.6, 0)), nil)
			local db = makepart(lleg.BrickColor.Name, "lg2", 0, 0, "SmoothPlastic", lleg, lleg.CFrame)
			db.Anchored = false
			local dc = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, db)
			local dd = makeweld(db, db, lleg, (cf(0, -0.6, 0)), nil)
			animo(false)
			cam.CameraType = "Scriptable"
			cam.CoordinateFrame = hrp.CFrame * ang(rd(10), rd(-140), rd(0)) * cf(0, 0, 7)
			for I = 1, 35 do
				do
					swait()
					cam.CoordinateFrame = cam.CoordinateFrame * ang(rd(-0.06), rd(0.08), rd(0)) * cf(0, 0, -0.003)
					lerpz(RJ, "C0", RJC0 * cf(0, -0.5, -0.8) * ang(rd(75), rd(0), rd(15)), 0.15)
					lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(-12)), 0.15)
					lerpz(RS, "C0", RSC0 * cf(0.5, -0.25, 0.4) * ang(rd(-80), rd(15), rd(85)), 0.15)
					lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(15)), 0.15)
					lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(20), rd(40), rd(-65)), 0.15)
					lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.15)
					lerpz(RH, "C0", RHC0 * cf(-0.25, -0.2, 0) * ang(rd(0), rd(-70), rd(0)), 0.15)
					lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(-70), rd(35), rd(0)), 0.15)
					lerpz(LH, "C0", LHC0 * cf(-0.4, 0.4, 0) * ang(rd(0), rd(70), rd(0)), 0.15)
					lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(-80), rd(-10), rd(0)), 0.15)
				end
			end
			cam.CoordinateFrame = lleg.CFrame * ang(rd(5), rd(-165), rd(0)) * cf(0, 0, 5)
			for I = 1, 25 do
				swait()
				d4.C0 = d4.C0:lerp(cf(0, 0.2, 0), 0.3)
				d7.C0 = d7.C0:lerp(cf(0, 0.2, 0), 0.3)
				d3.Scale = d3.Scale:lerp(Vector3.new(7.5, 3, 7.5), 0.45)
				d6.Scale = d6.Scale:lerp(Vector3.new(7.5, 3, 7.5), 0.45)
				da.C0 = da.C0:lerp(cf(0, 0.4, 0), 0.3)
				dd.C0 = dd.C0:lerp(cf(0, 0.4, 0), 0.3)
				d9.Scale = d9.Scale:lerp(Vector3.new(7.5, 3, 7.5), 0.45)
				dc.Scale = dc.Scale:lerp(Vector3.new(7.5, 3, 7.5), 0.45)
				lerpz(RJ, "C0", RJC0 * cf(0, -0.5, -1.1) * ang(rd(75), rd(0), rd(15)), 0.3)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(18), rd(0), rd(-12)), 0.3)
				lerpz(RS, "C0", RSC0 * cf(0.2, -0.25, 0.4) * ang(rd(-80), rd(15), rd(85)), 0.3)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(15)), 0.3)
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(20), rd(50), rd(-65)), 0.3)
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
				lerpz(RH, "C0", RHC0 * cf(-0.25, -0.2, 0) * ang(rd(0), rd(-70), rd(0)), 0.6)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(-70), rd(35), rd(0)), 0.6)
				lerpz(LH, "C0", LHC0 * cf(-0.4, 0.4, 0) * ang(rd(0), rd(70), rd(0)), 0.6)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(-80), rd(-10), rd(0)), 0.6)
			end
			d1.TimePosition = 1.4
			for I = 1, 3 do
				swait()
				d4.C0 = d4.C0:lerp(cf(0, -0.4, 0), 0.3)
				d7.C0 = d7.C0:lerp(cf(0, -0.4, 0), 0.3)
				d3.Scale = d3.Scale:lerp(Vector3.new(7, 2, 7), 0.45)
				d6.Scale = d6.Scale:lerp(Vector3.new(7, 2, 7), 0.45)
				da.C0 = da.C0:lerp(cf(0, -0.2, 0), 0.3)
				dd.C0 = dd.C0:lerp(cf(0, -0.2, 0), 0.3)
				d9.Scale = d9.Scale:lerp(Vector3.new(7, 2, 7), 0.45)
				dc.Scale = dc.Scale:lerp(Vector3.new(7, 2, 7), 0.45)
				lerpz(RJ, "C0", RJC0 * cf(0, -0.5, -0.8) * ang(rd(75), rd(0), rd(15)), 0.3)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(-12)), 0.3)
				lerpz(RS, "C0", RSC0 * cf(0.5, -0.25, 0.4) * ang(rd(-80), rd(15), rd(85)), 0.3)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(15)), 0.3)
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(20), rd(40), rd(-65)), 0.3)
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
				lerpz(RH, "C0", RHC0 * cf(-0.25, -0.2, 0) * ang(rd(0), rd(-70), rd(0)), 0.6)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(-70), rd(35), rd(0)), 0.6)
				lerpz(LH, "C0", LHC0 * cf(-0.4, 0.4, 0) * ang(rd(0), rd(70), rd(0)), 0.6)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(-80), rd(-10), rd(0)), 0.6)
			end
			for I = 1, 10 do
				swait()
				d4.C0 = d4.C0:lerp(cf(0, -0.4, 0), 0.3)
				d7.C0 = d7.C0:lerp(cf(0, -0.4, 0), 0.3)
				d3.Scale = d3.Scale:lerp(Vector3.new(4, 2, 4), 0.45)
				d6.Scale = d6.Scale:lerp(Vector3.new(4, 2, 4), 0.45)
				da.C0 = da.C0:lerp(cf(0, -0.2, 0), 0.3)
				dd.C0 = dd.C0:lerp(cf(0, -0.2, 0), 0.3)
				d9.Scale = d9.Scale:lerp(Vector3.new(4, 2, 4), 0.45)
				dc.Scale = dc.Scale:lerp(Vector3.new(4, 2, 4), 0.45)
				lerpz(RJ, "C0", RJC0 * cf(0, -0.5, -0.8) * ang(rd(75), rd(0), rd(15)), 0.3)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(-12)), 0.3)
				lerpz(RS, "C0", RSC0 * cf(0.5, -0.25, 0.4) * ang(rd(-80), rd(15), rd(85)), 0.3)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(15)), 0.3)
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(20), rd(40), rd(-65)), 0.3)
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
				lerpz(RH, "C0", RHC0 * cf(-0.25, -0.2, 0) * ang(rd(0), rd(-70), rd(0)), 0.6)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(-70), rd(35), rd(0)), 0.6)
				lerpz(LH, "C0", LHC0 * cf(-0.4, 0.4, 0) * ang(rd(0), rd(70), rd(0)), 0.6)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(-80), rd(-10), rd(0)), 0.6)
			end
			cam.CoordinateFrame = hrp.CFrame * ang(rd(5), rd(-180), rd(0)) * cf(0, 0, 6)
			swait(8)
			d2:Destroy()
			d5:Destroy()
			d8:Destroy()
			db:Destroy()
			for j = 1, #H do
				coroutine.resume(coroutine.create(function()		
		local de = H[j]
		for I = 1, 16 do
			swait()
			de.Transparency = de.Transparency - 0.009375
			de.pe.Enabled = true
			if de:FindFirstChild("ss") then
				de:FindFirstChild("ss"):Play()
			end
		end
		swait(120)
	end))
			end
			d1.TimePosition = 4.1
			head:FindFirstChildOfClass("Decal").Texture = "rbxassetid://871751988"
			swait(8)
			for j = 1, 35 do
				swait()
				lerpz(RJ, "C0", RJC0 * cf(0, -0.5, -0.8) * ang(rd(75), rd(0), rd(15)), 0.3)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-50), rd(10), rd(-10)), 0.05 + j * 0.95 / 35)
				lerpz(RS, "C0", RSC0 * cf(0.5, -0.25, 0.4) * ang(rd(-80), rd(15), rd(85)), 0.3)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(15)), 0.3)
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(20), rd(40), rd(-65)), 0.3)
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
				lerpz(RH, "C0", RHC0 * cf(-0.25, -0.2, 0) * ang(rd(0), rd(-70), rd(0)), 0.6)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(-70), rd(35), rd(0)), 0.6)
				lerpz(LH, "C0", LHC0 * cf(-0.4, 0.4, 0) * ang(rd(0), rd(70), rd(0)), 0.6)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(-80), rd(-10), rd(0)), 0.6)
			end
			cam.CameraType = "Custom"
			animo(true)
			human.WalkSpeed = 28
			human.JumpPower = 60
			hrp.Anchored = false
			human.AutoRotate = true
			head:FindFirstChildOfClass("Decal").Texture = d
			for I = 1, 6 do
				swait()
				lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
			end
			resetlerp()
			dagear = 2
			g.Enabled = true
			activu = false
	else
		do
			if dagear == 2 then
				activu = true
				for j = 1, #H do
					coroutine.resume(coroutine.create(function()		
		local de = H[j]
		local df = nil
		if de:FindFirstChild("ss") then
			df = de:FindFirstChild("ss")
		end
		for I = 1, 16 do
			swait()
			de.Transparency = de.Transparency + 0.009375
			de.pe.Rate = de.pe.Rate - 1
			if de:FindFirstChild("ss") then
				df.Volume = df.Volume - 0.03125
			end
		end
		de.pe.Rate = 20
		de.pe.Enabled = false
		if de:FindFirstChild("ss") then
			df:Stop()
			df.Volume = 0.5
		end
	end))
				end
				human.WalkSpeed = 16
				human.JumpPower = 50
				dagear = 1
				activu = false
			end
		end
	end
end

gear3change = function()	
	if selected == false or activu == true then
		return 
	end
	if (hrp.Velocity * Vector3.new(1, 1, 1)).magnitude < 4 and dagear == 1 and g3lim > 5 then
		activu = true
		g.Enabled = false
		human.AutoRotate = false
		hrp.Anchored = true
		human.WalkSpeed = 0
		animo(false)
		bQ = makepart("White", "g3p1", 0, 1, "Neon", rarm, hrp.CFrame * cf(0, 500, 0))
		bR = makepart(rarm.BrickColor.Name, "g3p2", 0, 1, "SmoothPlastic", rarm, hrp.CFrame * cf(0, 500, 0))
		b_ = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, bR)
		bS = makepart(rarm.BrickColor.Name, "g3p3", 0, 1, "SmoothPlastic", rarm, hrp.CFrame * cf(0, 500, 0))
		c0 = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, bS)
		bT = makepart(rarm.BrickColor.Name, "g3p4", 0, 1, "SmoothPlastic", rarm, hrp.CFrame * cf(0, 500, 0))
		c1 = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, bT)
		bU = makepart(rarm.BrickColor.Name, "g3p5", 0, 1, "SmoothPlastic", rarm, hrp.CFrame * cf(0, 500, 0))
		c2 = makemesh("FileMesh", Vector3.new(0.005, 0.005, 0.005), "rbxassetid://539775895", bU)
		cam.CameraType = "Scriptable"
		cam.CoordinateFrame = hrp.CFrame * ang(rd(10), rd(-190), rd(0)) * cf(0, 0, 5)
		for I = 1, 26 do
			swait()
			lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(15)), 0.3)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(-1.5), rd(-14)), 0.3)
			lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(30), rd(60), rd(80)), 0.3)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5), rd(8), rd(10)), 0.3)
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-5), rd(0)), 0.3)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(5), rd(0)), 0.3)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		end
		head:FindFirstChildOfClass("Decal").Texture = "rbxassetid://250184082"
		cam.CoordinateFrame = hrp.CFrame * ang(rd(40), rd(-180), rd(0)) * cf(0, 0, 7)
		for j = 1, 37 do
			swait()
			local dg = rd2(-80, 80) / (38 - j)
			lerpz(RJ, "C0", RJC0 * cf(-0.1, 0.35, -0.05) * ang(rd(-18), rd(-6), rd(15)), 0.1)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-30 + dg), rd(-1 + dg), rd(-14 + dg)), 0.03 + j * 0.032)
			lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(32), rd(50), rd(83)), 0.1)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-7), rd(9), rd(12)), 0.1)
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-5), rd(-15)), 0.1)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(5), rd(20)), 0.1)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		end
		head:FindFirstChildOfClass("Decal").Texture = "rbxassetid://874809406"
		cam.CoordinateFrame = hrp.CFrame * ang(rd(-50), rd(-170), rd(0)) * cf(0, 2, 4)
		for I = 1, 15 do
			swait()
			lerpz(RJ, "C0", RJC0 * cf(0.1, -0.35, -0.05) * ang(rd(18), rd(6), rd(15)), 0.6)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(30), rd(-6), rd(-14)), 0.65)
			lerpz(RS, "C0", RSC0 * cf(0, 0.1, 0) * ang(rd(32), rd(60), rd(63)), 0.8)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-25), rd(10), rd(20)), 0.6)
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-5), rd(19)), 0.6)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(5), rd(-12)), 0.6)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		end
		bQ.Transparency = 1
		bR.Transparency = 0
		bS.Transparency = 0
		bT.Transparency = 0
		bU.Transparency = 0
		bQ.CFrame = rarm.CFrame * ang(rd(0), rd(0), rd(0)) * cf(0, -0.025, 0)
		bR.CFrame = bQ.CFrame * ang(rd(0), rd(0), rd(0)) * cf(0, -0.025, 0)
		c7 =  (bQ.Position - rarm.Position).magnitude
		c8 = (bR.Position - bQ.Position).magnitude
		bS.CFrame = cf(rarm.CFrame.p, bQ.CFrame.p) * cf(0, 0, -c7 / 2)
		bT.CFrame = cf(bQ.CFrame.p, bR.CFrame.p) * cf(0, 0, -c8 / 2)
		bU.CFrame = bR.CFrame * cf(0, -0.025, 0) * ang(rd(0), rd(180), rd(90))
		cam.CoordinateFrame = hrp.CFrame * ang(rd(10), rd(-180), rd(0)) * cf(0, 0, 6)
		for I = 1, 50 do
			swait()
			c7 =  (bQ.Position - rarm.Position).magnitude
			c8 = (bR.Position - bQ.Position).magnitude
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(30), rd(-6), rd(-14)), 0.1)
			lerpz(RS, "C0", RSC0 * cf(0, 0.1, 0) * ang(rd(0), rd(-50), rd(110)), 0.15)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05)
			bQ.CFrame = bQ.CFrame:lerp(rarm.CFrame * ang(rd(0), rd(0), rd(0)) * cf(0, -10, 0), 0.1)
			bR.CFrame = bR.CFrame:lerp(bQ.CFrame * ang(rd(0), rd(0), rd(-140)) * cf(0, -10, 0), 0.07)
			bS.CFrame = cf(rarm.CFrame.p, bQ.CFrame.p) * cf(0, 0, -(c7 + 1) / 2)
			bT.CFrame = cf(bQ.CFrame.p, bR.CFrame.p) * cf(0, 0, -(c8 - 1) / 2)
			bU.CFrame = bU.CFrame:lerp(bR.CFrame * cf(0, -6.5, 0) * ang(rd(0), rd(180), rd(90)), 0.3)
			b_.Scale = b_.Scale:lerp(Vector3.new(60, 70, 60), 0.13)
			c0.Scale = c0.Scale:lerp(Vector3.new(30, 30, c7 * 5 * 1.2), 0.13)
			c1.Scale = c1.Scale:lerp(Vector3.new(35, 35, c8 * 5 * 1.2), 0.13)
			c2.Scale = c2.Scale:lerp(Vector3.new(0.16, 0.16, 0.16), 0.13)
			cam.CoordinateFrame = cam.CoordinateFrame * cf(0, 0, 0.094)
		end
		cd = ang(rd(0), rd(0), rd(0)) * cf(0, -10, 0)
		cg = ang(rd(0), rd(0), rd(-140)) * cf(0, -10, 0)
		ci = ang(rd(0), rd(0), rd(-40)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
		ck = Vector3.new(60, 70, 60)
		cm = 3.5
		co = 5
				cj = 0.3--speed of hand
		cq = Vector3.new(0.16, 0.16, 0.16)
		cb = true
		coroutine.resume(coroutine.create(function()		
		while cb == true do
			swait2()
			bQ.CFrame = bQ.CFrame:lerp(rarm.CFrame * cd, ce)
			bR.CFrame = bR.CFrame:lerp(bQ.CFrame * cg, ch)
			c7 =  (bQ.Position - rarm.Position).magnitude
			c8 = (bR.Position - bQ.Position).magnitude
			bS.CFrame = cf(rarm.CFrame.p, bQ.CFrame.p) * cf(0, 0, -(c7 + 1) / 2)
			bT.CFrame = cf(bQ.CFrame.p, bR.CFrame.p) * cf(0, 0, -(c8 - 1) / 2)
			bU.CFrame = bU.CFrame:lerp(bR.CFrame * ci, cj)
			b_.Scale = b_.Scale:lerp(ck, cl)
			c0.Scale = c0.Scale:lerp(Vector3.new(cm * 5, cm * 5,  (bQ.Position - rarm.Position).magnitude * 5 * 1.2), cn)
			c1.Scale = c1.Scale:lerp(Vector3.new(co * 5, co * 5, (bR.Position - bQ.Position).magnitude * 5 * 1.2), cp)
			c2.Scale = c2.Scale:lerp(cq, cr)
		end
	end))
print("bless the meme")
		head:FindFirstChildOfClass("Decal").Texture = "rbxassetid://871751988"
		cam.CoordinateFrame = hrp.CFrame * ang(rd(10), rd(-155), rd(0)) * cf(0, 0, 12)
		for j = 1, 80 do
			swait()
			lerpz(RJ, "C0", RJC0 * cf(0.1, -0.35, -0.05) * ang(rd(18), rd(6), rd(15)), 0.03 + j * 0.011875)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2), rd(-1), rd(-14)), 0.03 + j * 0.011875)
			lerpz(RS, "C0", RSC0 * cf(0, 0.05, 1) * ang(rd(0), rd(-170), rd(75)), 0.03 + j * 0.011875)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.03 + j * 0.011875)
			lerpz(LS, "C0", LSC0 * cf(0, 0.07, -0.45) * ang(rd(20), rd(-65), rd(-60)), 0.03 + j * 0.011875)
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.03 + j * 0.011875)
			lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.03 + j * 0.011875)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.03 + j * 0.011875)
			lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.03 + j * 0.011875)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.03 + j * 0.011875)
			cam.CoordinateFrame = cam.CoordinateFrame * cf(0, 0, 0.04)
		end
		head:FindFirstChildOfClass("Decal").Texture = d
		cam.CameraType = "Custom"
		dagear = 3
		human.AutoRotate = true
		hrp.Anchored = false
		human.WalkSpeed = 12
		g.Enabled = true
		activu = false
	--fixing the hand movement
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -15, 0)
	cg = ang(rd(0), rd(0), rd(-30)) * cf(0, -15, 0)
	ci = ang(rd(0), rd(0), rd(20)) * cf(0, -6.5, 0) * ang(rd(0), rd(180), rd(90))
			ce = 0.01
			ch = 0.01
		cd = cf()
		cg = cf()
	for j = 1, 38 do
		--swait()
		cd = cd * cf(0, -1.75 + j / 13, 0)
		cg = cg * cf(0, -1.75 + j / 13, 0)
				ce = 0.01 + j * 0.018
				ch = 0.01 + j * 0.008
	end
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -10, 0)
	cg = ang(rd(0), rd(0), rd(-140)) * cf(0, -10, 0)
	ci = ang(rd(0), rd(0), rd(-40)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
	--done fixing hand xd
	elseif dagear == 3 then
		activu = true
		human.WalkSpeed = 0
		human.AutoRotate = false
		hrp.Anchored = true
		cd = ang(rd(0), rd(0), rd(0)) * cf(0, -0.25, 0)
			cg = ang(rd(0), rd(0), rd(0)) * cf(0, -0.25, 0)
			ci = ang(rd(0), rd(0), rd(0)) * cf(0, -0.25, 0) * ang(rd(0), rd(180), rd(90))
			ck = Vector3.new(0, 1, 0)
			cm = 0
			co = 0
			cq = Vector3.new(0, 1, 0)
			ct = ang(rd(0), rd(0), rd(0)) * cf(0, -0.25, 0)
			cv = ang(rd(0), rd(0), rd(0)) * cf(0, -0.25, 0)
			cx = ang(rd(0), rd(0), rd(50)) * cf(0, -0.25, 0) * ang(rd(0), rd(90), rd(-90))
			cz = Vector3.new(0, 1, 0)
			cB = 0
			cD = 0
			cF = Vector3.new(0, 1, 0)
			for j = 1, 40 do
				swait()
				lerpz(RJ, "C0", RJC0 * cf(0.1, -0.35, -0.05) * ang(rd(18), rd(6), rd(15)), 0.03 + j * 2 * 0.011875)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(1), rd(-14)), 0.03 + j * 2 * 0.011875)
				lerpz(RS, "C0", RSC0 * cf(0.5, 0.05, 0.5) * ang(rd(0), rd(-90), rd(75)), 0.03 + j * 2 * 0.011875)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.03 + j * 2 * 0.011875)
				if g32hand then
					lerpz(LS, "C0", LSC0 * cf(0, 0.07, 0.45) * ang(rd(20), rd(85), rd(-60)), 0.03 + j * 2 * 0.011875)
				else
					lerpz(LS, "C0", LSC0 * cf(0, 0.07, -0.45) * ang(rd(20), rd(-65), rd(-60)), 0.03 + j * 2 * 0.011875)
				end
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.03 + j * 2 * 0.011875)
				lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.03 + j * 2 * 0.011875)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.03 + j * 2 * 0.011875)
				lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.03 + j * 2 * 0.011875)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.03 + j * 2 * 0.011875)
			end
			cb = false
			cc = false
			bQ:Destroy()
			bR:Destroy()
			bS:Destroy()
			bT:Destroy()
			bU:Destroy()
			if g32hand then
				bV:Destroy()
				bW:Destroy()
				bX:Destroy()
				bY:Destroy()
				bZ:Destroy()
			end
			for I = 1, 13 do
				swait()
				lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
				lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.45)
			end
			resetlerp()
			animo(true)
			human.WalkSpeed = 16
			dagear = 1
			g32hand = false
			human.AutoRotate = true
			hrp.Anchored = false
			activu = false
	end
	--a8:Destroy()
	--cH:Destroy()
	activu = false
end

g3twohand = function()	
	if selected == false or activu == true then
		return 
	end
	if not g32hand then
		activu = true
		local bf = human.WalkSpeed
		human.WalkSpeed = 0
		cc = true
		g.Enabled = false
		human.AutoRotate = false
		hrp.Anchored = true
		bV = makepart("White", "g3p6", 0, 1, "Neon", larm, larm.CFrame)
		bW = makepart(larm.BrickColor.Name, "g3p7", 0, 1, "SmoothPlastic", larm, larm.CFrame)
		c3 = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, bW)
		bX = makepart(larm.BrickColor.Name, "g3p8", 0, 1, "SmoothPlastic", larm, larm.CFrame)
		c4 = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, bX)
		bY = makepart(larm.BrickColor.Name, "g3p9", 0, 1, "SmoothPlastic", larm, larm.CFrame)
		c5 = makemesh("Sphere", (Vector3.new(1, 1, 1)), nil, bY)
		bZ = makepart(larm.BrickColor.Name, "g3p10", 0, 1, "SmoothPlastic", larm, larm.CFrame)
		c6 = makemesh("FileMesh", Vector3.new(0.005, 0.005, 0.005), "rbxassetid://539776108", bZ)
		local dh = makepart(tors.BrickColor.Name, "gblp", 0, 0, "SmoothPlastic", tors, tors.CFrame)
		dh.Anchored = false
		local di = makemesh("Sphere", (Vector3.new(0, 0, 0)), nil, dh)
		local dj = makeweld(dh, dh, tors, (cf(0, 0, 0)), nil)
		cd = ang(rd(0), rd(0), rd(0)) * cf(0, -5, 0)
		cg = ang(rd(0), rd(0), rd(-20)) * cf(0, -5, 0)
		ci = ang(rd(0), rd(0), rd(-20)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
		for I = 1, 25 do
			swait()
			di.Scale = di.Scale:lerp(Vector3.new(55, 55, 55), 0.25)
			lerpz(RJ, "C0", RJC0 * cf(0, 0, 4) * ang(rd(0), rd(0), rd(0)), 0.25)
			lerpz(N, "C0", NC0 * cf(0, 0, 4) * ang(rd(0), rd(0), rd(0)), 0.25)
			lerpz(RS, "C0", RSC0 * cf(0, 2.75, 2.75) * ang(rd(-110), rd(0), rd(0)), 0.25)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
			lerpz(LS, "C0", LSC0 * cf(0, 2.75, 2.75) * ang(rd(-110), rd(0), rd(0)), 0.25)
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
			lerpz(RH, "C0", RHC0 * cf(0, -4, 1.5) * ang(rd(-10), rd(5), rd(0)), 0.25)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
			lerpz(LH, "C0", LHC0 * cf(0, -4, 1.5) * ang(rd(-10), rd(5), rd(0)), 0.25)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
		end
		bW.Transparency = 0
		bX.Transparency = 0
		bY.Transparency = 0
		bZ.Transparency = 0
		bV.CFrame = larm.CFrame * ang(rd(0), rd(0), rd(0)) * cf(0, -0.025, 0)
		bW.CFrame = bW.CFrame * ang(rd(0), rd(0), rd(0)) * cf(0, -0.025, 0)
		c9 = (bV.Position - larm.Position).magnitude
		ca = (bW.Position - bV.Position).magnitude
		bX.CFrame = cf(larm.CFrame.p, bV.CFrame.p) * cf(0, 0, -c9 / 2)
		bY.CFrame = cf(bV.CFrame.p, bW.CFrame.p) * cf(0, 0, -ca / 2)
		bZ.CFrame = bW.CFrame * cf(0, -0.025, 0) * ang(rd(0), rd(180), rd(90))
		cd = ang(rd(0), rd(0), rd(0)) * cf(0, -10, 0)
		cg = ang(rd(0), rd(0), rd(-140)) * cf(0, -10, 0)
		ci = ang(rd(0), rd(0), rd(-40)) * cf(0, -6.5, 0) * ang(rd(0), rd(270), rd(90))
		ct = ang(rd(0), rd(0), rd(0)) * cf(0, -10, 0)
		cv = ang(rd(0), rd(0), rd(140)) * cf(0, -10, 0)
		cx = ang(rd(0), rd(0), rd(50)) * cf(0, -6.5, 0) * ang(rd(0), rd(90), rd(-90))
		cz = Vector3.new(60, 70, 60)
		cB = 3.5
		cD = 5
		cF = Vector3.new(0.16, 0.16, 0.16)
			cC = 0.3
			cE = 0.3
			cy = 0.3
			cu = 0.3
			cw = 0.3
			cA = 0.3
			cG = 0.3
		coroutine.resume(coroutine.create(function()		
		while cc == true do
			swait2()
			bV.CFrame = bV.CFrame:lerp(larm.CFrame * ct, cu)
			bW.CFrame = bW.CFrame:lerp(bV.CFrame * cv, cw)
			c9 = (bV.Position - larm.Position).magnitude
			ca = (bW.Position - bV.Position).magnitude
			bX.CFrame = cf(larm.CFrame.p, bV.CFrame.p) * cf(0, 0, -(c9 + 1) / 2)
			bY.CFrame = cf(bV.CFrame.p, bW.CFrame.p) * cf(0, 0, -(ca - 1) / 2)
			bZ.CFrame = bZ.CFrame:lerp(bW.CFrame * cx, cy)
			c3.Scale = c3.Scale:lerp(cz, cA)
			c4.Scale = c4.Scale:lerp(Vector3.new(cB * 5, cB * 5, (bV.Position - larm.Position).magnitude * 5 * 1.2), cC)
			c5.Scale = c5.Scale:lerp(Vector3.new(cD * 5, cD * 5, (bW.Position - bV.Position).magnitude * 5 * 1.2), cE)
			c6.Scale = c6.Scale:lerp(cF, cG)
		end
	end))
		for I = 1, 30 do
			swait()
			di.Scale = di.Scale:lerp(Vector3.new(0, 0, 0), 0.32)
			lerpz(RJ, "C0", RJC0 * cf(0.1, -0.35, 0) * ang(rd(18), rd(6), rd(15)), 0.3)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2), rd(-1), rd(-14)), 0.3)
			lerpz(RS, "C0", RSC0 * cf(0, 0.05, 1) * ang(rd(0), rd(-170), rd(75)), 0.3)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LS, "C0", LSC0 * cf(0, 0.07, 0.95) * ang(rd(0), rd(160), rd(-75)), 0.3)
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.3)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		end
		dh:Destroy()
		human.WalkSpeed = bf
		hrp.Anchored = false
		human.AutoRotate = true
		g.Enabled = true
		g32hand = true
		activu = false
	end
end

busolelel = function()	
	if activu == true or selected == false then
		return 
	end
	if dagear == 3 then
		if bR.Reflectance <= 0 then
			selected = false
			local dk = Instance.new("Sound")
			dk.SoundId = "rbxassetid://315030459"
			dk.Volume = 1.25
			dk.TimePosition = 0.22
			dk.Pitch = 1.03
			dk.Parent = tors
			game.Debris:AddItem(dk, 3)
			dk:Play()
			local dl = Color3.new(0.90196078431373, 0.90196078431373, 0.90196078431373)
			ck = Vector3.new(70, 80, 70)
			cq = Vector3.new(0.19, 0.19, 0.19)
			cz = Vector3.new(70, 80, 70)
			cF = Vector3.new(0.19, 0.19, 0.19)
			for I = 1, 20 do
				swait()
				bR.Reflectance = bR.Reflectance + 0.02
				bR.Color = bR.Color:lerp(dl, 0.15)
				bU.Reflectance = bU.Reflectance + 0.02
				bU.Color = bU.Color:lerp(dl, 0.15)
				if g32hand then
					bW.Reflectance = bW.Reflectance + 0.02
					bW.Color = bW.Color:lerp(dl, 0.15)
					bZ.Reflectance = bZ.Reflectance + 0.02
					bZ.Color = bZ.Color:lerp(dl, 0.15)
				end
			end
			dl = Color3.new(0.058823529411765, 0, 0.082352941176471)
			ck = Vector3.new(60, 70, 60)
			cq = Vector3.new(0.16, 0.16, 0.16)
			cz = Vector3.new(60, 70, 60)
			cF = Vector3.new(0.16, 0.16, 0.16)
			for I = 1, 20 do
				swait()
				bR.Reflectance = bR.Reflectance - 0.01
				bR.Color = bR.Color:lerp(dl, 0.15)
				bU.Reflectance = bU.Reflectance - 0.01
				bU.Color = bU.Color:lerp(dl, 0.15)
				if g32hand then
					bW.Reflectance = bW.Reflectance - 0.01
					bW.Color = bW.Color:lerp(dl, 0.15)
					bZ.Reflectance = bW.Reflectance - 0.01
					bZ.Color = bZ.Color:lerp(dl, 0.15)
				end
			end
			bR.Color = dl
			bU.Color = dl
			if g32hand then
				bW.Color = dl
				bZ.Color = dl
			end
			selected = true
		else
			do
				selected = false
				for I = 1, 20 do
					swait()
					bR.Reflectance = bR.Reflectance - 0.01
					bR.Color = bR.Color:lerp(rarm.Color, 0.15)
					bU.Reflectance = bU.Reflectance - 0.01
					bU.Color = bU.Color:lerp(rarm.Color, 0.15)
					if g32hand then
						bW.Reflectance = bW.Reflectance - 0.01
						bW.Color = bW.Color:lerp(larm.Color, 0.15)
						bZ.Reflectance = bZ.Reflectance - 0.01
						bZ.Color = bZ.Color:lerp(larm.Color, 0.15)
					end
				end
				bR.Color = rarm.Color
				bU.Color = rarm.Color
				bR.Reflectance = 0
				bU.Reflectance = 0
				if g32hand then
					bW.Color = larm.Color
					bZ.Color = larm.Color
					bW.Reflectance = 0
					bZ.Reflectance = 0
				end
				selected = true
			end
		end
	end
end

hito = function(dm, X, c, dn, dp, dq)	
	for I,dr in pairs(workspace:GetChildren()) do
		if dr:FindFirstChild("Humanoid") and dr:FindFirstChild("HumanoidRootPart") and dr ~= chr and (dr:FindFirstChild("HumanoidRootPart").Position - dm.Position).magnitude < X and dr:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
			local ds = dr:FindFirstChild("Humanoid")
				local dt = dr:FindFirstChild("HumanoidRootPart")
				TakeDamage(ds, c)
				ds:SetStateEnabled(16, true)
				delay(dn, function()		
		ds:SetStateEnabled(16, true)
	end)
				local du = Instance.new("StringValue")
				du.Name = "alabo"
				du.Parent = dt
				game.Debris:AddItem(du, dn)
				local dv = Instance.new("Part")
				nooutline(dv)
				dv.Size = Vector3.new(0.2, 0.2, 0.2)
				dv.Transparency = 0.25
				dv.Anchored = true
				dv.CanCollide = false
				dv.BrickColor = BrickColor.new("Institutional white")
				dv.Locked = true
				dv.CFrame = dt.CFrame * CFrame.new(rd2(-1, 1), rd2(-2, 2), rd2(-1, 1))
				dv.Parent = modz
				local dw = Instance.new("SpecialMesh")
				dw.MeshType = "Sphere"
				dw.Scale = Vector3.new(3.5, 3.5, 3.5)
				dw.Parent = dv
				game.Debris:AddItem(dv, 1)
				local dx = Instance.new("Model")
				dx.Name = c
				dx.Parent = workspace
				game.Debris:AddItem(dx, 0.5 + c / 75)
				local dy = Instance.new("Humanoid")
				dy.MaxHealth = 0
				dy.Parent = dx
				local dz = Instance.new("Part")
				dz.Name = "Head"
				dz.Locked = true
				dz.Size = Vector3.new(0.2, 0.2, 0.2)
				dz.Position = dt.Position
				dz.BrickColor = BrickColor.new("Bright red")
				dz.CanCollide = false
				dz.Parent = dx
				local dA = Instance.new("BodyPosition")
				dA.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				dA.P = 20000
				dA.D = 300
				dA.Position = dz.Position + Vector3.new(0, 5, 0)
				dA.Parent = dz
				local dB = Instance.new("CylinderMesh")
				dB.Parent = dz
				coroutine.resume(coroutine.create(function()		
		while dB do
			swait()
			dB.Scale = dB.Scale:lerp(Vector3.new(2.5 + c / 10, 1.25 + c / 35, 2.5 + c / 10), 0.4)
		end
	end))
					if dp then
						local dC = Instance.new("BodyVelocity")
						dC.MaxForce = Vector3.new(999999999999, 9999999999999, 9999999999999)
						dC.P = 9999999999
						dC.Velocity = dp
						dC.Parent = dt
						game.Debris:AddItem(dC, dn)
					end
						if dq then
							local dD = Instance.new("BodyAngularVelocity")
							dD.MaxTorque = Vector3.new(99999, 999999, 999999)
							dD.P = math.huge
							dD.AngularVelocity = dq
							dD.Parent = dt
							game.Debris:AddItem(dD, dn)
						end
						local dE = Instance.new("Sound")
						dE.Pitch = rd2(10, 11) / 10
						dE.Volume = rd2(10, 13) / 10
						dE.EmitterSize = 10
						dE.SoundId = "rbxassetid://294188918"
						dE.Parent = dv
						dE:Play()
						coroutine.resume(coroutine.create(function()		
		for I = 1, 5 do
			swait()
			dv.Transparency = dv.Transparency + 0.175
			dw.Scale = dw.Scale + Vector3.new(0.8 * c, 0.8 * c, 0.8 * c)
		end
	end))
		end
	end
end

animo = function(dF)	
	if anim then
		if dF == true then
			anim.Parent = human
			chr.Animate.Disabled = false
		elseif dF == false then
			chr.Animate.Disabled = true
			anim.Parent = nil
		end
	end
end

local dG = function(dH, dv, dw, aO, dI, i)	
	if dH == 0 then
		return dv
	end
	dH = dH / aO
	if dH == 1 then
		return dv + dw
	end
	if not i then
		i = aO * 0.3
	end
	local h = nil
	if not dI or dI < math.abs(dw) then
		dI = dw
		h = i / 4
	else
		h = i / (2 * math.pi) * math.asin(dw / dI)
	end
	return dI * math.pow(2, -10 * (dH)) * math.sin((dH * aO - h) * 2 * math.pi / (i)) + dw + dv
end

local dJ = false
updateguimode = function()	
	local dK = function(dL, dM, dH)		
		return (1 - dH) * dL + dH * dM
	end

	local dN, dO = nil, nil
	if dagear == 1 then
		dN = "Rubber"
	elseif dagear == 2 then
		dN = "Jet"
	elseif dagear == 3 then
		dN = "Gigant"
	end
	if rubbermodo == 0 then
		dO = "Pistol"
	elseif rubbermodo == 1 then
		dO = "Gatling"
	elseif rubbermodo == 2 then
		dO = "Bazooka"
	elseif rubbermodo == 3 then
		dO = "Rocket"
	end
	g.Main.Base.Mode.Text = "MODE: " .. dN .. " " .. dO
	if dJ == false then
		dJ = true
	elseif dJ == true then
		dJ = false
		swait()
		dJ = true
	end
	for j = 0, 2, game:GetService("RunService").RenderStepped:wait() do
		if not dJ then
			break
		end
		game:GetService("RunService").RenderStepped:wait()
		g.Main.Base.Mode.TextSize = dK(11, 25, dG(j, 0, 1, 2))
	end
end
--[[
mouse.KeyDown:connect(function(dP)	
	if dP == "q" and activu == false then
		if (dagear == 3 and not g32hand) or dagear == 2 and rubbermodo > 1 then
			rubbermodo = 0
		else
			if dagear == 3 and g32hand and rubbermodo > 1 then
				rubbermodo = 1
			else
				if rubbermodo == 0 then
					rubbermodo = 1
				else
					if rubbermodo == 1 then
						rubbermodo = 2
					else
						if rubbermodo == 2 then
							rubbermodo = 3
						else
							rubbermodo = 0
						end
					end
				end
			end
		end
		updateguimode()
	else
		if dP == "e" and activu == false then
			if (dagear == 3 and not g32hand) or dagear == 2 and rubbermodo > 1 then
				rubbermodo = 0
			else
				if dagear == 3 and g32hand and rubbermodo > 1 then
					rubbermodo = 1
				else
					if dagear == 1 then
						if rubbermodo == 1 then
							rubbermodo = 0
						else
							if rubbermodo == 2 then
								rubbermodo = 1
							else
								if rubbermodo == 3 then
									rubbermodo = 2
								else
									if rubbermodo <= 0 then
										rubbermodo = 3
									end
								end
							end
						end
					else
						if rubbermodo == 1 then
							rubbermodo = 0
						else
							rubbermodo = 1
						end
					end
				end
			end
			updateguimode()
		else
			if dP == "f" and activu == false and (plr.UserId == 8488617 or e) then
				gear2change()
				rubbermodo = 0
				updateguimode()
			else
				if dP == "j" and activu == false and (plr.UserId == 8488617 or f) then
					gear3change()
					rubbermodo = 0
					updateguimode()
				else
					if dP == "t" and activu == false and (plr.UserId == 8488617 or f) and dagear == 3 then
						g3twohand()
						rubbermodo = 2
						updateguimode()
					else
						if dP == "b" and plr.UserId == 8488617 then
							busolelel()
						end
					end
				end
			end
		end
	end
end)
            ]]
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(dP)
	if dP == "q" and activu == false then -- Does nothing?
		if dagear == 2 and rubbermodo > 1 then
			rubbermodo = 0
		elseif dagear == 3 and g32hand and rubbermodo > 1 then
			rubbermodo = 1
		elseif rubbermodo == 0 then
			rubbermodo = 1
		elseif rubbermodo == 1 then
			rubbermodo = 2
		elseif rubbermodo == 2 then
			rubbermodo = 3
		else
			rubbermodo = 0
		end
		updateguimode()
	end
	if dP == "f" and activu == false then
		gear2change()
		rubbermodo = 0
		updateguimode()
	end
	if dP == "t" and activu == false and dagear == 3 then
		g3twohand()
		rubbermodo = 2
		updateguimode()
	end
	if dP == "j" and activu == false then
		gear3change()
		rubbermodo = 0
		updateguimode()
	end
	if dP == "b" and plr.UserId == 8488617 then
		busolelel()
	end
end)
tool.Activated:connect(function()	
	if human.Health <= 0 then
		return 
	end
	if dagear == 1 then
		if rubbermodo == 0 then
			shoot()
		elseif rubbermodo == 1 then
			gatling()
		elseif rubbermodo == 2 then
			bazooka()
		elseif rubbermodo == 3 then
			rocket()
		end
	elseif dagear == 2 then
		if rubbermodo == 0 then
			jetpunch()
		elseif rubbermodo == 1 then
			jetgat()
		elseif rubbermodo == 2 then
			jetbazoo()
		end
	elseif dagear == 3 and not g32hand and rubbermodo == 0 then
		giganpist()
	end
	if dagear == 3 and g32hand then
		if rubbermodo == 2 then
			giganbazooka()
		elseif rubbermodo == 1 then
			gigangatl()
		end
	end
end)
tool.Equipped:connect(function()	
	selected = true
end)
tool.Unequipped:connect(function()	
	selected = false
end)
human.Died:connect(function()	
	if cam.CameraType == "Scriptable" then
		cam.CameraType = "Custom"
	end
	cd = ang(rd(0), rd(0), rd(0)) * cf(0, -0.25, 0)
	cg = ang(rd(0), rd(0), rd(0)) * cf(0, -0.25, 0)
	ci = ang(rd(0), rd(0), rd(0)) * cf(0, -0.25, 0) * ang(rd(0), rd(180), rd(90))
	ck = Vector3.new(0, 0, 0)
	cm = 0
	co = 0
	cq = Vector3.new(0, 0, 0)
end)
animpose = "Idle"
sine = 0
charge = 1
cos = math.cos
run()
game:GetService("RunService").RenderStepped:connect(function()	
	sine = sine + charge
	if sine >= 100000000 then
		sine = 0
	end
	if sine % 60 == 0 then
		g.Main.G2.Bar:TweenSize(UDim2.new(0.016666666666667 * g2lim, 0, 1, 0), 1, 3, 0.25)
		g.Main.G3.Bar:TweenSize(UDim2.new(0.016666666666667 * g3lim, 0, 1, 0), 1, 3, 0.25)
	end
	--[[repeat
		repeat
			if plr.UserId ~= 8488617 and dagear == 3 and sine % 60 == 0 then
				if g3lim <= 0 then
					game:GetService("RunService").RenderStepped:wait()
				end
			end
		until activu == false
	until selected == true
	gear3change()
	rubbermodo = 0
	updateguimode()
	if g32hand then
		g3lim = g3lim - 2
	else
		if not g32hand then
			g3lim = g3lim - 1
		end
	end
	repeat
		repeat
			if plr.UserId ~= 8488617 and dagear == 2 and sine % 60 == 0 then
				if g2lim <= 0 then
					game:GetService("RunService").RenderStepped:wait()
				end
			end
		until activu == false
	until selected == true
	gear2change()
	rubbermodo = 0
	updateguimode()
	g2lim = g2lim - 1
	if plr.UserId ~= 8488617 and dagear == 1 and sine % 120 == 0 then
		if g2lim < 59 then
			g2lim = g2lim + 1
		end
		if g3lim < 59 then
			g3lim = g3lim + 1
		end
	end]]
	if dagear == 3 and activu == false then
		local dQ = Ray.new(hrp.Position, Vector3.new(0, -5, 0))
		local dR = workspace:FindPartOnRayWithIgnoreList(dQ, {chr}, false, false)
		local dS = human:GetState()
		if dS.Value == 13 then
			animpose = "Sitting"
		else
			if hrp.Velocity.y > 1 and dR == nil then
				animpose = "Jumping"
			else
				if hrp.Velocity.y < -1 and dR == nil then
					animpose = "Falling"
				else
					if (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 2 then
						animpose = "Idle"
					else
						if (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 25 then
							animpose = "Walking"
						else
							if (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude > 25 then
								animpose = "TooFast"
							end
						end
					end
				end
			end
		end
		if animpose == "Idle" then
			lerpz(RJ, "C0", RJC0 * cf(0.1, -0.35, -0.05 * cos(sine / 40)) * ang(rd(18), rd(6), rd(15)), 0.3)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2 + 5 * cos(sine / 40)), rd(-1), rd(-14)), 0.3)
			lerpz(RS, "C0", RSC0 * cf(0, 0.05, 1) * ang(rd(0), rd(-170), rd(75)), 0.3)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			if g32hand then
				lerpz(LS, "C0", LSC0 * cf(0, 0.07, 0.95) * ang(rd(0), rd(160), rd(-75)), 0.3)
			else
				lerpz(LS, "C0", LSC0 * cf(0, 0.07, -0.45) * ang(rd(20), rd(-65), rd(-60 + 5 * cos(sine / 40))), 0.3)
			end
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(RH, "C0", RHC0 * cf(0, 0.05 * cos(sine / 40), 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LH, "C0", LHC0 * cf(0, 0.05 * cos(sine / 40), 0) * ang(rd(-10), rd(10), rd(-30)), 0.3)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		end
		if animpose == "Walking" then
			lerpz(RJ, "C0", RJC0 * cf(0.1, -0.35, -0.05) * ang(rd(20), rd(6), rd(15)), 0.3)
			lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(3), rd(-1), rd(-14)), 0.3)
			lerpz(RS, "C0", RSC0 * cf(0, 0.05, 1) * ang(rd(0), rd(-170), rd(75)), 0.3)
			lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			if g32hand then
				lerpz(LS, "C0", LSC0 * cf(0, 0.07, 0.95) * ang(rd(0), rd(160), rd(-75)), 0.3)
			else
				lerpz(LS, "C0", LSC0 * cf(0, 0.07, -0.45) * ang(rd(20), rd(-65), rd(-45)), 0.3)
			end
			lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(RH, "C0", RHC0 * cf(0, 0.05 * cos(sine / 40), 0) * ang(rd(-10), rd(-10), rd(20 + 30 * cos(sine / 6))), 0.3)
			lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
			lerpz(LH, "C0", LHC0 * cf(0, 0.05 * cos(sine / 40), 0) * ang(rd(-10), rd(10), rd(-20 + 30 * cos(sine / 6))), 0.3)
			lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
		end
	end
end)
dispose = function()	
	for j,dT in pairs(getfenv(0)) do
		dT = nil
	end
	error = nil
	print = nil
	warn = nil
	script:Destroy()
	script = nil
end

human.Died:connect(dispose)
chr.Changed:connect(function()	
	if chr.Parent == nil then
		dispose()
	end
end)