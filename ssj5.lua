jun = script.Parent.Parent
Stuff = false
--password
function ssj()
if Stuff == false then
Stuff = true
for u, c in pairs (jun.Character:GetChildren()) do
if c.className == "Hat" and c.Name ~= "Swordpack" and c.Name ~= "GlassesBlackFrame" then
c.Handle.Transparency = 1
end
end
Hair22 = Instance.new("Part")
Hair22.Parent = jun.Character
Hair22.Name = "Hair"
Hair22.formFactor = "Symmetric"
Hair22.Size = Vector3.new(1, 1, 1)
Hair22.CFrame = jun.Character.Head.CFrame
Hair22:BreakJoints()
Hair22.CanCollide = false
Hair22.TopSurface = "Smooth"
Hair22.BottomSurface = "Smooth"
Hair22.BrickColor = BrickColor.new("White")
Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Head 
Weld.Part1 = Hair22
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(-0.12, 0, 0.11)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair22
Mesh.MeshType = "FileMesh"
Mesh.Scale = Vector3.new(1, 1, 1)
Mesh.MeshId = "http://www.roblox.com/asset/?id=76056263"
Hair4 = Instance.new("Part")
Hair4.Parent = jun.Character
Hair4.Name = "Hair"
Hair4.CanCollide = false
Hair4.Locked = true
Hair4.TopSurface = "Smooth"
Hair4.BottomSurface = "Smooth"
Hair4.formFactor = "Symmetric"
Hair4.BrickColor = BrickColor.new("White")
Hair4.CFrame = jun.Character.Torso.CFrame
Hair4.Size = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = jun.Character.Head
Weld.Part0 = jun.Character.Head
Weld.Part1 = Hair4
Weld.C0 = CFrame.new(0, 1, 0)
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair4
Mesh.Scale = Vector3.new(1.15, 1.9, 1.26)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
Mesh.TextureId = "http://www.roblox.com/ssj5-item?id=83464737"
Hair45 = Instance.new("Part")
Hair45.Parent = jun.Character
Hair45.Name = "Hair"
Hair45.CanCollide = false
Hair45.Locked = true
Hair45.TopSurface = "Smooth"
Hair45.BottomSurface = "Smooth"
Hair45.formFactor = "Symmetric"
Hair45.BrickColor = BrickColor.new("White")
Hair45.CFrame = jun.Character.Torso.CFrame
Hair45.Size = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = jun.Character.Head
Weld.Part0 = jun.Character.Head
Weld.Part1 = Hair45
Weld.C0 = CFrame.new(0, -1.35, 0.35)*CFrame.fromEulerAnglesXYZ(3, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair45
Mesh.Scale = Vector3.new(1.15, 5, 1.26)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
Mesh.TextureId = "http://www.roblox.com/ssj5-item?id=83464737"
Hair232 = Instance.new("Part")
Hair232.Parent = jun.Character
Hair232.Name = "Hair"
Hair232.formFactor = "Symmetric"
Hair232.Size = Vector3.new(1, 1, 1)
Hair232.CFrame = jun.Character.Head.CFrame
Hair232:BreakJoints()
Hair232.CanCollide = false
Hair232.TopSurface = "Smooth"
Hair232.BottomSurface = "Smooth"
Hair232.BrickColor = BrickColor.new("White")
Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Head 
Weld.Part1 = Hair232
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(0, 0.26, 0.06)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair232
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(1.3, 1.3, 1.3)
     Effect = Instance.new("Part")
     Effect.Parent = jun.Character
     Effect.Anchored = true
     Effect.CanCollide = false
     Effect.Size = Vector3.new(1, 1, 1)
     Effect.formFactor = "Symmetric"
     Effect.Transparency = 0.5
     Effect.BrickColor = BrickColor.new("White")
     Effect.TopSurface = "Smooth"
     Effect.BottomSurface = "Smooth"
     EffectMesh = Instance.new("SpecialMesh")
     EffectMesh.Parent = Effect
     EffectMesh.MeshType = "Sphere"
     EffectMesh.Scale = Vector3.new(10, 1500, 10)
ex2 = Instance.new("Explosion")
ex2.Position = jun.Character.Torso.Position
ex2.BlastPressure = 0
ex2.Parent = workspace
     jun.Character.Torso.CFrame = jun.Character.Torso.CFrame * CFrame.new(0, 0.1, 0)
     for i = 1 , 20 do
      Effect.CFrame = CFrame.new(jun.Character.Torso.Position)
      EffectMesh.Scale = EffectMesh.Scale + Vector3.new(5, 0, 5)
      Effect.Transparency = Effect.Transparency + 0.025
      wait(0.06)
     end
Effect:Remove()
if jun.Character.Torso:findFirstChild("PwnFire") == nil then
pie = Instance.new("Fire")
pie.Name = "PwnFire"
pie.Parent = jun.Character.Torso
pie.Size = 9
pie.Color = BrickColor.new("White")
end
if jun.Character.Torso:findFirstChild("PwnSparkles") == nil then
pie = Instance.new("Sparkles")
pie.Name = "PwnSparkles"
pie.Parent = jun.Character.Torso
end
jun.Character.Humanoid.MaxHealth = jun.Character.Humanoid.MaxHealth*2
wait(0.3)
jun.Character.Humanoid.Health = jun.Character.Humanoid.Health*2
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
     p.Transparency = 0.1
     p.formFactor = "Symmetric"
     p.Size = Vector3.new(22, 22, 22)
     p.TopSurface = "Smooth"
     p.BottomSurface = "Smooth"
     p.Name = "Sharingan"
     p.Shape = "Ball"
     p.CFrame = jun.Character.Torso.CFrame
     p.BrickColor = BrickColor.new("White")
     for i = 1 , 10 do
      wait(0.05)
      p.Size = p.Size + Vector3.new(-4, -4, -4)
      p.Transparency = p.Transparency + 0.1
      p.CFrame = jun.Character.Torso.CFrame
     end
p:Remove()
for u, c in pairs (jun.Character:GetChildren()) do
if c.className == "Hat" and c.Name ~= "Swordpack" and c.Name ~= "GlassesBlackFrame" then
c.Handle.Transparency = 0
end
if c.Name == "Hair" then
c:Remove()
end
end
jun.Character.Humanoid.Health = jun.Character.Humanoid.Health/2
wait(0.3)
jun.Character.Humanoid.MaxHealth = jun.Character.Humanoid.MaxHealth/2
end
end
jun.Chatted:connect(function(Msg)
 msg = Msg:lower()
 if string.sub(msg, 1, 7) == "super saiyan 5" then
 wait(0.1)
  ssj()
 end
 if string.sub(msg, 1, 13) == "ssj5" then
 wait(0.1)
  ssj()
 end
 if string.sub(msg, 1, 10) == "calm5" then
 wait(0.1)
  nossj()
 end
 if string.sub(msg, 1, 3) == "calm5" then
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
if script.Parent.Parent.Name == "" or "" then
wait(1)
ssj()
end
Stuff = false
--mediafire---