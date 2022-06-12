
wait(1.0)
local aura = Instance.new("ParticleEmitter",game.Players.elad640.Character.Torso)
aura.Size = NumberSequence.new(0)
aura.Lifetime = NumberRange.new(0)
aura.LightEmission = 0
local jun = game.Players.LocalPlayer
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

ypcall(function()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=393374766"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=237836991"
end)
char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
Hair99 = Instance.new("Part")

Hair99.Parent = jun.Character
Hair99.Name = "Hair"
Hair99.formFactor = "Symmetric"
Hair99.Size = Vector3.new(1, 1, 1)
Hair99.CFrame = jun.Character.Head.CFrame
Hair99:BreakJoints()
Hair99.CanCollide = false
Hair99.TopSurface = "Smooth"
Hair99.BottomSurface = "Smooth"
Hair99.BrickColor = BrickColor.new("New Yeller")
Hair99.Transparency = 1

Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Head 
Weld.Part1 = Hair99
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(0, 0.26, 0.06)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

Hair7 = Instance.new("Part")
Hair7.Parent = jun.Character
Hair7.Name = "Hair"
Hair7.CanCollide = false
Hair7.Locked = true
Hair7.TopSurface = "Smooth"
Hair7.BottomSurface = "Smooth"
Hair7.formFactor = "Symmetric"
Hair7.Material = "Neon"
Hair7.BrickColor = BrickColor.new("Black")
Hair7.CFrame = jun.Character.Torso.CFrame
Hair7.Size = Vector3.new(1, 1, 1)
Hair7.Transparency = 1

Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair99
Mesh.MeshType = "Sphere"
Mesh.Offset = Vector3.new(0, 0.1, 0.1)
Mesh.Scale = Vector3.new(1.2, 1.2, 1.2)


Weld = Instance.new("Weld")
Weld.Parent = jun.Character.Head
Weld.Part0 = jun.Character.Head
Weld.Part1 = Hair7
Weld.C0 = CFrame.new(0, 1, 0)

Mesh = Instance.new("SpecialMesh")
Mesh.Offset = Vector3.new(0.2, -0.2, 0.2)
Mesh.Parent = Hair7
Mesh.Scale = Vector3.new(1, 1, 1)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=476757756"
Mesh.TextureId = ""


for i = 1, 6 do
Hair99.Transparency = Hair99.Transparency - .2
Hair7.Transparency = Hair7.Transparency - .2
wait(0)
end
local m = Instance.new("Model")
game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://0"
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


local p = game.Players.LocalPlayer
local char = p.Character
Vegeta = Instance.new("Model",workspace.elad640.Torso)
Vegeta.Name = "Vegeta"
humanoid = Instance.new("Humanoid",workspace.elad640.Torso.Vegeta)
shirt = Instance.new("Shirt",workspace.elad640.Torso.Vegeta)
shirt.Name = "Shirt"
pants = Instance.new("Pants",workspace.elad640.Torso.Vegeta)
pants.Name = "Pants"
torso = Instance.new("Part",workspace.elad640.Torso.Vegeta)
torso.Size = Vector3.new(2,2,1)
torso.Rotation = Vector3.new(0,180,0)
torso.Position = Vector3.new(0,4,0)
torso.BrickColor = BrickColor.new("Pastel brown")
torso.Name = "Torso"
head = Instance.new("Part",workspace.elad640.Torso.Vegeta)
head.Size = Vector3.new(1.25,1.25,1.25)
head.BrickColor = BrickColor.new("Pastel brown")
head.Name = "Head"
head.Position = Vector3.new(0,6,0)
headmesh = Instance.new("SpecialMesh",head)
headmesh.MeshType = "Head"
larm = Instance.new("Part",workspace.elad640.Torso.Vegeta)
larm.Size = Vector3.new(1,2,1)
larm.BrickColor = BrickColor.new("Pastel brown")
larm.Name = "Left Arm"
larm.Position = Vector3.new(-2,4,0)
rarm = Instance.new("Part",workspace.elad640.Torso.Vegeta)
rarm.Size = Vector3.new(1,2,1)
rarm.BrickColor = BrickColor.new("Pastel brown")
rarm.Name = "Right Arm"
rarm.Position = Vector3.new(2,4,0)
lleg = Instance.new("Part",workspace.elad640.Torso.Vegeta)
lleg.Size = Vector3.new(1,2,1)
lleg.Name = "Left Leg"
lleg.Position = Vector3.new(1,2,0)
rleg = Instance.new("Part",workspace.elad640.Torso.Vegeta)
rleg.Size = Vector3.new(1,2,1)
rleg.Name = "Right Leg"
rleg.Position = Vector3.new(-1,2,0)
headweld = Instance.new("Weld",workspace.elad640.Torso.Vegeta.Head)
headweld.Part0 = workspace.elad640.Torso.Vegeta.Head
headweld.Part1 = torso
headweld.C0 = CFrame.new(0, -1.5, 0)
larmweld = Instance.new("Weld",workspace.elad640.Torso.Vegeta.Torso)
larmweld.Part0 = workspace.elad640.Torso.Vegeta.Torso
larmweld.Part1 = larm
larmweld.C0 = CFrame.new(1.5, 0, 0)
rarmweld = Instance.new("Weld",workspace.elad640.Torso.Vegeta.Torso)
rarmweld.Part0 = workspace.elad640.Torso.Vegeta.Torso
rarmweld.Part1 = rarm
rarmweld.C0 = CFrame.new(-1.5, 0, 0)
rlegweld = Instance.new("Weld",workspace.elad640.Torso.Vegeta.Torso)
rlegweld.Part0 = workspace.elad640.Torso.Vegeta.Torso
rlegweld.Part1 = rleg
rlegweld.C0 = CFrame.new(-0.5, -2, 0)
llegweld = Instance.new("Weld",workspace.elad640.Torso.Vegeta.Torso)
llegweld.Part0 = workspace.elad640.Torso.Vegeta.Torso
llegweld.Part1 = lleg
llegweld.C0 = CFrame.new(0.5, -2, 0)
modelhair = Instance.new("Model",workspace.elad640.Torso.Vegeta)
modelhair.Name = "Hair"
hair = Instance.new("Part",workspace.elad640.Torso.Vegeta.Hair)
hair.Name = "hair"
hair.BrickColor = BrickColor.new("Black")
hairmesh = Instance.new("SpecialMesh",hair)
hairmesh.Scale = Vector3.new(7,7,7)
hairmesh.Offset = Vector3.new(0, 0.8, 0.7)
hairmesh.MeshType = "FileMesh"
hairmesh.MeshId = "http://www.roblox.com/asset/?id=560180459"
hairweld = Instance.new("Weld",workspace.elad640.Torso.Vegeta.Hair)
hairweld.Part0 = workspace.elad640.Torso.Vegeta.Head
hairweld.Part1 = hair
hairweld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
npctoplayer = Instance.new("Weld",workspace.elad640.Torso)
npctoplayer.Part0 = workspace.elad640.Torso
npctoplayer.Part1 = torso
npctoplayer.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0))
workspace.elad640.Torso.Vegeta.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=268667762"
workspace.elad640.Torso.Vegeta.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=268667843"
game:GetService("Chat"):Chat(game.Workspace.elad640,"CMON VEGETA FUSION NOW","Red")
wait(2.0)
game:GetService("Chat"):Chat(game.Workspace.elad640,"Put The Ear Ring On Ur Right Ear","Red")
wait(2.0)
game:GetService("Chat"):Chat(game.Workspace.elad640,".....","Red")
wait(0.8)
game:GetService("Chat"):Chat(game.Workspace.elad640,"WOOOOOOOO","Red")
local close = -10
for i=1,10 do
	wait(0.2)
	close = close + 1
	npctoplayer.C0 = CFrame.new(0, 0, close) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0))
end
workspace.elad640.Torso.Vegeta:Destroy()
wait(0.1)




char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
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
for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(10)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10)), 0.2)
				end
----------------------------------------------------
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

char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
----------------------------------------------------

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

----------------------------------------------------
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://147235241"--147235241
z.Looped = true
z.Pitch = 1
z.Volume = 0.5
wait(.1)
z:Play()
----------------------------------------------------
local Transforming = true
hum.WalkSpeed = 0
pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('White')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("White")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("White")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(0.1, 0.1, 0.1)
				bl.Transparency = bl.Transparency + 0.005
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0,0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0,0.05)
			end
end))

local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "SmoothPlastic"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("White")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end
for u, c in pairs (jun.Character:GetChildren()) do -- This func removes the 
if c.className == "Hat" then                       -- base form hair.
c.Handle.Transparency = 0                          -- Put after transformation
end
if c.Name == "Hair" then
c:Remove()
end
end
wait(1.0)
ypcall(function()

shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=276106335"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=254301872"
end)
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Hair"
b1 = Instance.new("SpecialMesh", p)
b1.MeshId = "http://www.roblox.com/asset/?id=12212520"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(9,9,9)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Dark red")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(3,3,3)
p3.CFrame = p3.CFrame * CFrame.new(999,999,999)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=560152258"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(6.2,6.2,6.2)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(3.40111661, -0.744508088, 8.58160019, -5.48362732e-006, 3.27825546e-007, 1, -0.978699088, -0.205299854, -5.30481339e-006, 0.205299824, -0.978699148, 1.49011612e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2.Part1 = p3
w2.C1 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new()
w3.Part1 = p4
w3.C1 = CFrame.new()

m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0.1, 0.31) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"New Yeller", "New Yeller"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
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
		wm.Scale = Vector3.new(1 + i*1.2, 1 + i*1.2, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
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
                wave.BrickColor = BrickColor.new("White")
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
earring1 = Instance.new("Part",workspace.elad640.Head)
earring1.Size = Vector3.new(2,2,2)
earring1.CanCollide = false
earring1.BrickColor = BrickColor.new("New Yeller")
earmesh1 = Instance.new("SpecialMesh",earring1)
earmesh1.MeshType = "Sphere"
earmesh1.Scale = Vector3.new(0.15,0.15,0.15)
earweld1 = Instance.new("Weld",workspace.elad640.Head)
earweld1.Part0 = workspace.elad640.Head
earweld1.Part1 = earring1
earweld1.C0 = CFrame.new(0.7, -0.2, 0)
earring2 = Instance.new("Part",workspace.elad640.Head)
earring2.Size = Vector3.new(2,2,2)
earring2.CanCollide = false
earring2.BrickColor = BrickColor.new("New Yeller")
earmesh2 = Instance.new("SpecialMesh",earring2)
earmesh2.MeshType = "Sphere"
earmesh2.Scale = Vector3.new(0.15,0.15,0.15)
earweld2 = Instance.new("Weld",workspace.elad640.Head)
earweld2.Part0 = workspace.elad640.Head
earweld2.Part1 = earring2
earweld2.C0 = CFrame.new(-0.7, -0.2, 0)

z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://366040276"--366040276
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.1)
z:Play()

game:GetService("Chat"):Chat(game.Workspace.elad640,"Im Neither Goku Or Vegeta","Red")
wait(2.0)
game:GetService("Chat"):Chat(game.Workspace.elad640,"I AM The One Thats Gonna Defeat You","Red")
wait(2.0)
pt:Destroy()
pt2:Destroy()
bl:Destroy()

for i = 1, 20 do rs:wait()
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new("Institutional white")
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
        wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
end)()
hum.WalkSpeed = 16
----------------------------------------------------
Blast = function()
	local Colors = {"New Yeller", "New Yeller"}
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
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
    part.BrickColor=BrickColor.new('New Yeller')
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
    part2.BrickColor=BrickColor.new('New Yeller')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(9999,9999))
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
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(999,999))
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
game:GetService("Chat"):Chat(game.Workspace.elad640,"Its Over","Red")
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
	sp.BrickColor = BrickColor.new("New Yeller")
	spm = Instance.new("SpecialMesh",sp)
	spm.MeshType = "Sphere"
	spm.Scale = Vector3.new(31,31,31)
	sp2 = Instance.new("Part", rarm)
	sp2.Name = "Energy"
	sp2.BrickColor = BrickColor.new("New Yeller")
	sp2.Size = Vector3.new(10, 10, 10)
	sp2.Shape = "Ball"
	sp2.CanCollide = false
	sp2.Anchored = true
	sp2.Locked = true
	sp2.TopSurface = 0
	sp2.BottomSurface = 0
	sp2.Transparency = 1
	spm2 = Instance.new("SpecialMesh",sp2)
	spm2.MeshId = "rbxassetid://9982590"
	spm2.Scale = Vector3.new(10,10,10)
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
		--spm.Scale = spm.Scale - Vector3.new(15,15,15)
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
game:GetService("Chat"):Chat(game.Workspace.elad640,"Disapear!","Red")
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
	X.BrickColor = BrickColor.new("New Yeller")
	X.Size = Vector3.new(20,20,20)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(10,10,15)
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
			part3.BrickColor=BrickColor.new("New Yeller")
			local mesh3 = Instance.new("SpecialMesh",part3)
			mesh3.MeshType = "Sphere"
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
			part4.BrickColor=BrickColor.new("Hot pink")
			local mesh4 = Instance.new("SpecialMesh",part4)
			mesh4.MeshType = "Sphere"
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
			part7.BrickColor=BrickColor.new("New Yeller")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshType = "Sphere"
			mesh7.Scale = Vector3.new(0.1, 0.1, 0.1)
		--[[X.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(999,9999))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(999,999))
						wait(.3)
					end
				end
			end
		end)]]--
		for i,v in pairs(FindNearestTorso(X.CFrame.p,140))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(9999,9999))
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
				part.BrickColor=BrickColor.new('New Yeller')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(2,2,2)
				local part2=part:clone()
				part2.Parent = rarm
				part2.BrickColor=BrickColor.new("New Yeller")
				local part5=part:clone()
				part5.Parent = rarm
				part5.BrickColor=BrickColor.new("Magenta")
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
				blast.BrickColor = BrickColor.new("New Yeller")
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
				bm.MeshId = "rbxassetid://3270017"
				local blast2 = Instance.new("Part", rarm)
				blast2.BrickColor = BrickColor.new("New Yeller")
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
				bm2.MeshId = "rbxassetid://3270017"
				local blast3 = Instance.new("Part", rarm)
				blast3.BrickColor = BrickColor.new("New Yeller")
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
                                    hit:FindFirstChild("Humanoid"):TakeDamage(9999)
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
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(9999)
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
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(-35)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(45)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(7.7)
                end
game:GetService("Chat"):Chat(game.Workspace.elad640,"TAKE THIS","Red")
wait(1.0)
				

				Debounces.on = false
				Debounces.Here = false
game:GetService("Chat"):Chat(game.Workspace.elad640,"KAME","Red")
wait(1.8)
game:GetService("Chat"):Chat(game.Workspace.elad640,"HAME","Red")
wait(1.8)
game:GetService("Chat"):Chat(game.Workspace.elad640,"HAAAAAAAAAAAAAAAAAAAA","Red")
				shot = shot + 1
for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(20)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(-90)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
     
                    rs:wait(7.7)
                end
local rng = Instance.new("Part", larm)
rng.Anchored = true
rng.BrickColor = BrickColor.new("New Yeller")
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
local bem = Instance.new("Part", larm)
bem.Anchored = true
bem.BrickColor = BrickColor.new("New Yeller")
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
local out = Instance.new("Part", larm)
out.Anchored = true
out.BrickColor = BrickColor.new("New Yeller")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(4, 4, 4)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(6, 4, 6)
local bnd = Instance.new("Part", larm)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("New Yeller")
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
wait(3.0)
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
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
bem.Size = Vector3.new(i, 3, 3)
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
newRngm.Scale = Vector3.new(8 + i*2, 8 + i*2, 3)
newRng.Transparency = i/10
wait()
end
wait(3.0)
newRng:Destroy()
end)()
end
wait()
end
wait(3.0)
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
--[[mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = BrickColor.new("New Yeller")
				shell.Anchored = false
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1.2,1.2,1.2)
				shell.FormFactor = 3
				local shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1.2,1.2,1.2)
				Omega = function()
					local X = Instance.new("Part",char)
					local O = Instance.new("ObjectValue",X)
					O.Name = "creator"
					X.Locked = true
					X.Name = "Shell"
					X.Anchored = false
					X.CanCollide = false
					X.Transparency = 0.5
					X.Reflectance = 0
					X.BottomSurface = 0
					X.TopSurface = 0
					X.Shape = 0
					local V = Instance.new("ObjectValue",X)
					V.Value = char
					V.Name = "creator"
					X.BrickColor = BrickColor.new("New Yeller")
					X.Size = Vector3.new(40,40,40)
					--X.Material = "Neon"
					local Z = Instance.new("SpecialMesh",X)
					Z.MeshType = "Sphere"
					Z.Scale = Vector3.new(0.2,0.2,0.2)
					X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
					local bv = Instance.new("BodyVelocity",X)
					bv.maxForce = Vector3.new(99999,99999,99999)
					X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
					bv.velocity = root.CFrame.lookVector*10
					Explode = X.Touched:connect(function(hit)
						if hit ~= char and hit.Name ~= "Shell" and hit ~= X and hit:IsA("Part") or hit:IsA("BasePart}") then
							local cf = X.CFrame
							bv:Destroy()
							X.Anchored = true
							Z:Remove()
							Explode:disconnect()
							X.Size = Vector3.new(3,3,3)
							X.Touched:connect(function(hit) end)
							X.CanCollide = false
							for i,v in pairs(FindNearestTorso(X.CFrame.p,200))do
								if v:FindFirstChild('Humanoid') then
									v.Humanoid:TakeDamage(math.random(9999,9999))
								end
							end
								for i = 1, (40) do rs:wait()
									X.Transparency = X.Transparency + (1/40)
									X.Size = X.Size + Vector3.new(1,1,1)
									X.CFrame = root.CFrame * CFrame.new(0,0,-10)
								end
							X:Destroy()
							end
						end)
					end
			for i = 1,200 do
				shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.03)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,30 do
				shell.CFrame = torso.CFrame * CFrame.new(0,8,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-170)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,20,0)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(100)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-100)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-30)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(20)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(120)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(-120)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
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
end)]]
----------------------------------------------------

mouse.KeyDown:connect(function(key)
	if key == "h" then



		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
				for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-90)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(7.7)
                end
game:GetService("Chat"):Chat(game.Workspace.elad640,"TAKE THIS","Red")
wait(1.0)
game:GetService("Chat"):Chat(game.Workspace.elad640,"FINAL!","Red")

local larm = game.Workspace.elad640["Left Arm"]
local balls = Instance.new("Part",larm)
balls.Anchored = false
balls.Material = "Neon"
balls.CanCollide = false
balls.Locked = true
balls.Transparency = 0
balls.Material = "SmoothPlastic"
balls.Size = Vector3.new(1,1,1)
balls.TopSurface = "SmoothNoOutlines"
balls.BottomSurface = "SmoothNoOutlines"
balls.BrickColor = BrickColor.new("New Yeller")
ballsm = Instance.new("SpecialMesh",balls)
ballsm.MeshType = "Sphere"
ballsm.Scale = Vector3.new(1,1,1)
local cor = Instance.new("Part", larm)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld",larm)
corw.Part0 = larm
corw.Part1 = cor
corw.C0 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld",larm)
weld1.Part0 = balls
weld1.Part1 = larm
weld1.C0 = CFrame.new(0,2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://670166779"
				x.Pitch = 1
				x.Volume = 5
				wait(.0000001)
				x:Play()
for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(45)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(7.7)
                end
wait(1.0)
				

				Debounces.on = false
				Debounces.Here = false
game:GetService("Chat"):Chat(game.Workspace.elad640,"Kameeeeee","Red")
balls:Destroy()
wait(0.1)
local larm = game.Workspace.elad640["Left Arm"]
local balls = Instance.new("Part",larm)
balls.Anchored = false
balls.Material = "Neon"
balls.CanCollide = false
balls.Locked = true
balls.Transparency = 0
balls.Material = "SmoothPlastic"
balls.Size = Vector3.new(1,1,1)
balls.TopSurface = "SmoothNoOutlines"
balls.BottomSurface = "SmoothNoOutlines"
balls.BrickColor = BrickColor.new("Teal")
ballsm = Instance.new("SpecialMesh",balls)
ballsm.MeshType = "Sphere"
ballsm.Scale = Vector3.new(1,1,1)
local cor = Instance.new("Part", larm)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld",larm)
corw.Part0 = larm
corw.Part1 = cor
corw.C0 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld",larm)
weld1.Part0 = balls
weld1.Part1 = larm
weld1.C0 = CFrame.new(0,1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(-35)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(45)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    
                end
wait(0.5)
game:GetService("Chat"):Chat(game.Workspace.elad640,"Hameeeeee","Red")
wait(0.5)
game:GetService("Chat"):Chat(game.Workspace.elad640,"HAAAAAAAAAAAAAAAAAAAA","Red")

for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(20)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(-90)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
     
                   
                end
wait(1.6)
				shot = shot + 1
				balls:Destroy()

local rng = Instance.new("Part",larm)
rng.Anchored = true
rng.BrickColor = BrickColor.new("New Yeller")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(8,8,8)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
rng2 = rng:clone()
rng3 = rng2:clone()
rng4 = rng2:clone()
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(40,40,4)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(20,20,12)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(32,32,4)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(24,24,4)
local bem = Instance.new("Part",larm)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Teal")
bem.CanCollide = true
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1,10,10)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 10, 10)
local out = Instance.new("Part",char)
out.Anchored = true
out.BrickColor = BrickColor.new("Teal")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(1,10,10)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(12, 10, 12)
local bnd = Instance.new("Part", larm)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Teal")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "Bend"
bnd.Size = Vector3.new(10,10,10)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(10,10,10)
out.CFrame = larm.CFrame * CFrame.new(03, 1.7, 0)
bem.CFrame = out.CFrame * CFrame.new(03, -0.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0,0,0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(3, -.5, 0)
rng4.CFrame = rng.CFrame * CFrame.new(3, -1, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(16 + i*6, 10 + i*6, 2)
rngm3.Scale = Vector3.new(18 + i*8, 8 + i*8, 2)
rngm4.Scale = Vector3.new(20 + i*10, 6 + i*10, 2)
rng.Transparency = i/20
rng3.Transparency = 1/24
rng4.Transparency = i/26
wait()
end
wait(3.0)
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
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(9999,9999))
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
bem.Size = Vector3.new(i, 3,3)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(10,10,10)
bndm.Scale = Vector3.new(10,10,10)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = larm
newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(12 + i*2, 12 + i*2, 3)
newRng.Transparency = i/10
wait()
end
wait(3.0)
newRng:Destroy()
pt:Destroy()
pt2:Destroy()
end)()
end
wait()
end
wait(3.0)
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
--[[mouse.KeyDown:connect(function(key)
	if key == "h" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = BrickColor.new("New Yeller")
				shell.Anchored = false
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1.2,1.2,1.2)
				shell.FormFactor = 3
				local shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1.2,1.2,1.2)
				Omega = function()
					local X = Instance.new("Part",char)
					local O = Instance.new("ObjectValue",X)
					O.Name = "creator"
					X.Locked = true
					X.Name = "Shell"
					X.Anchored = false
					X.CanCollide = false
					X.Transparency = 0.5
					X.Reflectance = 0
					X.BottomSurface = 0
					X.TopSurface = 0
					X.Shape = 0
					local V = Instance.new("ObjectValue",X)
					V.Value = char
					V.Name = "creator"
					X.BrickColor = BrickColor.new("New Yeller")
					X.Size = Vector3.new(40,40,40)
					--X.Material = "Neon"
					local Z = Instance.new("SpecialMesh",X)
					Z.MeshType = "Sphere"
					Z.Scale = Vector3.new(0.2,0.2,0.2)
					X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
					local bv = Instance.new("BodyVelocity",X)
					bv.maxForce = Vector3.new(99999,99999,99999)
					X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
					bv.velocity = root.CFrame.lookVector*10
					Explode = X.Touched:connect(function(hit)
						if hit ~= char and hit.Name ~= "Shell" and hit ~= X and hit:IsA("Part") or hit:IsA("BasePart}") then
							local cf = X.CFrame
							bv:Destroy()
							X.Anchored = true
							Z:Remove()
							Explode:disconnect()
							X.Size = Vector3.new(3,3,3)
							X.Touched:connect(function(hit) end)
							X.CanCollide = false
							for i,v in pairs(FindNearestTorso(X.CFrame.p,200))do
								if v:FindFirstChild('Humanoid') then
									v.Humanoid:TakeDamage(math.random(9999,9999))
								end
							end
								for i = 1, (40) do rs:wait()
									X.Transparency = X.Transparency + (1/40)
									X.Size = X.Size + Vector3.new(1,1,1)
									X.CFrame = root.CFrame * CFrame.new(0,0,-10)
								end
							X:Destroy()
							end
						end)
					end
			for i = 1,200 do
				shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.03)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,30 do
				shell.CFrame = torso.CFrame * CFrame.new(0,8,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-170)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,20,0)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(100)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-100)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-30)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(20)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(120)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(-120)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
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
end)]]
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
pt.BrickColor=BrickColor.new('New Yeller')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("New Yeller")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("New Yeller")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
			if Charging == true then
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(0.1, 0.1, 0.1)
				bl.Transparency = bl.Transparency + 0.005
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0,0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0,0.05)
				elseif Charging == false then break
			end
		end
    end))

repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
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
				shell.BrickColor = BrickColor.new("New Yeller")
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
				shell2.BrickColor = BrickColor.new("New Yeller")
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
        X.BrickColor = BrickColor.new("New Yeller")
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
				v.Humanoid:TakeDamage(math.random(99999,99999))
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
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = 9001
wait(3)
hum.Health = 9001
god = game.Players.elad640 -- who's chat the commands respond to
function onChatted(msg)
if msg == "ssjb" then
wait(1.0)
game:GetService("Chat"):Chat(game.Workspace.elad640,"Time To Go God Level","Red")
wait(3.0)
for u, c in pairs (jun.Character:GetChildren()) do -- This func removes the 
if c.className == "Hat" then                       -- base form hair.
c.Handle.Transparency = 0                          -- Put after transformation
end
if c.Name == "Hair" then
c:Remove()
end
end
wait(0.00001)
local m = Instance.new("Model")
m.Name = "Hair"
b1 = Instance.new("SpecialMesh", p)
b1.MeshId = "http://www.roblox.com/asset/?id=12212520"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(9,9,9)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Teal")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(3,3,3)
p3.CFrame = p3.CFrame * CFrame.new(999,999,999)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=560152258"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(6.2,6.2,6.2)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(3.40111661, -0.744508088, 8.58160019, -5.48362732e-006, 3.27825546e-007, 1, -0.978699088, -0.205299854, -5.30481339e-006, 0.205299824, -0.978699148, 1.49011612e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2.Part1 = p3
w2.C1 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new()
w3.Part1 = p4
w3.C1 = CFrame.new()

m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0.1, 0.31) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
game:GetService("Chat"):Chat(game.Workspace.elad640,"Im Way More Powerful Now","Red")
aura:Destroy()
wait(0.1)
aura = Instance.new("ParticleEmitter",game.Players.elad640.Character.Torso)
aura.Texture = "http://www.roblox.com/asset/?id=347730682"
aura.VelocitySpread = 0
aura.Size = NumberSequence.new(5)
aura.Lifetime = NumberRange.new(0.5)
aura.Color = ColorSequence.new(Color3.new(0, 255, 255))
aura.LightEmission = 0.6
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://662782202"--662782202
z.Pitch = 1
z.Volume = 1
wait(.1)
z:Play()



end
if msg == "ssj" then
wait(1.0)
game:GetService("Chat"):Chat(game.Workspace.elad640,"Time To Show You True Power","Red")
wait(3.0)
for u, c in pairs (jun.Character:GetChildren()) do -- This func removes the 
if c.className == "Hat" then                       -- base form hair.
c.Handle.Transparency = 0                          -- Put after transformation
end
if c.Name == "Hair" then
c:Remove()
end
end
wait(0.00001)
local m = Instance.new("Model")
m.Name = "Hair"
b1 = Instance.new("SpecialMesh", p)
b1.MeshId = "http://www.roblox.com/asset/?id=12212520"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(9,9,9)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("New Yeller")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(3,3,3)
p3.CFrame = p3.CFrame * CFrame.new(999,999,999)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=560152258"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(6.2,6.2,6.2)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(3.40111661, -0.744508088, 8.58160019, -5.48362732e-006, 3.27825546e-007, 1, -0.978699088, -0.205299854, -5.30481339e-006, 0.205299824, -0.978699148, 1.49011612e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2.Part1 = p3
w2.C1 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new()
w3.Part1 = p4
w3.C1 = CFrame.new()

m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0.1, 0.31) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
game:GetService("Chat"):Chat(game.Workspace.elad640,"This Is Super Vegito","Red")
aura:Destroy()
wait(0.1)
aura = Instance.new("ParticleEmitter",game.Players.elad640.Character.Torso)
aura.Texture = "http://www.roblox.com/asset/?id=347730682"
aura.VelocitySpread = 0
aura.Size = NumberSequence.new(5)
aura.Lifetime = NumberRange.new(0.5)
aura.Color = ColorSequence.new(Color3.new(255, 255, 0))
aura.LightEmission = 0.6
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://662782202"--662782202
z.Pitch = 1
z.Volume = 1
wait(.1)
z:Play()
end
if msg == "off" then
aura:Destroy()
for u, c in pairs (jun.Character:GetChildren()) do -- This func removes the 
if c.className == "Hat" then                       -- base form hair.
c.Handle.Transparency = 0                          -- Put after transformation
end
if c.Name == "Hair" then
c:Remove()
end
end

wait(0.1)
local m = Instance.new("Model")
m.Name = "Hair"
b1 = Instance.new("SpecialMesh", p)
b1.MeshId = "http://www.roblox.com/asset/?id=12212520"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(9,9,9)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Dark red")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(3,3,3)
p3.CFrame = p3.CFrame * CFrame.new(999,999,999)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=560152258"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(6.2,6.2,6.2)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(3.40111661, -0.744508088, 8.58160019, -5.48362732e-006, 3.27825546e-007, 1, -0.978699088, -0.205299854, -5.30481339e-006, 0.205299824, -0.978699148, 1.49011612e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2.Part1 = p3
w2.C1 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new()
w3.Part1 = p4
w3.C1 = CFrame.new()

m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0.1, 0.31) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
end

end
god.Chatted:connect(onChatted)
--------------------------------
local pie22 = Instance.new("ParticleEmitter")
pie22.Parent = char.Torso
pie22.Color = ColorSequence.new(BrickColor.new("Really red").Color)
pie22.LightEmission = 5
pie22.Size = NumberSequence.new(5)
pie22.Texture = "http://www.roblox.com/asset/?id=250186345"
pie22.Transparency = NumberSequence.new(0.7)
pie22.EmissionDirection = "Top"
pie22.Enabled = true
pie22.Lifetime = NumberRange.new(0.9)
pie22.Rate = 40
pie22.Speed = NumberRange.new(4)
pie22.VelocitySpread = 13.5
pie22.Name = "Haa"
pie22.Parent = Player.Character.Torso
  for _,v in pairs(char:getChildren()) do
    if v:IsA("Hat") then
      v.Handle.Mesh.VertexColor = Vector3.new(1, 0.2, 0.2)
    end
  end