ply = game:GetService("Players").luxulux
local char = ply.Character
local torso = char.Torso
local ls = torso["Left Shoulder"]
local rs = torso["Right Shoulder"]
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
rw,lw = Instance.new("Weld"),Instance.new("Weld")
script.Parent = char
attacking = false
holding = false
ndam = -5
dam = ndam
 
----BLOOD---
function blood(part)
wait(0.000001)
local c = Instance.new("Part",Workspace)
c.formFactor = "Custom"
c.Size = Vector3.new(0.2,0.2,0.2)
c.Position = part.Position + Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
c.BrickColor = BrickColor.new("New Yeller")
c.Transparency = 0.5
c.TopSurface = 0
c.BottomSurface = 0
game:GetService("Debris"):AddItem(c,2)
end
---------------
 
local function damage(hit)
if hit.Parent ~= char then
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
v.Health = v.Health-dam
blood(hit)
end
end
end
end
 
 
-----LOCKING FUNCTION----
function lock(a)
if a == 1 then
rw.Parent = torso
rw.Part0 = rs.Part0
rw.Part1 = rs.Part1
rw.C0 = rs.C0
rw.C1 = rs.C1
 
lw.Parent = torso
lw.Part0 = ls.Part0
lw.Part1 = ls.Part1
lw.C0 = ls.C0
lw.C1 = ls.C1
 
ls.Parent = nil
rs.Parent = nil
elseif a == 0 then
ls.Parent = torso
rs.Parent = torso
rw.Parent = nil
lw.Parent = nil
end
end
----------------------
m = Instance.new("Model",char)
m.Name = "Maul1"
 
---MAIN---
hdl = Instance.new("Part",m)
hdl.formFactor = "Custom"
hdl.Size = Vector3.new(0.5,5,0.5)
hdl.TopSurface = 0
hdl.BottomSurface = 0
hdl.Color = Color3.new(0,0,0.5)
hdl.CanCollide = false
hdl.Name = "Handle"
 
ball = hdl:Clone()
ball.formFactor = "Custom"
ball.Parent = m
ball.Shape = 0
ball.Size = Vector3.new(2,2,2)
ball.Name = "Tip"
ball.Touched:connect(damage)
 
Instance.new("CylinderMesh",hdl)
 
ball2 = ball:Clone()
ball2.Parent = m
ball2.Size = ball.Size * 1.5
ball2.Transparency = 0.9
ball2.CanCollide = false
ball2.Color = Color3.new(0,0,0)
 
stup = hdl:Clone()
stup.Parent = m
stup.Size = Vector3.new(0.7,0.3,0.7)
stup.BrickColor = BrickColor.new("New Yeller")
 
disc = hdl:Clone()
disc.Parent = m
disc.Size = Vector3.new(ball.Size.x,0,ball.Size.y)*1.1
disc.Color = stup.Color
 
disc2 = disc:Clone()
disc2.Parent = m
 
disc3 = disc:Clone()
disc3.Parent = m
 
for i,v in pairs(m:GetChildren()) do
wait()
v.Position = larm.Position
end
 
w = Instance.new("Weld",disc)
w.Part0 = disc
w.Part1 = ball
w = Instance.new("Weld",disc2)
w.Part0 = disc2
w.Part1 = ball
w.C1 = CFrame.Angles(0,0,math.pi/2)
w = Instance.new("Weld",disc3)
w.Part0 = disc3
w.Part1 = ball
w.C1 = CFrame.Angles(0,math.pi/2,math.pi/2)
 
bw = Instance.new("Weld",ball)
bw.Part0 = ball
bw.Part1 = hdl
bw.C1 = CFrame.new(0,hdl.Size.y/2+ball.Size.y/2.2,0)
 
w = Instance.new("Weld",ball2)
w.Part0 = ball2
w.Part1 = ball
 
w = Instance.new("Weld",stup)
w.Part0 = stup
w.Part1 = hdl
w.C1 = CFrame.new(0,-hdl.Size.y/2-stup.Size.y/2,0) * CFrame.Angles(0,math.pi/2,0)
 
holdpos = CFrame.new(0,-larm.Size.y/2,0) * CFrame.Angles(-math.pi/1.95,math.pi,0)
torsopos = CFrame.new(0,0,torso.Size.z/2)
stabpos = CFrame.new(0,-larm.Size.y/2,0) * CFrame.Angles(0,0,-math.pi)
 
hw = Instance.new("Weld",hdl)
hw.Part0 = hdl
hw.Part1 = torso
hw.C1 = torsopos * CFrame.Angles(0,0,math.pi/4)
 
for i = -hdl.Size.y/2,hdl.Size.y/2 do
c2 = disc:Clone()
c2.Parent = m
c2.Size = Vector3.new(hdl.Size.x,0.2,hdl.Size.y) * 1.1
 
w = Instance.new("Weld",c2)
w.Part0 = c2
w.Part1 = hdl
w.C1 = CFrame.new(0,i,0)
end
 
spar = Instance.new("Sparkles",ball)
spar.SparkleColor = Color3.new(1,1,0)
spar.Enabled = false
 
-----------------------
---SECOND WEP---
m2 = m:Clone()
m2.Name = "Maul2"
m2.Parent = char
local hdl2 = m2:FindFirstChild("Handle")
local tip2 = m2:FindFirstChild("Tip")
tip2.Touched:connect(damage)
local spar2 = tip2:FindFirstChild("Sparkles")
hw2 = Instance.new("Weld",hdl2)
hw2.Part0 = hdl2
hw2.Part1 = torso
hw2.C1 = torsopos * CFrame.Angles(0,0,-math.pi/4)
--------------
 
function ang(x,y,z)
return CFrame.Angles(math.rad(x),math.rad(y),math.rad(z))
end
 
function wield(a,b)
attacking = true
if b == 1 then
lock(1)
 
for i = 1,120/a do
wait()
lw.C0 = lw.C0 * ang(0,0,-a)
rw.C0 = rw.C0 * ang(0,0,a)
end
hw.Part1 = larm
hw.C1 = holdpos
hw2.Part1 = rarm
hw2.C1 = holdpos
for i = 1,40/a do
wait()
lw.C0 = lw.C0 * ang(0,0,a)
rw.C0 = rw.C0 * ang(0,0,-a)
end
 
elseif b == 0 then
for i = 1,120/a do
wait()
lw.C0 = lw.C0 * ang(0,0,-a)
rw.C0 = rw.C0 * ang(0,0,a)
end
hw.Part1 = torso
hw.C1 = torsopos * CFrame.Angles(0,0,math.pi/4)
hw2.Part1 = torso
hw2.C1 = torsopos * CFrame.Angles(0,0,-math.pi/4)
for i = 1,40/a do
wait()
lw.C0 = lw.C0 * ang(0,0,a)
rw.C0 = rw.C0 * ang(0,0,-a)
end
lock(0)
end
attacking = false
end
 
function slash(a)
attacking = true
spar.Enabled = true spar2.Enabled = true
for i = 1,50/a do
wait()
lw.C0 = lw.C0 * ang(0,-a,0)
end
for i = 1,90/a do
wait()
lw.C0 = lw.C0 * ang(0,0,a)
end
 
for i = 1,90/a do
wait()
lw.C0 = lw.C0 * ang(0,0,-a)
end
for i = 1,50/a do
wait()
lw.C0 = lw.C0 * ang(0,a,0)
end
 
for i = 1,50/a do
wait()
rw.C0 = rw.C0 * ang(0,a,0)
end
for i = 1,90/a do
wait()
rw.C0 = rw.C0 * ang(0,0,-a)
end
 
for i = 1,90/a do
wait()
rw.C0 = rw.C0 * ang(0,0,a)
end
for i = 1,50/a do
wait()
rw.C0 = rw.C0 * ang(0,-a,0)
end
attacking = false
spar.Enabled = false spar2.Enabled = false
end
 
function shine(a)
attaking = true
for i = 1,20/a do
wait()
lw.C0 = lw.C0 * ang(a,0,0)
rw.C0 = rw.C0 * ang(a,0,0)
end
for i = 1,6/3 do
wait()
lw.C0 = lw.C0 * ang(0,-a,0)
rw.C0 = rw.C0 * ang(0,a,0)
end
for i = 1,6/3 do
rw.C0 = rw.C0 * ang(0,0,-a)
end
for i = 1,50 do
wait()
c = Instance.new("Part",m)
c.formFactor = "Custom"
c.Size = Vector3.new(0.3,0.3,math.random(10,20))
c.Anchored = true
c.TopSurface = 0
c.BottomSurface = 0
c.Transparency = 0.5
c.CanCollide = false
c.Color = stup.Color
c.CFrame = torso.CFrame * CFrame.Angles(i,i,i) + torso.CFrame.lookVector * 5
game:GetService("Debris"):AddItem(c,0.3)
end
effect(torso.Position + torso.CFrame.lookVector * 5,10,0)
for i = 1,6/3 do
rw.C0 = rw.C0 * ang(0,0,a)
end
for i = 1,6/3 do
wait()
lw.C0 = lw.C0 * ang(0,a,0)
rw.C0 = rw.C0 * ang(0,-a,0)
end
for i = 1,20/a do
wait()
lw.C0 = lw.C0 * ang(-a,0,0)
rw.C0 = rw.C0 * ang(-a,0,0)
end
attacking = false
end
 
function effect(pos,radius,a)
local ce = Instance.new("Part",m)
ce.Size = Vector3.new(1,1,1)
ce.TopSurface = 0
ce.BottomSurface = 0
ce.Anchored = true
ce.CFrame = CFrame.new(pos)
ce.CanCollide = false
ce.Transparency = 0.5
ce.Color = stup.Color
 
mesh = Instance.new("SpecialMesh",ce)
mesh.MeshType = 3
if a == 1 then
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
end
 
for i = 1,radius do
wait()
mesh.Scale = Vector3.new(i,i,i)
ce.Transparency = i/radius
end
ce:Remove()
end
 
function slash2(a)
attacking = true
dam = 3
for i = 1,30/a do
wait()
lw.C0 = lw.C0 * ang(a,0,0)
end
for i = 1,80/a do
wait()
lw.C0 = lw.C0 * ang(0,0,a)
end
effect(ball2.Position,5,1)
for i = 1,80/a do
wait()
lw.C0 = lw.C0 * ang(0,0,-a)
end
for i = 1,30/a do
wait()
lw.C0 = lw.C0 * ang(-a,0,0)
end
 
for i = 1,25/a do
wait()
rw.C0 = rw.C0 * ang(0,-a,0)
end
for i = 1,80/a do
wait()
rw.C0 = rw.C0 * ang(0,0,-a)
end
effect(tip2.Position,5,1)
for i = 1,80/a do
wait()
rw.C0 = rw.C0 * ang(0,0,a)
end
for i = 1,25/a do
wait()
rw.C0 = rw.C0 * ang(0,a,0)
end
dam = ndam
attacking = false
end
 
function clone(pos,a)
char.archivable = true
local cl = char:Clone()
cl.Parent = Workspace
cl.Torso.CFrame = CFrame.new(pos) + Vector3.new(0,cl.Torso.Size.y*2)
cl.Humanoid.Died:connect(function() cl:Remove() end)
char.archivable = false
if a > 0 then
delay(a,function()Instance.new("Explosion",Workspace).Position = cl.Torso.Position end)
end
return cl
end
 
function clonewave(a)
attacking = true
for i = 1,90/a do
wait()
lw.C0 = lw.C0 * ang(0,0,-a)
end
for i = 1,360/a do
wait()
hw.C0 = hw.C0 * ang(0,0,a)
end
 
effect(hdl.Position,10,0)
 
for i = 1,5 do
clone(torso.Position + torso.CFrame.lookVector * i*5,2)
end
 
for i = 1,90/a do
wait()
lw.C0 = lw.C0 * ang(0,0,a)
end
effect(stup.Position,15,1)
attacking = false
end
 
function drag(tar)
if tar ~= nil then
attacking = true
if tar.Anchored == false then
 
g = Instance.new("SelectionBox",m)
g.Adornee = tar
g.Color = BrickColor.new("New Yeller")
 
b = Instance.new("BodyPosition",tar)
b.maxForce = Vector3.new() * math.huge
holding = true
while holding == true do
wait()
b.position = torso.Position + torso.CFrame.lookVector * 10
end
b:Remove() g:Remove() attacking = false
end
end
end
 
function ray(tar,pos,a)
if tar ~= nil then
local mag = (pos-a).magnitude
local c = Instance.new("Part",Workspace)
c.formFactor = "Custom"
c.Size = Vector3.new(0.6,0.6,mag)
c.TopSurface = 0
c.BottomSurface = 0
c.Transparency = 0.5
c.CanCollide = false
c.Color = stup.Color
c.Anchored = true
c.CFrame = CFrame.new(pos,a) * CFrame.new(0,0,-mag/2)
game:GetService("Debris"):AddItem(c,0.3)
end
end
 
function ragdollbullet(tar,pos)
if tar ~= nil then
for i = 1,120/20 do
wait()
lw.C0 = lw.C0 * ang(0,0,-20)
rw.C0 = rw.C0 * ang(0,0,20)
end
 
local b = Instance.new("BodyPosition",clone(torso.Position+Vector3.new(0,5,0),0).Torso)
b.maxForce = Vector3.new() * math.huge
b.position = pos
 
for i,v in pairs(b.Parent:GetChildren()) do
if v.className == "Part" then v.CanCollide = false
end end
 
for i = 1,120/40 do
wait()
lw.C0 = lw.C0 * ang(0,0,40)
rw.C0 = rw.C0 * ang(0,0,-40)
end
while (b.Parent.Position-pos).magnitude > 3 do wait() end
Instance.new("Explosion",Workspace).Position = b.Parent.Position
end
end
 
function teleport(tar,pos)
attacking = true
if tar ~= nil then
effect(torso.Position,10)
effect(pos,10)
torso.CFrame = CFrame.new(pos) + Vector3.new(0,torso.Size.y*2,0)
end
attacking = false
end
-----------------------
 
------------TRANSFORM---------
function transform()
mo = Instance.new("Model",Workspace)
mo.Name = "Lunar Creature"
script.Parent = mo
 
body = Instance.new("Part",mo)
body.formFactor = "Custom"
body.Size = Vector3.new(4,3,4)
body.Color = hdl.Color
body.Locked = true
body.TopSurface = 0
body.BottomSurface = 0
Instance.new("SpecialMesh",body)
 
head = body:Clone()
head.Parent = mo
head.Size = Vector3.new(2.5,2.5,2.5)
 
leg = body:Clone()
leg.Parent = mo
leg.Size = Vector3.new(1,3,1)
 
leg2 = leg:Clone()
leg2.Parent = mo
 
leg3 = leg:Clone()
leg3.Parent = mo
 
leg4 = leg:Clone()
leg4.Parent = mo
 
eye = body:Clone()
eye.Parent = mo
eye.Mesh.MeshType = 3
eye.Size = Vector3.new(1,1,1)
eye.Color = stup.Color
eye2 = eye:Clone()
eye2.Parent = mo
 
pup = eye:Clone()
pup.Size = Vector3.new(0.2,0.2,0.2)
pup.Color = Color3.new(0,0,0)
pup.Parent = mo
pup2 = pup:Clone() pup2.Parent = mo
 
hat = eye:Clone()
hat.Parent = head
hat.Size = Vector3.new(3,0.1,3)
 
hatd = hat:Clone()
hatd.Parent = mo
hatd.Size = Vector3.new(2.5,0.2,2.5)
hatd.Color = pup.Color
 
tail = eye:Clone()
tail.Parent = mo
tail.Size = Vector3.new(0.5,4,0.5)
 
fet1 = eye:Clone()
fet1.Parent = mo
fet1.Size = Vector3.new(1.3,1.3,1.3)
fet2 = fet1:Clone() fet2.Parent = mo
fet3 = fet1:Clone() fet3.Parent = mo
fet4 = fet1:Clone() fet4.Parent = mo
 
o = 3.2
e = 1.4
w = Instance.new("Weld",head)
w.Part0 = head
w.Part1 = body
w.C1 = CFrame.new(0,head.Size.y/2+body.Size.y/3,-body.Size.z/2+head.Size.z/3)
 
w = Instance.new("Weld",eye)
w.Part0 = eye
w.Part1 = head
w.C1 = CFrame.new(head.Size.x/3.5,head.Size.y/3.5,-head.Size.z/3.5)
w = Instance.new("Weld",eye)
w.Part0 = eye2
w.Part1 = head
w.C1 = CFrame.new(-head.Size.x/3.5,head.Size.y/3.5,-head.Size.z/3.5)
 
w = Instance.new("Weld",pup)
w.Part0 = pup
w.Part1 = eye
w.C1 = CFrame.new(0,0,-eye.Size.z/2+pup.Size.z/4)
 
w = Instance.new("Weld",pup2)
w.Part0 = pup2
w.Part1 = eye2
w.C1 = CFrame.new(0,0,-eye.Size.z/2+pup.Size.z/4)
 
w = Instance.new("Weld",hat)
w.Part0 = hat
w.Part1 = head
w.C1 = CFrame.new(0,head.Size.y/2,0)
w = Instance.new("Weld",hatd)
w.Part0 = hatd
w.Part1 = hat
w.C1 = CFrame.new(0,0.05,0)
 
w = Instance.new("Weld",tail)
w.Part0 = tail
w.Part1 = body
w.C1 = CFrame.new(0,0.4,body.Size.z/2) * CFrame.Angles(math.pi/4,0,0)
 
-----LEG WELDS-------
w = Instance.new("Weld",leg)
w.Part0 = leg
w.Part1 = body
w.C1 = CFrame.new(body.Size.x/o,-body.Size.y/e,body.Size.x/o)
 
w = Instance.new("Weld",leg2)
w.Part0 = leg2
w.Part1 = body
w.C1 = CFrame.new(-body.Size.x/o,-body.Size.y/e,body.Size.x/o)
 
w = Instance.new("Weld",leg3)
w.Part0 = leg3
w.Part1 = body
w.C1 = CFrame.new(body.Size.x/o,-body.Size.y/e,-body.Size.x/o)
 
w = Instance.new("Weld",leg4)
w.Part0 = leg4
w.Part1 = body
w.C1 = CFrame.new(-body.Size.x/o,-body.Size.y/e,-body.Size.x/o)
-------------------------------
 
 
------FET WELDS------
w = Instance.new("Weld",mo)
w.Part0 = fet1
w.Part1 = leg
w.C1 = CFrame.new(0,-leg.Size.y/2,0)
w = Instance.new("Weld",mo)
w.Part0 = fet2
w.Part1 = leg2
w.C1 = CFrame.new(0,-leg.Size.y/2,0)
w = Instance.new("Weld",mo)
w.Part0 = fet3
w.Part1 = leg3
w.C1 = CFrame.new(0,-leg.Size.y/2,0)
w = Instance.new("Weld",mo)
w.Part0 = fet4
w.Part1 = leg4
w.C1 = CFrame.new(0,-leg.Size.y/2,0)
---NAMINGS-------
body.Name = "Torso"
head.Name = "Head"
leg.Name = "Right Leg"
leg2.Name = "Left Leg"
--------------------------
 
 
 
------------PET-------------
pet = Instance.new("Model",mo)
 
petb = Instance.new("Part",pet)
petb.Size = Vector3.new(2,2,2)
petb.Shape = 0
petb.Locked = true
petb.TopSurface = 0
petb.BottomSurface = 0
petb.CanCollide = false
petb.Position = head.Position + Vector3.new(0,5,0)
petb.Color = body.Color
petb.CanCollide = false
 
petd = petb:Clone()
petd.Parent = pet
petd.formFactor = "Custom"
petd.Shape = 1
petd.Color = eye.Color
petd.Size = Vector3.new(2.6,0.2,2.6)
Instance.new("CylinderMesh",petd)
 
pete = petd:Clone()
pete.Parent = pet
pete.Size = Vector3.new(1,1,0.2)
pete.Color = pup.Color
Instance.new("SpecialMesh",pete).MeshType = 3
 
petw = petb:Clone()
petw.Shape = 1
petw.formFactor = "Custom"
petw.Parent = pet
petw.Size = Vector3.new(2,0.1,2)
petw2 = petw:Clone()
petw2.Parent = pet
 
w = Instance.new("Weld",petd)
w.Part0 = petd
w.Part1 = petb
 
w = Instance.new("Weld",pete)
w.Part0 = pete
w.Part1 = petd
w.C1 = CFrame.new(0,0,petd.Size.z/2)
 
w = Instance.new("Weld",petw)
w.Part0 = petw
w.Part1 = petd
w.C1 = CFrame.new(petd.Size.x/2+petw.Size.x/3,0,0)
 
w = Instance.new("Weld",petw2)
w.Part0 = petw2
w.Part1 = petd
w.C1 = CFrame.new(-petd.Size.x/2-petw.Size.x/3,0,0)
 
bp = Instance.new("BodyPosition",petb)
bp.maxForce = Vector3.new() * math.huge
 
bg = Instance.new("BodyGyro",petb)
bg.maxTorque = Vector3.new(1,0,1) * math.huge
 
follow = coroutine.create(function() while mo ~= nil do wait() bg.cframe = head.CFrame * CFrame.Angles(0,math.pi,0) bp.position = head.Position + head.CFrame.lookVector * -1 + Vector3.new(0,3,0) end end)
coroutine.resume(follow)
dam = 1
for i,v in pairs(mo:GetChildren()) do
if v.className == "Part" then v.Touched:connect(damage)
end
end
 
----------------------------------------
 
hum = Instance.new("Humanoid",mo)
hum.WalkSpeed = 30
hum.MaxHealth = 1/0
hum.Health = 1/0
 
mo:MoveTo(torso.Position+Vector3.new(0,5,0))
ply.Character = mo
 
end
 
function kd(key,mouse)
if attacking == false then
if key == "x" then m:Remove() m2:Remove() h:Remove() script:Remove() lock(0)
elseif key == "f" then ray(mouse.Target,tip2.Position,mouse.hit.p) ray(mouse.Target,ball.Position,mouse.hit.p) clone(mouse.hit.p,0)
elseif key == "t" then teleport(mouse.Target,mouse.hit.p)
elseif key == "e" then shine(20)
elseif key == "q" then clonewave(20)
elseif key == "c" then ragdollbullet(mouse.Target,mouse.hit.p)
elseif key == "r" then slash2(20)
elseif key == "v" then drag(mouse.Target)
elseif key == "n" then m2:Remove() m:Remove() h:Remove() lock(0) transform() 
elseif key == "z" then ray(mouse.Target,tip2.Position,mouse.hit.p) ray(mouse.Target,ball.Position,mouse.hit.p) Instance.new("Explosion",Workspace).Position = mouse.hit.p
end
end
end
 
 
 
function select(mouse)
wield(20,1)
mouse.KeyUp:connect(function(hit) if hit == "v" then holding = false end end) 
mouse.Button1Down:connect(function() slash(20) end)
mouse.KeyDown:connect(function(key) kd(key,mouse) end)
end
 
h = Instance.new("HopperBin",ply.Backpack)
h.Name = "Lunar Maces"
script.Parent = h
 
h.Selected:connect(select)
h.Deselected:connect(function() wield(20,0) end)
 