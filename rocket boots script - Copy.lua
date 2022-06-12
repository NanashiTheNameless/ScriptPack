wait()
 
assert(script.className == "LocalScript", "Must be a local script.")
 
if script.Parent.className ~= "HopperBin" then
local Hopper = Instance.new("HopperBin")
Hopper.Name = "Rocket Boots"
 
local scriptClone = script:Clone()
scriptClone.Parent = Hopper
Hopper.Parent = game:GetService("Players").LocalPlayer.Backpack
script:Remove()
assert(false, "Parent not a hopperbin")
end
 
--[ Code ]--
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local fire = {}
local Hovering = false
local hoverbp = nil
 
pcall(function() -- Left leg
local leg = char["Left Leg"]
 
local m1 = Instance.new("Part", char)
m1.BrickColor = BrickColor.new("Really black")
m1.FormFactor = "Custom"
m1.TopSurface = "Smooth"
m1.BottomSurface = "Smooth"
m1.Size = Vector3.new(1,1,1)
m1.CanCollide = false
Instance.new("BlockMesh", m1).Scale = Vector3.new(1.01,1.01,1.01)
local w1 = Instance.new("Weld", m1)
w1.Part0 = m1
w1.Part1 = leg
w1.C0 = CFrame.new(0,0.5,0)
 
local m2 = Instance.new("Part", char)
m2.BrickColor = BrickColor.new("Really red")
m2.Transparency = 0.5
m2.FormFactor = "Custom"
m2.TopSurface = "Smooth"
m2.BottomSurface = "Smooth"
m2.Size = Vector3.new(1,0.2,1)
m2.CanCollide = false
Instance.new("BlockMesh", m2).Scale = Vector3.new(1.02,0.5,1.02)
local w2 = Instance.new("Weld", m2)
w2.Part0 = m2
w2.Part1 = leg
w2.C0 = CFrame.new(0,0.2,0)
 
local m3 = Instance.new("Part", char)
m3.BrickColor = BrickColor.new("Really red")
m3.Transparency = 0.5
m3.FormFactor = "Custom"
m3.TopSurface = "Smooth"
m3.BottomSurface = "Smooth"
m3.Size = Vector3.new(1,0.2,1)
m3.CanCollide = false
Instance.new("BlockMesh", m3).Scale = Vector3.new(1.02,0.5,1.02)
local w2 = Instance.new("Weld", m3)
w2.Part0 = m3
w2.Part1 = leg
w2.C0 = CFrame.new(0,0.4,0)
end)
 
pcall(function() -- Right leg
local leg = char["Right Leg"]
 
local m1 = Instance.new("Part", char)
m1.BrickColor = BrickColor.new("Really black")
m1.FormFactor = "Custom"
m1.TopSurface = "Smooth"
m1.BottomSurface = "Smooth"
m1.Size = Vector3.new(1,1,1)
m1.CanCollide = false
Instance.new("BlockMesh", m1).Scale = Vector3.new(1.01,1.01,1.01)
local w1 = Instance.new("Weld", m1)
w1.Part0 = m1
w1.Part1 = leg
w1.C0 = CFrame.new(0,0.5,0)
 
local m2 = Instance.new("Part", char)
m2.BrickColor = BrickColor.new("Really red")
m2.Transparency = 0.5
m2.FormFactor = "Custom"
m2.TopSurface = "Smooth"
m2.BottomSurface = "Smooth"
m2.Size = Vector3.new(1,0.2,1)
m2.CanCollide = false
Instance.new("BlockMesh", m2).Scale = Vector3.new(1.02,0.5,1.02)
local w2 = Instance.new("Weld", m2)
w2.Part0 = m2
w2.Part1 = leg
w2.C0 = CFrame.new(0,0.2,0)
 
local m3 = Instance.new("Part", char)
m3.BrickColor = BrickColor.new("Really red")
m3.Transparency = 0.5
m3.FormFactor = "Custom"
m3.TopSurface = "Smooth"
m3.BottomSurface = "Smooth"
m3.Size = Vector3.new(1,0.2,1)
m3.CanCollide = false
Instance.new("BlockMesh", m3).Scale = Vector3.new(1.02,0.5,1.02)
local w2 = Instance.new("Weld", m3)
w2.Part0 = m3
w2.Part1 = leg
w2.C0 = CFrame.new(0,0.4,0)
end)
 
function MakeFire(leg)
local fire = Instance.new("Part", char)
fire.BrickColor = BrickColor.new("Really red")
fire.Transparency = 0.3
fire.CanCollide = false
fire.TopSurface = "Smooth"
fire.BottomSurface = "Smooth"
fire.FormFactor = "Custom"
fire.Size = Vector3.new(0.5,1,0.5)
local mesh = Instance.new("SpecialMesh", fire)
mesh.MeshId = "http://www.roblox.com/asset/?id=19383278"
mesh.Scale = Vector3.new(0.7,0.45,0.7)
local w = Instance.new("Weld", fire)
w.Part0 = fire
w.Part1 = leg
w.C0 = CFrame.new(0,-1,0) * CFrame.Angles(0,0,math.pi)
coroutine.resume(coroutine.create(function()
local i = 0
local pi = math.pi
local sin = math.sin
while wait() do
i = i + pi/10
w.C0 = w.C0 * CFrame.Angles(0,pi/30,0)
mesh.Scale = Vector3.new(sin(i)*0.05+0.6,sin(i)*0.2+0.5,sin(i)*0.05+0.6)
end
end))
return fire
end
 
isMouseButton1Down = false
function MouseButton1Down(m)
isMouseButton1Down = true
Hovering = false
 
pcall(function() hoverbp:Destroy() end)
for _, f in pairs(fire) do
pcall(function() f:Destroy() end)
end
fire = {}
 
pcall(function() char.Humanoid.PlatformStand = true end)
 
pcall(function() char.Animate.Disabled = true end)
pcall(function() char.Torso["Left Shoulder"].DesiredAngle = -math.pi end)
pcall(function() char.Torso["Right Shoulder"].DesiredAngle = math.pi end)
pcall(function() char.Torso["Left Hip"].DesiredAngle = 0 end)
pcall(function() char.Torso["Right Hip"].DesiredAngle = 0 end)
 
pcall(function() table.insert(fire, MakeFire(char["Right Leg"])) end)
pcall(function() table.insert(fire, MakeFire(char["Left Leg"])) end)
 
local mover = Instance.new("BodyVelocity", char.Torso)
mover.maxForce = Vector3.new(1e5,1e5,1e5)
mover.P = 1e3
local gyro = Instance.new("BodyGyro", char.Torso)
gyro.maxTorque = Vector3.new(1e10,1e10,1e10)
gyro.P = 1e6
table.insert(fire, mover)
table.insert(fire, gyro)
 
coroutine.resume(coroutine.create(function()
while isMouseButton1Down do
wait()
mover.velocity = m.Hit.lookVector * 100
gyro.cframe = m.Hit * CFrame.Angles(-math.pi/2,0,0)
end
end))
end
 
function MouseButton1Up(m)
isMouseButton1Down = false
if not Hovering then
for _, f in pairs(fire) do
pcall(function() f:Destroy() end)
end
fire = {}
 
pcall(function() char.Humanoid.PlatformStand = false end)
pcall(function() char.Animate.Disabled = false end)
coroutine.resume(coroutine.create(function()
local gyro = Instance.new("BodyGyro", char.Torso)
gyro.maxTorque = Vector3.new(1e10,0,1e10)
gyro.P = 1e4
table.insert(fire, gyro)
wait(0.5)
gyro:Destroy()
end))
end
end
 
function KeyUp(k)
if k == "t" then
if Hovering then
pcall(function() hoverbp:Destroy() end)
for _, f in pairs(fire) do
pcall(function() f:Destroy() end)
end
fire = {}
 
Hovering = false
else
Hovering = true
 
isMouseButton1Down = false
 
for _, f in pairs(fire) do
pcall(function() f:Destroy() end)
end
fire = {}
 
pcall(function() char.Humanoid.PlatformStand = false end)
pcall(function() char.Animate.Disabled = false end)
 
wait()
 
coroutine.resume(coroutine.create(function()
local pos = char.Torso.Position
local bp = Instance.new("BodyPosition", char.Torso)
bp.maxForce = Vector3.new(1e20,1e20,1e20)
bp.P = 1e5
bp.position = pos
hoverbp = bp
 
local gyro = Instance.new("BodyGyro", char.Torso)
gyro.maxTorque = Vector3.new(1e10,0,1e10)
gyro.P = 1e4
table.insert(fire, gyro)
 
pcall(function() table.insert(fire, MakeFire(char["Right Leg"])) end)
pcall(function() table.insert(fire, MakeFire(char["Left Leg"])) end)
wait(0.5)
pcall(function() gyro:Destroy() end)
end))
end
end
end
 
function Selected(m)
m.Button1Down:connect(function() MouseButton1Down(m) end)
m.KeyUp:connect(KeyUp)
m.Button1Up:connect(function() MouseButton1Up(m) end)
end
 
function Deselected()
isMouseButton1Down = false
for _, f in pairs(fire) do
pcall(function() f:Destroy() end)
end
fire = {}
 
pcall(function() hoverbp:Destroy() end)
pcall(function() char.Humanoid.PlatformStand = false end)
pcall(function() char.Animate.Disabled = false end)
end
script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected)
 