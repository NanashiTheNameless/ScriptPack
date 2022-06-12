script.Parent=game.Players.LocalPlayer.Backpack
jun = script.Parent.Parent
Stuff = false
function ssj()
if Stuff == false then
Stuff = true
function part(size1, size2, size3, pos1, pos2, pos3, color, angle, angle2, angle3, meshi, mesho, trans)
Hair222 = Instance.new("Part")
Hair222.Parent = jun.Character
Hair222.Name = "Hair"
Hair222.formFactor = "Symmetric"
Hair222.Size = Vector3.new(1, 1, 1)
Hair222.CFrame = jun.Character.Head.CFrame
Hair222:BreakJoints()
Hair222.CanCollide = false
Hair222.Reflectance = 0
Hair222.Transparency = trans
Hair222.TopSurface = "Smooth"
Hair222.BottomSurface = "Smooth"
Hair222.BrickColor = BrickColor.new(color)
Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Head 
Weld.Part1 = Hair222
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(pos1, pos2, pos3)*CFrame.Angles(angle, angle2, angle3) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair222
Mesh.MeshType = meshi
Mesh.MeshId = mesho
Mesh.Scale = Vector3.new(size1, size2, size3)
end
part(10, 10, 10, 0, 10, 0, "Bright red", 0, 0, 0, "FileMesh", "http://www.roblox.com/asset/?id=36780113", 0.3)
part(7, 9, 7, 0, 2, 0, "Bright red", 0, 0, 0, "FileMesh", "http://www.roblox.com/asset/?id=25212400", 0.3)
part(10, 10, 10, -12.5, 10, 0, "Bright red", 0, 0, 0, "FileMesh", "http://www.roblox.com/asset/?id=36780032", 0.3)
part(10, 10, 10, 12.5, 10, 0, "Bright red", 0, 0, 0, "FileMesh", "http://www.roblox.com/asset/?id=36780156", 0.3)
part(25, 25, 25, 0, 25.5, 0, "Bright red", 0, 0, 0, "FileMesh", "http://www.roblox.com/asset/?id=4770583", 0.3)
part(7, 7, 7, 0, 28.5, 0, "Bright red", 0, 0, 0, "FileMesh", "http://www.roblox.com/asset/?id=102727254 ", 0.3)
ex = Instance.new("Explosion")
ex.Position = jun.Character.Torso.Position
ex.BlastPressure = 0
ex.Parent = workspace
pie=Instance.new("Part", jun.Character)
pie.Anchored = true
pie.CanCollide = false
pie.BrickColor = BrickColor.Black()
pie.Shape = "Ball"
pie.Size = Vector3.new(100,100,100)
pie.Position = jun.Character.Torso.Position
pie.CFrame = jun.Character.Torso.CFrame
pie.TopSurface = "Smooth"
pie.BottomSurface = "Smooth"
Instance.new("Model", jun.Character)
for i = 1 , 15 do
wait(0.005)
Effect = Instance.new("Part")
Effect.Parent = jun.Character.Model
Effect.Anchored = false
Effect.CanCollide = false
Effect.formFactor = "Symmetric"
Effect.Transparency = 0
Effect.BrickColor = BrickColor.Black()
Effect.TopSurface = "Smooth"
Effect.Reflectance = 0
Effect.BottomSurface = "Smooth"
Effect.Size = Effect.Size + Vector3.new(math.random(1,30),math.random(1,20),math.random(1,30))
Effect.Position = jun.Character.Torso.Position + Vector3.new(math.random(1,2),math.random(20,24),math.random(1,2))
end
jun.Character.Torso.CFrame = jun.Character.Torso.CFrame * CFrame.new(0, 15, 0)
jun.Character.Humanoid.MaxHealth = jun.Character.Humanoid.MaxHealth*1.7
wait(0.3)
jun.Character.Humanoid.Health = jun.Character.Humanoid.Health*1.7
wait(2)
jun.Character.Model:remove()
pie:remove()
end
end
function nossj()
if Stuff == true then
Stuff = false
if jun.Character.Torso:findFirstChild("PwnFire") ~= nil then
jun.Character.Torso:findFirstChild("PwnFire"):Remove()
end
if jun.Character.Torso:findFirstChild("PwnSparkles") ~= nil then
jun.Character.Torso:findFirstChild("PwnSparkles"):Remove()
end
p = Instance.new("Part")
p.Parent = jun.Character
p.Anchored = true
p.CanCollide = false
p.Transparency = 0
p.formFactor = "Symmetric"
p.Size = Vector3.new(50,7,50)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Name = "Sharingan"
p.Reflectance = 0
p.CFrame = jun.Character.Torso.CFrame
p.BrickColor = BrickColor.Black()
p2 = Instance.new("Part")
p2.Parent = jun.Character
p2.Anchored = true
p2.CanCollide = false
p2.Transparency = 0
p2.formFactor = "Symmetric"
p2.Size = Vector3.new(50,7,50)
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
p2.Name = "Robotmega"
p2.Reflectance = 0
p2.CFrame = jun.Character.Torso.CFrame
p2.BrickColor = BrickColor.Black()
for i = 1 , 10 do
wait(0.1)
p.Size = p.Size + Vector3.new(-5, -0, -5)
p.CFrame = jun.Character.Torso.CFrame * CFrame.Angles(math.random(0,1),math.random(0,1),math.random(0,1))
p2.Size = p2.Size + Vector3.new(-5, -0, -5)
p2.CFrame = jun.Character.Torso.CFrame * CFrame.Angles(math.random(0,1),math.random(0,1),math.random(0,1))
end
p:remove()
p2:remove()
for u, c in pairs (jun.Character:GetChildren()) do
if c.className == "Hat" and c.Name ~= "Swordpack" and c.Name ~= "GlassesBlackFrame" then
c.Handle.Transparency = 0
end
if c.Name == "Hair" then
c:Remove()
end
end
for u, c in pairs (jun.Character:GetChildren()) do
if c.className == "Part" then
c.Reflectance = 0
end
end
jun.Character.Humanoid.Health = jun.Character.Humanoid.Health/1.7
wait(0.3)
jun.Character.Humanoid.MaxHealth = jun.Character.Humanoid.MaxHealth/1.7
end
end
jun.Chatted:connect(function(Msg)
msg = Msg:lower()
if string.sub(msg, 1, 7) == "susanoo" then
wait(0.1)
ssj()
end
if string.sub(msg, 1, 3) == "out" then
wait(0.1)
nossj()
end
end)
function OnDeath()
wait()
nossj()
end
jun.Character.Humanoid.Died:connect(OnDeath)
jun = script.Parent.Parent
Stuff = false
