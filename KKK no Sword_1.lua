local Player = game.Players.LocalPlayer


function infect(char)
repeat wait() until char
local torso = char["Torso"]
repeat wait() until torso
local Head = char:FindFirstChild("Head")
if Head then
if Head:FindFirstChild("face") then
Head.face.Texture = "http://www.roblox.com/asset/?id=152527430"
end
end
for i,v in pairs(char:GetChildren()) do
if v:IsA("Shirt") or v:IsA("Pants") then
v:Destroy()
elseif v:IsA("BasePart") then
v.BrickColor = BrickColor.new("Dirt brown")
v.Changed:connect(function(prop)
if prop == "BrickColor" then
print("gi")
end
end)

end
end
local RA, LA, LL, RL, Head = torso["Right Shoulder"],torso["Left Shoulder"],torso["Left Hip"],torso["Right Hip"],torso["Neck"]
local sound = Instance.new("Sound", torso)
sound.SoundId = "rbxassetid://0"
sound.Volume = 0
sound.Looped = true
sound:Play()

end

for i,v in pairs(game.Players:GetPlayers()) do
infect(v.Character)
end

wait(1)
--------------------------------
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
z = Instance.new("Sound", torso)
z.SoundId = "rbxassetid://0" -- Put Music ID Here.
z.Looped = true
z.Volume = 1
wait(.1)
z:Play()
-----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------
hed.face.Texture = "rbxassetid://0"
char["Body Colors"].HeadColor = BrickColor.new("White")
char["Body Colors"].TorsoColor = BrickColor.new("White")
char["Body Colors"].LeftArmColor = BrickColor.new("White")
char["Body Colors"].RightArmColor = BrickColor.new("White")
char["Body Colors"].LeftLegColor = BrickColor.new("White")
char["Body Colors"].RightLegColor = BrickColor.new("White")
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=0"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=0"
end)
----------------------------------------------------
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()

Character.Head.Transparency = 1
 
local Orb = Instance.new("Part", Character)
Orb.Name = "Orb"

Orb.CanCollide = false
Orb.BrickColor = BrickColor.new("White")
Orb.Transparency = 0
Orb.Material = "Plastic"
Orb.Size = Vector3.new(1, 1, 1)


local M = Instance.new("SpecialMesh")
M.Parent = Orb
M.MeshId = "http://www.roblox.com/asset/?id=1033714"
M.Scale = Vector3.new(0.8, 3, 0.8)

 
local Weld = Instance.new("Weld", Orb)
Weld.Part0 = Character.Head
Weld.Part1 = Orb
Weld.C1 = CFrame.new(0, -0.5, 0)
--------------------------------------------------------
local Orbd = Instance.new("Part", Character)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false
Orbd.BrickColor = BrickColor.new("Really black")
Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.1, 0.1, 0.1)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = Character.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.2, -0.2, 0.5)

--------------------------------------------------------
local Orbvc = Instance.new("Part", Character)
Orbvc.Name = "Orbvc"
Orbvc.Shape = Enum.PartType.Ball
Orbvc.CanCollide = false
Orbvc.BrickColor = BrickColor.new("Really black")
Orbvc.Transparency = 0
Orbvc.Material = "Neon"
Orbvc.Size = Vector3.new(0.1, 0.1, 0.1)
Orbvc.TopSurface = Enum.SurfaceType.Smooth
Orbvc.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbvc)
Weld.Part0 = Character.Head
Weld.Part1 = Orbvc
Weld.C1 = CFrame.new(0.2, -0.2, 0.5)
---------------------
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()

Character.Head.Transparency = 1
 
local Camisa = Instance.new("Part", Character)
Camisa.Name = "Camisa"

Camisa.CanCollide = false
Camisa.BrickColor = BrickColor.new("Institutional white")
Camisa.Transparency = 1
Camisa.Material = "Plastic"
Camisa.Size = Vector3.new(1.5, 1.5, 1)

d = Instance.new("Decal",Camisa)
d.Texture = "http://www.roblox.com/asset/?id=14872518" 
d.Face = "Front"

 
local Weld = Instance.new("Weld", Camisa)
Weld.Part0 = Character.Torso
Weld.Part1 = Camisa
Weld.C1 = CFrame.new(0, 0, 0)
----------------------------------------
local p = game.Players.LocalPlayer--300899323
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local rj = root.RootJoint
local deb = false
local shot = 0
local stanceToggle = "Idle1"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local hb = game:GetService("RunService").Heartbeat
local Stepped = game:GetService("RunService").Stepped
math.randomseed(os.time())
hum.JumpPower = 100
hed.face:Remove()
----------------------------------------------------
fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)
----------------------------------------------------
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
ks = false;
}
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function NewPart(prnt,siz,cf,trans,anc,mat,col)
	local prt=Instance.new("Part")
	prt.Parent=prnt
	prt.Name="Part"
	prt.Size=siz
	prt.CanCollide=false
	prt.Anchored=anc
	prt.Locked=true
	prt.Transparency = trans
	prt.TopSurface=10
	prt.BottomSurface=10
	prt.FrontSurface=10
	prt.BackSurface=10
	prt.LeftSurface=10
	prt.RightSurface=10
	prt:BreakJoints()
	prt.CFrame=cf or CFrame.new(30,10,30)
	prt.Material=mat
	prt.BrickColor=BrickColor.new(col)
	m=Instance.new("SpecialMesh",prt)
	m.MeshType=6
	return prt
end
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
	return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
	end
end
 
function matrixInterpolate(a, b, t)
	local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
	local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
	local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
	local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
	local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
	local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
	local t = v1:Dot(v2)
	if not (t < 0 or t == 0 or t > 0) then 	-- Failsafe
		return CFrame.new()
	end
	return CFrame.new(
	v0.x, v0.y, v0.z,
	v1.x, v1.y, v1.z,
	v2.x, v2.y, v2.z,
	v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
z = Instance.new("Sound",char) --Smile: print("â?º")
z.SoundId = "rbxassetid://194920243"--410761150, 411368002
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(0.1)
z:Play()
----------------------------------------------------
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
----------------------------------------------------
--Left Arm
m = Instance.new("Model")
m.Name = "LeftArm"

p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.SmoothPlastic
p4.Name = "LeftArmPlate"
p4.Size = Vector3.new(1, 2, 1)
p4.Transparency = 1
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)





w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "LeftArmPlate_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(1.5, -18.1000156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(1.5, -18.1000156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(1.5, -18.950016, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(1.5, -18.950016, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(1.5, -18.6500149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(1.5, -18.6500149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(1.5, -18.3500156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(1.5, -18.3500156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(1.5, -18.0500126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(1.5, -18.0500126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(1.5, -17.7500172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(1.5, -17.7500172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(1.49142683, -27.338007, 3.81166649, 1, -2.04123751e-007, -6.57511308e-008, 1.67448022e-007, 0.500000119, 0.866025329, -1.06342185e-007, -0.866025269, 0.5)

m.Parent = larm
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", larm.LeftArm)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 1, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = larm
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", larm.LeftArm)
weld1.Part0 = cor
weld1.Part1 = larm.LeftArm.LeftArmPlate
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Right Arm
m2 = Instance.new("Model")
m2.Name = "RightArm"

p7 = Instance.new("Part", m2)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.SmoothPlastic
p7.Transparency = 1
p7.Name = "RightArmPlate"
p7.CFrame = CFrame.new(3.5, -9.54201603, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 2, 1)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)


w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "RightArmPlate_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(-3.5, -4.10001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-3.5, -4.10001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(-3.5, -4.95002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-3.5, -4.95002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(-3.5, -4.65001678, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-3.5, -4.65001678, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(-3.5, -4.35001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-3.5, -4.35001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(-3.5, -4.05001783, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-3.5, -4.05001783, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(-3.5, -3.75002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-3.5, -3.75002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p17
w16.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17.Part1 = p18
w17.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p19
w18.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m2.Parent = rarm
m2:MakeJoints()
----------------------------------------------------
local cor2 = Instance.new("Part", rarm.RightArm)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(1, 1, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = rarm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld2 = Instance.new("Weld", rarm.RightArm)
weld2.Part0 = cor2
weld2.Part1 = rarm.RightArm.RightArmPlate
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))


--Zyrodoxa
m8 = Instance.new("Model")
m8.Name = "Zyrodoxa"

p16 = Instance.new("Part", m8)
p16.BrickColor = BrickColor.new("Instutional white")
p16.Material = Enum.Material.Metal
p16.Name = "Handle"
p16.CFrame = CFrame.new(2.7e-005, -11.8500671, -1.1215378, 1, -4.08902174e-008, -5.95266769e-008, -5.95264673e-008, 4.47054163e-008, -1.00000322, 4.08900469e-008, 1.00000393, 3.27827877e-007)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0, 0, 0)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0, 0, 0)

w16 = Instance.new("Weld", p16)
w16.Name = "Block_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-2.69356715e-005, 1.12153399, 0.310250998, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w16.Part1 = p17
w16.C1 = CFrame.new(-2.69897973e-005, 0.238820702, 1.16951191, 1, -3.32849588e-008, -1.92696081e-009, -3.32849588e-008, -1, -5.96046448e-007, -1.92694105e-009, 5.96046448e-007, -1)

m8.Parent = rarm
m8:MakeJoints()
----------------------------------------------------
local cor8 = Instance.new("Part", rarm.Zyrodoxa)
cor8.Name = "Thingy"
cor8.Locked = true
cor8.BottomSurface = 0
cor8.CanCollide = false
cor8.Size = Vector3.new(1, 1, 1)
cor8.Transparency = 1
cor8.TopSurface = 0
corw8 = Instance.new("Weld", cor8)
corw8.Part0 = rarm
corw8.Part1 = cor8
corw8.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180))
corw8.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld8 = Instance.new("Weld", rarm.Zyrodoxa)
weld8.Part0 = cor8
weld8.Part1 = rarm.Zyrodoxa.Handle
weld8.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
models = {m,m2,m3,m4,m5,m6,m7,m8}
parts = {}
Stepped:connect(function()
	for i,v in pairs(models) do
		for _, a in pairs(v:GetChildren()) do
			if v:IsA("Part") and v.Name ~= "Thingy" then
				table.insert(parts, a)
				for i,v in pairs(parts) do
					v.CanCollide = false
				end
			end
		end
	end
end)
----------------------------------------------------
local animpose = "Idle1"
local lastanimpose = "Idle1"
local grab = false
local Smooth = 1
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------
--[[local hitbox = rarm.Zyrodoxa.Hitbox--Zyrodoxa is the name of the dagger k

function FindHumanoids()
	local function c_region(Position, Size)
		local SizeOffset = Size/2
	 	local Point1 = Position - SizeOffset
   		local Point2 = Position + SizeOffset
   		local a = Instance.new("Part", workspace)
   		a.Anchored = true
   		a.Size = Size
   		a.Position = Position
   		print("Hey!, I'm making a part!")
   		return Region3.new(Point1, Point2)
  	end
  	
    local a = c_region((hitbox.CFrame * CFrame.new(0, -1.285, 0)), Vector3.new(0.22, 0.6425, 1.22))
    local b = c_region((hitbox.CFrame * CFrame.new(0, -0.6425, 0)), Vector3.new(0.22, 0.6425, 1.22))
    local c = c_region((hitbox.CFrame * CFrame.new(0, 0.6425, 0)), Vector3.new(0.22, 0.6425, 1.22))
    local d = c_region((hitbox.CFrame * CFrame.new(0, 1.285, 0)), Vector3.new(0.22, 0.6425, 1.22))
    
    local regions = {a, b, c, d}
    
    local found_humanoids = {}
    local already_found = {char.Name}
    
    for _, region in pairs(regions) do
        for _, part in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(region, rarm.Zyrodoxa:GetChildren(), 100)) do
        	print(part, part.Parent, part.Name) ---nope
            if part.Parent:FindFirstChild("Humanoid") ~= nil and part.Parent.ClassName == "Model" and not part:isDescendantOf(char) then
                local humanoid = part.Parent:FindFirstChild("Humanoid")
                local name = humanoid.Parent.Name
                local exists = false
                for _, n in pairs(already_found) do
                    if n == name then
                        exists = true
                    end
                end
                if not exists then
                    table.insert(already_found, name)
                    table.insert(found_humanoids, humanoid)
                end
            elseif part.Parent.Parent:FindFirstChild("Humanoid") ~= nil and part.Parent.Parent.ClassName == "Model" and not part:isDescendantOf(char) then
                local humanoid = part.Parent.Parent:FindFirstChild("Humanoid")
                local name = humanoid.Parent.Parent.Name
                local exists = false
                for _, n in pairs(already_found) do
                    if n == name then
                        exists = true
                    end
                end
                if not exists then
                    table.insert(already_found, name)
                    table.insert(found_humanoids, humanoid)
                end
            end
        end
    end
    return found_humanoids
end

local humanoids = FindHumanoids()
if #humanoids == 0 then
	for i, v in pairs(humanoids) do
		print(v.Parent.Name)
		if Debounces.Slashing == true then
			v:TakeDamage(math.random(10,20) * math.random(1,3)) --max 60 damage?
		elseif Debounces.Slashing == false then
			wait()
		end
	end
	wait(0.3)
end]]--
----------------------------------------------------
--[[mouse.KeyDown:connect(function(key)
	if key == "f" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			for i = 1, 20 do
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1.05, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-4),0,0),0.1)
				CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),0.1)
				CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),0.1)
				CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),0.1)
				CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),0.1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6,0.6,-0.2)*CFrame.Angles(math.rad(8),math.rad(22),math.rad(15)), 0.8)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6,0.6,0.2)*CFrame.Angles(math.rad(-8),math.rad(12),math.rad(-12)), 0.8)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6), math.rad(0), 0), 0.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.1)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(5)), 0.1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(3), math.rad(0), math.rad(0)), 0.1)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-5)), 0.1)
				if Debounces.on == false then
					break
				end
				fat.Event:wait()
			end
		end
	end
end)]]--
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function Slam()
    local part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2.8,-1.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    local part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-2.4,-1.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Institutional white')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",larm)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(.1)
    x1 = Instance.new("Sound",larm)
    x1.SoundId = "http://www.roblox.com/asset/?id=206082327"
    x1.Pitch = ptez[math.random(1,#ptez)]
    x1.Volume = 1
    wait(.1)
	x:Play()
    x1:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(30,45))
        end
    end
    coroutine.resume(coroutine.create(function() 
        for i=0,0.62,0.13 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
        x:Destroy()
    end))
end
----------------------------------------------------
wPart = function(x,y,z,color,tr,cc,an,parent)
    local wp = Instance.new('WedgePart',parent or Weapon)
    wp.formFactor = 'Custom'
    wp.Size = Vector3.new(x,y,z)
    wp.BrickColor = BrickColor.new(color)
    wp.CanCollide = cc
    wp.Transparency = tr
    wp.Anchored = an
    wp.TopSurface,wp.BottomSurface = 0,0
    return wp
end

Mesh = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end 
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

local function CFrameFromTopBack(at, top, back)
    local right = top:Cross(back)
    return CFrame.new(at.x, at.y, at.z,
    right.x, top.x, back.x,
    right.y, top.y, back.y,
    right.z, top.z, back.z)
end

function Triangle(a, b, c)
    local edg1 = (c-a):Dot((b-a).unit)
    local edg2 = (a-b):Dot((c-b).unit)
    local edg3 = (b-c):Dot((a-c).unit)
    if edg1 <= (b-a).magnitude and edg1 >= 0 then
        a, b, c = a, b, c
    elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
        a, b, c = b, c, a
    elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
        a, b, c = c, a, b
    else 
        print("unreachable")
    end
    local len1 = (c-a):Dot((b-a).unit)
    local len2 = (b-a).magnitude - len1
    local width = (a + (b-a).unit*len1 - c).magnitude
    local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
    local list = {}
    if len1 > 0.01 then
        local w1 = wPart(0,0,0,'Institutional white',0.5,false,true,char)
        local sz = Vector3.new(0.2, width, len1)
        w1.Size = sz
        local sp = Mesh(w1,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w1.Size
        w1:BreakJoints()
        w1.Anchored = true
        w1.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                fat.Event:wait()
                w1.Transparency=w1.Transparency+0.03
            end
        end)
        w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
        table.insert(list,w1)
    end
    if len2 > 0.01 then
        local w2 = wPart(0,0,0,'Institutional white',0.5,false,true,char)
        local sz = Vector3.new(0.2, width, len2) 
        w2.Size = sz
        local sp = Mesh(w2,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w2.Size
        w2:BreakJoints()
        w2.Anchored = true
        w2.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                fat.Event:wait()
                w2.Transparency=w2.Transparency+0.03
            end
        end)
        w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
        table.insert(list,w2)
    end
    return unpack(list)
end

function trail(p,t,h)
	Spawn(function()
		local blcf = p.CFrame
		local scfr = blcf
		for i=1,t do
			local blcf = p.CFrame
			if scfr and (p.Position-scfr.p).magnitude > .1 then
				local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				scfr = blcf
			elseif not scfr then
				scfr = blcf
			end
			fat.Event:wait()
		end
		scfr=nil
	end)
end
--trail(char.Sword.Blade,1e1000,5)
----------------------------------------------------
function Dmg()
	local partofdeath = rarm.Zyrodoxa.Hitbox
	local function CreateRegion3FromLocAndSize(Position, Size)
		local SizeOffset = Size/2
		local Point1 = Position - SizeOffset
		local Point2 = Position + SizeOffset
		return Region3.new(Point1, Point2)
	end
	local reg = CreateRegion3FromLocAndSize(partofdeath.Position, partofdeath.Size)
	for i, v in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(reg, char:GetChildren(), 100)) do
		Spawn(function()
			if Debounces.Slashing == true and Debounces.Slashed == false then
				Debounces.Slashed = true
				ypcall(function()
					local humanoid = v.Parent:FindFirstChild("Humanoid") or v.Parent.Parent:FindFirstChild("Humanoid")
					humanoid:TakeDamage(math.random(10,18))
				end)
				wait(.4)
				Debounces.Slashed = false
			end
		end)
	end
end
----------------------------------------------------
pts = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
ptz = {0.7, 0.8, 0.9, 1}
idz = {"161006212", "161006195"}
function attackone()
	for i = 1, 13 do
		corw8.C0 = Lerp(corw8.C0, CFrame.new(-0.3, -1, -0.3) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)), 0.8)
		corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(30), math.rad(0)), 0.8)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, -0.3)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(-10)), 0.3)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.3)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0.4)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(-10)), 0.5)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(-40),math.rad(0)), 0.5)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(0),math.rad(-50),0), 0.5)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.5)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.7)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(18), math.rad(0), math.rad(15)), 0.7)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.4, -1.3, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(15)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.7, -0.9, -0.4) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.5)
		if Debounces.on == false then
			break
		end
		fat.Event:wait()
	end
	trail(rarm.Zyrodoxa.Hitbox,20,2)
	Debounces.Slashing = true
	wait(0.2)
	--[[z = Instance.new("Sound", hed)
	z.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
	z.Pitch = ptz[math.random(1,#ptz)]
	z.Volume = 1
	wait(.01)
	z:Play()]]--
	for i = 1, 14 do
		Dmg()
		corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0.2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)), 0.8)
		corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-40), math.rad(30), math.rad(0)), 0.8)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0.4)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(100)), 0.4)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(0)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, -0.3)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-20)), 0.4)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(0),math.rad(40),0), 0.7)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.7)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(-10), math.rad(-40), 0), 0.4)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.7, -0.9, -0.4) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-14), math.rad(0), math.rad(15)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(8), math.rad(0), math.rad(-10)), 0.5)
		if Debounces.on == false then break end
		rs:wait()
	end
	Debounces.Slashing = false
end
function attacktwo()
	Debounces.Slashing = true
	for i = 1, 14 do
		Dmg()
		corw8.C0 = Lerp(corw8.C0, CFrame.new(-0.37, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), 0.4)
		corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0)), 0.4)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(80)), 0.7)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad (-70)), 0.5)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-90), math.rad(0)), 0.5)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.7)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(-10), 0, math.rad(-10)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(10), 0, math.rad(10)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		if Debounces.on == false then
			break
		end
		rs:wait()
	end
end
----------------------------------------------------

----------------------------------------------------
definition = 5
bc = {}
bezierparts = {}
function NoOutline(Part)
	Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
function draw(p,d)
	for i=1,d do 
		local t = i/d
		bc[i] = p[1]*(1-t)^2+2*p[2]*(1-t)*t+p[3]*t^2
	end

	Spawn(function() fat.Event:wait()
		for i,v in pairs(bezierparts) do
			v.Transparency = 1
		end
	end)
end
--local points = {larm.Position,rarn.Position,invisipart.Position}
--draw(points,definition)

				fat.Event:wait()

			rpart = Instance.new("Part",rarm)
			NoOutline(rpart)
			rpart.Anchored = false
			rpart.Size = Vector3.new(1,1,1)
			rpart.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
			rpart.Transparency = 1
			newWeld(rarm, rpart, 0, 0, 0)
			rpart.Weld.C1 = CFrame.new(0, 1.1, 0)
			lpart = Instance.new("Part",larm)
			NoOutline(lpart)
			lpart.Anchored = false
			lpart.Size = Vector3.new(1,1,1)
			lpart.CFrame = larm.CFrame * CFrame.new(0,-1,0)
			lpart.Transparency = 1
			newWeld(larm, lpart, 0, 0, 0)
			lpart.Weld.C1 = CFrame.new(0, 1.1, 0)
			invisipart = Instance.new("Part",torso)
			NoOutline(invisipart)
			invisipart.Anchored = false
			invisipart.Size = Vector3.new(1,1,1)
			invisipart.Transparency = 1
			invisipart.CFrame = torso.CFrame
			newWeld(torso, invisipart, 0, 0, 0)
			invisipart.Weld.C1 = CFrame.new(0, 0, 6)
			table.insert(bezierparts, rpart)
			table.insert(bezierparts, lpart)
			table.insert(bezierparts, invisipart)
			for i = 1, 40 do
				local points = {lpart.Position,invisipart.Position,rpart.Position}
				draw(points,definition)
				--invisipart.Weld.C1 = invisipart.Weld.C1 + Vector3.new(0,0,0.6)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-90)), 0.1)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0), math.rad(0)), 0.2)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(0), 0, math.rad(-10)), 0.2)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(0), 0, math.rad(10)), 0.2)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
				if Debounces.on == false then
					break
				end
				fat.Event:wait()
			end
			for i,v in pairs(bezierparts) do
				v:Destroy()
			end
			--draw(points,definition)
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end

----------------------------------------------------
pitches = {1}
IDs = {"137473066"}
mouse.KeyDown:connect(function(key)
    if key == "q" then
		if Debounces.CanJoke == true then
			Debounces.CanJoke = false
			z = Instance.new("Sound",hed)
			z.SoundId = "rbxassetid://"..IDs[math.random(1,#IDs)]
			z.Pitch = 1
			z.Volume = 1
			z1 = Instance.new("Sound",hed)
			z1.SoundId = z.SoundId
			z1.Pitch = 1
			z1.Volume = 1
			wait()
			z:Play()
			z1:Play()
			wait(3)
			z:Destroy()
			z1:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "j" then
		if Debounces.CanJoke == true then
			Debounces.CanJoke = false
			z = Instance.new("Sound",hed)
			z.SoundId = "rbxassetid://415859013"
			z.Pitch = pitches[math.random(1,#pitches)]
			z.Volume = 1
			wait()
			z:Play()
			wait(2)
			z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "r" then
  game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Hello Nigger", "Red")
	end
end)
----------------------------------------------------
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "t" then
  game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"I Will Kill You", "Red")
	end
end)
----------------------------------------------------
Grab = false
mouse.KeyDown:connect(function(key)
    if key == "e" then
        Debounces.on = true
        Debounces.NoIdl = true
		Debounces.ks = true
        if Grab == false then
        gp = nil
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-80)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-70),0), 0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
            rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then break end
            fat.Event:wait()
        end
        con1=larm.LeftArm.LeftArmPlate.Touched:connect(function(hit)
		ht = hit.Parent
			for i,v in pairs(ht:GetChildren()) do 
				if v:IsA("Part") then
					v.CanCollide = false
					v.CustomPhysicalProperties = PhysicalProperties.new(0.001,0.001,0.001,0.001,0.001)
				end
			end
			hum1=ht:FindFirstChild('Humanoid')
			if hum1 ~= nil then
				if Debounces.ks==true then
					z = Instance.new("Sound",hed)
					z.SoundId = "rbxassetid://169380525"
					z.Volume = 1
					z:Play()
					Debounces.ks=false
				end
				hum1.PlatformStand=true
				hum1:ChangeState'Physics'
				gp = ht
				Grab = true
				asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-1,0.6),CFrame.new(0,0,0))
				asd.Parent = larm
				asd.Name = "asd"
				asd.C0=asd.C0*CFrame.Angles(math.rad(-90),math.rad(180),0)
				stanceToggle = "Grabbed"
			--[[elseif hum1 == nil then
				con1:disconnect()
				wait() return]]--
			end
        end)
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.65,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
            rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then break end
            fat.Event:wait()
        end
		con1:disconnect()
		Debounces.on = false
		Debounces.NoIdl = false
		elseif Grab == true then
        Grab = false
			--[[for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(60)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.5)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-60)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(70),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), 0), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end]]--
			for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.3)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), 0.3)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(-60),0), 0.3)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.3)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then end
			rs:wait()
		end
		for i = 1, 12 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.6)
            rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.3,-0.1)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-32)), 0.6)
            larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(40), math.rad(14)),0.6)
            hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0)), 0.6)
            torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.6)
            lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.4, .2, -0.8) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.6)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.4)
			if Debounces.on == false then end
			rs:wait()
		end
		Slam()
		if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
				if v:IsA("Part") then
					v.CanCollide = true
					v.CustomPhysicalProperties = PhysicalProperties.new(1,1,1,1,1)
				end
			end
		end
		stanceToggle = "Idle1"
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        ht=nil
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
			Grab = false
			Debounces.on = false
			Debounces.NoIdl = false
        end
    end
end)
----------------------------------------------------
Change = false
mouse.KeyDown:connect(function(key)
    if key == "n" then
        if Change == false then
            Change = true
        stanceToggle = "Idle2"
    elseif Change == true then
        Change = false
        stanceToggle = "Idle1"
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
		Swing = 2
        char.Humanoid.WalkSpeed = 28
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
		Swing = 1
        char.Humanoid.WalkSpeed = 16
    end
end)
----------------------------------------------------

jump = false
rs:connect(function()
	if char.Humanoid.Jump == true then
		jump = true
	else
		jump = false
	end
	char.Humanoid.FreeFalling:connect(function(f)
		if f then
			ffing = true
		else
			ffing = false
		end
	end)
	sine = sine + change
	if jump == true then
		animpose = "Jumping"
	elseif ffing == true then
		animpose = "Freefalling"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
		animpose = "Idle"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
		animpose = "Walking"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
		animpose = "Running"
	end
	RightLeg = CFrame.new(0.5,-1,0)
	LeftLeg = CFrame.new(-0.5,-1,0)

	lefth = (torso.CFrame*LeftLeg)
	righth = (torso.CFrame*RightLeg)

	speed = Vector3.new(torso.Velocity.X,0,torso.Velocity.Z)

	TiltOnAxis = (torso.CFrame-torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if stanceToggle == "Idle1" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-12-4*math.cos(sine/22)),math.rad(-12-2*math.cos(sine/22)),math.rad(12+2*math.cos(sine/22))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-0.2)*CFrame.Angles(math.rad(20+4*math.cos(sine/22)),math.rad(-22-2*math.cos(sine/22)),math.rad(-15-2*math.cos(sine/22))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-12+2.5*math.cos(sine/22)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-2+2*math.cos(sine/22)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(5), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(-5), math.rad(5)), 0.2)
			elseif stanceToggle == "Idle2" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-22-4*math.cos(sine/12)),math.rad(-40-2*math.cos(sine/12)),math.rad(24+2*math.cos(sine/12))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.6,-0.6)*CFrame.Angles(math.rad(90+4*math.cos(sine/12)),math.rad(0),math.rad(50-2*math.cos(sine/12))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-6+2.5*math.cos(sine/12)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20+2*math.cos(sine/12)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(-7-2*math.cos(sine/12)), math.rad(7), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, -0.2) * CFrame.Angles(math.rad(-30-2*math.cos(sine/12)), math.rad(-9), math.rad(5)), 0.2)
			end
			fat.Event:wait()
		end
		else
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			change = 0.5
			if stanceToggle == "Idle1" then
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1.05+0.03*math.cos(sine/5), 0-0.1*math.cos(sine/10)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+8*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.3)

				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6+0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(8+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(15+2*math.cos(sine/10))), 0.8)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6-0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(-8-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-12-3*math.cos(sine/10))), 0.8)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
			elseif stanceToggle == "Idle2" then

				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65-0.1*math.cos(sine/3),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20-2*math.cos(sine/3))), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.23, 0.5, -.56) * CFrame.Angles(math.rad(88+4*math.cos(sine/3)), 0, math.rad(45)), 0.6)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(-10+2*math.cos(sine/6)), 0, 0), 0.8)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
				--hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-5-10*math.cos(sine/18)), math.sin(sine/36)/3, 0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.15) * CFrame.Angles(math.rad(-9-2*math.cos(sine/6)), 0, 0), 0.8)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1-0.1*math.cos(sine/3), 0+0.04*math.cos(sine/6)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56-2*math.cos(sine/6)), 0, 0), 0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.8)
			elseif stanceToggle == "Grabbed" then
				grab = true
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(sine/14))), 0.2)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),-.5)*CFrame.Angles(math.rad(90+4*math.cos(sine/14)),math.rad(0),math.rad(-80+4*math.cos(sine/14))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(sine/14)),math.rad(70-4*math.cos(sine/14)),0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			end
		elseif animpose == "Walking" then
			if stanceToggle == "Grabbed" then
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120+4*math.cos(sine/2)),math.rad(0),math.rad(-30+4*math.cos(sine/4))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			elseif stanceToggle ~= "Grabbed" then
				change = 1
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				--lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.9-0.24*math.cos(sine/4)/2.8, -0.05 + math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)-math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				--rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.9+0.24*math.cos(sine/4)/2.8, -0.05 + -math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)+math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			end
		elseif animpose == "Running" then
			change = 1
			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)

			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.24+.6*math.cos(sine/4)/1.4, 0.54, 0+0.8*math.cos(sine/4)) * CFrame.Angles(math.rad(6-140*math.cos(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.cos(sine/4))), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24+.6*math.cos(sine/4)/1.4, 0.54, 0-0.8*math.cos(sine/4))*CFrame.Angles(math.rad(6+140*math.cos(sine/4)/1.2), math.rad(0), math.rad(20+70*math.cos(sine/4))), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-8+12*math.cos(sine/2)/1.5), math.rad(0+12*math.cos(sine/4)), math.rad(0)),0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/2)/1.7, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/2)/1.5), math.rad(0-12*math.cos(sine/4))-root.RotVelocity.Y/10, math.rad(0)+root.RotVelocity.Y/20), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8-0.4*math.cos(sine/4)/2, math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + -math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8+0.4*math.cos(sine/4)/2, -math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Jumping" then

			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Freefalling" then

			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-40),math.rad(20),math.rad(50)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(110),math.rad(-20),math.rad(-30)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5, 0.2) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -0.6) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		end
	end
end)
hum.MaxHealth = 5000
wait(3)
hum.Health = 5000