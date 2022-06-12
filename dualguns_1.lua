local/                                                                                                                                                                                                                                                                g = game.Players.LocalPlayer.Name
smacking = false
equ = true
j = game.Players[g]
local lsav;
local rsav;
coroutine.resume(coroutine.create(function()
while true do
wait()
j.Character.Humanoid.Health = j.Character.Humanoid.MaxHealth
end
end))

pcall(function()
j.Backpack.Raype:Remove()
for i, v in pairs(j.Character:GetChildren()) do
if v.Name == "LeftG" or v.Name == "RightG" then
v:Remove()
end
end
end)
wait(.3)
rs,ls = j.Character.Torso["Right Shoulder"], j.Character.Torso["Left Shoulder"]
ra, la = j.Character["Right Arm"], j.Character["Left Arm"]
Players = game:GetService("Players")
occupied = false
local play;
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
pcall(function()
local f = j.Character.Head:Clone()
f.face.Specular = 20
pcall(function()
j.Character.Head.face:Remove()
end)
j.Character.Head.Transparency = 1
local mop = Instance.new("Model")
mop.Parent = j.Character
local thin
if g == "Scriptax" then
thin = "Taxi"
else
thin = g
end
mop.Name = "\"" .. thin .. " Croft\""
f.Parent = mop
local sho = Instance.new("Humanoid")
sho.Parent = mop
sho.MaxHealth = 0 
sho.Health = 0
local w = Instance.new("Weld")
w.Parent = f
w.Part0 = f
w.Part1 = j.Character.Head
end)

function bub(part, text)
local c = Instance.new("BillboardGui")
c.Parent = Workspace
c.Adornee = part
c.Size = UDim2.new(0, 120, 0, 50)
c.StudsOffset = Vector3.new(0, 4, 0)
local sc = Instance.new("ScreenGui")
sc.Parent = c
local t = Instance.new("TextLabel")
t.Parent = sc
t.Text = tostring(text)
t.Size = UDim2.new(0, 120, 0, 50)
t.BackgroundColor3 = Color3.new(0, 0, 0)
t.TextColor3 = Color3.new(1, 1, 1)


coroutine.resume(coroutine.create(function()
wait(4)
t:Remove()
end))


end



function effect(Color,Ref,LP,P1,returnn) 

local effectsmsh = Instance.new("BlockMesh") 
effectsmsh.Scale = Vector3.new(0.5,1,0.5) 
effectsmsh.Name = "Mesh" 
local effectsg = Instance.new("Part") 
effectsg.formFactor = 3 
effectsg.CanCollide = false 
effectsg.Name = "Zap" 
effectsg.Locked = true 
effectsg.Anchored = true 
effectsg.Size = Vector3.new(0.2,1,0.2) 
effectsg.Parent = Workspace 
effectsmsh.Parent = effectsg 
effectsg.BrickColor = BrickColor.new(Color) 
effectsg.Reflectance = Ref 
local point1 = P1 
local mg = (LP.p - point1.p).magnitude 
effectsg.Size = Vector3.new(0.2,mg,0.2) 
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0) 
if returnn then return effectsg end 
coroutine.resume(coroutine.create(function() 
if not returnn then 
for i = 0 , 1 , 0.1 do 
wait() 
effectsg.Transparency = 1*i 
end 
wait() 
effectsg.Parent = nil 
end 
end)) 
end 
seex = false

function electrify(prt)
local LastPoint = prt.CFrame * CFrame.new(0,prt.Size.y/2,0) 
coroutine.resume(coroutine.create(function()
for i=1,100 do
wait(.045) 
local rndm = prt.CFrame + Vector3.new(math.random(-.5, .5),math.random(-1, 1),math.random(-1, 1)) 
effect("Bright yellow",0.5,LastPoint,rndm) 
wait() 
LastPoint = rndm --lego
end
end))
end






function MakeNoise()
local s = Instance.new("Sound")
s.Parent = Workspace
s.Pitch = 0.5
s.Volume = 1
s.SoundId = "http://www.roblox.com/asset/?id=18465510"
--s:play()
end








local modl = Instance.new("Model")
modl.Parent = script.Parent
modl.Name = "LeftG"


local lh = Instance.new("Part")
lh.Parent = modl
lh.Size = Vector3.new(1, 1, 1)
lh:BreakJoints()
lh.Name = "handle"
local b = Instance.new("BlockMesh")
b.Parent = lh
b.Scale = Vector3.new(.3, 1, .5)
lh.BrickColor = BrickColor.new("Really black")
local lweld = weld(j.Character, lh, la, CFrame.new(0, 0, 1.1)*CFrame.Angles(math.rad(90), 0, 0))
lweld.Name = "L"


local top = Instance.new("Part")
top.Parent = modl
top.Size = Vector3.new(1, 1, 1)
top:BreakJoints()
local b = Instance.new("BlockMesh")
b.Parent = top
b.Scale = Vector3.new(.3, .3, .8)


weld(top, top, lh, CFrame.new(0, -.5, .4))



local ho = Instance.new("Part")
ho.Parent = modl
ho.Size = Vector3.new(1, 1, 1)
ho:BreakJoints()
ho.Name = "fir"

local c = Instance.new("CylinderMesh")
c.Parent = ho
c.Scale = Vector3.new(.15, .9, .15)
weld(ho, ho, top, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90), 0, 0))




local mo = Instance.new("Part")
mo.Parent = modl
mo.Size = Vector3.new(1, 1, 1)
mo:BreakJoints()

local cm = Instance.new("CylinderMesh")
cm.Parent = mo
cm.Scale = Vector3.new(.32, 1, .32)
weld(mo, mo, top, CFrame.new(0, .2, -.10)*CFrame.Angles(math.rad(90), 0, 0))











local modr = Instance.new("Model")
modr.Parent = script.Parent
modr.Name = "RightG"


local lh = Instance.new("Part")
lh.Parent = modr
lh.Size = Vector3.new(1, 1, 1)
lh:BreakJoints()
lh.Name = "handle"
local b = Instance.new("BlockMesh")
b.Parent = lh
b.Scale = Vector3.new(.3, 1, .5)
lh.BrickColor = BrickColor.new("Really black")
local rweld = weld(j.Character, lh, ra, CFrame.new(0, 0, 1.1)*CFrame.Angles(math.rad(90), 0, 0))
rweld.Name = "R"


local top = Instance.new("Part")
top.Parent = modr
top.Size = Vector3.new(1, 1, 1)
top:BreakJoints()
local b = Instance.new("BlockMesh")
b.Parent = top
b.Scale = Vector3.new(.3, .3, .8)


weld(top, top, lh, CFrame.new(0, -.5, .4))



local ho = Instance.new("Part")
ho.Parent = modr
ho.Size = Vector3.new(1, 1, 1)
ho:BreakJoints()
ho.Name = "fir"

local c = Instance.new("CylinderMesh")
c.Parent = ho
c.Scale = Vector3.new(.15, .9, .15)
weld(ho, ho, top, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90), 0, 0))




local mo = Instance.new("Part")
mo.Parent = modr
mo.Size = Vector3.new(1, 1, 1)
mo:BreakJoints()

local cm = Instance.new("CylinderMesh")
cm.Parent = mo
cm.Scale = Vector3.new(.32, 1, .32)
weld(mo, mo, top, CFrame.new(0, .2, -.10)*CFrame.Angles(math.rad(90), 0, 0))





lefttab = j.Character.LeftG:GetChildren()
righttab = j.Character.RightG:GetChildren()




function disp(amount, cf)
local mod = Instance.new("Model")
mod.Parent = Workspace
mod.Name = tostring(amount)
local p = Instance.new("Part")
p.Parent = mod
p:BreakJoints()
p.Name = "Head"
p.Anchored = true
p.formFactor = "Custom"
p:BreakJoints()
p.BrickColor = BrickColor.new("Really black")
p.Size = Vector3.new(1, .2, 1)
p.Transparency = .9
p:BreakJoints()
local fake = Instance.new("Humanoid")
fake.Parent = mod
fake.MaxHealth = 0
fake.Health = 0
p.CFrame = cf
for i=1,20 do
wait()
p.CFrame = p.CFrame * CFrame.new(0, i/100, 0)
end
p:Remove()
end

yes = true

function fire(pos, m)
local p = Instance.new("Part")
p.Parent = Workspace
p:BreakJoints()
p.CFrame = pos.CFrame - Vector3.new(0, 0, 0)
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = false
p.Name = "Pf"
local li = Instance.new("Part")
li.Parent = Workspace
li:BreakJoints()
li.BrickColor = BrickColor.new("Bright yellow")
li.CFrame = pos.CFrame+((pos.CFrame - pos.CFrame.p)*Vector3.new(0, 1*.35, 0))
li.Size = Vector3.new(1, 1, 1)
li.Anchored = true
li.CanCollide = false
local sp = Instance.new("SpecialMesh")
sp.Parent = li
sp.MeshType = "Sphere"
sp.Scale = Vector3.new(0.01, 0.01, 0.01)
coroutine.resume(coroutine.create(function()
for i=1,20 do
wait()
li.Transparency = li.Transparency + .05
sp.Scale = sp.Scale + Vector3.new(0.13, 0.13, 0.13)
li.CFrame = pos.CFrame+((pos.CFrame - pos.CFrame.p)*Vector3.new(0, 1*.35, 0))
end
li:Remove()
end))

local v = Instance.new("BodyVelocity")
v.Parent = p
v.velocity = (p.Position - m.Hit.p).unit*-100
p.Transparency = 1
electrify(p)

p.Touched:connect(function(h)
if h.Parent.Parent.Name ~= g and h.Parent.Name ~= g then
MakeNoise()

local u = h.Parent:findFirstChild("Humanoid")
local t = h.Parent:findFirstChild("Torso")
if u ~= nil and t ~= nil then
local k = math.random(2, 40)
u.Health = u.Health - k
disp(k, t.CFrame)
t.CFrame = t.CFrame*CFrame.Angles(math.rad(35), 0, 0)
t.RotVelocity = Vector3.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200))
end
end
coroutine.resume(coroutine.create(function()
wait(12)
p:Remove()
end))

end)
end

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = j.Backpack
h.Name = "Raype"
script.Parent = h





end 

rightfired = true
leftfired = false



function dop(m)
if equ == true then
sele = true
while sele == true do
wait()

if rightfired == true then
rightfired = false
for i=1,5 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(-i), 0, 0)
end

fire(j.Character.LeftG.fir, m)

for i=1,5 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(i), 0, 0)
end

leftfired = true
else
rightfired = true




for i=1,5 do
wait()
right.C1 = right.C1*CFrame.Angles(math.rad(-i), 0, 0)
end
fire(j.Character.RightG.fir, m)

for i=1,5 do
wait()
right.C1 = right.C1*CFrame.Angles(math.rad(i), 0, 0)
end


leftfired = false
end


end
elseif equ == false then
smacking = true
if leftfired == true then
leftfired = false
rightfired = true
for i=1,4 do
left.C1 = left.C1*CFrame.new(0, 0, .25)
wait()
end
for i=1,4 do
left.C1 = left.C1*CFrame.new(0, 0, -.25)
wait()
end
elseif rightfired == true then
rightfired = false
leftfired = true
for i=1,4 do
right.C1 = right.C1*CFrame.new(0, 0, .25)
wait()
end
for i=1,4 do
right.C1 = right.C1*CFrame.new(0, 0, -.25)
wait()
end
end


smacking = false
end

end


function punched(h)
if smacking == true then
if h.Parent.Name ~= g then
local u = h.Parent:findFirstChild("Humanoid")
local t = h.Parent:findFirstChild("Torso")
if u ~= nil and t ~= nil then
local k = math.random(2, 12)
u.Health = u.Health - k
disp(k, t.CFrame)
t.CFrame = t.CFrame*CFrame.Angles(math.rad(35), 0, 0)
t.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
end
end
end
end

la.Touched:connect(function(h) punched(h) end)

ra.Touched:connect(function(h) punched(h) end)









function unp(m)
sele = false
end



function sel(m)
ls.Parent,rs.Parent = nil

left = Instance.new("Weld")
left.Parent = j.Character.Torso
left.Part0 = j.Character.Torso
left.Part1 = la
left.C1 = CFrame.new(-1.5, .65, 0)*CFrame.Angles(math.rad(-90), math.rad(-15), math.rad(-15))


right = Instance.new("Weld")
right.Parent = j.Character.Torso
right.Part0 = j.Character.Torso
right.Part1 = ra
right.C1 = CFrame.new(1.5, .65, 0)*CFrame.Angles(math.rad(-90), math.rad(15), math.rad(15))




m.Button1Down:connect(function() dop(m) end)
m.Button1Up:connect(function() unp(m) end)
m.KeyDown:connect(function(k) keys(k, m) end)
end

script.Parent.Selected:connect(sel)

function LikeEarlier()
left.C1 = CFrame.new(-1.5, .65, 0)*CFrame.Angles(math.rad(-90), math.rad(-15), math.rad(-15))
right.C1 = CFrame.new(1.5, .65, 0)*CFrame.Angles(math.rad(-90), math.rad(15), math.rad(15))
end

for i, v in pairs(lefttab) do
v.BrickColor = BrickColor.new("Really black")
v.Touched:connect(function(h)
if swing == true then
if h.Parent.Name ~= g and h.Parent.Parent.Name ~= g and yes == true then
yes = false
local u = h.Parent:findFirstChild("Humanoid")
local t = h.Parent:findFirstChild("Torso")
if u ~= nil and t ~= nil then
local k = math.random(2, 40)
u.Health = u.Health - k
disp(k, h.CFrame)	
MakeNoise()
t.RotVelocity = Vector3.new(math.random(-100, 100),math.random(-100, 100), math.random(-100, 100))
end
end
wait(.3)
yes = true
end
end)
end
for i, v in pairs(righttab) do
v.BrickColor = BrickColor.new("Really black")
end

function keys(k, m)
if k == "f" then
swing = true
for i=1,10 do
wait()

left.C1 = left.C1*CFrame.Angles(math.rad(-10), 0, 0)
end


wait(.1)
for i=.2,5 do
wait()

left.C1 = left.C1*CFrame.Angles(math.rad(50), 0, 0)
end


for i=1,15 do
wait()

left.C1 = left.C1*CFrame.Angles(math.rad(-10), 0, 0)
end
swing = false
end

if k == "g" then
local p = Instance.new("Part")
p.Size = Vector3.new(1, 1, 1)
p:BreakJoints()
p.BrickColor = BrickColor.new("Really red")

local d = Instance.new("SpecialMesh")
d.Parent = p
d.MeshType = "Sphere"
d.Scale = Vector3.new(1, 1, 1)
local b = Instance.new("BodyForce")
b.Parent = p
p.CanCollide = false
b.force = ((p.Position-m.Hit.p).unit*p:GetMass()*-1000) + Vector3.new(0, 20*p:GetMass(), 0)
p.Touched:connect(function(h)
if h.Parent.Name ~= "LeftG" and h.Parent.Name ~= "RightG" and h.Parent.Name ~= g and h.Parent.Parent.Name ~= g then
local e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = p.Position
e.BlastRadius = 50
e.BlastPressure = 6756765
e.Hit:connect(function(h2)
if h2.Name ~= "Base" and h2.Parent.Name ~= g then
h2.Anchored = false
h2:BreakJoints()
end
end)
end
end)


if rightfired == true then
rightfired = false



for i=1,5 do
wait()
right.C1 = right.C1*CFrame.Angles(math.rad(-i), 0, 0)
end

p.CFrame = j.Character.RightG.fir.CFrame

for i=1,5 do
wait()
right.C1 = right.C1*CFrame.Angles(math.rad(i), 0, 0)
end

p.Parent = Workspace


leftfired = true
elseif leftfired == true then


leftfired = false
rightfired = true

for i=1,5 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(-i), 0, 0)
end
p.CFrame = j.Character.LeftG.fir.CFrame


for i=1,5 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(i), 0, 0)
end
p.Parent = Workspace



end

end


if k == "h" then
local sav = m
for i=1,20 do
if rightfired == true then
rightfired = false

for i=1,5 do
wait()
right.C1 = right.C1*CFrame.Angles(math.rad(-i), 0, 0)
end
fire(j.Character.RightG.fir, sav)

for i=1,5 do
wait()
right.C1 = right.C1*CFrame.Angles(math.rad(i), 0, 0)
end





leftfired = true
elseif leftfired == true then
leftfired = false
for i=1,5 do
left.C1 = left.C1*CFrame.Angles(math.rad(-i), 0, 0)
wait()
end
fire(j.Character.LeftG.fir, sav)
for i=1,5 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(i), 0, 0)
end



rightfired = true
end
end
end


if k == "j" then

if occupied == true then
bub(j.Character.Head, "*Snap*")
pcall(function()
occupied = false
end)
wait(1)
for i=1,5 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(0), math.rad(3), math.rad(0))
pcall(function()
play.Parent.Torso.Neck.C1 = play.Parent.Torso.Neck.C1*CFrame.Angles(0, math.rad(3), math.rad(3))
end)
end
pcall(function()
play.Parent.Torso.Neck:Remove()
end)
wait(1)
for i=1,5 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(0), math.rad(-3), math.rad(0))
end
pcall(function()
j.Character.Torso.Host:Remove()
end)
for i=1,10 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(2), math.rad(2.5), math.rad(2.5))
end
LikeEarlier()
else

play = nil
for i, v in next, Players:GetChildren() do
if v.Name ~= g and (j.Character.Torso.Position - v.Character.Head.Position).magnitude < 4 then
play = v.Character.Head
break
end
end
if play == nil then return end
bub(j.Character.Head, "I'm gonna do stuff to you!")
play.Parent.Humanoid.PlatformStand = true

occupied = true
for i=1,10 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(-2), math.rad(-2.5), math.rad(-2.5))
end
play.Parent.Torso.Neck.C1 = play.Parent.Torso.Neck.C1*CFrame.Angles(math.rad(-20), 0, 0)
local w = Instance.new("Weld")
w.Parent = j.Character.Torso
w.Part0 = play
w.Part1 = j.Character.Torso
w.C0 = CFrame.new(0, -.5, 1)
w.Name = "Host"

local wl = Instance.new("Weld")
wl.Parent = play
wl.Part0 = play.Parent.Torso
wl.Part1 = play.Parent["Left Leg"]
wl.C0 = CFrame.new(-1, -1.6, 0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(-40))

local wr = Instance.new("Weld")
wr.Parent = play
wr.Part0 = play.Parent.Torso
wr.Part1 = play.Parent["Right Leg"]
wr.C0 = CFrame.new(1, -1.6, -1)*CFrame.Angles(math.rad(50), math.rad(0), math.rad(40))





end
end

if k == "n" then
if occupied == true then
occupied = false
bub(j.Character.Head, "I'm gonna kick you in the bum!")
local lh = j.Character.Torso["Left Hip"]
local ll = j.Character["Left Leg"]
lh.Parent = nil
local l = Instance.new("Weld")
l.Parent = j.Character.Torso
l.Part0 = j.Character.Torso
l.Part1 = ll
l.C1 = CFrame.new(.5, 1.5, 0)
l.Name = "booooooob"
for i=1,5 do
l.C1 = l.C1*CFrame.Angles(math.rad(-15), 0, 0)
wait()
end

pcall(function()
j.Character.Torso.Host.C1 = CFrame.new(0, 0, 2)
j.Character.Torso.Host:Remove()
end)
wait(.3)
pcall(function()
MakeNoise()
play.Parent.Torso.Velocity = (j.Character.Torso.CFrame.lookVector*350)+Vector3.new(0, 100, 0)
end)

for i=1,10 do
l.C1 = l.C1*CFrame.Angles(math.rad(9), 0, 0)
wait()
end

wait(.7)
l:Remove()
lh.Parent = j.Character.Torso


for i=1,10 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(2), math.rad(2.5), math.rad(2.5))
end

end
end

if k == "k" then
local bg = Instance.new("BodyGyro")
bg.Parent = j.Character.Torso
local sav = m.Hit
bg.P = 10000000
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.cframe = CFrame.new( j.Character.Torso.Position,((sav-sav.p)*Vector3.new(-500, 0, 0)) )
local n = j.Character.Torso.Neck
for i=1,10 do
bg.cframe = CFrame.new( j.Character.Torso.Position,((sav-sav.p)*Vector3.new(-500, 0, 0)) )
n.C1 = n.C1*CFrame.Angles(0, 0, math.rad(9))
left.C1 = left.C1*CFrame.Angles(0, math.rad(9), 0)
left.C1 = left.C1*CFrame.new(.05, 0, .2)
right.C1 = right.C1*CFrame.Angles(0, math.rad(6), 0)
wait()
end
for i=1,10 do
wait(.5)
bg.cframe = CFrame.new( j.Character.Torso.Position,((sav-sav.p)*Vector3.new(-500, 0, 0)) )
fire(j.Character.RightG.fir, m)
fire(j.Character.LeftG.fir, m)
end
wait(1)
bg:Remove()
for i=1,10 do
n.C1 = n.C1*CFrame.Angles(0, 0, math.rad(-9))
left.C1 = left.C1*CFrame.Angles(0, math.rad(-9), 0)
left.C1 = left.C1*CFrame.new(-.05, 0, -.2)
right.C1 = right.C1*CFrame.Angles(0, math.rad(-6), 0)
wait()
end
LikeEarlier()
end




if k == "m" then
if occupied == true then

occupied = false
local user = g
local victim = play.Parent.Name
pcall(function()
play.Parent.Shirt:Remove()
play.Parent.Pants:Remove()
play.Parent.Torso.roblox:Remove()
end)for i, v in pairs(play.Parent:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new("Pastel brown")
end
end

bub(j.Character.Head, "Lemmeh raype you!")

lefth = j.Character.Torso["Left Hip"]
lefth.Parent = nil 
righth = j.Character.Torso["Right Hip"]
righth.Parent = nil




game.Workspace[victim].Humanoid.PlatformStand = true
wp = Instance.new("Weld") 
wp.Parent = game.Workspace 
wp.Part0 = game.Workspace[victim].Head 
wp.Part1 = game.Workspace[user].Torso 
wp.C0 = CFrame.new(0, 0.1, -1.5)*CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)  

gw = Instance.new("Weld")
gw.Parent = game.Workspace
gw.Part0 = game.Workspace[user].Torso
gw.Part1 = game.Workspace[user]["Left Leg"]

gw.C1 = CFrame.new(0, 1.5, 0)*CFrame.fromEulerAnglesXYZ(math.rad(0), 0, math.rad(60)) 

c = Instance.new("Weld")
c.Parent = game.Workspace
c.Part0 = game.Workspace[user].Torso
c.Part1 = game.Workspace[user]["Right Leg"]


w = Instance.new("Weld") 
w.Parent = game.Workspace 
w.Part0 = game.Workspace[victim].Torso


g2 = Instance.new("Part") 
g2.Parent = game.Workspace[victim]
g2.Size = Vector3.new(0.5, 4, 0.5)
g2.BrickColor = BrickColor.new("Pastel brown")

for i=1,3 do
g2:BreakJoints()
end
w.Part1 = g2 
w.C1 = CFrame.new(0, 1.5, -1)*CFrame.fromEulerAnglesXYZ(math.rad(-125), math.rad(0), 0)
mc = Instance.new("CylinderMesh")
mc.Parent = g2



c.C1 = CFrame.new(0, 1.5, 0)*CFrame.fromEulerAnglesXYZ(math.rad(0), 0, math.rad(-60))

bub(play.Parent.Head, "Oh please, nooo!!")


coroutine.resume(coroutine.create(function()
for i=1,20 do
wait() 

for i=0,0.1, 0.05 do 
wp.C0 = wp.C0*CFrame.fromEulerAnglesXYZ(math.rad(-90)*i, 0, 0) 
wait() 
end 
for i=0,0.1,0.05 do 
wp.C0 = wp.C0*CFrame.fromEulerAnglesXYZ(math.rad(90)*i, 0, 0) 
wait() 
end   
end
end))

--coroutine.resume(coroutine.create(function()
for i=1,20 do
wait() 

for i=0,0.1, 0.05 do 
w.C0 = w.C0*CFrame.fromEulerAnglesXYZ(math.rad(-90)*i, 0, 0) 
wait() 
end 
for i=0,0.1,0.05 do 
w.C0 = w.C0*CFrame.fromEulerAnglesXYZ(math.rad(90)*i, 0, 0) 
wait() 
end
end



--end))


lefth.Parent = j.Character.Torso
righth.Parent = j.Character.Torso
c:Remove()
gw:Remove()
j.Character.Torso:MakeJoints()
for i=1,10 do
wait()
left.C1 = left.C1*CFrame.Angles(math.rad(2), math.rad(2.5), math.rad(2.5))
end
wp:Remove()
for i, v in pairs(play.Parent:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new("Institutional white")
end
end
end
end



if k == "q" then 

if equ == true then
equ = false
for i=1,10 do
wait()
left.C1 = left.C1 * CFrame.Angles(math.rad(-i*2.5), 0, 0)
left.C1 = left.C1 * CFrame.new(0, 0,i*0.03)
right.C1 = right.C1 * CFrame.Angles(math.rad(-i*2.5), 0, 0)
right.C1 = right.C1 * CFrame.new(0, 0,i*0.03)
end

rsav = j.Character.R 
rsav.Parent = nil
lsav = j.Character.L
lsav.Parent = nil

local bl = weld(j.Character, j.Character.LeftG.handle, j.Character.Torso, CFrame.new(.7, -.3, 0)*CFrame.Angles(math.rad(45), math.rad(-90), math.rad(0)))
bl.Name = "EquL"
local br = weld(j.Character, j.Character.RightG.handle, j.Character.Torso, CFrame.new(-.7, -.3, 0)*CFrame.Angles(math.rad(45), math.rad(-270), math.rad(0)))
br.Name = "EquR"

for i=1,10 do
wait()
left.C1 = left.C1 * CFrame.Angles(math.rad(i*2.5), 0, 0)
left.C1 = left.C1 * CFrame.new(0, 0,-i*0.03)
right.C1 = right.C1 * CFrame.Angles(math.rad(i*2.5), 0, 0)
right.C1 = right.C1 * CFrame.new(0, 0,-i*0.03)
end
LikeEarlier()
elseif equ == false then
equ = true
for i=1,10 do
wait()
left.C1 = left.C1 * CFrame.Angles(math.rad(-i*2.5), 0, 0)
left.C1 = left.C1 * CFrame.new(0, 0,i*0.03)
right.C1 = right.C1 * CFrame.Angles(math.rad(-i*2.5), 0, 0)
right.C1 = right.C1 * CFrame.new(0, 0,i*0.03)
end

j.Character.EquL:Remove()
j.Character.EquR:Remove()
lsav.Parent = j.Character
rsav.Parent = j.Character


for i=1,10 do
wait()
left.C1 = left.C1 * CFrame.Angles(math.rad(i*2.5), 0, 0)
left.C1 = left.C1 * CFrame.new(0, 0,-i*0.03)
right.C1 = right.C1 * CFrame.Angles(math.rad(i*2.5), 0, 0)
right.C1 = right.C1 * CFrame.new(0, 0,-i*0.03)
end





LikeEarlier()

end
end



if k == "b" then
if occupied == true and equ == true then
for i=1,5 do
left.C1 = left.c1*CFrame.new(-.7, 0, -.3)
left.C1 = left.C1*CFrame.Angles(0, math.rad(-8), 0)
wait()
end
wait(.1)
occupied = false

local pos = j.Character.LeftG.fir
local li = Instance.new("Part")
li.Parent = Workspace
li:BreakJoints()
li.BrickColor = BrickColor.new("Bright yellow")
li.CFrame = pos.CFrame+((pos.CFrame - pos.CFrame.p)*Vector3.new(0, 1*.35, 0))
li.Size = Vector3.new(1, 1, 1)
li.Anchored = true
li.CanCollide = false
local sp = Instance.new("SpecialMesh")
sp.Parent = li
sp.MeshType = "Sphere"
sp.Scale = Vector3.new(0.01, 0.01, 0.01)
coroutine.resume(coroutine.create(function()
for i=1,20 do
wait()
li.Transparency = li.Transparency + .05
sp.Scale = sp.Scale + Vector3.new(0.13, 0.13, 0.13)
li.CFrame = pos.CFrame+((pos.CFrame - pos.CFrame.p)*Vector3.new(0, 1*.35, 0))
end
li:Remove()
end))

play:BreakJoints()

wait(.3)

for i=1,5 do
left.C1 = left.c1*CFrame.new(.7, 0, .3)
left.C1 = left.C1*CFrame.Angles(0, math.rad(8), 0)
wait()
end
LikeEarlier()
end
end



end

function desel(m)
ls.Parent,rs.Parent = j.Character.Torso,j.Character.Torso
right:Remove()
left:Remove()
end
script.Parent.Deselected:connect(desel)
pcall(function()
script.Sour.Value = ""
script.String.Value = ""
script.DSource.Value 