:ls local p = game.Players:findFirstChild("luxulux") -- Put your name where it says assaulttrooper2213
script.Name = "FusScript"
local go = true --for normal shouts
local skygo = true --for sky-related shouts
--19 Shouts: Fus Ro Dah, Wuld Nah Kest, Liz Slen Nus, Yol Toor Shul, Feim Zii Gron, Strun Bah Qo, Fo Krah Diin, Laas Yah Nir,
--Zun Haal Viik, Krii Lun Aus, Tiid Klo Ul, Faas Ru Maar, Toor Bah Yol, Joor Zah Frul, Kaan Drem Ov, Ven Mul Riik, Lok Vah Koor,
--Nahl Daal Vus, and Bex
p.Chatted:connect(function(message)
local msg = string.lower(message)
if string.find(msg, "fus ro dah") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright blue")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(fused)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 20 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "wuld nah kest") then
local speed = p.Character.Humanoid.WalkSpeed --Speed prior to sprinting
local cf = p.Character.Torso.CFrame * CFrame.new(0, 0, -50)
local pos = cf.p
p.Character.Humanoid.WalkSpeed = 200
p.Character.Humanoid:MoveTo(pos, workspace.Base)
wait(0.275)
p.Character.Humanoid.WalkSpeed = speed
p.Character.Humanoid:MoveTo(p.Character.Torso.Position, p.Character.Torso)
elseif string.find(msg, "liz slen nus") and go == true then
--local succ, ret = pcall(function()
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(3, 3, 6)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.5
fus.Reflectance = 0.6
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -6)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local s = Instance.new("Sparkles")
s.Name = "LizSparkle"
s.SparkleColor = Color3.new(1, 1, 1)
s.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(lized)
--[end)
if ret then
local m = Instance.new("Part", p.PlayerGui)
m.Text = "ERROR: " ..ret
game:GetService("Debris"):AddItem(m, 15)
end
coroutine.resume(coroutine.create(function()
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "yol toor shul") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(3, 3, 6)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright orange")
fus.Transparency = 0.5
fus.Reflectance = 0.6
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -6)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()/3
f.Heat = 0
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(yoled)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 20 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/3)/40
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "feim zii gron") then
p.Character.Humanoid.WalkSpeed = 30
for a, b in pairs(p.Character:children()) do
if b.Name == "Head" then
if b:findFirstChild("face") ~= nil then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.face.Transparency = b.face.Transparency + 0.01
wait(0.01)
end
b.face.Transparency = 1
end))
end
end
if b.className == "Part" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Transparency = b.Transparency + 0.01
wait(0.01)
end
b.Transparency = 1
end))
elseif b.className == "Hat" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Handle.Transparency = b.Handle.Transparency + 0.01
wait(0.01)
end
b.Handle.Transparency = 1
end))
end
end
wait(15)
p.Character.Humanoid.WalkSpeed = 16
for a, b in pairs(p.Character:children()) do
if b.Name == "Head" then
if b:findFirstChild("face") ~= nil then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.face.Transparency = b.face.Transparency - 0.01
wait(0.01)
end
b.face.Transparency = 0
end))
end
end
if b.className == "Part" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Transparency = b.Trans0arency - 0.01
wait(0.01)
end
b.Transparency = 0
end))
elseif b.className == "Hat" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Handle.Transparency = b.Handle.Transparency - 0.01
wait(0.01)
end
b.Handle.Transparency = 0
end))
end
end
elseif string.find(msg, "strun bah qo") and skygo == true then
skygo = false
local clouds = {}
function lightning(cl)
local lights = {}
for i = 1, 15 do
local l = Instance.new("Part")
l.Name = "FusLightning"
table.insert(lights, l)
game:GetService("Debris"):AddItem(l, 15)
l.formFactor = "Custom"
l.Size = Vector3.new(1, math.random(50, 75), 1)
l.BrickColor = BrickColor.new("Institutional white")
l.Transparency = 0.45
l.Reflectance = 0.5
l.Anchored = true
l.CanCollide = false
local xnum = 6
local znum = 6
if i == 1 then
l.CFrame = cl.CFrame * CFrame.Angles(math.random(-(math.pi/xnum), math.pi/xnum), 0, math.random(-(math.pi/znum), math.pi/znum)) * CFrame.new(0, -1 * (l.Size.Y/2), 0)
elseif i > 1 then
local llight = lights[i - 1]
l.CFrame = llight.CFrame * CFrame.Angles(math.random(-(math.pi/xnum), math.pi/xnum), 0, math.random(-(math.pi/znum), math.pi/znum)) * CFrame.new(0, -1 * (l.Size.Y/2), 0)
end
l.Parent = workspace
l.Touched:connect(function(part) struned(part, l) end)
coroutine.resume(coroutine.create(function()
repeat
l.Transparency = l.Transparency + 0.02
wait()
until l.Transparency >= 1
l:remove()
end))
end
end
for i = 1, 100 do
game.Lighting.Brightness = game.Lighting.Brightness - 0.01
wait(0.05)
end
game.Lighting.Brightness = 0
local cloud = Instance.new("Part")
cloud.Name = "StrunCloud"
cloud.Size = Vector3.new(1, 1, 1)
cloud.Anchored = true
cloud.CanCollide = false
cloud.BrickColor = BrickColor.new("Black")
cloud.Transparency = 1
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(100, 150), math.random(50, 100), math.random(100, 150))
mesh.MeshId = "www.roblox.com/asset/?id=1095708"
mesh.Parent = cloud
for i = 1, (math.random(4, 8)) do
local newc = cloud:clone()
newc.Parent = workspace
game:GetService("Debris"):AddItem(newc, 300)
table.insert(clouds, newc)
newc.CFrame = CFrame.new(p.Character.Torso.Position + Vector3.new(math.random(-250, 250), math.random(150, 200), math.random(-250, 250)))
coroutine.resume(coroutine.create(function()
repeat
newc.Transparency = newc.Transparency - 0.01
wait()
until newc.Transparency <= 0.2
newc.Transparency = 0.2
end))
end
for i = 1, (math.random(7, 15)) do
if skygo == true then break end
local s = Instance.new("Sound")
game:GetService("Debris"):AddItem(s, 5)
s.Name = "Lighting"
s.SoundId = "rbxasset://sounds/HalloweenLightning.wav"
s.Pitch = (math.random(10, 15) * 0.1)
s.PlayOnRemove = true
s.Looped = false
s.Parent = workspace
wait(0.5)
s:play()
for i = 1, #clouds do
lightning(clouds[i])
end
game.Lighting.Brightness = 1
wait(0.001)
game.Lighting.Brightness = 0
s:remove()
wait(math.random(3, 6))
end
wait(2)
for i = 1, #clouds do
coroutine.resume(coroutine.create(function()
repeat
clouds[i].Transparency = clouds[i].Transparency + 0.01
wait(0.05)
until clouds[i].Transparency >= 1
clouds[i]:remove()
end))
end
for i = 1, 110 do
game.Lighting.Brightness = game.Lighting.Brightness + 0.01
wait(0.01)
end
skygo = true
game.Lighting.Brightness = 1
elseif string.find(msg, "fo krah diin") and go == true then
go = false
for i = 1, 50 do
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(0.5, 0.5, 0.5)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Institutional white")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(math.random(-15, 15)*0.1, math.random(-15, 15)*0.1, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = fus.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) foed(part, fus) end)
game:Ge4Service("Debris"):AddItem(fus, 15)
end
go = true
elseif string.find(msg, "laas yah nir") then
for i = 1, 30 do
for a, b in pairs(game.Players:children()) do
if b.Character ~= nil then
if (p.Character.Torso.Position - b.Character.Torso.Position).magnitude <= 100 and b ~= p then
if b.Character.Torso:findFirstChild("LaasFire") == nil then
local f = Instance.new("Fire", b.Character.Torso)
f.Name = "LaasFire"
f.Size = b.Character.Torso:GetMass()*2
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(1, 1, 1)
end
elseif (p.Character.Torso.Position - b.Character.Torso.Position).magnitude > 100 then
if b.Character.Torso:findFirstChild("LaasFire") ~= nil then
b.Character.Torso.LaasFire:remove()
end
end
end
end
wait(1)
end
for a, b in pairs(game.Players:children()) do
if b.Character.Torso:findFirstChild("LaasFire") ~= nil then
b.Character.Torso.LaasFire:remove()
end
end
elseif string.find(msg, "zun haal viik") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Lime green")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -200
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = In3tance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Paren4 = workspace
fus.Touched:connect(function(part) zuned(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 9 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "krii lun aus") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright purple")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) kriied(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "tiid klo ul") then
for a, b in pairs(game.Players:children()) do
if b.Character ~= nil and b ~= p then
for c, d in pairs(b.Character:children()) do
if d.className == "Part" then
if d.Anchored == false then
local cf = nil
if d.Name == "Torso" then
cf = d.CFrame
end
d.Anchored = true
coroutine.resume(coroutine.create(function()
wait(10)
if d ~= nil then
d.Anchored = false
d.CFrame = cf
end
end))
end
elseif d.className == "Hat" then
if d.Handle.Anchored == false then
d.Handle.Anchored = true
coroutine.resume(coroutine.create(function()
wait(10)
if d ~= nil then
if d.Handle ~= nil then
d.Handle.Anchored = false
end
end
end))
end
end
end
end
end
elseif string.find(msg, "faas ru maar") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Really black")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) faased(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "toor bah yol") and skygo == true then
skygo = false
local clouds = {}
function meteor(cloud)
local cf = CFrame.new(cloud.Position + Vector3.new(math.random(-10, 10), 20, math.random(-10, 10)))
local m = Instance.new("Part")
m.Name = "FusRock"
m.Shape = "Ball"
m.formFactor = "Symmetric"
m.Anchored = false
m.CanCollide = false
m.TopSurface = "Smooth"
m.BottomSurface = "Smooth"
local size = math.random(10, 20)
m.Size = Vector3.new(size, size, size)
m.BrickColor = BrickColor.new("Bright red")
m.Reflectance = 0.4
m.CFrame = cf
Instance.new("Fire", m).Size = m:GetMass()
m.Velocity = Vector3.new(0, -50, 0)
m.Parent = workspace
game:GetService("Debris"):AddItem(m, 30)
m.Touched:connect(function(part) toored(part, m) end)
end
for i = 1, 100 do
game.Lighting.Brightness = game.Lighting.Brightness - 0.01
wait(0.05)
end
game.Lighting.Brightness = 0
local cloud = Instance.new("Part")
cloud.Name = "ToorCloud"
cloud.Size = Vector3.new(1, 1, 1)
cloud.Anchored = true
cloud.CanCollide = false
cloud.BrickColor = BrickColor.new("Black")
cloud.Transparency = 1
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(100, 150), math.random(50, 100), math.random(100, 150))
mesh.MeshId = "www.roblox.com/asset/?id=1095708"
mesh.Parent = cloud
for i = 1, (math.random(4, 8)) do
local newc = cloud:clone()
newc.Parent = workspace
game:GetService("Debris"):AddItem(newc, 180)
table.insert(clouds, newc)
newc.CFrame = CFrame.new(p.Character.Torso.Position + Vector3.new(math.random(-250, 250), math.random(150, 200), math.random(-250, 250)))
coroutine.resume(coroutine.create(function()
repeat
newc.Transparency = newc.Transparency - 0.01
wait()
until newc.Transparency <= 0.2
newc.Transparency = 0.2
end))
end
for launch = 1, math.random(20, 30) do
if skygo == true then break end
wait(math.random(2, 4))
meteor(clouds[math.random(1, #clouds)])
end
wait(1)
for c = 1, #clouds do
coroutine.resume(coroutine.create(function()
repeat
clouds[c].Transparency = clouds[c].Transparency + 0.01
wait()
until clouds[c].Transparency >= 1
clouds[c].Transparency = 1
clouds[c]:remove()
end))
end
repeat
game.Lighting.Brightness = game.Lighting.Brightness + 0.01
wait(0.01)
until game.Lighting.Brightness >= 1
game.Lighting.Brightness = 1
skygo = true
elseif string.find(msg, "joor zah frul") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright yellow")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) joored(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "kaan drem ov") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) kaaned(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "ven mul riik") and skygo == true then
skygo = false
local l = game.Lighting
l.FogEnd = 1000
coroutine.resume(coroutine.create(function()
repeat
l.FogEnd = l.FogEnd - 3
wait()
until l.FogEnd < 50
wait(10)
repeat
l.FogEnd = l.FogEnd + 5
wait()
until l.FogEnd > 5000
l.FogEnd = 10000
skygo = true
end))
elseif string.find(msg, "lok vah koor") and skygo == false and go == true then
skygo = true
--Not changing go because this is an instantaneous reaction.
coroutine.resume(coroutine.create(function()
local b = Instance.new("Part")
b.Shape = "Ball"
b.formFactor = "Symmetric"
b.Size = Vector3.new(1, 1, 1)
b.CFrame = p.Character.Torso.CFrame
b.TopSurface = "Smooth"
b.BottomSurface = "Smooth"
b.Anchored = true
b.CanCollide = false
b.Name = "LokBall"
b.BrickColor = BrickColor.new("White")
b.Parent = p.Character
game:GetService("Debris"):AddItem(b, 20)
repeat
b.Size = b.Size + Vector3.new(1, 1, 1)
b.CFrame = p.Character.Torso.CFrame
b.Transparency = b.Transparency + 1/29
wait()
until b.Size.x == 30
b:remove()
end))
local l = game.Lighting
coroutine.resume(coroutine.create(function()
repeat
l.FogEnd = l.FogEnd + 5
wait()
until l.FogEnd > 5000
l.FogEnd = 10000
end))
elseif string.find(msg, "nahl daal vus") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(2, 2, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright green")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) nahled(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "bex") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) bexed(part) end)
coroutine.resume(coroutine.create(function() 
wait(1)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
end
end)
function bexed(part)
if part.Parent then
if part.Name == "Door" then
local d = part:clone()
coroutine.resume(coroutine.create(function()
repeat
part.Transparency = part.Transparency + 0.05
wait()
until part.Transparency >= 1
part.Anchored = true
part.CanCollide = false
wait(3)
repeat
part.Transparency = part.Transparency - 0.05
wait()
until part.Transparency <= d.Transparency
part.Transparency = d.Transparency
if d.CanCollide == true then
part.CanCollide = true
end
if d.Anchored == true then
part.Anchored = d.Anchored
end
end))
end
end
end
function nahled(part)
if workspace:findFirstChild("Base") ~= nil then
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= p.Character then
part.Parent.Torso.CFrame = workspace.Base.CFrame * CFrame.new(0, 5, 0)
end
end
end
end
function kaaned(part)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= p.Character then
if part.Parent:findFirstChild("Kaaned") == nil then
local k = Instance.new("IntValue", part.Parent)
k.Name = "Kaaned"
game:GetService("Debris"):AddItem(k, 2)
local hum = part.Parent.Humanoid
local speed = hum.WalkSpeed
coroutine.resume(coroutine.create(function()
hum.WalkSpeed = 0
wait(10)
hum.WalkSpeed = speed
end))
end
end
end
end
function joored(part, shout)
shout.Anchored = false
shout.CanCollide = false
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= p.Character then
if part.Parent:findFirstChild("Joored") == nil then
local j = Instance.new("IntValue", part.Parent)
j.Name = "Joored"
game:GetService("Debris"):AddItem(j, 2)
local hum = part.Parent.Humanoid
tag(hum)
hum.Parent:BreakJoints()
for a, b in pairs(hum.Parent:children()) do
if b.className == "Part" then
b.Velocity = (p.Character.Torso.Position - b.Position).unit * -50
local f = Instance.new("Fire", b)
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Heat = 0
f.Size = ":GetMass()"
local bf = Instance.new("BodyVelocity")
bf.Parent = b
bf.P = 196*b:GetMass()
bf.maxForce = Vector3.new(0, 196*b:GetMass(), 0)
bf.velocity = Vector3.new(0, 196*b:GetMass(), 0)
elseif b.className == "Hat" then
local b = b.Handle
b.Velocity = (p.Character.Torso.Position - b.Position).unit * -50
local f = Instance.new("Fire", b)
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Heat = 0
f.Size = 3
local bf = Instance.new("BodyVelocity")
bf.Parent = b
bf.P = 196*b:GetMass()
bf.maxForce = Vector3.new(0, 196*b:GetMass(), 0)
bf.velocity = Vector3.new(0, 196*b:GetMass(), 0)
elseif b.className == "ForceField" then
b:remove()
local e = Instance.new("Explosion", hum.Parent.Torso)
e.BlastRadius = 1
e.BlastPressure = 1
e.position = hum.Parent.Torso.Position
end
end
end
end
end
end
function toored(part, m)
if part.Name ~= "FusRock" and part.Name ~= "ToorCloud" and part.CanCollide == true then
m.Anchored = true
m.CanCollide = true
if m:findFirstChild("Touched") == nil then
Instance.new("IntValue", m).Name = "Touched"
m.CFrame = CFrame.new(m.Position.x, part.Position.y, m.Position.z)
end
local e = Instance.new("Explosion")
e.BlastPressure = 50000
e.BlastRadius = 15
e.Position = m.Position
e.Parent = m
e.Hit:connect(function(hit)
if hit.Parent then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
tag(hit.Parent.Humanoid)
end
end
end)
end
end
function faased(part)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil then
if part.Parent:findFirstChild("Faased") == nil then
local f = Instance.new("IntValue", part.Parent)
f.Name = "Faased"
game:GetService("Debris"):AddItem(f, 2)
local hum = part.Parent.Humanoid
local speed = hum.WalkSpeed --Speed prior to fleeing
hum.WalkSpeed = speed * -1
game:GetService("Chat"):Chat(hum.Parent.Head, "Ahh!!!", "Red")
for i = 1, 10 do
hum:MoveTo(hum.Parent.Torso.Position + Vector3.new(math.random(-30, 30), 0, math.random(-30, 20)), hum.Parent.Torso)
wait(math.random(1, 2))
end
hum.WalkSpeed = speed
hum:MoveTo(hum.Parent.Torso.Position, hum.Parent.Torso)
end
end
end
end
function struned(part, lightning)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil then
local hum = part.Parent.Humanoid
tag(part.Parent.Humanoid)
local e = Instance.new("Explosion")
e.position = part.Position
e.BlastPressure = 35000
e.BlastRadius = 2
e.Parent = part
hum:TakeDamage(math.huge)
for a, b in pairs(hum.Parent:children()) do
if b.className == "Part" then
Instance.new("Fire", part).Size = part:GetMass()
end
end
end
end
end
function kriied(part, shout)
if part.Parent then
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild(p.Name.. "Kriied") == nil then
Instance.new("IntValue", part.Parent).Name = p.Name.. "Kriied"
local hum = part.Parent.Humanoid
hum.MaxHealth = hum.MaxHealth - 75
hum.Health = hum.MaxHealth
for i = 1, 60 do
tag(part.Parent.Humanoid)
hum:TakeDamage(1.5)
wait(1)
end
hum.MaxHealth = hum.MaxHealth + 75
end
end
end
function zuned(part, shout)
if part.Parent == p.Character then return end
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil then
for a, b in pairs(part.Parent:children()) do
if b.className == "Tool" then
if b:findFirstChild("Handle") ~= nil then
b.Parent = workspace
wait()
b.Handle.Velocity = (b.Handle.Position - p.Character.Torso.Position).unit * -100
repeat
shout.Size = shout.Size - Vector3.new(1, 1, 1)
wait(0.1)
until shout.Shout.Size == Vector3.new(1, 1, 1)
shout:remove()
end
end
end
end
end
end
function foed(part, shout)
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
local hum = part.Parent.Humanoid
hum.Sit = true
hum:TakeDamage(7.5)
if hum.Parent:findFirstChild(p.Name.. "Foed") == nil then
hum.WalkSpeed = 8
local foer = Instance.new("IntValue", workspace)
foer.Name = p.Name.. "Foed"
game:GetService("Debris"):AddItem(foer, 2)
wait(5)
hum.WalkSpeed = 16
hum.Sit = false
end
shout:remove()
end
end
function yoled(part)
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
local f = Instance.new("Fire", part)
f.Size = part:GetMass()
f.Heat = 100
game:GetService("Debris"):AddItem(f, 10)
if part:findFirstChild(p.Name.. "Yoled") == nil then
local tag = Instance.new("IntValue")
tag.Name = p.Name.. "Yoled"
tag.Parent = part
game:GetService("Debris"):AddItem(tag, 2)
end
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(7.5)
end
end
function lized(part)
if part.Parent then
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
if part.Parent:findFirstChild("Lized") ~= nil then return end
local Lizvictim = Instance.new("IntValue")
Lizvictim.Name = "Lized"
Lizvictim.Parent = part.Parent
game:GetService("Debris"):AddItem(Lizvictim, 10)
part.Parent.Animate.Disabled = true
part.Parent.Humanoid.PlatformStand = true
local speed = part.Parent.Humanoid.WalkSpeed
part.Parent.Humanoid.WalkSpeed = 0
wait(0.01)
part.Parent.Torso.Velocity = (fus.Position - part.Parent.Torso.Position).unt * -50
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(part.Parent.Humanoid.MaxHealth/2)
for a, b in pairs(part.Parent:children()) do
if b:findFirstChild("Fire") ~= nil then
b.Fire:remove()
end
local frost = Instance.new("Part")
frost.Name = "Frost"
frost.formFactor = "Custom"
frost.BrickColor = BrickColor.new("Pastel blue-green")
frost.Reflectance = 0.5
frost.Transparency = 0.6
frost.Anchored = false
frost.CanCollide = true
if b.className == "Part" then
frost.Size = b.Size + Vector3.new(0.5, 0.5, 0.5)
local w = Instance.new("Weld")
w.Part0 = b
w.Part1 = frost
w.Parent = frost
frost.Parent = part.Parent
game:GetService("Debris"):AddItem(frost, 10)
end
end
wait(10)
part.Parent.Humanoid.PlatformStand = false
part.Parent.Animate.Disabled = false
part.Parent.Humanoid.WalkSpeed = speed
end
end
end
function fused(part)
if part.Parent then
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
if part.Parent:findFirstChild(p.Name.. "Fused") ~= nil then return end
local fusvictim = Instance.new("IntValue")
fusvictim.Name = p.Name.. "Fused"
fusvictim.Parent = part.Parent
game:GetService("Debris"):AddItem(fusvictim, 2)
part.Parent.Humanoid.Sit = true
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(part.Parent.Humanoid.MaxHealth/4)
for a, b in pairs(part.Parent:children()) do
if b.className == "Part" then
b.Velocity = fus.Velocity
elseif b.className == "Hat" then
b.Handle.Velocity = fus.Velocity
end
end
wait(2)
part.Parent.Humanoid.Sit = false
elseif part.Anchored == false and part.Parent:findFirstChild("Humanoid") == nil then
part.Velocity = fus.Velocity
end
end
end
function tag(victim)
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = p
creator_tag.Name = "creator"
creator_tag.Parent = victim
game:GetService("Debris"):AddItem(creator_tag, 1)
end
--[mediafire gtfo password]]--
