
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"
]local hed = char.Head
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
hed.face.Texture = "rbxassetid://110112292"
char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://246438816"
char.Pants.PantsTemplate = "rbxassetid://267068334"
end)
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
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
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
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
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
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://413641131"--282572614 -- 157060424 -- 303570180
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.1)
z:Play()
----------------------------------------------------
local Transforming = true
hum.WalkSpeed = 0
local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Brick"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshId = "http://www.roblox.com/asset/?id=9756362"
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end
------
----------------------------------------------------
lleg.Transparency = 0.5
rleg.Transparency = 0.5
larm.Transparency = 0.5
rarm.Transparency = 0.5
torso.Transparency = 0.5
----------------------------------------------------------------- Left Arm -----------------------------------------------------------------
larm1 = Instance.new("Part", char)
larm1.Name = "Middle"
larm1.BrickColor = BrickColor.new("Really red")
larm1.Size = Vector3.new(1, 2, 1)
larm1.CanCollide = false
larm1.BottomSurface = "Smooth"
larm1.TopSurface = "Smooth"
larm1.Material = "Neon"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm1
Weld.C1 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)

larm2 = Instance.new("Part", char)
larm2.BrickColor = BrickColor.new("Really black")
larm2.Material = "Granite"
larm2.Size = Vector3.new(1, 0.4, 1)
larm2.CanCollide = false
larm2.BottomSurface = "Smooth"
larm2.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm2
Weld.C1 = CFrame.new(-0.452633858, -0.349740982, -1.50225353, -0.00506608887, 0.999986708, -0.00096991309, -0.0106740929, 0.000915773562, 0.999942601, 0.999930143, 0.0050761546, 0.0106693096)

larm3 = Instance.new("Part", char)
larm3.BrickColor = BrickColor.new("Really black")
larm3.Material = "Granite"
larm3.Size = Vector3.new(1, 0.4, 1)
larm3.CanCollide = false
larm3.BottomSurface = "Smooth"
larm3.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm3
Weld.C1 = CFrame.new(-0.452513218, -1.90224648, -0.0102577209, -0.00506604509, 0.999986708, -0.000969912624, 0.999930143, 0.00507611083, 0.0106693096, 0.0106740929, -0.000915773562, -0.999942601)	

larm4 = Instance.new("Part", char)
larm4.BrickColor = BrickColor.new("Really black")
larm4.Material = "Granite"
larm4.Size = Vector3.new(1, 0.4, 1)
larm4.CanCollide = false
larm4.BottomSurface = "Smooth"
larm4.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm4
Weld.C1 = CFrame.new(-0.452511787, -0.41024971, 1.50225258, -0.00506623974, 0.999986708, -0.000969914719, 0.0106740929, -0.000915773562, -0.999942601, -0.999930143, -0.00507630548, -0.0106693096)	

larm5 = Instance.new("Part", char)
larm5.BrickColor = BrickColor.new("Really black")
larm5.Material = "Granite"
larm5.Size = Vector3.new(1, 0.4, 1)
larm5.CanCollide = false
larm5.BottomSurface = "Smooth"
larm5.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm5
Weld.C1 = CFrame.new(-1.50225163, -0.762512684, 0.0102577209, 0.999930143, 0.0050761546, 0.0106693534, -0.00506608794, 0.999986708, -0.000970000518, -0.0106741367, 0.000915860757, 0.999942601)

larm6 = Instance.new("Part", char)
larm6.BrickColor = BrickColor.new("Really black")
larm6.Material = "Granite"
larm6.Size = Vector3.new(1, 0.4, 1)
larm6.CanCollide = false
larm6.BottomSurface = "Smooth"
larm6.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh", larm6)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm6
Weld.C1 = CFrame.new(0.0102558136, 0.847481251, 1.50225353, -0.0106740929, 0.00091586099, 0.999942601, -0.00506608794, 0.999986708, -0.000970000518, -0.999930143, -0.0050761546, -0.0106693096)

larm7 = Instance.new("Part", char)
larm7.BrickColor = BrickColor.new("Really red")
larm7.Size = Vector3.new(0.5, 0.3, 2)
larm7.CanCollide = false
larm7.BottomSurface = "Smooth"
larm7.TopSurface = "Smooth"
larm7.Material = "Neon"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm7
Weld.C1 = CFrame.new(-0.339956284, 1.83238316, 1.50933075, 0.11770986, 0.484406531, 0.866887927, -0.967169523, 0.253912479, -0.0105566857, -0.225227386, -0.837184966, 0.498391271)

larm8 = Instance.new("Part", char)
larm8.BrickColor = BrickColor.new("Really black")
larm8.Material = "Granite"
larm8.Size = Vector3.new(1, 0.4, 1)
larm8.CanCollide = false
larm8.BottomSurface = "Smooth"
larm8.TopSurface = "Smooth"
Weld = Instance.new("Weld",larm) 
Weld.Part0 = larm
Weld.C0 = CFrame.new(1.50225258, 0.0474791527, -0.0102558136, -0.999930143, -0.0050761546, -0.0106693096, -0.00506608794, 0.999986708, -0.000970000518, 0.0106740929, -0.00091586099, -0.999942601)	
Weld.Part1 = larm8
Weld.C1 = CFrame.new(0.247514963, -0.0102424622, 1.58225441, -0.00506623974, 0.999986708, -0.000969914719, 0.0106740929, -0.000915773562, -0.999942601, -0.999930143, -0.00507630548, -0.0106693096)	
----------------------------------------------------------------- Right Arm -----------------------------------------------------------------
rarm1 = Instance.new("Part", char)
rarm1.Name = "Middle"
rarm1.BrickColor = BrickColor.new("Really red")
rarm1.Size = Vector3.new(1, 2, 1)
rarm1.CanCollide = false
rarm1.BottomSurface = "Smooth"
rarm1.TopSurface = "Smooth"
rarm1.Material = "Neon"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm1
Weld.C1 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	

rarm2 = Instance.new("Part", char)
rarm2.BrickColor = BrickColor.new("Really black")
rarm2.Material = "Granite"
rarm2.Size = Vector3.new(1, 0.4, 1)
rarm2.CanCollide = false
rarm2.BottomSurface = "Smooth"
rarm2.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm2
Weld.C1 = CFrame.new(-0.458259583, -0.356315613, 1.50168037, 0.00366159994, 0.999978125, -0.00550877256, 0.00621323148, 0.00548594771, 0.999965668, 0.999974012, -0.00369570963, -0.00619300362)

rarm3 = Instance.new("Part", char)
rarm3.BrickColor = BrickColor.new("Really black")
rarm3.Material = "Granite"
rarm3.Size = Vector3.new(1, 0.4, 1)
rarm3.CanCollide = false
rarm3.BottomSurface = "Smooth"
rarm3.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm3
Weld.C1 = CFrame.new(-1.50168133, -0.768137932, -0.00367927551, -0.999974012, 0.00369570986, 0.00619304739, 0.00366159948, 0.999978125, -0.00550886011, -0.00621327572, -0.00548603525, -0.999965668)

rarm4 = Instance.new("Part", char)
rarm4.BrickColor = BrickColor.new("Really black")
rarm4.Material = "Granite"
rarm4.Size = Vector3.new(1, 0.4, 1)
rarm4.CanCollide = false
rarm4.BottomSurface = "Smooth"
rarm4.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm4
Weld.C1 = CFrame.new(-0.00368309021, 1.8716774, 0.458146095, -0.00621323194, -0.00548603525, -0.999965668, 0.999974012, -0.0036957534, -0.00619300315, -0.00366164325, -0.999978125, 0.00550886057)

rarm5 = Instance.new("Part", char)
rarm5.BrickColor = BrickColor.new("Really black")
rarm5.Material = "Granite"
rarm5.Size = Vector3.new(1, 0.4, 1)
rarm5.CanCollide = false
rarm5.BottomSurface = "Smooth"
rarm5.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh", rarm5)
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm5
Weld.C1 = CFrame.new(0.00368118286, 0.841855764, -1.50168228, 0.00621323194, 0.00548603525, 0.999965668, 0.00366159948, 0.999978125, -0.00550886011, -0.999974012, 0.00369570963, 0.00619300362)

rarm6 = Instance.new("Part", char)
rarm6.BrickColor = BrickColor.new("Really black")
rarm6.Material = "Granite"
rarm6.Size = Vector3.new(1, 0.4, 1)
rarm6.CanCollide = false
rarm6.BottomSurface = "Smooth"
rarm6.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm6
Weld.C1 = CFrame.new(-1.50168133, -0.403675079, 0.458138466, -0.999974012, 0.00369575364, 0.00619304692, -0.00621327572, -0.00548603525, -0.999965668, -0.00366164325, -0.999978125, 0.00550886057)

rarm7 = Instance.new("Part", char)
rarm7.BrickColor = BrickColor.new("Really red")
rarm7.Size = Vector3.new(0.5, 0.3, 2)
rarm7.CanCollide = false
rarm7.BottomSurface = "Smooth"
rarm7.TopSurface = "Smooth"
rarm7.Material = "Neon"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm7
Weld.C1 = CFrame.new(0.344418526, -1.80139351, -1.50391006, 0.122256897, -0.48818168, -0.864136577, -0.966848493, -0.25524351, 0.00740774209, -0.224181563, 0.834583461, -0.503202915)

rarm8 = Instance.new("Part", char)
rarm8.BrickColor = BrickColor.new("Really black")
rarm8.Material = "Granite"
rarm8.Size = Vector3.new(1, 0.4, 1)
rarm8.CanCollide = false
rarm8.BottomSurface = "Smooth"
rarm8.TopSurface = "Smooth"
Weld = Instance.new("Weld",rarm) 
Weld.Part0 = rarm
Weld.C0 = CFrame.new(-1.50168228, 0.0418539047, -0.00368309021, -0.999974012, 0.00369570963, 0.00619300362, 0.00366159948, 0.999978125, -0.00550886011, -0.00621323194, -0.00548603525, -0.999965668)	
Weld.Part1 = rarm8
Weld.C1 = CFrame.new(0.241888285, -0.00366973877, -1.56167889, 0.00366144883, 0.999978125, -0.00550877163, -0.00621323148, -0.00548594771, -0.999965668, -0.999974012, 0.00369555852, 0.00619300455)
----------------------------------------------------------------- Left Leg -----------------------------------------------------------------
lleg1 = Instance.new("Part", char)
lleg1.Name = "Middle"
lleg1.BrickColor = BrickColor.new("Really red")
lleg1.Size = Vector3.new(1, 2, 1)
lleg1.CanCollide = false
lleg1.BottomSurface = "Smooth"
lleg1.TopSurface = "Smooth"
lleg1.Material = "Neon"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg1
Weld.C1 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)

lleg2 = Instance.new("Part", char)
lleg2.BrickColor = BrickColor.new("Really black")
lleg2.Material = "Granite"
lleg2.Size = Vector3.new(1, 0.4, 1)
lleg2.CanCollide = false
lleg2.BottomSurface = "Smooth"
lleg2.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg2
Weld.C1 = CFrame.new(0.898587704, 4.77446556, 2.3581152, -7.17753299e-023, 1, 4.37113883e-008, 1.64202821e-015, -4.37113883e-008, 1, 1, -1.4355066e-022, 0)

lleg3 = Instance.new("Part", char)
lleg3.BrickColor = BrickColor.new("Really black")
lleg3.Material = "Granite"
lleg3.Size = Vector3.new(0.5, 0.3, 2)
lleg3.CanCollide = false
lleg3.BottomSurface = "Smooth"
lleg3.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg3
Weld.C1 = CFrame.new(4.69929504, -1.49470997, 3.25491428, 0.183012843, 0.683012605, 0.707106829, -0.965925813, 0.258819133, 1.06770166e-007, -0.183012709, -0.683012724, 0.707106769)

lleg4 = Instance.new("Part", char)
lleg4.BrickColor = BrickColor.new("Really black")
lleg4.Material = "Granite"
lleg4.Size = Vector3.new(1, 0.4, 1)
lleg4.CanCollide = false
lleg4.BottomSurface = "Smooth"
lleg4.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg4
Weld.C1 = CFrame.new(0.899408102, 1.9581213, -5.17447472, 4.37113883e-008, 1, 8.74227766e-008, 1, -4.37113883e-008, -2.68657252e-016, -1.37337096e-015, 8.74227766e-008, -1)

lleg5 = Instance.new("Part", char)
lleg5.BrickColor = BrickColor.new("Really black")
lleg5.Material = "Granite"
lleg5.Size = Vector3.new(1, 0.4, 1)
lleg5.CanCollide = false
lleg5.BottomSurface = "Smooth"
lleg5.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg5
Weld.C1 = CFrame.new(0.899407625, -5.57446861, -2.3581152, -1.50995788e-007, 1, 8.74227766e-008, -1.20315126e-014, 8.74227766e-008, -1, -1, -1.50995788e-007, -8.24226416e-015)

lleg6 = Instance.new("Part", char)
lleg6.BrickColor = BrickColor.new("Really black")
lleg6.Material = "Granite"
lleg6.Size = Vector3.new(1, 0.4, 1)
lleg6.CanCollide = false
lleg6.BottomSurface = "Smooth"
lleg6.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg6
Weld.C1 = CFrame.new(1.49948871, -2.31810665, 5.08444977, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)

lleg7 = Instance.new("Part", char)
lleg7.BrickColor = BrickColor.new("Really black")
lleg7.Material = "Granite"
lleg7.Size = Vector3.new(1, 0.4, 1)
lleg7.CanCollide = false
lleg7.BottomSurface = "Smooth"
lleg7.TopSurface = "Smooth"
Weld = Instance.new("Weld",lleg) 
Weld.Part0 = lleg
Weld.C0 = CFrame.new(-2.3581152, 0.999663353, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = lleg7
Weld.C1 = CFrame.new(1.4994036, -2.33812618, 5.26447296, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)
----------------------------------------------------------------- Right Leg -----------------------------------------------------------------
rleg1 = Instance.new("Part", char)
rleg1.Name = "Middle"
rleg1.BrickColor = BrickColor.new("Really red")
rleg1.Size = Vector3.new(1, 2, 1)
rleg1.CanCollide = false
rleg1.BottomSurface = "Smooth"
rleg1.TopSurface = "Smooth"
rleg1.Material = "Neon"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg1
Weld.C1 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)

rleg2 = Instance.new("Part", char)
rleg2.BrickColor = BrickColor.new("Really black")
rleg2.Material = "Granite"
rleg2.Size = Vector3.new(1, 0.4, 1)
rleg2.CanCollide = false
rleg2.BottomSurface = "Smooth"
rleg2.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg2
Weld.C1 = CFrame.new(0.905565023, 3.75810814, -5.17447472, 4.37113883e-008, 1, 8.74227766e-008, 1, -4.37113883e-008, -2.68657252e-016, -1.37337096e-015, 8.74227766e-008, -1)

rleg3 = Instance.new("Part", char)
rleg3.BrickColor = BrickColor.new("Really black")
rleg3.Material = "Granite"
rleg3.Size = Vector3.new(1, 0.4, 1)
rleg3.CanCollide = false
rleg3.BottomSurface = "Smooth"
rleg3.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg3
Weld.C1 = CFrame.new(1.4545058, -3.34725952, 5.0867691, -0.0153048551, 0.999882877, -5.25215728e-006, -0.999882638, -0.0153048476, 0.000690514687, 0.000690353394, 1.58197654e-005, 0.999999762)

rleg4 = Instance.new("Part", char)
rleg4.BrickColor = BrickColor.new("Really black")
rleg4.Material = "Granite"
rleg4.Size = Vector3.new(1, 0.4, 1)
rleg4.CanCollide = false
rleg4.BottomSurface = "Smooth"
rleg4.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg4
Weld.C1 = CFrame.new(1.5055685, -3.33812618, 5.26447296, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)

rleg5 = Instance.new("Part", char)
rleg5.BrickColor = BrickColor.new("Really black")
rleg5.Material = "Granite"
rleg5.Size = Vector3.new(1, 0.4, 1)
rleg5.CanCollide = false
rleg5.BottomSurface = "Smooth"
rleg5.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg5
Weld.C1 = CFrame.new(0.905564308, -5.57446861, -3.3581152, -1.50995788e-007, 1, 8.74227766e-008, -1.20315126e-014, 8.74227766e-008, -1, -1, -1.50995788e-007, -8.24226416e-015)

rleg6 = Instance.new("Part", char)
rleg6.BrickColor = BrickColor.new("Really black")
rleg6.Material = "Granite"
rleg6.Size = Vector3.new(1, 0.4, 1)
rleg6.CanCollide = false
rleg6.BottomSurface = "Smooth"
rleg6.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)	
Weld.Part1 = rleg6
Weld.C1 = CFrame.new(0.904744625, 4.77446556, 3.3581152, -7.17753299e-023, 1, 4.37113883e-008, 1.64202821e-015, -4.37113883e-008, 1, 1, -1.4355066e-022, 0)

rleg7 = Instance.new("Part", char)
rleg7.BrickColor = BrickColor.new("Really black")
rleg7.Material = "Granite"
rleg7.Size = Vector3.new(0.5, 0.3, 2)
rleg7.CanCollide = false
rleg7.BottomSurface = "Smooth"
rleg7.TopSurface = "Smooth"
Weld = Instance.new("Weld",rleg) 
Weld.Part0 = rleg
Weld.C0 = CFrame.new(-3.3581152, 1.00582027, -5.17447472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = rleg7
Weld.C1 = CFrame.new(-3.66284275, -3.99935341, -4.29136944, 0.183012664, -0.683012724, -0.707106829, -0.965925872, -0.258818954, -3.53088581e-008, -0.183012635, 0.683012784, -0.707106769)
----------------------------------------------------------------- Torso -----------------------------------------------------------------
Chest1 = Instance.new("Part", char)
Chest1.Name = "Ball"
Chest1.BrickColor = BrickColor.new("Really red")
Chest1.Size = Vector3.new(1, 0.4, 1)
Chest1.CanCollide = false
Chest1.BottomSurface = "Smooth"
Chest1.TopSurface = "Smooth"
Chest1.Material = "Neon"
Mesh = Instance.new("SpecialMesh", Chest1)
Mesh.MeshId = "http://www.roblox.com/asset/?id=9756362"
Mesh.Scale = Vector3.new(0.9, 0.4, 0.9)
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest1
Weld.C1 = CFrame.new(0, 0.700000763, 0.176463604, -1, 0, 0, 0, 0, -1, 0, -1, 0)

Chest2 = Instance.new("Part", char)
Chest2.BrickColor = BrickColor.new("Really red")
Chest2.Name = "Middle"
Chest2.Size = Vector3.new(2, 2, 1)
Chest2.CanCollide = false
Chest2.BottomSurface = "Smooth"
Chest2.TopSurface = "Smooth"
Chest2.Material = "Neon"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest2
Weld.C1 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)

Chest3 = Instance.new("Part", char)
Chest3.BrickColor = BrickColor.new("Really black")
Chest3.Material = "Granite"
Chest3.Size = Vector3.new(1, 0.4, 1)
Chest3.CanCollide = false
Chest3.BottomSurface = "Smooth"
Chest3.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest3
Weld.C1 = CFrame.new(-0.476491928, -0.5, -0.499999046, 5.15558582e-008, 1, -7.54979013e-008, -3.35276091e-008, 7.54979013e-008, 1, 1, -5.15558582e-008, 3.35276091e-008)

Chest4 = Instance.new("Part", char)
Chest4.BrickColor = BrickColor.new("Really black")
Chest4.Material = "Granite"
Chest4.Size = Vector3.new(1, 0.4, 1)
Chest4.CanCollide = false
Chest4.BottomSurface = "Smooth"
Chest4.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest4
Weld.C1 = CFrame.new(-0.476491451, -0.5, 0.5, -1.4355066e-022, 1, 4.37113883e-008, 3.28405643e-015, -4.37113883e-008, 1, 1, -2.8710132e-022, 1.64202821e-015)

Chest5 = Instance.new("Part", char)
Chest5.BrickColor = BrickColor.new("Really black")
Chest5.Material = "Granite"
Chest5.Size = Vector3.new(1, 0.4, 1)
Chest5.CanCollide = false
Chest5.BottomSurface = "Smooth"
Chest5.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest5
Weld.C1 = CFrame.new(-0.499999046, 0.5, 0.476491451, 1, -4.37113918e-008, 4.37113847e-008, -4.37113847e-008, 0, 1, -4.37113883e-008, -1, 0)

Chest6 = Instance.new("Part", char)
Chest6.BrickColor = BrickColor.new("Really black")
Chest6.Material = "Granite"
Chest6.Size = Vector3.new(1, 0.4, 1)
Chest6.CanCollide = false
Chest6.BottomSurface = "Smooth"
Chest6.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest6
Weld.C1 = CFrame.new(0.5236063, -0.449995041, 0, 0, 1, 8.74227766e-008, 3.28405643e-015, -8.74227766e-008, 1, 1, -1.4355066e-022, 0)

Chest7 = Instance.new("Part", char)
Chest7.BrickColor = BrickColor.new("Really black")
Chest7.Material = "Granite"
Chest7.Size = Vector3.new(1, 0.4, 1)
Chest7.CanCollide = false
Chest7.BottomSurface = "Smooth"
Chest7.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest7
Weld.C1 = CFrame.new(0.5, 0.5, 0.476491928, 1, -4.37113918e-008, 4.37113847e-008, -4.37113847e-008, 0, 1, -4.37113883e-008, -1, 0)

Chest8 = Instance.new("Part", char)
Chest8.BrickColor = BrickColor.new("Really black")
Chest8.Material = "Granite"
Chest8.Size = Vector3.new(1, 0.4, 1)
Chest8.CanCollide = false
Chest8.BottomSurface = "Smooth"
Chest8.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest8
Weld.C1 = CFrame.new(0, 0.389970779, -0.473520517, 1, -4.37113954e-008, 4.37113847e-008, -4.37113883e-008, -4.37113883e-008, 1, -4.37113883e-008, -1, -4.37113883e-008)	

Chest9 = Instance.new("Part", char)
Chest9.BrickColor = BrickColor.new("Really black")
Chest9.Material = "Granite"
Chest9.Size = Vector3.new(0.5, 0.3, 2)
Chest9.CanCollide = false
Chest9.BottomSurface = "Smooth"
Chest9.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest9
Weld.C1 = CFrame.new(-0.458083153, 0.580001831, 0.306574821, -0.866025448, -0.49999997, 4.37113883e-008, -3.78551732e-008, -2.18556924e-008, -1, 0.49999997, -0.866025448, 0)

Chest10 = Instance.new("Part", char)
Chest10.BrickColor = BrickColor.new("Really black")
Chest10.Material = "Granite"
Chest10.Size = Vector3.new(1, 0.4, 1)
Chest10.CanCollide = false
Chest10.BottomSurface = "Smooth"
Chest10.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh", Chest10)
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest10
Weld.C1 = CFrame.new(-1.07653379, 0.899993896, 0, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)

Chest11 = Instance.new("Part", char)
Chest11.BrickColor = BrickColor.new("Really black")
Chest11.Material = "Granite"
Chest11.Size = Vector3.new(0.5, 0.3, 2)
Chest11.CanCollide = false
Chest11.BottomSurface = "Smooth"
Chest11.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest11
Weld.C1 = CFrame.new(0.973486662, -0.460004807, -9.53674316e-007, 1.50995803e-007, 1, 7.54979013e-008, -1.85052948e-014, -7.54979013e-008, 1, 1, -1.50995803e-007, 7.10542736e-015)

Chest12 = Instance.new("Part", char)
Chest12.BrickColor = BrickColor.new("Really black")
Chest12.Material = "Granite"
Chest12.Size = Vector3.new(0.5, 0.3, 2)
Chest12.CanCollide = false
Chest12.BottomSurface = "Smooth"
Chest12.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest12
Weld.C1 = CFrame.new(-0.973600388, 0.450008392, -7.62939453e-006, -9.32088255e-008, -1, -4.37113883e-008, 5.82035878e-011, -4.37113883e-008, 1, -1, 9.32088255e-008, 5.82076609e-011)

Chest13 = Instance.new("Part", char)
Chest13.BrickColor = BrickColor.new("Really black")
Chest13.Material = "Granite"
Chest13.Size = Vector3.new(0.5, 0.3, 2)
Chest13.CanCollide = false
Chest13.BottomSurface = "Smooth"
Chest13.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest13
Weld.C1 = CFrame.new(-0.729999542, -0.117254257, -1.91926646, -1, -3.23980487e-008, -4.22219593e-008, 3.23980487e-008, 0.258819044, -0.965925813, 4.22219593e-008, -0.965925813, -0.258819044)

Chest14 = Instance.new("Part", char)
Chest14.BrickColor = BrickColor.new("Really black")
Chest14.Material = "Granite"
Chest14.Size = Vector3.new(0.5, 0.3, 2)
Chest14.CanCollide = false
Chest14.BottomSurface = "Smooth"
Chest14.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest14
Weld.C1 = CFrame.new(0.769999504, -0.150730133, -1.91693306, -1, -3.31366472e-008, -4.24129745e-008, 3.31366472e-008, 0.241921902, -0.970295727, 4.24129745e-008, -0.970295727, -0.241921902)

Chest15 = Instance.new("Part", char)
Chest15.BrickColor = BrickColor.new("Really black")
Chest15.Material = "Granite"
Chest15.Size = Vector3.new(0.5, 0.3, 2)
Chest15.CanCollide = false
Chest15.BottomSurface = "Smooth"
Chest15.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest15
Weld.C1 = CFrame.new(-0.209440231, 1.25000095, 1.42984772, -6.16862437e-008, 0.656059027, 0.754709601, -1, -6.53672387e-008, -2.49122056e-008, 3.2989405e-008, -0.754709601, 0.656059027)

Chest16 = Instance.new("Part", char)
Chest16.BrickColor = BrickColor.new("Really black")
Chest16.Material = "Granite"
Chest16.Size = Vector3.new(0.5, 0.3, 2)
Chest16.CanCollide = false
Chest16.BottomSurface = "Smooth"
Chest16.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest16
Weld.C1 = CFrame.new(-0.158526421, 1.25000095, 1.0131588, -7.35374925e-008, 0.927183867, 0.374606639, -1, -7.43167945e-008, -1.23653887e-008, 1.63745764e-008, -0.374606639, 0.927183867)

Chest17 = Instance.new("Part", char)
Chest17.BrickColor = BrickColor.new("Really black")
Chest17.Material = "Granite"
Chest17.Size = Vector3.new(0.5, 0.3, 2)
Chest17.CanCollide = false
Chest17.BottomSurface = "Smooth"
Chest17.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest17
Weld.C1 = CFrame.new(-0.229999542, -0.117254257, -1.91926742, -1, -3.23980487e-008, -4.22219593e-008, 3.23980487e-008, 0.258819044, -0.965925813, 4.22219593e-008, -0.965925813, -0.258819044)

Chest18 = Instance.new("Part", char)
Chest18.BrickColor = BrickColor.new("Really black")
Chest18.Material = "Granite"
Chest18.Size = Vector3.new(0.5, 0.3, 2)
Chest18.CanCollide = false
Chest18.BottomSurface = "Smooth"
Chest18.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest18
Weld.C1 = CFrame.new(0.269999504, -0.117254257, -1.91926742, -1, -3.23980487e-008, -4.22219593e-008, 3.23980487e-008, 0.258819044, -0.965925813, 4.22219593e-008, -0.965925813, -0.258819044)

Chest19 = Instance.new("Part", char)
Chest19.BrickColor = BrickColor.new("Really black")
Chest19.Material = "Granite"
Chest19.Size = Vector3.new(0.5, 0.3, 2)
Chest19.CanCollide = false
Chest19.BottomSurface = "Smooth"
Chest19.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest19
Weld.C1 = CFrame.new(-0.00685310364, 1.25, 1.45221233, -2.47515253e-008, 0.224950925, 0.974370122, -1, -4.7067342e-008, -1.45362469e-008, 4.2591072e-008, -0.974370122, 0.224950925)

Chest20 = Instance.new("Part", char)
Chest20.BrickColor = BrickColor.new("Really black")
Chest20.Material = "Granite"
Chest20.Size = Vector3.new(1, 0.4, 1)
Chest20.CanCollide = false
Chest20.BottomSurface = "Smooth"
Chest20.TopSurface = "Smooth"
Mesh = Instance.new("SpecialMesh",Chest20)
Mesh.Scale = Vector3.new(1.1,1.1,1.1)
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest20
Weld.C1 = CFrame.new(-1.07653379, -0.899992943, 0, -4.37113883e-008, 1, 8.74227766e-008, -1, -4.37113883e-008, -3.55271368e-015, 8.47879895e-015, -8.74227766e-008, 1)

Chest21 = Instance.new("Part", char)
Chest21.BrickColor = BrickColor.new("Really black")
Chest21.Material = "Granite"
Chest21.Size = Vector3.new(0.5, 0.3, 2)
Chest21.CanCollide = false
Chest21.BottomSurface = "Smooth"
Chest21.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest21
Weld.C1 = CFrame.new(-0.209432602, -1.14999962, 1.429842, -6.16862437e-008, 0.656059027, 0.754709601, -1, -6.53672387e-008, -2.49122056e-008, 3.2989405e-008, -0.754709601, 0.656059027)

Chest22 = Instance.new("Part", char)
Chest22.BrickColor = BrickColor.new("Really black")
Chest22.Material = "Granite"
Chest22.Size = Vector3.new(0.5, 0.3, 2)
Chest22.CanCollide = false
Chest22.BottomSurface = "Smooth"
Chest22.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest22
Weld.C1 = CFrame.new(-0.00685119629, -1.15000057, 1.45220757, -2.47515253e-008, 0.224950925, 0.974370122, -1, -4.7067342e-008, -1.45362469e-008, 4.2591072e-008, -0.974370122, 0.224950925)

Chest23 = Instance.new("Part", char)
Chest23.BrickColor = BrickColor.new("Really black")
Chest23.Material = "Granite"
Chest23.Size = Vector3.new(0.5, 0.3, 2)
Chest23.CanCollide = false
Chest23.BottomSurface = "Smooth"
Chest23.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest23
Weld.C1 = CFrame.new(-0.158511639, -1.15000057, 1.01315498, -7.35374925e-008, 0.927183926, 0.374606401, -1, -7.43168016e-008, -1.23653807e-008, 1.63745657e-008, -0.374606401, 0.927183926)

Chest24 = Instance.new("Part", char)
Chest24.BrickColor = BrickColor.new("Really black")
Chest24.Material = "Granite"
Chest24.Size = Vector3.new(0.5, 0.3, 2)
Chest24.CanCollide = false
Chest24.BottomSurface = "Smooth"
Chest24.TopSurface = "Smooth"
Weld = Instance.new("Weld",torso) 
Weld.Part0 = torso
Weld.C0 = CFrame.new(0, 0.0235004425, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Weld.Part1 = Chest24
Weld.C1 = CFrame.new(-0.458065987, -0.579999924, 0.306604624, 0.866025388, -0.50000006, 4.37113883e-008, 4.53686155e-008, 1.66003517e-007, 1, -0.50000006, -0.866025388, 1.66447563e-007)

p1 = Instance.new("Part",char)
p1.BrickColor = BrickColor.new("Really red")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(2, 2, 2)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p1)
SMesh.MeshId = "http://www.roblox.com/asset/?id=16627529"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p1
w1.C1 = CFrame.new(1.75514506e-005, -2.06990719, 0.00210596342, -0.999966383, -1.62210035e-005, -0.00820016116, -9.25059425e-008, 0.999998093, -0.00196684781, 0.00820017792, -0.00196678098, -0.999964535)
p2 = Instance.new("Part",char)
p2.BrickColor = BrickColor.new("Really red")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 1, 1)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p2)
SMesh.MeshId = "http://www.roblox.com/asset/?id=45916884"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 0.9, 1)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p2
w1.C1 = CFrame.new(0.00981426239, -1.86002111, 0.000148773193, 1, 4.98469959e-008, 4.58955765e-006, -4.98459833e-008, 1, -2.23582518e-007, -4.58955765e-006, 2.23582191e-007, 1)
p3 = Instance.new("Part",char)
p3.BrickColor = BrickColor.new("Really red")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 1, 1)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p3)
SMesh.MeshId = "http://www.roblox.com/asset/?id=62246019"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1, 1)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p3
w1.C1 = CFrame.new(0.059677124, -1.98001814, -0.199489594, 0.99999994, 1.02864064e-008, 4.82797577e-006, -1.02842179e-008, 1, -4.61996478e-007, -4.82797577e-006, 4.61996365e-007, 0.99999994)
p4 = Instance.new("Part",char)
p4.BrickColor = BrickColor.new("Really red")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 1, 1)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p4)
SMesh.MeshId = "http://www.roblox.com/asset/?id=12259089"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1.02, 1.05, 1.05)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p4
w1.C1 = CFrame.new(0.0104255676, -1.94979095, 0.129776001, 0.99999994, -2.00533847e-008, 5.2192072e-006, -3.74953743e-007, 0.995037675, 0.0995008945, -4.8863717e-006, -0.0995009243, 0.995037436)
p5 = Instance.new("Part",char)
p5.BrickColor = BrickColor.new("Really red")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 1, 1)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p5)
SMesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1.6, 1.3)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p5
w1.C1 = CFrame.new(0.00938796997, -2.00957298, 1.44282532, 1, -1.34962974e-007, 5.35256595e-006, -3.26552458e-006, 0.729885638, 0.683569431, -3.88335775e-006, -0.68356967, 0.729885519)
p6 = Instance.new("Part",char)
p6.BrickColor = BrickColor.new("Really red")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 1, 1)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p6)
SMesh.MeshId = "http://www.roblox.com/asset/?id=19326912"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1, 1)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p6
w1.C1 = CFrame.new(0.00993537903, -2.2400105, -0.079624176, 1.00000012, -2.98023064e-008, -1.54972145e-006, 2.980231e-008, 1, -4.94502617e-009, 1.54972145e-006, 4.94494401e-009, 1.00000012)
p7 = Instance.new("Part",char)
p7.BrickColor = BrickColor.new("Really red")
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 1, 1)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p7)
SMesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1.6, 1.3)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p7
w1.C1 = CFrame.new(0.0106649399, -0.774772644, 2.08788228, 1.00000012, -2.8618183e-007, 5.6622157e-006, -5.14644034e-006, 0.144699067, 0.989475727, -1.28374143e-006, -0.989476085, 0.144699216)
p8 = Instance.new("Part",char)
p8.BrickColor = BrickColor.new("Really red")
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 1, 1)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p8)
SMesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1.6, 1.3)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p8
w1.C1 = CFrame.new(0.0106649399, -0.774772644, 2.08788228, 1.00000012, -2.8618183e-007, 5.6622157e-006, -5.14644034e-006, 0.144699067, 0.989475727, -1.28374143e-006, -0.989476085, 0.144699216)
p9 = Instance.new("Part",char)
p9.BrickColor = BrickColor.new("Really red")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 1, 1)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p9)
SMesh.MeshId = "http://www.roblox.com/asset/?id=76056263"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1, 1, 1)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p9
w1.C1 = CFrame.new(0.110746384, -1.71002722, -0.198999405, 0.999999881, 1.02863646e-008, 4.70876603e-006, -1.02842392e-008, 1, -4.61996422e-007, -4.70876603e-006, 4.61996336e-007, 0.999999881)
p10 = Instance.new("Part",char)
p10.BrickColor = BrickColor.new("Really red")
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 1, 1)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
SMesh = Instance.new("SpecialMesh", p10)
SMesh.MeshId = "http://www.roblox.com/asset/?id=16627529"
SMesh.TextureId = ""
SMesh.MeshType = Enum.MeshType.FileMesh
SMesh.Name = "Mesh"
SMesh.VertexColor = Vector3.new(0, 0, 0)
SMesh.Scale = Vector3.new(1.05, 1.05, 1.05)
w1 = Instance.new("Weld", hed)
w1.Part0 = hed
w1.C0 = CFrame.new(0,-1.5,0)
w1.Part1 = p10
w1.C1 = CFrame.new(0.00981426239, -2.11002183, 0.000148773193, 1.00000012, 2.98023295e-008, 1.66892983e-006, -2.98023295e-008, 1, 4.94492847e-009, -1.66892983e-006, -4.94500441e-009, 1.00000012)
----------------------------------------------------
GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Really red", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new('Really red')
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(10 + i*20.4, 10 + i*20.4, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/10
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------
GroundWave = function()
        if Transforming == true then
                local wave = Instance.new("Part", torso)
                wave.BrickColor = BrickColor.new("Really black")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                wm.Scale = Vector3.new(2 + i*2, 2 + i*2, 2 + i*2)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
		wait()
                end
                wait()
                wave:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = torso.CFrame
end

Spawn(function()
	while wait(1) do
		GroundWave()
	end
end)

wait(4)

Transforming = false

for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new("Really black")
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        wm.Scale = Vector3.new(10 + i*10.1, 10 + i*10.1, 10)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
end)()
hum.WalkSpeed = 50
----------------------------------------------------
Blast = function()
	local Colors = {"Really red", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = rarm.CFrame
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshType = "Sphere"
		wm.Scale = Vector3.new(1,1,1)
		z = Instance.new("Sound",wave)
		z.SoundId = "rbxassetid://237035051"
		z.Volume = 1
		z.Pitch = .9
		z:Play()
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wave.Size = Vector3.new(1 + i*4, 1 + i*4, 1 + i*4)
		--wave.Size = wm.Scale
		wave.CFrame = rarm.CFrame
		wave.Transparency = (1/14)
		rs:wait()
		end
		rs:wait()
		wave:Destroy()
		z:Destroy()
	end)()
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
                                end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                        Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
                                end
            end
        end
    end
end)
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

function Punch()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really red')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really red')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.huge)
        end
    end
    coroutine.resume(coroutine.create(function()
        for i=0,0.62,0.4 do
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
    end))
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
				end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
				end
            end
        end
    end
end)
----------------------------------------------------
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
                flyToggled = not flyToggled

        if not flyToggled then
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                root.Velocity = Vector3.new()
                pchar.Humanoid.PlatformStand = false
        end
end

end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)

local function updateFly()

        if not flyToggled then return end

        lastForward = forward
        lastSide = side

        forward = 0
        side = 0

        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "q" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
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
	z = Instance.new("Sound",hed)
	z.SoundId = "rbxassetid://232213955"
	z.Pitch = 1
	z.Volume = 1
	wait(0.2)
	z:Play()
	sp = Instance.new("Part",rarm)
	sp.Anchored = true
	sp.CanCollide = false
	sp.Locked = true
	sp.Transparency = 0
	sp.Material = "Neon"
	sp.Size = Vector3.new(1,1,1)
	sp.TopSurface = "SmoothNoOutlines"
	sp.BottomSurface = "SmoothNoOutlines"
	sp.BrickColor = BrickColor.new("Really red")
	spm = Instance.new("SpecialMesh",sp)
	spm.MeshId = "http://www.roblox.com/asset/?id=9756362"
	spm.Scale = Vector3.new(21,21,21)
	sp2 = Instance.new("Part", rarm)
	sp2.Name = "Energy"
	sp2.BrickColor = BrickColor.new("Really red")
	sp2.Size = Vector3.new(1, 1, 1)
	sp2.Shape = "Ball"
	sp2.CanCollide = false
	sp2.Anchored = true
	sp2.Locked = true
	sp2.TopSurface = 0
	sp2.BottomSurface = 0
	sp2.Transparency = 1
	spm2 = Instance.new("SpecialMesh",sp2)
	spm2.MeshId = "rbxassetid://9982590"
	spm2.Scale = Vector3.new(2,2,2)
	for i = 1, 20 do
		spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 100, 20 do rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
	end
	for i = 1, 20 do
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(10),math.rad(-30),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	sp.Transparency = 1
	for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-50), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	wait(1)
	sp.Transparency = 0
	sp2.Transparency = 0.84
	for i = 1, 20 do
		--spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 2880, 50 do
		rs:wait()
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = rarm.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
		rs:wait()
	end
	sp:Destroy()
	sp2:Destroy()
	local X = Instance.new("Part",char)
	local O = Instance.new("ObjectValue",X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 0
	X.Reflectance = 0
	X.BottomSurface = 0
	X.TopSurface = 0
	X.Shape = 0
	local V = Instance.new("ObjectValue",X)
	V.Value = char
	V.Name = "creator"
	X.BrickColor = BrickColor.new("Really red")
	X.Size = Vector3.new(2,2,2)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(0.5,0.5,1)
	X.CFrame = rarm.CFrame*CFrame.new(-3,0,0)
	local bv = Instance.new("BodyVelocity",X)
	bv.maxForce = Vector3.new(99999,99999,99999)
	X.CFrame = CFrame.new(X.Position,mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector*65

	Explode = X.Touched:connect(function(hit)
		if hit ~= char and hit.Name ~= "Shell" then
			local cf = X.CFrame
			bv:Destroy()
			X.Anchored = true
			Z:Remove()
			Explode:disconnect()
			X.Size = Vector3.new(3,3,3)
			X.Touched:connect(function(hit) end)
			X.CanCollide = false
			local part3 = Instance.new("Part", rarm)
			part3.Anchored=true
			part3.CanCollide=false
			part3.Locked = true
			part3.TopSurface = "SmoothNoOutlines"
			part3.BottomSurface = "SmoothNoOutlines"
			part3.FormFactor='Custom'
			part3.Size=Vector3.new(1,1, 1)
			part3.CFrame=X.CFrame
			part3.Transparency=0
			part3.BrickColor=BrickColor.new("Really red")
			local mesh3 = Instance.new("SpecialMesh",part3)
			mesh3.MeshId = "http://www.roblox.com/asset/?id=9756362"
			mesh3.Scale = Vector3.new(1,1,1)
			--debris:AddItem(X,8)
			local part4 = Instance.new("Part", rarm)
			part4.Material = "Neon"
			part4.Anchored=true
			part4.CanCollide=false
			part4.Locked = true
			part4.TopSurface = "SmoothNoOutlines"
			part4.BottomSurface = "SmoothNoOutlines"
			part4.FormFactor='Custom'
			part4.Size=Vector3.new(1,1, 1)
			part4.CFrame=X.CFrame
			part4.Transparency=0
			part4.BrickColor=BrickColor.new("Really red")
			local mesh4 = Instance.new("SpecialMesh",part4)
			mesh4.MeshId = "http://www.roblox.com/asset/?id=9756362"
			mesh4.Scale = Vector3.new(.5,.5,.5)
			local part7 = Instance.new("Part", rarm)
			part7.Material = "Neon"
			part7.Anchored=true
			part7.CanCollide=false
			part7.Locked = true
			part7.TopSurface = "SmoothNoOutlines"
			part7.BottomSurface = "SmoothNoOutlines"
			part7.FormFactor='Custom'
			part7.Size=Vector3.new(1,1, 1)
			part7.CFrame=X.CFrame
			part7.Transparency=0
			part7.BrickColor=BrickColor.new("Really black")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshId = "http://www.roblox.com/asset/?id=9756362"
			mesh7.Scale = Vector3.new(0.1, 0.1, 0.1)
		--[[X.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)
		part3.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)]]--
		for i,v in pairs(FindNearestTorso(X.CFrame.p,140))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.huge)
				v.Humanoid.PlatformStand = true
				v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
			end
		end

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

				ROW = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(X.CFrame.x,0,X.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,15)
					end
				end

				Part = function(x,y,z,color,tr,cc,an,parent)
					local p = Instance.new('Part',parent or Weapon)
					p.formFactor = 'Custom'
					p.Size = Vector3.new(x,y,z)
					p.BrickColor = BrickColor.new(color)
					p.CanCollide = cc
					p.Transparency = tr
					p.Anchored = an
					p.TopSurface,p.BottomSurface = 0,0
					p.Locked=true
					p:BreakJoints()
				return p end

			Mesh = function(par,num,x,y,z)
			local msh = _
			if num == 1 then msh = Instance.new("CylinderMesh",par)
			elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
			elseif num == 3 then msh = Instance.new("BlockMesh",par)
			elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
			elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
			end msh.Scale = Vector3.new(x,y,z)
			return msh end

			function explosion(col1,col2,cfr,sz,rng,dmg)
				local a= Part(1,1,1,col1,.5,false,true,workspace)
				local a2= Part(1,1,1,col2,.5,false,true,workspace)
				local a3= Part(1,1,1,col2,.5,false,true,workspace)
				v1,v2,v3=sz.x,sz.y,sz.z
				local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
				local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
				local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
				a.CFrame=cfr
				a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
				a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())

				Spawn(function()
					while wait() do
						if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
							m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
							m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
							m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
							a.Transparency=a.Transparency+0.05
							a2.Transparency=a2.Transparency+0.05
							a3.Transparency=a3.Transparency+0.05
						end
					end)
				end

				Crater(X,20)
				ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
				z = Instance.new("Sound",X)
				z.SoundId = "rbxassetid://231917744"
				z.Pitch = .5
				z.Volume = 10
				z1 = Instance.new("Sound",X)
				z1.SoundId = "rbxassetid://231917744"
				z1.Pitch = .5
				z1.Volume = 10
				z2 = Instance.new("Sound",X)
				z2.SoundId = "rbxassetid://231917744"
				z2.Pitch = .5
				z2.Volume = 10
				z3 = Instance.new("Sound",X)
				z3.SoundId = "rbxassetid://245537790"
				z3.Pitch = .7
				z3.Volume = 1
				z4 = Instance.new("Sound",X)
				z4.SoundId = "rbxassetid://245537790"
				z4.Pitch = .7
				z4.Volume = 1
				wait(0.1)
				z:Play()
				z1:Play()
				z2:Play()
				z3:Play()
				z4:Play()

				local part=Instance.new('Part',rarm)
				part.Anchored=true
				part.CanCollide=false
				part.Locked = true
				part.FormFactor='Custom'
				part.Size=Vector3.new(1,1,1)
				part.CFrame=X.CFrame*CFrame.new(0,0,0)
				part.Transparency=0
				part.BrickColor=BrickColor.new('Really black')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(2,2,2)
				local part2=part:clone()
				part2.Parent = rarm
				part2.BrickColor=BrickColor.new("Really red")
				local part5=part:clone()
				part5.Parent = rarm
				part5.BrickColor=BrickColor.new("Really red")
				local part6=part:clone()
				part6.Parent = rarm
				part6.BrickColor=BrickColor.new("Black")
				local mesh2=mesh:clone()
				mesh2.Parent=part2
				mesh2.Scale=Vector3.new(3, 3, 3)
				local mesh5=mesh:clone()
				mesh5.Parent=part5
				mesh5.Scale=Vector3.new(3, 3, 3)
				local mesh6=mesh:clone()
				mesh6.Parent=part6
				mesh6.Scale=Vector3.new(3, 3, 3)
				local blast = Instance.new("Part", rarm)
				blast.BrickColor = BrickColor.new("Really black")
				blast.Anchored = true
				blast.CanCollide = false
				blast.Locked = true
				blast.Size = Vector3.new(1, 1, 1)
				blast.TopSurface = "Smooth"
				blast.BottomSurface = "Smooth"
				blast.Transparency = 0
				blast.CFrame = HandCF
				local bm = Instance.new("SpecialMesh", blast)
				bm.Scale = Vector3.new(5,1,5)
				bm.MeshId = "rbxassetid://156292343"
				local blast2 = Instance.new("Part", rarm)
				blast2.BrickColor = BrickColor.new("Really black")
				blast2.Anchored = true
				blast2.CanCollide = false
				blast2.Locked = true
				blast2.Size = Vector3.new(1, 1, 1)
				blast2.TopSurface = "Smooth"
				blast2.BottomSurface = "Smooth"
				blast2.Transparency = 0
				blast2.CFrame = HandCF
				local bm2 = Instance.new("SpecialMesh", blast2)
				bm2.Scale = Vector3.new(3,1,3)
				bm2.MeshId = "rbxassetid://156292343"
				local blast3 = Instance.new("Part", rarm)
				blast3.BrickColor = BrickColor.new("Really black")
				blast3.Anchored = true
				blast3.CanCollide = false
				blast3.Locked = true
				blast3.Size = Vector3.new(1, 1, 1)
				blast3.TopSurface = "Smooth"
				blast3.BottomSurface = "Smooth"
				blast3.Transparency = 0
				blast3.CFrame = HandCF
				local bm3 = Instance.new("SpecialMesh", blast3)
				bm3.Scale = Vector3.new(3,1,3)
				bm3.MeshId = "rbxassetid://3270017"
				for i = 1,120 do rs:wait()
					X.Transparency = X.Transparency + (1/120)
					part.Transparency = part.Transparency + (1/120)
					part2.Transparency = part2.Transparency + (1/120)
					part3.Transparency = part3.Transparency + (1/120)
					part4.Transparency = part4.Transparency + (1/120)
					part5.Transparency = part5.Transparency + (1/120)
					part6.Transparency = part6.Transparency + (1/120)
					part7.Transparency = part7.Transparency + (1/120)
					blast.Transparency = blast.Transparency + (1/120)
					blast2.Transparency = blast2.Transparency + (1/120)
					blast3.Transparency = blast3.Transparency + (1/120)
					X.Size = X.Size + Vector3.new(.8,.8,.8)
					--part3.Size = part3.Size + Vector3.new(3,3,3)
					mesh.Scale = mesh.Scale + Vector3.new(1,.2,1)
					mesh2.Scale = mesh2.Scale + Vector3.new(1.1,.2,1.1)
					mesh3.Scale = mesh3.Scale + Vector3.new(3,3,3)
					mesh4.Scale = mesh4.Scale + Vector3.new(1.7,1.7,1.7)
					mesh5.Scale = mesh5.Scale + Vector3.new(1.6,.2,1.6)
					mesh6.Scale = mesh6.Scale + Vector3.new(2,.2,2)
					mesh7.Scale = mesh7.Scale + Vector3.new(4,4,4)
					bm.Scale = bm.Scale + Vector3.new(6,6,.2)
					bm2.Scale = bm2.Scale + Vector3.new(4,4,.2)
					bm3.Scale = bm3.Scale + Vector3.new(4,4,.2)
					X.CFrame = cf
					part.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2),0)
					part2.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2),0)
					part3.CFrame=X.CFrame
					part4.CFrame=X.CFrame
					part7.CFrame=X.CFrame
					part5.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2.6),0)
					part6.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2.4),0)
					blast.CFrame=X.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
					blast2.CFrame=X.CFrame * CFrame.Angles(math.rad(-i*4), math.rad(i*4), math.rad(0))
					blast3.CFrame=X.CFrame * CFrame.Angles(math.rad(180+i*4), math.rad(90-i*4), math.rad(0))
					rs:wait()
					end
					X:Destroy()
					part:Destroy()
					part2:Destroy()
					part3:Destroy()
					part4:Destroy()
					part5:Destroy()
					part6:Destroy()
					blast:Destroy()
					blast2:Destroy()
					blast3:Destroy()
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					z4:Destroy()
				end
			end)
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
				if Debounces.on == false then break end
				rs:wait()
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
mouse.KeyDown:connect(function(key)
	if key == "e" then
		if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.on = true
		Debounces.NoIdl = true
pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
z = Instance.new("Sound", rarm)
z.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z.Volume = .6
z.Pitch = pt[math.random(1,#pt)]
z.Looped = false
z:Play()
Debounces.RPunch = true
Debounces.LPunch = true
Debounces.ks = true
Debounces.ks2 = true
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z2 = Instance.new("Sound", larm)
z2.SoundId = "http://www.roblox.com/asset/?id=206083107"
z2.Volume = .6
z2.Pitch = pt[math.random(1,#pt)]
z2.Looped = false
z2:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z3 = Instance.new("Sound", rarm)
z3.SoundId = "http://www.roblox.com/asset/?id=206083107"
z3.Volume = 0.6
z3.Pitch = pt[math.random(1,#pt)]
z3.Looped = false
z3:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z4 = Instance.new("Sound", larm)
z4.SoundId = "http://www.roblox.com/asset/?id=206083107"
z4.Volume = .6
z4.Pitch = pt[math.random(1,#pt)]
z4.Looped = false
z4:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z5 = Instance.new("Sound", rarm)
z5.SoundId = "http://www.roblox.com/asset/?id=206083107"
z5.Volume = .6
z5.Pitch = pt[math.random(1,#pt)]
z5.Looped = false
z5:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z6 = Instance.new("Sound", larm)
z6.SoundId = "http://www.roblox.com/asset/?id=206083107"
z6.Volume = .6
z6.Pitch = pt[math.random(1,#pt)]
z6.Looped = false
z6:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z7 = Instance.new("Sound", rarm)
z7.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z7.Volume = .6
z7.Pitch = pt[math.random(1,#pt)]
z7.Looped = false
z7:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z8 = Instance.new("Sound", larm)
z8.SoundId = "http://www.roblox.com/asset/?id=206083107"
z8.Volume = .6
z8.Pitch = pt[math.random(1,#pt)]
z8.Looped = false
z8:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z9 = Instance.new("Sound", rarm)
z9.SoundId = "http://www.roblox.com/asset/?id=206083107"
z9.Volume = 0.6
z9.Pitch = pt[math.random(1,#pt)]
z9.Looped = false
z9:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z10 = Instance.new("Sound", larm)
z10.SoundId = "http://www.roblox.com/asset/?id=206083107"
z10.Volume = .6
z10.Pitch = pt[math.random(1,#pt)]
z10.Looped = false
z10:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z11 = Instance.new("Sound", rarm)
z11.SoundId = "http://www.roblox.com/asset/?id=206083107"
z11.Volume = .6
z11.Pitch = pt[math.random(1,#pt)]
z11.Looped = false
z11:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z12 = Instance.new("Sound", larm)
z12.SoundId = "http://www.roblox.com/asset/?id=206083107"
z12.Volume = .6
z12.Pitch = pt[math.random(1,#pt)]
z12.Looped = false
z12:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z13 = Instance.new("Sound", rarm)
z13.SoundId = "http://www.roblox.com/asset/?id=206083107"
z13.Volume = 0.6
z13.Pitch = pt[math.random(1,#pt)]
z13.Looped = false
z13:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z14 = Instance.new("Sound", larm)
z14.SoundId = "http://www.roblox.com/asset/?id=206083107"
z14.Volume = .6
z14.Pitch = pt[math.random(1,#pt)]
z14.Looped = false
z14:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z15 = Instance.new("Sound", rarm)
z15.SoundId = "http://www.roblox.com/asset/?id=206083107"
z15.Volume = .6
z15.Pitch = pt[math.random(1,#pt)]
z15.Looped = false
z15:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z16 = Instance.new("Sound", larm)
z16.SoundId = "http://www.roblox.com/asset/?id=206083107"
z16.Volume = .6
z16.Pitch = pt[math.random(1,#pt)]
z16.Looped = false
z16:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z17 = Instance.new("Sound", rarm)
z17.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z17.Volume = .6
z17.Pitch = pt[math.random(1,#pt)]
z17.Looped = false
z17:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z18 = Instance.new("Sound", larm)
z18.SoundId = "http://www.roblox.com/asset/?id=206083107"
z18.Volume = .6
z18.Pitch = pt[math.random(1,#pt)]
z18.Looped = false
z18:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z19 = Instance.new("Sound", rarm)
z19.SoundId = "http://www.roblox.com/asset/?id=206083107"
z19.Volume = 0.6
z19.Pitch = pt[math.random(1,#pt)]
z19.Looped = false
z19:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z20 = Instance.new("Sound", larm)
z20.SoundId = "http://www.roblox.com/asset/?id=206083107"
z20.Volume = .6
z20.Pitch = pt[math.random(1,#pt)]
z20.Looped = false
z20:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z:Destroy()
z2:Destroy()
z3:Destroy()
z4:Destroy()
z5:Destroy()
z6:Destroy()
z7:Destroy()
z8:Destroy()
z9:Destroy()
z10:Destroy()
z11:Destroy()
z12:Destroy()
z13:Destroy()
z14:Destroy()
z15:Destroy()
z16:Destroy()
z17:Destroy()
z18:Destroy()
z19:Destroy()
z20:Destroy()
Debounces.LPunch = false
Debounces.RPunch = false
Debounces.ks = false
Debounces.ks2 = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
Debounces.on = false
Debounces.NoIdl = false
end
end
end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "t" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.ks = true
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
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            end
        end)
			for i = 1,20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-90)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			kik:disconnect()
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
	if key == "y" then
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
				for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(2.7)
                end
				x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://345052019"
				x.Pitch = 0.8
				x.Volume = 1
				x:Play()
				wait(1.5)
				Debounces.on = false
				Debounces.Here = false
				shot = shot + 1
local rng = Instance.new("Part", larm)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Really red")
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
rngm.MeshId = "http://www.roblox.com/asset?id=156292355"
rngm.Scale = Vector3.new(10, 10, 1)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(6, 6, 4)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(9, 9, 2)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(7, 7, 2)
local bem = Instance.new("Part", larm)
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
bemm.Scale = Vector3.new(1, 10, 10)
local out = Instance.new("Part", larm)
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
rng4.CFrame = rng.CFrame * CFrame.new(0, -1, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(50 + i*5, 50 + i*5, 1)
rngm3.Scale = Vector3.new(30 + i*25, 30 + i*25, 1)
rngm4.Scale = Vector3.new(27 + i*30, 27 + i*30, 1)
rng.Transparency = i/30
rng3.Transparency = 1/34
rng4.Transparency = i/36
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
larm:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 200
hit:FindFirstChild("Humanoid"):TakeDamage(math.huge)
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 200
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
bem.Size = Vector3.new(i, 10, 10)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(1,1,1)
bndm.Scale = Vector3.new(8,8,8)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = larm
newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(50 + i*30, 50 + i*30, 3)
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
Charging = false
mouse.KeyDown:connect(function(key)
	if key == "r" then
		if Charging == false then
			Charging = true
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				Debounces.on = true
				for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					if Debounces.on == false then break end
					rs:wait()
				end
				--[[for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
					if Debounces.on == false then break end
					rs:wait()
				end]]--
pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('Really black')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(9.5,9.5,9.5)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("Really red")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(9.5,9.5,9.5)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("Really red")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(9.5,9.5,9.5)
blm.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
			if Charging == true then
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(9.5,9.5,9.5)
				bl.Transparency = bl.Transparency + 0.1
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(9.5,0,9.5)
				msh2.Scale = msh2.Scale + Vector3.new(9.5,0,9.5)
				elseif Charging == false then break
			end
		end
    end))

repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = BrickColor.new('Really red')
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	Spawn(function()
		while rs:wait() do
			if Charging == true then
				rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
				larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
				hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
				torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
				lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
				rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
			elseif Charging == false then break
			end
		end
	end)
	Spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyUp:connect(function(key)
	if key == "r" then
		if Charging == true then
			Charging = false
				pt:Destroy()
				pt2:Destroy()
				bl:Destroy()
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
	if key == "g" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = BrickColor.new("Really red")
				shell.Anchored = true
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1,1,1)
				shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1,1,1)
				local shell2 = Instance.new("Part",torso)
				shell2.BrickColor = BrickColor.new("Really red")
				shell2.Anchored = true
				shell2.CanCollide = false
				shell2.Locked = true
				shell2.TopSurface = "SmoothNoOutlines"
				shell2.BottomSurface = "SmoothNoOutlines"
				shell2.Size = Vector3.new(1,1,1)
				shellm2 = Instance.new("SpecialMesh",shell2)
				shellm2.MeshType = "Sphere"
				shellm2.Scale = Vector3.new(1,1,1)

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

Shell = function()
local X = Instance.new("Part",char)
local O = Instance.new("ObjectValue",X)
        O.Name = "creator"
        X.Locked = true
		X.Name = "Shell"
        X.Anchored = false
        X.CanCollide = false
        X.Transparency = 0
        X.Reflectance = 0
        X.BottomSurface = 0
        X.TopSurface = 0
        X.Shape = 0
        local V = Instance.new("ObjectValue",X)
        V.Value = char
        V.Name = "creator"
        X.BrickColor = BrickColor.new("Really red")
        X.Size = Vector3.new(1,1,1)
        --X.Material = "Neon"
        local Z = Instance.new("SpecialMesh",X)
        Z.MeshType = "Sphere"
        Z.Scale = Vector3.new(1,1,1)
        X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
        local bv = Instance.new("BodyVelocity",X)
        bv.maxForce = Vector3.new(99999,99999,99999)
        X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
        bv.velocity = root.CFrame.lookVector*65
Explode = X.Touched:connect(function(hit)
        if hit ~= char and hit.Name ~= "Shell" and hit:IsA("Part") or hit:IsA("BasePart}") then
        local cf = X.CFrame
        bv:Destroy()
        X.Anchored = true
        Z:Remove()
        Explode:disconnect()
        X.Size = Vector3.new(3,3,3)
        X.Touched:connect(function(hit) end)
        X.CanCollide = false
		for i,v in pairs(FindNearestTorso(X.CFrame.p,40))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.huge)
			end
		end
			for i = 1, (40) do rs:wait()
				X.Transparency = X.Transparency + (1/40)
				X.Size = X.Size + Vector3.new(1,1,1)
				X.CFrame = cf
			end
		X:Destroy()
		end
	end)
end
				Shell()
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				shell.Transparency = 1
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
Search = false
mouse.KeyDown:connect(function(key)
	if key == "n" then
		if Search == false then
			Search = true
			for i,v in pairs(game.Players:getPlayers()) do
				if v.Name~=char.Name then
					for j,k in pairs(v.Character:GetChildren()) do
						if k:IsA("BasePart") and k.Transparency >= 1 then
							bawx=Instance.new("SelectionBox",cam)
							bawx.Color = BrickColor.new("Bright red")
							bawx.Transparency = .5
							bawx.Adornee = k
						end
                    end
                end
            end
		elseif Search == true then
			Search = false
			for i, v in pairs(cam:GetChildren()) do
				if v:IsA("SelectionBox") then
					v:Destroy()
				end
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
		Debounces.ks = true
        if Grab == false then
        gp = nil
		for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
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
                gp = ht
                Grab = true
                asd=weld5(root,ht:FindFirstChild("Torso"),CFrame.new(0,0,-2.4),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(0),math.rad(180),0)
            --[[elseif hum1 == nil then
                con1:disconnect()
                wait() return]]--
            end
        end)
		for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
	if hum1 == nil then
    Debounces.on = false
    Debounces.NoIdl = false
	end
	con1:disconnect()
    elseif Grab == true then
        Grab = false
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		con1:disconnect()
		Debounces.on = false
		Debounces.NoIdl = false
		if gp ~= nil then
			gp:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 140
				for i,v in pairs(larm:GetChildren()) do
					if v.Name == "asd" and v:IsA("Weld") then
				v:Remove()
			end
		end
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        hum1=nil
		ht=nil
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
        char.Humanoid.WalkSpeed = 60
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 8
    end
end)
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
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
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles  (math.rad(44), math.rad (0), math.rad(0)), 0.15)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(sine/14), -1) * CFrame.Angles(math.rad(-  80),  math.rad(0), 0), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad  (0), math.rad(50),  math.rad(-40)), 0.15)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),   math.rad(-50),  math.rad(40)), 0.15)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(- 10)), .15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(10)),  .15)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(sine/14), -.2) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
end
end
end)
game.Workspace.mackenzieparkerrules.Humanoid.MaxHealth = math.huge
local a = Instance.new("ForceField")
a.Parent = workspace.mackenzieparkerrules
wait(0)
game.Workspace.mackenzieparkerrules.Humanoid.Health = math.huge
-----------------------------------------------------------------------------

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
		li.Transparency = Trans or 0.4
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
	temp.X = v.Size.X/2 * 15
	temp.Y = v.Size.Y/2 * 15
	temp.Z = v.Size.Z/2 * 15
	Bounding[v.Name] = temp
	--table.insert(Bounding, v.Name, temp)
end

while wait(0) do -- Emit the Lightning effects randomly, (math.random(1,10)/10) if you want original
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2
	Lightning(SPos1, SPos2, 4, 3, "Really red", .3, .56)
end