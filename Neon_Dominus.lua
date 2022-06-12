local p = game.Players.LocalPlayer
local m = p.Character
local mouse = p:GetMouse()
local q = Instance.new("BoolValue")
q.Value = true
q.Name = "q"
local e = Instance.new("BoolValue")
e.Value = true
e.Name = "e"
local t = Instance.new("BoolValue")
t.Value = true
t.Name = "t"
--------------------------------------------
local part = Instance.new("Part")
part.Size = Vector3.new(5,1,5)
part.Parent = m
part.CFrame = CFrame.new(math.random(99999,999999),math.random(99999,999999),math.random(99999,999999))
part.Anchored = true
part.CanCollide = true
part.Material = "Neon"
part.BrickColor = BrickColor.new("Electric blue")
--------------------------------------------
for i,hats in pairs(m:GetChildren()) do
if hats.ClassName == "Hat" then
hats:Destroy()
end
end
for i,clothes in pairs(m:GetChildren()) do
if clothes.ClassName == "Shirt" or clothes.ClassName == "Pants" then
clothes:Destroy()
end
end
local s = Instance.new("SpecialMesh",m:WaitForChild'Head')
s.MeshId = "http://www.roblox.com/asset/?id=21057410"
s.TextureId = "http://www.roblox.com/asset/?id=48544900"
s.Scale = Vector3.new(1.05, 1.05, 1.05)
m:WaitForChild'Head':WaitForChild'face':Destroy''
local l = Instance.new("PointLight",m:WaitForChild'Head')
l.Shadows = true
l.Color = Color3.new(0,255,255)
for i,limbs in pairs(m:GetChildren()) do
if limbs.ClassName == "Part" then
limbs.Material = "Neon"
limbs.BrickColor = BrickColor.new("Electric blue")
end
end

mouse.KeyDown:connect(function(Key)
local key = Key:lower()
if key == "q" and q.Value then
q.Value = false
local Run = game:GetService("RunService")
local LeftShoulder = m:findFirstChild'Torso':findFirstChild'Left Shoulder'
local RightShoulder = m:findFirstChild'Torso':findFirstChild'Right Shoulder'
local p1 = Instance.new("Part",m)
local raise = coroutine.wrap(function()
for i = 1, 10 do
LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0, -.15)
game:service'RunService'.RenderStepped:wait(.005)
end
end)
raise()
p1.Size = Vector3.new(2,2,2)
p1.CanCollide = false
p1.Material = "Neon"
p1.BrickColor = BrickColor.new("Electric blue")
p1.Shape = 0
local y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.velocity = (mouse.Hit.p - m.HumanoidRootPart.CFrame.p).unit * 200
y.Parent = p1
p1.CFrame = m.Torso.CFrame*CFrame.new(math.random(-3,3),math.random(-1,2.5),-6)
p1.Touched:connect(function(hit)
local hum = hit.Parent:findFirstChild'Humanoid'
if hum ~= nil and hit.Parent.Name ~= p.Name then
local damage = coroutine.wrap(function()
local cf = p1.CFrame
game.Debris:AddItem(bv,0)
hum.WalkSpeed = 0
hit.Parent.Torso.Anchored = true
hit.Parent.Head.Anchored = true
p1.Anchored = true
game.Debris:AddItem(p1,2)
for i = 0,20 do
if p1 ~= nil then
game:service'RunService'.RenderStepped:wait(.03)
hum.Health = hum.Health - math.random(1,2)
local p1s = p1.Size
p1.Size = p1s:lerp(Vector3.new(30,30,30),0.2)
p1.CFrame = cf
hit.Parent.Torso.Anchored = false
hit.Parent.Head.Anchored = false
end
end
end)
damage()
elseif hum == nil then
game.Debris:AddItem(p1,0)
end
end)
game:service'RunService'.RenderStepped:wait(.05)
game.Debris:AddItem(p1, 5)
local lower = coroutine.wrap(function()
for i = 1, 10 do
LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0, .15)
game:service'RunService'.RenderStepped:wait(.005)
end
end)
lower()
q.Value = true
end
if key == "e" and e.Value then
e.Value = false
local Run = game:GetService("RunService")
local LeftShoulder = m:findFirstChild'Torso':findFirstChild'Left Shoulder'
local RightShoulder = m:findFirstChild'Torso':findFirstChild'Right Shoulder'
local p1 = Instance.new("Part",m)
local raise = coroutine.wrap(function()
for i = 1, 10 do
RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, 0, .15)
game:service'RunService'.RenderStepped:wait(.005)
end
end)
raise()
p1.Size = Vector3.new(2,2,2)
p1.CanCollide = false
p1.Material = "Neon"
p1.BrickColor = BrickColor.new("Electric blue")
p1.Shape = 0
local y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.velocity = (mouse.Hit.p - m.HumanoidRootPart.CFrame.p).unit * 200
y.Parent = p1
p1.CFrame = m.Torso.CFrame*CFrame.new(math.random(-3,3),math.random(-1,2.5),-6)
p1.Touched:connect(function(hit)
local hum = hit.Parent:findFirstChild'Humanoid'
if hum ~= nil and hit.Parent.Name ~= p.Name then
local damage = coroutine.wrap(function()
local cf = p1.CFrame
game.Debris:AddItem(bv,0)
hum.WalkSpeed = 0
hit.Parent.Torso.Anchored = true
hit.Parent.Head.Anchored = true
p1.Anchored = true
game.Debris:AddItem(p1,2)
for i = 0,20 do
if p1 ~= nil then
game:service'RunService'.RenderStepped:wait(.03)
hum.Health = hum.Health - math.random(1,2)
local p1s = p1.Size
p1.Size = p1s:lerp(Vector3.new(30,30,30),0.2)
p1.CFrame = cf
hit.Parent.Torso.Anchored = false
hit.Parent.Head.Anchored = false
end
end
end)
damage()
elseif hum == nil then
game.Debris:AddItem(p1,0)
end
end)
game:service'RunService'.RenderStepped:wait(.05)
game.Debris:AddItem(p1, 5)
local lower = coroutine.wrap(function()
for i = 1, 10 do
RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, 0, -.15)
game:service'RunService'.RenderStepped:wait(.005)
end
end)
lower()
e.Value = true
end
if key == "f" then
local dash = coroutine.wrap(function()
local part = Instance.new("Part")
part.Size = Vector3.new(4,4,4)
part.Parent =m
part.CFrame = m.Torso.CFrame
part.Anchored = false
part.CanCollide = false
part.Material = "Neon"
part.BrickColor = BrickColor.new("Electric blue")
local t = part:Clone()
local s = Instance.new("Part")
t.Parent = m
local y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.velocity = m.Torso.CFrame.lookVector*200
y.Parent = m.Torso
game.Debris:AddItem(y,0.5)
repeat
game:service'RunService'.RenderStepped:wait()
t.CFrame = m.Torso.CFrame
t.Transparency = t.Transparency + 0.08
until t.Transparency > 1
game:service'RunService'.RenderStepped:wait()
t:remove()
wait(0.5)
end)
dash()
end
if key == "t" and t.Value then
t.Value = false
elseif key == "t" and not t.Value then
t.Value = true
end

while not t.Value do
game:service'RunService'.RenderStepped:wait()
local pad = coroutine.wrap(function()
part.CFrame = m.Torso.CFrame*CFrame.new(0,-3.485,0)
end)
pad()
end
while t.Value do
game:service'RunService'.RenderStepped:wait()
local repad = coroutine.wrap(function()
part.CFrame = CFrame.new(math.random(99999,999999),math.random(99999,999999),math.random(99999,999999))
end)
repad()
end

while game:service'RunService'.RenderStepped:wait() do
local detect = coroutine.wrap(function()
for i,players in pairs(game:service'Players':GetChildren()) do
if players.Character:findFirstChild'Torso'.Transparency > 0 then
local mark = Instance.new("Part",game.Workspace.Camera)
mark.Size = Vector3.new(1,1,1)
mark.Name = players.Character.Name
mark.BrickColor = BrickColor.new("Electric blue")
mark.Material = "Neon"
local w = Instance.new("Weld",mark)
w.Part0 = mark
w.Part1 = players.Character.Torso
game.Debris:AddItem(mark,1)
end
end
end) 
detect()
end

end)