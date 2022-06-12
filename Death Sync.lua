
--

--
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
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Normal"
local t = tick()
local Smooth = 1
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
ra.CanCollide = true
la = char:findFirstChild("Left Arm")
la.CanCollide = true
rl = char:findFirstChild("Right Leg")
rl.CanCollide = true
ll = char:findFirstChild("Left Leg")
ll.CanCollide = true
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
math.randomseed(os.time())
hum.WalkSpeed = 7
if char:findFirstChild("Health") then
	char.Health:Destroy()
end
char:WaitForChild'Body Colors'
char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
--
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
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Normal"
math.randomseed(os.time())
hum.WalkSpeed = 7
hum.MaxHealth = math.huge
wait()
hum.Health = math.huge
----------------------------------------------------
if char:findFirstChild("Shirt") then
	char.Shirt:Destroy()
end
if char:findFirstChild("Pants") then
	char.Pants:Destroy()
end
if char:findFirstChild("Roblox") then
	char.Roblox:Destroy()
end
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=461719067"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=461719157"
----------------------------------------------------
local Touche = {char.Name, }
Mouse = p:GetMouse()
mouse = p:GetMouse()
m = p:GetMouse()
char.Animate.Disabled = true
char.Head.Transparency = 0
anglespeed = 0
canstep = true
active = true
org = char.HumanoidRootPart.RootJoint.C0
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 15, 0)
----

local t = tick()
local Smooth = 1
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
ra.CanCollide = true
la = char:findFirstChild("Left Arm")
la.CanCollide = true
rl = char:findFirstChild("Right Leg")
rl.CanCollide = true
ll = char:findFirstChild("Left Leg")
ll.CanCollide = true
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
scl = function(m)
  
  for i,v in pairs(m:GetChildren()) do
    if v:IsA("SpecialMesh") or v:IsA("DataModelMesh") then
      if v.MeshType == Enum.MeshType.FileMesh then
        v.Scale = v.Scale * 2
      else
        v.Scale = v.Scale * 2
      end
    else
    end
    if v:IsA("BasePart") then
      do
        scl(v)
        -- DECOMPILER ERROR at PC39: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC39: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end

scl(char)
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
  
  local wld = Instance.new("Weld", wp1)
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
  return wld
end
--
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
--
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
--
local mult = 2
la.Size = la.Size * mult
ra.Size = ra.Size * mult
ll.Size = ll.Size * mult
rl.Size = rl.Size * mult
torso.Size = torso.Size * mult
rootpart.Size = rootpart.Size * mult
local LeftShoulder = newWeld(torso, la, -1.5 * mult, 0.5 * mult, 0)
LeftShoulder.C1 = CFrame.new(0, 0.5 * mult, 0)
local RightShoulder = newWeld(torso, ra, 1.5 * mult, 0.5 * mult, 0)
RightShoulder.C1 = CFrame.new(0, 0.5 * mult, 0)
local Neck = newWeld(torso, head, 0, mult, 0)
local LeftHip = newWeld(torso, ll, -0.5 * mult, -1 * mult, 0)
LeftHip.C1 = CFrame.new(0, mult, 0)
local RightHip = newWeld(torso, rl, 0.5 * mult, -1 * mult, 0)
RightHip.C1 = CFrame.new(0, mult, 0)
local Torso2 = rj:Clone()
Torso2.Part0 = rootpart
Torso2.Part1 = torso
Torso2.Parent = rootpart
Neck.C1 = CFrame.new(0, -(mult / 2), 0)
neckc0 = Neck.C0
rsc0 = RightShoulder.C0
lsc0 = LeftShoulder.C0
llc0 = LeftHip.C0
rlc0 = RightHip.C0
rootc0 = Torso2.C0
rootc1 = Torso2.C1
wait()
deg = math.deg
rad = math.rad
asin = math.asin
atan2 = math.atan2
cos = math.cos
sin = math.sin
rad = math.sin
getAngles = function(cf)
end
-------------
local Target = game.Players.LocalPlayer.Name

local Character = game.Workspace[Target]

local hat = Instance.new('Hat', Character)
hat.AttachmentPos = Vector3.new(0, -2, 0)

local handle = Instance.new('Part', hat)
handle.Name = 'Handle'

local mesh = Instance.new('SpecialMesh')
mesh.Parent = handle
mesh.MeshId = 'rbxassetid://215680403'
mesh.TextureId = 'rbxassetid://303587942'
mesh.Scale = Vector3.new(2, 2, 2)
--

local Character = game.Workspace[Target]

local hat = Instance.new('Hat', Character)
hat.AttachmentPos = Vector3.new(0, -0.2, 0.3)

local handle = Instance.new('Part', hat)
handle.Name = 'Handle'

local mesh = Instance.new('SpecialMesh')
mesh.Parent = handle
mesh.MeshId = 'rbxassetid://93129244'
mesh.TextureId = 'rbxassetid://303587942'
mesh.Scale = Vector3.new(2, 2, 2)
--

--
Player=game:GetService("Players").LocalPlayer 
-----------------------------------------------------------------
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
local stanceToggle = "Normal"
local l = game:GetService("Lighting")
local runs = game:GetService("RunService")
local debris=game:service"Debris"
local rs = runs.RenderStepped
local hb = runs.Heartbeat
local step = runs.Stepped
local stanceToggle = "Normal"
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
local och = 0
-------
--
wait'.5'
local WrapMaterial="SmoothPlastic"
local WrapColor=BrickColor.new("Brown")
local BladeMaterial='Neon'
local HandleMaterial='Neon'
local LightColor=BrickColor.new("Cyan")
local HandleColor=BrickColor.new("Really black")
local BladeColor=BrickColor.new("Institutional white")
local BladeRefl=.3
local AttackOrbColor=BrickColor.new("White")
local HealOrbColor=BrickColor.new("New Yeller")

local plr = game.Players.LocalPlayer
local chr = plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
-------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
ks = false;
RKick = false;
RKicked = false;
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
--------------------------
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
--------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
--------------------------
--
local m = Instance.new("Model")
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Institutional white")
p1.Transparency = 1
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 0.600000024, 1.5)
p1.CFrame = CFrame.new(67.4994888, 12.1560526, 73.0205841, 0.999972522, -3.59117985e-005, -8.00192356e-006, -1.39250187e-005, 0.358383715, -0.933530986, 5.28097153e-005, 0.933500648, 0.358406395)
p1.CanCollide = false
p1.Locked = true
p1.Elasticity = 0
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really black")
p2.Transparency = 1
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 2.9000001, 1)
p2.CFrame = CFrame.new(67.4995728, 11.7633543, 74.2129135, -1.30959779e-005, 2.79811252e-006, 0.999972522, 0.961226642, 0.275612593, -7.50799518e-006, -0.275637805, 0.96119839, 1.01176247e-005)
p2.CanCollide = false
p2.Locked = true
p2.Elasticity = 0
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Institutional white")
p3.Transparency = 1
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 1.20000005, 2.0999999)
p3.CFrame = CFrame.new(67.4994965, 12.6401453, 73.9670334, 0.999972522, -3.52207899e-005, -8.10639358e-006, -1.61500211e-005, 0.309035271, -0.951007903, 5.24176576e-005, 0.950978875, 0.309059501)
p3.CanCollide = false
p3.Locked = true
p3.Elasticity = 0
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Institutional white")
p4.Transparency = 1
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 1.43999994, 2.05000019)
p4.CFrame = CFrame.new(67.4995575, 11.8683414, 76.1565704, 0.999972522, -2.5085672e-005, -1.53700166e-005, -4.86194367e-005, -0.800831437, -0.598821938, 1.9131101e-005, 0.598835468, -0.800796151)
p4.CanCollide = false
p4.Locked = true
p4.Elasticity = 0
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Institutional white")
p5.Transparency = 1
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 1.20000005, 3.20000005)
p5.CFrame = CFrame.new(67.4995193, 13.241991, 74.8357468, 0.999972522, -3.59118021e-005, -8.00191992e-006, -1.39250224e-005, 0.358383656, -0.933530807, 5.2809708e-005, 0.933500469, 0.358406246)
p5.CanCollide = false
p5.Locked = true
p5.Elasticity = 0
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p6 = Instance.new("Part", m)
p6.Name = "Handle"
p6.BrickColor = BrickColor.new("Really black")
p6.Transparency = 1
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.5999999, 13.6000004, 1)
p6.CFrame = CFrame.new(67.5017471, 11.2780685, 66.1421967, -1.18190947e-005, 6.28741009e-006, 0.999972522, 0.99995929, -1.39772892e-005, -7.50630716e-006, -1.79708004e-005, 0.999939024, 1.01296728e-005)
p6.CanCollide = false
p6.Locked = true
p6.Elasticity = 0
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Institutional white")
p7.Transparency = 1
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 1.00999999, 1.05000019)
p7.CFrame = CFrame.new(67.5174179, 10.5228004, 76.3114471, 0.999972522, -2.76626724e-005, -6.72184569e-006, -4.7347472e-005, -0.91489929, -0.403581172, 2.14323372e-005, 0.403602213, -0.914867818)
p7.CanCollide = false
p7.Locked = true
p7.Elasticity = 0
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Institutional white")
p8.Transparency = 1
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 1.00999999, 1.05000019)
p8.CFrame = CFrame.new(67.5074387, 8.51285458, 76.8714371, 0.999972522, -2.76626724e-005, -6.72184387e-006, -4.73474684e-005, -0.91489917, -0.403581113, 2.14323354e-005, 0.403602153, -0.914867699)
p8.CanCollide = false
p8.Locked = true
p8.Elasticity = 0
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Transparency = 1
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 1.07999957, 1)
p9.CFrame = CFrame.new(67.5095749, 7.1092, 74.5051422, -2.60536999e-005, -5.21559741e-006, 0.999972522, 0.35323599, -0.935490847, -1.50012565e-005, 0.935460567, 0.353258699, 4.2632455e-005)
p9.CanCollide = false
p9.Locked = true
p9.Elasticity = 0
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.550000012, 1, 0.550000012)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.Transparency = 1
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 1.41999948, 1)
p10.CFrame = CFrame.new(67.489624, 8.67401791, 72.7929764, -9.47785156e-006, -9.42233055e-006, 0.999972522, 0.292371064, 0.956263304, -7.54374832e-006, -0.956253231, 0.292334616, 1.01081387e-005)
p10.CanCollide = false
p10.Locked = true
p10.Elasticity = 0
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.Transparency = 1
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1, 1.50999951, 1)
p11.CFrame = CFrame.new(67.509552, 7.11887455, 70.3475952, -1.87569385e-005, 1.80455972e-005, 0.999972522, -0.36222899, -0.932047009, -9.30004444e-006, 0.932039678, -0.362191886, 4.04359016e-005)
p11.CanCollide = false
p11.Locked = true
p11.Elasticity = 0
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.550000012, 1, 0.550000012)
p12 = Instance.new("Part", m)
p12.Name = "BladeCenter"
p12.BrickColor = BrickColor.new("Dark stone grey")
p12.Transparency = 1
p12.Material = Enum.Material.Concrete
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Size = Vector3.new(1, 2, 2)
p12.CFrame = CFrame.new(67.4995346, 6.83217764, 72.2514038, -0.999972522, 2.42275873e-005, 0.000103325896, -8.39982677e-005, 4.44650614e-005, -0.999960959, -4.06451727e-005, -0.999940753, -1.25430051e-005)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.499999911, 1, 0.699999928)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.Transparency = 1
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(2.91000009, 4.3300004, 1)
p13.CFrame = CFrame.new(67.5096359, 9.31026554, 73.9751816, 7.60371313e-006, 1.0943455e-005, 0.999972522, -0.119072244, -0.99284631, -7.55448127e-006, 0.992830038, -0.119038157, 1.01703836e-005)
p13.CanCollide = false
p13.Locked = true
p13.Elasticity = 0
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(1, 1, 0.400000006)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.Transparency = 1
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(2.5, 2.17999935, 1)
p14.CFrame = CFrame.new(67.4896011, 10.1621294, 72.6420059, -1.55498967e-007, -1.33476442e-005, 0.999972522, -0.462319613, 0.886669755, -7.56198779e-006, -0.886637092, -0.462338567, 1.01078904e-005)
p14.CanCollide = false
p14.Locked = true
p14.Elasticity = 0
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.Transparency = 1
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1.16999996, 4.2699995, 1)
p15.CFrame = CFrame.new(67.5095901, 9.35303593, 70.6884613, -1.24399676e-005, -4.94209144e-006, 0.999972522, 0.645082474, 0.764063478, -7.52419282e-006, -0.764068604, 0.645045042, 1.0099785e-005)
p15.CanCollide = false
p15.Locked = true
p15.Elasticity = 0
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(1, 1, 0.400000006)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.Transparency = 1
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1.68999994, 4.76000023, 1)
p16.CFrame = CFrame.new(67.4996033, 9.63990211, 75.3800278, 2.98175655e-006, 1.30014914e-005, 0.999972522, 0.258795738, -0.965893507, -7.53869244e-006, 0.965865672, 0.258821338, 1.01718706e-005)
p16.CanCollide = false
p16.Locked = true
p16.Elasticity = 0
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(1, 1, 0.400000006)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.Transparency = 1
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.78999996, 4.21999979, 1)
p17.CFrame = CFrame.new(67.499588, 9.28996372, 69.8789978, -9.50601952e-006, -9.41252802e-006, 0.999972522, 0.293352425, 0.955965877, -7.53842551e-006, -0.955955863, 0.293315947, 1.00904235e-005)
p17.CanCollide = false
p17.Locked = true
p17.Elasticity = 0
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(1, 1, 0.400000006)
p18 = Instance.new("WedgePart", m)
p18.BrickColor = BrickColor.new("Dark stone grey")
p18.Transparency = 1
p18.Name = "BladePart1"
p18.Material = Enum.Material.Concrete
p18.Name = "Wedge"
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1, 4, 2)
p18.CFrame = CFrame.new(67.499321, 6.83199787, 69.4816895, 0.999972522, -3.68033288e-005, -4.22928351e-005, 2.29664256e-005, -1.65102574e-005, 0.999963701, -2.03872096e-005, -0.999943435, -4.84290831e-005)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Wedge
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.499999911, 0.899999976, 0.699999928)
p19 = Instance.new("WedgePart", m)
p19.BrickColor = BrickColor.new("Dark stone grey")
p19.Transparency = 1
p19.Name = "BladePart2"
p19.Material = Enum.Material.Concrete
p19.Name = "Wedge"
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 4, 2)
p19.CFrame = CFrame.new(67.4994736, 6.83213568, 75.0314102, -0.999972522, 3.68059118e-005, -0.000103325001, -8.40002976e-005, -4.4521752e-005, 0.999963701, 2.03864402e-005, 0.999943435, 1.26029336e-005)
p19.CanCollide = false
p19.Locked = true
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.499999911, 0.899999976, 0.699999928)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.Transparency = 1
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(2.53000021, 2.39999938, 1)
p20.CFrame = CFrame.new(67.4996414, 7.91898966, 71.4148178, -1.09432585e-005, 7.6432425e-006, 0.999972522, 0.992849231, -0.119072601, -7.55000656e-006, 0.119038492, 0.992832959, 1.01311334e-005)
p20.CanCollide = false
p20.Locked = true
p20.Elasticity = 0
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Institutional white")
p21.Transparency = 1
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(1, 1.43999994, 1.59000015)
p21.CFrame = CFrame.new(67.509613, 9.57073689, 76.6228256, 0.999972522, -2.50856156e-005, -1.53699839e-005, -4.86196222e-005, -0.800835371, -0.598824739, 1.91311228e-005, 0.59883821, -0.800800025)
p21.CanCollide = false
p21.Locked = true
p21.Elasticity = 0
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-67.5030899, -72.5280457, -14.8209743, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w1.Part1 = p2
w1.C1 = CFrame.new(9.14727688, -74.5847855, -67.5001221, -4.37113883e-008, 0.961261749, -0.27563718, 0, 0.27563718, 0.961261749, 1, 4.20180868e-008, -1.2048484e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(9.14727688, -74.5847855, -67.5001221, -4.37113883e-008, 0.961261749, -0.27563718, 0, 0.27563718, 0.961261749, 1, 4.20180868e-008, -1.2048484e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(-67.5030823, -74.2541809, -10.8368053, 1, -8.59976626e-006, 4.22903977e-005, -3.75621021e-005, 0.30906105, 0.951042175, -2.12490559e-005, -0.951042175, 0.30906105)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-67.5030823, -74.2541809, -10.8368053, 1, -8.59976626e-006, 4.22903977e-005, -3.75621021e-005, 0.30906105, 0.951042175, -2.12490559e-005, -0.951042175, 0.30906105)
w3.Part1 = p4
w3.C1 = CFrame.new(-67.5002975, -36.1002579, 68.1035233, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-67.5002975, -36.1002579, 68.1035233, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
w4.Part1 = p5
w4.C1 = CFrame.new(-67.5031891, -74.611969, -14.457736, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-67.5031891, -74.611969, -14.457736, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w5.Part1 = p6
w5.C1 = CFrame.new(-11.2799978, -66.1456223, -67.5023346, -4.37113883e-008, 1, 4.37113883e-008, 0, -4.37113883e-008, 1, 1, 4.37113883e-008, 1.91068547e-015)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-11.2799978, -66.1456223, -67.5023346, -4.37113883e-008, 1, 4.37113883e-008, 0, -4.37113883e-008, 1, 1, 4.37113883e-008, 1.91068547e-015)
w6.Part1 = p7
w6.C1 = CFrame.new(-67.5183792, -21.1694489, 74.0717163, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-67.5183792, -21.1694489, 74.0717163, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w7.Part1 = p8
w7.C1 = CFrame.new(-67.508461, -23.234499, 73.7728119, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-67.508461, -23.234499, 73.7728119, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w8.Part1 = p9
w8.C1 = CFrame.new(-72.2151413, -19.6674671, -67.5124359, -2.77766703e-005, 0.353263557, 0.935524285, -1.84533783e-005, -0.935524285, 0.353263557, 1, -7.4510931e-006, 3.25046385e-005)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-72.2151413, -19.6674671, -67.5124359, -2.77766703e-005, 0.353263557, 0.935524285, -1.84533783e-005, -0.935524285, 0.353263557, 1, -7.4510931e-006, 3.25046385e-005)
w9.Part1 = p10
w9.C1 = CFrame.new(67.0792923, -29.5803547, -67.4901428, -2.24114753e-008, 0.292369425, -0.956305802, 3.04095332e-010, 0.956305802, 0.292369425, 1, 6.26159258e-009, -2.15211493e-008)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(67.0792923, -29.5803547, -67.4901428, -2.24114753e-008, 0.292369425, -0.956305802, 3.04095332e-010, 0.956305802, 0.292369425, 1, 6.26159258e-009, -2.15211493e-008)
w10.Part1 = p11
w10.C1 = CFrame.new(-62.9921722, 32.1197624, -67.5121918, -2.88835581e-005, -0.362230271, 0.932088912, 9.3476192e-006, -0.932088912, -0.362230271, 1, -1.74967965e-006, 3.03080251e-005)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-62.9921722, 32.1197624, -67.5121918, -2.88835581e-005, -0.362230271, 0.932088912, 9.3476192e-006, -0.932088912, -0.362230271, 1, -1.74967965e-006, 3.03080251e-005)
w11.Part1 = p12
w11.C1 = CFrame.new(67.5028763, 72.2527161, 6.8300252, -1, -9.15522687e-005, -3.05189751e-005, 3.05161811e-005, 3.05189751e-005, -1, 9.15532e-005, -1, -3.05161811e-005)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(67.5028763, 72.2527161, 6.8300252, -1, -9.15522687e-005, -3.05189751e-005, 3.05161811e-005, 3.05189751e-005, -1, 9.15532e-005, -1, -3.05161811e-005)
w12.Part1 = p13
w12.C1 = CFrame.new(-72.3439255, 18.054121, -67.5101624, -4.09776035e-008, -0.11906305, 0.992886722, 4.05430745e-010, -0.992886722, -0.11906305, 1, -4.47637571e-009, 4.0734399e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-72.3439255, 18.054121, -67.5101624, -4.09776035e-008, -0.11906305, 0.992886722, 4.05430745e-010, -0.992886722, -0.11906305, 1, -4.47637571e-009, 4.0734399e-008)
w13.Part1 = p14
w13.C1 = CFrame.new(69.1140671, 24.5752277, -67.4901428, -2.4837334e-008, -0.462350011, -0.886697888, 5.64353009e-010, 0.886697888, -0.462350011, 1, -1.19839818e-008, -2.17623022e-008)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(69.1140671, 24.5752277, -67.4901428, -2.4837334e-008, -0.462350011, -0.886697888, 5.64353009e-010, 0.886697888, -0.462350011, 1, -1.19839818e-008, -2.17623022e-008)
w14.Part1 = p15
w14.C1 = CFrame.new(47.9809418, -52.7511749, -67.5101318, -3.94735267e-008, 0.64509654, -0.764101744, -4.55740418e-010, 0.764101744, 0.64509654, 1, 2.58124242e-008, -2.98677882e-008)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(47.9809418, -52.7511749, -67.5101318, -3.94735267e-008, 0.64509654, -0.764101744, -4.55740418e-010, 0.764101744, 0.64509654, 1, 2.58124242e-008, -2.98677882e-008)
w15.Part1 = p16
w15.C1 = CFrame.new(-75.3105469, -10.1974039, -67.5001221, -4.37113883e-008, 0.258818924, 0.965925872, 0, -0.965925872, 0.258818924, 1, 1.13133343e-008, 4.22219593e-008)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-75.3105469, -10.1974039, -67.5001221, -4.37113883e-008, 0.258818924, 0.965925872, 0, -0.965925872, 0.258818924, 1, 1.13133343e-008, 4.22219593e-008)
w16.Part1 = p17
w16.C1 = CFrame.new(64.0820847, -29.3829937, -67.5001373, -4.09009289e-008, 0.293349952, -0.956005633, 4.38312497e-010, 0.956005633, 0.293349952, 1, 1.15792238e-008, -3.92300876e-008)
w17 = Instance.new("Weld", p17)
w17.Name = "Wedge_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(64.0820847, -29.3829937, -67.5001373, -4.09009289e-008, 0.293349952, -0.956005633, 4.38312497e-010, 0.956005633, 0.293349952, 1, 1.15792238e-008, -3.92300876e-008)
w17.Part1 = p18
w17.C1 = CFrame.new(-67.4979324, 69.4871521, -6.82958078, 1, 3.05171125e-005, -3.05180438e-005, -3.05171125e-005, -3.05180438e-005, -1, -3.05180438e-005, 1, -3.05171125e-005)
w18 = Instance.new("Weld", p18)
w18.Name = "Wedge_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-67.4979324, 69.4871521, -6.82958078, 1, 3.05171125e-005, -3.05180438e-005, -3.05171125e-005, -3.05180438e-005, -1, -3.05180438e-005, 1, -3.05171125e-005)
w18.Part1 = p19
w18.C1 = CFrame.new(67.4982986, -75.0367737, -6.83008671, -1, -9.15532e-005, 3.05161811e-005, 3.05189751e-005, -3.05161811e-005, 1, -9.15522687e-005, 1, 3.05189751e-005)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(67.4982986, -75.0367737, -6.83008671, -1, -9.15532e-005, 3.05161811e-005, 3.05189751e-005, -3.05161811e-005, 1, -9.15522687e-005, 1, 3.05189751e-005)
w19.Part1 = p20
w19.C1 = CFrame.new(-16.3677292, -69.9670334, -67.5001678, -1.77821063e-010, 0.992886961, 0.119063012, -1.46926671e-009, -0.119063012, 0.992886961, 1, 1.59595731e-012, 1.47997492e-009)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-16.3677292, -69.9670334, -67.5001678, -1.77821063e-010, 0.992886961, 0.119063012, -1.46926671e-009, -0.119063012, 0.992886961, 1, 1.59595731e-012, 1.47997492e-009)
w20.Part1 = p21
w20.C1 = CFrame.new(-67.5104218, -38.2193756, 67.100563, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", m)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 13, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0)
weld1 = Instance.new("Weld", m) -- Right grip
weld1.Part1 = cor
weld1.Part0 = m.Handle
weld1.C0 = CFrame.new(0, 3.5, 0)*CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
----------------------------------------------------
hitb = Instance.new("Part", m)
hitb.Name = "Thingy2"
hitb.Locked = true
hitb.BottomSurface = 0
hitb.CanCollide = false
hitb.Size = Vector3.new(0, 8, 6)
hitb.Transparency = 1
hitb.TopSurface = 0
weld2 = Instance.new("Weld", m)
weld2.Part1 = hitb
weld2.Part0 =m.BladeCenter
weld2.C0 = CFrame.new(0, .6, 1)
----------------------------------------------------

----------------------------------------------------
GroundWave = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Dark indigo", "Royal purple"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(2,2,2)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wave.Name='wavepl0x'
		script.boom:Play()
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 14, 1 do
		wm.Scale = Vector3.new(1.1 + i*1.2, 1.1 + i*1.2, 1.1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/14
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
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
function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end
----------------------------------------------------
mod5 = Instance.new("Model",char)

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

function Tornado()
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,7,0)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Royal purple')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=102638417'
    mesh.Scale=Vector3.new(1,4,1)


    for i,v in pairs(FindNearestTorso(torso.CFrame.p,60))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10,20))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 200
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(3,1,3)
            end
        part.Parent = nil
    end))
end

function Landing()
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)

    for i,v in pairs(FindNearestTorso(torso.CFrame.p,40))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,30))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,0.2,1)
            end
        part.Parent = nil
    end))
end
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

function GroundPound()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-5.8,-2.4)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=1323306'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-5,-2.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Royal purple')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=1323306'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",char)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(.1)
    x:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,12))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(8,15))
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
mod=Instance.new('Model',char)

function charge()
    hed.Velocity=hed.CFrame.lookVector*200
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=hed.CFrame*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Royal purple')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=1323306'
    mesh.Scale=Vector3.new(10,5,10)
    part2=part:clone()
    part2.Parent=mod
    part2.BrickColor=BrickColor.new('Royal purple')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(20,10,20)
    part3=part2:clone()
    part3.Parent = mod
    part3.BrickColor=BrickColor.new('Really black')
    mesh3=mesh2:clone()
    mesh2.Parent=part3
    mesh3.Scale=Vector3.new(30,15,30)
    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,1,1)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1,1,1)
            end
        part.Parent=nil
        part2.Parent=nil
        part3.Parent = nil
    end))
end
----------------------------------------------------
mod3 = Instance.new("Model",rleg)
function Backjump()--Dodge
	hed.Velocity=hed.CFrame.lookVector*-100
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Royal purple')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(3,4,3)
	x = Instance.new("Sound",char)
    x.SoundId = "http://www.roblox.com/asset/?id=157631498"
    x.Volume = 1
    wait()
    x:Play()

    for i,v in pairs(FindNearestTorso(torso.CFrame.p,0))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(0))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,.1,1)
            end
        part.Parent = nil
    end))
end
--------------------------------------------------------------
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

mod3 = Instance.new("Model",rleg)

function Stomp()
    part=Instance.new('Part',mod3)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=rleg.CFrame*CFrame.new(0,-2.4,0)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Royal purple')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=1323306'
    mesh.Scale=Vector3.new(25,25,25)
    part2=part:clone()
    part2.Parent=mod3
    part2.BrickColor=BrickColor.new('Royal purple')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(15,15,15)
    part3=part:clone()
    part3.Parent=mod3
    part3.TopSurface=0
    part3.BottomSurface=0
    part3.CFrame=rleg.CFrame*CFrame.new(0,-3,0)
    mesh3=Instance.new('SpecialMesh',part3)
    mesh3.MeshType = 3
    mesh3.Scale=Vector3.new(12,12,12)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,60))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end 
    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(2.8,2.8,2.8)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1.5,1.5,1.5)
        end
    end))
end
----------------------------------------------------

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = Hit.BrickColor
                P.Material = Hit.Material
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = Hit.BrickColor
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end

----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "r" then
        larm.BrickColor = BrickColor.new("Royal purple")
        rarm.BrickColor = BrickColor.new("Royal purple")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
to = m.Thingy2.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(10)
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                    end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                       --[[ if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
                                wait(1)
                    --Debounces.Slashed = false
                end
            end
        end    
    end)
q = Instance.new("Sound",hed)
q.SoundId = "http://www.roblox.com/asset/?id=232210079"
q.Pitch = 0.3
q.Looped = false
q1 = Instance.new("Sound",hed)
q1.SoundId = "http://www.roblox.com/asset/?id=232210079"
q1.Pitch = 0.3
q1.Looped = false
q:Play()
q1:Play()
    for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 1) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -3) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
        if Debounces.on == false then break end
    wait()
end
n = Instance.new("Sound",hed)
n.SoundId = "http://www.roblox.com/asset/?id=168514932"
n.Pitch = 0.94
n.Looped = false
n1 = Instance.new("Sound",hed)
n1.SoundId = "http://www.roblox.com/asset/?id=168514932"
n1.Pitch = 0.94
n1.Looped = false
n:Play()
n1:Play()
b = Instance.new("Sound",hed)
b.SoundId = "http://www.roblox.com/asset/?id=168586586"
b.Pitch = 0.94
b.Looped = false
b1 = Instance.new("Sound",hed)
b1.SoundId = "http://www.roblox.com/asset/?id=168586586"
b1.Pitch = 0.94
b1.Looped = false
b:Play()
b1:Play()
    for i = 1,26 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-55)), 0.5)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(55)), 0.5)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),0.5)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), 0), 0.5)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3.5, -1) * CFrame.Angles(math.rad(50), 0, math.rad(0)), 0.5)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.5, .4) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.5)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -3) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
        if Debounces.on == false then break end
    wait()
end
wait(.5)
to:disconnect()
q:Destroy()
q1:Destroy()
n:Destroy()
n1:Destroy()
larm.BrickColor = BrickColor.new("Pastel brown")
rarm.BrickColor = BrickColor.new("Pastel brown")
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "q" then
        larm.BrickColor = BrickColor.new("Royal purple")
        rarm.BrickColor = BrickColor.new("Royal purple")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
to = m.Thingy2.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(4)
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                    end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                       --[[ if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(4)
                                wait(1)
                    --Debounces.Slashed = false
                end
            end
        end    
    end)
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(21), math.rad(75), math.rad(50)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-18)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(-60),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(70), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3.5, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3.5, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://232210079"
    z.Looped = false
    z.Pitch = .7
    z1 = Instance.new("Sound",hed)
    z1.SoundId = "rbxassetid://232210079"
    z1.Looped = false
    z1.Pitch = .7
    wait(0.01)
    z:Play()
    z1:Play()
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2,.9,-1) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(20)), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(30),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10), 0, 0), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, .6) * CFrame.Angles(math.rad(-65), 0, 0), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(50)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(10),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-10), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3.5, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3.5, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://232210079"
    z.Looped = false
    z.Pitch = .5
    z1 = Instance.new("Sound",hed)
    z1.SoundId = "rbxassetid://232210079"
    z1.Looped = false
    z1.Pitch = .5
    wait(0.01)
    z:Play()
    z1:Play()
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(40), math.rad(-20), math.rad(10)), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(-40),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(40), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3.5, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3.5, 0) * CFrame.Angles(math.rad(20), 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.8, -1.4) * CFrame.Angles(math.rad(-110), math.rad(-90), math.rad(20)), 1)
        if Debounces.on == false then break end
        wait()
    end
to:disconnect()
larm.BrickColor = BrickColor.new("Pastel brown")
rarm.BrickColor = BrickColor.new("Pastel brown")
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
Sit = false
mouse.KeyDown:connect(function(key)
    if key == "v" then
        if Sit == false then
			coroutine.resume(coroutine.create(function()
				for i = 1, 20 do
					wait()
					for i,v in pairs(m:children()) do
						if v:IsA("BasePart") then	
							v.Transparency = v.Transparency + 0.05
						end
					end
				end
			end))
            Sit = true
            hum.WalkSpeed = 0.001
        stanceToggle = "Sitting"
    elseif Sit == true then
        Sit = false
			coroutine.resume(coroutine.create(function()
				for i = 1, 20 do
					wait()
					for i,v in pairs(m:children()) do
						if v:IsA("BasePart") and v.Name~='Thinghy' and v.Name~='Thinghy2' then	
							v.Transparency = v.Transparency - 0.05
						end
					end
				end
			end))
            hum.WalkSpeed = 7
        stanceToggle = "Normal"
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == " " then --Jumping Animation
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
				for i = 1, 10 do
        	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
        	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(5),math.rad(0), math.rad(0)), 0.3)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.3)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.3)
        	lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2.5, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
        	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.3)
            if Debounces.on == false then break end
            wait()
				end
				for i = 1, 10 do
        	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
        	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10),math.rad(0), math.rad(0)), 0.3)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.3)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)), 0.3)
        	lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2.5, 0) * CFrame.Angles(math.rad(5), 0, 0), 0.3)
        	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.5, -0.5) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        	wait()
    		end
			if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            end
        end
    end
end)    
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "t" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3.5, .6) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.5, -1.2) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -3) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            wait()
        end
        Spawn(function()
            local Parts = {}
            for Y = -5,5 do
                local P = Instance.new("Part",char)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.CanCollide = false
                P.Size = Vector3.new(10,6,1)
                P.TopSurface = "SmoothNoOutlines"
                P.BottomSurface = "SmoothNoOutlines"
                P.BrickColor = BrickColor.new("Royal purple")
                P.Name = tostring(Y)
                local i = (Y+5)/(10)
                i = 1-math.cos(math.pi*i-(math.pi/2))
                P.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,Y,-15+(i*1.5))*CFrame.Angles(math.rad(Y*5),0,0)
                --[[P.Touched:connect(function(ht)
                    local hit = ht.Parent
                    if hit:FindFirstChild("Humanoid") then
                        hit.Humanoid:TakeDamage(math.random(20,50))
                    end
                end)]]--
        s = Instance.new("Sound",P)
        s.SoundId = "rbxassetid://228343271"
        s.Volume = .7
        s.Pitch = 0.9
s.Looped = false
        s:Play()
P.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(1,3))
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random (1,3))
                                hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                    --Debounces.Slashed = false
                --end
            end
        end
    end
end)
                Parts[#Parts+1] = P
            end
            local BREAKIT = false
            local CParts = {}
            local Rocks = {}
            local LastPos = nil
            for i = 1,70 do
                for i2,v in pairs(Parts) do
                    v.CFrame = v.CFrame*CFrame.new(0,0,-4)
                    local cf = v.CFrame
                    v.Size = v.Size+Vector3.new(0.4,0.35,0)
                    v.CFrame = cf
                    v.Transparency = v.Transparency+0.02
                    if v.Transparency >= 0.975 then BREAKIT = true end
                    if v.Name == "0" then
                        local Ignore = {}
                        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                            if v.Character ~= nil then
                                Ignore[#Ignore+1] = v.Character
                            end
                        end
                        local ray = Ray.new(v.Position+Vector3.new(0,20,0),Vector3.new(0,-200,0))
                        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(ray,Ignore)
                        if Hit ~= nil then
                            if #Rocks == 0 then
                                for i = 1,5 do
                                    local P = Instance.new("Part",char)
                                    Rocks[#Rocks+1] = P
                                    P.Anchored = true
                                    P.FormFactor = "Custom"
                                    P.BrickColor = Hit.BrickColor
                                    P.Material = Hit.Material
                                    P.TopSurface = "Smooth"
                                    P.BottomSurface = "Smooth"
                                    P.Size = Vector3.new(1,1,1)*(math.random(500,900)/100)
                                end
                            end
                            for i,P in pairs(Rocks) do
                                P.CFrame = ((CFrame.new(Pos)*(v.CFrame-v.Position))*CFrame.new(math.random(-math.ceil(v.Size.X/2),math.ceil(v.Size.X/2)),0,-math.random(5,8))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            end
                            local P = Instance.new("Part",char)
                            CParts[#CParts+1] = {P,tick()}
                            P.Anchored = true
                            P.FormFactor = "Custom"
                            P.BrickColor = Hit.BrickColor
                            P.Material = Hit.Material
                            P.TopSurface = "Smooth"
                            P.BottomSurface = "Smooth"
                            P.Size = Vector3.new(1,1,1)*(math.random(100,300)/100)
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            local P = P:Clone()
                            CParts[#CParts+1] = {P,tick()}
                            P.Parent = char
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(-v.Size.X,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,-20)))
                            if LastPos ~= nil then
                                local P = P:Clone()
                                CParts[#CParts+1] = {P,tick()}
                                P.Parent = char
                                P.BrickColor = BrickColor.new("Royal purple")
                                Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                                Pos = Pos.p
                                local CFr = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                                P.Size = Vector3.new(v.Size.X-0.25,1,(CFr.p-LastPos.p).Magnitude+0.25)
                                --P.Velocity = Vector3.new(0,-1000,0)
                                P.CFrame = CFrame.new(CFr.p,LastPos.p)*CFrame.new(0,0,-((CFr.p-LastPos.p).Magnitude+0.25)/2)
                            end
                            LastPos = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                        end
                    end
                end
                if BREAKIT then break end
                wait(0.002)
            end
            for i,v in pairs(Rocks) do
                CParts[#CParts+1] = {v,tick()}
            end
            for i,v in pairs(Parts) do
                v:Destroy()
            end
            Parts = nil
            while true do
                local t = tick()
                local p = nil
                for i,v in pairs(CParts) do
                    if t-v[2] > 4 then
                        v[1].Transparency = v[1].Transparency+0.05
                        if v[1].Transparency >= 1 then
                            v[1]:Destroy()
                            CParts[i] = nil
                        end
                    end
                    p = v
                end
                if p == nil then break end
                wait(0.002)
            end
            for i,v in pairs(CParts) do
             
            end
            CParts = {}
        end)
        for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,.8,-1) *   CFrame.Angles(math.rad(50), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,.8,-1) *   CFrame.Angles(math.rad(50), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.6, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -1.4) * CFrame.Angles(math.rad(40), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1.6, -.9) * CFrame.Angles(math.rad(10), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -3) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            wait()
        end
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "e" then
    larm.BrickColor = BrickColor.new("Royal purple")
    rarm.BrickColor = BrickColor.new("Royal purple")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.7, 0) * CFrame.Angles(math.rad(90),math.rad(50),math.rad(90)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3.5, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.5, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
            wait()
        end
        local rng = Instance.new("Part", char["Right Leg"])
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Royal purple")
        rng.CanCollide = true
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.CanCollide = false
        rng.Transparency = 0.35
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = HandCF
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(20, 1.1, 20)
            x = Instance.new("Sound", hed)
            x.SoundId = "http://www.roblox.com/asset/?id=165970126"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 1
x.Looped = false
            x1 = Instance.new("Sound", hed)
            x1.SoundId = "http://www.roblox.com/asset/?id=165970126"
            x1.Looped = false
            x1.Pitch = .7
            x1.Volume = 1
x1.Looped = false
            x:Play()
            x1:Play()
            rngto = rng.Touched:connect(function(ht)
            hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(4)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -120
                                    --Debounces.Slashed = false
                            --end
                        end
                    end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[ if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(4)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -120
                        --Debounces.Slashed = false
                    end
                end
            end    
        end)
                coroutine.wrap(function()
                for i = 1, 60, 2 do
                rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
                rng.Size = rngm.Scale
                rng.CFrame = HandCF
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, 0.2) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
            wait()
        end
        larm.BrickColor = BrickColor.new("Pastel brown")
        rarm.BrickColor = BrickColor.new("Pastel brown")
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
				for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
					cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait() 
                end
				x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://235097661"
				x.Pitch = 1
				x.Volume = 1
				wait(.1)
				x:Play()
				Debounces.on = false
				Debounces.Here = false
				shot = shot + 1
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Really black")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
rng2 = rng:clone()
rng3 = rng2:clone()
rng4 = rng2:clone()
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(10, 10, 1)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(5, 5, 1)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(8, 8, 1)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(6, 6, 1)
local bem = Instance.new("Part", char)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Royal purple")
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1, 1, 1)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 4, 4)
local out = Instance.new("Part", char)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(4, 4, 4)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(4, 4, 4)
local bnd = Instance.new("Part", char)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really black")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "Bend"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(8, 8, 8)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(0, -.5, 0)
rng4.CFrame = rng3.CFrame * CFrame.new(0, -.5, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rngm3.Scale = Vector3.new(8 + i*2, 8 + i*2, 1)
rngm4.Scale = Vector3.new(6 + i*2, 6 + i*2, 1)
rng.Transparency = i/20
rng3.Transparency = 1/16
rng4.Transparency = i/12
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
char:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24,73))
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
wait(1)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Parent.Name)
deb = false
for i, v in pairs(Touche) do
print(v)
end
end
end
end)
end
for i = 0, 260, 8 do
bem.Size = Vector3.new(i, 2, 2)
bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(1,1,1)
bndm.Scale = Vector3.new(8,8,8)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = char
newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(8 + i*2, 8 + i*2, 1)
newRng.Transparency = i/10
wait()
end
wait()
newRng:Destroy()
end)()
end
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------211062246
sidz = {"231917888", "231917845", "231917806"}
ptz = {0.65, 0.7, 0.75, 0.8, 0.95, 1}
mouse.KeyDown:connect(function(key)
    if key == "f" then
		hum.WalkSpeed = 0.01
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://257001355"
                z.Pitch = 1
                z.Volume = 1
				z.Looped = false
                wait()
                z:Play()
				for i = 1, 20 do
        			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.1)
        			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 7, 0) * CFrame.Angles(math.rad(-16),math.rad(0), math.rad(0)), 0.1)
       				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(40), 0,math.rad(-20)), 0.1)
        			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-40),math.rad(0), math.rad(20)), 0.1)
        			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.1)
        			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, 0, -2) * CFrame.Angles(math.rad(0), 0, 0), 0.1)
        			cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i = 1, 12 do
        			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(-14),math.rad(0), math.rad(0)),0.2)
        			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-110)), 0.2)
        			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(110)), 0.2)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                z1 = Instance.new("Sound",char)
                z1.SoundId = "rbxassetid://"..sidz[math.random(1,#sidz)]
                z1.Pitch = ptz[math.random(1,#ptz)]
                z1.Volume = 1
                wait(1)
                z1:Play()
                Stomp()
                for i = 1, 28 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(28)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-28)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.6)
        			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.2, -.6) * CFrame.Angles(math.rad(-50), math.rad(0), 0), 0.6)
        			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2.8, 0) * CFrame.Angles(math.rad(-20), 0, 0), 0.6)
        			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -0.5, -2) * CFrame.Angles(math.rad(50), 0, 0), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
			hum.WalkSpeed = 16
            Debounces.NoIdl = false
            end
        end
    end
end)    
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "u" then --Dodge
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
				hum.WalkSpeed = 0.01
				hum.Jump = true
				Backjump()
				for i = 1, 8 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-15)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-15)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.9)
            if Debounces.on == false then break end
            wait(0.05)
				end
				for i = 1, 20 do
        	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.3)
        	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0, -0.4)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-10)), 0.3)
        	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(15),math.rad(0),0), 0.3)
        	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.5, 0) * CFrame.Angles(math.rad(-28), math.rad(0), 0), 0.3)
        	lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2.8, .6) * CFrame.Angles(math.rad(-65), 0, 0), 0.3)
        	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, -2) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
        	cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        	wait()
    		end
			if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
			hum.WalkSpeed = 16
            Debounces.NoIdl = false
            end
        end
    end
end)    
mouse.KeyDown:connect(function(key)
    if key == "g" then
    larm.BrickColor = BrickColor.new("Royal purple")
    rarm.BrickColor = BrickColor.new("Royal purple")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        chrg = lleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                                    --Debounces.Slashed = false
                            --end
                        end
                    end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[ if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                        --Debounces.Slashed = false
                    end
                end
            end    
        end)
        for i = 1, 14 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.4)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.8, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.9)
            if Debounces.on == false then break end
            wait()
        end
        charge()
        z = Instance.new("Sound",char)
        z.SoundId = "rbxassetid://240429891"
        z.Volume = 1
        z.Pitch = 1
        z1 = Instance.new("Sound",char)
        z1.SoundId = "rbxassetid://231917987"
        z1.Volume = 1
        z1.Pitch = 1
        z:Play()
        z1:Play()
        wait(1)
        z:Destroy()
        z1:Destroy()
        chrg:disconnect()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            larm.BrickColor = BrickColor.new("Pastel brown")
            rarm.BrickColor = BrickColor.new("Pastel brown")
            end
        end
    end
end)
----------------------------------------------------
pt = {0.7, 0.8, 0.9}
mouse.KeyDown:connect(function(key)
    if key == "h" then
        if Debounces.CanJoke == true then
            Debounces.CanJoke = false
            u = Instance.new("Sound")
            u.SoundId = "http://www.roblox.com/asset/?id=430311333"
            u.Parent = char
            u.Looped = false
            u.Pitch = 1
            u.Volume = 1
            u2 = Instance.new("Sound")
            u2.SoundId = "http://www.roblox.com/asset/?id=430311333"
            u2.Parent = char
            u2.Looped = false
            u2.Pitch = 1
            u2.Volume = 1
            wait(.01)
            u:Play()
            u2:Play()
            wait(6)
            u:Destroy()
            u2:Destroy()
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
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://430312221"
                z.Pitch = 1
                z.Volume = 50
				wait()
				z:Play()
				wait(6)
				z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "k" then
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://430315987"
                z.Pitch = 1
                z.Volume = 50
				wait()
				z:Play()
				wait(4)
				z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "x" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            Debounces.ks = true
        for i = 1, 10 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.6)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.7,.9,-.5)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(20)), 0.6)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.6)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.6)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.6)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.7, .6) * CFrame.Angles(math.rad(-70), math.rad(0), math.rad(0)), 0.6)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
            if Debounces.on == false then break end
            wait()
        end
        z = Instance.new("Sound",hed)
        z.SoundId = "rbxassetid://169445092"
        z.Volume = 3
        wait(0.1)
        z:Play()
        kik = rleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://211062246"
                                    z.Volume = 1
                                    z:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(70)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                            --Debounces.Slashed = false
                        --end
                    end
                end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                            --Debounces.Slashed = false
                        --end
                    end
                end
            end    
        end)
        for i = 1, 8 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.7)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,.2)*CFrame.Angles(math.rad(8),math.rad(0),0), 0.7)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(16), math.rad(0), 0), 0.7)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-16), math.rad(0), math.rad(0)), 0.7)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.6, -1.4) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.7)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
            if Debounces.on == false then break end
            wait()
        end
        kik:disconnect()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "c" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            SIDZ = {"157878578", "157878578"}--sounds
            PTZ = {0.7, 0.8, 0.9, 1}--pitches
                for i = 1, 20 do
                    wait()
                        for i,v in pairs(m:children()) do
                   -- if v:IsA("Part") or v:IsA("WedgePart") then
					  if v:IsA("BasePart") then	
                        v.Transparency = v.Transparency + 0.05
                        end
                    end
                end
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
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i = 1, 8 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i,v in pairs(FindNearestTorso(torso.CFrame.p,25))do
                    if v:FindFirstChild('Humanoid') then
                        v.Humanoid:TakeDamage(math.random(20,60))
                        v.Humanoid.PlatformStand = true
                        v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
                    end
                end
                x = Instance.new("Sound",char)
                x.SoundId = "rbxassetid://"..SIDZ[math.random(1,#SIDZ)]
                x.Pitch = PTZ[math.random(1,#PTZ)]
                x.Volume = 5
                wait(0.1)
                x:Play()
                Crater(hed,20)
				for i = 1, 10 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i = 1, 8 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i,v in pairs(FindNearestTorso(torso.CFrame.p,25))do
                    if v:FindFirstChild('Humanoid') then
                        v.Humanoid:TakeDamage(math.random(20,60))
                        v.Humanoid.PlatformStand = true
                        v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
                    end
                end
                x = Instance.new("Sound",char)
                x.SoundId = "rbxassetid://"..SIDZ[math.random(1,#SIDZ)]
                x.Pitch = PTZ[math.random(1,#PTZ)]
                x.Volume = 5
                wait(0.1)
                x:Play()
                Crater(hed,20)
                for i = 1, 10 do
              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    wait()
                end
				for i = 1, 8 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i,v in pairs(FindNearestTorso(torso.CFrame.p,25))do
                    if v:FindFirstChild('Humanoid') then
                        v.Humanoid:TakeDamage(math.random(20,60))
                        v.Humanoid.PlatformStand = true
                        v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
                    end
                end
                x = Instance.new("Sound",char)
                x.SoundId = "rbxassetid://"..SIDZ[math.random(1,#SIDZ)]
                x.Pitch = PTZ[math.random(1,#PTZ)]
                x.Volume = 5
                wait(0.1)
                x:Play()
                Crater(hed,20)
                for i = 1, 10 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(-10)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(10)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.on = false
                Debounces.NoIdl = false
                for i = 1, 20 do
                    wait()
                        for i,v in pairs(m:children()) do
                    --if v:IsA("Part") or v:IsA("WedgePart") then
					  if v:IsA("BasePart") then
                        v.Transparency = v.Transparency - 0.05
                        end
                    end
                end
            end
        end
    end
end)
----------------------------------------------------176349813
mouse.KeyDown:connect(function(key)
    if key == "n" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
		hum.WalkSpeed = 0.01
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 30 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) *  CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) *  CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(16),math.rad(0),0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2, 0) * CFrame.Angles(math.rad(-20), 0, 0), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1.5, -.5) * CFrame.Angles(math.rad(-10), 0, 0), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            wait()
        end
				z1 = Instance.new("Sound",char)
            	z1.SoundId = "http://www.roblox.com/asset/?id=169380495"
            	z1.Looped = false
            	z1.Pitch = 1
            	z1.Volume = 1
            	z1:Play()
				local PowerCharge = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Purple")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", game.Workspace--[[?]])

                Wave.BrickColor = BrickColor.new("Royal purple")
                Wave.Size = Vector3.new(8, 8, 0)
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.5 do
                        rngm1.Scale = Vector3.new(40 + i*120, 40 + i*120, 1)
                        rng1.Transparency = i/5
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 1, 10, 0.5 do
                            Wave.Size = Vector3.new(20 - i, 20 - i, 20 - i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 30
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(20 - i, 20 - i, 20 - i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 30
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                          Wave.CFrame = char.Torso.CFrame
                      else
                break
            end
        end
   	end)
		end
		PowerCharge()
		for i = 1, 30 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.2)
			if Debounces.on == false then break end
			wait()
		end
		z2 = Instance.new("Sound",char)
            z2.SoundId = "http://www.roblox.com/asset/?id=185312936"
            z2.Looped = false
            z2.Pitch = 1.1
            z2.Volume = 1
            z2:Play()
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 1)
			if Debounces.on == false then break end
			wait()		
		end
		hum.WalkSpeed = 70
		Tornado()
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		Tornado()
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		Tornado()
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		Tornado()
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		Tornado()
		for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.5)
			if Debounces.on == false then break end
			wait()		
		end
		for i = 1, 10 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,0.6,-.2) *CFrame.Angles (math.rad(45),math.rad(0),math.rad(32)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad(-8),math.rad(-40),math.rad(-8)),0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.2, 0) * CFrame.Angles(math.rad(-50),math.rad(40), math.rad(0)), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -1.6) * CFrame.Angles(math.rad(30),0,math.rad(20)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.6, -2, 0) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(0)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.4)
            if Debounces.on == false then break end
                wait()
            end
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
		hum.WalkSpeed = 16
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
-----------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "b" then
        hum.WalkSpeed = 0.01
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1,20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, -1)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-30)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, -1)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(30)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
            if Debounces.on == false then break end
            wait()
            end
        wait(0.1)
        v = Instance.new("Sound",char)
        v.SoundId = "rbxassetid://440794203"
        v.Volume = 1
        v.Pitch = 1
        v1 = Instance.new("Sound",char)
        v1.SoundId = "rbxassetid://440794203"
        v1.Volume = 1
        v1.Pitch = 1
        v:Play()
        v1:Play()
        wait(0.1)
        
            local Shockwave = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Royal purple")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", game.Workspace--[[?]])

                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(8, 8, 0)
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 20
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.5 do
                        rngm1.Scale = Vector3.new(40 + i*120, 40 + i*120, 1)
                        rng1.Transparency = i/5
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 1, 10, 0.5 do
                            Wave.Size = Vector3.new(5 + i, 5 + i, 5 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 30
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(5 + i, 5 + i, 5 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 30
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
        Shockwave()
		Crater(hed,30)
        for i = 1, 40 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.3)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.3)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(20),math.rad(0),0), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, -.6) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.3)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, -1.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.3)
            if Debounces.on == false then break end
            wait()
        end
        wait(0.1)
        Debounces.NoIdl = false
        hum.WalkSpeed = 16
        Debounces.on = false
        wait()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            v:Destroy()
            end
        end
    end
end)
-----------------------------------------
local function prt(par,si,tr,col,anc,bc)
	local p=Instance.new('Part',par)
	p.CanCollide=col
	p.Size=si
	p.Transparency=tr
	p.Anchored=anc
	return p
end
local function msh(par,id,si)
	local p=Instance.new('SpecialMesh',par)
	p.MeshId=id
	p.Scale=si
	return p
end
local rad=math.rad
mouse.KeyDown:connect(function(key) -- black hole
    if key == 'p' then
        if Debounces.CanAttack == true then
    	    hum.WalkSpeed = 0.01
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
			root.Anchored=true
	        wait(0.1)
			for i=0,1,.1 do wait()
				rarm.Weld.C0=rarm.Weld.C0:lerp(rarm.Weld.C0*CFrame.Angles(rad(90),0,0),.1)
			end
			spawn(function()
				for i=0,1,.1 do wait()
					for _,v in pairs(m:GetChildren()) do
						if v:IsA'Part' or v:IsA'WedgePart' or v:IsA'UnionOperation' then
							if v.Name~='Thinghy' and v.Name~='Thinghy2' then
								v.Transparency=v.Transparency+.1
							end
						end
					end
				end
			end)			
			for i=0,1,.1 do wait()
				hed.Weld.C0=hed.Weld.C0:lerp(hed.Weld.C0*CFrame.Angles(rad(-10),rad(-20),rad(0)),.1)
				rarm.Weld.C0=rarm.Weld.C0:lerp(rarm.Weld.C0*CFrame.Angles(rad(-90),rad(0),rad(-45)),.1)
				larm.Weld.C0=larm.Weld.C0:lerp(larm.Weld.C0*CFrame.Angles(rad(45),rad(0),rad(45)),.1)
			end
			local ef=prt(char,Vector3.new(1,1,1),.5,false,false)
			local em=msh(ef,'rbxassetid://9982590',Vector3.new(.2,.2,.2))
			ef.BrickColor=BrickColor.new('Really black')
			local efw=genWeld(ef,torso)
			efw.C0=CFrame.new(0,0,2)
			local spinalpha=true
			spawn(function()
				while spinalpha do wait()
					efw.C0=efw.C0*CFrame.Angles(0,0,rad(20))
					em.Scale=em.Scale+Vector3.new(.05,.05,.05)
				end
				return
			end)
			wait(.5)
			spinalpha=false
			wait()
			spinalpha=true
			efw.Part1=larm
			efw.C0=CFrame.new(-1,3,0)			
			for i=0,1,.1 do wait()
				hed.Weld.C0=hed.Weld.C0:lerp(hed.Weld.C0*CFrame.Angles(rad(10),rad(20),rad(0)),.1)
				rarm.Weld.C0=rarm.Weld.C0:lerp(rarm.Weld.C0*CFrame.Angles(rad(-90),rad(0),rad(90)),.1)
				larm.Weld.C0=larm.Weld.C0:lerp(larm.Weld.C0*CFrame.Angles(rad(0),rad(0),rad(0)),.1)
			end			
			for i=0,1,.1 do wait()
				larm.Weld.C0=larm.Weld.C0:lerp(larm.Weld.C0*CFrame.Angles(rad(-90),rad(0),rad(-90)),.1)
			end
			efw:Destroy()
			local prop=Instance.new('BodyPosition',ef)
			prop.Position=(torso.CFrame*CFrame.new(-20,20,-2)).p
			local ef2=ef:Clone()
			ef2.Parent=char
			ef2.Transparency=.9
			spawn(function()
				while spinalpha do wait()
					ef.CFrame=ef.CFrame*CFrame.Angles(rad(0),rad(20),rad(0))
					ef2.CFrame=ef2.CFrame*CFrame.Angles(rad(0),rad(40),rad(0))
				end
				return
			end)
			wait(.5)
			for i=0,1,.1 do wait()
				em.Scale=em.Scale+Vector3.new(.5,.5,.5)
				ef2.Mesh.Scale=ef2.Mesh.Scale+Vector3.new(1,1,1)
				larm.Weld.C0=larm.Weld.C0:lerp(larm.Weld.C0*CFrame.Angles(rad(-0),rad(0),rad(90)),.1)				
			end
			wait(.1)
			prop.Position=(torso.CFrame*CFrame.new(-150,150,-15)).p
			ef2.BodyPosition.Position=prop.Position
			for i=0,1,.1 do wait()
				em.Scale=em.Scale+Vector3.new(3,3,3)
				ef2.Mesh.Scale=ef2.Mesh.Scale+Vector3.new(3,3,3)				
			end
			wait(.5) print'PULL!'
			for _,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild'Humanoid' and v:FindFirstChild'Torso' and v~=char then
					local wat=Instance.new('BodyPosition',v.Torso)
					wat.Position=ef.CFrame.p
					wat.Name='waaat'
					wat.P=wat.P*10
				end
			end
			local hitbox=true
			spawn(function()
				while hitbox do wait()
					for _,v in pairs(workspace:GetChildren()) do
						if v:FindFirstChild'Humanoid' and v:FindFirstChild'Torso' and v~=char then
							if (ef.Position-v.Torso.Position).magnitude<=(em.Scale.x/2)+20 then
								for _,v2 in pairs(v:GetChildren()) do if v2:IsA'Hat' or v2:IsA'BasePart' then v2:Destroy() end end
							end
						end
					end
				end
				return
			end)
			wait(1)
			for i=0,1,.2 do wait()
				em.Scale=em.Scale-Vector3.new(3,3,3)
				ef2.Mesh.Scale=ef2.Mesh.Scale-Vector3.new(3,3,3)				
			end
			for i=0,1,.1 do wait()
				em.Scale=em.Scale+Vector3.new(4,4,4)
				ef2.Mesh.Scale=ef2.Mesh.Scale+Vector3.new(4,4,4)				
			end
			wait(3)
			for i=0,1,.2 do wait()
				em.Scale=em.Scale-Vector3.new(3,3,3)
				ef2.Mesh.Scale=ef2.Mesh.Scale-Vector3.new(3,3,3)				
			end
			wait(.1)
			for i=0,1,.1 do wait()
				em.Scale=em.Scale-Vector3.new(4,4,4)
				ef2.Mesh.Scale=ef2.Mesh.Scale-Vector3.new(4,4,4)				
			end
			ef:Destroy()
			ef2:Destroy()
			hitbox=false
			spinalpha=false
			for _,v in pairs(workspace:GetChildren()) do
				if v:FindFirstChild'Humanoid' and v:FindFirstChild'Torso' and v~=char then
					if v:FindFirstChild'waaat' then v.waaat:Destroy() end
				end
			end
			spawn(function()
				for i=0,1,.1 do wait()
					for _,v in pairs(m:GetChildren()) do
						if v:IsA'Part' or v:IsA'WedgePart' or v:IsA'UnionOperation' then
							if v.Name~='Thinghy' and v.Name~='Thinghy2' then
								v.Transparency=v.Transparency-.1
							end
						end
					end
				end
			end)
			root.Anchored=false
	        Debounces.NoIdl = false
	        hum.WalkSpeed = 16
	        Debounces.on = false
	        wait()
			Debounces.CanAttack = true
		end
	end
end)
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "p" then
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://228343425"
                z.Pitch = 1
                z.Volume = 50
                z.Looped = false
                z2 = Instance.new("Sound",char)
                z2.SoundId = "rbxassetid://228343343"
                z2.Pitch = 1
                z2.Volume = 50
                z2.Looped = false
                z3 = Instance.new("Sound",char)
                z3.SoundId = "rbxassetid://228343433"
                z3.Pitch = 1
                z3.Looped = false
                z3.Volume = 50
                z4 = Instance.new("Sound",char)
                z4.SoundId = "rbxassetid://228343408"
                z4.Pitch = 1
                z4.Looped = false
                z4.Volume = 50

				wait()
				z:Play()
				z2:Play()
				wait(3)
				z3:Play()
				wait(2)
				z4:Play()
				wait(4)
			
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key) --_ballitov drop
    if key == 'l' then
        if Debounces.CanAttack == true then
    	    hum.WalkSpeed = 0.01
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
	        wait(0.1)
			local otcf=torso.CFrame
			spawn(function()
				for i=0,1,.1 do wait()
					for _,v in pairs(m:GetChildren()) do
						if v:IsA'Part' or v:IsA'WedgePart' or v:IsA'UnionOperation' then
							if v.Name~='Thinghy' and v.Name~='Thinghy2' then
								v.Transparency=v.Transparency+.1
							end
						end
					end
				end
			end)			
			local cache={
			rs=rarm.Weld.C0,
			ls=larm.Weld.C0,			
			rh=rleg.Weld.C0,
			lh=lleg.Weld.C0,
			nck=hed.Weld.C0,
			rt=torso.Weld.C0,
			}


			local mc={
				rs=CFrame.new(cache.rs.p),
				ls=CFrame.new(cache.ls.p),
				rh=CFrame.new(cache.rh.p),
				lh=CFrame.new(cache.lh.p),
				nck=CFrame.new(cache.nck.p),
				rt=CFrame.new(cache.rt.p),
			}
			
			for i=0,1,.1 do wait()
				rleg.Weld.C0=rleg.Weld.C0:lerp(mc.rh*CFrame.Angles(rad(-90),0,0),.2)
				lleg.Weld.C0=lleg.Weld.C0:lerp(mc.lh*CFrame.new(0,1,-1)*CFrame.Angles(rad(0),0,0),.2)
				rarm.Weld.C0=rarm.Weld.C0:lerp(mc.rs*CFrame.new(-1,-1,-1)*CFrame.Angles(rad(45),0,rad(-45)),.2)
				larm.Weld.C0=larm.Weld.C0:lerp(mc.ls*CFrame.Angles(rad(0),0,rad(-45)),.2)
				hed.Weld.C0=hed.Weld.C0:lerp(mc.nck*CFrame.Angles(rad(-20),0,0),.2)
				torso.Weld.C0=torso.Weld.C0:lerp(mc.rt*CFrame.new(0,-1.5,0),.2)
			end
			
			wait(.5)
			for i=0,1,.1 do wait()
				rleg.Weld.C0=rleg.Weld.C0:lerp(mc.rh*CFrame.Angles(rad(-90),0,0),.2)
				lleg.Weld.C0=lleg.Weld.C0:lerp(mc.lh*CFrame.new(0,1,-1)*CFrame.Angles(rad(0),0,0),.2)
				rarm.Weld.C0=rarm.Weld.C0:lerp(mc.rs*CFrame.Angles(rad(0),0,rad(45)),.2)
				larm.Weld.C0=larm.Weld.C0:lerp(mc.ls*CFrame.Angles(rad(0),0,rad(-45)),.2)
				hed.Weld.C0=hed.Weld.C0:lerp(mc.nck*CFrame.Angles(rad(-20),0,0),.2)
				torso.Weld.C0=torso.Weld.C0:lerp(mc.rt*CFrame.new(0,-1.5,0),.2)
			end
			
			wait(.25)
			local wat=Instance.new('BodyForce',torso)
			wat.Force=Vector3.new(0,300000,0)
			for i=0,1,.1 do wait()
				rleg.Weld.C0=rleg.Weld.C0:lerp(mc.rh*CFrame.Angles(rad(0),0,rad(20)),.2)
				lleg.Weld.C0=lleg.Weld.C0:lerp(mc.lh*CFrame.Angles(rad(0),0,rad(-20)),.2)
				rarm.Weld.C0=rarm.Weld.C0:lerp(mc.rs*CFrame.Angles(rad(0),0,rad(45)),.2)
				larm.Weld.C0=larm.Weld.C0:lerp(mc.ls*CFrame.Angles(rad(0),0,rad(-45)),.2)
				hed.Weld.C0=hed.Weld.C0:lerp(mc.nck*CFrame.Angles(rad(20),0,0),.2)
				torso.Weld.C0=torso.Weld.C0:lerp(mc.rt,.2)
			end
			
			wait(1.5)
			wat:Destroy()
			local wat=Instance.new('BodyPosition',torso)
			wat.Position=torso.CFrame.p
			wat.MaxForce=Vector3.new(1333337,1333337,1333337)
			wat.P=1333337
			wat.D=1333337/2
			for i=0,1,.1 do wait()
				rleg.Weld.C0=rleg.Weld.C0:lerp(mc.rh*CFrame.new(0,2,-1)*CFrame.Angles(rad(20),0,rad(0)),.2)
				lleg.Weld.C0=lleg.Weld.C0:lerp(mc.lh*CFrame.new(0,2,-1)*CFrame.Angles(rad(20),0,rad(0)),.2)
				rarm.Weld.C0=rarm.Weld.C0:lerp(mc.rs*CFrame.new(-1,-1,-1)*CFrame.Angles(rad(45),0,rad(-45)),.2)
				larm.Weld.C0=larm.Weld.C0:lerp(mc.ls*CFrame.new(1,-1,-1)*CFrame.Angles(rad(45),0,rad(45)),.2)
				hed.Weld.C0=hed.Weld.C0:lerp(mc.nck*CFrame.Angles(rad(-20),0,0),.2)
				torso.Weld.C0=torso.Weld.C0:lerp(mc.rt,.2)
			end	
			local ef=prt(char,Vector3.new(1,1,1),.5,false,false)
			local em=msh(ef,'rbxassetid://9982590',Vector3.new(.2,.2,.2))
			ef.BrickColor=BrickColor.new('Mulberry')
			local efw=genWeld(ef,torso)
			efw.C0=CFrame.new(0,0,0)
			spawn(function()			
				while efw do wait()
					efw.C0=efw.C0*CFrame.Angles(0,rad(45),0)
				end
			end)
			for i=0,1,.01 do wait()
				em.Scale=em.Scale+Vector3.new(.1,.1,.1)
				torso.Weld.C0=torso.Weld.C0:lerp(torso.Weld.C0*CFrame.Angles(rad(-90),0,0),.2)
			end	
			for i=0,1,.1 do wait()
				rleg.Weld.C0=rleg.Weld.C0:lerp(mc.rh*CFrame.Angles(rad(0),0,rad(20)),.2)
				lleg.Weld.C0=lleg.Weld.C0:lerp(mc.lh*CFrame.Angles(rad(0),0,rad(-20)),.2)
				rarm.Weld.C0=rarm.Weld.C0:lerp(mc.rs*CFrame.Angles(rad(0),0,rad(45)),.2)
				larm.Weld.C0=larm.Weld.C0:lerp(mc.ls*CFrame.Angles(rad(0),0,rad(-45)),.2)
				hed.Weld.C0=hed.Weld.C0:lerp(mc.nck*CFrame.Angles(rad(-20),0,0),.2)
				torso.Weld.C0=torso.Weld.C0:lerp(mc.rt*CFrame.new(0,-1.5,0),.2)
			end
			for i=0,1,.1 do wait()
				torso.Weld.C0=torso.Weld.C0:lerp(mc.rt*CFrame.Angles(rad(-170),0,0),.2)
				rarm.Weld.C0=rarm.Weld.C0:lerp(mc.rs*CFrame.new(0,1,0)*CFrame.Angles(rad(180),0,rad(0)),.2)
			end	
			wat:Destroy()
			local wat=Instance.new('BodyPosition',torso)
			wat.Position=(otcf*CFrame.new(0,0,-400)).p
			wat.MaxForce=Vector3.new(1333337,1333337,1333337)
			wat.P=1333337
			wat.D=10000
			local hitbox=true
			spawn(function()
			for i=0,1,.01 do wait()
				em.Scale=em.Scale+Vector3.new(1,1,1)
			end	
			wait(.5)
			for i=0,1,.05 do wait()
				em.Scale=em.Scale-Vector3.new(5,5,5)
			end	
			hitbox=false
			for i=0,1,.1 do wait()
				ef.Transparency=ef.Transparency+.1
			end	
			torso.Anchored=false
	        Debounces.NoIdl = false
	        hum.WalkSpeed = 16
	        Debounces.on = false
			spawn(function()
				for i=0,1,.1 do wait()
					for _,v in pairs(m:GetChildren()) do
						if v:IsA'Part' or v:IsA'WedgePart' or v:IsA'UnionOperation' then
							if v.Name~='Thinghy' and v.Name~='Thinghy2' then
								v.Transparency=v.Transparency-.1
							end
						end
					end
				end
			end)
	        wait()
			Debounces.CanAttack = true
			end)
			wait(.85)
			wat:Destroy()
			torso.Anchored=true
			for i=0,1,.2 do wait()
				ef.Transparency=ef.Transparency-.1
			end	
			spawn(function()
				while hitbox do wait()
					for _,v in pairs(workspace:GetChildren()) do
						if v:FindFirstChild'Humanoid' and v:FindFirstChild'Torso' and v~=char then
							if (ef.Position-v.Torso.Position).magnitude<=(em.Scale.y)*2 then
								v:BreakJoints()
							end
						end
					end
				end
				return
			end)	
			ef.Anchored=true
			efw:Destroy()
			for i=0,1,.1 do wait()
				rleg.Weld.C0=rleg.Weld.C0:lerp(mc.rh*CFrame.Angles(rad(0),0,rad(20)),.2)
				lleg.Weld.C0=lleg.Weld.C0:lerp(mc.lh*CFrame.Angles(rad(0),0,rad(-20)),.2)
				rarm.Weld.C0=rarm.Weld.C0:lerp(mc.rs*CFrame.Angles(rad(0),0,rad(45)),.2)
				larm.Weld.C0=larm.Weld.C0:lerp(mc.ls*CFrame.Angles(rad(0),0,rad(-45)),.2)
				hed.Weld.C0=hed.Weld.C0:lerp(mc.nck*CFrame.Angles(rad(-20),0,0),.2)
				torso.Weld.C0=torso.Weld.C0:lerp(mc.rt,.2)
			end		
			print'waddup'
			--[[watbox.Touched:connect(function(wut)
				if wut:IsDescendantOf(char) or wut==ef then return end
				print'POOTIS!'
				wat:Destroy()
				local wat=Instance.new('BodyPosition',torso)
				wat.Position=torso.CFrame.p
				wat.MaxForce=Vector3.new(1333337,1333337,1333337)
				wat.P=1333337
				wat.D=1333337/2				
			end)]]
		end
	end
end)
pt = {0.7, 0.8, 0.9}
----------------------------------
mouse.KeyDown:connect(function(key)
    if key == "l" then
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
			    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://240517987"
    z.Looped = false
    z.Pitch = .7
			    z2 = Instance.new("Sound",hed)
    z2.SoundId = "rbxassetid://233091205"
    z2.Looped = false
    z2.Pitch = 1   -- 5
			    z3 = Instance.new("Sound",hed)
    z3.SoundId = "rbxassetid://231917975"
    z3.Looped = false
    z3.Pitch = 1   -- 7
			    z4 = Instance.new("Sound",hed)
    z4.SoundId = "rbxassetid://231917975"
    z4.Looped = false
    z4.Pitch = 1 -- 8
			    z5 = Instance.new("Sound",hed)
    z5.SoundId = "rbxassetid:/231917888"
    z5.Looped = false
    z5.Pitch = 1 -- 9
			    z6 = Instance.new("Sound",hed)
    z6.SoundId = "rbxassetid://231917813"
    z6.Looped = false
    z6.Pitch = 1 -- 9

			    z7 = Instance.new("Sound",hed)
    z7.SoundId = "rbxassetid://228343330"
    z7.Looped = false
    z7.Pitch = 1
			    z8 = Instance.new("Sound",hed)
    z8.SoundId = "rbxassetid://231917806"
    z8.Looped = false
    z8.Pitch = 1
-------------------------

            wait(.01)
            z:Play()
wait(5)
            z2:Play()
            wait(1)
z3:Play()
wait(1)
z4:Play()
wait(1)
z5:Play()
z6:Play()
wait(2)
z7:Play()

wait(1)
z8:Play()


wait(4)

				wait(4)
			
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "m" then
hum.WalkSpeed = 0
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
            x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445572"
            x.Looped = false
            x.Pitch = 1.1
            x.Volume = 1
x.Looped = false
            x:Play()
            x2 = Instance.new("Sound",char)
            x2.SoundId = "http://www.roblox.com/asset/?id=169380495"
            x2.Looped = false
            x2.Pitch = .7
            x2.Volume = 1
x2.Looped = false
            wait(.1)
            x:Play()
            x2:Play()
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,0.6,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.2, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -1.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.6, -2, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.4)
            if Debounces.on == false then break end
                wait()
           
            end
            wait(1)
    for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.3)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, -.6) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2.8, .6) * CFrame.Angles(math.rad(-65), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, -2) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        wait()
    end
		local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Royal purple")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.35
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = torso.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
            x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=324867021"
            x.Looped = false
            x.Pitch = .7
x.Looped = false
            x.Volume = 1
            x:Play()
                coroutine.wrap(function()
                for i = 1, 60, 2 do
                rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
            hum.WalkSpeed = 60
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0,250000,0)
        BV.P = 10000
        BV.velocity = Vector3.new(0,22500,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10),math.rad(0), math.rad(0)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.5, .4)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(5)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.5, .4)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(-5)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1.5, -1.3) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
BV:Destroy()
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-10)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(10)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -1) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.6) * CFrame.Angles(math.rad(-30), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end
    for i = 1,3 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.8, 0) * CFrame.Angles(math.rad(-60), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -.5) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, -.5) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
       if Debounces.on == false then break end
    wait()
end
	for i = 1,2 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.8, 0) * CFrame.Angles(math.rad(-179), math.rad(0), 0), 0.4)
	   if Debounces.on == false then break end
    wait()
	end
	for i = 1,3 do
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.8, 0) * CFrame.Angles(math.rad(179), math.rad(0), 0), 0.4)
	   if Debounces.on == false then break end
    wait()
	end
if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(-14),math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
end
Debounces.on = false
Debounces.NoIdl = false
local ry,ht,ps=nil,nil,nil
while ht==nil do
	ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-3,0),4.1,{char})
	wait()
end
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://2233908"
z.Volume = 1
wait(.1)
z:Play()
Landing()
hum.WalkSpeed = 16
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
    larm.BrickColor = BrickColor.new("Pastel brown")
    rarm.BrickColor = BrickColor.new("Pastel brown")
        Debounces.on = true
        Debounces.NoIdl = true
        if Grab == false then
        gp = nil
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-3.3,0),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
            elseif hum1 == nil then
                con1:disconnect()
                wait() return
            end
        end)
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(36)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.65,.9,-.5)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.8, 0) * CFrame.Angles(math.rad(-60), math.rad(0), 0), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -.6) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, -.6) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.9)
            if Debounces.on == false then break end
            wait()
        end
    con1:disconnect()
    Debounces.on = false
    Debounces.NoIdl = false
    elseif Grab == true then
        Grab = false
    for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.4)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-20)), 0.1)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
        if Debounces.on == false then end
        wait()
    end
        if gp ~= nil then
        for i,v in pairs(larm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
            end
        end
        bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200
        for i = 1, 12 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.75)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(20)), 0.5)
            if Debounces.on == false then end
            wait()
        end
        ht=nil
        Spawn(function()
            wait(0.5)
            bv:Destroy()
        end)
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 21
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 5
    end
end)
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------
--[[x = Instance.new("Sound", char)
x.SoundId = "http://www.roblox.com/asset/?id=187922823"
x.Looped = true
x.Volume = 1
x.Pitch = 1
local footsteps = false]]--
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
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
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3.5, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3.5, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0)*CFrame.Angles(0, math.rad(1), math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3.5, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.5, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(50)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.2, 0-1*math.cos(sine/4)/2)*CFrame.Angles(math.rad(50-80*math.cos(sine/8)/2), math.rad(0), math.rad(0-70*math.cos(sine/8)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+8*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+4*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3.5-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.5+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Normal" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(88+2*math.cos(sine/14)),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(-30),math.rad(-40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(40),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-40), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.15, -3.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.15, -3.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, -.5) * CFrame.Angles(math.rad(70+1*math.cos(sine/14)), math.rad(-10), math.rad(-30)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, 4, -.9)*CFrame.Angles(math.rad(150+1*math.cos(sine/14)), math.rad(0), math.rad(20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.3) * CFrame.Angles(math.rad(-14+1*math.cos(sine/14)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.5, 0) * CFrame.Angles(math.rad(10+1*math.cos(sine/14)), 0, math.rad(70)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.13, -2.5, -1) * CFrame.Angles(math.rad(-10-2*math.cos(sine/14)), 0, 0), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.13, -2.5, -1) * CFrame.Angles(math.rad(-10-2*math.cos(sine/14)), -0.5, -1), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9+.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(90+0*math.cos(sine/7)), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9+.1*math.cos(sine/7), -math.sin(sine/14)/2)*CFrame.Angles(math.sin(sine/14)/4, math.rad(1) + -math.sin(sine/14)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/7)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(-4-2*math.cos(sine/7)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3.4-0.3*math.cos(sine/14)/2, -.05 + math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + -math.sin(sine/14)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.4+0.3*math.cos(sine/14)/2, -.05 + -math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + math.sin(sine/14)/2.3, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10-20*math.cos(sine/6)/2), math.rad(-40+10*math.cos(sine/6)/2), math.rad(50-10*math.cos(sine/6)/2)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3, 1.1, -1)*CFrame.Angles(math.rad(115+2*math.cos(sine/6)/2), math.rad(0+0*math.cos(sine/6)/2), math.rad(55+10*math.cos(sine/6)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6-6*math.cos(sine/6)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/6)/2, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/6)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3.4-0.80*math.cos(sine/6)/2.4, -.15 + math.sin(sine/6)/1.5) * CFrame.Angles(math.rad(-10) + -math.sin(sine/6)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.4+0.80*math.cos(sine/6)/2.4, -.15 + -math.sin(sine/6)/1.5) * CFrame.Angles(math.rad(-10) + math.sin(sine/6)/1.7, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
end
--[[if animpose == "Walking" then
    if footsteps == false then
        x:Play()
        footsteps = true
    end
    x.Pitch = 1.1
elseif animpose == "Idle" then
    x:Stop()
    footsteps = false
elseif animpose == "Running" then
    x.Pitch = 1.2
    if footsteps == false then
        x:Play()
        footsteps = true
    end
end]]--
end)



-----------------------------------------------------------------------------
spawn(function()
	while wait(4) do
		GroundWave()
	end
end)
spawn(function()
	while wait(4) do
		GroundWave()
	end
end)
------------------------------------------------------------------
function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    --[[Part0 = Vector3 (Start pos)
		Part1 = Vector3 (End pos)
		Times = number (Amount of lightning parts)
		Offset = number (Offset)
		Color = color (brickcolor value)
		Thickness = number (thickness)
		Trans = number (transparency)
    ]]--
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.7
		li.BrickColor = BrickColor.new(Color)
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end

BodyParts = {} -- Parts to emit lightning effects from
for _, v in pairs(char:GetChildren()) do
    if v:IsA("Part") then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 10
	temp.Y = v.Size.Y/2 * 10
	temp.Z = v.Size.Z/2 * 10
	Bounding[v.Name] = temp
	--table.insert(Bounding, v.Name, temp)
end

while true do
	wait(2)
	local part1 = Instance.new("Sound",game.Players.LocalPlayer.Character)
	part1.Name = ("XeTitanMusicSound")
	part1.SoundId = "rbxassetid://"
	part1.Volume = 10
	wait(.005)
	part1:Play()
	wait(120)
	part1:Stop()
	wait(.005)
	part1:Destroy()
	
	
	
	local part2 = Instance.new("Sound",game.Players.LocalPlayer.Character)
	part2.SoundId = "rbxassetid://"
	part2.Volume = 10
	part2.Name = ("XeTitanMusicSound")
	wait(.005)
	part2:Play()
	wait(120)
	part2:Stop()
	wait(.005)
	part2:Destroy()
	
	
	
	local part3 = Instance.new("Sound",game.Players.LocalPlayer.Character)
	part3.SoundId = "rbxassetid://"
	part3.Volume = 10
    part3.Name = ("XeTitanMusicSound")
	wait(.005)
	part3:Play()
	wait(120)
	part3:Stop()
	wait(.005)
	part3:Destroy()
	
	
	
	local part4 = Instance.new("Sound",game.Players.LocalPlayer.Character)
	part4.SoundId = "rbxassetid://"
	part4.Volume = 10
    part4.Name = ("XeTitanMusicSound")
	wait(.005)
	part4:Play()
	wait(120)
	part4:Stop()
	wait(.005)
	part4:Destroy()
		
		
	local part5 = Instance.new("Sound",game.Players.LocalPlayer.Character)
	part5.SoundId = "rbxassetid://"
	part5.Volume = 10
    part5.Name = ("XeTitanMusicSound")
	wait(.005)
	part5:Play()
	wait(43)
	part5:Stop()
	wait(.005)
	part4:Destroy()
	
end