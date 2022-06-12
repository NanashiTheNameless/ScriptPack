--[[
Controls
Q = Mini Ball Blasts
E = Yellow Shield
R = SuperBall Blast
F = Teleport
--]]
player = game.Players.LocalPlayer
char = player.Character
torso = char.Torso
neckp = char.Torso.Neck.C0
neck = char.Torso.Neck
m=player:GetMouse()
human = char.Humanoid
local ChatService = game:GetService("Chat")
ChatService:Chat(char.Head, "The Yellow Man Coming For Ya!!")
local clothes = {}
for _, clothes in pairs (char:GetChildren()) do
if clothes:IsA("Accessory") then
clothes:Remove()
end
if clothes:IsA("Shirt") then
clothes:Remove()
end
if clothes:IsA("Pants") then
clothes:Remove()
end
if clothes:IsA("ShirtGraphic") then
clothes.Graphic = 0
clothes:Remove()
end
end
wait(1)
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Deep orange")
rng.CanCollide = false
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = char["Head"].CFrame * CFrame.new(0,0,0)
--rng.Rotation = Vector3.new(math.pi/2,0,0)
rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(1, 1, 1)
wait(0.1)
coroutine.wrap(function()
for i = 1, 10, .4 do
rngm.Scale = Vector3.new(1 + i*1, 1 + i*1, 1 + i*1)
wait()
end
wait()
rng:Destroy()
wait()
end)()
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Deep orange")
rng.CanCollide = false
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = char["Head"].CFrame * CFrame.new(0,-2,0)
rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(1, 1, 1)
wait(0.1)
coroutine.wrap(function()
for i = 1, 10, .4 do
rngm.Scale = Vector3.new(1 + i*1, 1 + i*1, 1 + i*1)
wait()
end
wait()
rng:Destroy()
wait()
end)()
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Deep orange")
rng.CanCollide = false
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = char["Head"].CFrame * CFrame.new(0,-4,0)
rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(1, 1, 1)
wait(0.1)
coroutine.wrap(function()
for i = 1, 10, .4 do
rngm.Scale = Vector3.new(1 + i*1, 1 + i*1, 1 + i*1)
wait()
end
wait()
rng:Destroy()
wait()
end)()
wait(0.7)
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Deep orange")
rng.CanCollide = false
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = char["Head"].CFrame * CFrame.new(-1,-2.5,0)
rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = Vector3.new(1, 1, 1)
wait(0.1)
coroutine.wrap(function()
for i = 1, 10, .4 do
rngm.Scale = Vector3.new(1 + i*1, 1 + i*1, 1 + i*1)
wait()
end
wait()
rng:Destroy()
wait()
end)()
char.Head.BrickColor = BrickColor.new("New Yeller")
torso.BrickColor = BrickColor.new("New Yeller")
char["Left Leg"].BrickColor = BrickColor.new("New Yeller")
char["Left Arm"].BrickColor = BrickColor.new("New Yeller")
char["Right Leg"].BrickColor = BrickColor.new("New Yeller")
char["Right Arm"].BrickColor = BrickColor.new("New Yeller")
char.Head.Material = "Neon"
torso.Material = "Neon"
char["Left Leg"].Material = "Neon"
char["Left Arm"].Material = "Neon"
char["Right Leg"].Material = "Neon"
char["Right Arm"].Material = "Neon"
human.MaxHealth = 2100000000
wait(0.5)
human.Health = human.MaxHealth
wait(0.1)
human.WalkSpeed = 50
---------------------------------------------------------------------------------------------------
m.KeyDown:connect(function(key)
if key == "q" then
for i = 1,15 do
local pos = m.Hit.p
local pos1 = torso.Position
torso.CFrame = CFrame.new(pos1, pos)
local x = Instance.new("Part")
x.BrickColor = BrickColor.new("New Yeller")
x.FormFactor = "Custom"
x.Size = Vector3.new(2,2,2)
x.TopSurface = "Smooth"
x.BottomSurface = "Smooth"
x.Shape = "Ball"
x.Name = "Yellow Balls"
x.CanCollide = false
x.Anchored = false
x.Transparency = 0.1
local y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.velocity = char.Torso.CFrame.lookVector*180
y.Parent = x
x.CFrame = player.Character.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-10,-5))* CFrame.Angles(0, math.pi, 0)
x.Parent = workspace
x.Touched:connect(function(h)
local a = h.Parent.Humanoid
if a.Parent.Name == game.Players.LocalPlayer.Name then
a:TakeDamage(0)
elseif h.Parent.ClassName == "Model" then if h.Parent:FindFirstChild("Humanoid") then
wait(0.2)
a:TakeDamage(math.huge)
end
wait()
end
end)
game.Debris:AddItem(x,5)
end
end
end)
---------------------------------------------------------------------------------------------------------
m.KeyDown:connect(function(key)
if key == "f" then
char.Torso.CFrame = m.hit
end
end)
-------------------------------------------------------------------------------------------------------------
m.KeyDown:connect(function(key)
if key == "e" then
org = char.Torso["Left Shoulder"].C0
char.Torso["Left Shoulder"].C0 = char.Torso["Left Shoulder"].C0 * CFrame.new(-0.3,0,0) * CFrame.Angles(0,0,math.rad(-90))
k = Instance.new("Part",char)
k.Name = "Blue Shield"
k.Size = Vector3.new(5,1,5)
k.CanCollide = false
k.BrickColor = BrickColor.new("New Yeller")
k.TopSurface = 0
k.BottomSurface = 0
k.Material = "Neon"
w = Instance.new("Weld", k)
w.Part0 = k
w.Part1 = char["Left Arm"]
w.C0 = CFrame.new(0,1,0)
k.Touched:connect(function(j)
local s = j.Parent.Humanoid
if s.Parent.Name == player.Name then
s:TakeDamage(0)
end
if j.Parent.ClassName == "Model" then if j.Parent:FindFirstChild("Humanoid") then
j.Parent.Torso.Velocity = CFrame.new(torso.Position,j.Parent.Torso.Position).lookVector * 900
wait(0.2)
s:TakeDamage(math.huge)
wait()
j.Parent.Torso.Velocity = stop
end
end
end)
wait(10)
k:Destroy()
torso["Left Shoulder"].C0 = org
wait(0.1)
end
end)
-----------------------------------------------------------------------------------------------------------
m.KeyDown:connect(function(key)
if key == "r" then
local pos = m.Hit.p
local pos1 = torso.Position
torso.CFrame = CFrame.new(pos1, pos)
q = Instance.new("Part", player.Character)
q.Material = "Neon"
q.Size = Vector3.new(1,1,1)
q.Shape = "Ball"
q.TopSurface = 0
q.BottomSurface = 0
q.Name = "Super Yellow Ball"
q.BrickColor = BrickColor.new("New Yeller")
q.CanCollide = false
q.Anchored = true
coroutine.wrap(function()
for i = 1, 10, .1 do
q.Size = Vector3.new(1 + i*10, 1 + i*10, 1 + i*10)
local y = Instance.new("BodyVelocity", q)
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.velocity = char.Torso.CFrame.lookVector*180
q.CFrame = torso.CFrame * CFrame.new(0,50,0)
q.Touched:connect(function(e)
local w = e.Parent.Humanoid
if w.Parent.Name == game.Players.LocalPlayer.Name then
w:TakeDamage(0)
elseif e.Parent.ClassName == "Model" then if e.Parent:FindFirstChild("Humanoid") then
wait(0.2)
w:TakeDamage(math.huge)
end
wait()
end
end)
game.Debris:AddItem(q,5)
q.Anchored = false
end
end)()
end
end)