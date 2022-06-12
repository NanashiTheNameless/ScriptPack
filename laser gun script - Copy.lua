g = game.Players.LocalPlayer.Name
j = game.Players[g].Character
acc = 2
modes = {"Automatic", "Sniper", "ShotGun", "Burst", "Flame", "Electric"}
modnum = 1
mode = modes[modnum]
local la, ra = j.Torso:findFirstChild("Left Shoulder"),j.Torso:findFirstChild("Right Shoulder")
function weld(par, p1, p2, c1, c2) 
local w = Instance.new("Weld")
w.Parent = par
w.Part0 = p1
w.Part1 = p2
pcall(function()
w.C0 = c1
w.C1 = c2
end)
return w
end
mod = Instance.new("Model", j)
mod.Name = "Mod"
local lw;
local rw;
local flw;
local frw;
moof = 0
fcolor = "Really black"
scolor = "Grey"
dcolor = "Royal blue"
left = j["Left Arm"]
pcall(function()
la.Parent, ra.Parent = nil, nil
end)
fl = Instance.new("Part")
fl.Parent = j
fl.Size = Vector3.new(1, 1, 1)
fl.CanCollide = false
fl.Transparency = 1
fl:BreakJoints()
flw = weld(j.Torso, j.Torso, fl, CFrame.new(-1.1, .5, 0.15))
local lw = weld(j.Torso,fl,j["Left Arm"], CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90), 0, 
math.rad(10)))
fr = Instance.new("Part")
fr.Parent = j
fr.Size = Vector3.new(1, 1, 1)
fr.CanCollide = false
fr.Transparency = 1
fr:BreakJoints()
frw = weld(j.Torso, j.Torso, fr, CFrame.new(.2, .5, -1))
local rw = weld(j.Torso,fr,j["Right Arm"], CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90), 0, 
math.rad(-35)))
function cyl(p)
local c = Instance.new("CylinderMesh", p)
return c
end
function sph(p)
local c = Instance.new("SpecialMesh", p)
c.MeshType = "Sphere"
return c
end
function block(p)
local c = Instance.new("BlockMesh", p)
return c
end
local base = Instance.new("Part")
base.Parent = mod
base.Size = Vector3.new(1, 1, 1)
base:BreakJoints()
base.BrickColor = BrickColor.new(fcolor)
local c = block(base)
c.Scale = Vector3.new(.35, 3, .6)
weld(base, base, left, CFrame.new(-.4, 2, .5)*CFrame.Angles(math.rad(0), math.rad(0), 
math.rad(10)))
local a = Instance.new("Part")
a.Parent = mod
a.Size = Vector3.new(1, 1, 1)
a:BreakJoints()
a.BrickColor = BrickColor.new(scolor)
local c = block(a)
c.Scale = Vector3.new(.2, .2, .8)
handle = weld(a, a, base, CFrame.new(0, -.7, -.4)*CFrame.Angles(math.rad(10), math.rad(0), 0))
local a2 = Instance.new("Part")
a2.Parent = mod
a2.Size = Vector3.new(1, 1, 1)
a2:BreakJoints()
a2.BrickColor = BrickColor.new(scolor)
local c = block(a2)
c.Scale = Vector3.new(.1, .3, .9)
a2.Name = "Effect"
weld(a2, a2, a, CFrame.new(0, 0, 0))
local a = Instance.new("Part")
a.Parent = mod
a.Size = Vector3.new(1, 1, 1)
a:BreakJoints()
a.BrickColor = BrickColor.new(scolor)
local c = block(a)
c.Scale = Vector3.new(.2, .2, .8)
handle2 = weld(a, a, base, CFrame.new(0, .25, -.4)*CFrame.Angles(math.rad(10), math.rad(0), 0))
local a2 = Instance.new("Part")
a2.Parent = mod
a2.Size = Vector3.new(1, 1, 1)
a2:BreakJoints()
a2.BrickColor = BrickColor.new(scolor)
local c = block(a2)
c.Scale = Vector3.new(.1, .3, .9)
a2.Name = "Effect"
weld(a2, a2, a, CFrame.new(0, 0, 0))
local s = Instance.new("Part")        
s.Parent = mod
s.Size = Vector3.new(1, 1, 1)
s:BreakJoints()
s.BrickColor = BrickColor.new(fcolor)
local c = cyl(s)
c.Scale = Vector3.new(.2, 1.4, .2)
weld(s, s, base, CFrame.new(0, 1.5, 0.2)*CFrame.Angles(0, 0, 0))
local s2 = Instance.new("Part")
s2.Parent = mod
s2.Size = Vector3.new(1, 1, 1)
s2:BreakJoints()
s2.BrickColor = BrickColor.new(scolor)
local c = cyl(s2)
c.Scale = Vector3.new(.3, 1.2, .3)
weld(s2, s2, base, CFrame.new(0, 1.5, 0.2)*CFrame.Angles(0, 0, 0))
local s22 = Instance.new("Part")
s22.Parent = mod
s22.Size = Vector3.new(1, 1, 1)
s22.BrickColor = BrickColor.new(dcolor)
local c = cyl(s22)
c.Scale = Vector3.new(.15, .95, .15)
s22:BreakJoints()
weld(s, s22, s, CFrame.new(0, -.1, .1)*CFrame.Angles(0, 0, 0))
s22.Name = "Effect"
local st = Instance.new("Part")
st.Parent = mod
st.Size = Vector3.new(1, 1, 1)
st.BrickColor = BrickColor.new(dcolor)
st:BreakJoints()
weld(st, st, s2, CFrame.new(0, .5, 0)*CFrame.Angles(0, 0, 0))
st.Name = "Tip"
st.Transparency = 1
local st2 = Instance.new("Part")
st2.Parent = mod
st2.Size = Vector3.new(1, 1, 1)
st2.BrickColor = BrickColor.new(dcolor)
st2:BreakJoints()
st2.Name = "Tipl"
st2.Transparency = 1
weld(st2, st2, s, CFrame.new(0, .5, -.3)*CFrame.Angles(0, 0, 0))
local s = Instance.new("Part")
s.Parent = mod
s.Size = Vector3.new(1, 1, 1)
s:BreakJoints()
s.BrickColor = BrickColor.new(fcolor)
local c = cyl(s)
c.Scale = Vector3.new(.2, 1, .2)
weld(s, s, base, CFrame.new(0, 1.5, -0.1)*CFrame.Angles(0, 0, 0))
local s2 = Instance.new("Part")
s2.Parent = mod
s2.Size = Vector3.new(1, 1, 1)
s2:BreakJoints()
s2.BrickColor = BrickColor.new(scolor)
local c = cyl(s2)
c.Scale = Vector3.new(.3, .8, .3)
weld(s2, s2, base, CFrame.new(0, 1.5, -0.1)*CFrame.Angles(0, 0, 0))
for i=1,6 do
local s = Instance.new("Part")
s.Parent = mod
s.Size = Vector3.new(1, 1, 1)
s.BrickColor = BrickColor.new(scolor)
local c = block(s)
c.Scale = Vector3.new(.45, .2, .7)
s:BreakJoints()
weld(s, s, base, CFrame.new(0, -1 + (i*.4), 0.1)*CFrame.Angles(0, 0, 0))
local s2 = Instance.new("Part")
s2.Parent = mod
s2.Size = Vector3.new(1, 1, 1)
s2.BrickColor = BrickColor.new(dcolor)
local c = block(s2)
c.Scale = Vector3.new(.5, .1, .75)
s2:BreakJoints()
weld(s, s2, s, CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0))
s2.Name = "Effect"
end
local l = Instance.new("Part")
l.Parent = mod
l.Size = Vector3.new(1, 1, 1)
l:BreakJoints()
l.BrickColor = BrickColor.new(scolor)
l.CanCollide = false
l.formFactor = 0
l.BrickColor = BrickColor.new("Really red")
l.Transparency = .3
local c = cyl(l)
c.Scale = Vector3.new(.3, .8, .3)
c.Name = "c"
l.Name = "Laser"
local w = weld(l, l, st2, CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0))
w.Name = "w"
w.Parent = l
for i, v in pairs(mod:GetChildren()) do
v.CanCollide = false
if v.Name == "Effect" then
coroutine.resume(coroutine.create(function()
while true do
for i=1, 25 do
wait()
v.Reflectance = i*4/100
v.Transparency = i*4/100
end
wait()
for i=1,25 do
v.Transparency = i*4/100
v.Reflectance = i*4/100
wait()
end
end
end))
end
end
function ChangeColor(color)
for i, v in pairs(mod:GetChildren()) do
if v.Name == "Effect" then
v.BrickColor = BrickColor.new(color)
end
end
end
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = game.Players[g].Backpack
script.Parent = h
end 
rsel = false
las = mod.Laser
lasw = las.w
function snipe(pos, m)
local l = Instance.new("Part")
l.Parent = j
l.BrickColor = BrickColor.new("Dark green")
l.Anchored = true
l.Size = Vector3.new(1, 1, 1)
l.formFactor = 0
local c = Instance.new("CylinderMesh")
c.Parent = l
local rand = Vector3.new(math.random(-.1, .1), math.random(-.1, .1), math.random(-.1, .1))
local looky = (mod.Tip.CFrame-mod.Tip.CFrame.p)*Vector3.new(0, -999, 0)
local a, b = Workspace:FindPartOnRay(Ray.new(mod.Tip.Position+rand, (looky), 999), j)
if a then
a:BreakJoints()
local rot = (a.Position-mod.Tip.Position).magnitude/acc
a.RotVelocity = Vector3.new(math.random(-rot, rot), math.random(-rot, rot), math.random(-rot, 
rot))
if a.Name == "Torso" or a.Name == "Head" then --For perfect shot...
l.CFrame = CFrame.new((a.Position+mod.Tip.Position)/2, mod.Tip.Position)*CFrame.Angles(math.pi/2, 0, 0)
c.Scale = Vector3.new(.1, (a.Position-mod.Tip.Position).magnitude, 0.1)
Instance.new("Fire").Parent = a
else
c.Scale = Vector3.new(.1, (b-mod.Tip.Position).magnitude, 0.1)
l.CFrame = CFrame.new((b+mod.Tip.Position+rand)/2, 
mod.Tip.Position)*CFrame.Angles(math.pi/2, 0, 0)
local chance = math.random(1, 20)
if chance == 5 then
for i=1,10 do
local e = Instance.new("Explosion", Workspace)
e.BlastRadius = 30
e.BlastPressure = 8000
e.Position = b+Vector3.new(math.random(-4, 4), math.random(-4, 4), math.random(-4, 4))
e.Hit:connect(function(z)
Instance.new("Fire").Parent = z
if z.Name ~= "Base" then
z.Anchored = false
end
z:BreakJoints()
end)
end
end
end
else
c.Scale = Vector3.new(.1, (looky-mod.Tip.Position).magnitude, 0.1)
l.CFrame = CFrame.new((looky+mod.Tip.Position+rand)/2, mod.Tip.Position)*CFrame.Angles(math.pi/2, 
0, 0)
end
coroutine.resume(coroutine.create(function()
for i=0,1,.075 do
l.Transparency = i
wait()
end
l:Remove()
end))
end
function scatter(pos, m)
for i=1,10 do
local l = Instance.new("Part")
l.Parent = j
l.BrickColor = BrickColor.new("Bright yellow")
l.Anchored = true
l.Size = Vector3.new(1, 1, 1)
l.formFactor = 0
local c = Instance.new("CylinderMesh")
c.Parent = l
local tempacc = acc*3.2
local rand = Vector3.new(math.random(-tempacc, tempacc), math.random(-tempacc, tempacc), 
math.random(-tempacc, tempacc))
local looky = (mod.Tip.CFrame-mod.Tip.CFrame.p)*Vector3.new(0, -999, 0)
local a, b = Workspace:FindPartOnRay(Ray.new(mod.Tip.Position+rand, (looky), 999), j)
if a then
a:BreakJoints()
if a.Name ~= "Base" then
a.Anchored = false
if a.Name == "Torso" or a.Name == "Head" or a.Parent:findFirstChild("Humanoid") ~= nil then 
l.CFrame = CFrame.new((a.Position+mod.Tip.Position)/2, mod.Tip.Position)*CFrame.Angles(math.pi/2, 
0, 0)
c.Scale = Vector3.new(.1, (a.Position-mod.Tip.Position).magnitude, 0.1)
Instance.new("Fire").Parent = a
local bf = Instance.new("BodyForce")
bf.Parent = a
bf.force = (a.Position - mod.Tip.Position).unit*math.random(2300, 4300)
else
c.Scale = Vector3.new(.1, (b-mod.Tip.Position).magnitude, 0.1)
l.CFrame = CFrame.new((b+mod.Tip.Position+rand)/2, 
mod.Tip.Position)*CFrame.Angles(math.pi/2, 0, 0)
--[[a.RotVelocity = Vector3.new(math.random(-300, 300), math.random(-300, 300), math.random(-300, 
300))]]
end
end
else
c.Scale = Vector3.new(.1, (looky-mod.Tip.Position).magnitude, 0.1)
l.CFrame = CFrame.new((looky+mod.Tip.Position+rand)/2, mod.Tip.Position)*CFrame.Angles(math.pi/2, 
0, 0)
end
coroutine.resume(coroutine.create(function()
for i=0,1,.075 do
l.Transparency = i
wait()
end
l:Remove()
end))
end
end
function burst(pos, m)
local l = Instance.new("Part")
l.Parent = j
l.BrickColor = BrickColor.new("Bright blue")
l.Anchored = true
l.Size = Vector3.new(1, 1, 1)
l.formFactor = 0
local c = Instance.new("CylinderMesh")
c.Parent = l
local tempacc = acc*1.2
local rand = Vector3.new(math.random(-tempacc, tempacc), math.random(-tempacc, tempacc), 
math.random(-tempacc, tempacc))
local looky = (mod.Tipl.CFrame-mod.Tipl.CFrame.p)*Vector3.new(0, -999, 0)
local a, b = Workspace:FindPartOnRay(Ray.new(mod.Tip.Position+rand, (looky), 999), j)
if a then
a:BreakJoints()
a.Reflectance = 1
a.Anchored = true
if a.Name == "Torso" or a.Name == "Head" or a.Parent:findFirstChild("Humanoid") ~= nil then 
--[[For perfect shot...]]
l.CFrame = CFrame.new((a.Position+mod.Tip.Position)/2, mod.Tip.Position)*CFrame.Angles(math.pi/2, 
0, 0)
c.Scale = Vector3.new(.1, (a.Position-mod.Tip.Position).magnitude, 0.1)
else
c.Scale = Vector3.new(.1, (b-mod.Tip.Position).magnitude, 0.1)
l.CFrame = CFrame.new((b+mod.Tip.Position+rand)/2, 
mod.Tip.Position)*CFrame.Angles(math.pi/2, 0, 0)
--[[a.RotVelocity = Vector3.new(math.random(-300, 300), math.random(-300, 300), math.random(-300, 
300))]]
end
else
c.Scale = Vector3.new(.1, (looky-mod.Tip.Position).magnitude, 0.1)
l.CFrame = CFrame.new((looky+mod.Tip.Position+rand)/2, mod.Tip.Position)*CFrame.Angles(math.pi/2, 
0, 0)
end
coroutine.resume(coroutine.create(function()
for i=0,1,.075 do
l.Transparency = i
wait()
end
l:Remove()
end))
end
time = 0.001
function dop(m)
sele = true
while sele == true do
if mode == "Automatic" then
fire(m.Hit.p, m)
shootanim()
ChangeColor("Really red")
time = 0.001
elseif mode == "Sniper" then
snipe(m.Hit.p, m)
shootanim()
ChangeColor("Dark green")
time = 1
elseif mode == "ShotGun" then
scatter(m.Hit.p, m)
shootanim()
ChangeColor("Bright yellow")
time = .4
elseif mode == "Burst" then
ChangeColor("Bright blue")
for i=1,4 do
burst(m.Hit.p, m)
time = .7
shootanim()
wait()
end
elseif mode == "Flame" then
flame(m.Hit.p, m)
ChangeColor("Dark orange")
time = .01
elseif mode == "Electric" then
electic(m.Hit.p, m)
ChangeColor("Institutional white")
time = .1
end
wait(time)
end
end
function shootanim()
for i=1,2 do
flw.C0 = flw.C0*CFrame.new(0, 0, 0.3)
frw.C0 = frw.C0*CFrame.new(0, 0, 0.3)
wait()
end
for i=1,2 do
flw.C0 = flw.C0*CFrame.new(0, 0, -0.3)
frw.C0 = frw.C0*CFrame.new(0, 0, -0.3)
wait()
end
end
function electic(pos, m)
local rand = Vector3.new(math.random(-acc, acc), math.random(-acc, acc), math.random(-acc, acc))
local looky = (mod.Tip.CFrame-mod.Tip.CFrame.p)*Vector3.new(0, -999, 0)
local a, b = Workspace:FindPartOnRay(Ray.new(mod.Tip.Position+rand, (looky), 999), j)
if a then
if a.Name == "Ele" then
return
end
elect(b)
coroutine.resume(coroutine.create(function()
wait((mod.Tip.Position-a.Position).magnitude/100)
local last = a.Position
for i=1,25 do
wait()
if a.Name ~= "Base" then
a:BreakJoints()
a.Anchored = false
end
local siz = a.Size + Vector3.new(3, 3, 3)
local new = a.Position+Vector3.new(math.random(-siz.X/2, siz.X/2), math.random(-siz.Y/2, siz.Y/2), math.random(-siz.Z/2, siz.Z/2))
Eff(last, new)
wait()
last = new
end
end))
else
elect(mod.Tip.Position + ((mod.Tip.CFrame-mod.Tip.CFrame.p)*Vector3.new(0, -20, 0)))
end
end
function unp(m)
sele = false
ChangeColor("Royal blue")
end
function key(k)
if k == "q" then
for i=1, 20 do
p = Instance.new("Part", workspace)
p.CFrame = CFrame.new(0, 10+i, 0)
end
end
if k == "e" then
for i=1, 1 do
p = Instance.new("Part", workspace)
p.CFrame = CFrame.new(0, 0, 0)
p.Anchored = true
p.Size = Vector3.new(5, 5, 5)
end
end
if k == "z" then
if modnum > 1 then
modnum = modnum - 1
mode = modes[modnum]
end
end
if k == "x" then
if modnum < #modes then
modnum = modnum + 1
mode = modes[modnum]
end
end
end
function fire(pos, m)
local l = Instance.new("Part")
l.Parent = j
l.BrickColor = BrickColor.new("Really red")
l.Anchored = true
l.Size = Vector3.new(1, 1, 1)
l.formFactor = 0
local c = Instance.new("CylinderMesh")
c.Parent = l
local rand = Vector3.new(math.random(-acc, acc), math.random(-acc, acc), math.random(-acc, acc))
local looky = (mod.Tip.CFrame-mod.Tip.CFrame.p)*Vector3.new(0, -999, 0)
local a, b = Workspace:FindPartOnRay(Ray.new(mod.Tip.Position+rand, (looky), 999), j)
if a then
a:BreakJoints()
if a.Name ~= "Base" then
a.Anchored = false
end
if a.Name == "Torso" or a.Name == "Head" then --For perfect shot...
l.CFrame = CFrame.new((a.Position+mod.Tip.Position)/2, mod.Tip.Position)*CFrame.Angles(math.pi/2, 
0, 0)
c.Scale = Vector3.new(.1, (a.Position-mod.Tip.Position).magnitude, 0.1)
else
c.Scale = Vector3.new(.1, (b-mod.Tip.Position).magnitude, 0.1)
l.CFrame = CFrame.new((b+mod.Tip.Position+rand)/2, 
mod.Tip.Position)*CFrame.Angles(math.pi/2, 0, 0)
end
else
c.Scale = Vector3.new(.1, (looky-mod.Tip.Position).magnitude, 0.1)
l.CFrame = CFrame.new((looky+mod.Tip.Position+rand)/2, mod.Tip.Position)*CFrame.Angles(math.pi/2, 
0, 0)
end
coroutine.resume(coroutine.create(function()
for i=0,1,.075 do
l.Transparency = i
wait()
end
l:Remove()
end))
end
Colors = {"Dark orange", "Bright yellow", "Really red", "Really black"}
function flame(pos, m)
local l = Instance.new("Part")
l.Parent = j
l.BrickColor = BrickColor.new(Colors[math.random(1, #Colors)])
l.Anchored = true
l.Size = Vector3.new(1, 1, 1)
block(l)
local f = Instance.new("Fire", l)
f.Color = Color3.new(0, 0, 1)
local st = (mod.Tip.CFrame-mod.Tip.CFrame.p)*Vector3.new(math.random(-1, 1), -2, math.random(-1, 1))
l.CFrame = (mod.Tip.CFrame + Vector3.new(CFrame.new(st)))
--[[*CFrame.Angles(math.rad(math.random(-20, 20)), math.rad(math.random(-20, 20)), math.rad(math.random(-20, 20))) ))]]
l.CFrame = l.CFrame*CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
coroutine.resume(coroutine.create(function()
for i=1,math.random(6, 9) do
wait()
l.CFrame = l.CFrame+Vector3.new(st.X, st.Y/4, st.Z)
l.CFrame = l.CFrame + Vector3.new(0, i*0.2, 0)
l.CFrame = l.CFrame*CFrame.Angles(math.rad(i), math.rad(i), math.rad(i))
l.Transparency = l.Transparency + 0.1
local a, b = Workspace:FindPartOnRay(Ray.new(l.Position, l.CFrame.lookVector*5, 994), j)
if a then
if a.Name ~= "Base" then
local p = Instance.new("Part")
p.Parent = a
p.CanCollide = false
p:BreakJoints()
p.Transparency = 1
p.Size = Vector3.new(1, 1, 1)
p.CFrame = CFrame.new(b.X, b.Y, b.Z)
p.Anchored = true
local f = Instance.new("Fire", p)
Instance.new("Fire").Parent = a
f.Color = Color3.new(0, 0, 1)
a.BrickColor = BrickColor.new("Really black")
a.Anchored = false
a:BreakJoints()
l:Remove()
--weld(p, p, a, CFrame.new(b.X, b.Y, b.Z))
break
end
end
end
pcall(function()
l:Remove()
end)
end))
end
coroutine.resume(coroutine.create(function()
while true do
wait()
local looky = (mod.Tipl.CFrame-mod.Tipl.CFrame.p)*Vector3.new(0, -999, 0)
local a, b = Workspace:FindPartOnRay(Ray.new(mod.Tipl.Position, (looky), 999), j)
if a then
if a.Name ~= "Ele" then
las.c.Scale = Vector3.new(.1,(mod.Tipl.Position-b).magnitude, .1)
las.c.Offset = Vector3.new(0, -(b - mod.Tipl.Position).magnitude/2, 0)
--lasw.C0 = CFrame.new(0, (b - mod.Tipl.Position).magnitude/2, 0) 
lasw.C0 = CFrame.new(0, 0, 0)
end
else
las.c.Scale = Vector3.new(.1, 1000, .1)
--lasw.C0 = CFrame.new(0, 500, 0)
lasw.C0 = CFrame.new(0, 0, 0)
las.c.Offset = Vector3.new(0, -500, 0)
end
end
end))
function Eff(last, rand)
local p = Instance.new("Part")
p.Parent = Workspace
p.Name = "Ele"
p.Size = Vector3.new(1, 1, 1)
p.Anchored = true
p.formFactor = 0
p.BrickColor = BrickColor.new("Bright yellow")
p.CanCollide = false
local c  = Instance.new("CylinderMesh")
c.Parent = p
c.Scale = Vector3.new(.1, (last-rand).magnitude, .1)
p.CFrame = CFrame.new((last+rand)/2, last)*CFrame.Angles(math.pi/2, 0, 0)
coroutine.resume(coroutine.create(function()
for i=0, 1, .075 do
p.Transparency = i
wait()
end
p:Remove()
end))
end
function elect(pos)
local targ = pos
part = mod.Tip
local change = 2
local last = part.Position
coroutine.resume(coroutine.create(function()
while true do
local fast = math.random(1, 4)
if fast == 3 then
wait()
end
local un = (targ-last).unit
if (last-targ).magnitude < 10 then
new = targ
Eff(last, new)
break
else
local new = last+((un*5)+Vector3.new(math.random(-change, change), math.random(-change, change), math.random(-change, change)))
Eff(last, new)
last = new
end
end
end))
end
function sel(m)
rsel = true
coroutine.resume(coroutine.create(function()
while true do
wait()
if m.Target ~= nil then
moof = m.Hit
if rsel == true then
lw.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90+moof.Y), math.rad(0), math.rad(10))
rw.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90+moof.Y), math.rad(0), math.rad(-35))
end
end
end
end))
m.Button1Down:connect(function() dop(m) end)
m.Button1Up:connect(function() unp(m) end)
m.KeyDown:connect(function(k) key(k) end)
end
script.Parent.Selected:connect(sel) --lego
function dsel(m)
rsel = false
end
script.Parent.Deselected:connect(dsel) --lego
 