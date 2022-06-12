


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
char.Health:Destroy()
hum.MaxHealth = 50000
wait(0.01)
hum.Health = 50000
----------------------------------------------------
----------------------------------------------------
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://237906462"
char.Pants.PantsTemplate = "rbxassetid://237906462"
----------------------------------------------------
----------------------------------------------------
Debounces = {
on = false;
ks = false;
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Grabbing = false;
Grabbed = false;
}
local Touche = {char.Name, }
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
    if not (t < 0 or t == 0 or t > 0) then     -- Failsafe
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
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs(hed:children()) do
    if v:IsA("Sound") then
        v:Destroy()
    end
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
larm.Size = larm.Size * 2
rarm.Size = rarm.Size * 2
lleg.Size = lleg.Size * 2
rleg.Size = rleg.Size * 2
torso.Size = torso.Size * 2
hed.Size = hed.Size * 2
root.Size = root.Size * 2
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
hed.Transparency = 1
----------------------------------------------------
lite = Instance.new("PointLight", torso)
lite.Brightness = 100
lite.Range = 15
lite.Color = Color3.new(2, 2, 2)
--[[local hed2 = hed:Clone()
hed2.CanCollide = false
hed2.Parent = char
hed2:ClearAllChildren()
hed2.Transparency = 1
hed2.Name = "DARP"
local w = Instance.new("Weld",hed2)
w.Part0 = hed
w.Part1 = hed2
w.C0 = CFrame.new(0,0,-0.175)
z=Instance.new("SurfaceGui",hed2)
z.Enabled = true
z.Face = "Front"
z.Adornee = hed2
z.CanvasSize = Vector2.new(100,100)
local face = Instance.new("ImageLabel",z)
face.Size = UDim2.new(1,-30,1,0)
face.Position = UDim2.new(0,15,0,0)
face.BackgroundTransparency = 1
face.Image='rbxassetid://46282671']]--
----------------------------------------------------
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://151562810"--504618717
z.Looped = true
z.Pitch = 1
z.Volume = 3
wait(.001)
z:Play()
----------------------------------------------------

local m = Instance.new("Model")
m.Name = "Absolution"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Bright blue")
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
p3.BrickColor = BrickColor.new("Bright blue")
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
p4.BrickColor = BrickColor.new("Bright blue")
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
p5.BrickColor = BrickColor.new("Bright blue")
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
p7.BrickColor = BrickColor.new("Bright blue")
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
p8.BrickColor = BrickColor.new("Bright blue")
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
p21.BrickColor = BrickColor.new("Bright blue")
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
local cor = Instance.new("Part", char.Absolution)
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
weld1 = Instance.new("Weld", char.Absolution)
weld1.Part0 = cor
weld1.Part1 = p6
weld1.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
hitb = Instance.new("Part", char.Absolution)
hitb.Name = "Thingy2"
hitb.Locked = true
hitb.BottomSurface = 0
hitb.CanCollide = false
hitb.Size = Vector3.new(0, 8, 6)
hitb.Transparency = 1
hitb.TopSurface = 0
weld2 = Instance.new("Weld", char.Absolution)
weld2.Part0 = hitb
weld2.Part1 = p12
weld2.C0 = CFrame.new(0, .6, 1)
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Claw"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1.5, 0.5, 0.5)
p1.CFrame = CFrame.new(2.91120553, 6.79703379, -19.5339718, -0.205515206, -0.209888965, 0.955883741, 0.52527827, -0.847774804, -0.0732159689, 0.825741529, 0.487057745, 0.284480691)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
p2 = Instance.new("WedgePart", m)
p2.BrickColor = BrickColor.new("Really black")
p2.Name = "Wedge"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(3, 1, 0.5)
p2.CFrame = CFrame.new(2.94872427, 6.13246727, -16.5004997, -5.96046448e-008, -4.47034836e-008, -1.00000358, -1.3615936e-005, 0.99999994, 4.47034836e-008, 1.00000358, 1.41002238e-005, 0)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1.5, 0.5, 0.5)
p3.CFrame = CFrame.new(1.84869456, 6.79700661, -18.5422173, -5.06400113e-008, 1.07230136e-007, 1.00000715, -0.499905825, -0.866079628, -1.1125789e-007, 0.86608547, -0.499910295, -2.17476881e-008)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p3)
b2.Name = "Mesh"
p4 = Instance.new("WedgePart", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Name = "Wedge"
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(3, 1, 0.5)
p4.CFrame = CFrame.new(0.0487272739, 4.13279819, -16.5004959, -1.62921424e-007, 1.78814929e-007, 1.00001431, -1.2755394e-005, -0.999999762, -1.78813849e-007, 1.00001431, -1.46627426e-005, -7.54998553e-008)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1.5, 0.5, 0.5)
p5.CFrame = CFrame.new(1.84874606, 6.79701567, -19.6422844, -4.29027068e-007, 1.9046513e-007, 1.00001431, 0.500089467, -0.865973532, 2.18601315e-008, 0.865987122, 0.50009501, 3.78533827e-008)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p5)
b3.Name = "Mesh"
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.5, 0.5, 0.5)
p6.CFrame = CFrame.new(2.61122823, 6.79701757, -18.433939, -0.250001401, 0.0669622123, 0.965941966, -0.491382152, -0.868364573, -0.0669801831, 0.834303975, -0.491393685, 0.249996051)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p6)
b4.Name = "Mesh"
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(3, 1, 1.20000005)
p7.CFrame = CFrame.new(2.59874034, 5.13276958, -16.5005379, -3.27825546e-007, -3.57627869e-007, -1.00001431, -0.000133868307, 0.99999994, 1.49011612e-008, 1.00001442, 0.000135900453, -5.96046448e-008)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("BlockMesh", p7)
b5.Name = "Mesh"
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Bright blue")
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(1.84841466, 6.25537968, -20.3997307, -1.42129729e-005, 0.00428489037, -1.00000513, 0.965967655, 0.258660465, 0.00109496934, 0.258668512, -0.965972245, -0.00414247159)
p8.CanCollide = false
p8.Locked = true
b6 = Instance.new("SpecialMesh", p8)
b6.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1.5, 0.5, 0.5)
p9.CFrame = CFrame.new(2.79691935, 3.68131566, -18.264101, -0.277095288, -0.561500967, -0.779720128, 0.631033003, 0.505603611, -0.58835566, 0.724593103, -0.655058563, 0.214224264)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("BlockMesh", p9)
b7.Name = "Mesh"
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Bright blue")
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.CFrame = CFrame.new(3.09846497, 6.25236273, -20.2996788, -0.0669716895, 0.254178405, -0.964850724, 0.96595335, 0.258713901, 0.00110733509, 0.249903828, -0.93192625, -0.262850702)
p10.CanCollide = false
p10.Locked = true
b8 = Instance.new("SpecialMesh", p10)
b8.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1.5, 0.5, 0.5)
p11.CFrame = CFrame.new(0.386122227, 6.79699421, -18.533905, 0.250022948, -0.0669473261, 0.965937555, -0.491377324, -0.868365645, 0.0670026764, 0.834300399, -0.491393894, -0.250007868)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p11)
b9.Name = "Mesh"
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1.5, 0.5, 0.5)
p12.CFrame = CFrame.new(1.14871967, 6.79700947, -19.6422291, -4.76837158e-007, 2.83122063e-007, 1.00001442, 0.500089884, -0.865973473, 4.47034836e-008, 0.865987122, 0.500095367, 1.49011612e-008)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("BlockMesh", p12)
b10.Name = "Mesh"
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1.5, 0.5, 0.5)
p13.CFrame = CFrame.new(1.14870512, 6.79699612, -18.5421638, -4.63888163e-008, 5.08347114e-007, 1.00001442, -0.499899268, -0.866083562, -2.18518963e-008, 0.866095126, -0.499908328, 3.78581007e-008)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p13)
b11.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Bright blue")
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Size = Vector3.new(1, 1, 1)
p14.CFrame = CFrame.new(1.14845455, 6.25537348, -20.3996773, -1.42545232e-005, 0.00425684778, -1.00000536, 0.965958476, 0.258694947, 0.00108788908, 0.258703023, -0.965963125, -0.00411536777)
p14.CanCollide = false
p14.Locked = true
b12 = Instance.new("SpecialMesh", p14)
b12.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Medium stone grey")
p15.Transparency = 1
p15.Name = "ArmPart"
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(2, 1, 1)
p15.CFrame = CFrame.new(1.49875152, 5.13257265, -16.0004654, -2.99420208e-007, 4.39002179e-007, 1.00001442, 0.00011029192, -1, 0, 1.00001454, 0.000108176115, 4.42378223e-008)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("BlockMesh", p15)
b13.Name = "Mesh"
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(3, 1, 2.4000001)
p16.CFrame = CFrame.new(1.49872661, 6.13250732, -16.5007095, -2.98894406e-007, 4.39006953e-007, 1.00001442, 0.000110270419, -1, 4.71678729e-012, 1.00001454, 0.000108154614, 4.37120207e-008)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("BlockMesh", p16)
b14.Name = "Mesh"
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.5, 0.5, 0.5)
p17.CFrame = CFrame.new(2.77308726, 3.37837577, -19.2558823, 0.396035522, -0.497440547, -0.771840453, -0.207958207, 0.770127177, -0.603040278, 0.894391596, 0.399337679, 0.201549783)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("BlockMesh", p17)
b15.Name = "Mesh"
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Bright blue")
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1, 1, 1)
p18.CFrame = CFrame.new(-0.0516102314, 6.25535488, -20.1996384, 0.066943109, -0.245838761, -0.967011333, 0.965954781, 0.258709013, 0.00110003352, 0.249906152, -0.934162259, 0.254788101)
p18.CanCollide = false
p18.Locked = true
b16 = Instance.new("SpecialMesh", p18)
b16.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Bright blue")
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 1, 1)
p19.CFrame = CFrame.new(2.43177533, 3.59484506, -20.0301056, 0.559401393, 0.116905749, 0.820629179, -0.685213447, -0.491872638, 0.537163019, 0.466440916, -0.862796843, -0.195047855)
p19.CanCollide = false
p19.Locked = true
b17 = Instance.new("SpecialMesh", p19)
b17.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(3, 1, 2.4000001)
p20.CFrame = CFrame.new(1.49873698, 4.13275099, -16.500618, -2.38418579e-007, -4.47034836e-007, -1.00001454, -0.000133797526, 1.00000024, -2.98023224e-008, 1.00001466, 0.000135831535, -5.96046448e-008)
p20.CanCollide = false
p20.Locked = true
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("BlockMesh", p20)
b18.Name = "Mesh"
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(3, 1, 1.19999993)
p21.CFrame = CFrame.new(0.398718834, 5.13273239, -16.5005798, -2.22529991e-007, -4.17224015e-007, -1.00001454, -0.000133820766, 1.00000024, 5.9472427e-012, 1.00001466, 0.000135854774, -4.37120207e-008)
p21.CanCollide = false
p21.Locked = true
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("BlockMesh", p21)
b19.Name = "Mesh"
p22 = Instance.new("WedgePart", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Name = "Wedge"
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(3, 1, 0.5)
p22.CFrame = CFrame.new(2.94884443, 4.13282013, -16.5005474, 1.35156796e-007, 4.17202415e-007, -1.00001454, 1.19470278e-005, -1.00000024, -6.07483681e-013, -1.00001466, -1.39792755e-005, 4.37120278e-008)
p22.CanCollide = false
p22.Locked = true
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(1.5, 0.5, 0.5)
p23.CFrame = CFrame.new(0.111123323, 6.79699326, -19.53405, 0.167916089, 0.220654398, 0.960804224, 0.593452632, -0.800862908, 0.0802069977, 0.787171543, 0.556722164, -0.265425682)
p23.CanCollide = false
p23.Locked = true
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("BlockMesh", p23)
b20.Name = "Mesh"
p24 = Instance.new("WedgePart", m)
p24.BrickColor = BrickColor.new("Really black")
p24.Name = "Wedge"
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(3, 1, 0.5)
p24.CFrame = CFrame.new(0.0487362742, 6.13243389, -16.5004158, -0.000165194273, -0.00030361861, 1.00001442, 0.00304524973, 0.999995589, 0.000303655863, -1.00001013, 0.00304720178, -0.000164449215)
p24.CanCollide = false
p24.Locked = true
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Bright blue")
p25.FormFactor = Enum.FormFactor.Symmetric
p25.Size = Vector3.new(1, 1, 1)
p25.CFrame = CFrame.new(1.49870086, 5.13261318, -18.0007782, 1.20991026e-005, -1.00001454, -4.94604174e-005, -1.00000024, -1.16155716e-005, -0.000471511274, 0.000469659513, 4.96469293e-005, -1.00001466)
p25.CanCollide = false
p25.Locked = true
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p25)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(1.39999998, 1.39999998, 0.600000024)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Really black")
p26.FormFactor = Enum.FormFactor.Symmetric
p26.Size = Vector3.new(1, 1, 1)
p26.CFrame = CFrame.new(1.49868095, 5.13287783, -17.5005093, 0.00030383491, 0.000164763711, -1.00001454, -0.999995768, -0.00302907336, -0.000303868263, -0.00303102471, 1.00001025, 0.000164022902)
p26.CanCollide = false
p26.Locked = true
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p26)
b22.MeshType = Enum.MeshType.Brick
b22.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Wedge_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(13.1579618, 15.8875484, 3.27191186, -0.205515206, 0.52527827, 0.825741529, -0.209888965, -0.847774804, 0.487057745, 0.955883741, -0.0732159689, 0.284480691)
w1.Part1 = p2
w1.C1 = CFrame.new(16.5005817, -6.13223743, 2.94872212, -4.37113883e-008, -1.38580826e-005, 1, 0, 1, 1.38580826e-005, -1, 6.05756005e-013, -4.37113883e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(16.5006275, -6.13223362, 2.94873357, -5.96046448e-008, -1.3615936e-005, 1.00000358, -4.47034836e-008, 0.99999994, 1.41002238e-005, -1.00000358, 4.47034836e-008, 0)
w2.Part1 = p3
w2.C1 = CFrame.new(19.4568748, -3.38260746, -1.84870064, -4.37113883e-008, -0.499906301, 0.866079509, 0, -0.866079509, -0.499906301, 1, -2.18515979e-008, 3.78575393e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Wedge_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(19.456995, -3.38268948, -1.84870648, -5.06400113e-008, -0.499905825, 0.86608547, 1.07230136e-007, -0.866079628, -0.499910295, 1.00000715, -1.1125789e-007, -2.17476881e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(16.5005646, 4.13256884, -0.0487511083, -4.37113883e-008, -1.37408551e-005, 1, 0, -1, -1.37408551e-005, 1, -6.00631849e-013, 4.37113883e-008)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(16.5007706, 4.13255453, -0.0487275235, -1.62921424e-007, -1.2755394e-005, 1.00001431, 1.78814929e-007, -0.999999762, -1.46627426e-005, 1.00001431, -1.78813849e-007, -7.54998553e-008)
w4.Part1 = p5
w4.C1 = CFrame.new(13.6104183, 15.7089605, -1.84869325, -4.37113883e-008, 0.500093758, 0.865971267, 0, -0.865971267, 0.500093758, 1, 2.18597922e-008, 3.78528071e-008)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(13.6108379, 15.7090359, -1.84877098, -4.29027068e-007, 0.500089467, 0.865987122, 1.9046513e-007, -0.865973532, 0.50009501, 1.00001431, 2.18601315e-008, 3.78533827e-008)
w5.Part1 = p6
w5.C1 = CFrame.new(19.3720245, -3.33087778, 2.54137325, -0.249996737, -0.491388977, 0.834289134, 0.0669635162, -0.868360817, -0.491391122, 0.965928316, -0.0669792444, 0.24999252)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(19.3722382, -3.33087826, 2.54137945, -0.250001401, -0.491382152, 0.834303975, 0.0669622123, -0.868364573, -0.491393685, 0.965941966, -0.0669801831, 0.249996051)
w6.Part1 = p7
w6.C1 = CFrame.new(16.5012703, -5.1305232, 2.59873891, -4.37113883e-008, -0.000135861075, 1, 0, 1, 0.000135861075, -1, 5.9386762e-012, -4.37113883e-008)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(16.5014496, -5.13052464, 2.59877563, -3.27825546e-007, -0.000133868307, 1.00001442, -3.57627869e-007, 0.99999994, 0.000135900453, -1.00001431, 1.49011612e-008, -5.96046448e-008)
w7.Part1 = p8
w7.C1 = CFrame.new(-0.765930653, -21.3311157, 1.75706458, -1.37833995e-005, 0.965968609, 0.258659452, 0.00428466033, 0.258657128, -0.965959728, -0.999990821, 0.00109495374, -0.00414241292)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-0.765703201, -21.3314991, 1.75706851, -1.42129729e-005, 0.965967655, 0.258668512, 0.00428489037, 0.258660465, -0.965972245, -1.00000513, 0.00109496934, -0.00414247159)
w8.Part1 = p9
w8.C1 = CFrame.new(11.6857395, -12.2548676, 8.25926208, -0.277089596, 0.631037474, 0.724577785, -0.561487973, 0.505604029, -0.655054033, -0.779713154, -0.588350415, 0.214222342)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(11.6860123, -12.254859, 8.25934601, -0.277095288, 0.631033003, 0.724593103, -0.561500967, 0.505603611, -0.655058563, -0.779720128, -0.58835566, 0.214224264)
w9.Part1 = p10
w9.C1 = CFrame.new(-0.759226322, -21.3225994, -2.35311079, -0.0669693872, 0.965954244, 0.249894977, 0.254174918, 0.258710593, -0.931914091, -0.964836895, 0.00110732042, -0.262847036)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-0.759016514, -21.3229256, -2.3531487, -0.0669716895, 0.96595335, 0.249903828, 0.254178405, 0.258713901, -0.93192625, -0.964850724, 0.00110733509, -0.262850702)
w10.Part1 = p11
w10.C1 = CFrame.new(18.7059784, -3.17931223, -5.46201515, 0.250018269, -0.49138394, 0.834285676, -0.0669495314, -0.86836195, -0.491391063, 0.965923727, 0.0670017004, -0.250004292)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(18.7061806, -3.17931461, -5.46200418, 0.250022948, -0.491377324, 0.834300399, -0.0669473261, -0.868365645, -0.491393894, 0.965937555, 0.0670026764, -0.250007868)
w11.Part1 = p12
w11.C1 = CFrame.new(13.6104174, 15.708952, -1.1486963, -4.37113883e-008, 0.500093997, 0.865971148, 0, -0.865971148, 0.500093997, 1, 2.18598029e-008, 3.78528e-008)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(13.6107903, 15.7090092, -1.1487354, -4.76837158e-007, 0.500089884, 0.865987122, 2.83122063e-007, -0.865973473, 0.500095367, 1.00001442, 4.47034836e-008, 1.49011612e-008)
w12.Part1 = p13
w12.C1 = CFrame.new(19.4568653, -3.38261366, -1.14870369, -4.37113883e-008, -0.499906093, 0.866079628, 0, -0.866079628, -0.499906093, 1, -2.1851589e-008, 3.78575429e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(19.457077, -3.38260937, -1.14871991, -4.63888163e-008, -0.499899268, 0.866095126, 5.08347114e-007, -0.866083562, -0.499908328, 1.00001442, -2.18518963e-008, 3.78581007e-008)
w13.Part1 = p14
w13.C1 = CFrame.new(-0.765169621, -21.3281136, 1.05768669, -1.37638153e-005, 0.96595937, 0.258693874, 0.00425664661, 0.258691579, -0.965950608, -0.99999094, 0.00108787336, -0.00411530817)
w14 = Instance.new("Weld", p14)
w14.Name = "ArmPart_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-0.764959335, -21.3284416, 1.05770254, -1.42545232e-005, 0.965958476, 0.258703023, 0.00425684778, 0.258694947, -0.965963125, -1.00000536, 0.00108788908, -0.00411536777)
w14.Part1 = p15
w14.C1 = CFrame.new(16.0000172, 5.13429213, -1.49874043, -4.37113883e-008, 0.000108154614, 1, 0, -1, 0.000108154614, 1, 4.72758855e-012, 4.37113883e-008)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(16.0001163, 5.13430214, -1.49877143, -2.99420208e-007, 0.00011029192, 1.00001454, 4.39002179e-007, -1, 0.000108176115, 1.00001442, 0, 4.42378223e-008)
w15.Part1 = p16
w15.C1 = CFrame.new(16.5000153, 6.13429213, -1.49872518, -4.37113883e-008, 0.000108154614, 1, 0, -1, 0.000108154614, 1, 4.72758855e-012, 4.37113883e-008)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(16.5002594, 6.1342907, -1.49874651, -2.98894406e-007, 0.000110270419, 1.00001454, 4.39006953e-007, -1, 0.000108154614, 1.00001442, 4.71678729e-012, 4.37120207e-008)
w16.Part1 = p17
w16.C1 = CFrame.new(16.8263168, 6.46704865, 8.05857849, 0.396029502, -0.207962677, 0.894378066, -0.497426808, 0.770130157, 0.399332225, -0.771833658, -0.603034973, 0.201548025)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(16.8266068, 6.46726036, 8.05869198, 0.396035522, -0.207958207, 0.894391596, -0.497440547, 0.770127177, 0.399337679, -0.771840453, -0.603040278, 0.201549783)
w17.Part1 = p18
w17.C1 = CFrame.new(-0.991122723, -20.5004215, 5.08983374, 0.0669417754, 0.965955615, 0.249897182, -0.245835528, 0.258705586, -0.9341501, -0.966997266, 0.00110005983, 0.254784435)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-0.990923882, -20.5007305, 5.08983374, 0.066943109, 0.965954781, 0.249906152, -0.245838761, 0.258709013, -0.934162259, -0.967011333, 0.00110003352, 0.254788101)
w18.Part1 = p19
w18.C1 = CFrame.new(10.4456682, -15.7977238, -7.8332901, 0.559388936, -0.68521893, 0.466432214, 0.116898462, -0.491870552, -0.862785101, 0.820620954, 0.537157655, -0.195045918)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(10.4457512, -15.7979813, -7.83342838, 0.559401393, -0.685213447, 0.466440916, 0.116905749, -0.491872638, -0.862796843, 0.820629179, 0.537163019, -0.195047855)
w19.Part1 = p20
w19.C1 = CFrame.new(16.5012665, -4.13050127, 1.49876332, -4.37113883e-008, -0.000135854745, 1, 0, 1, 0.000135854745, -1, 5.93839951e-012, -4.37113883e-008)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(16.5013981, -4.13050938, 1.498757, -2.38418579e-007, -0.000133797526, 1.00001466, -4.47034836e-007, 1.00000024, 0.000135831535, -1.00001454, -2.98023224e-008, -5.96046448e-008)
w20.Part1 = p21
w20.C1 = CFrame.new(16.5012627, -5.13048887, 0.39874959, -4.37113883e-008, -0.000135854745, 1, 0, 1, 0.000135854745, -1, 5.93839951e-012, -4.37113883e-008)
w21 = Instance.new("Weld", p21)
w21.Name = "Wedge_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(16.5014935, -5.13049126, 0.398722976, -2.22529991e-007, -0.000133820766, 1.00001466, -4.17224015e-007, 1.00000024, 0.000135854774, -1.00001454, 5.9472427e-012, -4.37120207e-008)
w21.Part1 = p22
w21.C1 = CFrame.new(-16.5005875, 4.13259029, 2.94876933, -4.37113883e-008, 1.39792737e-005, -1, 0, -1, -1.39792737e-005, -1, -6.11053471e-013, 4.37113883e-008)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-16.500824, 4.13258791, 2.94888711, 1.35156796e-007, 1.19470278e-005, -1.00001466, 4.17202415e-007, -1.00000024, -1.39792755e-005, -1.00001454, -6.07483681e-013, 4.37120278e-008)
w22.Part1 = p23
w22.C1 = CFrame.new(11.3238592, 16.2938461, -5.83674097, 0.167913347, 0.593457043, 0.787155509, 0.220650926, -0.800859332, 0.556720257, 0.960790455, 0.0802058354, -0.265421808)
w23 = Instance.new("Weld", p23)
w23.Name = "Wedge_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(11.3242846, 16.2939701, -5.83676767, 0.167916089, 0.593452632, 0.787171543, 0.220654398, -0.800862908, 0.556722164, 0.960804224, 0.0802069977, -0.265425682)
w23.Part1 = p24
w23.C1 = CFrame.new(-16.5190907, -6.08210278, -0.053311754, -0.000165350299, 0.00304719806, -0.999995351, -0.000303142268, 0.999995351, 0.00304725766, 0.99999994, 0.000303644716, -0.000164425801)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-16.5192356, -6.08211088, -0.0533116534, -0.000165194273, 0.00304524973, -1.00001013, -0.00030361861, 0.999995589, 0.00304720178, 1.00001442, 0.000303655863, -0.000164449215)
w24.Part1 = p25
w24.C1 = CFrame.new(5.14108515, 1.49960721, -17.9982204, 1.16387992e-005, -0.999999881, 0.000471503939, -1, -1.1615477e-005, 4.94651576e-005, -4.94596788e-005, -0.000471504522, -0.999999881)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(5.14104986, 1.49967504, -17.9985313, 1.20991026e-005, -1.00000024, 0.000469659513, -1.00001454, -1.16155716e-005, 4.96469293e-005, -4.94604174e-005, -0.000471511274, -1.00001466)
w25.Part1 = p26
w25.C1 = CFrame.new(5.07938719, 17.5157299, 1.50311017, 0.00030336561, -0.99999541, -0.00302907825, 0.000164940167, -0.00302901864, 0.999995351, -0.99999994, -0.000303863839, 0.000164020501)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor2 = Instance.new("Part", char.Claw)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(2, 1, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = larm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(90))
corw2.C1 = CFrame.new(0, 0, 0)
weld2 = Instance.new("Weld", char.Claw)
weld2.Part0 = cor2
weld2.Part1 = char.Claw.ArmPart
weld2.C0 = CFrame.new(0, 0, 0)
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
----------------------------------------------------
a = game.Players.LocalPlayer.Character.Absolution:GetChildren()
for i = 1,#a do
if a[i]:IsA("UnionOperation") or a[i]:IsA("Part") or a[i]:IsA("WedgePart") then
a[i].Transparency = 1
end
end
----------------------------------------------------
ACE = game.Players.LocalPlayer.Character.Claw:GetChildren()
for i = 1,#a do
if ACE[i]:IsA("UnionOperation") or ACE[i]:IsA("Part") or ACE[i]:IsA("WedgePart") then
ACE[i].Transparency = 1
end
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
    part.CFrame=root.CFrame*CFrame.new(0,-5.8,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-5,-2.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really red')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",char)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(0.001)
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
    part.BrickColor=BrickColor.new('Black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)
    part2=part:clone()
    part2.Parent=mod
    part2.BrickColor=BrickColor.new('Bright red')
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
    part.CFrame=rleg.CFrame*CFrame.new(0,-2.4,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Bright green')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(25,25,25)
    part2=part:clone()
    part2.Parent=mod3
    part2.BrickColor=BrickColor.new('Bright green')
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
        larm.BrickColor = BrickColor.new("Bright red")
        rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
to = char.Absolution.Thingy2.Touched:connect(function(ht)
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
q.SoundId = "http://www.roblox.com/asset/?id=134012322"
q.Pitch = 0.85
q.Looped = false
q1 = Instance.new("Sound",hed)
q1.SoundId = "http://www.roblox.com/asset/?id=134012322"
q1.Pitch = 0.85
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
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.2, -3) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(0)), 0.5)
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
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -1) * CFrame.Angles(math.rad(50), 0, math.rad(0)), 0.5)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .4) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.5)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 0.5)
        if Debounces.on == false then break end
    wait()
end
wait(.5)
to:disconnect()
q:Destroy()
q1:Destroy()
n:Destroy()
n1:Destroy()
larm.BrickColor = BrickColor.new("Really black")
rarm.BrickColor = BrickColor.new("Really black")
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
        larm.BrickColor = BrickColor.new("Bright red")
        rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
to = char.Absolution.Thingy2.Touched:connect(function(ht)
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
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://160069154"
    z.Looped = false
    z.Pitch = .9
    z1 = Instance.new("Sound",hed)
    z1.SoundId = "rbxassetid://160069154"
    z1.Looped = false
    z1.Pitch = .9
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
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://168586621"
    z.Looped = false
    z.Pitch = 1
    z1 = Instance.new("Sound",hed)
    z1.SoundId = "rbxassetid://168586621"
    z1.Looped = false
    z1.Pitch = 1
    wait(0.01)
    z:Play()
    z1:Play()
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(40), math.rad(-20), math.rad(10)), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(-40),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(40), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(20), 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.8, -1.4) * CFrame.Angles(math.rad(-110), math.rad(-90), math.rad(20)), 1)
        if Debounces.on == false then break end
        wait()
    end
to:disconnect()
larm.BrickColor = BrickColor.new("Really black")
rarm.BrickColor = BrickColor.new("Really black")
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
            Sit = true
            hum.WalkSpeed = 0.001
        stanceToggle = "Sitting"
    elseif Sit == true then
        Sit = false
            hum.WalkSpeed = 7
        stanceToggle = "Normal"
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
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .6) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.2) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
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
                P.Size = Vector3.new(1,2,1)
                P.TopSurface = "SmoothNoOutlines"
                P.BottomSurface = "SmoothNoOutlines"
                P.BrickColor = BrickColor.new("Really black")
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
                                P.BrickColor = BrickColor.new("Really black")
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
                v:Destroy()
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
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
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
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.7, 0) * CFrame.Angles(math.rad(90),math.rad(50),math.rad(90)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
            wait()
        end
        local HandCF = CFrame.new(char.Absolution.Handle.Position - Vector3.new(0,8.8,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rng = Instance.new("Part", char.Absolution.Handle)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
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
        rngm.Scale = Vector3.new(1, 1, 2)
            x = Instance.new("Sound", hed)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 1
            x1 = Instance.new("Sound", hed)
            x1.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x1.Looped = false
            x1.Pitch = .7
            x1.Volume = 1
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
        larm.BrickColor = BrickColor.new("Really black")
        rarm.BrickColor = BrickColor.new("Really black")
        x:Destroy()
        x1:Destroy()
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
				x.SoundId = "rbxassetid://228343271"
				x.Pitch = 1
				x.Volume = .8
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
bem.BrickColor = BrickColor.new("Really black")
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
----------------------------------------------------
sidz = {"231917888", "231917845", "231917806"}
ptz = {0.65, 0.7, 0.75, 0.8, 0.95, 1}
mouse.KeyDown:connect(function(key)
    if key == "f" then
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
                for i = 1, 10 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-34)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(34)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://"..sidz[math.random(1,#sidz)]
                z.Pitch = ptz[math.random(1,#ptz)]
                z.Volume = 1
                z1 = Instance.new("Sound",char)
                z1.SoundId = z.SoundId
                z1.Pitch = z.Pitch
                z1.Volume = 1
                wait(1)
                z:Play()
                z1:Play()
                Stomp()
                for i = 1, 20 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, -.6) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, -1.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            larm.BrickColor = BrickColor.new("Really black")
            rarm.BrickColor = BrickColor.new("Really black")
            end
        end
    end
end)    
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "g" then
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
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
        z.SoundId = "rbxassetid://200632875"
        z.Volume = 1
        z.Pitch = .8
        z1 = Instance.new("Sound",char)
        z1.SoundId = "rbxassetid://200632875"
        z1.Volume = 1
        z1.Pitch = .9
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
            larm.BrickColor = BrickColor.new("Really black")
            rarm.BrickColor = BrickColor.new("Really black")
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
            u.SoundId = "http://www.roblox.com/asset/?id=138199573"
            u.Parent = char
            u.Looped = false
            u.Pitch = pt[math.random(1,#pt)]
            u.Volume = 1
            u2 = Instance.new("Sound")
            u2.SoundId = "http://www.roblox.com/asset/?id=138199573"
            u2.Parent = char
            u2.Looped = false
            u2.Pitch = u.Pitch
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
                z.SoundId = "rbxassetid://135017755"
                z.Pitch = .76
                z.Volume = 1
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
                z.SoundId = "rbxassetid://135017578"
                z.Pitch = .76
                z.Volume = 1
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
        z.Volume = 1
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
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    Debounces.ks=false
                                    end
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
            SIDZ = {"231917744", "231917742"}
            PTZ = {0.7, 0.8, 0.9, 1}
                for i = 1, 20 do
                    wait()
                        for i,v in pairs(char.Absolution:children()) do
                    if v:IsA("Part") or v:IsA("WedgePart") then
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
                for i = 1, 18 do
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
                x.Volume = 1
                wait(0.1)
                x:Play()
                Crater(hed,20)
                for i = 1, 14 do
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
                        for i,v in pairs(char.Absolution:children()) do
                    if v:IsA("Part") or v:IsA("WedgePart") then
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
    if key == "b" then
        hum.WalkSpeed = 0.01
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1,20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.1)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.1)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.1)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles (math.rad(30), 0, math.rad(-5)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles (math.rad(30), 0, math.rad(5)), 0.1)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
            if Debounces.on == false then break end
            wait()
            end
        wait(1)
        v = Instance.new("Sound")
        v.SoundId = "rbxassetid://181384451"
        v.Parent = char
        v.Looped = false
        v.Pitch = 1.04
        v.Volume = 1
        wait(.01)
        v:Play()
        
        if Daytime == true then
            Daytime = false
            l.TimeOfDay = 24
        else
            Daytime = true
            l.TimeOfDay = 12
            l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
        end
        
            local Shockwave = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Really black")
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
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
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
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.2 do
                        rngm1.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
                        rng1.Transparency = i/20
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
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
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        wait(1.4)
        Debounces.NoIdl = false
        hum.WalkSpeed = 5
        Debounces.on = false
        wait()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            v:Destroy()
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
            --[[x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445572"
            x.Looped = false
            x.Pitch = 1.1
            x.Volume = 1
            x:Play()
            x2 = Instance.new("Sound",char)
            x2.SoundId = "http://www.roblox.com/asset/?id=169380495"
            x2.Looped = false
            x2.Pitch = .7
            x2.Volume = 1
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
            x:Destroy()
            x2:Destroy()
            end
            wait(1)]]--
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
        rng.Position = torso.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
            x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
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
            hum.WalkSpeed = 50
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0,200000,0)
        BV.P = 100000
        BV.velocity = Vector3.new(0,800,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, 0, -2) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
x:Destroy()
BV:Destroy()
    --[[for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-10)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(10)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -1) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.6) * CFrame.Angles(math.rad(-30), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end]]--
if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(-14),math.rad(0), math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
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
z.SoundId = "rbxassetid://142070127"
z.Volume = 1
wait(.1)
z:Play()
Landing()
hum.WalkSpeed = 8
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
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
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
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.05)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.05)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,1+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,4,-1.5)*CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(1.2, 20, -.2) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(50)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.2, 0-1*math.cos(sine/4)/2)*CFrame.Angles(math.rad(50-80*math.cos(sine/8)/2), math.rad(0), math.rad(0-70*math.cos(sine/8)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+8*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+4*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
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
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(10+2*math.cos(sine/10)),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(15),math.rad(5),math.rad(-20-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/20)),math.rad(40),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1*math.cos(sine/20), 2) * CFrame.Angles(0, math.rad(-40), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(100-1*math.cos(sine/14)), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2, .9, -1)*CFrame.Angles(math.rad(78+1*math.cos(sine/14)), math.rad(0), math.rad(50)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.3) * CFrame.Angles(math.rad(-14+1*math.cos(sine/14)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(-10+1*math.cos(sine/14)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10-1*math.cos(sine/14)), 0, 0), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-50-1*math.cos(sine/14)), 0, 0), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,1+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,3,-1.5)*CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(1.2, 10, -.2) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
end
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10-20*math.cos(sine/4)/2), math.rad(-40+10*math.cos(sine/4)/2), math.rad(50-10*math.cos(sine/4)/2)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .5)*CFrame.Angles(math.rad(10+20*math.cos(sine/4)/2), math.rad(40-10*math.cos(sine/4)/2), math.rad(-50+10*math.cos(sine/4)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+6*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
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



	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Head=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(4.50989914, 4.5098958, 4.50989771))
Headweld=weld(m,Character["Head"],Head,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.019949913, -0.784425735, 0.342384338, 1, 0, 0, 0, 0.939693093, -0.342019022, 0, 0.342018992, 0.939693093))
mesh("SpecialMesh",Head,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=16952952",Vector3.new(0, 0, 0),Vector3.new(2.25494957, 2.2549479, 2.25494885))
	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

LArm=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Handle",Vector3.new(2.39230847, 1.27000177, 2.25777745))
LArmweld=weld(m,Character["Left Arm"],LArm,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0699939728, 0.124999046, -1.14440918e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 4.16000175, 2.08000016))
Partweld=weld(m,LArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42499733, -0.0949978828, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(2.39230847, 1.27000177, 2.25777745))
Partweld=weld(m,LArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.45000315, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
LLeg=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","LLeg",Vector3.new(1.11393797, 2.15000176, 2.08000016))
LLegweld=weld(m,LArm,LLeg,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.450008392, -0.290473938, -1.11473179, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",LLeg,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Grass,0,0,"Really black","Part",Vector3.new(1.97212684, 4.08000183, 1.9832561))
Partweld=weld(m,LArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.155472755, -0.149731159, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 2.15000176, 2.08000016))
Partweld=weld(m,LArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.822774887, -1.09854889, 1.52587891e-005, -0.984807849, 0.173647985, 0, 0.173647985, 0.984807849, 0, 0, 0, -1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 2.15000176, 2.08000016))
Partweld=weld(m,LArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.789524078, 0.795269012, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

RArm=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Handle",Vector3.new(2.39230847, 1.27000177, 2.25777745))
RArmweld=weld(m,Character["Right Arm"],RArm,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0500068665, 0.124999046, -1.14440918e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(2.39230847, 1.27000177, 2.25777745))
Partweld=weld(m,RArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.45000315, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 4.16000175, 2.08000016))
Partweld=weld(m,RArm,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.54501152, -0.0949978828, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

RLeg=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Handle",Vector3.new(1.11393797, 2.15000176, 2.08000016))
RLegweld=weld(m,Character["Right Leg"],RLeg,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.450008392, -0.269515991, -0.949736118, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",RLeg,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,RLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.00201035, 1.44436717, 0.57000351, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,RLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.542831421, 0.283806801, 0.569999695, 0, -0.866025388, 0.500000238, 0, 0.500000179, 0.866025329, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Grass,0,0,"Really black","Part",Vector3.new(1.97212684, 4.0700016, 1.9832561))
Partweld=weld(m,RLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254991531, 0.96000123, -0.450004578, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 2.15000176, 2.08000016))
Partweld=weld(m,RLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.06000137, 1.91000128, -0.449989319, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 2.15000176, 2.08000016))
Partweld=weld(m,RLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.895587921, 0.0462193489, -0.450004578, 0, -0.984807849, 0.173647985, 0, 0.173647985, 0.984807849, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,RLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00769901276, 0.173805237, 0.593242645, -0.150384068, -0.852868438, 0.500000238, 0.0868240222, 0.492404103, 0.866025329, -0.984807789, 0.173648432, -2.60770406e-007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,RLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.470241547, 1.62436724, 0.593242645, -0.173647985, -0.984807849, 0, 0, 0, 1, -0.984807849, 0.173647985, 0))
	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Torso=part(Enum.FormFactor.Symmetric,m,Enum.Material.Grass,0,0,"Really black","Handle",Vector3.new(2.03212667, 4.08000183, 2.04325604))
Torsoweld=weld(m,Character["Torso"],Torso,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.044511795, 0.0452680588, 0.0299835205, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 3.91000199, 0.200000003))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.991963387, 0.394999981, -0.990013123, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.05393803, 4.16000175, 2.08000016))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.43049431, -0.0152668953, -0.0299987793, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 3.91000199, 0.200000003))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07803631, 0.394999981, -0.990009308, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(2.43393803, 4.46000195, 2.11000013))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0449981689, 0.119999886, 0.0149841309, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 4.16000175, 2.08000016))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.48950481, -0.0152668953, -0.0299835205, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 3.91000199, 0.200000003))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708036423, 0.585000515, -0.990009308, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 3.91000199, 0.200000003))
Partweld=weld(m,Torso,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.571961403, 0.585000515, -0.990013123, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

LLeg=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Handle",Vector3.new(1.11393797, 2.15000176, 2.08000016))
LLegweld=weld(m,Character["Left Leg"],LLeg,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.450004578, -0.240491867, -0.949736118, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",LLeg,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Grass,0,0,"Really black","Part",Vector3.new(1.97212684, 4.08000183, 1.9832561))
Partweld=weld(m,LLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.135001183, 0.965001106, -0.450008392, 0, 1, 0, 0, 0, 1, 1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 2.15000176, 2.08000016))
Partweld=weld(m,LLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07999802, 1.91000128, 0.450008392, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.11393797, 2.15000176, 2.08000016))
Partweld=weld(m,LLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.91526413, 0.0496888161, 0.450023651, 0, -0.984807849, 0.173647985, 0, 0.173647985, 0.984807849, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,LLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1345892, 1.44436717, -0.569984436, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,LLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.657648087, 0.350095749, -0.569992065, 0, -0.866025388, 0.500000238, 0, 0.500000179, 0.866025329, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,LLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.754587173, 1.624367, -0.569984436, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,LLeg,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.238555908, 0.315980911, -0.569992065, 0, -0.866025388, 0.500000238, 0, 0.500000179, 0.866025329, -1, 0, 0))

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Orb=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.5,"Institutional white","Handle",Vector3.new(3.20000124, 3.20000124, 3.20000124))
Orb.Shape = "Ball"
Orbweld=weld(m,Character["Left Arm"],Orb,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.319931984, 3.51501703, -0.0999984741, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Orb.Transparency = 0
----------------------------------------------------
	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

WIngs=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Lily white","Handle",Vector3.new(0.526163042, 0.373031557, 0.931079745))
WIngsweld=weld(m,Character["Torso"],WIngs,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0159111, -1.20853615, -6.0207634, 0.866024971, 0.250001013, -0.433012992, -0.326577812, 0.938599944, -0.111252062, 0.378612816, 0.237759501, 0.894495845))
mesh("BlockMesh",WIngs,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.429282606, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0145301819, -1.5309906, 1.12540245, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012840271, -2.20268631, 1.11525655, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 1.69621086, 2.74610329, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128326416, 3.14628506, 2.63505173, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.757224739, -0.653154373, 2.98023224e-008, -0.653154373, 0.757224917))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 1.01108551, 2.51173878, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.0735907629, -0.997288585, 0, -0.997288525, 0.0735907704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, 0.396331787, 2.11554885, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.187033802, -0.982353449, -7.4505806e-009, -0.982353449, -0.187033832))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128250122, -0.0868225098, 1.57054901, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.434913546, -0.900472343, 0, -0.900472283, -0.434913576))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128173828, 2.42856979, 2.78783226, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, -0.826882541, 0.562374532))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0128173828, -0.416015625, 0.917181015, -1, 1.86264515e-008, 5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, 0.159194946, -1.12555099, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140304565, -3.38129997, -2.7243309, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.329198927, 0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140457153, 1.33783531, 2.71401596, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Lily white","Part",Vector3.new(0.526163042, 0.373031557, 0.931079745))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.78812122, 1.92715263, -2.28927612, 0.49999845, -0.565649092, 0.655776381, 0.565651298, 0.786692977, 0.24729073, -0.655774534, 0.247295752, 0.713305533))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.429282606, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80215645, 2.86511993, 0.140659332, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80046654, -4.2369194, -0.140804291, -0.49999845, 0.565649092, -0.655776381, -0.433012724, 0.492487878, 0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80215645, -4.90860367, -0.150947571, -0.49999845, 0.565649092, -0.655776381, -0.433012724, 0.492487878, 0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80265999, -4.14035034, -0.33956337, 0.49999845, -0.565649092, 0.655776381, -0.750000596, 0.0957893208, 0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095482, 3.22347641, 0.17275238, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, -4.81201553, -0.349707603, 0.49999845, -0.565649092, 0.655776381, -0.750000596, 0.0957893208, 0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 2.76852798, 0.339404106, 0.49999845, -0.565649092, 0.655776381, 0.750000596, -0.0957893208, -0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095482, 3.18227959, -0.357192993, -0.49999845, 0.565649092, -0.655776381, -2.98023224e-007, -0.757224619, -0.653154492, -0.866026402, -0.326576054, 0.378611445))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094719, 3.23778915, -0.0931434631, -0.49999845, 0.565649092, -0.655776381, 0.224142939, -0.646899283, -0.728890419, -0.836517453, -0.511431754, 0.196662545))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80093193, 3.15235138, 0.421354294, -0.49999845, 0.565649092, -0.655776381, 0.612372398, -0.304515153, -0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80095387, 3.00566101, 0.650568962, -0.49999845, 0.565649092, -0.655776381, 0.749999642, -0.0957909003, -0.654465079, -0.433014959, -0.819063544, -0.376341343))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094147, 2.81278229, 0.830840111, -0.49999845, 0.565649092, -0.655776381, 0.836516857, 0.119463086, -0.534760058, -0.224145442, -0.815947115, -0.532906353))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80094433, 2.57622147, 0.953166008, -0.49999845, 0.565649092, -0.655776381, 0.866026282, 0.326575905, -0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 0.963986397, 2.83012009, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, -3.00747108, -2.84039688, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128250122, 3.25563431, 2.63391113, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.757224739, 0.653154373, 2.98023224e-008, -0.653154373, 0.757224917))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128440857, 2.53445959, 2.8150177, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.900472701, 0.434912592, 0, -0.434912592, 0.90047276))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 1.79145408, 2.79978943, 1, -1.86264515e-008, -5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, -0.187033504, 0.982353628))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128364563, -0.414859772, 1.02649212, 1, -1.86264515e-008, -5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, -1.49011612e-008, 0.757224798, 0.653154254))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128326416, 0.451953888, 2.2096405, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.94426012, -0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128364563, 1.08917046, 2.58826447, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0128173828, -0.057434082, 1.67582893, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.826882601, -0.562374711, 0, 0.562374711, 0.82688272))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140419006, -1.82085991, 1.02886391, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.014541626, -2.33579445, -2.83024597, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123214722, -1.149189, 1.03900719, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.01404953, -0.222623825, -1.03916359, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80045509, -4.03017044, 0.229810715, -0.49999845, 0.565649092, -0.655776381, -0.836517692, -0.511431158, 0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094051, 3.2564106, 0.190433502, 0.49999845, -0.565649092, 0.655776381, 0.433015227, 0.819063604, 0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093765, 3.05438042, 0.688827515, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093765, 3.21963882, -0.358337402, 0.49999845, -0.565649092, 0.655776381, 2.98023224e-007, 0.757224619, 0.653154492, -0.866026402, -0.326576054, 0.378611445))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80095196, 3.27416515, -0.0845680237, 0.49999845, -0.565649092, 0.655776381, 0.224145487, 0.815947115, 0.532906294, -0.836516857, -0.119463041, 0.534760058))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094719, 2.57737732, 0.990515709, 0.49999845, -0.565649092, 0.655776381, 0.866026282, 0.326575905, -0.378611505, 4.32133675e-007, 0.757224679, 0.653154492))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 3.0253334, 0.682353973, 0.49999845, -0.565649092, 0.655776381, 0.75000155, 0.66143465, -0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.8026638, -4.42617226, -0.68901062, 0.49999845, -0.565649092, 0.655776381, -0.612375081, -0.766361952, -0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80093575, -5.09785843, -0.699146271, 0.49999845, -0.565649092, 0.655776381, -0.612375081, -0.766361952, -0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80094624, 2.8235321, 0.866632462, 0.49999845, -0.565649092, 0.655776381, 0.836517394, 0.511432052, -0.196662098, -0.224143416, 0.646898985, 0.728890657))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.567338467, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80217552, -4.70182419, 0.219669342, -0.49999845, 0.565649092, -0.655776381, -0.836517692, -0.511431158, 0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.869309068, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80096149, 3.17957115, 0.446971893, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.904563606, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.92734933, 0.701169252))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216312, 2.65835953, -0.229951859, -0.49999845, 0.565649092, -0.655776381, 0.836517692, 0.511431158, -0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.659258127, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.893329322, 0.679436445))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123329163, -2.7096405, -2.71417046, -1, 1.86264515e-008, 5.96046448e-008, 0, 0.329198927, 0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.619396091, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.DiamondPlate,0,0,"Institutional white","Part",Vector3.new(2.33570647, 0.518153846, 1.07062769))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000423431396, 0.000568389893, 0.0205516815, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.397033691, 0.00685501099, 0.361976624, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.502140284, 1.85872841))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000408172607, 0.000564575195, 0.0234174728, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(2.33570647, 0.507859409, 1.26050401))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.00227355957, 0.0205459595, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(2.33570647, 0.497564912, 2.28537822))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000438690186, 0.00173950195, 0.0229845047, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146331787, -3.40140152, -1.11369061, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, 1.63386917, 1.11945939, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, -3.7252903e-009, -0.982352912, -0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122375488, -6.76598835, 0.57843399, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.608101726, 0.793859124, 0, -0.793859184, 0.608101785))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.385643005, 0.0125732422, -0.371212006, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0115966797, -0.543251038, 1.7864542, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.434913546, 0.900472343, 0, -0.900472283, -0.434913576))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0116043091, -1.59219742, 2.67541885, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, -0.997288525, 0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0115814209, -2.22006989, 2.7550087, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.011592865, -1.02312088, 2.25215411, 1, -1.86264515e-008, -5.96046448e-008, 0, -0.187033802, 0.982353449, -7.4505806e-009, -0.982353449, -0.187033832))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.67227566, 1.70316744))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0116004944, -0.851036072, 0.823085785, 1, -1.86264515e-008, -5.96046448e-008, 5.96046448e-008, -0.653154254, 0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 2.33112097, 0.885326684))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116004944, -4.12805939, 3.14675999, -1, 1.86264515e-008, 5.96046448e-008, -5.96046448e-008, 0.653154254, -0.757224917, 1.49011612e-008, -0.757224798, -0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146331787, -1.75381827, 0.0856170654, 1, -1.86264515e-008, -5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, -0.187033504, 0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146331787, -1.7653625, 1.58002472, -1, 1.86264515e-008, 5.96046448e-008, 5.58793545e-009, 0.982353508, 0.187033504, 0, 0.187033504, -0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146217346, 1.84269714, 2.61419201, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, 0.484992713, -0.874518216, 0, -0.874518156, -0.484992743))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -1.39143753, -1.12134099, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, -0.187036917, 0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, -4.44521141, -2.69960213, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.484992713, 0.874518216, 0, 0.874518156, 0.484992743))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146102905, -1.24437332, -1.12705016, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.187036917, -0.982352853, 3.7252903e-009, 0.982352912, 0.187036932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012260437, 2.08576965, -1.09300995, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, 2.07419205, 2.7586441, 1, -1.86264515e-008, -5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, -2.98023224e-008, -0.329200208, -0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, 2.81254005, -2.72010994, 1, -1.86264515e-008, -5.96046448e-008, 0, -0.329198927, -0.944260657, -1.49011612e-008, 0.944260657, -0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0122528076, -0.0657215118, 2.71253204, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.329198927, -0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, -4.58002281, 2.72588158, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122489929, -2.57005119, 2.71822929, 1, -1.86264515e-008, -5.96046448e-008, 0, 0.329198927, 0.944260657, 1.49011612e-008, -0.944260657, 0.329198956))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122451782, 4.16341972, -0.663871765, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, -0.608101726, -0.793859124, 0, 0.793859184, -0.608101785))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.76950121, 0.741203785))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0115814209, -4.30217743, 3.24400997, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.627695382, -0.778459072, -1.49011612e-008, -0.778458953, -0.627695441))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.DiamondPlate,0,0,"Institutional white","Part",Vector3.new(2.33570647, 0.518153846, 1.07062769))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99267197, 4.78870678, -0.0154352188, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.59518433, 4.79498959, 0.32599926, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.33570647, 0.502140284, 1.85872841))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99268341, 4.7886982, -0.0125761032, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(2.33570647, 0.507859409, 1.26050401))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99270248, 4.79042339, -0.0154447556, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(2.33570647, 0.497564912, 2.28537822))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.99266815, 4.78983879, -0.0129785538, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80036545, 4.80890846, 2.25815582, 0.49999845, -0.565649092, 0.655776381, 0.176621437, -0.674706042, -0.716642678, 0.847824514, 0.474144399, -0.237446278))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037117, -4.09732819, 0.144859314, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -6.10728073, 0.152519226, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037498, -0.499183655, 4.28593826, 0.49999845, -0.565649092, 0.655776381, -0.75000155, -0.66143465, 0.00131103396, 0.433011711, -0.492488772, -0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.802742, 1.36500931, 0.337909698, 0.49999845, -0.565649092, 0.655776381, 0.750000596, -0.0957893208, -0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80034828, 1.46158218, 0.139152527, -0.49999845, 0.565649092, -0.655776381, 0.433012724, -0.492487878, -0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037212, -0.487609863, -2.62030792, -0.49999845, 0.565649092, -0.655776381, -0.75000155, -0.66143465, 0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80035973, 4.33980179, -0.146759033, 0.49999845, -0.565649092, 0.655776381, 0.433012724, -0.492487878, -0.754954159, 0.750001132, 0.661435425, -0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -7.41146851, -2.34357452, 0.49999845, -0.565649092, 0.655776381, -0.176621437, 0.674706042, 0.716642678, -0.847824514, -0.474144399, 0.237446278))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.8027401, 4.77935791, 2.0391655, -0.49999845, 0.565649092, -0.655776381, 0.847824097, 0.16527845, -0.50386256, -0.176623657, -0.807913423, -0.562209845))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274773, -0.288840294, -2.52373123, 0.49999845, -0.565649092, 0.655776381, 0.433015227, 0.819063604, 0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.54303002, 0.373031557, 1.3668803))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.60663605, 4.80071163, -0.407197952, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.901492953, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274963, -0.300402641, 4.18932724, -0.49999845, 0.565649092, -0.655776381, 0.433015227, 0.819063604, 0.376341105, 0.749999583, -0.0957911685, -0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80271721, -4.00077438, 0.34360981, -0.49999845, 0.565649092, -0.655776381, -0.750000596, 0.0957893208, 0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.802742, 4.24324417, -0.345514297, -0.49999845, 0.565649092, -0.655776381, 0.750000596, -0.0957893208, -0.654464483, -0.433013558, -0.819063783, -0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274391, -7.38192749, -2.1245718, -0.49999845, 0.565649092, -0.655776381, -0.847824097, -0.16527845, 0.50386256, 0.176623657, 0.807913423, 0.562209845))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971504, -3.44285583, 1.04676247, 0.49999845, -0.565649092, 0.655776381, -0.836516857, -0.119463086, 0.534760058, -0.224145442, -0.815947115, -0.532906353))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971695, -3.73348618, 0.58502388, 0.49999845, -0.565649092, 0.655776381, -0.612372398, 0.304515153, 0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.802742, -6.01073456, 0.351270676, -0.49999845, 0.565649092, -0.655776381, -0.750000596, 0.0957893208, 0.654464483, 0.433013558, 0.819063783, 0.376342565))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79972649, -3.63246918, 0.787195206, 0.49999845, -0.565649092, 0.655776381, -0.749999642, 0.0957909003, 0.654465079, -0.433014959, -0.819063544, -0.376341343))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.76950121, 0.741203785))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.79971886, -1.31037903, 3.18079185, -0.49999845, 0.565649092, -0.655776381, 0.865550399, 0.301296592, -0.400053799, -0.0287068337, -0.767633677, -0.640245616))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 2.33112097, 0.885326684))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.79972172, -1.1358223, 3.18273926, -0.49999845, 0.565649092, -0.655776381, 0.866026282, 0.326575905, -0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.7997303, -3.74736404, 0.181629181, 0.49999845, -0.565649092, 0.655776381, -0.433012724, 0.492487878, 0.754954159, -0.750001132, -0.661435425, 0.00130999088))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.67227566, 1.70316744))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.79971409, -3.84326553, 0.859061241, 0.49999845, -0.565649092, 0.655776381, -0.866026282, -0.326575905, 0.378611505, -4.32133675e-007, -0.757224679, -0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146179199, -0.439552307, 2.82862473, 1, -1.86264515e-008, -5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146255493, 2.43866539, -2.83621216, -1, 1.86264515e-008, 5.96046448e-008, 1.49011612e-008, 0.997288585, -0.073588416, -2.98023224e-008, -0.0735884532, -0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, 2.19028473, 2.38479328, -1, 1.86264515e-008, 5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, 0.997288525, -0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0146331787, 2.20183945, -0.719162941, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, 0.0735907629, 0.997288585, 0, -0.997288525, 0.0735907704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140457153, -2.31531954, 2.80868149, -1, 1.86264515e-008, 5.96046448e-008, -5.58793545e-009, -0.982353508, -0.187033504, 0, -0.187033504, 0.982353628))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -1.67030334, 2.75189209, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0145950317, -6.44722939, 0.805679321, -1, 1.86264515e-008, 5.96046448e-008, 1.11758709e-008, -0.970244586, -0.242127106, 0, -0.242127106, 0.970244527))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140609741, -0.572654724, 1.89173317, -1, 1.86264515e-008, 5.96046448e-008, 0, -0.826882601, 0.562374711, 0, 0.562374711, 0.82688272))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -1.07876587, 2.34624863, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.94426012, 0.329200208, 2.98023224e-008, 0.329200208, 0.94426012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -4.20618105, 2.84195328, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, -2.19620895, 2.83431244, -1, 1.86264515e-008, 5.96046448e-008, -1.49011612e-008, -0.997288585, 0.073588416, 2.98023224e-008, 0.0735884532, 0.997288704))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146179199, 3.84465933, -0.891094208, -1, 1.86264515e-008, 5.96046448e-008, -1.11758709e-008, 0.970244586, 0.242127106, 0, 0.242127106, -0.970244527))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012260437, 1.25204659, 1.03306961, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, 5.96046448e-008, 0.562375724, 0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122413635, -3.0195713, -1.02729225, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0122451782, -1.66742134, 0.467433929, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, -0.826882541, 0.562374532))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122451782, -1.67897987, 1.19819832, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, -0.562374592, -0.82688272, 0, 0.826882541, -0.562374532))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122489929, 1.50705338, 2.41267586, 1, -1.86264515e-008, -5.96046448e-008, 2.98023224e-008, 0.609420419, -0.792847335, 0, 0.792847276, 0.609420419))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.012260437, -1.00959778, -1.03495979, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.826881826, 0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0122528076, -4.10961151, -2.49808693, 1, -1.86264515e-008, -5.96046448e-008, -2.98023224e-008, -0.609420419, 0.792847335, 0, -0.792847276, -0.609420419))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012260437, -1.6261673, -1.04066467, -1, 1.86264515e-008, 5.96046448e-008, 2.98023224e-008, 0.826881826, -0.562375784, -5.96046448e-008, -0.562375724, -0.826881766))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.67227566, 1.75463974))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0140533447, -0.852184296, 0.906645775, -1, 1.86264515e-008, 5.96046448e-008, 5.96046448e-008, -0.653154254, 0.757224917, -1.49011612e-008, 0.757224798, 0.653154254))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80034447, -0.86977005, 4.07917023, 0.49999845, -0.565649092, 0.655776381, 0.224142939, -0.646899283, -0.728890419, 0.836517453, 0.511431754, -0.196662545))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038261, -7.09912872, -2.63088512, 0.49999845, -0.565649092, 0.655776381, -0.864648581, -0.283361614, 0.414836287, -0.0488298535, -0.774433494, -0.630768061))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037403, -3.89056778, -0.225765228, 0.49999845, -0.565649092, 0.655776381, -0.836517692, -0.511431158, 0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038261, -5.9005394, -0.218101501, 0.49999845, -0.565649092, 0.655776381, -0.836517692, -0.511431158, 0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037498, -0.858222961, -2.41352463, -0.49999845, 0.565649092, -0.655776381, 0.224142939, -0.646899283, -0.728890419, -0.836517453, -0.511431754, 0.196662545))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80037594, 4.49656296, 2.54547501, 0.49999845, -0.565649092, 0.655776381, 0.864648581, 0.283361614, -0.414836287, 0.0488298535, 0.774433494, 0.630768061))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.583352029, 0.373031557))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.8027277, 0.0490112305, 4.47517967, -0.49999845, 0.565649092, -0.655776381, -0.612372398, 0.304515153, 0.729568839, 0.61237365, 0.766362667, 0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 0.417018801))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.613091588, 3.18786216))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274391, 0.0605697632, -2.80956078, 0.49999845, -0.565649092, 0.655776381, -0.612372398, 0.304515153, 0.729568839, -0.61237365, -0.766362667, -0.194130719))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80274677, 4.52905464, -0.69493866, -0.49999845, 0.565649092, -0.655776381, 0.612375081, 0.766361952, 0.194129199, 0.612371087, -0.304516733, -0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80274773, 1.65083885, 0.687343597, 0.49999845, -0.565649092, 0.655776381, 0.612375081, 0.766361952, 0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.969965518, 1.26393533))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80273438, 5.16016769, 1.79669189, -0.49999845, 0.565649092, -0.655776381, 0.390038431, 0.823161662, 0.412643731, 0.773221493, -0.0494567379, -0.632204533))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.584495842, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80038166, 4.13302612, 0.223876953, 0.49999845, -0.565649092, 0.655776381, 0.836517692, 0.511431158, -0.196663141, -0.224142194, 0.6468997, 0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.539886534, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80273819, -4.28659248, 0.693054199, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 1.83584321, 0.702313483))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80276012, -6.29656792, 0.700717926, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 0.725190163))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216217, -3.78028393, 0.199310303, -0.49999845, 0.565649092, -0.655776381, -0.433015227, -0.819063604, -0.376341105, -0.749999583, 0.0957911685, 0.654465318))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.478343189, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.373031557, 1.03288114))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216694, -3.76069069, 0.610641479, -0.49999845, 0.565649092, -0.655776381, -0.612375081, -0.766361952, -0.194129199, -0.612371087, 0.304516733, 0.729569316))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 0.794172287, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 4.23216105, 1.09807956))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80275726, -7.76274252, -1.88209915, -0.49999845, 0.565649092, -0.655776381, -0.390038431, -0.823161662, -0.412643731, -0.773221493, 0.0494567379, 0.632204533))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 1.67227566, 1.75463974))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216217, -3.84443283, 0.870663643, -0.49999845, 0.565649092, -0.655776381, -0.866026282, -0.326575905, 0.378611505, 4.32133675e-007, 0.757224679, 0.653154492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.395764321, 1.10837412))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80217838, -3.45362091, 1.0825386, -0.49999845, 0.565649092, -0.655776381, -0.836517394, -0.511432052, 0.196662098, -0.224143416, 0.646898985, 0.728890657))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.373031408, 0.380894542, 0.985983968))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80216312, -3.65211487, 0.818996429, -0.49999845, 0.565649092, -0.655776381, -0.75000155, -0.66143465, 0.00131103396, -0.433011711, 0.492488772, 0.7549541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.892298341, 1, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(0.373031408, 0.885322511, 0.706888735))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80037689, 1.2548027, -0.231477737, -0.49999845, 0.565649092, -0.655776381, 0.836517692, 0.511431158, -0.196663141, 0.224142194, -0.6468997, -0.7288903))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.656192005, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.44351673, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.37387466, 0.0131607056, 3.24288177, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904559135, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45108032, -0.324279785, 3.24173164, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(1.28909934, 0.543318033, 1.14497685))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45108795, 0.0165786743, 3.23201942, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45106888, 0.370029449, 3.24633598, 3.87430191e-007, -0.653154194, 0.757224858, 1, -8.00937414e-007, -1.25169754e-006, 1.37090683e-006, 0.757224798, 0.653154254))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458839417, 5.15813541, 3.2103529, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.28909934, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458843231, 4.46384811, 3.20575047, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.567265928, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(1.28909934, 0.543318033, 1.14497685))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458824158, 4.80470562, 3.19602489, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.44351673, 0.373031557, 1.23305202))
Partweld=weld(m,WIngs,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.381649017, 4.80128193, 3.20690632, -0.866025805, -0.326576054, 0.378612459, 0.499999344, -0.565649092, 0.655775666, 1.11758709e-006, 0.757224619, 0.653154552))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904559135, 1))




	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

BladeEnd=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.333970994, 2.40790987, 0.825482368))
BladeEndweld=weld(m,Character["Right Arm"],BladeEnd,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.450769424, -5.79949188, -1.7236805, -0.999986351, -0.00451200129, -0.00263599772, 0.00276065455, -0.0278460663, -0.999610126, 0.00443684589, -0.999605477, 0.0278581958))
mesh("BlockMesh",BladeEnd,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 1))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.333970994, 2.93125677, 0.825482368))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-005, -5.98527908, 0.00445604324, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 1))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.333970994, 0.442278117, 0.333971083))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -2.39555359, 3.80643082, 1, -5.3551048e-009, 1.5788828e-009, -1.62981451e-009, 0.500003278, 0.866030395, 5.12227416e-009, -0.866027415, 0.500004888))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 0.522144258))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.333970994, 0.426588923, 0.333971083))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 2.40819931, 3.84829712, 1, -5.3551048e-009, 1.5788828e-009, 4.07453626e-009, -0.499998868, 0.866032958, 3.95812094e-009, -0.866030097, -0.500000536))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 0.834210217))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.333970994, 0.442278117, 0.333971083))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.33514404e-005, 0.468460083, -1.15685654, 1, -5.3551048e-009, 1.5788828e-009, 1.62981451e-009, -0.500003278, -0.866030395, -5.12227416e-009, 0.866027415, -0.500004888))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 0.522144258))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.333970994, 3.13969851, 0.398512334))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -2.85785294, 0.00391054153, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 1))
Blade=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.333970994, 0.426588923, 0.333971083))
Bladeweld=weld(m,BladeEnd,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.458122253, -1.16581345, 1, -5.3551048e-009, 1.5788828e-009, -4.07453626e-009, 0.499998868, -0.866032958, -3.95812094e-009, 0.866030097, 0.500000536))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.807545543, 1, 0.522144258))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00392150879, -0.000373840332, 6.66751862, 1, -3.30619514e-008, -9.9773024e-007, 1.00096076e-006, 1.07847154e-006, 1.00000679, -2.28174031e-008, -1.00000346, 1.09151006e-006))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.884725809, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00390815735, 6.52303314, 1.88164616, 1, -5.3551048e-009, 1.5788828e-009, 5.58793545e-009, -0.965928555, 0.258823007, -4.65661287e-010, -0.258822083, -0.965931714))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.12972711, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00391769409, 0.0489282608, 6.86997986, 1, -3.30619514e-008, -9.9773024e-007, 1.00096076e-006, 1.07847154e-006, 1.00000679, -2.28174031e-008, -1.00000346, 1.09151006e-006))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.616281807, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00391578674, 5.61977386, 3.36309242, 1, -3.30619514e-008, -9.9773024e-007, 4.8102811e-007, -0.866027653, 0.50000453, -8.77771527e-007, -0.500002861, -0.866030633))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.794125915, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.452364713, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0039100647, -6.65688705, 0.13747406, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 1, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00391578674, 6.71179581, 0.134818077, 1, -5.3551048e-009, 1.5788828e-009, 5.3551048e-009, -1.00000346, 5.58793545e-009, -1.5788828e-009, 5.58793545e-009, -1.00000691))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.34112677, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00389480591, 4.77613449, 4.91134644, 1, -5.3551048e-009, 1.5788828e-009, 4.88944352e-009, -0.707108498, 0.707112134, 2.79396772e-009, -0.707109809, -0.707111001))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.12972711, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00392341614, 5.84634399, 3.51166153, 1, -5.3551048e-009, 1.5788828e-009, 5.3551048e-009, -0.86602813, 0.500003815, 1.62981451e-009, -0.500002027, -0.866031051))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.12972711, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00389862061, 1.71303558, 6.64987946, 1, -3.30619514e-008, -9.9773024e-007, 9.61008482e-007, -0.258820415, 0.96593225, -2.80793756e-007, -0.965929031, -0.258821368))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.898145258, 0.12972711, 0.0892784372))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.672227144, 1.760818))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00542259216, -0.378371716, 8.37445831, -1, -8.87969509e-006, 4.24777681e-006, -4.31565422e-006, 0.00727553666, -0.999980152, 8.85874033e-006, -0.999976993, -0.00727554969))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.774613976, 1, 1))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 5.69591618, 0.333971083))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000516891479, -2.73707199, -0.00561141968, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.844456613, 1, 0.458388805))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 8.72168827, 1.36339724))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00561523438, -3.13931656, -0.0179476738, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",BladeNeon,"","",Vector3.new(0, 0, 0),Vector3.new(0.760567904, 1, 1))
BladeNeon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","BladeNeon",Vector3.new(0.333970994, 0.681192338, 1.760818))
BladeNeonweld=weld(m,BladeEnd,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00429534912, -0.295157909, 8.37542725, 1, 8.87969509e-006, -4.24777681e-006, 4.31533408e-006, -0.0072765369, 0.999980271, 8.85874033e-006, -0.999976933, -0.0072765518))
mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.767835736, 1, 1))
Handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.333970994, 3.65670252, 0.333971083))
Handleweld=weld(m,BladeEnd,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00547122955, -5.38523102, -0.00175476074, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1.36788003e-006, -1.00000346, 2.09547579e-006, 1, 1.35786831e-006, 1.63512595e-007))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.677820504, 1, 0.80868715))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00848770142, 4.68890381, 5.0786438, -1, 5.3551048e-009, -1.5788828e-009, -2.79396772e-009, 0.707109809, 0.707111001, -4.88944352e-009, 0.707108498, -0.707112134))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 0.567087829))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 1.90585577, 1.45080817))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0022315979, 2.16143417, -0.0224318504, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000429153442, -0.148144245, 1.37475967, -1, 3.86452302e-006, -5.11141843e-006, -5.13588748e-006, -0.00727250986, 0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.615819991, 1.04920125))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00186729431, 0.705814362, 1.8845787, -1, -5.0291419e-008, -2.00066279e-006, -1.46543607e-006, 0.701945484, 0.712237716, 1.35891605e-006, 0.712235332, -0.701947927))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.847812057, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.730286956, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00281333923, 2.86053848, 0.11316824, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 1, 0.270477563))
Handle2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.51886344, 0.333971083, 0.636532664))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00347757339, -0.00207901001, 2.874897, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.842242956, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.66064626, 1.13885355))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000751495361, 0.735794067, 2.04483795, -1, -5.0291419e-008, -2.00066279e-006, -1.46543607e-006, 0.701945484, 0.712237716, 1.35891605e-006, 0.712235332, -0.701947927))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.750458777, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00281143188, 2.86390305, -0.125523567, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 1, 0.270477563))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 2.43250322))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00225639343, 3.24793243, -0.0257816315, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 0.827679455, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.477399707, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00573730469, 5.12487411, 5.07043457, 1, -5.3551048e-009, 1.5788828e-009, -4.88944352e-009, 0.707108498, -0.707112134, -2.79396772e-009, 0.707109809, 0.707111001))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 1, 0.671109617))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00847434998, 5.07132339, 5.49375916, -1, 5.3551048e-009, -1.5788828e-009, -2.79396772e-009, 0.707109809, 0.707111001, -4.88944352e-009, 0.707108498, -0.707112134))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 0.781843007))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 1.71422374, 0.527387738))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00225067139, 0.240013123, -0.00784635544, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.869846582, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00223922729, 3.48665237, -0.0140166283, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 0.827679455, 0.414765924))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 1.23496354, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057144165, 6.50336838, 0.0964884758, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 1, 0.637554169))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00573348999, 4.2307663, -4.09196472, 1, -5.3551048e-009, 1.5788828e-009, -2.79396772e-009, 0.707109809, 0.707111001, 4.88944352e-009, -0.707108498, 0.707112134))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 0.452999234, 0.452998996))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.963326454))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00227165222, 3.39096451, 0.390414715, 1, -5.3551048e-009, 1.5788828e-009, -5.58793545e-009, 0.965928555, -0.258823007, 4.65661287e-010, 0.258822083, 0.965931714))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 0.827679455, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.963326454))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00225067139, 3.38317871, -0.408802032, 1, -5.3551048e-009, 1.5788828e-009, -4.42378223e-009, 0.965928733, 0.25882256, 2.96859071e-009, -0.258821636, 0.965931952))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 0.827679455, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.530070603, 0.595068455))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00849342346, -3.96007156, 6.41414642, -1.00000012, 2.06101686e-006, 1.94132008e-006, 5.31668775e-007, -0.539589584, 0.841935158, 2.77510844e-006, 0.841932237, 0.539591372))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.452745259, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00574302673, 4.75794983, 4.6880188, 1, -5.3551048e-009, 1.5788828e-009, -4.88944352e-009, 0.707108498, -0.707112134, -2.79396772e-009, 0.707109809, 0.707111001))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 1, 0.671109617))
Handle2=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.356368661))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00491142273, -3.52550125, -0.00119590759, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1.36788003e-006, -1.00000346, 2.09547579e-006, 1, 1.35786831e-006, 1.63512595e-007))
mesh("CylinderMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.788553476, 0.718087614, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.391848803, 0.756001353))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00224113464, 0.895763397, 0.829719543, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 0.866027653, -0.50000453, -1.39698386e-009, 0.500002861, 0.866030633))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000440597534, -0.138348579, 0.894599915, 1, 1.88290142e-006, -4.05231549e-006, 4.06977051e-006, -0.00727253594, 0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000467300415, -0.172971725, -4.87036133, 1, -3.86452302e-006, 5.11141843e-006, 5.13588748e-006, 0.00727250986, -0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.66064626, 1.13885355))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296974182, 0.775684357, 2.01208115, 1, -9.49250534e-007, 2.02898082e-006, 2.10141297e-006, 0.701943696, -0.712239444, -7.53090717e-007, 0.712237179, 0.70194608))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000457763672, -0.0884757042, 7.14133453, 1, 1.88290142e-006, -4.05231549e-006, 4.06977051e-006, -0.00727253594, 0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00278663635, 2.60951233, -0.0151414871, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 0.683390796, 0.723476529))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.615819991, 1.04920125))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00187492371, 0.745685577, 1.8518219, 1, -9.49250534e-007, 2.02898082e-006, 2.10141297e-006, 0.701943696, -0.712239444, -7.53090717e-007, 0.712237179, 0.70194608))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.847812057, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.66064626, 1.13885355))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00299263, -1.55075121, 3.68893433, -1, 9.7672455e-007, -1.02919876e-006, -1.01856858e-006, 0.007278217, 0.99998033, 9.73697752e-007, 0.999976873, -0.00727825798))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000438690186, -0.132833481, 0.892940521, -1, -1.88290142e-006, 4.05231549e-006, -4.06977051e-006, 0.00727253594, -0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000461578369, -0.098233223, -4.87198639, -1, 3.86452302e-006, -5.11141843e-006, -5.13588748e-006, -0.00727250986, 0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000400543213, -0.123067856, 1.37639999, 1, -3.86452302e-006, 5.11141843e-006, 5.13588748e-006, 0.00727250986, -0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.66064626, 1.13885355))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00226783752, -1.49668598, 3.68751907, 1, 2.25845724e-008, 1.00135367e-006, 9.98486939e-007, 0.00727552548, -0.999980271, -4.02797014e-008, 0.999976993, 0.00727553107))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 1.71422374, 0.527387738))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00223731995, -6.00695419, -0.00337791443, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.861234307, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.562836468))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000419616699, -0.182757378, 7.13973236, -1, -1.88290142e-006, 4.05231549e-006, -4.06977051e-006, 0.00727253594, -0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.859341383, 0.814899206, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.391848803, 0.756001353))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00224304199, 0.873001099, -0.876026154, 1, -5.3551048e-009, 1.5788828e-009, -3.25962901e-009, 0.866028011, 0.500003994, 3.95812094e-009, -0.500002265, 0.866030872))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.8276788, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.397666305, 1.13997447))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000431060791, -0.155970097, 8.00754547, 1, 1.88290142e-006, -4.05231549e-006, 4.06977051e-006, -0.00727253594, 0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.798337698, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.435768574, 1.13997447))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00150680542, -0.259859562, 8.01216888, -1, -8.87969509e-006, 4.24777681e-006, -4.31565422e-006, 0.00727553666, -0.999980152, 8.85874033e-006, -0.999976993, -0.00727554969))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.805115938, 1, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.477399707, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00572776794, 3.31259918, 1.56507874, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 0.86602813, -0.500003815, -1.62981451e-009, 0.500002027, 0.866031051))
mesh("BlockMesh",Handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.754998088, 1, 0.671109617))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00847244263, 1.56596184, 3.68146133, -1, 5.3551048e-009, -1.5788828e-009, -1.62981451e-009, 0.500003278, 0.866030395, -5.12227416e-009, 0.866027415, -0.500004888))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 0.781843007))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00846862793, -0.113676071, -3.98678207, -1, 5.3551048e-009, -1.5788828e-009, -6.54836185e-010, -0.114217885, -0.993462563, 5.3551048e-009, -0.993459225, 0.11421828))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 0.563732326))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.652221978))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00847244263, 2.12783813, 4.00239944, 1, 5.0291419e-008, 2.00066279e-006, 1.7893035e-006, 0.418343931, -0.908295453, -8.91042873e-007, 0.908292413, 0.418345362))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.523465693, 1))
Handle2=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle2",Vector3.new(0.333970994, 0.333971083, 0.534553051))
Handle2weld=weld(m,BladeEnd,Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00848197937, -0.114953518, 4.34464645, 1, -5.3551048e-009, 1.5788828e-009, -6.54836185e-010, -0.114217885, -0.993462563, -5.3551048e-009, 0.993459165, -0.114218257))
mesh("SpecialMesh",Handle2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.744931459, 0.671109915, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 1.76913583, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00280761719, 2.54881287, -0.00673675537, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.851167679, 1, 0.444966584))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.615819991, 1.04920125))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00242233276, 0.781448364, 1.95035934, 1, -9.49250534e-007, 2.02898082e-006, 2.10141297e-006, 0.701943696, -0.712239444, -7.53090717e-007, 0.712237179, 0.70194608))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 1, 1))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11886787, -0.00262260437, 3.30176163, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.832176328, 0.80868715))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.36180529, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00124740601, -0.197305202, 1.52207947, -1, 3.86452302e-006, -5.11141843e-006, -5.13588748e-006, -0.00727250986, 0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.12582397, -0.00260162354, 3.30752563, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.832176328, 0.80868715))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.360684603, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00125694275, -0.156280041, 1.52334595, 1, -3.86452302e-006, 5.11141843e-006, 5.13573468e-006, 0.00727050938, -0.999980271, 3.81702557e-006, 0.999976993, 0.00727053359))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.403703302))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00126838684, 2.85546875, 0.447472572, 1, 2.25845724e-008, 1.00135367e-006, -4.02797014e-008, 0.999976933, 0.00727766939, -9.98494215e-007, -0.00727765262, 0.999980211))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.526321769, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00126075745, 1.30287552, 1.671875, -1, 3.86452302e-006, -5.11141843e-006, -9.32952389e-007, 0.701947451, 0.712235808, 6.33043237e-006, 0.712233365, -0.701949954))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.190766811, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.403703302))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00127220154, 2.8675766, 0.511937141, -1, 3.86452302e-006, -5.11141843e-006, 3.81679274e-006, 0.999976873, 0.00727466121, 5.1354582e-006, 0.00727464817, -0.999980271))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.526321769, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.615819991, 1.04920125))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00128173828, 0.741531372, 1.98311234, -1, -5.0291419e-008, -2.00066279e-006, -1.46543607e-006, 0.701945484, 0.712237716, 1.35891605e-006, 0.712235332, -0.701947927))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.837745428, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00129127502, 2.06131363, -1.58065796, -1, 3.86452302e-006, -5.11141843e-006, 6.3306652e-006, 0.712233424, -0.701949954, 9.32952389e-007, -0.701947451, -0.712235808))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.526321769, 0.873242319))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.65778923, -0.00261688232, 3.554142, 9.13976692e-007, -0.298402101, 0.954447031, 1, 2.66823918e-007, -8.68145435e-007, -4.42378223e-009, 0.954443753, 0.298403084))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.832176328, 0.80868715))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.071811676, -0.00623512268, 6.19100571, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.761709809, 0.80868715))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0718102455, -0.00624275208, 6.83526611, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.761709809, 0.80868715))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0718164444, -0.00625419617, 6.99786377, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.761709809, 0.80868715))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0718173981, -0.00625228882, 6.02839279, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.761709809, 0.80868715))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.633004189, 1.13885355))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00294113159, -1.51745224, 3.69674301, 1, 2.25845724e-008, 1.00135367e-006, 9.98486939e-007, 0.00727552548, -0.999980271, -4.02797014e-008, 0.999976993, 0.00727553107))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.790433347, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.36180529, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00124549866, -0.169769287, 1.02795029, -1, -1.88290142e-006, 4.05231549e-006, -4.06977051e-006, 0.00727253594, -0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.36180529, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00121879578, -0.147402763, -4.72467804, -1, 3.86452302e-006, -5.11141843e-006, -5.13588748e-006, -0.00727250986, 0.99998033, 3.81655991e-006, 0.999976933, 0.00727252662))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00126075745, 2.0196228, -1.61859512, 1, 2.25845724e-008, 1.00135367e-006, -7.34464265e-007, 0.70194453, 0.712238789, -6.76838681e-007, -0.712236404, 0.701947033))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.526321769, 0.940353274))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00123596191, 1.31023407, 1.65644073, 1, 4.13204543e-006, 4.88809019e-006, 5.71715645e-007, 0.701945722, -0.712237537, -6.37990888e-006, 0.712235212, 0.701948166))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 0.190766811, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 2.02464533, 0.704451442))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00224876404, -5.9966774, -0.00673389435, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.834389985, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.360684603, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00121307373, -0.206172466, -4.72341537, 1, -3.86452302e-006, 5.11141843e-006, 5.13573468e-006, 0.00727050938, -0.999980271, 3.81702557e-006, 0.999976993, 0.00727053359))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.36180529, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00122642517, -0.219696999, 7.27475739, -1, -1.88290142e-006, 4.05231549e-006, -4.06977051e-006, 0.00727253594, -0.999980271, 1.8638093e-006, -0.999976933, -0.00727254525))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709104538, 0.00263023376, 3.57127762, 5.24742063e-007, -0.298404753, -0.954446197, -1, 1.02631748e-006, -8.71201337e-007, 1.22864731e-006, 0.954442978, -0.298405796))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.402665645, 0.832176328, 0.80868715))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.360684603, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00124359131, -0.133904457, 7.27602386, 1, 1.88290142e-006, -4.05231549e-006, 4.06897016e-006, -0.00727054104, 0.99998033, 1.86357647e-006, -0.999976873, -0.00727054477))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 2.02464533, 0.704451442))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0022354126, 0.250286102, -0.011218071, 1, -5.3551048e-009, 1.5788828e-009, -5.3551048e-009, 1.00000346, -5.58793545e-009, 1.5788828e-009, -5.58793545e-009, 1.00000691))
mesh("BlockMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.834389985, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.360684603, 0.53818208))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00124740601, -0.18379879, 1.0292511, 1, 1.88290142e-006, -4.05231549e-006, 4.06897016e-006, -0.00727054104, 0.99998033, 1.86357647e-006, -0.999976873, -0.00727054477))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.834055364, 1, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.333971083, 0.333971083))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0027923584, 2.42457581, -2.43035126, 1, -5.3551048e-009, 1.5788828e-009, -2.79396772e-009, 0.707109809, 0.707111001, 4.88944352e-009, -0.707108498, 0.707112134))
mesh("BlockMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.851167679, 0.317635983, 0.314100146))
Neon=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.620843053, 0.333971083, 0.636532664))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00516605377, -0.00261116028, 2.88111496, -1.60551281e-007, 2.08243728e-006, 1.00000679, 1, -5.3551048e-009, 1.63745426e-007, -5.12227416e-009, 1.00000334, -2.09547579e-006))
mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.832176328, 1))
Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Neon",Vector3.new(0.333970994, 0.633004189, 1.13885355))
Neonweld=weld(m,BladeEnd,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00233078003, -1.57151031, 3.69814682, -1, 9.7672455e-007, -1.02919876e-006, -1.01856858e-006, 0.007278217, 0.99998033, 9.73697752e-007, 0.999976873, -0.00727825798))
mesh("SpecialMesh",Neon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.790433347, 1, 1))

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Face=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Institutional white","Handle",Vector3.new(2.39999938, 2.39999938, 2.39999938))
Face.Shape = "Ball"
Faceweld=weld(m,Character["Head"],Face,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0199375153, 0.150016785, -0.590007782, -1, 0, 0, 0, 1, 0, 0, 0, -1))


	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Back=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"Really black","Handle",Vector3.new(4.37000132, 3.20000124, 1.59000123))
Backweld=weld(m,Character["Torso"],Back,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0149364471, -0.464990616, 1.0450058, -1, 0, 0, 0, 1, 0, 0, 0, -1))

local size = 40,40,40


----------------------------------------------------
	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

F3=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0.5,"Really black","Handle",Vector3.new(30.6000023, 30.6000023, 30.6000023))
F3weld=weld(m,Character["Torso"],F3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.35006237, -0.479990005, 1.62999344, -1, 0, 0, 0, 1, 0, 0, 0, -1))
F3.Name = "F3"
F3.Shape = "Ball"
F3.CanCollide = false
F3.Size = Vector3.new(size)
F3.Transparency = 0.7
F3.Material = "Neon"
F3.Anchored = true
F3.BrickColor = BrickColor.new(0,0,0)
F3.Locked = true
F3.Archivable = false



local p = F3
local me = game.Players.LocalPlayer.Character
 game.Workspace.CodedOverLordPlush.Humanoid.JumpPower = 400


p.Shape = "Ball"

game:GetService('RunService').Stepped:connect(function()
	p.CFrame = me.Torso.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
end)


wait(0.1)

F3.CanCollide = false
F3.CanCollide = false


F3.Transparency = 0.9