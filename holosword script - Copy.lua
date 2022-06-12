--Sword.lua
--lal it's just put up from some random ideas kk
function clerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end


plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
anim = char:findFirstChild("Animate")
if anim then
anim:Destroy()
end
nameofModel = "HoloSword"


if char:findFirstChild(nameofModel) then char:findFirstChild(nameofModel):Destroy() end


model = Instance.new("Model", char)
model.Name = nameofModel

local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra

local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la

local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll


humanoid.WalkSpeed = 10


-- 2 - Blade
obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.690000057, 19.1000042)) * CFrame.Angles(-0, 0, -0)
obj2.FormFactor = Enum.FormFactor.Custom
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Reflectance = 0.5
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.SmoothPlastic
obj2.Size = Vector3.new(0.200000003, 1, 4.79999971)
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BrickColor = BrickColor.new("Institutional white")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.Name = "Blade"
obj2.Parent = model

-- 3 - Mesh
obj3 = Instance.new("BlockMesh")
obj3.Scale = Vector3.new(0.200000003, 0.699999988, 1)
obj3.Parent = obj2

-- 4 - BladeDec
obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.489999712, 19.1000004)) * CFrame.Angles(-0, 0, -0)
obj4.FormFactor = Enum.FormFactor.Custom
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.SmoothPlastic
obj4.Size = Vector3.new(0.600000024, 0.200000003, 4.79999924)
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BrickColor = BrickColor.new("Really black")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Block
obj4.Name = "BladeDec"
obj4.Parent = model

-- 5 - Mesh
obj5 = Instance.new("BlockMesh")
obj5.Scale = Vector3.new(0.200000003, 0.699999988, 1)
obj5.Parent = obj4

-- 6 - BladeDec
obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.489999712, 21.6000099)) * CFrame.Angles(3.141592502594, 0, -0)
obj6.FormFactor = Enum.FormFactor.Custom
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.SmoothPlastic
obj6.Size = Vector3.new(0.600000024, 0.200000033, 0.200000003)
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BrickColor = BrickColor.new("Really black")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Block
obj6.Name = "BladeDec"
obj6.Parent = model

-- 7 - Mesh
obj7 = Instance.new("SpecialMesh")
obj7.MeshType = Enum.MeshType.Wedge
obj7.Scale = Vector3.new(0.200000003, 0.699999988, 1)
obj7.Parent = obj6

-- 8 - BladeDec
obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.690000057, 22.0000057)) * CFrame.Angles(3.141592502594, 0, -0)
obj8.FormFactor = Enum.FormFactor.Custom
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Reflectance = 0.5
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.SmoothPlastic
obj8.Size = Vector3.new(0.200000003, 1, 1)
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BrickColor = BrickColor.new("Institutional white")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Block
obj8.Name = "BladeDec"
obj8.Parent = model

-- 9 - Mesh
obj9 = Instance.new("SpecialMesh")
obj9.MeshType = Enum.MeshType.Wedge
obj9.Scale = Vector3.new(0.200000003, 0.699999988, 1)
obj9.Parent = obj8

-- 10 - HandleDecoration
obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.689999878, 16)) * CFrame.Angles(-0, 0, -0)
obj10.FormFactor = Enum.FormFactor.Custom
obj10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Material = Enum.Material.SmoothPlastic
obj10.Size = Vector3.new(0.200000003, 0.200000003, 1)
obj10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BrickColor = BrickColor.new("Bright blue")
obj10.Friction = 0.30000001192093
obj10.Shape = Enum.PartType.Block
obj10.Name = "HandleDecoration"
obj10.Parent = model

-- 11 - Mesh
obj11 = Instance.new("BlockMesh")
obj11.Scale = Vector3.new(1.10000002, 1.10000002, 0.800000012)
obj11.Parent = obj10

-- 12 - BladeDec
obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.889999926, 19.4000015)) * CFrame.Angles(-0, 0, -0)
obj12.FormFactor = Enum.FormFactor.Custom
obj12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Material = Enum.Material.SmoothPlastic
obj12.Size = Vector3.new(0.600000024, 0.200000003, 5.39999866)
obj12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BrickColor = BrickColor.new("Really black")
obj12.Friction = 0.30000001192093
obj12.Shape = Enum.PartType.Block
obj12.Name = "BladeDec"
obj12.Parent = model

-- 13 - Mesh
obj13 = Instance.new("BlockMesh")
obj13.Scale = Vector3.new(0.200000003, 0.699999988, 1)
obj13.Parent = obj12

-- 14 - HandleDecoration
obj14 = Instance.new("Part")
obj14.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.690000057, 16.6000004)) * CFrame.Angles(-0, 0, -0)
obj14.FormFactor = Enum.FormFactor.Custom
obj14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Material = Enum.Material.SmoothPlastic
obj14.Size = Vector3.new(0.200000003, 1.4000001, 0.200000003)
obj14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BrickColor = BrickColor.new("Really black")
obj14.Friction = 0.30000001192093
obj14.Shape = Enum.PartType.Block
obj14.Name = "HandleDecoration"
obj14.Parent = model

-- 15 - Mesh
obj15 = Instance.new("BlockMesh")
obj15.Scale = Vector3.new(1, 0.800000012, 1)
obj15.Parent = obj14

-- 16 - BladeDec
obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.889999926, 22.2000122)) * CFrame.Angles(3.141592502594, 0, -0)
obj16.FormFactor = Enum.FormFactor.Custom
obj16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Material = Enum.Material.SmoothPlastic
obj16.Size = Vector3.new(0.600000024, 0.200000033, 0.200000003)
obj16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BrickColor = BrickColor.new("Really black")
obj16.Friction = 0.30000001192093
obj16.Shape = Enum.PartType.Block
obj16.Name = "BladeDec"
obj16.Parent = model

-- 17 - Mesh
obj17 = Instance.new("SpecialMesh")
obj17.MeshType = Enum.MeshType.Wedge
obj17.Scale = Vector3.new(0.200000003, 0.699999988, 1)
obj17.Parent = obj16

-- 18 - Handle
obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.690000117, 16)) * CFrame.Angles(-0, 0, -0)
obj18.FormFactor = Enum.FormFactor.Custom
obj18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Material = Enum.Material.SmoothPlastic
obj18.Size = Vector3.new(0.200000003, 0.200000003, 1)
obj18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BrickColor = BrickColor.new("Really black")
obj18.Friction = 0.30000001192093
obj18.Shape = Enum.PartType.Block
obj18.Name = "Handle"
obj18.Parent = model

-- 19 - HandleDecoration
obj19 = Instance.new("Part")
obj19.CFrame = CFrame.new(Vector3.new(-4.79999304, 0.689999819, 15.3999977)) * CFrame.Angles(-0, 0, -0)
obj19.FormFactor = Enum.FormFactor.Custom
obj19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.Material = Enum.Material.SmoothPlastic
obj19.Size = Vector3.new(0.600000024, 0.600000024, 0.200000003)
obj19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj19.BrickColor = BrickColor.new("Really black")
obj19.Friction = 0.30000001192093
obj19.Shape = Enum.PartType.Block
obj19.Name = "HandleDecoration"
obj19.Parent = model

-- 20 - Mesh
obj20 = Instance.new("BlockMesh")
obj20.Parent = obj19

local parts,last = {}
local function scan(parent)
for _,v in pairs(parent:GetChildren()) do
if (v:IsA("BasePart")) then
if (last) then
local w = Instance.new("Weld")
w.Name = ("%s_Weld"):format(v.Name)
w.Part0,w.Part1 = last,v
w.C0 = last.CFrame:inverse()
w.C1 = v.CFrame:inverse()
w.Parent = last
end
last = v
table.insert(parts,v)
end
scan(v)
end
end
scan(model)
for _,v in pairs(parts) do
v.Anchored = false
v.Locked = true
end
for _,v in pairs(parts) do
v.CanCollide = false
end

local handle = Instance.new("Part", model)
handle.FormFactor = "Custom"
handle.BrickColor = BrickColor.new("Bright orange")
handle.Transparency = .5
handle.TopSurface = 0
handle.BottomSurface = 0
handle.Size = Vector3.new(0, 0, 0)

local weldtohandle = Instance.new("Weld", char)
weldtohandle.Part0 = handle
weldtohandle.Part1 = obj18

local wld = Instance.new("Weld", handle)
wld.Part0 = handle
wld.Part1 = ra
wld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(0, math.pi, 0)

rj.C0 = CFrame.new()
rj.C1 = CFrame.new()

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)

local speed = 0.3
local angle = 0
local anglespeed = 1
local STOPtrail = true
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
neckc0 = neck.C0
swordc0 = wld.C0
action = "None"

mouse.KeyDown:connect(function(k)
if k == "e" then
action = 'PowerSlash'
end
if string.byte(k) == 48 then
if action == "Slash1" or action == "Slash2" then return end
humanoid.WalkSpeed = 17
end
end)
mouse.KeyUp:connect(function(k)
if string.byte(k) == 48 then
if action == "Slash1" or action == "Slash2" then return end
humanoid.WalkSpeed = 10
end
end)

slash1 = true
slash2 = false

punchsound = Instance.new("Sound", head)
punchsound.SoundId = "rbxassetid://138285836"
punchsound.Volume = 1
slashsound = Instance.new("Sound", head)
slashsound.SoundId = "rbxasset://sounds/swordslash.mp3"
slashsound.Volume = 1
icebreak = Instance.new("Sound")
icebreak.SoundId = "rbxassetid://138122923"
icebreak.Volume = .75
chargesound = Instance.new("Sound", head)
chargesound.Volume = 1
chargesound.SoundId = "rbxassetid://2101137"
freezes = Instance.new("Sound")
freezes.SoundId = "rbxassetid://2801263"
freezes.Volume = 1
mouse.Button1Down:connect(function()
if slash1 and action == "None" then
slashsound:play()
action = "Slash1"
slash1 = false
slash2 = true
return
elseif slash2 and action == "None" then
slashsound:play()
action = "Slash2"
slash1 = true
slash2 = false
return
end


end)

humanoid.Jumping:connect(function()
action = "Jumping"
end)

local controllerService = game:GetService("ControllerService")
local controller = controllerService:GetChildren()[1]

do
local trail = {}
local obj = obj16
for i = 1, 8 do
local p = Instance.new("Part")
p.BrickColor = obj.BrickColor
p.formFactor = "Custom"
p.Size = Vector3.new(1,1,1)
p.Locked = true
p.Anchored = true
p.CanCollide = false
local mesh = Instance.new("CylinderMesh", p)
mesh.Name = "Mesh"
table.insert(trail,{p,0})
end
local lastpos = obj.Position
local updatethis = 0
local dontdothis = false
game:service'RunService'.Stepped:connect(function()
if STOPtrail == false then
do
local effect = Instance.new("Part", char)
effect.CanCollide = false
effect.FormFactor = 'Custom'
effect.Size = Vector3.new(.2,.2,.2)
effect.Transparency = .1
effect.Anchored = true
effect.CFrame = obj2.CFrame * CFrame.new(math.random(-1,1)/2, -math.random(-2,4), math.random(-1,1)/2) * CFrame.Angles(math.random(1,4), math.random(1,4), math.random(1,4))
effect.BrickColor = obj16.BrickColor
local effectmesh = Instance.new("BlockMesh", effect)
effectmesh.Scale = Vector3.new(.5, .5, .5)
coroutine.wrap(function()
while wait() and effect and effect.Transparency <= 1 do
effectmesh.Scale = effectmesh.Scale + Vector3.new(.25, .25, .25)
effect.Transparency = effect.Transparency + .1
end
effect:Destroy()
end)()
end
updatethis = ((updatethis) % 8) + 1
local dstnc = (obj.Position - lastpos).magnitude
trail[updatethis][1].Mesh.Scale = Vector3.new(.2,dstnc,.2)
trail[updatethis][1].Parent = obj.Parent
trail[updatethis][1].CFrame = CFrame.new((obj.Position + lastpos)/2,obj.Position) * CFrame.Angles(math.pi/2, 0, 0)
trail[updatethis][2] = 0
for i,v in pairs(trail) do
v[2] = v[2] + .15
v[1].Transparency = v[2]
end
lastpos = obj.Position
else
for i,v in pairs(trail) do
v[2] = v[2] + 1
v[1].Transparency = v[2]
end
end
lastpos = obj.Position
end)
end


while wait() do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
local rscf = rsc0
local lscf = lsc0
local rlcf = rlc0
local llcf = llc0
local rjcf = CFrame.new()
local ncf = neckc0
local hndlcf = swordc0
local ray = Ray.new(rootpart.Position, Vector3.new(0, -5.1, 0))
local hitz, enz = workspace:FindPartOnRay(ray, char)
if not hitz and torso.Velocity.y <= -0.5 then
if action == "None" then
speed = 0.3
anglespeed = 1/2
rjcf = rootc0 * CFrame.Angles(math.pi/18, 0, 0)
rscf = rsc0 * CFrame.Angles(-math.pi/.8, 0, 0)
lscf = lsc0 * CFrame.Angles(-math.pi/.8, 0, 0)
rlcf = rlc0 * CFrame.new(0, .4, -.3) * CFrame.Angles(-math.pi/20, 0, math.rad(5))
llcf = llc0 * CFrame.new(0, .4, -.3) * CFrame.Angles(-math.pi/20, 0, -math.rad(5))
end
elseif action == "Jumping" then
for waiting = 0, 10 do
rjcf = rootc0 * CFrame.Angles(-math.pi/18, 0, 0)
rscf = rsc0 * CFrame.Angles(-math.pi/10, 0, 0)
lscf = lsc0 * CFrame.Angles(-math.pi/10, 0, 0)
rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) * CFrame.Angles(-math.pi/14, 0, 0)
llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
hndlcf = swordc0
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
wait()
end
action = "None"
elseif action == "PowerSlash" then
speed = .3
anglespeed = 0
for slash1 = 0, 40 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0 * CFrame.Angles(math.pi*.25, 0, 0)
rjcf = rootc0
rscf = rsc0 * CFrame.Angles(math.pi/1.25, 0, 0)
lscf = lsc0
rlcf = rlc0 * CFrame.Angles(0, 0, math.rad(5.5))
llcf = llc0 * CFrame.Angles(0, 0, -math.rad(5.5))
hndlcf = swordc0 * CFrame.Angles(math.pi*.25, 0, 0)
if slash1 >= 10 then
local effect = Instance.new("Part", char)
effect.CanCollide = false
effect.FormFactor = 'Custom'
effect.Size = Vector3.new(.25,.25,.25)
effect.Transparency = .1
effect.Anchored = true
effect.CFrame = obj2.CFrame * CFrame.new(math.random(-1,1), math.random(-1,5), math.random(-1,1)) * CFrame.Angles(math.random(1,4), math.random(1,4), math.random(1,4))
effect.BrickColor = BrickColor.new"Bright blue"
local effectmesh = Instance.new("BlockMesh", effect)
coroutine.wrap(function()
if not chargesound.IsPlaying then chargesound:play() end
while wait() and effect and effect.Transparency <= 1 do
effectmesh.Scale = effectmesh.Scale + Vector3.new(.55, .55, .55)
effect.Transparency = effect.Transparency + .1
end
effect:Destroy()
end)()
end
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then
anglespeed = 5
rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.55, 0, math.rad(5))
llcf = llc0 * CFrame.Angles(math.sin(angle)*.55, 0, -math.rad(5))
end
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
wait()
end
for slash2 = 0, 20 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0
rjcf = rootc0
rscf = rsc0 * CFrame.Angles(math.pi/2, 0, math.pi/2.5)
lscf = lsc0 * CFrame.Angles(math.pi/2, 0, -math.pi/2.5)
rlcf = rlc0 * CFrame.Angles(0, 0, math.rad(5.5))
llcf = llc0 * CFrame.Angles(0, 0, -math.rad(5.5))
hndlcf = swordc0 * CFrame.Angles(-math.pi/2, 0, 0)
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then
anglespeed = 5
rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.55, 0, math.rad(5.5))
llcf = llc0 * CFrame.Angles(math.sin(angle)*.55, 0, -math.rad(5.5))
end
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
wait()
end
for slash3 = 0, 10 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0
rjcf = rootc0
rscf = rsc0 * CFrame.Angles(math.pi/2, 0, -math.pi/2.5)
lscf = lsc0 * CFrame.Angles(math.pi/2, 0, math.pi/2.5)
rlcf = rlc0 * CFrame.Angles(0, 0, math.rad(5.5))
llcf = llc0 * CFrame.Angles(0, 0, -math.rad(5.5))
hndlcf = swordc0 * CFrame.Angles(-math.pi/2, 0, 0)
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then
anglespeed = 5
rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.55, 0, math.rad(5.5))
llcf = llc0 * CFrame.Angles(math.sin(angle)*.55, 0, -math.rad(5.5))
end
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
wait()
end
coroutine.wrap(function()
chargesound:stop()
local circle = Instance.new("Part", char)
circle.Anchored = true
circle.FormFactor = 'Custom'
circle.BrickColor = BrickColor.new'Bright blue'
circle.Size = Vector3.new(3, .2, 3)
circle.Transparency = .45
circle.CFrame = torso.CFrame * CFrame.new(0, -3, 0)
game:service'Debris':AddItem(circle, 3)
Instance.new("CylinderMesh", circle)
for i = 1, 5 do
circle.Mesh.Scale = circle.Mesh.Scale + Vector3.new(1+i, 0, 1+i)
wait()
end
for angle = 1, 360, 5 do
local p = Instance.new('Part', circle)
p.Size = Vector3.new(4, 8, 4)
p.BrickColor = BrickColor.new("Bright blue")
p.Anchored = true
p.CFrame = circle.CFrame
* CFrame.new(0, -5, 0)
* CFrame.Angles(0, math.rad(angle), 0)
* CFrame.new(0, 0, 30) 
* CFrame.Angles(math.random(-1,1)/2, 0, math.random(-1,1)/2)
Instance.new("SpecialMesh", p).MeshId = "rbxassetid://1033714"
p.Mesh.Scale = Vector3.new(7,40,7)
end
for i,v in pairs(workspace:children()) do
coroutine.wrap(function()
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - circle.Position).magnitude <= 29 then
v:findFirstChild("Torso").Anchored = true
local freezesound = freezes:clone()
freezesound.Parent = v:findFirstChild'Torso'
freezesound:play()
for i = 1, 5 do
coroutine.wrap(function()
local freeze = Instance.new("Part", workspace)
freeze.Anchored = true
freeze.Size = Vector3.new(4.5,4.1,4.9)
freeze.CFrame = v:findFirstChild'Torso'.CFrame * CFrame.new(math.random(-2, 2), -math.random() - 2.5, math.random(-2, 2)) * CFrame.Angles(math.random(-2, 2),math.random(-2, 2),math.random(-2, 2))
freeze.CanCollide = false
freeze.TopSurface = 0
freeze.BottomSurface = 0
freeze.Transparency = .5
freeze.BrickColor = BrickColor.new'Bright blue'
wait(3)
freeze.Anchored = false
freeze:breakJoints()
freeze:breakJoints()
freeze:breakJoints()
freeze:breakJoints()
game:service'Debris':AddItem(freeze, 5)
end)()
end
v:findFirstChild("Humanoid"):TakeDamage(30.9)
wait(3)
local icebreaksound = icebreak:clone()
icebreaksound.Parent = v:findFirstChild'Torso'
icebreaksound:play()
v:findFirstChild("Torso").Anchored = false
end
end)()
end
end)()
action = 'None'
elseif action == "Slash1" then
STOPtrail = false
speed = 0.3
anglespeed = 0
for slash1 = 0, 12 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0 * CFrame.Angles(0, -math.rad(45), 0)
rjcf = rootc0 * CFrame.new(0, 0, -.6) * CFrame.Angles(0, math.rad(45), 0)
rscf = rsc0 * CFrame.new(-.35, 0, -.5) * CFrame.Angles(math.rad(165), 0, -math.rad(65))
lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.rad(165), 0, math.rad(25))
rlcf = rlc0 * CFrame.Angles(math.rad(12.5), -math.rad(45), math.rad(10.5))
llcf = llc0 * CFrame.Angles(-math.rad(12.5), -math.rad(45), -math.rad(10.5))
hndlcf = swordc0 * CFrame.Angles(math.pi/2, math.pi, -math.rad(105))
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then
anglespeed = 5
rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.55, -math.rad(45), math.rad(10.5))
llcf = llc0 * CFrame.Angles(math.sin(angle)*.55, -math.rad(45), -math.rad(10.5))
end
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
wait()
end
coroutine.wrap(function()
for slash2 = 0, 19 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0 * CFrame.Angles(-math.pi/15, -math.rad(45), 0)
rjcf = rootc0 * CFrame.new(0, 0, -.6) * CFrame.Angles(0, math.rad(45), 0)
rscf = rsc0 * CFrame.new(-.35, 0, -.5) * CFrame.Angles(math.rad(45), 0, -math.rad(65))
lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.rad(45), 0, math.rad(25))
rlcf = rlc0 * CFrame.Angles(math.rad(12.5), -math.rad(45), math.rad(10.5))
llcf = llc0 * CFrame.Angles(-math.rad(12.5), -math.rad(45), -math.rad(10.5))
hndlcf = swordc0 * CFrame.Angles(math.pi/2, math.pi, -math.rad(105))
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then
anglespeed = 5
rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.55, -math.rad(45), math.rad(10.5))
llcf = llc0 * CFrame.Angles(math.sin(angle)*.55, -math.rad(45), -math.rad(10.5))
end
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
wait()
end
STOPtrail = true
end)()
wait(.05)
for i,v in pairs(workspace:children()) do
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - obj2.Position).magnitude <= 5 then
coroutine.wrap(function()
v:findFirstChild("Humanoid"):TakeDamage(20.25)
punchsound:play()
v:findFirstChild'Humanoid'.PlatformStand = true
local gyro = Instance.new("BodyGyro", v:findFirstChild'Torso')
gyro.maxTorque = Vector3.new(1/0,1/0,1/0)
gyro.cframe = torso.CFrame * CFrame.Angles(math.pi/2, 0, 0)
game:service'Debris':AddItem(gyro, .1)
wait(.75)
v:findFirstChild'Humanoid'.PlatformStand = false
end)()
end
end
wait(.15)
for i,v in pairs(workspace:children()) do
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - obj2.Position).magnitude <= 5 then
v:findFirstChild("Humanoid"):TakeDamage(20.25)
if not punchsound.IsPlaying then
coroutine.wrap(function()
punchsound:play()
v:findFirstChild'Humanoid'.PlatformStand = true
local gyro = Instance.new("BodyGyro", v:findFirstChild'Torso')
gyro.maxTorque = Vector3.new(1/0,1/0,1/0)
gyro.cframe = torso.CFrame * CFrame.Angles(math.pi/2, 0, 0)
game:service'Debris':AddItem(gyro, .1)
wait(.75)
v:findFirstChild'Humanoid'.PlatformStand = false
end)()
end
end
end
wait(.2)
punchsound:stop()
humanoid.WalkSpeed = 10
controller.Parent = controllerService
action="None"
elseif action == "Slash2" then
STOPtrail = false
humanoid.WalkSpeed = 10
speed = 0.3
anglespeed = 0
for slash1 = 0, 12 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0 * CFrame.Angles(0, 0, 0)
rjcf = rootc0 * CFrame.Angles(0, -math.rad(15), 0)
rscf = rsc0 * CFrame.Angles(math.pi/2.2, 0, math.pi/2.5)
lscf = lsc0 * CFrame.Angles(math.pi/14, 0, math.pi/24)
rlcf = rlc0 * CFrame.Angles(-math.rad(2.5), 0, math.rad(5))
llcf = llc0 * CFrame.Angles(math.rad(4.5), 0, -math.rad(5))
hndlcf = swordc0 * CFrame.Angles(-math.pi/8, -math.pi/2, 0)
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then
anglespeed = 5
rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.55, 0, math.rad(.5))
llcf = llc0 * CFrame.Angles(math.sin(angle)*.55, 0, -math.rad(.5))
end
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
wait()
end
coroutine.wrap(function()
for slash2 = 0, 19 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0 * CFrame.Angles(0, 0, 0)
rjcf = rootc0 * CFrame.new(0, 0, -.3) * CFrame.Angles(0, math.rad(15), 0)
rscf = rsc0 * CFrame.Angles(math.pi/2.2, 0, -math.pi/4)
lscf = lsc0 * CFrame.Angles(-math.rad(30), 0, -math.pi/19)
rlcf = rlc0 * CFrame.Angles(math.rad(10.5), 0, math.rad(5))
llcf = llc0 * CFrame.Angles(-math.rad(.5), 0, -math.rad(5))
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 2 then
anglespeed = 5
rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.55, 0, math.rad(.5))
llcf = llc0 * CFrame.Angles(math.sin(angle)*.55, 0, -math.rad(.5))
end
hndlcf = swordc0 * CFrame.Angles(-math.pi/2, math.pi/2, math.pi/16)
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
wait()
end
STOPtrail = true
end)()
wait(.05)
for i,v in pairs(workspace:children()) do
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - obj2.Position).magnitude <= 5 then
coroutine.wrap(function()
v:findFirstChild("Humanoid"):TakeDamage(10.25)
punchsound:play()
v:findFirstChild'Humanoid'.PlatformStand = true
local gyro = Instance.new("BodyGyro", v:findFirstChild'Torso')
gyro.maxTorque = Vector3.new(1/0,1/0,1/0)
gyro.cframe = torso.CFrame * CFrame.Angles(math.pi/2, 0, 0)
game:service'Debris':AddItem(gyro, .05)
wait(.75)
v:findFirstChild'Humanoid'.PlatformStand = false
end)()
end
end
wait(.15)
for i,v in pairs(workspace:children()) do
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - obj2.Position).magnitude <= 5 then
v:findFirstChild("Humanoid"):TakeDamage(30.25)
coroutine.wrap(function()
if not punchsound.IsPlaying then
punchsound:play()
v:findFirstChild'Humanoid'.PlatformStand = true
local gyro = Instance.new("BodyGyro", v:findFirstChild'Torso')
gyro.maxTorque = Vector3.new(1/0,1/0,1/0)
gyro.cframe = torso.CFrame * CFrame.Angles(math.pi/2, 0, 0)
game:service'Debris':AddItem(gyro, .05)
wait(.75)
v:findFirstChild'Humanoid'.PlatformStand = false
end
end)()
end
end
wait(.4)
punchsound:stop()
action="None"
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
if action == "None" then
speed = 0.3
anglespeed = 1/2.5
ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.075, 0, 0)
rjcf = rootc0
rscf = rsc0 * CFrame.Angles(-math.pi/24+math.sin(-angle)*0.05, -math.rad(15), math.rad(5))
lscf = lsc0 * CFrame.Angles(-math.pi/24+math.sin(-angle)*0.05, 0, -math.rad(5))
rlcf = rlc0 * CFrame.Angles(-math.rad(2.5), 0, math.rad(2.5))
llcf = llc0 * CFrame.Angles(math.rad(4.5), 0, -math.rad(2.5))
hndlcf = swordc0 * CFrame.Angles(math.pi/14, 0, 0)
end
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 16 then
if action == "None" then
speed = 0.3
anglespeed = 3
ncf = neckc0 * CFrame.Angles(0, 0, 0)
rjcf = rootc0
rscf = rsc0 * CFrame.Angles(-math.pi/24+math.sin(angle)*.05, -math.rad(15), math.rad(5))
lscf = lsc0 * CFrame.Angles(math.sin(-angle)*.65, 0, -math.rad(5))
rlcf = rlc0 * CFrame.new(0, .075 + -math.cos(-angle)*.075, -.05+math.sin(angle)*0.1) * CFrame.Angles(math.sin(-angle)*.45, 0, math.rad(.5))
llcf = llc0 * CFrame.new(0, .075 - -math.cos(angle)*.075, -.05-math.sin(angle)*0.1) * CFrame.Angles(math.sin(angle)*.45, 0, -math.rad(.5))
hndlcf = swordc0 * CFrame.Angles(math.pi/14, 0, 0)
end
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 16 then
if action == "None" then
speed = 0.3
anglespeed = 4
ncf = neckc0 * CFrame.Angles(0, -math.sin(angle)*.1, 0)
rscf = rsc0 * CFrame.Angles(-math.pi/3.5,0,0)
lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(-angle)*1.1, 0, math.abs(mvmnt)*0.02)
rjcf = rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.abs(math.sin(angle))*0.055 + -math.pi/18, math.sin(angle)*.1, math.sin(angle)*.045)
rlcf = rlc0 * CFrame.new(0, .3 + -math.cos(-angle)*.3, -.2+math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
llcf = llc0 * CFrame.new(0, .3 - -math.cos(angle)*.3, -.05-math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
hndlcf = swordc0 * CFrame.Angles(-math.pi/2, 0, 0)
end
end
rm.C0 = clerp(rm.C0,rscf,speed)
lm.C0 = clerp(lm.C0,lscf,speed)
rj.C0 = clerp(rj.C0,rjcf,speed)
neck.C0 = clerp(neck.C0,ncf,speed)
rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
llegm.C0 = clerp(llegm.C0,llcf,speed)
wld.C0 = clerp(wld.C0,hndlcf,speed)
end
