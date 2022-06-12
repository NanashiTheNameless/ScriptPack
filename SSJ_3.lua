jun = game.Players.yfc
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
Hair4.Size = Vector3.new(2, 2, 2)
Weld = Instance.new("Weld")
Weld.Parent = jun.Character.Head
Weld.Part0 = jun.Character.Head
Weld.Part1 = Hair4
Weld.C0 = CFrame.new(0, 0, 0)
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair4
Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=21057410"
Mesh.TextureId = ""
BlastRing = Instance.new("Part") 
BlastRing.Parent = game.Lighting 
BlastRing.Name = "Blast" 
BlastRing.formFactor = "Symmetric" 
BlastRing.Size = Vector3.new(1, 1, 1) 
BlastRing.CanCollide = false 
BlastRing.TopSurface = "Smooth" 
BlastRing.BottomSurface = "Smooth" 
BlastRing.BrickColor = BrickColor.new("Magenta") 
BlastRing.Reflectance = 0 
BlastRing.Anchored = true 
Mesh2 = Instance.new("SpecialMesh") 
Mesh2.Parent = BlastRing 
Mesh2.MeshType = "FileMesh" 
Mesh2.MeshId = "http://www.roblox.com/asset/?id=15392960" 
Mesh2.Scale = Vector3.new(1, 5.8, 1) 
blastring2 = BlastRing:clone() 
Effect = Instance.new("Part") 
Effect.Parent = jun.Character 
Effect.Anchored = true 
Effect.CanCollide = false 
Effect.Size = Vector3.new(1, 1, 1) 
Effect.formFactor = "Symmetric" 
Effect.Transparency = 0.5 
Effect.BrickColor = BrickColor.new("Really black") 
Effect.TopSurface = "Smooth" 
Effect.BottomSurface = "Smooth" 
EffectMesh = Instance.new("SpecialMesh") 
EffectMesh.Parent = Effect 
EffectMesh.MeshType = "Sphere" 
EffectMesh.Scale = Vector3.new(10, 1500, 10) 
Hair2 = Instance.new("Part")
Hair2.Parent = jun.Character
Hair2.Name = "Hair"
Hair2.formFactor = "Symmetric"
Hair2.Size = Vector3.new(0,10,0)
Hair2.CFrame = jun.Character.Head.CFrame
Hair2:BreakJoints()
Hair2.CanCollide = false
Hair2.TopSurface = "Smooth"
Hair2.BottomSurface = "Smooth"
Hair2.BrickColor = BrickColor.new("White")
Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Torso
Weld.Part1 = Hair2
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(0, .26, 1.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair2
Mesh.MeshId = "http://www.roblox.com/asset/?id=19367744"
Mesh.TextureId = "http://www.roblox.com/asset/?id=19367734"
Mesh.Scale = Vector3.new(1.5,1.5,1.5)
blastring2.Parent = jun.Character 
blastring2.Position = jun.Character.Torso.Position 
blastring2.BrickColor = BrickColor.new("Really black") 
blastring2.Transparency = 0.7 
blastring2.Reflectance = 0 
jun.Character.Torso.CFrame = jun.Character.Torso.CFrame * CFrame.new(0, -0.5, -1) 
for i = 1 , 20 do 
Effect.CFrame = CFrame.new(jun.Character.Torso.Position) 
blastring2.CFrame = CFrame.new(jun.Character.Torso.Position) * CFrame.new(0, 0.5, -0.8) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(0.7, 0, 0.7) 
wait(0.001) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(-0.7, 0, -0.7) 
wait(0.001) 
end 
blastring2.BrickColor = BrickColor.new("Really blue") 
Effect.BrickColor = BrickColor.new("Really black") 
for i = 1 , 20 do 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(0.7, 0, 0.7) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
wait(0.001) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(-0.7, 0, -0.7) 
wait(0.001) 
end 
Effect:remove() 
blastring2:remove() 
lol = Instance.new("Explosion") 
lol.Parent = game.Workspace 
lol.Position = jun.Character.Torso.Position 
lol.BlastRadius = 10 
lol.BlastPressure = 0 
--[[ex = Instance.new("Explosion") 
ex.Position = jun.Character.Torso.Position 
ex.BlastPressure = 0 
ex.Parent = workspace]] 
jun.Character.Torso.CFrame = jun.Character.Torso.CFrame * CFrame.new(0, 0.1, 0) 
for i = 1 , 20 do 
Effect.CFrame = CFrame.new(jun.Character.Torso.Position) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
Effect.Transparency = Effect.Transparency + 0.01 
wait(0.05) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
Effect.BrickColor = BrickColor.new("New Yeller") 
wait(0.05) 
end 
Effect:Remove() 
game.Lighting.TimeOfDay = 15 
game.Lighting.FogEnd = 10000 
if jun.Character.Torso:findFirstChild("PwnFire") == nil then 
local pie = Instance.new("Fire") 
pie.Name = "PwnFire" 
pie.Parent = jun.Character.Torso 
pie.Size = 13 
pie.Color = BrickColor.new("Really blue").Color 
pie.SecondaryColor = BrickColor.new("White").Color 
end 
jun.Character.Humanoid.MaxHealth = 350 
wait(0.3) 
jun.Character.Humanoid.Health = 300 
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
p.Size = Vector3.new(44, 44, 44) 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.Name = "Sharingan" 
p.Shape = "Ball" 
p.CFrame = jun.Character.Torso.CFrame 
p.BrickColor = BrickColor.new("Deep blue") 
for i = 1 , 10 do 
wait(0.05) 
p.Size = p.Size + Vector3.new(-3, -3, -3) 
p.Transparency = p.Transparency + 0.01 
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
for u, c in pairs (game.Lighting:GetChildren()) do 
if c.className == "Pants" then 
c.Parent = game.Workspace.yfc 
end 
end 
for u, c in pairs (game.Lighting:GetChildren()) do 
if c.className == "Shirt" then 
c.Parent = game.Workspace.yfc
end 
end 
jun.Character.Humanoid.Health = 80 
wait() 
jun.Character.Humanoid.MaxHealth = 100 
wait() 
jun.Character.Torso.fire1:remove() 
wait() 
jun.Character.Torso.fire2:remove() 
wait() 
jun.Character.Torso.fire3:remove() 
wait() 
jun.Character.Torso.fire4:remove() 
wait() 
jun.Character.Torso.fire5:remove() 
end 
end 
jun.Chatted:connect(function(Msg) 
msg = Msg:lower() 
if string.sub(msg, 1, 7) == "ssj10" then 
game.Lighting.FogColor = BrickColor.new("Really blue").Color 
wait() 
game.Lighting.TimeOfDay = 16 
wait(0.3) 
game.Lighting.TimeOfDay = 17 
wait(0.3) 
game.Lighting.TimeOfDay = 18 
wait(0.3) 
game.Lighting.TimeOfDay = 19 
wait(0.3) 
game.Lighting.FogEnd = 1000 
wait(0.1) 
game.Lighting.FogEnd = 800 
wait(0.1) 
game.Lighting.FogEnd = 600 
wait(0.1) 
game.Lighting.FogEnd = 500 
wait(0.1) 
game.Lighting.FogEnd = 400 
wait(0.1) 
game.Lighting.FogEnd = 300 
ssj() 
end 
if string.sub(msg, 1, 4) == "power" then 
game.Lighting.FogColor = BrickColor.new("Really black").Color 
wait() 
game.Lighting.TimeOfDay = 16 
wait(0.3) 
game.Lighting.TimeOfDay = 17 
wait(0.3) 
game.Lighting.TimeOfDay = 18 
wait(0.3) 
game.Lighting.TimeOfDay = 19 
wait(0.3) 
game.Lighting.FogEnd = 1000 
wait(0.1) 
game.Lighting.FogEnd = 800 
wait(0.1) 
game.Lighting.FogEnd = 600 
wait(0.1) 
game.Lighting.FogEnd = 500 
wait(0.1) 
game.Lighting.FogEnd = 400 
wait(0.1) 
game.Lighting.FogEnd = 300 
wait(0.1) 
ssj() 
end 
if string.sub(msg, 1, 6) == "!" then 
wait(0.1) 
ssj() 
end 
if string.sub(msg, 1, 10) == "off" then 
wait(0.1) 
nossj() 
end 
if string.sub(msg, 1, 3) == "stop" then 
wait(0.1) 
nossj() 
end 
end) 
function OnDeath() 
wait() 
nossj() 
end 
jun.Character.Humanoid.Died:connect(OnDeath) 
jun = game.Players.yfc
Stuff = false 
--password 
name = "yfc"
local run = false
function line(pos1, pos2)
local b = Instance.new("Part")
b.Parent = workspace[name]
b.Anchored = true
b.BrickColor = BrickColor.new("White")
b.CFrame = CFrame.new((pos1+pos2)/2,pos2)*CFrame.Angles(math.rad(90),0,0)
b.CanCollide = false
local y = Instance.new("BlockMesh")
y.Parent = b
y.Scale = Vector3.new(0.02,(pos2-pos1).magnitude,0.02)
game:GetService("Debris"):AddItem(b, 0.15)
end
 
function random()
return Vector3.new(math.random(-1,1), math.random(-1,1), math.random(-1,1))
end
 
game.Players[name].Chatted:connect(function(msg)
msg = msg:lower()
if string.sub(msg, 1, 3) == "off" then
run = false
if workspace:findFirstChild(name) then
end
elseif string.sub(msg,1, 7) == "rage" then
run = true
if workspace:findFirstChild(name) then
end
end
end)
 
while wait() do
if run then
p1 = game.workspace[name].Torso.Position + random()*2
p2 = p1 + random()
line(p1, p2)
p1 = p2
p2 = p1 + random()
line(p1, p2)
end
end

 
 
 
 
 
  




 
 
 
 
 
  

