--Riptide.lua
--made by ace28545 and madiik
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
local handle = Instance.new("Part", model)
handle.Material = "SmoothPlastic"
handle.FormFactor = "Custom"
handle.BrickColor = BrickColor.new("Bright orange")
handle.Transparency = 1
handle.TopSurface = 0
handle.BottomSurface = 0
handle.Size = Vector3.new(0, 0, 0)
local airtop = Instance.new("Part", model)
airtop.Material = "SmoothPlastic"
airtop.FormFactor = "Custom"
airtop.BrickColor = BrickColor.new("White")
airtop.Transparency = 1
airtop.TopSurface = 0
airtop.BottomSurface = 0
airtop.Size = Vector3.new(0, 0, 0)
local wld74124 = Instance.new("Weld", airtop)
wld74124.Part0 = airtop
wld74124.Part1 = handle
wld74124.C1 = CFrame.Angles(math.pi/2, 0, 0)
wld74124.C0 = CFrame.new(0, 3.5, 0)
local wld = Instance.new("Weld", handle)
wld.Part0 = handle
wld.Part1 = ra
wld.C1 = CFrame.new(0, -1, 0)
local handle2 = Instance.new("Part", model)
handle2.Material = "SmoothPlastic"
handle2.Transparency = 1
handle2.FormFactor = "Custom"
handle2.TopSurface = 0
handle2.BottomSurface = 0
handle2.Size = Vector3.new(0, 4, 0)
local wld2 = Instance.new("Weld", handle2)
wld2.Part0 = handle2
wld2.Part1 = handle
wld2.C1 = CFrame.Angles(math.pi/2, 0, 0)
wld2.C0 = CFrame.new(0, 1.5, 0)
local handle3 = Instance.new("Part", model)
handle3.Material = "SmoothPlastic"
handle3.FormFactor = "Custom"
handle3.BrickColor = BrickColor.new("Dark stone grey")
handle3.TopSurface = 0
handle3.BottomSurface = 0
handle3.Size = Vector3.new(.3, 0, .75)
local handle3Mesh = Instance.new("SpecialMesh",handle3)
handle3Mesh.MeshType = "FileMesh"
handle3Mesh.MeshId = "http://www.roblox.com/asset/?id=124121136"
handle3Mesh.TextureId = "http://www.roblox.com/asset/?id=124121617"
handle3Mesh.Scale = Vector3.new(1.4,1.4,1.4)
local wld3 = Instance.new("Weld", handle3)
wld3.Part0 = handle3
wld3.Part1 = handle2
--wld3.C1 = CFrame.new(0, 1, 0)
--wld3.C1 = CFrame.fromEulerAnglesXYZ(0, 0.3, 0) * CFrame.new(0, 0 ,0)
wld3.C0 = CFrame.new(0, -0.3, 0) * CFrame.Angles(math.rad(180),math.rad(360),math.rad(0))
for i,v in pairs(model:children()) do
if v:IsA("Part") then
v.CanCollide = false
end
end
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
slashsound = Instance.new("Sound", head)
slashsound.SoundId = "rbxassetid://10209645"
slashsound.Volume = 1
icebreak = Instance.new("Sound")
icebreak.SoundId = "rbxassetid://87015121"
icebreak.Volume = .75
icebreak.Pitch = 1.5
chargesound = Instance.new("Sound", head)
chargesound.Volume = 1.5
chargesound.SoundId = "rbxassetid://2101137"
freezes = Instance.new("Sound")
freezes.SoundId = "rbxassetid://41763367"
freezes.Volume = 3
freezes.Pitch = 2
hitsound = Instance.new("Sound", head)
hitsound.SoundId = "rbxassetid://10209590"
hitsound.Volume = 2
hitsound.Pitch = 1
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
local obj = airtop
for i = 1, 8 do
local p = Instance.new("Part")
p.Material = "SmoothPlastic"
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
hndlcf = swordc0 * CFrame.Angles(math.pi/2 - math.pi*.25, 0, 0)
if slash1 >= 10 then
local effect = Instance.new("Part", char)
effect.Material = "SmoothPlastic"
effect.CanCollide = false
effect.FormFactor = 'Custom'
effect.Size = Vector3.new(.25,.25,.25)
effect.Transparency = .1
effect.Anchored = true
effect.CFrame = handle.CFrame * CFrame.new(0, 0, -3.5) * CFrame.Angles(math.random(1,4), math.random(1,4), math.random(1,4))
effect.BrickColor = BrickColor.new"Bright blue"
local effectmesh = Instance.new("BlockMesh", effect)
coroutine.wrap(function()
if not chargesound.IsPlaying then chargesound:play() end
while wait() and effect and effect.Transparency <= 1 do
effectmesh.Scale = effectmesh.Scale + Vector3.new(2.25, 2.25, 2.25)
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
hndlcf = swordc0 * CFrame.Angles(math.pi/2, 0, 0)
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
hndlcf = swordc0 * CFrame.Angles(math.pi/2, 0, 0)
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
circle.Material = "SmoothPlastic"
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
p.Material = "SmoothPlastic"
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
freeze.Material = "SmoothPlastic"
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
v:findFirstChild("Humanoid"):TakeDamage(28.9)
hitsound:play()
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
for slash1 = 0, 8 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0 * CFrame.Angles(0, -math.rad(45), 0)
rjcf = rootc0 * CFrame.new(0, 0, -.6) * CFrame.Angles(0, math.rad(45), 0)
rscf = rsc0 * CFrame.new(-.35, 0, -.5) * CFrame.Angles(math.rad(165), 0, -math.rad(65))
lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.rad(165), 0, math.rad(25))
rlcf = rlc0 * CFrame.Angles(math.rad(12.5), -math.rad(45), math.rad(10.5))
llcf = llc0 * CFrame.Angles(-math.rad(12.5), -math.rad(45), -math.rad(10.5))
hndlcf = swordc0 * CFrame.Angles(math.pi/2, 0, -math.rad(105))
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
for slash2 = 0, 15 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0 * CFrame.Angles(-math.pi/15, -math.rad(45), 0)
rjcf = rootc0 * CFrame.new(0, 0, -.6) * CFrame.Angles(0, math.rad(45), 0)
rscf = rsc0 * CFrame.new(-.35, 0, -.5) * CFrame.Angles(math.rad(45), 0, -math.rad(65))
lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.rad(45), 0, math.rad(25))
rlcf = rlc0 * CFrame.Angles(math.rad(12.5), -math.rad(45), math.rad(10.5))
llcf = llc0 * CFrame.Angles(-math.rad(12.5), -math.rad(45), -math.rad(10.5))
hndlcf = swordc0 * CFrame.Angles(math.pi/3, 0, -math.rad(105))
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
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - handle2.Position).magnitude <= 5 then
v:findFirstChild("Humanoid"):TakeDamage(21.25)
hitsound:play()
end
end
wait(.15)
for i,v in pairs(workspace:children()) do
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - handle2.Position).magnitude <= 5 then
v:findFirstChild("Humanoid"):TakeDamage(21.25)
hitsound:play()
end
end
wait(.3)
humanoid.WalkSpeed = 10
controller.Parent = controllerService
action="None"
elseif action == "Slash2" then
STOPtrail = false
humanoid.WalkSpeed = 10
speed = 0.3
anglespeed = 0
for slash1 = 0, 8 do
angle = (angle % 100) + anglespeed/10
mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
ncf = neckc0 * CFrame.Angles(0, 0, 0)
rjcf = rootc0 * CFrame.Angles(0, -math.rad(15), 0)
rscf = rsc0 * CFrame.Angles(math.pi/2.2, 0, math.pi/2.5)
lscf = lsc0 * CFrame.Angles(math.pi/14, 0, math.pi/24)
rlcf = rlc0 * CFrame.Angles(-math.rad(2.5), 0, math.rad(5))
llcf = llc0 * CFrame.Angles(math.rad(4.5), 0, -math.rad(5))
hndlcf = swordc0 * CFrame.Angles(math.pi/2, math.pi/2, 0)
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
for slash2 = 0, 15 do
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
hndlcf = swordc0 * CFrame.Angles(math.pi/2, math.pi/2, math.pi/16)
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
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - handle2.Position).magnitude <= 5 then
v:findFirstChild("Humanoid"):TakeDamage(22.25)
hitsound:play()
end
end
wait(.15)
for i,v in pairs(workspace:children()) do
if v and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - handle2.Position).magnitude <= 5 then
v:findFirstChild("Humanoid"):TakeDamage(22.25)
hitsound:play()
end
end
wait(.3)
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
hndlcf = swordc0 * CFrame.Angles(math.pi/2, 0, 0)
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
print("Riptide Has Loaded")
