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
local debris=game:service"Debris"
local stanceToggle = "Normal"
math.randomseed(os.time())
hum.WalkSpeed = 7
char.Health:Destroy()
hum.MaxHealth = math.huge
wait(0.1)
hum.Health = math.huge
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=236410507"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=236412261"
end)
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
function Tween(a,b,c)
return a+(b-a)*c
end
----------------------------------------------------
function nwPrt(prnt,siz,cf,col)
local prt=Instance.new("Part")
prt.Parent=prnt
prt.FormFactor=3
prt.Name="Part"
prt.Size=siz
prt.CanCollide=false
prt.Anchored=true
prt.Locked=true
prt.TopSurface=10
prt.BottomSurface=10
prt.FrontSurface=10
prt.BackSurface=10
prt.LeftSurface=10
prt.RightSurface=10
prt:BreakJoints()
prt.CFrame=cf or CFrame.new(30,10,30)
prt.Material="Neon"
prt.BrickColor=BrickColor.new(col)
m=Instance.new("SpecialMesh",prt)
m.MeshType=6
return prt
end
----------------------------------------------------
function nwSnd(prnt,pch,vol,id)
        local s=Instance.new("Sound",prnt)
        s.Pitch=pch
        s.Volume=vol
        s.SoundId="rbxassetid://"..id
        s.PlayOnRemove=true
        return s
end
----------------------------------------------------
function newRay(start,face,range,wat)
        local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
        hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
        return rey,hit,pos
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
----------------------------------------------------
local hood = Instance.new("Part", char)
local mesh = Instance.new("SpecialMesh",hood)
mesh.MeshId = "http://www.roblox.com/asset/?id=85855767"
mesh.TextureId="http://www.roblox.com/asset/?id=154441220"
mesh.Scale = Vector3.new(2,2,2)
wait(0.5)
weld = Instance.new("Weld")
weld.Parent = hood
weld.Part0 = hed
weld.Part1 = hood
weld.C0=CFrame.new(0, -0.25, 0)*CFrame.Angles(0,0,math.rad(0))

hed.face.Texture = "rbxassetid://272299908"
z=Instance.new('Decal',hed)
z.Face = 'Front'
z.Texture='rbxassetid://99174105'
z1=Instance.new('Decal',hed)
z1.Face = 'Right'
hed.BrickColor = BrickColor.new("Really black")
lite = Instance.new("PointLight", torso)
lite.Brightness = 14
lite.Range = 10
lite.Color = Color3.new(1, 0, 0)
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
z.SoundId = "rbxassetid://204277061"--242463565, 303570180, 204277061
z.Looped = true
z.Pitch = 1 --.6
z.Volume = 1
wait(.01)
--z:Play()
----------------------------------------------------
--[[local l = game.Lighting
local sky = Instance.new("Sky",l)
sky.CelestialBodiesShown = false
sky.SkyboxBk = "http://www.roblox.com/asset/?id=156925041"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=156925047"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=156925045"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=156925043"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=156925038"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=156925055"
sky.StarCount = 0
sky.Name = "GreenSpace" ]]
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Absolution"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Bright blue")
p1.Material = "Neon"
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
p3.Material = "Neon"
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
p4.Material = "Neon"
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
p5.Material = "Neon"
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
p7.Material = "Neon"
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
p8.Material = "Neon"
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
p21.Material = "Neon"
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
p8.Material = "Neon"
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
p10.Material = "Neon"
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
p14.Material = "Neon"
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
p18.Material = "Neon"
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
p19.Material = "Neon"
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
p25.Material = "Neon"
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
--RITE HERE
--p7.Transparency=1
p1.Transparency=0
p2.Transparency=1
p3.Transparency=0
p4.Transparency=1
p5.Transparency=0
p6.Transparency=0
p7.Transparency=1
p8.Transparency=0
p9.Transparency=0
p10.Transparency=0
p11.Transparency=0
p12.Transparency=0
p13.Transparency=0
p14.Transparency=0
p15.Transparency=1
p16.Transparency=1
p17.Transparency=0
p18.Transparency=0
p19.Transparency=0
p20.Transparency=1
p21.Transparency=1
p22.Transparency=1
p23.Transparency=0
p24.Transparency=1
p25.Transparency=0 --1
p26.Transparency=1
--RITE HERE
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
local m = Instance.new("Model")
m.Name = "LeftArm"
p1 = Instance.new("WedgePart", m)
p1.BrickColor = BrickColor.new("Bright blue")
p1.Material = Enum.Material.Neon
p1.Name = "Wedge"
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 1.19999981, 4)
p1.CFrame = CFrame.new(60.830101, 8.39941978, -13.7674818, 1.52359269e-006, -0.707334042, 0.707343757, -2.62521735e-006, 0.707093, 0.707071185, -1.00027835, 3.43534703e-006, 4.43342998e-007)
p1.CanCollide = false
p1.Locked = true
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.200000003, 1, 1)
p2 = Instance.new("WedgePart", m)
p2.BrickColor = BrickColor.new("Bright blue")
p2.Material = Enum.Material.Neon
p2.Name = "Wedge"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 1.19999981, 4)
p2.CFrame = CFrame.new(60.8306694, 8.39941502, -12.5672398, 1.56085741e-006, -0.707337618, 0.707340181, -2.7146209e-006, 0.707089424, 0.707074761, -1.00027835, 3.34575839e-006, 4.06471969e-007)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Wedge
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.200000003, 1, 1)
p3 = Instance.new("WedgePart", m)
p3.BrickColor = BrickColor.new("Bright blue")
p3.Material = Enum.Material.Neon
p3.Name = "Wedge"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 1.19999981, 4)
p3.CFrame = CFrame.new(60.8312187, 8.39939976, -13.1675138, 1.66519976e-006, -0.707341254, 0.707336545, -2.72952207e-006, 0.707085788, 0.707078397, -1.00027835, 3.26143936e-006, 4.69727013e-007)
p3.CanCollide = false
p3.Locked = true
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.200000003, 1, 1)
p4 = Instance.new("WedgePart", m)
p4.BrickColor = BrickColor.new("Bright blue")
p4.Material = Enum.Material.Neon
p4.Name = "Wedge"
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 1.19999981, 4)
p4.CFrame = CFrame.new(60.8317757, 8.39937305, -13.1676111, 1.74718321e-006, -0.70734489, 0.707332909, -2.7742235e-006, 0.707082152, 0.707082033, -1.00027835, 3.17185027e-006, 4.96093037e-007)
p4.CanCollide = false
p4.Locked = true
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.200000003, 1, 1)
p5 = Instance.new("WedgePart", m)
p5.BrickColor = BrickColor.new("Bright blue")
p5.Material = Enum.Material.Neon
p5.Name = "Wedge"
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 1.19999981, 3.30000019)
p5.CFrame = CFrame.new(60.4623528, 9.0813055, -13.1677084, -1.74365277e-006, 0.422768414, 0.90661031, 3.01146247e-006, -0.90627563, 0.422602654, 1.00028574, -3.16541991e-006, -6.48408104e-007)
p5.CanCollide = false
p5.Locked = true
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.200000003, 1, 1)
p6 = Instance.new("WedgePart", m)
p6.BrickColor = BrickColor.new("Bright blue")
p6.Material = Enum.Material.Neon
p6.Name = "Wedge"
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 1.19999981, 3.30000019)
p6.CFrame = CFrame.new(60.4629173, 9.08128643, -13.7679863, -1.75857326e-006, 0.422772557, 0.906618714, 3.13068858e-006, -0.906274974, 0.422602147, 1.00029314, -3.27979569e-006, -6.11540997e-007)
p6.CanCollide = false
p6.Locked = true
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.200000003, 1, 1)
p7 = Instance.new("WedgePart", m)
p7.BrickColor = BrickColor.new("Bright blue")
p7.Material = Enum.Material.Neon
p7.Name = "Wedge"
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 1.19999981, 3.30000019)
p7.CFrame = CFrame.new(60.4634781, 9.0812645, -12.5677195, -1.77349398e-006, 0.422776699, 0.906627119, 3.24991538e-006, -0.906274319, 0.42260164, 1.00030053, -3.39417238e-006, -5.74673834e-007)
p7.CanCollide = false
p7.Locked = true
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.200000003, 1, 1)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.Neon
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p8.CFrame = CFrame.new(62.1344833, 9.89923668, -14.2683573, 1.0003655, -9.00030136e-006, -1.6914961e-006, -8.34465027e-007, 0.999961495, 3.15914986e-006, -2.15653972e-006, 3.05826416e-006, 1.00030792)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Sphere
b8.Name = "Mesh"
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Neon
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p9.CFrame = CFrame.new(62.1350441, 7.19933271, -14.2684784, 1.00037432, -9.11423649e-006, -1.78677055e-006, -8.82557742e-007, 0.999960482, 3.17407398e-006, -2.19382355e-006, 3.14769591e-006, 1.00031543)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Sphere
b9.Name = "Mesh"
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Bright blue")
p10.Material = Enum.Material.Neon
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000048, 1.79999983, 0.200000048)
p10.CFrame = CFrame.new(62.4732666, 7.92819929, -14.2685785, -0.906659067, -0.422771662, -1.80169195e-006, 0.422602057, -0.906270981, 3.2933026e-006, 3.38190716e-006, -1.99476835e-006, 1.00032294)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Bright blue")
p11.Material = Enum.Material.Neon
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000048, 1.29999983, 0.200000048)
p11.CFrame = CFrame.new(62.4794731, 9.45469475, -14.2686787, -0.819467902, 0.573809147, -1.81661335e-006, -0.573551893, -0.819118977, 3.41253167e-006, -9.27350783e-008, -4.03244348e-006, 1.00033033)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.Neon
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p12.CFrame = CFrame.new(62.7369499, 6.29933262, -14.2688055, 1.00040102, -9.53674316e-006, -1.84644205e-006, -1.25169754e-006, 0.999957919, 3.50196092e-006, -2.25187659e-006, 3.46763295e-006, 1.00033784)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p12)
b10.MeshType = Enum.MeshType.Sphere
b10.Name = "Mesh"
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Bright blue")
p13.Material = Enum.Material.Neon
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1.5, 1.5, 1.5)
p13.CFrame = CFrame.new(62.8003883, 10.1991549, -13.2136488, 1.00040984, -9.59636054e-006, -1.88372474e-006, -1.43051466e-006, 0.999956846, 3.58340549e-006, -2.3487878e-006, 3.4825357e-006, 1.00034535)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p13)
b11.MeshType = Enum.MeshType.Sphere
b11.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Neon
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p14.CFrame = CFrame.new(62.7374802, 9.79915905, -14.2689018, 1.00041437, -9.80505502e-006, -1.96572228e-006, -1.37091877e-006, 0.999956131, 3.62812011e-006, -2.37115751e-006, 3.4527211e-006, 1.00034904)
p14.CanCollide = false
p14.Locked = true
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p14)
b12.MeshType = Enum.MeshType.Sphere
b12.Name = "Mesh"
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Metal
p15.Name = "Main"
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(2.20000005, 4.19999981, 2.20000005)
p15.CFrame = CFrame.new(62.838131, 8.1992178, -13.1686192, 1.00041902, -9.80505047e-006, -1.96572933e-006, -1.54973122e-006, 0.999955654, 3.62813353e-006, -2.38607572e-006, 3.57197018e-006, 1.00035274)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.Neon
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p16.CFrame = CFrame.new(62.9387741, 8.79918098, -14.2691231, 1.0004282, -9.95411301e-006, -2.00301338e-006, -1.66894927e-006, 0.999954581, 3.71756369e-006, -2.46808372e-006, 3.61668594e-006, 1.00036013)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p16)
b13.MeshType = Enum.MeshType.Sphere
b13.Name = "Mesh"
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Bright blue")
p17.Material = Enum.Material.Neon
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.200000048, 1.29999983, 0.200000048)
p17.CFrame = CFrame.new(63.0825539, 6.854743, -14.2692442, -0.866409063, -0.50020963, -2.099928e-006, 0.499978155, -0.86598444, 3.73249213e-006, 4.01878242e-006, -1.94999211e-006, 1.00036764)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Bright blue")
p18.Material = Enum.Material.Neon
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.200000048, 1.29999983, 0.200000048)
p18.CFrame = CFrame.new(63.1831665, 8.15466595, -14.2693415, -0.906707585, 0.422816038, -2.11485258e-006, -0.422596663, -0.906265914, 3.8437388e-006, 6.9698217e-007, -4.50413063e-006, 1.00037515)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Bright blue")
p19.Material = Enum.Material.Neon
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.200000048, 0.799999833, 0.200000048)
p19.CFrame = CFrame.new(63.2069473, 8.53140068, -14.2694473, -0.707418501, 0.707425714, -2.09994369e-006, -0.707068563, -0.707078457, 3.72453474e-006, -9.59315798e-007, -4.56575162e-006, 1.00037515)
p19.CanCollide = false
p19.Locked = true
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Bright blue")
p20.Material = Enum.Material.Neon
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.200000048, 0.899999917, 0.200000048)
p20.CFrame = CFrame.new(63.2280884, 9.68191624, -14.2694416, -0.342169315, 0.940117717, -2.11486008e-006, -0.93964541, -0.342010528, 3.84375198e-006, -2.7989995e-006, -3.73256239e-006, 1.00037885)
p20.CanCollide = false
p20.Locked = true
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Bright blue")
p21.Material = Enum.Material.Neon
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.200000048, 0.999999821, 0.200000048)
p21.CFrame = CFrame.new(63.3539009, 9.07959557, -14.2694454, 0.707428038, 0.707422554, -2.12876989e-006, -0.707079053, 0.707067132, 3.83015185e-006, -4.56554562e-006, 9.7875602e-007, 1.00037885)
p21.CanCollide = false
p21.Locked = true
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.Neon
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p22.CFrame = CFrame.new(63.4412346, 7.49916172, -14.269558, 1.0004549, -5.30481339e-006, -2.11486781e-006, -7.24196434e-006, 0.999951959, 3.84376608e-006, -2.5650661e-006, 4.02606338e-006, 1.00038254)
p22.CanCollide = false
p22.Locked = true
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p22)
b14.MeshType = Enum.MeshType.Sphere
b14.Name = "Mesh"
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.Material = Enum.Material.Neon
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p23.CFrame = CFrame.new(63.5412827, 8.29912186, -14.2695541, 1.00045943, -5.54520193e-006, -2.12978443e-006, -7.22709638e-006, 0.999951601, 3.96298356e-006, -2.56507747e-006, 4.02606247e-006, 1.00038624)
p23.CanCollide = false
p23.Locked = true
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p23)
b15.MeshType = Enum.MeshType.Sphere
b15.Name = "Mesh"
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Really black")
p24.Material = Enum.Material.Neon
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p24.CFrame = CFrame.new(63.7413521, 9.49905682, -14.2695513, 1.00045943, -5.51538596e-006, -2.12978443e-006, -7.25689733e-006, 0.999951601, 3.96298356e-006, -2.56507769e-006, 4.02606247e-006, 1.00038624)
p24.CanCollide = false
p24.Locked = true
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p24)
b16.MeshType = Enum.MeshType.Sphere
b16.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Wedge_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-13.7623367, 38.4686089, -47.5196228, 1.82382877e-007, -1.21785519e-007, -1.0000037, -0.707109988, 0.707106709, -1.20249211e-007, 0.707110047, 0.707106352, 1.16605563e-007)
w1.Part1 = p2
w1.C1 = CFrame.new(-12.5623302, 38.4686165, -47.5196419, 2.04734633e-007, -9.19831891e-008, -1.0000037, -0.707109928, 0.707106471, -1.25517531e-007, 0.707110047, 0.707106233, 1.65067799e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Wedge_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-12.5623302, 38.4686165, -47.5196419, 2.04734633e-007, -9.19831891e-008, -1.0000037, -0.707109928, 0.707106471, -1.25517531e-007, 0.707110047, 0.707106233, 1.65067799e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(-13.1623344, 38.4686127, -47.5196381, 2.04734619e-007, -9.1983182e-008, -1.0000037, -0.707109928, 0.707106471, -1.25517545e-007, 0.707110047, 0.707106233, 1.65067799e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Wedge_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-13.1623344, 38.4686127, -47.5196381, 2.04734619e-007, -9.1983182e-008, -1.0000037, -0.707109928, 0.707106471, -1.25517545e-007, 0.707110047, 0.707106233, 1.65067799e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(-13.1623335, 38.4686165, -47.5196266, 1.82382891e-007, -1.21785519e-007, -1.0000037, -0.707110047, 0.70710659, -1.20249197e-007, 0.707110107, 0.707106352, 1.16605577e-007)
w4 = Instance.new("Weld", p4)
w4.Name = "Wedge_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-13.1623335, 38.4686165, -47.5196266, 1.82382891e-007, -1.21785519e-007, -1.0000037, -0.707110047, 0.70710659, -1.20249197e-007, 0.707110107, 0.707106352, 1.16605577e-007)
w4.Part1 = p5
w4.C1 = CFrame.new(13.1623335, -19.1215992, -57.7639008, -1.63937244e-007, 2.39803342e-007, 1.0000037, 0.422619939, -0.906307638, 1.72281261e-007, 0.906312168, 0.422617614, 8.41069863e-008)
w5 = Instance.new("Weld", p5)
w5.Name = "Wedge_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(13.1623335, -19.1215992, -57.7639008, -1.63937244e-007, 2.39803342e-007, 1.0000037, 0.422619939, -0.906307638, 1.72281261e-007, 0.906312168, 0.422617614, 8.41069863e-008)
w5.Part1 = p6
w5.C1 = CFrame.new(13.7623377, -19.1215973, -57.7639008, -1.63937244e-007, 2.39803342e-007, 1.0000037, 0.422619939, -0.906307638, 1.72281261e-007, 0.906312168, 0.422617614, 8.41069792e-008)
w6 = Instance.new("Weld", p6)
w6.Name = "Wedge_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(13.7623377, -19.1215973, -57.7639008, -1.63937244e-007, 2.39803342e-007, 1.0000037, 0.422619939, -0.906307638, 1.72281261e-007, 0.906312168, 0.422617614, 8.41069792e-008)
w6.Part1 = p7
w6.C1 = CFrame.new(12.5623283, -19.121603, -57.7638969, -1.63937244e-007, 2.39803342e-007, 1.0000037, 0.422619939, -0.906307638, 1.72281261e-007, 0.906312168, 0.422617614, 8.41069721e-008)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(12.5623283, -19.121603, -57.7638969, -1.63937244e-007, 2.39803342e-007, 1.0000037, 0.422619939, -0.906307638, 1.72281261e-007, 0.906312168, 0.422617614, 8.41069721e-008)
w7.Part1 = p8
w7.C1 = CFrame.new(-62.1028557, -7.90003395, 14.2623377, 1.00000453, -2.44006515e-007, -3.7252903e-008, 1.71363354e-007, 0.999999285, -1.49011612e-008, -6.70552254e-008, 2.98023224e-008, 1.0000037)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-62.1028557, -7.90003395, 14.2623377, 1.00000453, -2.44006515e-007, -3.7252903e-008, 1.71363354e-007, 0.999999285, -1.49011612e-008, -6.70552254e-008, 2.98023224e-008, 1.0000037)
w8.Part1 = p9
w8.C1 = CFrame.new(-62.1028442, -5.2000351, 14.2623415, 1.00000429, -2.19451294e-007, 2.98023153e-008, 1.30103487e-007, 0.999999702, 5.96046448e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-62.1028442, -5.2000351, 14.2623415, 1.00000429, -2.19451294e-007, 2.98023153e-008, 1.30103487e-007, 0.999999702, 5.96046448e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w9.Part1 = p10
w9.C1 = CFrame.new(54.0845451, 31.7618942, 14.2623348, -0.906311929, 0.422618181, -1.82007653e-009, -0.422620118, -0.906307399, -6.66151578e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(54.0845451, 31.7618942, 14.2623348, -0.906311929, 0.422618181, -1.82007653e-009, -0.422620118, -0.906307399, -6.66151578e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w10.Part1 = p11
w10.C1 = CFrame.new(55.4291229, -29.7103825, 14.2623348, -0.819155812, -0.573575914, -5.86004596e-008, 0.573578954, -0.8191517, -3.17313607e-008, -4.47034836e-008, 5.9604659e-008, 1.0000037)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(55.4291229, -29.7103825, 14.2623348, -0.819155812, -0.573575914, -5.86004596e-008, 0.573578954, -0.8191517, -3.17313607e-008, -4.47034836e-008, 5.9604659e-008, 1.0000037)
w11.Part1 = p12
w11.C1 = CFrame.new(-62.7028465, -4.30003357, 14.2623425, 1.00000429, -2.08616257e-007, 2.980231e-008, 1.1920929e-007, 0.999999642, 5.16191463e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-62.7028465, -4.30003357, 14.2623425, 1.00000429, -2.08616257e-007, 2.980231e-008, 1.1920929e-007, 0.999999642, 5.16191463e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w12.Part1 = p13
w12.C1 = CFrame.new(-62.7657433, -8.200037, 13.2074499, 1.00000453, -2.98023224e-007, -3.72529421e-008, 1.49011612e-007, 0.999999285, -1.49011443e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-62.7657433, -8.200037, 13.2074499, 1.00000453, -2.98023224e-007, -3.72529421e-008, 1.49011612e-007, 0.999999285, -1.49011443e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w13.Part1 = p14
w13.C1 = CFrame.new(-62.7025757, -7.80003023, 14.2622833, 1, -8.94065622e-008, 4.47034871e-008, 8.94065622e-008, 1, -5.96044352e-008, -4.47034836e-008, 5.96044387e-008, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-62.7025757, -7.80003023, 14.2622833, 1, -8.94065622e-008, 4.47034871e-008, 8.94065622e-008, 1, -5.96044352e-008, -4.47034836e-008, 5.96044387e-008, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(-62.8028793, -6.2000289, 13.1623297, 1.00000465, -2.68220901e-007, 2.98023295e-008, 8.94069672e-008, 0.999999523, 5.9604659e-008, -4.47034836e-008, 5.9604659e-008, 1.0000037)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-62.8028793, -6.2000289, 13.1623297, 1.00000465, -2.68220901e-007, 2.98023295e-008, 8.94069672e-008, 0.999999523, 5.9604659e-008, -4.47034836e-008, 5.9604659e-008, 1.0000037)
w15.Part1 = p16
w15.C1 = CFrame.new(-62.9029045, -6.80003929, 14.2623367, 1.00000453, -2.08616257e-007, -3.72529385e-008, 1.1920929e-007, 0.999999404, -1.49011452e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-62.9029045, -6.80003929, 14.2623367, 1.00000453, -2.08616257e-007, -3.72529385e-008, 1.1920929e-007, 0.999999404, -1.49011452e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w16.Part1 = p17
w16.C1 = CFrame.new(52.1717262, 35.7280197, 14.2623415, -0.866029143, 0.499999821, 3.55271368e-015, -0.500002086, -0.86602509, -5.96046448e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(52.1717262, 35.7280197, 14.2623415, -0.866029143, 0.499999821, 3.55271368e-015, -0.500002086, -0.86602509, -5.96046448e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w17.Part1 = p18
w17.C1 = CFrame.new(59.8312111, -21.1078911, 14.2623348, -0.906311929, -0.422617912, -5.22000931e-008, 0.422620177, -0.906307578, -4.1425146e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(59.8312111, -21.1078911, 14.2623348, -0.906311929, -0.422617912, -5.22000931e-008, 0.422620177, -0.906307578, -4.1425146e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w18.Part1 = p19
w18.C1 = CFrame.new(49.2864532, -40.0483932, 14.2623358, -0.707110107, -0.707106173, -6.32202841e-008, 0.707109928, -0.70710659, -2.1073431e-008, -4.47034836e-008, 5.9604659e-008, 1.0000037)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(49.2864532, -40.0483932, 14.2623358, -0.707110107, -0.707106173, -6.32202841e-008, 0.707109928, -0.70710659, -2.1073431e-008, -4.47034836e-008, 5.9604659e-008, 1.0000037)
w19.Part1 = p20
w19.C1 = CFrame.new(28.8318367, -56.7515907, 14.2622824, -0.342020333, -0.939692557, 4.07203444e-008, 0.939692557, -0.342020333, 6.23934611e-008, -4.47034836e-008, 5.96044387e-008, 1)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(28.8318367, -56.7515907, 14.2622824, -0.342020333, -0.939692557, 4.07203444e-008, 0.939692557, -0.342020333, 6.23934611e-008, -4.47034836e-008, 5.96044387e-008, 1)
w20.Part1 = p21
w20.C1 = CFrame.new(-39.764328, -49.7778244, 14.2622843, 0.707105696, -0.707107842, 7.39707531e-008, 0.707107842, 0.707105696, 8.91225582e-009, -5.86070712e-008, 4.60033966e-008, 1)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-39.764328, -49.7778244, 14.2622843, 0.707105696, -0.707107842, 7.39707531e-008, 0.707107842, 0.707105696, 8.91225582e-009, -5.86070712e-008, 4.60033966e-008, 1)
w21.Part1 = p22
w21.C1 = CFrame.new(-63.402874, -5.50003099, 14.2623358, 1.00000453, -2.99885869e-007, 2.98023224e-008, 7.4505806e-008, 0.999999642, 5.96046448e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-63.402874, -5.50003099, 14.2623358, 1.00000453, -2.99885869e-007, 2.98023224e-008, 7.4505806e-008, 0.999999642, 5.96046448e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w22.Part1 = p23
w22.C1 = CFrame.new(-63.502594, -6.30003357, 14.2622824, 1, -5.96043641e-008, 4.47034836e-008, 5.96043677e-008, 1, -5.9604421e-008, -4.470348e-008, 5.96044245e-008, 1)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(-63.502594, -6.30003357, 14.2622824, 1, -5.96043641e-008, 4.47034836e-008, 5.96043677e-008, 1, -5.9604421e-008, -4.470348e-008, 5.96044245e-008, 1)
w23.Part1 = p24
w23.C1 = CFrame.new(-63.7025795, -7.50003004, 14.2622843, 1, -8.94065622e-008, 4.47034871e-008, 8.94065622e-008, 1, -5.96044352e-008, -4.47034836e-008, 5.96044387e-008, 1)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-63.7025795, -7.50003004, 14.2622843, 1, -8.94065622e-008, 4.47034871e-008, 8.94065622e-008, 1, -5.96044352e-008, -4.47034836e-008, 5.96044387e-008, 1)
m.Parent = larm
m:MakeJoints()
----------------------------------------------------
local cor3 = Instance.new("Part", larm.LeftArm)
cor3.Name = "Thingy"
cor3.Locked = true
cor3.BottomSurface = 0
cor3.CanCollide = false
cor3.Size = Vector3.new(2, 1, 1)
cor3.Transparency = 1
cor3.TopSurface = 0
corw2 = Instance.new("Weld", cor3)
corw2.Part0 = larm
corw2.Part1 = cor3
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0)
weld2 = Instance.new("Weld", larm.LeftArm)
weld2.Part0 = cor3
weld2.Part1 = p15
weld2.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "RightArm"
p1 = Instance.new("WedgePart", m)
p1.BrickColor = BrickColor.new("Bright blue")
p1.Material = Enum.Material.Neon
p1.Name = "Wedge"
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 1.19999981, 3.30000019)
p1.CFrame = CFrame.new(71.7528229, 9.08148766, -13.7657108, 2.20961255e-007, -0.422704399, -0.906498253, -1.70178805e-006, -0.906287491, 0.422612786, -1.00018191, -1.16194826e-006, 2.39246219e-006)
p1.CanCollide = false
p1.Locked = true
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.200000003, 1, 1)
p2 = Instance.new("WedgePart", m)
p2.BrickColor = BrickColor.new("Bright blue")
p2.Material = Enum.Material.Neon
p2.Name = "Wedge"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 1.19999981, 3.30000019)
p2.CFrame = CFrame.new(71.7534714, 9.08147335, -12.5655851, 3.25293399e-007, -0.422708124, -0.906506479, -1.7167032e-006, -0.906286299, 0.422612339, -1.0001893, -1.13135729e-006, 2.49332743e-006)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Wedge
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.200000003, 1, 1)
p3 = Instance.new("WedgePart", m)
p3.BrickColor = BrickColor.new("Bright blue")
p3.Material = Enum.Material.Neon
p3.Name = "Wedge"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 1.19999981, 3.30000019)
p3.CFrame = CFrame.new(71.7541199, 9.08145237, -13.1658068, 4.29627249e-007, -0.422711849, -0.906514704, -1.73161834e-006, -0.906285107, 0.422611892, -1.0001967, -1.10076587e-006, 2.59419403e-006)
p3.CanCollide = false
p3.Locked = true
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.200000003, 1, 1)
p4 = Instance.new("WedgePart", m)
p4.BrickColor = BrickColor.new("Bright blue")
p4.Material = Enum.Material.Neon
p4.Name = "Wedge"
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 1.19999981, 4)
p4.CFrame = CFrame.new(71.4245453, 8.39948177, -13.7660398, -5.32960883e-007, 0.70726943, -0.707265258, 1.90324067e-006, 0.707083881, 0.707096815, 1.0001967, 9.87842554e-008, 2.61978244e-006)
p4.CanCollide = false
p4.Locked = true
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.200000003, 1, 1)
p5 = Instance.new("WedgePart", m)
p5.BrickColor = BrickColor.new("Bright blue")
p5.Material = Enum.Material.Neon
p5.Name = "Wedge"
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 1.19999981, 4)
p5.CFrame = CFrame.new(71.4251862, 8.39946651, -13.1660223, -6.3729243e-007, 0.707273066, -0.707261622, 1.91814229e-006, 0.707080245, 0.707100451, 1.0001967, 1.62003985e-007, 2.53547341e-006)
p5.CanCollide = false
p5.Locked = true
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.200000003, 1, 1)
p6 = Instance.new("WedgePart", m)
p6.BrickColor = BrickColor.new("Bright blue")
p6.Material = Enum.Material.Neon
p6.Name = "Wedge"
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 1.19999981, 4)
p6.CFrame = CFrame.new(71.4258194, 8.39945126, -12.5660009, -7.41623865e-007, 0.707276702, -0.707257986, 1.93304436e-006, 0.707076609, 0.707104087, 1.0001967, 2.25224142e-007, 2.45116462e-006)
p6.CanCollide = false
p6.Locked = true
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.200000003, 1, 1)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.Neon
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p7.CFrame = CFrame.new(70.3255081, 6.6994977, -14.2663507, 1.00023162, 1.31726265e-005, -7.92685455e-007, -1.94311142e-005, 0.999976158, 1.97985287e-006, -1.62725564e-006, 1.86058458e-006, 1.00020039)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Sphere
b7.Name = "Mesh"
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Bright blue")
p8.Material = Enum.Material.Neon
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000048, 0.999999881, 0.200000048)
p8.CFrame = CFrame.new(70.0060196, 9.16293144, -14.2664633, 0.881308079, -0.429463804, -0.198316693, 0.401435703, 0.900625467, -0.166355878, 0.250050306, 0.0670034215, 0.966122985)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Neon
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p9.CFrame = CFrame.new(70.2268219, 8.59942532, -14.2665701, 1.00024557, 1.30422413e-005, -8.7916851e-007, -1.95577741e-005, 0.999974489, 1.9967556e-006, -1.75833702e-006, 2.01165676e-006, 1.00021148)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p9)
b8.MeshType = Enum.MeshType.Sphere
b8.Name = "Mesh"
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.Neon
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p10.CFrame = CFrame.new(69.8274002, 9.5993948, -14.266675, 1.00025487, 1.30049675e-005, -9.23888138e-007, -1.9595207e-005, 0.999973536, 2.11597762e-006, -1.80306665e-006, 2.13088947e-006, 1.00021887)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p10)
b9.MeshType = Enum.MeshType.Sphere
b9.Name = "Mesh"
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Bright blue")
p11.Material = Enum.Material.Neon
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000048, 1.79999983, 0.200000048)
p11.CFrame = CFrame.new(69.693718, 7.37976837, -14.2265854, 0.690841019, -0.711695194, -0.129447505, 0.678571701, 0.699464202, -0.224133074, 0.250056893, 0.0670053288, 0.966144204)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Bright blue")
p12.Material = Enum.Material.Neon
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000048, 1.5999999, 0.200000048)
p12.CFrame = CFrame.new(69.47966, 8.73308277, -14.2467909, 0.176576898, -0.984305978, 0.022559464, 0.951990068, 0.164877579, -0.257825077, 0.25006038, 0.0670051575, 0.966151059)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Bright blue")
p13.Material = Enum.Material.Neon
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1.5, 1.5, 1.5)
p13.CFrame = CFrame.new(69.3920746, 10.1993351, -13.2118578, 1.00028241, 1.27716921e-005, -1.06170774e-006, -1.99186616e-005, 0.999970496, 2.39908695e-006, -1.93528831e-006, 2.38418579e-006, 1.00024128)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p13)
b10.MeshType = Enum.MeshType.Sphere
b10.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Metal
p14.Name = "Main"
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(2.20000005, 4.19999981, 2.20000005)
p14.CFrame = CFrame.new(69.4298401, 8.19937706, -13.1668339, 1.00029147, 1.25630004e-005, -1.16605349e-006, -2.0008245e-005, 0.999969125, 2.41400744e-006, -2.03963987e-006, 2.39908786e-006, 1.00024867)
p14.CanCollide = false
p14.Locked = true
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Neon
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p15.CFrame = CFrame.new(69.1303406, 7.89936399, -14.2672224, 1.00030053, 1.24437429e-005, -1.24804228e-006, -2.02170359e-005, 0.999968052, 2.45872889e-006, -2.07692119e-006, 2.48851507e-006, 1.00025606)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p15)
b11.MeshType = Enum.MeshType.Sphere
b11.Name = "Mesh"
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Bright blue")
p16.Material = Enum.Material.Neon
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000048, 0.899999857, 0.200000048)
p16.CFrame = CFrame.new(68.9101486, 8.4345789, -14.2572756, 0.881372392, -0.429496199, -0.198331535, 0.401431859, 0.900618315, -0.166353673, 0.250065029, 0.0670081601, 0.966180325)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Bright blue")
p17.Material = Enum.Material.Neon
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.200000048, 0.599999785, 0.200000048)
p17.CFrame = CFrame.new(68.8972092, 7.71862125, -14.2674294, -0.70732069, -0.707330942, -1.25169754e-006, 0.707094371, -0.707072854, 2.48849392e-006, 3.42912972e-006, -4.32133675e-007, 1.00026357)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.Neon
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p18.CFrame = CFrame.new(68.6320877, 8.89929676, -14.2675419, 1.000319, 7.09295273e-006, -1.29642399e-006, -1.53779984e-005, 0.999966145, 2.53321537e-006, -2.20864695e-006, 2.76013293e-006, 1.00027096)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p18)
b12.MeshType = Enum.MeshType.Sphere
b12.Name = "Mesh"
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.Neon
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p19.CFrame = CFrame.new(68.6320801, 7.49934578, -14.2675457, 1.00032365, 7.02587113e-006, -1.41567671e-006, -1.53780693e-005, 0.999965429, 2.48852461e-006, -2.20865695e-006, 2.76013111e-006, 1.00027466)
p19.CanCollide = false
p19.Locked = true
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p19)
b13.MeshType = Enum.MeshType.Sphere
b13.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Wedge_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-13.7623348, 36.7341995, 62.0193214, 9.89621753e-008, 1.14119814e-007, -1.0000037, -0.422620028, -0.90630722, -1.14673988e-007, -0.906311929, 0.422617972, 5.9372038e-008)
w1.Part1 = p2
w1.C1 = CFrame.new(-12.5623264, 36.7342033, 62.0193214, 9.89621753e-008, 1.14119814e-007, -1.0000037, -0.422620028, -0.90630722, -1.14673988e-007, -0.906311929, 0.422617972, 5.93720344e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Wedge_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-12.5623264, 36.7342033, 62.0193214, 9.89621753e-008, 1.14119814e-007, -1.0000037, -0.422620028, -0.90630722, -1.14673988e-007, -0.906311929, 0.422617972, 5.93720344e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(-13.1623297, 36.7342033, 62.0193214, 9.89621753e-008, 1.14119814e-007, -1.0000037, -0.422620028, -0.90630722, -1.14673988e-007, -0.906311929, 0.422617972, 5.93720415e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Wedge_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-13.1623297, 36.7342033, 62.0193214, 9.89621753e-008, 1.14119814e-007, -1.0000037, -0.422620028, -0.90630722, -1.14673988e-007, -0.906311929, 0.422617972, 5.93720415e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(13.7623348, -55.015049, 45.9640198, -9.79639907e-008, 4.26051052e-008, 1.0000037, 0.707110107, 0.707106173, -2.40756872e-008, -0.707109869, 0.707106531, -1.51036286e-008)
w4 = Instance.new("Weld", p4)
w4.Name = "Wedge_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(13.7623348, -55.015049, 45.9640198, -9.79639907e-008, 4.26051052e-008, 1.0000037, 0.707110107, 0.707106173, -2.40756872e-008, -0.707109869, 0.707106531, -1.51036286e-008)
w4.Part1 = p5
w4.C1 = CFrame.new(13.1623316, -55.0150452, 45.964016, -9.79639907e-008, 4.26051088e-008, 1.0000037, 0.707110107, 0.707106173, -2.40756837e-008, -0.707109869, 0.707106531, -1.51036286e-008)
w5 = Instance.new("Weld", p5)
w5.Name = "Wedge_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(13.1623316, -55.0150452, 45.964016, -9.79639907e-008, 4.26051088e-008, 1.0000037, 0.707110107, 0.707106173, -2.40756837e-008, -0.707109869, 0.707106531, -1.51036286e-008)
w5.Part1 = p6
w5.C1 = CFrame.new(12.5623283, -55.0150337, 45.9640045, -9.79639836e-008, 4.2605091e-008, 1.0000037, 0.707110107, 0.707106173, -2.40756819e-008, -0.707109869, 0.707106531, -1.51036659e-008)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(12.5623283, -55.0150337, 45.9640045, -9.79639836e-008, 4.2605091e-008, 1.0000037, 0.707110107, 0.707106173, -2.40756819e-008, -0.707109869, 0.707106531, -1.51036659e-008)
w6.Part1 = p7
w6.C1 = CFrame.new(-70.3026047, -4.700037, 14.2622862, 1, -1.41560378e-007, 4.47034942e-008, 1.41560378e-007, 1, -7.45055218e-008, -4.47034836e-008, 7.45055289e-008, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-70.3026047, -4.700037, 14.2622862, 1, -1.41560378e-007, 4.47034942e-008, 1.41560378e-007, 1, -7.45055218e-008, -4.47034836e-008, 7.45055289e-008, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(-60.9718094, 24.5524559, 28.8434105, 0.881098926, 0.40146178, 0.250000894, -0.429376036, 0.900638521, 0.0669875294, -0.198267892, -0.166365504, 0.965929449)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-60.9718094, 24.5524559, 28.8434105, 0.881098926, 0.40146178, 0.250000894, -0.429376036, 0.900638521, 0.0669875294, -0.198267892, -0.166365504, 0.965929449)
w8.Part1 = p9
w8.C1 = CFrame.new(-70.2029343, -6.60003233, 14.2623386, 1.00000465, -1.78813934e-007, 0, 1.41561031e-007, 0.999999523, 4.47034836e-008, -4.47034836e-008, 7.4505806e-008, 1.0000037)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-70.2029343, -6.60003233, 14.2623386, 1.00000465, -1.78813934e-007, 0, 1.41561031e-007, 0.999999523, 4.47034836e-008, -4.47034836e-008, 7.4505806e-008, 1.0000037)
w9.Part1 = p10
w9.C1 = CFrame.new(-69.8029404, -7.60003138, 14.2623386, 1.00000465, -1.78813934e-007, 0, 1.41561031e-007, 0.999999523, 4.47034836e-008, -4.47034836e-008, 7.4505806e-008, 1.0000037)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-69.8029404, -7.60003138, 14.2623386, 1.00000465, -1.78813934e-007, 0, 1.41561031e-007, 0.999999523, 4.47034836e-008, -4.47034836e-008, 7.4505806e-008, 1.0000037)
w10.Part1 = p11
w10.C1 = CFrame.new(-48.2122765, 46.7597122, 23.9593029, 0.690653324, 0.678602815, 0.250001013, -0.711519539, 0.699469149, 0.0669875666, -0.129410163, -0.224143714, 0.965929449)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-48.2122765, 46.7597122, 23.9593029, 0.690653324, 0.678602815, 0.250001013, -0.711519539, 0.699469149, 0.0669875666, -0.129410163, -0.224143714, 0.965929449)
w11.Part1 = p12
w11.C1 = CFrame.new(-15.1098747, 68.1893845, 13.9264202, 0.176517636, 0.952019334, 0.250000954, -0.984043717, 0.164862752, 0.0669875368, 0.0225575883, -0.257833987, 0.965929389)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-15.1098747, 68.1893845, 13.9264202, 0.176517636, 0.952019334, 0.250000954, -0.984043717, 0.164862752, 0.0669875368, 0.0225575883, -0.257833987, 0.965929389)
w12.Part1 = p13
w12.C1 = CFrame.new(-69.3658066, -8.20003605, 13.2074509, 1.00000453, -2.98023224e-007, -3.72529421e-008, 1.49011612e-007, 0.999999285, -1.49011443e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-69.3658066, -8.20003605, 13.2074509, 1.00000453, -2.98023224e-007, -3.72529421e-008, 1.49011612e-007, 0.999999285, -1.49011443e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w13.Part1 = p14
w13.C1 = CFrame.new(-69.4029617, -6.2000351, 13.1623278, 1.00000453, -2.38418579e-007, -3.72529456e-008, 8.94069672e-008, 0.999999344, -1.49011452e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-69.4029617, -6.2000351, 13.1623278, 1.00000453, -2.38418579e-007, -3.72529456e-008, 8.94069672e-008, 0.999999344, -1.49011452e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w14.Part1 = p15
w14.C1 = CFrame.new(-69.1029282, -5.90003109, 14.2623358, 1.00000453, -2.98023224e-007, 2.98023188e-008, 1.1920929e-007, 0.999999583, 5.96046412e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-69.1029282, -5.90003109, 14.2623358, 1.00000453, -2.98023224e-007, 2.98023188e-008, 1.1920929e-007, 0.999999583, 5.96046412e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w15.Part1 = p16
w15.C1 = CFrame.new(-59.7121582, 24.7350845, 28.4943123, 0.881098986, 0.401461899, 0.250000954, -0.429376066, 0.90063864, 0.0669875517, -0.198267847, -0.166365474, 0.965929389)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-59.7121582, 24.7350845, 28.4943123, 0.881098986, 0.401461899, 0.250000954, -0.429376066, 0.90063864, 0.0669875517, -0.198267847, -0.166365474, 0.965929389)
w16.Part1 = p17
w16.C1 = CFrame.new(44.6532936, 52.7416191, 14.2623348, -0.707109928, 0.707106709, 2.10734257e-008, -0.707110047, -0.707106292, -6.32202699e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(44.6532936, 52.7416191, 14.2623348, -0.707109928, 0.707106709, 2.10734257e-008, -0.707110047, -0.707106292, -6.32202699e-008, -4.47034836e-008, 5.96046448e-008, 1.0000037)
w17.Part1 = p18
w17.C1 = CFrame.new(-68.6029282, -6.90003586, 14.2623405, 1.00000465, -2.30967999e-007, -4.47034836e-008, 1.63912773e-007, 0.999999285, -2.98023224e-008, -7.4505806e-008, -1.49011612e-008, 1.0000037)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-68.6029282, -6.90003586, 14.2623405, 1.00000465, -2.30967999e-007, -4.47034836e-008, 1.63912773e-007, 0.999999285, -2.98023224e-008, -7.4505806e-008, -1.49011612e-008, 1.0000037)
w18.Part1 = p19
w18.C1 = CFrame.new(-68.6026077, -5.50004053, 14.2622881, 1, -1.63912006e-007, 7.4505806e-008, 1.63912006e-007, 1, 1.49011186e-008, -7.4505806e-008, -1.49011061e-008, 1)
w19 = Instance.new("Weld", p19)
w19.Name = "Wedge_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-68.6026077, -5.50004053, 14.2622881, 1, -1.63912006e-007, 7.4505806e-008, 1.63912006e-007, 1, 1.49011186e-008, -7.4505806e-008, -1.49011061e-008, 1)
m.Parent = rarm
m:MakeJoints()
----------------------------------------------------
local cor4 = Instance.new("Part", rarm.RightArm)
cor4.Name = "Thingy"
cor4.Locked = true
cor4.BottomSurface = 0
cor4.CanCollide = false
cor4.Size = Vector3.new(2, 1, 1)
cor4.Transparency = 1
cor4.TopSurface = 0
corw2 = Instance.new("Weld", cor4)
corw2.Part0 = rarm
corw2.Part1 = cor4
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0)
weld2 = Instance.new("Weld", rarm.RightArm)
weld2.Part0 = cor4
weld2.Part1 = p14
weld2.C0 = CFrame.new(0, 0, 0)
p14.Transparency=1
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Torso"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Neon
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p1.CFrame = CFrame.new(67.3119202, 9.5997963, -14.263937, 1.00006402, 1.86259939e-007, 2.23464554e-008, -1.44914884e-006, 0.999991, -1.49014099e-008, -1.51248571e-006, 5.96053269e-008, 1.00005186)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Sphere
b1.Name = "Mesh"
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Neon
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p2.CFrame = CFrame.new(65.0111618, 9.59981537, -14.2638226, 1.00005496, 2.75671482e-007, 1.2665987e-007, -1.35973096e-006, 0.999992192, -2.98023224e-008, -1.40815973e-006, 4.47034836e-008, 1.00004447)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Sphere
b2.Name = "Mesh"
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Bright blue")
p3.Material = Enum.Material.Neon
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000048, 0.799999833, 0.200000048)
p3.CFrame = CFrame.new(67.6028595, 9.39744663, -14.2168236, 0.491504252, -0.868347466, -0.0669902489, 0.834227681, 0.491479307, -0.249998316, 0.250008702, 0.0669909269, 0.965961695)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Bright blue")
p4.Material = Enum.Material.Neon
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000048, 1.19999981, 0.200000048)
p4.CFrame = CFrame.new(64.6849442, 9.10655022, -14.2635975, 0.866056859, 0.500018656, 3.35280106e-007, -0.49999845, 0.866020203, -2.98035943e-008, -1.06866298e-006, -5.48167122e-007, 1.00002968)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Bright blue")
p5.Material = Enum.Material.Neon
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000048, 1.29999983, 0.200000048)
p5.CFrame = CFrame.new(66.9344177, 8.96636868, -14.2634897, -0.866048932, -0.500014246, 4.3958832e-007, 0.499999046, -0.866021395, -4.47044108e-008, 9.70867745e-007, 5.08911796e-007, 1.00002229)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Bright blue")
p6.Material = Enum.Material.Neon
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000048, 1.29999983, 0.200000048)
p6.CFrame = CFrame.new(65.358757, 9.04366112, -14.2633762, -0.866041601, 0.500008702, 5.43894771e-007, -0.499997824, -0.8660236, -5.96051208e-008, 8.43271948e-007, -5.21275751e-007, 1.0000149)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.Neon
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p7.CFrame = CFrame.new(68.0082169, 9.19989014, -14.2632694, 1.00001383, 6.37024641e-007, 5.36441803e-007, -9.46223736e-007, 0.999997973, -1.04308121e-007, -8.7916851e-007, 5.96046519e-008, 1.00001121)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p7)
b3.MeshType = Enum.MeshType.Sphere
b3.Name = "Mesh"
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.Neon
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p8.CFrame = CFrame.new(64.4081497, 8.59989357, -14.2632627, 1.00001383, 5.32715489e-007, 5.6624458e-007, -8.4191629e-007, 0.999997973, -2.980277e-008, -9.08971174e-007, -1.4901623e-008, 1.00001121)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p8)
b4.MeshType = Enum.MeshType.Sphere
b4.Name = "Mesh"
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Neon
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p9.CFrame = CFrame.new(67.8082123, 8.49989128, -14.2632694, 1.00001383, 6.37024641e-007, 5.36441803e-007, -9.46223736e-007, 0.999997973, -1.04308128e-007, -8.7916851e-007, 5.96046448e-008, 1.00001121)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p9)
b5.MeshType = Enum.MeshType.Sphere
b5.Name = "Mesh"
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Bright blue")
p10.Material = Enum.Material.Neon
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000048, 0.999999821, 0.200000048)
p10.CFrame = CFrame.new(67.3000946, 8.34052181, -14.1962805, -0.323144197, -0.934642911, 0.148454338, 0.912730813, -0.349243045, -0.212012067, 0.250002205, 0.0669885725, 0.965932906)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Metal
p11.Name = "Main"
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(4.4000001, 4.19999981, 2.20000005)
p11.CFrame = CFrame.new(66.1075974, 8.19991207, -13.1631384, 1, 7.67355459e-007, 7.5990539e-007, -7.67355459e-007, 1, -2.98022478e-008, -7.5990539e-007, 2.98016651e-008, 1)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.Neon
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(3, 3, 2)
p12.CFrame = CFrame.new(66.1075974, 8.19991302, -13.5631437, 1.00000453, 6.48145658e-007, 6.55599706e-007, -7.97160624e-007, 0.999999344, -1.49012251e-008, -7.5990863e-007, 2.98017362e-008, 1.0000037)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p12)
b6.MeshType = Enum.MeshType.Sphere
b6.Name = "Mesh"
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Bright blue")
p13.Material = Enum.Material.Neon
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000048, 3.79999971, 0.200000048)
p13.CFrame = CFrame.new(66.1331863, 7.82621098, -12.0632286, 6.04434092e-007, -1.00000906, 6.55602378e-007, 0.999998689, 8.72662156e-007, -1.49012802e-008, 4.47028583e-008, 8.64220965e-007, 1.00000739)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Bright blue")
p14.Material = Enum.Material.Neon
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.200000048, 3.99999976, 0.200000048)
p14.CFrame = CFrame.new(65.0837555, 8.11279583, -12.0633221, 0.866040885, 0.500009477, 5.5129766e-007, -0.499999583, 0.866022587, -2.09610107e-013, -8.68580742e-007, -4.3265041e-007, 1.00001478)
p14.CanCollide = false
p14.Locked = true
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Bright blue")
p15.Material = Enum.Material.Neon
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000048, 3.99999976, 0.200000048)
p15.CFrame = CFrame.new(67.0844116, 8.11277008, -12.0634222, 0.866049111, -0.500013351, 4.46991237e-007, 0.49999693, 0.866022587, 1.49009658e-008, -8.91868751e-007, 6.00952262e-007, 1.00002217)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Bright blue")
p16.Material = Enum.Material.Neon
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000048, 1.19999969, 0.200000048)
p16.CFrame = CFrame.new(65.484314, 7.30655766, -14.2634888, 0.906336308, 0.422632158, 3.49386681e-007, -0.422617853, 0.906302929, 2.46360354e-008, -1.01209048e-006, -3.84037776e-007, 1.00002587)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Bright blue")
p17.Material = Enum.Material.Neon
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.200000048, 1.89999986, 0.200000048)
p17.CFrame = CFrame.new(67.1100159, 7.10342312, -14.2635927, 0.866056919, -0.50001812, 3.65035532e-007, 0.499996245, 0.866021872, 5.96044032e-008, -8.79435504e-007, 6.97014912e-007, 1.00002956)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Bright blue")
p18.Material = Enum.Material.Neon
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.200000048, 1.19999981, 0.200000048)
p18.CFrame = CFrame.new(65.6104889, 7.05342484, -14.2637053, -0.707138717, -0.707138956, 3.36865924e-007, 0.707104087, -0.707101464, 1.4901164e-007, 9.95719802e-007, 5.95316749e-007, 1.00003707)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.Neon
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p19.CFrame = CFrame.new(65.2110596, 6.69982004, -14.2638168, 1.00005388, -1.78813906e-007, 3.08695888e-007, -1.7285347e-006, 0.999993682, 2.38419489e-007, -1.15321473e-006, 3.72538381e-007, 1.0000447)
p19.CanCollide = false
p19.Locked = true
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p19)
b7.MeshType = Enum.MeshType.Sphere
b7.Name = "Mesh"
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.Neon
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p20.CFrame = CFrame.new(66.7116928, 6.49980783, -14.2639294, 1.00006235, -2.98028993e-007, 2.80525398e-007, -1.8477574e-006, 0.999992907, 3.27827962e-007, -1.18139712e-006, 4.61949412e-007, 1.00005233)
p20.CanCollide = false
p20.Locked = true
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p20)
b8.MeshType = Enum.MeshType.Sphere
b8.Name = "Mesh"
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Bright blue")
p21.Material = Enum.Material.Neon
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.200000048, 0.799999893, 0.200000048)
p21.CFrame = CFrame.new(67.0623169, 6.40337944, -14.264039, 0.258836836, -0.965994418, 2.52354425e-007, 0.965917706, 0.258818805, 4.17237061e-007, 2.19511691e-007, 1.31106742e-006, 1.00005996)
p21.CanCollide = false
p21.Locked = true
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.Neon
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p22.CFrame = CFrame.new(67.5129166, 6.29977846, -14.2641516, 1.00007939, -5.96046448e-007, 2.24182997e-007, -2.14576721e-006, 0.999991298, 5.06646757e-007, -1.23776351e-006, 6.40773351e-007, 1.00006759)
p22.CanCollide = false
p22.Locked = true
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p22)
b9.MeshType = Enum.MeshType.Sphere
b9.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-67.3029404, -7.60003757, 14.2623367, 1.00000453, -2.08616257e-007, -3.72529385e-008, 1.1920929e-007, 0.999999404, -1.49011452e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w1.Part1 = p2
w1.C1 = CFrame.new(-65.0029221, -7.60003757, 14.2623367, 1.00000453, -2.08616257e-007, -3.72529385e-008, 1.1920929e-007, 0.999999404, -1.49011452e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-65.0029221, -7.60003757, 14.2623367, 1.00000453, -2.08616257e-007, -3.72529385e-008, 1.1920929e-007, 0.999999404, -1.49011452e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w2.Part1 = p3
w2.C1 = CFrame.new(-35.8392487, 56.0098076, 20.1084957, 0.491483778, 0.834233105, 0.250000894, -0.868311942, 0.491481245, 0.0669875443, -0.0669877231, -0.249999821, 0.965929389)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-35.8392487, 56.0098076, 20.1084957, 0.491483778, 0.834233105, 0.250000894, -0.868311942, 0.491481245, 0.0669875443, -0.0669877231, -0.249999821, 0.965929389)
w3.Part1 = p4
w3.C1 = CFrame.new(-52.459343, -38.4935722, 14.2623358, 0.866029263, -0.499999881, -2.48114169e-008, 0.500002384, 0.866024733, -3.15312398e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-52.459343, -38.4935722, 14.2623358, 0.866029263, -0.499999881, -2.48114169e-008, 0.500002384, 0.866024733, -3.15312398e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w4.Part1 = p5
w4.C1 = CFrame.new(54.4780006, 39.4971619, 14.2623367, -0.866029263, 0.49999994, 2.48113796e-008, -0.500002444, -0.866024733, 3.15312398e-008, -6.70552254e-008, 2.98023224e-008, 1.0000037)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(54.4780006, 39.4971619, 14.2623367, -0.866029263, 0.49999994, 2.48113796e-008, -0.500002444, -0.866024733, 3.15312398e-008, -6.70552254e-008, 2.98023224e-008, 1.0000037)
w5.Part1 = p6
w5.C1 = CFrame.new(60.1191711, -26.5763226, 14.2623367, -0.866029382, -0.499999493, 3.9712539e-008, 0.500002205, -0.866024911, -5.72166936e-009, -6.70552254e-008, 2.98023224e-008, 1.0000037)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(60.1191711, -26.5763226, 14.2623367, -0.866029382, -0.499999493, 3.9712539e-008, 0.500002205, -0.866024911, -5.72166936e-009, -6.70552254e-008, 2.98023224e-008, 1.0000037)
w6.Part1 = p7
w6.C1 = CFrame.new(-68.0026093, -7.20003986, 14.2622881, 1, -1.63912006e-007, 7.4505806e-008, 1.63912006e-007, 1, 1.49011186e-008, -7.4505806e-008, -1.49011061e-008, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-68.0026093, -7.20003986, 14.2622881, 1, -1.63912006e-007, 7.4505806e-008, 1.63912006e-007, 1, 1.49011186e-008, -7.4505806e-008, -1.49011061e-008, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(-64.4025955, -6.60003376, 14.2622824, 1, -5.96043641e-008, 4.47034836e-008, 5.96043677e-008, 1, -5.9604421e-008, -4.470348e-008, 5.96044245e-008, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-64.4025955, -6.60003376, 14.2622824, 1, -5.96043641e-008, 4.47034836e-008, 5.96043677e-008, 1, -5.9604421e-008, -4.470348e-008, 5.96044245e-008, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(-67.8026123, -6.50004005, 14.2622881, 1, -1.63912006e-007, 7.4505806e-008, 1.63912006e-007, 1, 1.49011186e-008, -7.4505806e-008, -1.49011061e-008, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-67.8026123, -6.50004005, 14.2622881, 1, -1.63912006e-007, 7.4505806e-008, 1.63912006e-007, 1, 1.49011186e-008, -7.4505806e-008, -1.49011061e-008, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(19.5072937, 66.0613785, 5.0658741, -0.323143423, 0.912731171, 0.250000954, -0.93463856, -0.349243909, 0.0669875741, 0.148453087, -0.212012053, 0.965929449)
w10 = Instance.new("Weld", p10)
w10.Name = "Main_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(19.5072937, 66.0613785, 5.0658741, -0.323143423, 0.912731171, 0.250000954, -0.93463856, -0.349243909, 0.0669875741, 0.148453087, -0.212012053, 0.965929449)
w10.Part1 = p11
w10.C1 = CFrame.new(-66.1029282, -6.20003605, 13.1623268, 1.00000453, -2.38418579e-007, -3.72529456e-008, 8.94069672e-008, 0.999999344, -1.49011452e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-66.1029282, -6.20003605, 13.1623268, 1.00000453, -2.38418579e-007, -3.72529456e-008, 8.94069672e-008, 0.999999344, -1.49011452e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w11.Part1 = p12
w11.C1 = CFrame.new(-66.1026306, -6.20004368, 13.5622816, 1, -1.1920875e-007, 6.70552325e-008, 1.1920875e-007, 1, -2.98022158e-008, -6.70552325e-008, 2.98022229e-008, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-66.1026306, -6.20004368, 13.5622816, 1, -1.1920875e-007, 6.70552325e-008, 1.1920875e-007, 1, -2.98022158e-008, -6.70552325e-008, 2.98022229e-008, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(-5.82635021, 66.1279221, 12.0623207, 7.54977023e-008, 0.999999344, -1.49011434e-008, -1.00000453, 1.94707212e-007, 3.72529385e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-5.82635021, 66.1279221, 12.0623207, 7.54977023e-008, 0.999999344, -1.49011434e-008, -1.00000453, 1.94707212e-007, 3.72529385e-008, -6.70552325e-008, 2.9802333e-008, 1.0000037)
w13.Part1 = p14
w13.C1 = CFrame.new(-53.3026466, -37.8329315, 12.0623188, 0.866029263, -0.499999881, -2.4811424e-008, 0.500002325, 0.866024673, -3.15312434e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-53.3026466, -37.8329315, 12.0623188, 0.866029263, -0.499999881, -2.4811424e-008, 0.500002325, 0.866024673, -3.15312434e-008, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w14.Part1 = p15
w14.C1 = CFrame.new(-61.1476631, 28.2449875, 12.0623198, 0.866029382, 0.499999404, -3.97125675e-008, -0.500002146, 0.866024971, 5.72170222e-009, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-61.1476631, 28.2449875, 12.0623198, 0.866029382, 0.499999404, -3.97125675e-008, -0.500002146, 0.866024971, 5.72170222e-009, -6.70552396e-008, 2.9802333e-008, 1.0000037)
w15.Part1 = p16
w15.C1 = CFrame.new(-57.1000977, -32.4815826, 14.2622862, 0.906307578, -0.422618747, 6.51076419e-008, 0.422618747, 0.906307578, 3.17729842e-009, -6.0350331e-008, 2.46360994e-008, 1)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-57.1000977, -32.4815826, 14.2622862, 0.906307578, -0.422618747, 6.51076419e-008, 0.422618747, 0.906307578, 3.17729842e-009, -6.0350331e-008, 2.46360994e-008, 1)
w16.Part1 = p17
w16.C1 = CFrame.new(-60.6646385, 29.1315918, 14.2623339, 0.866029501, 0.499999583, 5.5611892e-008, -0.500002265, 0.866025209, 3.67179815e-008, -4.470348e-008, 5.96046448e-008, 1.0000037)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-60.6646385, 29.1315918, 14.2623339, 0.866029501, 0.499999583, 5.5611892e-008, -0.500002265, 0.866025209, 3.67179815e-008, -4.470348e-008, 5.96046448e-008, 1.0000037)
w17.Part1 = p18
w17.C1 = CFrame.new(42.8147545, 49.9616852, 14.2623405, -0.707109571, 0.707106829, 2.10734417e-008, -0.707110047, -0.707106233, -6.32202557e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(42.8147545, 49.9616852, 14.2623405, -0.707109571, 0.707106829, 2.10734417e-008, -0.707110047, -0.707106233, -6.32202557e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w18.Part1 = p19
w18.C1 = CFrame.new(-65.2028809, -4.70003223, 14.2623415, 1.00000429, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999642, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-65.2028809, -4.70003223, 14.2623415, 1.00000429, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999642, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w19.Part1 = p20
w19.C1 = CFrame.new(-66.7028656, -4.50003386, 14.2623415, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-66.7028656, -4.50003386, 14.2623415, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w20.Part1 = p21
w20.C1 = CFrame.new(-21.6081295, 63.6283798, 14.2623405, 0.258820146, 0.965925455, 6.52870682e-008, -0.965930045, 0.258819073, -1.33600135e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-21.6081295, 63.6283798, 14.2623405, 0.258820146, 0.965925455, 6.52870682e-008, -0.965930045, 0.258819073, -1.33600135e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w21.Part1 = p22
w21.C1 = CFrame.new(-67.5028763, -4.30003405, 14.2623415, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w22 = Instance.new("Weld", p22)
w22.Name = "Wedge_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-67.5028763, -4.30003405, 14.2623415, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
m.Parent = torso
m:MakeJoints()
----------------------------------------------------
local cor5 = Instance.new("Part", torso.Torso)
cor5.Name = "Thingy"
cor5.Locked = true
cor5.BottomSurface = 0
cor5.CanCollide = false
cor5.Size = Vector3.new(2, 1, 1)
cor5.Transparency = 1
cor5.TopSurface = 0
corw2 = Instance.new("Weld", cor5)
corw2.Part0 = torso
corw2.Part1 = cor5
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0)
weld2 = Instance.new("Weld", torso.Torso)
weld2.Part0 = cor5
weld2.Part1 = p11
weld2.C0 = CFrame.new(0, 0, 0)
p11.Transparency=1
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "RightLeg"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Neon
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p1.CFrame = CFrame.new(67.2429962, 5.49923229, -14.269578, 1.00045943, -5.51538596e-006, -2.14306033e-006, -7.25689733e-006, 0.999951601, 3.93318305e-006, -2.55180248e-006, 4.05587616e-006, 1.00038624)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Sphere
b1.Name = "Mesh"
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Neon
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p2.CFrame = CFrame.new(67.6437836, 4.79925013, -14.2696915, 1.00046372, -5.51538369e-006, -2.14306829e-006, -7.37613163e-006, 0.999951243, 3.93319806e-006, -2.57999613e-006, 4.14531632e-006, 1.00039005)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Sphere
b2.Name = "Mesh"
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Bright blue")
p3.Material = Enum.Material.Neon
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000048, 0.999999762, 0.200000048)
p3.CFrame = CFrame.new(66.8881302, 5.17327356, -14.2696877, -0.707441688, -0.707433701, -2.14858301e-006, 0.707077265, -0.707066894, 4.0476084e-006, 4.7538756e-006, -1.07312485e-006, 1.00039387)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.Neon
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p4.CFrame = CFrame.new(66.5432739, 4.7992568, -14.2696896, 1.00046802, -5.54323196e-006, -2.17126149e-006, -7.42077827e-006, 0.999950886, 4.02261594e-006, -2.58000705e-006, 4.14531496e-006, 1.00039387)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p4)
b3.MeshType = Enum.MeshType.Sphere
b3.Name = "Mesh"
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Bright blue")
p5.Material = Enum.Material.Neon
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000048, 0.999999762, 0.200000048)
p5.CFrame = CFrame.new(67.8495178, 4.41932487, -14.269804, -0.906733274, 0.422823101, -2.17126944e-006, -0.422590762, -0.906265974, 4.0226314e-006, 5.74146384e-007, -4.94026517e-006, 1.00039768)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Bright blue")
p6.Material = Enum.Material.Neon
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000048, 0.799999833, 0.200000048)
p6.CFrame = CFrame.new(66.5438004, 4.21363878, -14.2698011, 1.00047636, -7.68899918e-006, -2.17678416e-006, -5.51342964e-006, 0.999950111, 4.13704174e-006, -2.63088032e-006, 4.20975539e-006, 1.0004015)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.Metal
p7.Name = "Main"
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(2.20000005, 4.19999981, 2.20000005)
p7.CFrame = CFrame.new(67.2447891, 3.99926972, -13.1694622, 1.00048089, -5.69129634e-006, -2.186149e-006, -7.65911773e-006, 0.999949753, 4.1418657e-006, -2.63640663e-006, 4.32419529e-006, 1.00040531)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Bright blue")
p8.Material = Enum.Material.Neon
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000048, 1.49999976, 0.200000048)
p8.CFrame = CFrame.new(67.1560593, 4.19274044, -14.2700233, -0.766423643, -0.643097878, -2.21435107e-006, 0.642760634, -0.766000509, 4.23129995e-006, 4.88720252e-006, -1.69966381e-006, 1.00041294)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
p9 = Instance.new("WedgePart", m)
p9.BrickColor = BrickColor.new("Bright blue")
p9.Material = Enum.Material.Neon
p9.Name = "Wedge"
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 1.19999981, 4)
p9.CFrame = CFrame.new(67.3460693, 3.49928832, -10.7686377, -1.00049889, -4.27957411e-006, 4.5400966e-006, 8.07642937e-006, 0.906259179, -0.422600418, 2.61850914e-006, -0.422791958, -0.906690836)
p9.CanCollide = false
p9.Locked = true
p9.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p9)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.600000024, 1, 1)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.Neon
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p10.CFrame = CFrame.new(68.0469971, 3.99923301, -14.2702446, 1.00050783, -6.09550762e-006, -2.27330474e-006, -8.07715332e-006, 0.999947786, 4.38094139e-006, -2.69438578e-006, 4.64916229e-006, 1.0004282)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p10)
b5.MeshType = Enum.MeshType.Sphere
b5.Name = "Mesh"
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Neon
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p11.CFrame = CFrame.new(66.5467682, 3.59925723, -14.2703533, 1.00051641, -6.21477238e-006, -2.30150818e-006, -8.22622587e-006, 0.999947011, 4.47037792e-006, -2.72259308e-006, 4.73860473e-006, 1.00043583)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p11)
b6.MeshType = Enum.MeshType.Sphere
b6.Name = "Mesh"
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Bright blue")
p12.Material = Enum.Material.Neon
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000048, 1.49999976, 0.200000048)
p12.CFrame = CFrame.new(67.558609, 3.39274073, -14.2704687, -0.766450763, -0.643119991, -2.33134415e-006, 0.642759323, -0.765998006, 4.5598149e-006, 5.20550884e-006, -1.92419975e-006, 1.00044346)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Neon
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p13.CFrame = CFrame.new(67.0482101, 2.79927826, -14.2705812, 1.00053358, -6.43730164e-006, -2.36118058e-006, -8.5234642e-006, 0.999945402, 4.64126742e-006, -2.78064022e-006, 4.90151251e-006, 1.00045109)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p13)
b7.MeshType = Enum.MeshType.Sphere
b7.Name = "Mesh"
p14 = Instance.new("WedgePart", m)
p14.BrickColor = BrickColor.new("Bright blue")
p14.Material = Enum.Material.Neon
p14.Name = "Wedge"
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 0.699999809, 1.29999995)
p14.CFrame = CFrame.new(66.8462448, 2.3492887, -14.7586241, 1.00054216, -6.55656913e-006, -2.38459074e-006, -8.61293847e-006, 0.999944568, 4.66311894e-006, -2.81690609e-006, 5.04259924e-006, 1.00045872)
p14.CanCollide = false
p14.Locked = true
p14.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p14)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.200000003, 1, 1)
p15 = Instance.new("WedgePart", m)
p15.BrickColor = BrickColor.new("Bright blue")
p15.Material = Enum.Material.Neon
p15.Name = "Wedge"
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 0.699999809, 1.29999995)
p15.CFrame = CFrame.new(68.0474777, 2.34926867, -14.7587423, 1.00055075, -6.67583618e-006, -2.41442808e-006, -8.73221416e-006, 0.999943614, 4.74457238e-006, -2.84674707e-006, 5.12405404e-006, 1.00046635)
p15.CanCollide = false
p15.Locked = true
p15.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p15)
b9.MeshType = Enum.MeshType.Wedge
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.200000003, 1, 1)
p16 = Instance.new("WedgePart", m)
p16.BrickColor = BrickColor.new("Bright blue")
p16.Material = Enum.Material.Neon
p16.Name = "Wedge"
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1, 0.699999809, 1.29999995)
p16.CFrame = CFrame.new(67.4477234, 2.34926438, -14.7588549, 1.00055933, -6.79510413e-006, -2.44426587e-006, -8.85149075e-006, 0.99994266, 4.82602672e-006, -2.8765885e-006, 5.20550975e-006, 1.00047398)
p16.CanCollide = false
p16.Locked = true
p16.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p16)
b10.MeshType = Enum.MeshType.Wedge
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.200000003, 1, 1)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-67.2025909, -3.50003719, 14.2622871, 1, -8.94065977e-008, 5.79734944e-008, 8.94065977e-008, 1, -2.98022034e-008, -5.79734909e-008, 2.98022087e-008, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(-67.6028976, -2.80003333, 14.2623405, 1.00000429, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999642, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-67.6028976, -2.80003333, 14.2623405, 1.00000429, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999642, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w2.Part1 = p3
w2.C1 = CFrame.new(45.023777, 49.5125847, 14.2622843, -0.707106769, 0.707106769, -6.37114681e-008, -0.707106769, -0.707106769, 1.37820813e-008, -3.53054119e-008, 5.47962173e-008, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(45.023777, 49.5125847, 14.2622843, -0.707106769, 0.707106769, -6.37114681e-008, -0.707106769, -0.707106769, 1.37820813e-008, -3.53054119e-008, 5.47962173e-008, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(-66.5026016, -2.80003667, 14.2622871, 1, -8.94065835e-008, 5.79734944e-008, 8.94065835e-008, 1, -2.98022034e-008, -5.79734909e-008, 2.98022087e-008, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-66.5026016, -2.80003667, 14.2622871, 1, -8.94065835e-008, 5.79734944e-008, 8.94065835e-008, 1, -2.98022034e-008, -5.79734909e-008, 2.98022087e-008, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(62.4776497, -26.4635353, 14.2623405, -0.906311512, -0.422618151, -5.2200086e-008, 0.422620177, -0.906307399, -4.14251318e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(62.4776497, -26.4635353, 14.2623405, -0.906311512, -0.422618151, -5.2200086e-008, 0.422620177, -0.906307399, -4.14251318e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w5.Part1 = p6
w5.C1 = CFrame.new(-66.5025787, -2.21426678, 14.2622843, 1, 1.90734295e-006, 3.53052521e-008, -1.90734295e-006, 1, -5.47961676e-008, -3.53053551e-008, 5.47961001e-008, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-66.5025787, -2.21426678, 14.2622843, 1, 1.90734295e-006, 3.53052521e-008, -1.90734295e-006, 1, -5.47961676e-008, -3.53053551e-008, 5.47961001e-008, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(-67.202919, -2.00003123, 13.1623335, 1.00000453, -2.38418579e-007, 2.98023295e-008, 8.94069672e-008, 0.999999642, 5.96046448e-008, -4.46573551e-008, 5.96046448e-008, 1.00000381)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-67.202919, -2.00003123, 13.1623335, 1.00000453, -2.38418579e-007, 2.98023295e-008, 8.94069672e-008, 0.999999642, 5.96046448e-008, -4.46573551e-008, 5.96046448e-008, 1.00000381)
w7.Part1 = p8
w7.C1 = CFrame.new(50.0020561, 44.8201294, 14.2623405, -0.766047955, 0.642787397, 1.54832112e-008, -0.642790377, -0.766044199, -6.48163692e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w8 = Instance.new("Weld", p8)
w8.Name = "Wedge_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(50.0020561, 44.8201294, 14.2623405, -0.766047955, 0.642787397, 1.54832112e-008, -0.642790377, -0.766044199, -6.48163692e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w8.Part1 = p9
w8.C1 = CFrame.new(67.3029327, -5.90784931, -9.1200285, -1.00000453, 3.57627869e-007, -9.07683528e-008, 2.33116921e-007, 0.906307459, -0.422619879, 7.83834153e-009, -0.42261824, -0.906311214)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(67.3029327, -5.90784931, -9.1200285, -1.00000453, 3.57627869e-007, -9.07683528e-008, 2.33116921e-007, 0.906307459, -0.422619879, 7.83834153e-009, -0.42261824, -0.906311214)
w9.Part1 = p10
w9.C1 = CFrame.new(-68.0029068, -2.00003219, 14.2623405, 1.00000441, -2.08616257e-007, 2.98023135e-008, 5.96046448e-008, 0.999999642, 5.96046412e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-68.0029068, -2.00003219, 14.2623405, 1.00000441, -2.08616257e-007, 2.98023135e-008, 5.96046448e-008, 0.999999642, 5.96046412e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w10.Part1 = p11
w10.C1 = CFrame.new(-66.5028687, -1.60003603, 14.2623405, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-66.5028687, -1.60003603, 14.2623405, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w11.Part1 = p12
w11.C1 = CFrame.new(50.8226891, 44.4644012, 14.2623415, -0.766047835, 0.642787337, 1.03502398e-008, -0.642790318, -0.76604414, -5.86991185e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(50.8226891, 44.4644012, 14.2623415, -0.766047835, 0.642787337, 1.03502398e-008, -0.642790318, -0.76604414, -5.86991185e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w12.Part1 = p13
w12.C1 = CFrame.new(-67.0028915, -0.800035119, 14.2623415, 1.00000429, -2.08616257e-007, 2.980231e-008, 1.1920929e-007, 0.999999642, 5.16191463e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w13 = Instance.new("Weld", p13)
w13.Name = "Wedge_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-67.0028915, -0.800035119, 14.2623415, 1.00000429, -2.08616257e-007, 2.980231e-008, 1.1920929e-007, 0.999999642, 5.16191463e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w13.Part1 = p14
w13.C1 = CFrame.new(-66.8004532, -0.350028068, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w14 = Instance.new("Weld", p14)
w14.Name = "Wedge_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-66.8004532, -0.350028068, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w14.Part1 = p15
w14.C1 = CFrame.new(-68.0004578, -0.350028008, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w15 = Instance.new("Weld", p15)
w15.Name = "Wedge_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-68.0004578, -0.350028008, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w15.Part1 = p16
w15.C1 = CFrame.new(-67.4004517, -0.350028008, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
m.Parent = rleg
m:MakeJoints()
----------------------------------------------------
local cor6 = Instance.new("Part", rleg.RightLeg)
cor6.Name = "Thingy"
cor6.Locked = true
cor6.BottomSurface = 0
cor6.CanCollide = false
cor6.Size = Vector3.new(2, 1, 1)
cor6.Transparency = 1
cor6.TopSurface = 0
corw2 = Instance.new("Weld", cor6)
corw2.Part0 = rleg
corw2.Part1 = cor6
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0)
weld2 = Instance.new("Weld", rleg.RightLeg)
weld2.Part0 = cor6
weld2.Part1 = p7
weld2.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "LeftLeg"
p1 = Instance.new("WedgePart", m)
p1.BrickColor = BrickColor.new("Bright blue")
p1.Material = Enum.Material.Neon
p1.Name = "Wedge"
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 0.699999809, 1.29999995)
p1.CFrame = CFrame.new(64.3107605, 2.34980536, -14.7520046, 1.00008786, -7.1526415e-007, 2.00803143e-007, -2.2649931e-006, 0.999990404, 5.36453001e-007, -1.27237047e-006, 7.81809263e-007, 1.00007522)
p1.CanCollide = false
p1.Locked = true
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.200000003, 1, 1)
p2 = Instance.new("WedgePart", m)
p2.BrickColor = BrickColor.new("Bright blue")
p2.Material = Enum.Material.Neon
p2.Name = "Wedge"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 1.19999981, 4)
p2.CFrame = CFrame.new(64.9138336, 3.49979234, -10.7640553, -1.00009644, -6.38643314e-007, 1.81689501e-007, 2.53323037e-006, 0.906298041, -0.422614515, 1.23479219e-006, -0.422652602, -0.906383216)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Wedge
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.600000024, 1, 1)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Metal
p3.Name = "Main"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(2.20000005, 4.19999981, 2.20000005)
p3.CFrame = CFrame.new(65.0144501, 3.99976897, -13.1643734, 1.00010526, -9.43461771e-007, 1.5135204e-007, -2.48442234e-006, 0.999988973, 7.74860382e-007, -1.32394814e-006, 8.94069672e-007, 1.00009048)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.Neon
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p4.CFrame = CFrame.new(64.8149185, 4.09976244, -14.2645903, 1.00011396, -1.07351866e-006, 1.23178822e-007, -2.62327239e-006, 0.999988258, 8.64272579e-007, -1.33881622e-006, 1.01328953e-006, 1.00009811)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p4)
b3.MeshType = Enum.MeshType.Sphere
b3.Name = "Mesh"
p5 = Instance.new("WedgePart", m)
p5.BrickColor = BrickColor.new("Bright blue")
p5.Material = Enum.Material.Neon
p5.Name = "Wedge"
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 0.699999809, 1.29999995)
p5.CFrame = CFrame.new(64.9130707, 2.34976578, -14.7524614, 1.00012243, -1.19274011e-006, 9.97973828e-008, -2.74250215e-006, 0.999987364, 8.94081438e-007, -1.37342522e-006, 1.15432931e-006, 1.00010574)
p5.CanCollide = false
p5.Locked = true
p5.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p5)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.200000003, 1, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Bright blue")
p6.Material = Enum.Material.Neon
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000048, 1.29999971, 0.200000048)
p6.CFrame = CFrame.new(65.1539307, 3.56787443, -14.2648125, -0.81925869, 0.573652625, 6.3568308e-008, -0.573566198, -0.819142461, 1.03511331e-006, 4.69596898e-007, -1.7646264e-006, 1.00011337)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Bright blue")
p7.Material = Enum.Material.Neon
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000048, 0.999999642, 0.200000048)
p7.CFrame = CFrame.new(64.9899063, 4.4266243, -14.2649202, 0.86614728, 0.500068843, 4.87115699e-008, -0.499995351, 0.866011381, 1.14634361e-006, -1.86828663e-006, 3.82691809e-007, 1.000121)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.Neon
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p8.CFrame = CFrame.new(65.2172623, 4.89969873, -14.2650318, 1.00014877, -1.43051147e-006, 2.05365609e-008, -3.09944153e-006, 0.99998486, 1.2357583e-006, -1.44150738e-006, 1.38478742e-006, 1.00012863)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p8)
b5.MeshType = Enum.MeshType.Sphere
b5.Name = "Mesh"
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Neon
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p9.CFrame = CFrame.new(65.517868, 2.99971151, -14.2651463, 1.00015736, -1.5520751e-006, -9.27031252e-009, -3.21633729e-006, 0.999984026, 1.32517368e-006, -1.46969478e-006, 1.46621869e-006, 1.00013626)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p9)
b6.MeshType = Enum.MeshType.Sphere
b6.Name = "Mesh"
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Bright blue")
p10.Material = Enum.Material.Neon
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000048, 1.09999967, 0.200000048)
p10.CFrame = CFrame.new(64.79879, 5.1497221, -14.2652512, -0.642893076, 0.766172707, -3.7446263e-008, -0.766029418, -0.64277941, 1.40660427e-006, -2.27817864e-007, -2.14863894e-006, 1.00014389)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Bright blue")
p11.Material = Enum.Material.Neon
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000048, 0.699999809, 0.200000048)
p11.CFrame = CFrame.new(65.2189484, 5.30325174, -14.2653618, 1.00017476, -1.78813934e-006, -6.56227002e-008, -3.4570694e-006, 0.999982595, 1.49602079e-006, -1.52770292e-006, 1.64505627e-006, 1.00015152)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
p12 = Instance.new("WedgePart", m)
p12.BrickColor = BrickColor.new("Bright blue")
p12.Material = Enum.Material.Neon
p12.Name = "Wedge"
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 0.699999809, 1.29999995)
p12.CFrame = CFrame.new(65.5171509, 2.34969687, -14.7532635, 1.00018334, -1.89246384e-006, -8.90070169e-008, -3.54650388e-006, 0.999981821, 1.52583425e-006, -1.56231545e-006, 1.78610321e-006, 1.00015914)
p12.CanCollide = false
p12.Locked = true
p12.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p12)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.200000003, 1, 1)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Neon
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p13.CFrame = CFrame.new(64.3198929, 5.59963703, -14.2655821, 1.00019193, -1.97098893e-006, -1.23608402e-007, -3.67657594e-006, 0.999981046, 1.66687016e-006, -1.58571254e-006, 1.81590929e-006, 1.00016677)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p13)
b8.MeshType = Enum.MeshType.Sphere
b8.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Neon
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p14.CFrame = CFrame.new(65.2206192, 5.79961872, -14.2656937, 1.00020039, -2.10105645e-006, -1.51786239e-007, -3.75511786e-006, 0.99998033, 1.7562885e-006, -1.6139021e-006, 1.90533035e-006, 1.0001744)
p14.CanCollide = false
p14.Locked = true
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p14)
b9.MeshType = Enum.MeshType.Sphere
b9.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Wedge_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-64.3004303, -0.350028396, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w1.Part1 = p2
w1.C1 = CFrame.new(64.9028854, -5.90785694, -9.12002754, -1.00000429, 3.57627869e-007, -9.07683386e-008, 2.9341092e-007, 0.906307459, -0.422619879, -5.58450353e-009, -0.42261821, -0.906311214)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(64.9028854, -5.90785694, -9.12002754, -1.00000429, 3.57627869e-007, -9.07683386e-008, 2.9341092e-007, 0.906307459, -0.422619879, -5.58450353e-009, -0.42261821, -0.906311214)
w2.Part1 = p3
w2.C1 = CFrame.new(-65.0029144, -2.00002885, 13.1623335, 1.00000453, -2.19451294e-007, 2.98023295e-008, 6.97858056e-008, 0.999999702, 5.96046448e-008, -4.46573551e-008, 5.96046448e-008, 1.00000381)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-65.0029144, -2.00002885, 13.1623335, 1.00000453, -2.19451294e-007, 2.98023295e-008, 6.97858056e-008, 0.999999702, 5.96046448e-008, -4.46573551e-008, 5.96046448e-008, 1.00000381)
w3.Part1 = p4
w3.C1 = CFrame.new(-64.8028488, -2.10003614, 14.2623415, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w4 = Instance.new("Weld", p4)
w4.Name = "Wedge_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-64.8028488, -2.10003614, 14.2623415, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w4.Part1 = p5
w4.C1 = CFrame.new(-64.9004364, -0.350028336, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-64.9004364, -0.350028336, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w5.Part1 = p6
w5.C1 = CFrame.new(54.2596054, -36.0786095, 14.2623415, -0.819155633, -0.573575974, -5.40201484e-008, 0.573578835, -0.819151759, -2.51900261e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(54.2596054, -36.0786095, 14.2623415, -0.819155633, -0.573575974, -5.40201484e-008, 0.573578835, -0.819151759, -2.51900261e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w6.Part1 = p7
w6.C1 = CFrame.new(-55.0575066, -34.589859, 14.2623396, 0.866029263, -0.50000006, -3.99274924e-009, 0.500002325, 0.866025031, 6.65203004e-008, -4.46573551e-008, 5.96046448e-008, 1.00000381)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-55.0575066, -34.589859, 14.2623396, 0.866029263, -0.50000006, -3.99274924e-009, 0.500002325, 0.866025031, 6.65203004e-008, -4.46573551e-008, 5.96046448e-008, 1.00000381)
w7.Part1 = p8
w7.C1 = CFrame.new(-65.2028809, -2.90003395, 14.2623415, 1.00000429, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999642, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-65.2028809, -2.90003395, 14.2623415, 1.00000429, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999642, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w8.Part1 = p9
w8.C1 = CFrame.new(-65.5028763, -1.00002885, 14.2623425, 1.00000429, -2.06278372e-007, 2.98023135e-008, 8.70690755e-008, 0.999999523, 5.16191463e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-65.5028763, -1.00002885, 14.2623425, 1.00000429, -2.06278372e-007, 2.98023135e-008, 8.70690755e-008, 0.999999523, 5.16191463e-008, -5.96046341e-008, 2.98023224e-008, 1.00000381)
w9.Part1 = p10
w9.C1 = CFrame.new(44.0550385, -47.6020889, 14.2623405, -0.642790556, -0.766044021, -6.48163621e-008, 0.766047776, -0.642787576, -1.54832289e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(44.0550385, -47.6020889, 14.2623405, -0.642790556, -0.766044021, -6.48163621e-008, 0.766047776, -0.642787576, -1.54832289e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w10.Part1 = p11
w10.C1 = CFrame.new(-65.2028656, -3.3036263, 14.2623405, 1.00000429, -1.93715096e-007, 2.98023153e-008, 1.1920929e-007, 0.999999702, 5.96046412e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w11 = Instance.new("Weld", p11)
w11.Name = "Wedge_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-65.2028656, -3.3036263, 14.2623405, 1.00000429, -1.93715096e-007, 2.98023153e-008, 1.1920929e-007, 0.999999702, 5.96046412e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w11.Part1 = p12
w11.C1 = CFrame.new(-65.5004425, -0.350028276, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-65.5004425, -0.350028276, 14.7500486, 1.00000429, -2.08616257e-007, 2.33795703e-008, 8.94069672e-008, 0.999999523, 1.11224018e-007, -5.31818927e-008, -2.9802294e-008, 1.00000381)
w12.Part1 = p13
w12.C1 = CFrame.new(-64.3028641, -3.60003614, 14.2623415, 1.00000429, -2.19451294e-007, 2.98023153e-008, 1.30103487e-007, 0.999999702, 5.96046448e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-64.3028641, -3.60003614, 14.2623415, 1.00000429, -2.19451294e-007, 2.98023153e-008, 1.30103487e-007, 0.999999702, 5.96046448e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w13.Part1 = p14
w13.C1 = CFrame.new(-65.202858, -3.80003428, 14.2623415, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
w14 = Instance.new("Weld", p14)
w14.Name = "Wedge_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-65.202858, -3.80003428, 14.2623415, 1.00000417, -2.08616257e-007, 2.98023117e-008, 8.94069672e-008, 0.999999583, 5.96046377e-008, -5.79734909e-008, 2.98023224e-008, 1.00000381)
m.Parent = lleg
m:MakeJoints()
----------------------------------------------------
local cor7 = Instance.new("Part", lleg.LeftLeg)
cor7.Name = "Thingy"
cor7.Locked = true
cor7.BottomSurface = 0
cor7.CanCollide = false
cor7.Size = Vector3.new(2, 1, 1)
cor7.Transparency = 1
cor7.TopSurface = 0
corw2 = Instance.new("Weld", cor7)
corw2.Part0 = lleg
corw2.Part1 = cor7
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0)
weld2 = Instance.new("Weld", lleg.LeftLeg)
weld2.Part0 = cor7
weld2.Part1 = p3
weld2.C0 = CFrame.new(0, 0, 0)
p3.Transparency=1
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

function Landing()
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
        part2=part:clone()
        part2.Parent = mod5
        part2.BrickColor=BrickColor.new('Bright blue')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)
        mesh2=mesh:clone()
        mesh2.Parent=part2
        mesh2.Scale=Vector3.new(12, 6, 12)

    for i,v in pairs(FindNearestTorso(torso.CFrame.p,30))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,30))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 30
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
                        part2.CFrame=part2.CFrame
                        part2.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,0.2,1)
                        mesh2.Scale=mesh2.Scale+Vector3.new(1.2,0.3,1.2)
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
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 1) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.2, -3) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(0)), 0.25)
        if Debounces.on == false then break end
    rs:wait(.6)
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
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-55)), 0.25)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(55)), 0.25)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),0.25)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), 0), 0.25)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -1) * CFrame.Angles(math.rad(50), 0, math.rad(0)), 0.25)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .4) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.25)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 0.25)
        if Debounces.on == false then break end
    rs:wait(1)
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
        rs:wait(2)
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
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2,.9,-1) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(20)), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(30),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10), 0, 0), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, .6) * CFrame.Angles(math.rad(-65), 0, 0), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        rs:wait(2)
    end
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(50)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(10),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-10), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        rs:wait(2)
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
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(40), math.rad(-20), math.rad(10)), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(-40),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(40), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(20), 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.8, -1.4) * CFrame.Angles(math.rad(-110), math.rad(-90), math.rad(20)), 1)
        if Debounces.on == false then break end
        rs:wait(2)
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
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .6) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.2) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            rs:wait(2.6)
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
            rs:wait(2)
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
            rs:wait(4)
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
            rs:wait(2.4)
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
                                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-89)), 0.6)
                                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.2)
                                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
                                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                                        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    rs:wait(2.7)
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
rng.BrickColor = BrickColor.new("Institutional white")
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
rngm.MeshId = "http://www.roblox.com/asset/?id=156292355"
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
--[[wait(0.2)
bem.BrickColor = BrickColor.new("Really red")
wait(0.5)
bem.BrickColor = BrickColor.new("Royal purple") ]]
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1, 1, 1)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 10, 10)
local out = Instance.new("Part", larm)
out.Anchored = true
out.BrickColor = BrickColor.new("White")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(4, 4, 4)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(10, 10, 10)
local bnd = Instance.new("Part", larm)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really red")
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
--[[local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Bright blue")
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
rngm2.Scale = Vector3.new(5, 5, 3)
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
bnd.BrickColor = BrickColor.new("Bright blue")
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
rng4.CFrame = rng.CFrame * CFrame.new(0, -1, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rngm3.Scale = Vector3.new(8 + i*3, 8 + i*3, 1)
rngm4.Scale = Vector3.new(6 + i*4, 6 + i*4, 1)
rng.Transparency = i/20
rng3.Transparency = 1/24
rng4.Transparency = i/26
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
newRngm.Scale = Vector3.new(8 + i*2, 8 + i*2, 3)
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
end) ]]
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
                for i = 1, 20 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-34)), 0.2)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(34)), 0.2)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.2)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.2)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    rs:wait(6)
                end
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://"..sidz[math.random(1,#sidz)]
                z.Pitch = ptz[math.random(1,#ptz)]
                z.Volume = 1
                z1 = Instance.new("Sound",char)
                z1.SoundId = z.SoundId
                z1.Pitch = z.Pitch
                z1.Volume = 1
                z:Play()
                z1:Play()
                Stomp()
                for i = 1, 20 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.3)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.3)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.3)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, -.6) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.3)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.3)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, -1.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.3)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    rs:wait(2.5)
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
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.4)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.8, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.9)
            if Debounces.on == false then break end
            rs:wait(3)
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
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.7,.9,-.5)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.7, .6) * CFrame.Angles(math.rad(-70), math.rad(0), math.rad(0)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
            if Debounces.on == false then break end
            rs:wait(1)
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
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.3)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.3)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,.2)*CFrame.Angles(math.rad(8),math.rad(0),0), 0.3)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(16), math.rad(0), 0), 0.3)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-16), math.rad(0), math.rad(0)), 0.3)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.6, -1.4) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.3)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
            if Debounces.on == false then break end
            rs:wait(.7)
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
                for i = 1, 11 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.3)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.3)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.3)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.3)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    rs:wait(1.4)
                end
                GroundPound()
                for i = 1, 11 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.3)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.3)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.3)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.3)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    rs:wait(1.4)
                end
                GroundPound()
                for i = 1, 11 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.3)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.3)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.3)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.3)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    rs:wait(1.4)
                end
                GroundPound()
                for i = 1, 11 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.3)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.3)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.3)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.3)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    rs:wait(1.4)
                end
                GroundPound()
                for i = 1, 11 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.3)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.3)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.3)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.3)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    rs:wait(1.4)
                end
                GroundPound()
                for i = 1, 11 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.3)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.3)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.3)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.3)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    rs:wait(1.4)
                end
                for i = 1, 24 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)), 0.2)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)), 0.2)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.2)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.2)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    rs:wait(3)
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
                for i = 1, 20 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(-10)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(10)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    rs:wait(2)
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
                for i = 1, 30 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-34)), 0.2)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(34)), 0.2)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.2)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.2)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    rs:wait(6)
                end
        v = Instance.new("Sound")
        v.SoundId = "rbxassetid://181384451"
        v.Parent = char
        v.Looped = false
        v.Pitch = .94
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
                for i = 1, 30 do
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0), math.rad(0)),0.3)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.3)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.3)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.2, .3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                        if Debounces.on == false then break end
                        rs:wait()
                end
        wait(2.4)
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
    if key == "l" then
                for i = 1, 20 do
                        wait()
                for i,v in pairs(char.Absolution:children()) do
                        if v:IsA("Part") or v:IsA("WedgePart") then
                                v.Transparency = v.Transparency + 0.05
                        end
                end
        end
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
                bv = Instance.new("BodyVelocity",torso)
        bv.maxForce = Vector3.new(0,200000,0)
        bv.P = 100000
                bv.velocity = Vector3.new(0,500,0)
                wait(2)
                bv:Destroy()
if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(-14),math.rad(0), math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.5, .9, -.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.5, .9, -.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1.5, -1) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1.5, -1) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
        end
        for i = 1, 360, 20 do wait()
                torso.Weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
        end
end
torso.Weld.C1 = CFrame.new(0,-1.2,0)
local ry,ht,ps=nil,nil,nil
while ht==nil do
        ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-3,0),4.1,{char})
        wait()
end
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://245537790"
z.Pitch = 1
z.Volume = 1
wait(0.1)
z:Play()
        local sp = Instance.new("Part", char)
                sp.Name = "Energy"
                sp.BrickColor = BrickColor.new("Really black")
                sp.Size = Vector3.new(1, 1, 1)
                sp.Shape = "Ball"
                sp.CanCollide = false
                sp.Anchored = true
                sp.TopSurface = 0
                sp.BottomSurface = 0
        local spm = Instance.new("SpecialMesh",sp)
                spm.MeshId = "rbxassetid://9982590"
                spm.Scale = Vector3.new(3,3,3)
        local sp2 = Instance.new("Part", char)
                sp2.Name = "Energy2"
                sp2.BrickColor = BrickColor.new("Really black")
                sp2.Size = Vector3.new(1, 1, 1)
                sp2.Shape = "Ball"
                sp2.CanCollide = false
                sp2.Anchored = true
                sp2.TopSurface = 0
                sp2.BottomSurface = 0
        local spm2 = Instance.new("SpecialMesh",sp2)
                spm2.MeshId = "rbxassetid://9982590"
                spm2.Scale = Vector3.new(3,3,3)
                sp.Touched:connect(function(hit)
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
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 80
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                sp2.Touched:connect(function(hit)
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
        for i = 1, 100, 1 do
                sp.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                sp2.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                sp.CFrame = root.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i), math.rad(i), math.rad(-i))
                sp2.CFrame = root.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
                spm.Scale = sp.Size
                spm2.Scale = sp2.Size
                local t = i / 100
                sp.Transparency = t
                sp2.Transparency = t
                wait()
        end
                sp:Destroy()
                sp2:Destroy()
                z:Destroy()
                for i = 1, 20 do
                        wait()
                for i,v in pairs(char.Absolution:children()) do
                        if v:IsA("Part") or v:IsA("WedgePart") then
                                v.Transparency = v.Transparency - 0.05
                        end
                end
        end
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
                        Debounces.NoIdl = false
                        Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
local orbt={}
local stlt={}
local chot={}
local cfxt={}
local pfxt={}
local cns=0
local cnOrb=nil
mouse.KeyDown:connect(function(key)
    if key == "u" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
                        orbt={}
                        stlt={}
                        chot={}
                        cfxt={}
                for i = 1, 20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1.4,0)*CFrame.Angles(math.rad(170),math.rad(-20),math.rad(-30)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(0),math.rad(-40),0), 0.2)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(40), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.15, -3, 0.4) * CFrame.Angles(math.rad(-20), math.rad(20), math.rad(-10)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.15, -3, -0.4) * CFrame.Angles(math.rad(20), math.rad(-10), math.rad(10)), 0.2)
                        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://170053944"
                z.Pitch = 1.07
                z.Volume = 1
                wait(0.1)
                z:Play()
                cnOrb=nwPrt(char,Vector3.new(1,1,1),larm.CFrame*CFrame.new(0,-3.4,-0.1),"Really black")
                debris:AddItem(cnOrb,50)
                cnOrb.Mesh.MeshType=3
                table.insert(orbt,cnOrb)
                table.insert(stlt,cnOrb)
                local nt=0
                for i=0,5,0.02 do
                        nt=nt+1
                        cns=i
                        if nt>=2 then
                                nt=0
                                local cho=nwPrt(mod3,Vector3.new(2,2,2),cnOrb.CFrame*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))*CFrame.new(0,5+cns,0),"Really black")
                                debris:AddItem(cho,1)
                                cho.Mesh.MeshType=3
                                table.insert(chot,cho)
                        end
                        cnOrb.CFrame=larm.CFrame*CFrame.new(0,-3.4-(cns/2),-0.1)
                        cnOrb.Mesh.Scale=Vector3.new(i,i,i)
                        wait()
                end
                for i = 1, 14 do
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1.4,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.6)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                coroutine.wrap(function()
                for i = 1, 20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.45)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2,.8,-.3)*CFrame.Angles(math.rad(70),math.rad(20),math.rad(50)), 0.6)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(0),math.rad(20),0), 0.5)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-40), math.rad(-20), 0), 0.5)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.15, -3, -0.4) * CFrame.Angles(math.rad(60), math.rad(20), math.rad(-10)), 0.5)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.15, -3, 0.4) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(10)), 0.5)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                end)()
                wait(0.1)
                stlt={}
                local ry,ht,ps=newRay(root.CFrame*CFrame.new(0,0,-4),root.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(math.rad(-5),0,0)*CFrame.new(0,0,-2),160,{char})
                cnOrb.CFrame=root.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(math.rad(-5),0,0)
                local nt=0
                for i=0,160,3 do
                                        cnOrb.CFrame=cnOrb.CFrame*CFrame.new(0,0,-3)
                                        nt=nt+1
                                        if nt>=6 then
                        nt=0
                        local cfx=nwPrt(mod3,Vector3.new(1,1,1),cnOrb.CFrame*CFrame.new(0,0,2)*CFrame.Angles(math.rad(90),0,0),"Really black")
                        cfx.Mesh.MeshId="rbxassetid://20329976"
                        cfx.Transparency=0.4
                        table.insert(cfxt,cfx)
                        debris:AddItem(cfx,1)
                    end
                                                if (cnOrb.Position-ps).magnitude<6 then
                                                        break
                                                end
                                wait()
                        end
                        orbt={}
                        
                        for i=0,1,0.1 do
                                local cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,10,i),Tween(cs.Y,10,i),Tween(cs.Z,10,i))
                                wait()
                        end
                        local ofx=nwPrt(cnOrb,Vector3.new(1,1,1),cnOrb.CFrame,"Really black")
                        ofx.Transparency=0.5
                        ofx.Mesh.MeshType=3
                        ofx.Mesh.Scale=Vector3.new(30,30,30)
                        for _,v in pairs(game:service"Players":GetChildren()) do
                                pcall(function()
                                        for _,c in pairs(v.Character:GetChildren()) do
                                                if v~=p and c:IsA("Part") and (cnOrb.CFrame.p-c.CFrame.p).magnitude<60 and (cnOrb.CFrame.p-c.CFrame.p).magnitude>15 then
                                                        local hrp=v.Character:FindFirstChild("HumanoidRootPart")
                                                        hrp.Velocity=CFrame.new(hrp.CFrame.p,(cnOrb.CFrame*CFrame.new(0,10,0)).p).lookVector*150
                                                end
                                        end
                                end)
                        end
                        for i=0,1,0.05 do
                                local cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,0.1,i),Tween(cs.Y,0.1,i),Tween(cs.Z,0.1,i))
                                local ofs=ofx.Mesh.Scale
                                ofx.Mesh.Scale=Vector3.new(Tween(ofs.X,0.1,i),Tween(ofs.Y,0.1,i),Tween(ofs.Z,0.1,i))
                                ofx.Transparency=Tween(ofx.Transparency,1,i)
                                wait()
                        end
                        ofx:Destroy()
                        cnOrb.CFrame=CFrame.new(cnOrb.Position)*CFrame.new(0,10,0)
                        local cnfx=nwPrt(cnOrb,Vector3.new(1,1,1),cnOrb.CFrame,"Really black")
                        cnfx.Mesh.MeshType=3
                        cnOrb.Transparency=0.05
                        local cnr=nwPrt(cnOrb,Vector3.new(1,1,1),cnOrb.CFrame,"Really black")
                        cnr.Mesh.MeshType=3
                        local rn1=nwPrt(cnOrb,Vector3.new(1,1,1),cnOrb.CFrame*CFrame.Angles(math.rad(90),0,0),"Really black")
                        rn1.Transparency=1
                        rn1.Mesh.MeshId="rbxassetid://3270017"
                        local rn2=nwPrt(cnOrb,Vector3.new(1,1,1),cnOrb.CFrame,"Really black")
                        rn2.Transparency=1
                        rn2.Mesh.MeshId="rbxassetid://3270017"
                        local nt=0
                        local cs=nil
                        for i=0,1,0.05 do
                                cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,100,i),Tween(cs.Y,100,i),Tween(cs.Z,100,i))
                                local fs=cnfx.Mesh.Scale
                                cnfx.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,120,i))
                                cnfx.Transparency=cnfx.Transparency+0.05
                                rn1.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,60,i))
                                rn2.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,60,i))
                                rn1.CFrame=rn1.CFrame*CFrame.Angles(math.rad(10),math.rad(6),math.rad(3))
                                rn2.CFrame=rn2.CFrame*CFrame.Angles(math.rad(10),math.rad(6),math.rad(3))
                                rn1.Transparency=Tween(rn1.Transparency,0.8,i)
                                rn2.Transparency=Tween(rn2.Transparency,0.8,i)
                                local rs=cnr.Mesh.Scale
                                cnr.Mesh.Scale=Vector3.new(Tween(rs.X,10,i),Tween(rs.Y,10,i),Tween(rs.Z,10,i))
                                nt=nt+1
                                if nt>=6 then
                                        local pls={}
                                        for _,v in pairs(game.Players:GetChildren()) do
                                                table.insert(pls,v)
                                        end
                                        local ry2,ht2,ps2=newRay(cnOrb.CFrame,cnOrb.CFrame*CFrame.new(0,-1,0),1000,pls)
                                        local pffx=nwPrt(mod3,Vector3.new(1,1,1),CFrame.new(ps2)*CFrame.new(0,10,-12),"Really black")
                                        pffx.Mesh.MeshId="rbxassetid://20329976"
                                        pffx.Mesh.Scale=Vector3.new(cs.X,cs.Y/5,cs.Z)
                                        debris:AddItem(pffx,2)
                                        table.insert(pfxt,pffx)
                                        nt=0
                                end
                                wait()
                        end
                        local int=0
                        coroutine.wrap(function()
                        for i=1,500 do
                                rn1.CFrame=rn1.CFrame*CFrame.Angles(math.rad(10),math.rad(5),math.rad(5))
                                rn2.CFrame=rn2.CFrame*CFrame.Angles(math.rad(10),math.rad(5),math.rad(5))
                                nt=nt+1
                                int=int+1
                                local htd={p}
                                for _,v in pairs(game:service"Players":GetChildren()) do
                                        pcall(function()
                                                for _,c in pairs(v.Character:GetChildren()) do
                                                        if c:IsA("Part") and not inT(v,htd) and (cnOrb.CFrame.p-c.CFrame.p).magnitude<50 then
                                                                v.Character:FindFirstChild("Humanoid").Health=v.Character:FindFirstChild("Humanoid").Health-2
                                                                v.Character:FindFirstChild("HumanoidRootPart").Velocity=Vector3.new(0,0,0)
                                                                table.insert(htd,v)
                                                        end
                                                end
                                        end)
                                end
                                htd={p}
                                if int>=6 then
                                for _,v in pairs(game:service"Players":GetChildren()) do
                                        pcall(function()
                                                for _,c in pairs(v.Character:GetChildren()) do
                                                        if c:IsA("Part") and not inT(v,htd) and (cnOrb.CFrame.p-c.CFrame.p).magnitude<50 then
                                                                table.insert(htd,v)
                                                                local hfx=nwPrt(mod3,Vector3.new(1,1,1),c.CFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)),"Really black")
                                                                hfx.Mesh.Scale=Vector3.new(2,2,2)
                                                                hfx.Mesh.MeshType=3
                                                                debris:AddItem(hfx,2)
                                                                coroutine.wrap(function()
                                                                        pcall(function()
                                                                                for i=0,1,0.05 do
                                                                                        pcall(function()
                                                                                        local hs=hfx.Mesh.Scale
                                                                                        hfx.CFrame=Lerp(hfx.CFrame,cnOrb.CFrame,i)
                                                                                        hfx.Mesh.Scale=Vector3.new(Tween(hs.X,0.1,i),Tween(hs.Y,0.1,i),Tween(hs.Z,0.1,i))
                                                                                        end)
                                                                                        wait()
                                                                                end
                                                                                hfx:Destroy()
                                                                        end)
                                                                end)()
                                                        end
                                                end
                                        end)
                                end
                                int=0
                                end
                                if nt>=4 then
                                        local pls={}
                                        for _,v in pairs(game.Players:GetChildren()) do
                                                table.insert(pls,v)
                                        end
                                        local ry2,ht2,ps2=newRay(cnOrb.CFrame,cnOrb.CFrame*CFrame.new(0,-1,0),1000,pls)
                                        local pffx=nwPrt(mod3,Vector3.new(1,1,1),CFrame.new(ps2)*CFrame.new(0,10,-12),"Really black")
                                        pffx.Transparency=0.4
                                        pffx.Mesh.MeshId="rbxassetid://20329976"
                                        pffx.Mesh.Scale=Vector3.new(cs.X-10,cs.Y/5,cs.Z-10)
                                        debris:AddItem(pffx,2)
                                        table.insert(pfxt,pffx)
                                        nt=0
                                end
                                wait()
                        end
                        cnOrb:Destroy()
                        cnfx:Destroy()
                        for _,v in pairs(mod3:GetChildren()) do
                                v:Destroy()
                        end
                        orbt={}
                        stlt={}
                        chot={}
                        cfxt={}
                        pfxt={}
                        end)()
                        if Debounces.CanAttack == false then
                                Debounces.CanAttack = true
                                Debounces.NoIdl = false
                                Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "m" then
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
        rng.Position = torso.Position - Vector3.new(0,5,0)
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
            hum.WalkSpeed = 100
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0,200000,0)
        BV.P = 240000
        BV.velocity = Vector3.new(0,700,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1.8, .2) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1.5, -2) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
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
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-120)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(120)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
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
                                con1:disconnect()
            elseif hum1 ~= nil then
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
        end--
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
Change = false
mouse.KeyDown:connect(function(key)
    if key == "n" then
        if Change == false then
            Change = true
        stanceToggle = "Normal2"
    elseif Change == true then
        Change = false
        stanceToggle = "Normal"
        end
    end
end)
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
local och = 0
----------------------------------------------------
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
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0)*CFrame.Angles(0, math.rad(1), math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
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
rs:wait(2)
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
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-40), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(100-1*math.cos(sine/14)), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0)*CFrame.Angles(math.rad(-36+1*math.cos(sine/14)), math.rad(0), math.rad(-30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.3) * CFrame.Angles(math.rad(-14+1*math.cos(sine/14)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.8, 0) * CFrame.Angles(math.rad(-10+1*math.cos(sine/14)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10-1*math.cos(sine/14)), 0, 0), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-50-1*math.cos(sine/14)), 0, 0), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
elseif stanceToggle == "Normal2" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(30+2*math.cos(sine/14)),math.rad(40),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-20),math.rad(30),math.rad(-40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(-40),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(40), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-16), math.rad(-20), math.rad(-14)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(10), math.rad(-30), math.rad(18)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.9, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9+.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(90+2*math.cos(sine/7)), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9+.1*math.cos(sine/7), -math.sin(sine/14)/2)*CFrame.Angles(math.sin(sine/14)/4, math.rad(1) + -math.sin(sine/14)/2, math.rad(-30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/7)), math.rad(0-8*math.cos(sine/14)), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/7)), math.rad(0+8*math.cos(sine/14)), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.3*math.cos(sine/14)/2, -.05 + math.sin(sine/14)/2) * CFrame.Angles(math.rad(-12) + -math.sin(sine/14)/2, math.rad(0-8*math.cos(sine/14)), 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.3*math.cos(sine/14)/2, -.05 + -math.sin(sine/14)/2) * CFrame.Angles(math.rad(-12) + math.sin(sine/14)/2, math.rad(0-8*math.cos(sine/14)), 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
elseif stanceToggle == "Normal2" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9+.1*math.cos(sine/7), math.sin(sine/14)/2)*CFrame.Angles(-math.sin(sine/14)/4, -math.sin(sine/14)/2, math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9+.1*math.cos(sine/7), -math.sin(sine/14)/2)*CFrame.Angles(math.sin(sine/14)/4, -math.sin(sine/14)/2, math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/7)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/7)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.3*math.cos(sine/14)/2, -.05 + math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + -math.sin(sine/14)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.3*math.cos(sine/14)/2, -.05 + -math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + math.sin(sine/14)/2.3, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.9, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10-20*math.cos(sine/4)/2), math.rad(-40+10*math.cos(sine/4)/2), math.rad(50-10*math.cos(sine/4)/2)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .5)*CFrame.Angles(math.rad(10+20*math.cos(sine/4)/2), math.rad(40-10*math.cos(sine/4)/2), math.rad(-50+10*math.cos(sine/4)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+6*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
end
och=och+1
for _,v in pairs(orbt) do
        pcall(function()
                v.Mesh.Scale=Vector3.new(cns+(0.2*math.cos(och/12)),cns+(0.2*math.cos(och/10)),cns+(0.2*math.cos(och/8)))
        end)
end
for _,v in pairs(stlt) do
        pcall(function()
                v.CFrame=larm.CFrame*CFrame.new(0,-3.5-(cns/2),-0.1)
        end)
end
for _,v in pairs(chot) do
        pcall(function()
                v.CFrame=Lerp(v.CFrame,cnOrb.CFrame,0.1)
                v.Mesh.Scale=Vector3.new(Tween(v.Mesh.Scale.X,0,0.1),Tween(v.Mesh.Scale.Y,0,0.1),Tween(v.Mesh.Scale.Z,0,0.1))
        end)
end
for _,v in pairs(cfxt) do
        pcall(function()
                local vs=v.Mesh.Scale
                v.Mesh.Scale=Vector3.new(vs.x+0.5,vs.y+0.1,vs.z+0.5)
                v.Transparency=v.Transparency+0.05
        end)
end
for _,v in pairs(pfxt) do
        pcall(function()
                local vs=v.Mesh.Scale
                v.Mesh.Scale=Vector3.new(vs.x+2,vs.y+0.5,vs.z+2)
                v.Transparency=v.Transparency+0.025
        end)
end
end)