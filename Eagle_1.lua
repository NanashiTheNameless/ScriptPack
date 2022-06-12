if script.Parent.className ~= "HopperBin" then
bin = Instance.new("HopperBin")
bin.Name = "Eagle"
bin.Parent = game.Players.LocalPlayer.Backpack
script.Parent = bin
end
eaglesize = 1.7
speed = 50
bin = script.Parent
bv = Instance.new("BodyVelocity")
bv.Name = "BV"
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bg = Instance.new("BodyGyro")
bg.Name = "BG"
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
morphed = false
morphing = false
EagleStreamer = true
face = nil
mesh = nil
-- Eagle MeshID         http://www.roblox.com/asset/?id=51226819
--Eagle TextureID     http://www.roblox.com/asset/?id=51226825
-- Eagle Screach        http://www.roblox.com/asset/?id=51322486
function EagleMorph()
morphing = true
player = bin.Parent.Parent.Character
s = Instance.new("Smoke")
s.Name = "Smokez"
s.Color = Color3.new(0.65,0,0.8)
s.RiseVelocity = 0.5
s.Size = 12
s.Opacity = 1
s.Parent = player.Torso
wait(1.8)
s:remove()
p = Instance.new("Part")
p.Name = "Eagle"
p.formFactor = "Custom"
p.Size = Vector3.new(0.5,0.5,0.5)
p.Position = player.Torso.Position
p.TopSurface = 0
p.BottomSurface = 0
p.Locked = true
p.CanCollide = true
p.Anchored = false
pm = Instance.new("SpecialMesh")
pm.Name = "EagleMesh"
pm.MeshId = "http://www.roblox.com/asset/?id=51226819"
pm.TextureId = "http://www.roblox.com/asset/?id=51226825"
pm.Scale = Vector3.new(eaglesize,eaglesize,eaglesize)
pm.Parent = p
mesh = pm
p.Parent = player
pw = Instance.new("Weld")
pw.Parent = p
pw.Part0 = player.Torso
pw.Part1 = p
pw.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/1.65,0,0)
b = Instance.new("Part")
b.Name = "EagleHoldUp"
b.formFactor = "Custom"
b.Size = Vector3.new(0.5,0.5,0.5)
b.Position = player.Torso.Position
b.TopSurface = 0
b.BottomSurface = 0
b.Locked = true
b.CanCollide = false
b.Anchored = false
bw = Instance.new("Weld")
bw.Parent = b
bw.Part0 = player.Torso
bw.Part1 = b
b.Parent = player
bv.velocity = Vector3.new(0,0,0)
bv.Parent = b
bg.cframe = player.Torso.CFrame * CFrame.Angles(0,0,0)
bg.Parent = b
for i, v in pairs(player:children()) do
if v.className == "Part" and v.Name ~= "Eagle" then
v.Transparency = 1
end
if v.className == "Hat" then
if v:findFirstChild("Handle") ~= nil then
v.Handle.Transparency = 1
end
end
if v.Name == "Head" then
if v:findFirstChild("face") ~= nil then
face = v.face
face.Parent = nil
end
end
end
morphing = false
morphed = true
player.Humanoid.PlatformStand = true
end
function ShrinkMesh()
for i = 1, eaglesize*10 do
mesh.Scale = mesh.Scale + Vector3.new(-0.1,-0.1,-0.1)
wait(0.065)
end
end
function NormalMorph()
morphing = true
player = bin.Parent.Parent.Character
s2 = Instance.new("Smoke")
s2.Name = "Smokez"
s2.Color = Color3.new(0,0.8,0.65)
s2.RiseVelocity = 0.5
s2.Size = 12
s2.Opacity = 1
s2.Parent = player.Torso
coroutine.resume(coroutine.create(ShrinkMesh))
wait(1.8)
s2:remove()
for i, v in pairs(player:children()) do
if v.className == "Part" then
v.Transparency = 0
end
if v.Name == "Eagle" or v.Name == "EagleHoldUp" and v.className == "Part" then
v:remove()
end
if v.className == "Hat" then
if v:findFirstChild("Handle") ~= nil then
v.Handle.Transparency = 0
end
end
if v.Name == "Head" then
face.Parent = v
end
end
morphing = false
morphed = false
player.Humanoid.PlatformStand = false
end
function Del(E, T)
wait(T)
E:remove()
end
function Streamer(ob)
for i = 1, 12 do
ob.Transparency = ob.Transparency + 0.05
wait(0.01)
end
coroutine.resume(coroutine.create(Del), ob, 0)
end
down = false
function onButton1Down(mouse)
down = true
player = bin.Parent.Parent.Character
while down == true do
if morphed == true then
player.Humanoid.PlatformStand = true
bv.velocity = CFrame.new(player.Torso.Position, mouse.Hit.p).lookVector * speed
bg.cframe = CFrame.new(player.Torso.Position, mouse.Hit.p) * CFrame.Angles(0,0,0)
if EagleStreamer == true then
if player:findFirstChild("Eagle") ~= nil then
ea = player.Eagle:Clone()
ea.Anchored = true
ea.Name = "EagleEcho"
ea.CanCollide = false
ea.Locked = true
ea.Parent = player
ea.CFrame = player.Eagle.CFrame
ea.Transparency = 0.4
coroutine.resume(coroutine.create(Streamer), ea)
end
end
end
wait()
end
end
function onButton1Up(mouse)
bv.velocity = CFrame.new(player.Torso.Position, mouse.Hit.p).lookVector * 4
player = bin.Parent.Parent.Character
down = false
end
function KillRadius(ob, mag, helth)
for i, v in pairs(workspace:children()) do
if v.className == "Model" and v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("Torso") ~= nil then
if v.Name ~= bin.Parent.Parent.Character.Name then
if (ob.Position - v.Torso.Position).magnitude < mag then
v.Humanoid.Health = v.Humanoid.Health - helth
end
end
end
end
end
function Splat(ob, rad, dmg)
ob.Touched:connect(function(hit)
if hit.Parent.Name ~= bin.Parent.Parent.Character.Name then
ob.CFrame = CFrame.new(ob.Position.x,ob.Position.y+hit.Size.y/2,ob.Position.z)
ob.Anchored = true
ob.Meshz.Scale = Vector3.new(1,0.15,1)
coroutine.resume(coroutine.create(KillRadius), ob, rad, dmg)
for i = 1, 12 do
ob.Meshz.Scale = ob.Meshz.Scale + Vector3.new(0.42,0,0.42)
ob.Transparency = ob.Transparency + 0.05
wait()
end
ob:remove()
end
end)
end
function Poop()
player = bin.Parent.Parent.Character
if morphed == true then
poo = Instance.new("Part")
poo.Name = "Eagle Poop"
poo.formFactor = "Symmetric"
poo.Size = Vector3.new(2,2,2)
poo.BrickColor = BrickColor.new("White")
poo.Locked = true
poo.CanCollide = true
poo.Anchored = false
poo.TopSurface = 0
poo.BottomSurface = 0
poo.Position = player.Eagle.Position + Vector3.new(0,-3.4,0)
poom = Instance.new("CylinderMesh")
poom.Name = "Meshz"
poom.Parent = poo
poom.Scale = Vector3.new(0.25,0.65,0.25)
poov = Instance.new("BodyVelocity")
poov.maxForce = Vector3.new(math.huge,math.huge,math.huge)
poov.velocity = Vector3.new(0,-75,0)
poov.Parent = poo
poo.Parent = player
coroutine.resume(coroutine.create(Splat), poo, 4.4, 40)
end
end
function Tranz(ob)
for i = 1, 10 do
ob.Scale = ob.Scale - Vector3.new(0.1,0,0.1)
ob.Parent.Transparency = ob.Parent.Transparency + 0.05
wait(0.025)
end
ob.Parent:remove()
end
function Partz(col, sta, en)
r = Instance.new("Part")
r.Parent = bin.Parent.Parent.Character
r.Name = "Ray Line"
r.formFactor = "Custom"
r.Size = Vector3.new(0.4,1,0.4)
r.BrickColor = BrickColor.new(col)
r.CanCollide = false
r.Locked = false
r.Anchored = true
r.CFrame = CFrame.new((sta + en)/2, sta) * CFrame.Angles(math.pi/2,0,0)
r.TopSurface = 0
r.Reflectance = 0.1
r.BottomSurface = 0
rm = Instance.new("CylinderMesh")
rm.Parent = r
rm.Name = "LineMesh"
rm.Scale = Vector3.new(1,((sta - en).magnitude)+0.2,1)
coroutine.resume(coroutine.create(Tranz), rm)
end
function Grow(ob, ob2, ob3)
coroutine.resume(coroutine.create(KillRadius), ob.Parent, 6, 20)
for i = 1, 10 do
ob.Scale = ob.Scale + Vector3.new(3.5,3.5,3.5)
ob.Parent.Transparency = ob.Parent.Transparency + 0.1
ob2.Scale = ob2.Scale + Vector3.new(2.25,2.25,2.25)
ob2.Parent.Transparency = ob2.Parent.Transparency + 0.07
ob3.Scale = ob3.Scale + Vector3.new(1.5,1.5,1.5)
ob3.Parent.Transparency = ob3.Parent.Transparency + 0.04
wait(0.028)
end
ob.Parent:remove()
ob2.Parent:remove()
ob3.Parent:remove()
end
function Grow2(ob, ob2, ob3)
coroutine.resume(coroutine.create(KillRadius), ob.Parent, 6, 70)
for i = 1, 10 do
ob.Scale = ob.Scale + Vector3.new(3.5,0,3.5)
ob.Parent.Transparency = ob.Parent.Transparency + 0.1
ob2.Scale = ob2.Scale + Vector3.new(2.25,0,2.25)
ob2.Parent.Transparency = ob2.Parent.Transparency + 0.07
ob3.Scale = ob3.Scale + Vector3.new(1.5,0,1.5)
ob3.Parent.Transparency = ob3.Parent.Transparency + 0.04
wait(0.028)
end
ob.Parent:remove()
ob2.Parent:remove()
ob3.Parent:remove()
end
function EndShot(pos)
se = Instance.new("Part")
se.formFactor = "Symmetric"
se.Size = Vector3.new(1,1,1)
se.Locked = true
se.Anchored = true
se.CanCollide = false
se.BrickColor = BrickColor.new("Really black")
se.Reflectance = 0
se.TopSurface = 0
se.BottomSurface = 0
se.CFrame = CFrame.new(pos)
se.Parent = bin.Parent.Parent.Character
se.Name = "Bewm1"
sem = Instance.new("SpecialMesh")
sem.Parent = se
sem.MeshType = "Sphere"
se2 = Instance.new("Part")
se2.formFactor = "Symmetric"
se2.Size = Vector3.new(1,1,1)
se2.Locked = true
se2.Anchored = true
se2.CanCollide = false
se2.BrickColor = BrickColor.new("Really black")
se2.Reflectance = 0
se2.TopSurface = 0
se2.BottomSurface = 0
se2.CFrame = CFrame.new(pos)
se2.Parent = bin.Parent.Parent.Character
se2.Name = "Bewm1"
sem2 = Instance.new("SpecialMesh")
sem2.Parent = se2
sem2.MeshType = "Sphere"
se3 = Instance.new("Part")
se3.formFactor = "Symmetric"
se3.Size = Vector3.new(1,1,1)
se3.Locked = true
se3.Anchored = true
se3.CanCollide = false
se3.BrickColor = BrickColor.new("Dark stone grey")
se3.Reflectance = 0
se3.TopSurface = 0
se3.BottomSurface = 0
se3.CFrame = CFrame.new(pos)
se3.Parent = bin.Parent.Parent.Character
se3.Name = "Bewm1"
sem3 = Instance.new("SpecialMesh")
sem3.Parent = se3
sem3.MeshType = "Sphere"
coroutine.resume(coroutine.create(Grow), sem, sem2, sem3)
end
function EndShot2(pos)
se = Instance.new("Part")
se.formFactor = "Symmetric"
se.Size = Vector3.new(1,1,1)
se.Locked = true
se.Anchored = true
se.CanCollide = false
se.BrickColor = BrickColor.new("Really black")
se.Reflectance = 0
se.TopSurface = 0
se.BottomSurface = 0
se.CFrame = CFrame.new(pos)
se.Parent = bin.Parent.Parent.Character
se.Name = "Bewm1"
sem = Instance.new("CylinderMesh")
sem.Parent = se
sem.Scale = Vector3.new(1,0.4,1)
se2 = Instance.new("Part")
se2.formFactor = "Symmetric"
se2.Size = Vector3.new(1,1,1)
se2.Locked = true
se2.Anchored = true
se2.CanCollide = false
se2.BrickColor = BrickColor.new("Really black")
se2.Reflectance = 0
se2.TopSurface = 0
se2.BottomSurface = 0
se2.CFrame = CFrame.new(pos)
se2.Parent = bin.Parent.Parent.Character
se2.Name = "Bewm1"
sem2 = Instance.new("CylinderMesh")
sem2.Parent = se2
sem2.Scale = Vector3.new(1,0.4,1)
se3 = Instance.new("Part")
se3.formFactor = "Symmetric"
se3.Size = Vector3.new(1,1,1)
se3.Locked = true
se3.Anchored = true
se3.CanCollide = false
se3.BrickColor = BrickColor.new("Dark stone grey")
se3.Reflectance = 0
se3.TopSurface = 0
se3.BottomSurface = 0
se3.CFrame = CFrame.new(pos)
se3.Parent = bin.Parent.Parent.Character
se3.Name = "Bewm1"
sem3 = Instance.new("CylinderMesh")
sem3.Parent = se3
sem3.Scale = Vector3.new(1,0.4,1)
coroutine.resume(coroutine.create(Grow2), sem, sem2, sem3)
end
function onKeyDown(key, mouse)
if key ~= nil then
key:lower()
if key == "r" then
bin.Name = "Deselect = Remove"
bin.Deselected:connect(function() wait() bin:remove() end)
elseif key == "e" then
if morphing == false then
if morphed == false then
coroutine.resume(coroutine.create(EagleMorph))
elseif morphed == true then
coroutine.resume(coroutine.create(NormalMorph))
end
end
elseif key == "q" then
coroutine.resume(coroutine.create(Poop))
elseif key == "f" then
dwn = true
while dwn == true do
if morphed == true then
ray = Ray.new(bin.Parent.Parent.Character.Torso.Position, bin.Parent.Parent.Character.Torso.CFrame.lookVector*999)
hit, enz = workspace:findPartOnRay(ray, bin.Parent.Parent.Character)
Partz("Really red", bin.Parent.Parent.Character.Torso.Position, enz)
coroutine.resume(coroutine.create(EndShot), enz)
end
wait(0.08)
end
end
end
end
function DiveTuch(ob)
enab = false
ob.Touched:connect(function(hitz)
if enab == false then
enab = true
coroutine.resume(coroutine.create(EndShot2), hitz.Position)
ob:remove()
end
end)
end
function DiveBomb()
bo = Instance.new("Part")
bo.formFactor = "Custom"
bo.Size = Vector3.new(3,1.6,1.6)
bo.Name = "DiveBomb"
bo.Transparency = 1
bo.Locked = true
bo.CanCollide = false
bo.BrickColor = BrickColor.new("Black")
bo.Parent = bin.Parent.Parent.Character
bo.TopSurface = 0
bo.BottomSurface = 0
w = Instance.new("Weld")
w.Parent = bo
w.Name = "Weld"
w.Part0 = bin.Parent.Parent.Character.Torso
w.Part1 = bo
w.C0 = CFrame.new(0,0,-2.5)
coroutine.resume(coroutine.create(DiveTuch), bo)
end
dwnz = false
function onKeyDownz(key)
if key ~= nil then
key:lower()
if key == "v" then
if morphed == true then
dwnz = true
speed = 120
coroutine.resume(coroutine.create(DiveBomb))
end
elseif key == "c" then
dwnz = true
speed = 100
end
end
end
function onKeyUp(key)
if key ~= nil then
key:lower()
if key == "f" then
dwn = false
elseif key == "v" or key == "c" then
dwnz = false
speed = 50
for i, v in pairs(bin.Parent.Parent.Character:children()) do
if v.Name == "DiveBomb" then
v:remove()
end
end
end
end
end
bin.Selected:connect(function(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Button1Up:connect(function() onButton1Up(mouse) end)
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
mouse.KeyDown:connect(function(key) onKeyDownz(key, mouse) end)
mouse.KeyUp:connect(function(key) onKeyUp(key) end)
end)