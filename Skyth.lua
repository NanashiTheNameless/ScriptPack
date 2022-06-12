name = "Skyth"

me = game.Players.ic3w0lf589
char = me.Character
bin = script.Parent
selected = false
attacking = false
hurt = false
deb = true
normdmg = 18
dmg = normdmg
fly = false
firecols = {"Bright violet", "Black", "Really black"}

parts = {}

if char:findFirstChild("Scythe",true) ~= nil then
char:findFirstChild("Scythe",true).Parent = nil
end

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

function getcharparts(path)
local objs = {}
for _,v in pairs(path:children()) do
if v:IsA("Model") and v.Name ~= name then
for _,k in pairs(v:children()) do
if k.Name == "Torso" then
table.insert(objs,k)
end
end
end
end
return objs
end

sword = Instance.new("Model",me.Character)
sword.Name = "Scythe"

--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")

main = Instance.new("Part")
prop(main, sword, false, 0, 0, 0.45, 6.4, 0.45, "Really black", false, "Custom")
mme = Instance.new("SpecialMesh")
mesh(mme,main,1,1,1,"Head")
table.insert(parts,main)

part1 = Instance.new("Part")
prop(part1, sword, false, 0, 0, 0.45, 1, 0.45, "Really black", false, "Custom")
p1m = Instance.new("SpecialMesh")
mesh(p1m,part1,1,1,1,"Head")
w1 = Instance.new("Weld")
weld(w1, main, part1, 0, 0, -1.1, -0.3, 3.3, 0)

part2 = Instance.new("Part")
prop(part2, sword, false, 0, 0, 0.45, 1, 0.45, "Really black", false, "Custom")
p2m = Instance.new("SpecialMesh")
mesh(p2m,part2,1,1,1,"Head")
w2 = Instance.new("Weld")
weld(w2, main, part2, 0, 0, -1.1, 0.3, -3.3, 0)

blade1 = Instance.new("Part")
prop(blade1, sword, false, 0, 0, 1.4, 0.8, 0.1, "Dark grey", false, "Custom")
b1m = Instance.new("BlockMesh",blade1)
w3 = Instance.new("Weld")
weld(w3, main, blade1, 0, 0, -0.4, -0.45, -3.4, 0)
table.insert(parts,blade1)

blade2 = Instance.new("Part")
prop(blade2, sword, false, 0, 0, 1.1, 0.8, 0.1, "Dark grey", false, "Custom")
b2m = Instance.new("BlockMesh",blade2)
w4 = Instance.new("Weld")
weld(w4, main, blade2, 0, 0, 0, -1.5, -3.66, 0)
table.insert(parts,blade2)

blade3 = Instance.new("Part")
prop(blade3, sword, false, 0, 0, 0.1, 0.8, 1.7, "Dark grey", false, "Custom")
b3m = Instance.new("SpecialMesh")
mesh(b3m,blade3,1,1,1,"Wedge")
w5 = Instance.new("Weld")
weld(w5, main, blade3, 0, math.pi/2, 0.4, -2.64, -3.38, 0)
table.insert(parts,blade3)

blade1b = Instance.new("Part")
prop(blade1b, sword, false, 0, 0, 1.4, 0.8, 0.1, "Dark grey", false, "Custom")
b1mb = Instance.new("BlockMesh",blade1b)
w6 = Instance.new("Weld")
weld(w6, main, blade1b, 0, 0, -0.4+math.pi, 0.45, 3.4, 0)
table.insert(parts,blade1b)

blade2b = Instance.new("Part")
prop(blade2b, sword, false, 0, 0, 1.1, 0.8, 0.1, "Dark grey", false, "Custom")
b2mb = Instance.new("BlockMesh",blade2b)
w7 = Instance.new("Weld")
weld(w7, main, blade2b, 0, 0, math.pi, 1.5, 3.66, 0)
table.insert(parts,blade2b)

blade3b = Instance.new("Part")
prop(blade3b, sword, false, 0, 0, 0.1, 0.8, 1.7, "Dark grey", false, "Custom")
b3mb = Instance.new("SpecialMesh")
mesh(b3mb,blade3b,1,1,1,"Wedge")
w8 = Instance.new("Weld")
weld(w8, main, blade3b, 0, math.pi/2, 0.4+math.pi, 2.64, 3.38, 0)
table.insert(parts,blade3b)

for i=0.9, 1.6, 0.09 do
hp1 = Instance.new("Part")
prop(hp1, sword, false, 0, 0, 0.48, 0.09, 0.48, "White", false, "Custom")
h1m = Instance.new("SpecialMesh")
mesh(h1m,hp1,1,1,1,"Head")
w9 = Instance.new("Weld")
weld(w9, main, hp1, math.random(-20,20)/100, 0, math.random(-20,20)/100, 0, i, 0)
end

for i=0.9, 1.6, 0.09 do
hp2 = Instance.new("Part")
prop(hp2, sword, false, 0, 0, 0.48, 0.09, 0.48, "White", false, "Custom")
h2m = Instance.new("SpecialMesh")
mesh(h2m,hp2,1,1,1,"Head")
w10 = Instance.new("Weld")
weld(w10, main, hp2, math.random(-20,20)/100, 0, math.random(-20,20)/100, 0, -i, 0)
end

--Arm joints-----------------------Arm joints-----------------------Arm joints---------------------

righthold = Instance.new("Part")
prop(righthold, sword, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)

lefthold = Instance.new("Part")
prop(lefthold, sword, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)

rb = Instance.new("Part")
prop(rb, sword, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

lb = Instance.new("Part")
prop(lb, sword, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)

rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)

lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)


holdweld = Instance.new("Weld")
weld(holdweld,torso,main,0,0,0.85,0,0,-0.64)

rh = Instance.new("Weld")
weld(rh,righthold,nil,math.pi/2,0,math.pi,0,0,1)

lh = Instance.new("Weld")
weld(lh,lefthold,nil,math.pi/2,0,0,0,0,0)

rightbattle = nil
leftbattle = nil

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Scythe"
script.Parent = h
end

bin = script.Parent

function selectmotion()
rw.Part1 = rarm
rh.C0 = CFrame.new(0,0,0)
rw.C0 = CFrame.new(0,0,0)
lw.C0 = CFrame.new(0,0,0)
for i=1, 7 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.25,0.13,-0.1)
wait()
end
rh.Part1 = main
holdweld.Part1 = nil
for i=1, 5 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.3,0,-0.1)
rh.C0 = rh.C0 * CFrame.new(0,0,0.4) * CFrame.fromEulerAnglesXYZ(0,0,-(math.pi/2)/5)
wait()
end
lw.Part1 = larm
for i=1, 5 do
rw.C0 = rw.C0 * CFrame.new(-0.03,0.05,0.08) * CFrame.fromEulerAnglesXYZ(-0.3,-0.2,0.13)
lw.C0 = lw.C0 * CFrame.new(0.08,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
wait()
end
rightbattle = rw.C0
leftbattle = lw.C0
rh.Part1 = main
lw.Part1 = larm
rw.C0 = rightbattle
lw.C0 = leftbattle
selected = true
end

function deselmotion()
selected = false
rightbattle = rw.C0
leftbattle = lw.C0
rh.Part1 = main
lw.Part1 = larm
rw.Part1 = rarm
rw.C0 = rightbattle
lw.C0 = leftbattle
for i=1, 5 do
rw.C0 = rw.C0 * CFrame.new(0.03,-0.05,-0.08) * CFrame.fromEulerAnglesXYZ(0.3,0.2,-0.13)
lw.C0 = lw.C0 * CFrame.new(-0.08,0,0) * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
wait()
end
lw.Part1 = nil
for i=1, 5 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.3,0,0.1)
rh.C0 = rh.C0 * CFrame.new(0,0,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,(math.pi/2)/5)
wait()
end
holdweld.Part1 = main
rh.Part1 = nil
for i=1, 7 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.25,-0.13,0.1)
wait()
end
rw.Part1 = nil
lw.Part1 = nil
rh.C0 = CFrame.new(0,0,0)
rw.C0 = CFrame.new(0,0,0)
lw.C0 = CFrame.new(0,0,0)
end

--Effect------------------Effect------------------Effect------------------Effect------------------Effect----------------

function effect()
for _,v in pairs(parts) do
local o = v:clone()
o.Parent = workspace
o.Transparency = 0.6
o.BrickColor = BrickColor.new("Bright violet")
o.Anchored = true
o.CanCollide = false
o.CFrame = v.CFrame
coroutine.resume(coroutine.create(function()
for i=o.Transparency, 1, 0.07 do
wait()
o.Transparency = i
end
o:remove()
end))
end
end

--KILL FUNCTION-------------KILL FUNCTION-------------KILL FUNCTION-------------KILL FUNCTION-----------


function kill(h)
if hurt and deb then
local hu = h.Parent:findFirstChild("Humanoid")
if hu ~= nil and h.Parent.Name ~= name then
deb = false
local dam = math.random(0,dmg)
hu.Health = hu.Health - dam
local p = Instance.new("Part")
prop(p,nil,false,1,0,0.9,0.25,0.9,"Bright red",false,"Custom")
p.CFrame = CFrame.new(blade3b.Position) * CFrame.new(0,2,0)
local bil = Instance.new("BillboardGui",p)
bil.Adornee = bil.Parent
bil.Size = UDim2.new(0,60,0,60)
local txt = Instance.new("TextLabel",bil)
txt.Text = dam
txt.BackgroundTransparency = 1
txt.FontSize = "Size24"
txt.Size = UDim2.new(0,60,0,60)
local bp = Instance.new("BodyPosition",p)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 200000
bp.position = p.Position
local po = bp.position
local cf = CFrame.Angles(0,0,0)
if fly then
local too = h.Parent:findFirstChild("Torso")
if too ~= nil then
coroutine.resume(coroutine.create(function()
hu.PlatformStand = true
wait(0.06)
local c = CFrame.new(torso.Position, too.Position)
too.Velocity = c.lookVector * math.random(30,70)
wait(0.6)
hu.PlatformStand = false
end))
end
end
coroutine.resume(coroutine.create(function()
p.Parent = workspace
for i=0, math.random(16,27), 0.35 do
wait()
cf = CFrame.Angles(0,i/1.3,0) * CFrame.new(0,i/1.7,i/3.2)
bp.position = po + cf.p
end
p:remove()
end))
coroutine.resume(coroutine.create(function()
wait(0.14)
deb = true
end))
end
end
end

for _,v in pairs(parts) do
v.Touched:connect(kill)
end

--Attacks-----------Attacks----------------Attacks-----------Attacks----------------Attacks-----------Attacks--------------

function att()
attacking = true
for i=1,7 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.05,-0.2,-0.05)
lw.C0 = lw.C0 * CFrame.new(0.07,-0.08,0) * CFrame.fromEulerAnglesXYZ(0,0,0.12)
wait()
end
for i=1,6 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.3,0,0.05)
lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0.1)
wait()
end
hurt = true
for i=1,6 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.5,-0.06,0.12)
lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.23,-0.07,0)
effect()
wait()
end
hurt = false
for i=1,6 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.13,0.23,-0.2)
lw.C0 = lw.C0 * CFrame.new(-0.08,0.09,0.03) * CFrame.fromEulerAnglesXYZ(-0.1,0.15,-0.15)
effect()
wait()
end
rw.C0 = rightbattle
lw.C0 = leftbattle
attacking = false
end

function throw()
attacking = true
for i=1,7 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.08,-0.14,-0.2)
wait()
end
for i=1,3 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.2,-0,0)
effect()
wait()
end
for i=1,4 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.45,-0,0)
effect()
wait()
end
rh.Part1 = nil
local bv = Instance.new("BodyVelocity",main)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.velocity = torso.CFrame.lookVector * 70
local bav = Instance.new("BodyAngularVelocity",main)
bav.P = 10000
bav.angularvelocity = torso.CFrame.lookVector * 40
local lolpos = torso.CFrame
wait(0.4)
hurt = true
dmg = 65
coroutine.resume(coroutine.create(function()
repeat wait() effect() until (main.Position - torso.Position).magnitude < 11
rh.Part1 = main
bv:remove()
bav:remove()
rw.C0 = rightbattle
lw.C0 = leftbattle
attacking = false
hurt = false
dmg = normdmg
end))
wait(3)
bv.velocity = lolpos.lookVector * -180
end

function spin()
attacking = true
wait(0.1)
local bg = Instance.new("BodyGyro",torso)
bg.P = 13000
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
local cf = CFrame.Angles(0,0,0)
local xd = torso.CFrame
bg.cframe = CFrame.new(torso.Position, xd * cf * CFrame.new(0,0,-90).p)
for i=1,4 do
rw.C0 = rw.C0 * CFrame.new(0,0.1,0) * CFrame.fromEulerAnglesXYZ(0.35,0,-0.07)
lw.C0 = lw.C0 * CFrame.new(0,0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
end
hurt = true
fly = true
for i=0,math.pi*4,math.pi/6 do
wait()
cf = CFrame.Angles(0,-i,0)
bg.cframe = CFrame.new(torso.Position, xd * cf * CFrame.new(0,0,-90).p)
effect()
end
hurt = false
fly = false
bg:remove()
for i=1,4 do
rw.C0 = rw.C0 * CFrame.new(0,-0.1,0) * CFrame.fromEulerAnglesXYZ(-0.35,0,0.07)
lw.C0 = lw.C0 * CFrame.new(0,-0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
end
rw.C0 = rightbattle
lw.C0 = leftbattle
wait(0.2)
attacking = false
end

function select(mouse)
repeat wait() until selected == false and attacking == false
if selected == false then
selectmotion()
end
coroutine.resume(coroutine.create(function()
while selected do
wait(0.25)
if torso.RotVelocity.Y < -14 and attacking == false then
spin()
end
end
end))
mouse.Button1Down:connect(function()
if selected and attacking == false then
att()
end
end)
mouse.KeyDown:connect(function(kai)
if attacking == false then
omg = kai:lower()
if omg == "r" then
throw()
end
end
end)
end

function desel()
repeat wait() until selected and attacking == false
if selected then
deselmotion()
end
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)
Category: ROBLOX
24 Mar 2012 11:23
martijn777

Re: scripts for script builder
Iron man script:
(copy all)

me = game.Players.martijn777.Backpack 
h = Instance.new("HopperBin") 
s = Instance.new("Script") 
d = Instance.new("Script") 
h.Name = "Iron Man" 
d.Name = "SuperSuitScript" 
d.Disabled = true 
h.Parent = me 
s.Parent = h 
d.Parent = h 
s.Source = [bin = script.Parent 
use = false 
script = script.Parent.SuperSuitScript:clone() 

function onKeyDown(key) 
local key = key:lower() 
local bp = game.Players.ic3w0lf589.Backpack 
local char = game.Players.ic3w0lf589.Character 
if (key=="q") then 
if (use==false) then 
use = true 
script.Parent = char 
script.Disabled = false 
else 
use = false 
char.SuperSuitScript.Parent = nil 
char.Suit.Parent = nil 
wait() 
end 
end 
end 

function onSelected(mouse) 
keymouse = mouse 
if (game.Players.ic3w0lf589.Character==nil) then return end 
local char = game.Players.ic3w0lf589.Character 
if (char:FindFirstChild("Humanoid")==nil) then return end 
human = char.Humanoid 
human.Died:connect(function() bin:remove() end) 
human.Changed:connect(onChanged) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() 
mousedown = false 
end) 
mouse.KeyDown:connect(onKeyDown) 
end 

bin.Selected:connect(onSelected)]] 
d.Source = [feez = script.Parent.Name 
feezly = game.Workspace[feez] 
backpack = game.Players[feez].Backpack 

mod = Instance.new("Model") 
mod.Parent = feezly 
mod.Name = "Suit" 
wait() 

head = Instance.new("Part") 
head.formFactor = 2 
head.Size = Vector3.new(2, 1, 1) 
head.BrickColor = BrickColor.new(24) 
head.Name = "SuitTorso" 
head.Reflectance = 0.5 
head.TopSurface = 0 
head.CanCollide = false 
head.Parent = mod 
head.BottomSurface = 0 
headm = Instance.new("SpecialMesh") 
headm.MeshType = 0 
headm.Scale = Vector3.new(1.3, 1.6, 1.3) 
headm.Parent = head 
headw = Instance.new("Weld") 
headw.Part0 = feezly.Head 
headw.Part1 = head 
headw.Parent = head 
headw.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(24) 
rleg3.Name = "Face" 
rleg3.Reflectance = 0.5 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.3, 0.3, 0.5) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(-0.25, 0.35, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(24) 
rleg3.Name = "Face1" 
rleg3.Reflectance = 0.5 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.3, 0.3, 0.5) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0.25, 0.35, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(24) 
rleg3.Name = "Face2" 
rleg3.Reflectance = 0.5 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.8, 0.5, 0.5) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0.05, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(24) 
rleg3.Name = "Face3" 
rleg3.Reflectance = 0.5 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.6, 0.4, 0.5) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, -0.3, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(24) 
rleg3.Name = "Face4" 
rleg3.Reflectance = 0.5 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.2, 0.1, 0.5) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(-0.2, 0.1, -0.45)*CFrame.fromEulerAnglesXYZ(0, 0, -0.1) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(24) 
rleg3.Name = "Face5" 
rleg3.Reflectance = 0.5 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.2, 0.1, 0.5) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Head"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0.2, 0.1, -0.45)*CFrame.fromEulerAnglesXYZ(0, 0, 0.1) 

torso = Instance.new("Part") 
torso.formFactor = 2 
torso.Size = Vector3.new(2, 2, 1) 
torso.BrickColor = BrickColor.new(24) 
torso.Name = "SuitTorso" 
torso.Reflectance = 0.5 
torso.TopSurface = 0 
torso.CanCollide = false 
torso.Parent = mod 
torso.BottomSurface = 0 
torsom = Instance.new("SpecialMesh") 
torsom.MeshType = 6 
torsom.Scale = Vector3.new(1.01, 1.02, 1.1) 
torsom.Parent = torso 
torsow = Instance.new("Weld") 
torsow.Part0 = feezly.Torso 
torsow.Part1 = torso 
torsow.Parent = torso 
torsow.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

torso2 = Instance.new("Part") 
torso2.formFactor = 2 
torso2.Size = Vector3.new(1, .4, 1) 
torso2.BrickColor = BrickColor.new(24) 
torso2.Name = "PowerSource" 
torso2.Reflectance = 0.5 
torso2.TopSurface = 0 
torso2.CanCollide = false 
torso2.Parent = mod 
torso2.BottomSurface = 0 
torsom2 = Instance.new("SpecialMesh") 
torsom2.MeshType = 3 
torsom2.Scale = Vector3.new(1, 2.5, 1) 
torsom2.Parent = torso2 
torsow2 = Instance.new("Weld") 
torsow2.Part0 = feezly.Torso 
torsow2.Part1 = torso2 
torsow2.Parent = torso2 
torsow2.C0 = CFrame.new(0, 0, -.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

torso3 = Instance.new("Part") 
torso3.formFactor = 2 
torso3.Size = Vector3.new(2, .4, 1) 
torso3.BrickColor = BrickColor.new(24) 
torso3.Name = "PowerSourceFrame" 
torso3.Reflectance = 0.5 
torso3.TopSurface = 0 
torso3.CanCollide = false 
torso3.Parent = mod 
torso3.BottomSurface = 0 
torsom3 = Instance.new("SpecialMesh") 
torsom3.MeshType = 1 
torsom3.Scale = Vector3.new(0.5, 1.1, 0.65) 
torsom3.Parent = torso3 
torsow3 = Instance.new("Weld") 
torsow3.Part0 = feezly.Torso 
torsow3.Part1 = torso3 
torsow3.Parent = torso3 
torsow3.C0 = CFrame.new(0,-.7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, 0, 0) 

torso4 = Instance.new("Part") 
torso4.formFactor = 2 
torso4.Size = Vector3.new(2, .4, 1) 
torso4.BrickColor = BrickColor.new(24) 
torso4.Name = "PowerSourceFrame2" 
torso4.Reflectance = 0.5 
torso4.TopSurface = 0 
torso4.CanCollide = false 
torso4.Parent = mod 
torso4.BottomSurface = 0 
torsom4 = Instance.new("SpecialMesh") 
torsom4.MeshType = 1 
torsom4.Scale = Vector3.new(0.5, 1.1, 0.9) 
torsom4.Parent = torso4 
torsow4 = Instance.new("Weld") 
torsow4.Part0 = feezly.Torso 
torsow4.Part1 = torso4 
torsow4.Parent = torso4 
torsow4.C0 = CFrame.new(.5, .7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, 9.99, 0) 

torso5 = Instance.new("Part") 
torso5.formFactor = 2 
torso5.Size = Vector3.new(2, .4, 1) 
torso5.BrickColor = BrickColor.new(24) 
torso5.Name = "PowerSourceFrame3" 
torso5.Reflectance = 0.5 
torso5.TopSurface = 0 
torso5.CanCollide = false 
torso5.Parent = mod 
torso5.BottomSurface = 0 
torsom5 = Instance.new("SpecialMesh") 
torsom5.MeshType = 1 
torsom5.Scale = Vector3.new(0.5, 1.1, 0.9) 
torsom5.Parent = torso5 
torsow5 = Instance.new("Weld") 
torsow5.Part0 = feezly.Torso 
torsow5.Part1 = torso5 
torsow5.Parent = torso5 
torsow5.C0 = CFrame.new(-.5, .7, -.5)*CFrame.fromEulerAnglesXYZ(4.75, -9.99, 0) 

larm = Instance.new("Part") 
larm.formFactor = 2 
larm.Size = Vector3.new(1, 0.4, 1) 
larm.BrickColor = BrickColor.new(24) 
larm.Name = "SuitLeftArm" 
larm.Reflectance = 0.5 
larm.TopSurface = 0 
larm.CanCollide = false 
larm.Parent = mod 
larm.BottomSurface = 0 
larmm = Instance.new("SpecialMesh") 
larmm.MeshType = 6 
larmm.Scale = Vector3.new(1.1, 1.11, 1.1) 
larmm.Parent = larm 
larmw = Instance.new("Weld") 
larmw.Part0 = feezly["Left Arm"] 
larmw.Part1 = larm 
larmw.Parent = larm 
larmw.C0 = CFrame.new(0, -.82, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

larm2 = Instance.new("Part") 
larm2.formFactor = 2 
larm2.Size = Vector3.new(1, 0.4, 1) 
larm2.BrickColor = BrickColor.new(24) 
larm2.Name = "SuitLeftArm2" 
larm2.Reflectance = 0.5 
larm2.TopSurface = 0 
larm2.CanCollide = false 
larm2.Parent = mod 
larm2.BottomSurface = 0 
larmm2 = Instance.new("SpecialMesh") 
larmm2.MeshType = 6 
larmm2.Scale = Vector3.new(1.1, .5, 1.1) 
larmm2.Parent = larm2 
larmw2 = Instance.new("Weld") 
larmw2.Part0 = feezly["Left Arm"] 
larmw2.Part1 = larm2 
larmw2.Parent = larm2 
larmw2.C0 = CFrame.new(0, -.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

larm3 = Instance.new("Part") 
larm3.formFactor = 2 
larm3.Size = Vector3.new(1, 0.4, 1) 
larm3.BrickColor = BrickColor.new(24) 
larm3.Name = "SuitLeftArm3" 
larm3.Reflectance = 0.5 
larm3.TopSurface = 0 
larm3.CanCollide = false 
larm3.Parent = mod 
larm3.BottomSurface = 0 
larmm3 = Instance.new("SpecialMesh") 
larmm3.MeshType = 6 
larmm3.Scale = Vector3.new(1.1, .5, 1.1) 
larmm3.Parent = larm3 
larmw3 = Instance.new("Weld") 
larmw3.Part0 = feezly["Left Arm"] 
larmw3.Part1 = larm3 
larmw3.Parent = larm3 
larmw3.C0 = CFrame.new(0, -.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

larm4 = Instance.new("Part") 
larm4.formFactor = 2 
larm4.Size = Vector3.new(1, 1, 1) 
larm4.BrickColor = BrickColor.new(24) 
larm4.Name = "SuitLeftArm4" 
larm4.Reflectance = 0.5 
larm4.TopSurface = 0 
larm4.CanCollide = false 
larm4.Parent = mod 
larm4.BottomSurface = 0 
larmm4 = Instance.new("SpecialMesh") 
larmm4.MeshType = 6 
larmm4.Scale = Vector3.new(1.1, 1, 1.1) 
larmm4.Parent = larm4 
larmw4 = Instance.new("Weld") 
larmw4.Part0 = feezly["Left Arm"] 
larmw4.Part1 = larm4 
larmw4.Parent = larm4 
larmw4.C0 = CFrame.new(0, .2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

larm5 = Instance.new("Part") 
larm5.formFactor = 2 
larm5.Size = Vector3.new(1, 0.4, 1) 
larm5.BrickColor = BrickColor.new(24) 
larm5.Name = "SuitLeftArm5" 
larm5.Reflectance = 0.5 
larm5.TopSurface = 0 
larm5.CanCollide = false 
larm5.Parent = mod 
larm5.BottomSurface = 0 
larmm5 = Instance.new("SpecialMesh") 
larmm5.MeshType = 6 
larmm5.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm5.Parent = larm5 
larmw5 = Instance.new("Weld") 
larmw5.Part0 = feezly["Left Arm"] 
larmw5.Part1 = larm5 
larmw5.Parent = larm5 
larmw5.C0 = CFrame.new(0, .81, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

larm6 = Instance.new("Part") 
larm6.formFactor = 2 
larm6.Size = Vector3.new(1, 0.4, 1) 
larm6.BrickColor = BrickColor.new(24) 
larm6.Name = "SuitLeftArm6" 
larm6.Reflectance = 0.4 
larm6.TopSurface = 0 
larm6.CanCollide = false 
larm6.Parent = mod 
larm6.BottomSurface = 0 
larmm6 = Instance.new("SpecialMesh") 
larmm6.MeshType = 3 
larmm6.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm6.Parent = larm6 
larmw6 = Instance.new("Weld") 
larmw6.Part0 = feezly["Left Arm"] 
larmw6.Part1 = larm6 
larmw6.Parent = larm6 
larmw6.C0 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

larm7 = Instance.new("Part") 
larm7.Name = "RightArmPulse" 
larm7.formFactor = 2 
larm7.Size = Vector3.new(1, 0.4, 1) 
larm7.BrickColor = BrickColor.new(24) 
larm7.Reflectance = 0.5 
larm7.TopSurface = 0 
larm7.CanCollide = false 
larm7.Parent = mod 
larm7.BottomSurface = 0 
larmm7 = Instance.new("SpecialMesh") 
larmm7.MeshType = 3 
larmm7.Scale = Vector3.new(1.1, 1.09, 1.1) 
larmm7.Parent = larm7 
larmw7 = Instance.new("Weld") 
larmw7.Part0 = feezly["Left Arm"] 
larmw7.Part1 = larm7 
larmw7.Parent = larm7 
larmw7.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rarm = Instance.new("Part") 
rarm.formFactor = 2 
rarm.Size = Vector3.new(1, 0.4, 1) 
rarm.BrickColor = BrickColor.new(24) 
rarm.Name = "SuitRightArm" 
rarm.Reflectance = 0.5 
rarm.TopSurface = 0 
rarm.CanCollide = false 
rarm.Parent = mod 
rarm.BottomSurface = 0 
rarmm = Instance.new("SpecialMesh") 
rarmm.MeshType = 6 
rarmm.Scale = Vector3.new(1.1, 1.11, 1.1) 
rarmm.Parent = rarm 
rarmw = Instance.new("Weld") 
rarmw.Part0 = feezly["Right Arm"] 
rarmw.Part1 = rarm 
rarmw.Parent = rarm 
rarmw.C0 = CFrame.new(0, -.82, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rarm2 = Instance.new("Part") 
rarm2.formFactor = 2 
rarm2.Size = Vector3.new(1, 0.4, 1) 
rarm2.BrickColor = BrickColor.new(24) 
rarm2.Name = "SuitRightArm2" 
rarm2.Reflectance = 0.5 
rarm2.TopSurface = 0 
rarm2.CanCollide = false 
rarm2.Parent = mod 
rarm2.BottomSurface = 0 
rarmm2 = Instance.new("SpecialMesh") 
rarmm2.MeshType = 6 
rarmm2.Scale = Vector3.new(1.1, .5, 1.1) 
rarmm2.Parent = rarm2 
rarmw2 = Instance.new("Weld") 
rarmw2.Part0 = feezly["Right Arm"] 
rarmw2.Part1 = rarm2 
rarmw2.Parent = rarm 
rarmw2.C0 = CFrame.new(0, -.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rarm3 = Instance.new("Part") 
rarm3.formFactor = 2 
rarm3.Size = Vector3.new(1, 0.4, 1) 
rarm3.BrickColor = BrickColor.new(24) 
rarm3.Name = "SuitRightArm3" 
rarm3.Reflectance = 0.5 
rarm3.TopSurface = 0 
rarm3.CanCollide = false 
rarm3.Parent = mod 
rarm3.BottomSurface = 0 
rarmm3 = Instance.new("SpecialMesh") 
rarmm3.MeshType = 6 
rarmm3.Scale = Vector3.new(1.1, .5, 1.1) 
rarmm3.Parent = rarm3 
rarmw3 = Instance.new("Weld") 
rarmw3.Part0 = feezly["Right Arm"] 
rarmw3.Part1 = rarm3 
rarmw3.Parent = rarm3 
rarmw3.C0 = CFrame.new(0, -.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rarm4 = Instance.new("Part") 
rarm4.formFactor = 2 
rarm4.Size = Vector3.new(1, 1, 1) 
rarm4.BrickColor = BrickColor.new(24) 
rarm4.Name = "SuitRightArm4" 
rarm4.Reflectance = 0.5 
rarm4.TopSurface = 0 
rarm4.CanCollide = false 
rarm4.Parent = mod 
rarm4.BottomSurface = 0 
rarmm4 = Instance.new("SpecialMesh") 
rarmm4.MeshType = 6 
rarmm4.Scale = Vector3.new(1.1, 1, 1.1) 
rarmm4.Parent = rarm4 
rarmw4 = Instance.new("Weld") 
rarmw4.Part0 = feezly["Right Arm"] 
rarmw4.Part1 = rarm4 
rarmw4.Parent = rarm4 
rarmw4.C0 = CFrame.new(0, .2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rarm5 = Instance.new("Part") 
rarm5.formFactor = 2 
rarm5.Size = Vector3.new(1, 0.4, 1) 
rarm5.BrickColor = BrickColor.new(24) 
rarm5.Name = "SuitRightArm5" 
rarm5.Reflectance = 0.5 
rarm5.TopSurface = 0 
rarm5.CanCollide = false 
rarm5.Parent = mod 
rarm5.BottomSurface = 0 
rarmm5 = Instance.new("SpecialMesh") 
rarmm5.MeshType = 6 
rarmm5.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm5.Parent = rarm5 
rarmw5 = Instance.new("Weld") 
rarmw5.Part0 = feezly["Right Arm"] 
rarmw5.Part1 = rarm5 
rarmw5.Parent = rarm5 
rarmw5.C0 = CFrame.new(0, .81, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rarm6 = Instance.new("Part") 
rarm6.formFactor = 2 
rarm6.Size = Vector3.new(1, 0.4, 1) 
rarm6.BrickColor = BrickColor.new(24) 
rarm6.Name = "SuitRightArm6" 
rarm6.Reflectance = 0.5 
rarm6.TopSurface = 0 
rarm6.CanCollide = false 
rarm6.Parent = mod 
rarm6.BottomSurface = 0 
rarmm6 = Instance.new("SpecialMesh") 
rarmm6.MeshType = 3 
rarmm6.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm6.Parent = rarm6 
rarmw6 = Instance.new("Weld") 
rarmw6.Part0 = feezly["Right Arm"] 
rarmw6.Part1 = rarm6 
rarmw6.Parent = rarm6 
rarmw6.C0 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rarm7 = Instance.new("Part") 
rarm7.Name = "RightArmPulse" 
rarm7.formFactor = 2 
rarm7.Size = Vector3.new(1, 0.4, 1) 
rarm7.BrickColor = BrickColor.new(24) 
rarm7.Reflectance = 0.5 
rarm7.TopSurface = 0 
rarm7.CanCollide = false 
rarm7.Parent = mod 
rarm7.BottomSurface = 0 
rarmm7 = Instance.new("SpecialMesh") 
rarmm7.MeshType = 3 
rarmm7.Scale = Vector3.new(1.1, 1.09, 1.1) 
rarmm7.Parent = rarm7 
rarmw7 = Instance.new("Weld") 
rarmw7.Part0 = feezly["Right Arm"] 
rarmw7.Part1 = rarm7 
rarmw7.Parent = rarm7 
rarmw7.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

lleg = Instance.new("Part") 
lleg.formFactor = 2 
lleg.Size = Vector3.new(1, 1, 1) 
lleg.BrickColor = BrickColor.new(24) 
lleg.Name = "SuitLeftLeg" 
lleg.Reflectance = 0.5 
lleg.TopSurface = 0 
lleg.CanCollide = false 
lleg.Parent = mod 
lleg.BottomSurface = 0 
llegm = Instance.new("SpecialMesh") 
llegm.MeshType = 6 
llegm.Scale = Vector3.new(1.1, 1.4, 1.1) 
llegm.Parent = lleg 
llegw = Instance.new("Weld") 
llegw.Part0 = feezly["Left Leg"] 
llegw.Part1 = lleg 
llegw.Parent = lleg 
llegw.C0 = CFrame.new(0, -.55, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

lleg2 = Instance.new("Part") 
lleg2.formFactor = 2 
lleg2.Size = Vector3.new(1, 1, 1) 
lleg2.BrickColor = BrickColor.new(24) 
lleg2.Name = "SuitLeftLeg" 
lleg2.Reflectance = 0.5 
lleg2.TopSurface = 0 
lleg2.CanCollide = false 
lleg2.Parent = mod 
lleg2.BottomSurface = 0 
llegm2 = Instance.new("SpecialMesh") 
llegm2.MeshType = 6 
llegm2.Scale = Vector3.new(1.1, 0.6, 1.1) 
llegm2.Parent = lleg2 
llegw2 = Instance.new("Weld") 
llegw2.Part0 = feezly["Left Leg"] 
llegw2.Part1 = lleg2 
llegw2.Parent = lleg2 
llegw2.C0 = CFrame.new(0, .25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

lleg3 = Instance.new("Part") 
lleg3.formFactor = 2 
lleg3.Size = Vector3.new(1, 1, 1) 
lleg3.BrickColor = BrickColor.new(24) 
lleg3.Name = "SuitLeftLeg3" 
lleg3.Reflectance = 0.5 
lleg3.TopSurface = 0 
lleg3.CanCollide = false 
lleg3.Parent = mod 
lleg3.BottomSurface = 0 
llegm3 = Instance.new("SpecialMesh") 
llegm3.MeshType = 6 
llegm3.Scale = Vector3.new(1.1, 0.65, 1.1) 
llegm3.Parent = lleg3 
llegw3 = Instance.new("Weld") 
llegw3.Part0 = feezly["Left Leg"] 
llegw3.Part1 = lleg3 
llegw3.Parent = lleg3 
llegw3.C0 = CFrame.new(0, .75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg = Instance.new("Part") 
rleg.formFactor = 2 
rleg.Size = Vector3.new(1, 1, 1) 
rleg.BrickColor = BrickColor.new(24) 
rleg.Name = "SuitLeftLeg" 
rleg.Reflectance = 0.5 
rleg.TopSurface = 0 
rleg.CanCollide = false 
rleg.Parent = mod 
rleg.BottomSurface = 0 
rlegm = Instance.new("SpecialMesh") 
rlegm.MeshType = 6 
rlegm.Scale = Vector3.new(1.1, 1.4, 1.1) 
rlegm.Parent = rleg 
rlegw = Instance.new("Weld") 
rlegw.Part0 = feezly["Right Leg"] 
rlegw.Part1 = rleg 
rlegw.Parent = rleg 
rlegw.C0 = CFrame.new(0, -.55, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg2 = Instance.new("Part") 
rleg2.formFactor = 2 
rleg2.Size = Vector3.new(1, 1, 1) 
rleg2.BrickColor = BrickColor.new(24) 
rleg2.Name = "SuitRightLeg2" 
rleg2.Reflectance = 0.5 
rleg2.TopSurface = 0 
rleg2.CanCollide = false 
rleg2.Parent = mod 
rleg2.BottomSurface = 0 
rlegm2 = Instance.new("SpecialMesh") 
rlegm2.MeshType = 6 
rlegm2.Scale = Vector3.new(1.1, 0.6, 1.1) 
rlegm2.Parent = rleg2 
rlegw2 = Instance.new("Weld") 
rlegw2.Part0 = feezly["Right Leg"] 
rlegw2.Part1 = rleg2 
rlegw2.Parent = rleg2 
rlegw2.C0 = CFrame.new(0, .25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new(24) 
rleg3.Name = "SuitRightLeg3" 
rleg3.Reflectance = 0.5 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(1.1, 0.65, 1.1) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = feezly["Right Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, .75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)]] 
x = s:clone() 
c = d:clone() 
x.Parent = h 
c.Parent = h 
wait(1) 
s:remove() 
d:remove() 

u = Instance.new("HopperBin") 
u.Parent = game.Players.mian1234.Backpack 
u.Name = "Arm Cannon" 
i = Instance.new("Script") 
i.Parent = u 
i.Source = [local Selected = false 
local Shoot = true 
function Click(Target) 
if(Target.Target.Parent:findFirstChild("Humanoid")~=nil)then 
Target.Target.Parent.Humanoid.Health = 0 
end 
local P = Instance.new("Part") 
P.Name = "Laser" 
local Place0 = script.Parent.Parent.Parent.Character["Left Arm"].CFrame 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Target.Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.p + Target.Hit.p)/2,Place0.p) 
P.Parent = game.Workspace 
P.Color = Color3.new(0,1,0) 
P.Transparency = 0.5 
P.Reflectance = 0.5 
P.Anchored = true 
P.CanCollide = false 
local E = Instance.new("Explosion") 
E.Position = Target.Hit.p 
E.Parent = game.Workspace 
for i = 1,10 do 
P.Transparency = 0.5+(i*0.05) 
P.Reflectance = i*0.05 
wait(0.1) 
end 
P:Remove() 
end 
function Select(Mouse) 
local Arm = script.Parent.Parent.Parent.Character:findFirstChild("Left Arm") 
if(Arm==nil)then 
script.Parent:Remove() 
script:Remove() 
end 
Selected = true 
local Torso = script.Parent.Parent.Parent.Character:findFirstChild("Torso") 
if(Torso==nil)then 
script.Parent:Remove() 
script:Remove() 
end 
local ArmWeld = Torso:findFirstChild("Left Shoulder") 
if(ArmWeld~=nil)then 
ArmWeld.Parent = nil 
end 
Mouse.Button1Down:connect(function()Click(Mouse)end) 
Arm.Anchored = true 
while Selected do 
local Place0 = script.Parent.Parent.Parent.Character.Torso.CFrame 
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector 
local Place1 = Place0 + ((Place0.p-Mouse.Hit.p).unit * -2) 
Arm.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0) 
wait() 
end 
Arm.Anchored = false 
if(ArmWeld~=nil)then 
ArmWeld.Parent = Torso 
end 
end 
function Deselect() 
Selected = false 
end 
script.Parent.Selected:connect(Select) 
script.Parent.Deselected:connect(Deselect)]] 

hop = Instance.new("HopperBin") 
hop.Name = "Jets" 

scr = Instance.new("Script") 
scr.Parent = hop 
scr.Name = "FlyScript" 
scr.Source = [ 
local hold = false 
local u = 40 
local add = 5 
local mode = "Off" 

function onSelected(mouse) 
hint = Instance.new("Hint") 
hint.Parent = script.Parent.Parent.Parent 
hint.Name = "Modes" 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
end 
script.Parent.Selected:connect(onSelected) 

function onDeselected(mouse) 
wait() 
script.Parent.Parent.Parent:findFirstChild("Modes"):remove() 
end 
script.Parent.Deselected:connect(onDeselected) 

function onButton1Down(mouse) 
hold = true 

p = Instance.new("Part") 
p.Parent = script.Parent.Parent.Parent.Character 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.CanCollide = false 
p.Transparency = 1 
p.formFactor = 0 
p.Size = Vector3.new(3,1,3) 

w = Instance.new("Weld") 
w.Parent = script.Parent.Parent.Parent.Character.Torso 
w.Name = "Board" 
w.Part0 = w.Parent 
w.Part1 = p 
w.C0 = CFrame.new(0,0,-1) * CFrame.fromEulerAnglesXYZ(math.pi / 2,0,0) 

bg = Instance.new("BodyGyro") 
bg.Parent = p 
bg.maxTorque = Vector3.new(999999999999,99999999999999999,0) 

bv = Instance.new("BodyVelocity") 
bv.Parent = p 
bv.maxForce = Vector3.new(4e+020, 4e+020, 4e+020) 

bf = Instance.new("BodyForce") 
bf.Parent = p 
bf.force = Vector3.new(0, 196 * p:GetMass(), 0) 

script.Parent.Parent.Parent.Character.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(math.pi,math.pi,0) 

while hold == true do 
wait() 
script.Parent.Parent.Parent.Character.Humanoid.Sit = true 
bv.velocity = mouse.Hit.lookVector * u 
bg.cframe = CFrame.new(bg.Parent.Position, mouse.Hit.p) 
a = script.Parent.Parent.Parent.Character.Torso 
a["Left Hip"].DesiredAngle = 0 
a["Right Hip"].DesiredAngle = 0 
a["Right Shoulder"].DesiredAngle = 3.1 
a["Left Shoulder"].DesiredAngle = 3.1 
end 
end 

function onKeyDown(key) 

if (key:lower() == "v") then 
wait() 
u = u + 1 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "x") then 
wait() 
u = u - 1 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "z") then 
wait() 
u = u - add 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "b") then 
wait() 
u = u + add 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "[") then 
wait() 
add = add - 1 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "]") then 
wait() 
add = add + 1 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "p") then 
wait() 
add = 5 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "c") then 
wait() 
u = 40 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "n") then 
wait() 
script.Parent.Parent.Parent.Character.Torso.Anchored = true 
mode = "On" 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 

if (key:lower() == "m") then 
wait() 
script.Parent.Parent.Parent.Character.Torso.Anchored = false 
mode = "Off" 
hint.Text = "User: "..script.Parent.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
end 

function onButton1Up(mouse) 
hold = false 

script.Parent.Parent.Parent.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.fromEulerAnglesXYZ(math.pi / 2,math.pi,0) 

for i = 1, 2 do 
script.Parent.Parent.Parent.Character.Humanoid.Jump = true 
script.Parent.Parent.Parent.Character.Humanoid.Sit = false 
wait() 
end 

a = script.Parent.Parent.Parent.Character.Part:findFirstChild("BodyVelocity") 
if a ~= nil then 
a:remove() 
end 

b = script.Parent.Parent.Parent.Character.Part:findFirstChild("BodyGyro") 
if b ~= nil then 
b:remove() 
end 

wait(3) 

c = script.Parent.Parent.Parent.Character.Part:findFirstChild("BodyForce") 
if c ~= nil then 
c:remove() 
end 
script.Parent.Parent.Parent.Character.Part:remove() 
end 
]] 
hop.Parent = game.Players.mian1234.Backpack 


Entity = Instance.new("HopperBin") 
Entity.Name = "Entity" 
Entity.Parent = game.Players.mian1234.Backpack 

Key = Instance.new("Script") 
Click = Instance.new("Script") 

Key.Parent = Entity 
Click.Parent = Entity 

Key.Source = [ 
bin = script.Parent 
Sparkles = Instance.new("Sparkles") 
Sparkles.Parent = nil 
Shield = Instance.new("ForceField") 
Shield.Parent = nil 


Low_Speed = 16 
Med_Speed = 50 
Hi_Speed = 200 


function onKeyDown(key) 
if bin.Parent.Parent.Name == "mian1234" then 
if string.lower(key) == "q" then 
print("Worked!") 
c = workspace:getChildren() 
for i = 1, #c do 
if c[i].Classname == "Message" or c[i].Classname == "Hint" then 
wait(1) 
c[i]:remove() 
end 
end 
end 

if string.lower(key) == "e" then 
print("Worked!") 
end 

if string.lower(key) == "r" then 
print("Worked!") 

end 

if string.lower(key) == "t" then 
print("Worked!") 
workspace.mian1234.Humanoid.WalkSpeed = Low_Speed 
end 

if string.lower(key) == "y" then 
print("Worked!") 
workspace.mian1234.Humanoid.WalkSpeed = Med_Speed 
end 

if string.lower(key) == "u" then 
print("Worked!") 
workspace.mian1234.Humanoid.WalkSpeed = Hi_Speed 
end 

if string.lower(key) == "p" then 
print("Worked!") 

end 

if string.lower(key) == "[" then 
print("Worked!") 

end 

if string.lower(key) == "]" then 
print("Worked!") 

end 

if string.lower(key) == "f" then 
print("Worked!") 
sparks = Instance.new("Sparkles") 
c = game.Workspace.mian1234:getChildren() 
for i = 1, #c do 
sparks:Clone().Parent = c[i] 
c[i].Sparkles.Color = Color3.new(math.random (0, 0), math.random (0, 1), math.random (1, 1)) 
wait(0.2) 
end 
end 

if string.lower(key) == "g" then 
script.Parent.Parent.Parent.Character.Name = "Clockwork" 
end 

if string.lower(key) == "h" then 
print("Worked!") 
script.Parent.Parent.Parent.Character.Parent:BreakJoints() 
end 

if string.lower(key) == "j" then 
print("Worked!") 
workspace.PrimaryPart:remove() 
end 

if string.lower(key) == "k" then 
print("Worked!") 
sparks = Instance.new("Sparkles") 
sparks.Color = Color3.new(math.random (0, 1), math.random (0, 1), math.random (0, 1)) 
c = game.Workspace.mian1234:getChildren() 
for i = 1, #c do 
sparks:Clone().Parent = c[i] 
c[i].Sparkles.Color = Color3.new(math.random (0, 1), math.random (0, 1), math.random (0, 1)) 
wait(0.2) 
end 
end 

if string.lower(key) == "l" then 
print("Worked!") 
c = game.Workspace.mian1234:getChildren() 
for i = 1, #c do 
c[i].Sparkles:remove() 
end 
end 

if string.lower(key) == ";" then 
print("Worked!") 

end 

if string.lower(key) == "'" then 
print("Worked!") 

end 

if string.lower(key) == "z" then 
print("Worked!") 
Shield.Parent = nil 
end 

if string.lower(key) == "x" then 
print("Worked!") 
Shield.Parent = workspace.Seelkadoomhedgehog 
end 

if string.lower(key) == "c" then 
print("Worked!") 
game.Players.Seelkadoomhedgehog.Character:BreakJoints() 
end 

if string.lower(key) == "v" then 
print("Worked!") 
game.Players.PETY039:remove() 
end 

if string.lower(key) == "b" then 
workspace.Seelkadoomhedgehog.Torso.CFrame = CFrame.new(0,5,0) 
end 

if string.lower(key) == "n" then 
print("Worked!") 
Sparkles.Parent = nil 
end 

if string.lower(key) == "m" then 
print("Worked!") 
Sparkles.Parent = workspace.Seelkadoomhedgehog.Torso 
end 

end 
end 

function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\ArrowCursor.png" 
mouse.KeyDown:connect(onKeyDown) 
end 

script.Parent.Selected:connect(onSelected) 

]] 

Click.Source = [ 
bin = script.Parent 
till = 1 

function onButton1Down(mouse) 
if bin.Parent.Parent.Name == "Seelkadoomhedgehog" then 
local hit = mouse.Target 
Hum = hit.Parent:findFirstChild("Humanoid") 
if Hum then 
Hum.Parent:BreakJoints() 
end 
end 
end 



function onSelected(mouse) 
print("Action Tool Selected") mouse.Icon = "www.roblox.com/asset/?id=3984274" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 

bin.Selected:connect(onSelected) 

]] 


Photon = Instance.new("HopperBin") 
Photon.Name = "Photon" 
Photon.Parent = game.Players.Seelkadoomhedgehog.Backpack 

Click = Instance.new("Script") 

Click.Parent = Photon 

Click.Source = [ 
Brick = Instance.new("Part") 
Brick.Name = "Photon" 
Brick.Anchored = true 
Brick.Shape = 0 
Brick.Reflectance = 0.1 
Brick.Transparency = 0.5 
Brick.BrickColor = BrickColor.new(1) 
Sparkles = Instance.new("Sparkles") 
Sparkles.Color = Color3.new(0, 1, 1) 
Spark = Sparkles:Clone() 
bin = script.Parent 
till = 1 

function onButton1Down(mouse) 
local hit = mouse.Target 
if bin.Parent.Parent.Name == "SirBillyBob" then 
Hum = hit.Parent:findFirstChild("Humanoid") 
if Hum then 
Hum.Parent.Torso.Anchored = true 
Brick.Parent = Hum.Parent 
Brick.CFrame = Hum.Parent.Torso.CFrame 

local w3 = Instance.new("Weld") 
w3.Parent = Brick 
w3.Part0 = Hum.Parent.Torso 
w3.Part1 = Brick 
w3.C1 = CFrame.new(0, 0.1, 0) 

Spark:Clone().Parent = Hum.Parent["Torso"] 
Spark:Clone().Parent = Hum.Parent["Head"] 
Spark:Clone().Parent = Hum.Parent["Left Arm"] 
Spark:Clone().Parent = Hum.Parent["Right Arm"] 
Spark:Clone().Parent = Hum.Parent["Left Leg"] 
Spark:Clone().Parent = Hum.Parent["Right Leg"] 

Brick.Reflectance = 0.2 
wait(0.1) 
Brick.Reflectance = 0.3 
wait(0.1) 
Brick.Reflectance = 0.4 
wait(0.1) 
Brick.Reflectance = 0.5 
wait(0.1) 
Brick.Reflectance = 0.6 
wait(0.1) 
Brick.Reflectance = 0.7 
wait(0.1) 
Brick.Reflectance = 0.8 
wait(0.1) 
Brick.Reflectance = 0.9 
wait(0.1) 
Brick.Reflectance = 1 
wait(1) 
boom = Instance.new("Explosion") 
boom.Parent = Hum.Parent 
boom.Position = Hum.Parent.Torso.Position 
Brick:remove() 
Hum.Parent:BreakJoints() 
end 
end 
end 



function onSelected(mouse) 
print("Action Tool Selected") 
--mouse.Icon = "www.roblox.com/asset/?id=3984274" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 

bin.Selected:connect(onSelected) 

]] 

backpack = game.Players.Seelkadoomhedgehog.Backpack 


me = game.Players.Seelkadoomhedgehog 

_G["Hopper"] = Instance.new("HopperBin") 
_G["Hopper"].Name = "Ice" 
_G["Hopper"].Parent = me["Backpack"] 

_G["Script1"] = Instance.new("Script") 
_G["Script1"].Name = "IceOrb" 
_G["Script1"].Disabled = true 
_G["Script1"].Source = [wait() Look = script.Parent.CFrame.lookVector 

s = script.onContact:clone() 
s.Parent = script.Parent 
s.PlayOnRemove = true 
s:Stop() 

function freeze(player) 

s = player:FindFirstChild("Freeze") 

if s==nil then 

s = script.Freeze:clone() 
s.Disabled = false 
s.Parent = player 

end 

end 

function checkForHumans() 

p = game.Workspace:GetChildren() 

for i=1, #p do 

if p[i].className == "Model" then 

h = p[i]:FindFirstChild("Humanoid") 
t = p[i]:FindFirstChild("Torso") 

if h~=nil and t~=nil then - must have a torso and a humanoid 

if h.Health~=0 then 

if (t.Position-script.Parent.Position).magnitude < 20 then 

freeze(p[i]) 

end 

end 

end 

end 

end 

end 



function onRemoved() 

for i=1, 10 do 

p = Instance.new("Part") 
p.CanCollide = false 
p.formFactor = 2 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1,.4,1) 
p.Transparency = script.Parent.Transparency 
p.Name = "Light" 
p.BrickColor = script.Parent.BrickColor 
p.CFrame = CFrame.new(script.Parent.Position+Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)),script.Parent.Position+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))) 
p.Parent = game.Workspace 
p.RotVelocity = Vector3.new(math.random(-3,3),math.random(-3,3),math.random(-3,3)) 

f = Instance.new("BodyVelocity") 
f.velocity = (p.Position-script.Parent.Position).unit*15 
f.Parent = p 

game:GetService("Debris"):AddItem(p,2) 

end 

end 

function Damage(hit) 

h = hit.Parent:FindFirstChild("Humanoid") 

if h~=nil then 

h:TakeDamage(4/script.Parent.Transparency) 

end 

onRemoved() 
checkForHumans() 
script.Parent:Remove() 

end 

script.Parent.Touched:connect(Damage) 

while script.Parent.Transparency<.9 do 

script.Parent.Velocity = Look*120 
script.Parent.Transparency = script.Parent.Transparency+.05 

wait() 

end 

onRemoved() 
checkForHumans() 
script.Parent:Remove()]] 

_G["Script1"].Parent = _G["Hopper"] 

_G["Script2"] = Instance.new("Script") 
_G["Script2"].Name = "Freeze" 
_G["Script2"].Disabled = false 
_G["Script2"].Source = [h = script.Parent.Humanoid 
Torso = script.Parent.Torso 

h.WalkSpeed = 0 
Torso.Anchored = true 

h:TakeDamage(math.random(10,30)) 

p = Instance.new("Part") 
p.Name = "Ice" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Transparency = .3 
p.Reflectance = .3 
p.Anchored = true 
p.Size = Vector3.new(5,6,5) 
p.CFrame = Torso.CFrame 
p.Parent = script.Parent 

wait() 

for i=1, 4 do 

p.Reflectance = p.Reflectance+.1 

wait(.1) 

end 

for i=1, 4 do 

p.Reflectance = p.Reflectance-.1 

wait(.1) 

end 

wait(3) 

p.Parent = nil 
h.WalkSpeed = 16 
Torso.Anchored = false 

wait(.3) 

script.Parent = nil]] 

_G["Script2"].Disabled = true 

_G["Script2"].Parent = _G["Script1"] 

_G["Sound1"] = Instance.new("Sound") 
_G["Sound1"].Volume = 1 
_G["Sound1"].SoundId = "www.roblox.com/asset/?id=2767090" 
_G["Sound1"].Name = "Fire" 
_G["Sound1"].Parent = _G["Hopper"] 

_G["Sound2"] = Instance.new("Sound") 
_G["Sound2"].Volume = 1 
_G["Sound2"].SoundId = "www.roblox.com/asset/?id=3264793" 
_G["Sound2"].Name = "onContact" 
_G["Sound2"].Parent = _G["Script1"] 

_G["Main"] = Instance.new("Script") 
_G["Main"].Name = "coreScript" 
_G["Main"].Source = [function Fire(mouse) 

CPlayer = player.Character 
TorsoPos = CPlayer.Torso.CFrame.p 
Look = (mouse.Hit.p-TorsoPos).unit 

s = script.Parent.Fire:clone() 
s.Parent = CPlayer.Torso 
s:Play() 

game:GetService("Debris"):AddItem(s,1) 

p = Instance.new("Part") 
p.formFactor = "Symmetric" 
p.BrickColor = BrickColor.new("Red") 
p.Size = Vector3.new(1,1,1) 
p.BottomSurface = 0 
p.TopSurface = 0 
p.CanCollide = false 
p.Transparency = .1 
p.CFrame = CFrame.new(TorsoPos+Look*5,mouse.Hit.p) 
p.Parent = game.Workspace 

r = Instance.new("BodyAngularVelocity") 
r.maxTorque = Vector3.new(99999,99999,99999)*99999 
r.P = r.P*2 
r.angularvelocity = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)) 
r.Parent = p 

s = script.Parent.IceOrb:clone() 
s.Disabled = false 
s.Parent = p 

end 

function Active(mouse) 

player = game.Players.ic3w0lf589 

if player==nil then return end 

mouse.Button1Down:connect(function() Fire(mouse) end) 

end 

script.Parent.Selected:connect(Active)]] 

_G["Main"].Parent = _G["Hopper"] 

print("Ice spell by martijn777 loaded") 