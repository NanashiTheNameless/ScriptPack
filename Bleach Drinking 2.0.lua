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
NoAnims = false
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
local Touche = {char.Name, }
----------------------------------------------------

hum.MaxHealth = 150

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
gavehp = false

local ends = {"alive","rip"}
result = ""

local g = Instance.new("Part",larm)
g.Material = "Neon"
g.CanCollide = false
g.Size = Vector3.new(1,1,1)
local gm = Instance.new("SpecialMesh",g)
gm.MeshId = "rbxassetid://483388971"
gm.TextureId = "rbxassetid://520016684"
gm.Scale = Vector3.new(0.005,0.005,0.005)

local cor = Instance.new("Weld")
cor.Part1 = g
cor.Part0 = larm
cor.Parent = char
cor.C1 = CFrame.new(0.2,1.8,0)

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
attack = false
local m = 0
----------------------------------------------------
char.Health:Destroy()
mouse.KeyDown:connect(function(key)
if key == "e" then
if attack == false then
attack = true
NoAnims = true
hum.Health = 150

result = ends[math.random(1,#ends)]

local s = Instance.new("Sound",torso)
s.SoundId = "rbxassetid://140923474"
s.Volume = 1
s.Pitch = 1
s.Looped = true
s:Play()

coroutine.wrap(function()
s:Remove()
end)()
local s = Instance.new("Sound",torso)
s.SoundId = "rbxassetid://212887982"
s.Volume = 1
s.Pitch = 1
s:Play()

cor.Part0 = hed
pcall(function()
for i = 1, 20 do

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(30)), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

cor.C0 = Lerp(cor.C0, CFrame.new(0.6,0,0)*CFrame.Angles(math.rad(50),0,0),0.2)
rs:wait()

end
end)

local pgui = p.PlayerGui

local sc = Instance.new("ScreenGui",pgui)
local w1 = Instance.new("TextLabel",sc)
w1.Size = UDim2.new(1,0,1,0)
w1.Text = "wo kalm dwn m8 u r gon gt rkt"
w1.TextScaled = true
w1.BackgroundColor3 = Color3.new(1,1,1)
w1.BorderSizePixel = 0

coroutine.wrap(function()
for i = 1, 20 do
w1.BackgroundTransparency = i/10
w1.TextTransparency = i/10
end
end)()

pcall(function()
for i = 1, 100 do
rs:wait()
m = m + 0.004
hum.Health = hum.Health-1
cor.C0 = Lerp(cor.C0, CFrame.new(0.6,0+m/2,0-m/2)*CFrame.Angles(math.rad(50) + m,0,0),0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5+m,0-m/3.5)*CFrame.Angles(math.rad(120) + m,math.rad(0),math.rad(30)), 0.2)

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5+m,0+m/3.5)*CFrame.Angles(math.rad(0) - m,math.rad(0),math.rad(0) + m), 0.2)

end
end)

if result == "rip" then

coroutine.wrap(function()
wait(0.15)
for i = 1, 60 do
cor.Part0 = torso
cor.C0 = Lerp(cor.C0,CFrame.new(9,-0.15,0)*CFrame.Angles(0,0,200),0.1)
rs:wait()
end
end)()

s:Remove()
hum.WalkSpeed = 0
pcall(function()
hum.JumpPower = 0
end)

pcall(function()
for i = 1, 20 do

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(30),math.rad(30)), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(-10),math.rad(-10)), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.5, 0)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(-10),math.rad(-5)), 0.4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(20)), 0.4)

rs:wait()
end
end)

wait(3)

coroutine.wrap(function()
while true do
wait(0.07)
pcall(function()

rarm.Weld.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.random(0,3),math.random(0,7),math.random(30,45))

larm.Weld.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.random(0,5),math.random(10,20),math.random(10,20))

hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.random(20,30),math.random(0,4),math.random(0,3))

lleg.Weld.C0 = CFrame.new(-0.5, -1, 0)*CFrame.Angles(math.random(0,5),math.random(10,15),math.random(5,10))

rleg.Weld.C0 = CFrame.new(0.5, -1, 0)*CFrame.Angles(math.random(0,4),math.random(20,30),math.random(20,30))

end)
end
end)()


cor:Destroy()

g.Anchored = true

for i,v in pairs(char:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
elseif v:IsA("Accoutrement") then
v.Handle.Anchored = true
end
end

cor.Part0 = larm
m = 0
hum.MaxHealth = 0

local k = Instance.new("Sound",torso)
k.SoundId = "rbxassetid://154872806"
k.Volume = 10
k.Pitch = 1
k:Play()

local cf = torso.CFrame -Vector3.new(0,0.55,0)
cf = cf*CFrame.Angles(math.rad(88.5),0,0)

local b = Instance.new("Part",torso)
b.BrickColor = BrickColor.new("Really red")
b.Material = "Neon"
b.Anchored = true
b.CanCollide = false
b.Size = Vector3.new(2,0.01,2)
b.CFrame = cf

local bm = Instance.new("CylinderMesh",b)

local cf2 = b.CFrame -Vector3.new(3,0,0)

local b2 = Instance.new("Part",torso)
b2.BrickColor = BrickColor.new("Really red")
b2.Material = "Neon"
b2.Anchored = true
b2.CanCollide = false
b2.Size = Vector3.new(2,0.01,2)
b2.CFrame = cf2

local bm2 = Instance.new("CylinderMesh",b2)


for i = 1, 40 do
wait()
b.Size = Vector3.new(i/5,0,i/5)
b.CFrame = cf

b2.Size = Vector3.new(i/10,0,i/10)
b2.CFrame = cf2
end

local bg = Instance.new("BillboardGui", torso)
bg.Name = "rip"
bg.Adornee = torso
bg.Size = UDim2.new(1, 0, 1, 0)
bg.StudsOffset = Vector3.new(0, 2, 0)

local fr1 = Instance.new("TextLabel", bg)
fr1.Size = UDim2.new(1, 0, 1, 0)
fr1.BorderSizePixel = 0
fr1.TextTransparency = 1
fr1.BackgroundTransparency = 1
fr1.Text = "r.i.p"
fr1.TextScaled = true

coroutine.wrap(function()
for i = 1, 20 do
rs:wait()
fr1.TextTransparency = fr1.TextTransparency - 1/20
fr1.BackgroundTransparency = fr1.BackgroundTransparency - 1/20
end
end)()

coroutine.wrap(function()
while true do

for i = 0.01, 0.2 do
fr1.BackgroundColor3 = fr1.BackgroundColor3:lerp(Color3.new(255,0,0),i)
rs:wait()
end

for i = 0.01, 0.2 do
fr1.BackgroundColor3 = fr1.BackgroundColor3:lerp(Color3.new(0,255,0),i)
rs:wait()
end

for i = 0.01, 0.2 do
fr1.BackgroundColor3 = fr1.BackgroundColor3:lerp(Color3.new(0,0,255),i)
rs:wait()
end

wait()
end
end)()

local x = Instance.new("Sound",torso)
x.SoundId = "rbxassetid://397069204"
x.Looped = true
x:Play()
wait(9)

local txts = {"R.I.P "..p.Name.." Died drinking his favorite soda","R.I.P "..p.Name.." Died because of the anime called bleach - i mean the drink.","R.I.P "..p.Name.." Potato.","666"}

local t1 = Instance.new("Part",workspace.Base)
t1.Name = "tombstone_dirt"
t1.BrickColor = BrickColor.new("Reddish brown")
t1.CanCollide = false
t1.CFrame = root.CFrame - Vector3.new(0,3.25,0)
t1.CFrame = t1.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
t1.Material = "Grass"
t1.Size = Vector3.new(4,1,8)

local tw = Instance.new("Weld")

local t2 = Instance.new("Part",t1)
t2.Name = "tombstone_stone"
t2.CanCollide = false
t2.BrickColor = BrickColor.new("")
t2.Anchored = false
t2.CFrame = t1.CFrame + Vector3.new(0,0,-4)
t2.Size = Vector3.new(4.2,5,1.2)

local sg = Instance.new("SurfaceGui",t2)
sg.Enabled = true
sg.Face = "Back"
sg.Adornee = t2
local txts = txts[math.random(1,#txts)]

local txt = Instance.new("TextLabel",sg)
txt.TextScaled = true
txt.Text = txts
txt.BackgroundTransparency = 1
txt.BorderSizePixel = 0
txt.Size = UDim2.new(1,0,1,0)

txt.TextColor3 = Color3.new(1,1,1)
if txts == "666" then
txt.TextColor3 = Color3.new(1,0,0)
end


tw.Part1 = t2
tw.Part0 = t1
tw.Parent = char
tw.C0 = CFrame.new(0,2.5,-4)

coroutine.wrap(function()
t1.CFrame = root.CFrame - Vector3.new(0,3.2,0)
t1.CFrame = t1.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
wait(0.1)
t1.CFrame = root.CFrame - Vector3.new(0,3.2,0)
t1.CFrame = t1.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
t1.Anchored = true
t2.Anchored = true
t1.CanCollide = true
t2.CanCollide = true
end)()

char:BreakJoints()

elseif result == "alive" then
attack = false
NoAnims = false
cor.Part0 = larm
m = 0
end
end
end
end)

pcall(function()
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 50 then
        char.Humanoid.WalkSpeed = 60
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 50 then
        char.Humanoid.WalkSpeed = 16
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
if animpose == "Idle" then
for i = 1, 2 do
if NoAnims == false then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5+math.sin(sine/14)/9,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(30)), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5 + math.sin(sine/14)/9,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(30)), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

end
end

elseif animpose == "Walking" then
for i = 1, 2 do
if NoAnims == false then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.7,0.5,-0.35)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-90)), 0.1)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.7,0.5,-0.35)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(80)), 0.1)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

end
end
elseif animpose == "Running" then
for i = 1, 2 do
if NoAnims == false then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.05)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

wait()
end
end
else
end
end
lastanimpose = animpose
if animpose == "Idle" then
if NoAnims == false then
change = 0.5

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.4+math.sin(sine/14)/9,0.2)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-30)), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.4 + math.sin(sine/14)/9,-0.2)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(30)), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)

cor.C0 = Lerp(cor.C0, CFrame.new(0,0.1,0.2)*CFrame.Angles(math.rad(10),math.pi,0),0.2)

end

elseif animpose == "Walking" then
if NoAnims == false then
change = 1
cor.C0 = Lerp(cor.C0, CFrame.new(0,0.1,0.2)*CFrame.Angles(math.rad(10),-math.pi/2,0),0.2)

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0) + math.sin(sine/5)/1.2,math.rad(0),math.rad(0)), 0.1)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0) +- math.sin(sine/5)/1.2,math.rad(0),math.rad(0)), 0.1)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.07)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)), 0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.1)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0)*CFrame.Angles(math.rad(0) + math.sin(sine/5)/1.2,math.rad(0),math.rad(0)), 0.1)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0)*CFrame.Angles(math.rad(0) +- math.sin(sine/5)/1.2,math.rad(0),math.rad(0)), 0.1)

end

elseif animpose == "Running" then
if NoAnims == false then
change = 0.5

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.7 ,0.5,-0.5)*CFrame.Angles(math.rad(90)+ math.sin(sine/2.5)/2,0,.05), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.7,0.5,-0.5)*CFrame.Angles(math.rad(90)+ -math.sin(sine/2.5)/2,0,-.05), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0.5)*CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(-90), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(85) + math.sin(sine/2.5)/2, 0, 0.05), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(85) + -math.sin(sine/2.5)/2, 0.05, 0), .4)

end
end
end)
end)
