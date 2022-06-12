:ls --VOID RING BY ETHANCOMPUTERMAD, My first attempt at a tool
lp = game.Players.LocalPlayer
script.Name = "VoidRing"
repeat wait() until lp
c = lp.StarterGear:GetChildren()
hr = false
for i= 1, #c do
if c[i].Name == "VoidRing" then hr = true end end
if hr == false then s = script:Clone() s.Parent = lp.StarterGear end
mouse = lp:GetMouse()
cam = game.Workspace.CurrentCamera
repeat wait() until cam
function loadring(name)
-- 2 - VoidRing
obj2 = Instance.new("Part")
obj2.Anchored = true
obj2.CanCollide = false
obj2.CFrame = CFrame.new(Vector3.new(-62.5, 4.5, -42.5)) * CFrame.Angles(1.5707963705063, -0, -3.1415927410126)
obj2.FormFactor = Enum.FormFactor.Plate
obj2.Size = Vector3.new(1, 0.400000006, 1)
obj2.BrickColor = BrickColor.new("Really black")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.Name = name .. "VoidRing"
obj2.Parent = game.Workspace
-- 3 - Mesh
obj3 = Instance.new("SpecialMesh")
obj3.MeshType = Enum.MeshType.FileMesh
obj3.Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005)
obj3.MeshId = "http://www.roblox.com/asset/?id=3270017"
obj3.Parent = obj2
-- 4 - Fire
obj4 = Instance.new("Fire", obj2)
obj4.Color = Color3.new(0, 0, 0)
obj4.SecondaryColor = Color3.new(0, 0, 0)
obj4.Size = 4
obj4.Heat = 3
obj2:MakeJoints()
return obj2
end
function loadshield(name)
-- 2 - BlackHole
obj2 = Instance.new("Part")
obj2.Anchored = true
obj2.CFrame = CFrame.new(Vector3.new(-61, 1000, -32.5)) * CFrame.Angles(3.1415927410126, -0, -3.1415927410126)
obj2.Transparency = 0.20000000298023
obj2.TopSurface = Enum.SurfaceType.Smooth
obj2.BottomSurface = Enum.SurfaceType.Smooth
obj2.Size = Vector3.new(42, 26.4000015, 4)
obj2.BrickColor = BrickColor.new("Really black")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.Name = name .. "Shield"
obj2.Parent = game.Workspace
-- 3 - Mesh
obj3 = Instance.new("SpecialMesh")
obj3.MeshType = Enum.MeshType.Sphere
obj3.Parent = obj2
obj3.Scale = Vector3.new(1, 1, 0.25)
end
function tphole(pos, time, isplayer, deadly)
obj2 = Instance.new("Part")
if isplayer == true then
obj2.CFrame = CFrame.new(0, 0, 0)
obj2.Position = pos
obj2.CFrame = obj2.CFrame * CFrame.Angles(math.pi / 2, 0, 0) + Vector3.new(0, -2.6, 0)
else
obj2.CFrame = CFrame.new(0, 0, 0)
obj2.Position = pos
obj2.CFrame = obj2.CFrame * CFrame.Angles(math.pi / 2, 0, 0)
end
obj2.TopSurface = Enum.SurfaceType.Smooth
obj2.BottomSurface = Enum.SurfaceType.Smooth
obj2.Size = Vector3.new(8, 8, 1)
obj2.Anchored = true
if deadly == true then
obj2.BrickColor = BrickColor.new("Really red")
else
obj2.BrickColor = BrickColor.new("Really black")
end
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.Name = "BlackHole"
obj2.Parent = game.Workspace
-- 3 - Mesh
obj3 = Instance.new("SpecialMesh")
obj3.VertexColor = Vector3.new(0, 0, 0)
obj3.Scale = Vector3.new(1, 1, 1)
randc = math.random(1000000, 9999999)
randc = coroutine.create(function()
obj3.Scale = Vector3.new(0.1, 0.1, 0.1)
random = math.random(1000000, 9999999)
for random= 1, 10 do
obj3.Scale = Vector3.new(0.1 * random, 0.1 * random, 0.1 * random) wait() end end)
coroutine.resume(randc)
obj3.MeshType = Enum.MeshType.Sphere
obj3.Parent = obj2
game:GetService("Debris"):AddItem(obj2, time)
return obj2
end
loadring(lp.Name)
wait()
m = Instance.new("Message", cam)
m.Text = "Launched Void Ring by Ethancomputermad"
game:GetService("Debris"):AddItem(m, 5)
ring = game.Workspace[lp.Name .. "VoidRing"]
mover = true
mr = coroutine.create(function() while true do wait() pcall(function() if mover == true then
ring.CFrame = lp.Character["Right Arm"].CFrame * CFrame.Angles(math.pi / 2, 0, 0) * CFrame.new(0, 0, 0.9) end end) end end)
coroutine.resume(mr)
su = false
hsu = false
shield = nil
ms = coroutine.create(function() while true do wait() pcall(function()
shield.CFrame = lp.Character.Torso.CFrame * CFrame.new(0, 0, 0 - 10) end) end end)
coroutine.resume(ms)
shield = coroutine.create(function()
while true do wait() if su == true then
if hsu == false then hsu = true loadshield(lp.Name) wait() shield = game.Workspace[lp.Name .. "Shield"] shield.Mesh.Scale = Vector3.new(1, 1, 1)
pcall(function() for i= 1, 20 do wait() shield.Mesh.Scale = Vector3.new(0.05 * i, 0.05 * i, 0.05 * i) end end) shield.Mesh.Scale = Vector3.new(1, 1, 1) end end end end)
coroutine.resume(shield)
st = coroutine.create(function() shield.Touched:connect(function(c)
if c.Name == "Base" or c.Name:sub(1, #lp.Name) == lp.Name then else c:Destroy() end end) end)
coroutine.resume(st)
c = coroutine.create(function() while true do wait() w = game.Workspace:GetChildren() for i= 1, #w do
pcall(function()
if w[i].Name:sub(1, #lp.Name) == lp.Name then
if w[i].Name:sub(#lp.Name + 1, #lp.Name) == "VoidRing" and w[i] ~= ring then
w[i]:Destroy()
elseif w[i].Name:sub(#lp.Name + 1, #lp.Name) == "Shield" and w[i] ~= sheild then
w[i]:Destroy() end end end) end end end)
coroutine.resume(c)
shieldhotkey = 113
tphotkey = 116
killhotkey = 107
ss = false pcall(function()
if m.Text == "Launched Void Ring by Ethancomputermad" then else
m.Text = "Plagiarism detected."
game.Players.LocalPlayer.StarterGear.VoidRing:Destroy()
script.Disabled = true
end
end)
mouse.KeyDown:connect(function(k)
key = string.byte(k)
if key == shieldhotkey then
print(ss)
if ss == false then
ss = true
pcall(function() game.Workspace[lp.Name .. "Shield"]:Destroy() end)
shield = loadshield(lp.Name)
su = true
else
pcall(function() game.Workspace[lp.Name .. "Shield"]:Destroy() end)
su = false
hsu = false
ss = false
end
end
if key == tphotkey then
m = mouse
if m.Target == nil then return end
if m.Target.Parent:FindFirstChild("Humanoid") == nil then
rawtotp = m.Hit
totp = rawtotp.p
tphole(lp.Character.Torso.Position + Vector3.new(0, -2.6, 0), 0.7, false, false)
wait(0.3)
for i= 1, 10 do wait()
lp.Character.Torso.Anchored = true
lp.Character.Torso.CFrame = lp.Character.Torso.CFrame + Vector3.new(0, 0 - 0.6, 0)
end
lp.Character.Torso.CFrame = CFrame.new(rawtotp.X, rawtotp.Y, rawtotp.Z) + Vector3.new(0, -2, 0) 
tphole(totp, 0.7, false, false)
wait(0.3)
for i= 1, 20 do wait()
lp.Character.Torso.Anchored = true
lp.Character.Torso.CFrame = lp.Character.Torso.CFrame + Vector3.new(0, 0.3, 0)
end
lp.Character.Torso.Anchored = false
else
end
end
if key == killhotkey then
m = mouse
trgt = m.Target
if trgt == nil then return end
if trgt.Parent:FindFirstChild("Humanoid") == nil then return end
if trgt.Parent:IsA("Workspace") then return end
if game.Players:GetPlayerFromCharacter(trgt.Parent) == nil then else
if game.Players:GetPlayerFromCharacter(trgt.Parent).Name == lp.Name then return end end
if trgt.Parent:FindFirstChild("Torso") == nil then return end
tphole(trgt.Parent.Torso.Position + Vector3.new(0, -2.6, 0), 0.7, false, true)
wait(0.3)
for i= 1, 15 do wait()
trgt.Parent.Torso.Anchored = true
trgt.Parent.Torso.CFrame = trgt.Parent.Torso.CFrame + Vector3.new(0, 0 - 0.6, 0)
end
trgt.Parent:BreakJoints()
end
end)
