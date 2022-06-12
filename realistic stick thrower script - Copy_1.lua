plyr = game:GetService("Players").LocalPlayer
char = plyr.Character
head = char:findFirstChild("Head")
torso = char:findFirstChild("Torso")
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
neck = torso:findFirstChild("Neck")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
hum = char:findFirstChild("Humanoid")
cam = game.Workspace.CurrentCamera
m = plyr:GetMouse()
-- My tags br0

RAB = Instance.new("Part")
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = char
RAB:BreakJoints()

RABW = Instance.new("Weld",RAB)
RABW.Part0 = char.Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)

LAB = Instance.new("Part")
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = char
LAB:BreakJoints()

LABW = Instance.new("Weld",LAB)
LABW.Part0 = char.Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)

RAW = Instance.new("Weld",RAB)
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)

LAW = Instance.new("Weld",LAB) 
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0)
-- Fake Arms

ypcall(function() --
for i,v in pairs(char:GetChildren()) do
if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Hat") then
v:Destroy()
end
end
end)

down = false

local stik = Instance.new("Part", char)
stik.TopSurface, stik.BottomSurface = 10, 10
stik.formFactor = "Custom"
stik.Size = Vector3.new(.2, 2, .2)
stik.Name = 'stik'
stik.Material = "Wood"
stik.BrickColor = BrickColor.new("Dark orange")

local weld = Instance.new("Weld", ra)
weld.Part0 = ra
weld.Part1 = stik
weld.C0 = weld.C0 * CFrame.new(0, -1.1, 0) * CFrame.Angles(0, math.pi/2, math.pi/2)

local hat = stik:Clone()
hat.Parent = char
hat.Size = Vector3.new(.1, .1, .1)
hat.BrickColor = BrickColor.new("White")
hat.Name = 'hat'

local mesh = Instance.new("SpecialMesh", hat)
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=5158270"
mesh.Scale = Vector3.new(.15, .24, .1)

local weld2 = Instance.new("Weld", head)
weld2.Part0 = head
weld2.Part1 = hat
weld2.C0 = weld2.C0 * CFrame.Angles(-math.pi/2, 0, 0) * CFrame.new(0, .6, 0)

local hood = hat:Clone()
hood.Parent = char
hood.Mesh.MeshId = "http://www.roblox.com/asset/?id=16952952"
hood.Mesh.Scale = Vector3.new(1.05, 1.05, 1.05)
hood.Name = 'hood'
hood.BrickColor = BrickColor.new("Really back")

local weld3 = Instance.new("Weld", head)
weld3.Part0 = head
weld3.Part1 = hood
weld3.C0 = weld3.C0 * CFrame.new(0, .5, 0)

local shirt = Instance.new("Shirt", char)
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=142078151"

local pants = Instance.new("Pants", char)
pants.PantsTemplate = "http://www.roblox.com/asset/?id=145356293"

kdown = false

coroutine.resume(coroutine.create(function()
local t = false
while wait() do 
wait()
if down == true then
repeat wait() until down == false 
stik2 = stik:Clone()
stik2.Parent = game.Workspace
stik2:BreakJoints()
stik.Transparency = 1
stik2.CFrame = CFrame.new(stik.Position)
stik2.Touched:connect(function(hit)
if hit then
vol:Destroy()
hum = hit.Parent:findFirstChild("Humanoid")
if hum and hit.Parent.Name ~= plyr.Name then
if t == true then return end
t = true
hum:TakeDamage(99)
wait(6)
t = false
end
end
end)
vol = Instance.new("BodyVelocity", stik2)
vol.maxForce = Vector3.new(math.huge,math.huge,math.huge)
vol.P = 90
vol.velocity = (m.Hit.p - stik2.Position).unit * 90
game:GetService("Debris"):AddItem(stik2,6)
for i=1,0,-0.22 do
wait()
RAW.C0 = CFrame.Angles(math.rad(180*i),0,0)
end
RAW.Part1 = nil
repeat wait() until stik2.Parent ~= game.Workspace
stik.Transparency = 0
kdown = false
end
end
end))
stick1 = tick()
kdown1 = false
cliks = 0
m.Button1Down:connect(function()
if down == false and kdown1 == false then
kdown = true
RAW.Part1 = ra
local t2 = tick()
cliks = cliks + 1
if stick1 - t2 < 10 then
if cliks == 1 then
coroutine.resume(coroutine.create(function()
for i=0,1,0.22 do
wait()
RAW.C0 = CFrame.Angles(0,0,math.rad(90*i))
end
end))
bg = Instance.new("BodyGyro", torso)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.cframe = CFrame.new(torso.Position,Vector3.new(torso.Position.X,torso.Position.y,m.hit.p.z)) * CFrame.Angles(0, math.pi/2, 0)
down = false
elseif cliks == 2 then
coroutine.resume(coroutine.create(function()
for i=0,1,0.22 do
wait()
RAW.C0 = CFrame.Angles(0,0,math.rad(90*i))
end
end))
wait(.25)
bg = Instance.new("BodyGyro", torso)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.cframe = CFrame.new(torso.Position,Vector3.new(torso.Position.X,torso.Position.y,m.hit.p.z)) * CFrame.Angles(0, math.pi/2, 0)
down = false
bg.cframe = CFrame.new(torso.Position,Vector3.new(torso.Position.X,torso.Position.y,m.hit.p.z)) * CFrame.Angles(0, -math.pi/2, 0)
else
end
end
end
end)


m.KeyDown:connect(function(key)
if key == "e" and kdown1 == false and kdown == false then
kdown1 = true
down = true
kdown = true
RAW.Part1 = ra
for i=0,1,0.08 do
wait()
RAW.C0 = CFrame.Angles(math.rad(180*i),0,0)
end
end
end)

m.KeyUp:connect(function(key)
if key == "e" then
down = false
kdown = false
kdown1 = false
end
end)