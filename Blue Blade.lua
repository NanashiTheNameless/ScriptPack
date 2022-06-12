plr = game.Players.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
torso = char.Torso
head = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rs = char.Torso["Right Shoulder"]
ls = char.Torso["Left Shoulder"]
humanoid = char:findFirstChild("Humanoid")
local damage = math.random(16, 22)
local debounce = false
local attack = false
local healing = false
local touched = false
Run = game:service'RunService'

hndl = Instance.new("Part", char)
hndl.FormFactor = "Custom"
hndl.Size = Vector3.new(0.51, 5, 0.21)
hndl.BottomSurface = "SmoothNoOutlines"
hndl.FrontSurface = "SmoothNoOutlines"
hndl.RightSurface = "SmoothNoOutlines"
hndl.LeftSurface = "SmoothNoOutlines"
hndl.TopSurface = "SmoothNoOutlines"
hndl.BackSurface = "SmoothNoOutlines"
hndl.Locked = true
hndl.CanCollide = false
hndl.Reflectance = 0.5
hndl:BreakJoints()
w = Instance.new("Weld", char)
w.C0 = CFrame.new(0, 0, -0.6) * CFrame.Angles(0, 0, math.pi/4)
w.Part0 = hndl
w.Part1 = torso
hndl2 = Instance.new("Part", char)
hndl2.FormFactor = "Custom"
hndl2.Size = Vector3.new(0.53, 1.5, 0.23)
hndl2.BrickColor = BrickColor.Blue()
hndl2.BottomSurface = "SmoothNoOutlines"
hndl2.FrontSurface = "SmoothNoOutlines"
hndl2.RightSurface = "SmoothNoOutlines"
hndl2.LeftSurface = "SmoothNoOutlines"
hndl2.TopSurface = "SmoothNoOutlines"
hndl2.BackSurface = "SmoothNoOutlines"
hndl2.CanCollide = false
hndl2.Locked = true
hndl2:BreakJoints()
w2 = Instance.new("Weld", char)
w2.C0 = CFrame.new(0, -1.8, 0) * CFrame.Angles(0, 0, 0)
w2.Part0 = hndl2
w2.Part1 = hndl
hndl3 = Instance.new("Part", char)
hndl3.FormFactor = "Custom"
hndl3.Size = Vector3.new(0.73, 0.4, 0.23)
hndl3.BrickColor = BrickColor.Blue()
hndl3.BottomSurface = "SmoothNoOutlines"
hndl3.FrontSurface = "SmoothNoOutlines"
hndl3.RightSurface = "SmoothNoOutlines"
hndl3.LeftSurface = "SmoothNoOutlines"
hndl3.TopSurface = "SmoothNoOutlines"
hndl3.BackSurface = "SmoothNoOutlines"
hndl3.CanCollide = false
hndl3.Locked = true
hndl3:BreakJoints()
w3 = Instance.new("Weld", char)
w3.C0 = CFrame.new(0, -1.2, 0) * CFrame.Angles(0, 0, 0)
w3.Part0 = hndl3
w3.Part1 = hndl
hndl4 = Instance.new("Part", char)
hndl4.FormFactor = "Custom"
hndl4.Size = Vector3.new(0.36, 0.36, 0.21)
hndl4.BottomSurface = "SmoothNoOutlines"
hndl4.FrontSurface = "SmoothNoOutlines"
hndl4.RightSurface = "SmoothNoOutlines"
hndl4.LeftSurface = "SmoothNoOutlines"
hndl4.TopSurface = "SmoothNoOutlines"
hndl4.BackSurface = "SmoothNoOutlines"
hndl4.CanCollide = false
hndl4.Reflectance = 0.5
hndl4.Locked = true
hndl4:BreakJoints()
w4 = Instance.new("Weld", char)
w4.C0 = CFrame.new(-1.77, 1.77, 0) * CFrame.Angles(0, 0, math.pi/4)
w4.Part0 = hndl4
w4.Part1 = hndl

sound = Instance.new("Sound", head)
sound.SoundId = "http://roblox.com/asset/?id=10209850"
sound.Volume = 1

tool = Instance.new("HopperBin", plr.Backpack)
tool.Name = "Sword"

tool.Selected:connect(function(mouse)
rs.Part0 = nil
rs.Part1 = nil
ls.Part0 = nil
ls.Part1 = nil


ar = Instance.new("Part", char)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.Locked = true
ar.CanCollide = false
ar:BreakJoints()

fake = Instance.new("Weld", char)
fake.Part0 = char.Torso
fake.C0 = CFrame.new(1.48,0.45,0)
fake.Part1 = ar

ws = Instance.new("Weld", char)
ws.C0 = CFrame.new(0, 0.45, 0)
ws.Part0 = ra
ws.C1 = CFrame.new()
ws.Part1 = ar


ar2 = Instance.new("Part", char)
ar2.FormFactor = "Custom"
ar2.Size = Vector3.new(1, 1, 1)
ar2.Transparency = 1
ar2.Locked = true
ar2.CanCollide = false
ar2:BreakJoints()

fake2 = Instance.new("Weld", char)
fake2.Part0 = char.Torso
fake2.C0 = CFrame.new(-1.48,0.45,0)
fake2.Part1 = ar2

ws2 = Instance.new("Weld", char)
ws2.C0 = CFrame.new(0, 0.45, 0)
ws2.Part0 = la
ws2.C1 = CFrame.new()
ws2.Part1 = ar2

for i = 0, 160, 12 do
fake.C0 = CFrame.new(1.48, 0.45, 0) * CFrame.Angles(math.rad(i), 0, 0)
wait()
end
w.C0 = CFrame.new(-0.6, 2, -0.8) * CFrame.Angles(-math.pi/2, 0, math.pi/4)
w.Part0 = hndl
w.Part1 = ra
coroutine.wrap(function()
for i = 160, 70, -10 do
fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(i/1.8))
wait()
end
end)()
for i = 0, 70, 10 do
fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(i/1.8))
wait()
end
mouse.Button1Down:connect(function(mouse)
if attack then return end
if debounce then return end
if healing then return end
attack = true
for i = 70, 120, 10 do
fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(50/1.8))
fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(90/1.8))
wait()
end
sound:play()
for i = 125, 30, -15 do
fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(50/1.8))
fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(90/1.8))
wait()
end
for i = 30, 70, 10 do
fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(70/1.8))
fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(70/1.8))
wait()
end
attack = false

end)
mouse.KeyDown:connect(function(key)
if key == "e" then
if attack then return end
if debounce then return end
if healing then return end
debounce = true
super1()
end
if key == "q" then
if attack then return end
if debounce then return end
healing = true
coroutine.wrap(function()
while healing do
coroutine.wrap(function()
if char:findFirstChild("Humanoid") then
char.Humanoid.Health = char.Humanoid.Health + 10
end
local pow = Instance.new("Part", char)
pow.BrickColor = BrickColor.Blue()
pow.FormFactor = "Custom"
pow.CanCollide = false
pow.Size = Vector3.new(0.2, 0.6, 0.2)
pow.Anchored = true
pow.TopSurface = 0
pow.BottomSurface = 0
pow.BottomSurface = "SmoothNoOutlines"
pow.FrontSurface = "SmoothNoOutlines"
pow.RightSurface = "SmoothNoOutlines"
pow.LeftSurface = "SmoothNoOutlines"
pow.TopSurface = "SmoothNoOutlines"
pow.BackSurface = "SmoothNoOutlines"
pow.CFrame = torso.CFrame * CFrame.new(math.random(-4, 4), -4, math.random(-4, 4))
Instance.new("PointLight", pow).Color = Color3.new(0, 0, 1)
coroutine.wrap(function()
while pow ~= nil do
pow.CFrame = pow.CFrame * CFrame.new(0, 0.5, 0)
Run.Stepped:wait()
end
end)()
wait(0.5)
for transpar = 0, 1, 0.1 do
pow.Transparency = transpar
wait()
end
pow:Destroy()


end)()
Run.Stepped:wait(0.2)
end
end)()
end
if key == "r" then
if debounce then return end
if healing then return end
if attack then return end
debounce = true
super2()
end
end)

mouse.KeyUp:connect(function(key)
if key == "q" then
healing = false
end
end)

end)

tool.Deselected:connect(function()
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4)
fake.C0 = CFrame.new(1.2, 0.45, -0.4)
w.C0 = CFrame.new(0, 0, -0.6) * CFrame.Angles(0, 0, math.pi/4)
w.Part0 = hndl
w.Part1 = torso
ws:Destroy()
ws2:Destroy()
fake:Destroy()
fake2:Destroy()
ar2:Destroy()
ar:Destroy()
rs.Part0 = torso
rs.Part1 = ra
ls.Part0 = torso
ls.Part1 = la
end)


function super1()
for i = 70, 150, 10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(i/1.8))
wait()
end



for i = 0, 60 do
coroutine.wrap(function()
local charge = Instance.new("Part", char)
charge.FormFactor = "Custom"
charge.TopSurface = 0
charge.BottomSurface = 0
charge.Transparency = 0.4
charge.BrickColor = BrickColor.White()
charge.Anchored = true
charge.CanCollide = false
charge.Size = Vector3.new(2, 2, 2)
charge.BottomSurface = "SmoothNoOutlines"
charge.FrontSurface = "SmoothNoOutlines"
charge.RightSurface = "SmoothNoOutlines"
charge.LeftSurface = "SmoothNoOutlines"
charge.TopSurface = "SmoothNoOutlines"
charge.BackSurface = "SmoothNoOutlines"
charge.CFrame = la.CFrame * CFrame.new(0, -0.8, 0) * CFrame.Angles(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
wait()
for tra = 0.4, 1, 0.1 do
charge.Transparency = tra
wait()
end
charge:Destroy()
end)()
wait(0.06)
end
for i = 150, 70, -10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(i/1.8))
wait()
end
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(70), 0, math.rad(70/1.8))
local powa = Instance.new("Part", char)
powa.FormFactor = "Custom"
powa.BrickColor = BrickColor.White()
powa.Size = Vector3.new(4, 200, 4)
powa.Transparency = 0.6
powa.CanCollide = false
powa.Locked = true
powa.Anchored = true
powa.CFrame = torso.CFrame * CFrame.new(0, 0, 0)
Instance.new("CylinderMesh", powa)
coroutine.wrap(function()
powa.Touched:connect(function(hit)
if hit.Parent ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= plr.Name then
hit.Parent:BreakJoints()
end
end)
end)()
coroutine.wrap(function()
for size = 4, 70, 2 do
powa.Size = Vector3.new(size, 200, size)
powa.CFrame = torso.CFrame * CFrame.new(0, 0, 0)
wait()
end
end)()
wait(0.4)
for trans = 0.6, 1, 0.02 do
powa.Transparency = trans
wait()
end
powa:Destroy()


debounce = false
end

function super2()
for i = 70, 0, -10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(i/1.8))
wait()
end

bodyG = Instance.new("BodyGyro", torso)
bodyG.maxTorque = Vector3.new(0, math.huge, 0)
bodyG.P = 9999999
bodyG.cframe = torso.CFrame
neck = torso.Neck
neck.C0 = neck.C0 * CFrame.Angles(0, math.rad(0), math.rad(90))
coroutine.wrap(function()
game:service'RunService'.Stepped:connect(function()
bodyG.cframe = CFrame.new(torso.Position,Vector3.new(mouse.Hit.p.x,torso.Position.y,mouse.Hit.p.z)) * CFrame.Angles(0, math.rad(-90), 0)
end)
end)()
for i = 0, 90, 10 do
fake2.C0 = CFrame.new(-1.45, 0.45, -0) * CFrame.Angles(0, 0, -math.rad(i))
wait()
end
for i = 0, 20 do
coroutine.wrap(function()
local charge = Instance.new("Part", char)
charge.FormFactor = "Custom"
charge.TopSurface = 0
charge.BottomSurface = 0
charge.Transparency = 0.4
charge.BrickColor = BrickColor.White()
charge.Anchored = true
charge.CanCollide = false
charge.Size = Vector3.new(2, 2, 2)
charge.BottomSurface = "SmoothNoOutlines"
charge.FrontSurface = "SmoothNoOutlines"
charge.RightSurface = "SmoothNoOutlines"
charge.LeftSurface = "SmoothNoOutlines"
charge.TopSurface = "SmoothNoOutlines"
charge.BackSurface = "SmoothNoOutlines"

charge.CFrame = la.CFrame * CFrame.new(0, -0.8, 0) * CFrame.Angles(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
wait()
for tra = 0.4, 1, 0.1 do
charge.Transparency = tra
wait()
end
charge:Destroy()
end)()
wait(0.06)
end
local ball = Instance.new("Part", char)
ball.FormFactor = "Custom"
ball.Size = Vector3.new(4, 4, 4)
ball.Shape = "Ball"
ball.Transparency = 0.4
ball.BottomSurface = 0
ball.TopSurface = 0
ball.CanCollide = true
ball.Anchored = true
ball:breakJoints()
coroutine.wrap(function()
for i = 0, 100, 2 do
if touched then return end
ball.CFrame = la.CFrame * CFrame.new(0, -7, 0) *CFrame.new(0, -i, 0)
wait()
end
if touched then return end
ball.Size = Vector3.new(5, 5, 5)
wait(0.1)
ball.Transparency = 0.6
ball.Size = Vector3.new(6, 6, 6)
wait(0.1)
ball.Size = Vector3.new(7, 7, 7)
ball.Transparency = 0.8
wait(0.1)
ball.Transparency = 1
ball:Destroy()
end)()
ball.BrickColor = BrickColor.White()

ball.Touched:connect(function(hit)
if touched then return end
if hit.Parent ~= nil then
touched = true
if hit.Parent:findFirstChild("Humanoid") ~= nil then
hit.Parent:BreakJoints()
end
ball.Transparency = 0.6
ball.Size = Vector3.new(6, 6, 6)
wait(0.1)
ball.Size = Vector3.new(7, 7, 7)
ball.Transparency = 0.8
wait(0.1)
ball.Transparency = 1
ball:Destroy()
wait(1)
touched = false
end
end)

wait(2)	
bodyG:Destroy()
neck.C0 = neck.C0 * CFrame.Angles(0, math.rad(0), math.rad(-90))
for i = 90, 0, -10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(0, 0, -math.rad(i))
wait()
end
for i = 0, 70, 10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(i/1.8))
wait()
end
debounce = false
end


hndl.Touched:connect(function(hit)
if attack then
if debounce then return end
debounce = true
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(damage)
end
wait(0.1)
debounce = false
end
end)