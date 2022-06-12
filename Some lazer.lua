you = "rigletto" 
if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin") 
h.Parent = game.Players[you].Backpack 
script.Parent = h 
end 
User = Game.Players[you] 
LaserColor = Color3.new(1, 0, 0) 
ChargeColor = Color3.new(1, 0, 0) 
LaserThickness = 0.15 
LaserAnimRadius = 0.05 
LaserReflectance = 0.25 
ChargeDetail = 8 
ChargeThickness = 0.15 
ChargeRadius = 0.7 
Debris = Game:GetService("Debris") 
ClackSoundId1 = "http://www.roblox.com/asset/?id=17385513" 
ClackSoundId2 = "http://www.roblox.com/asset/?id=17385522" 
ClackSoundId3 = "http://www.roblox.com/asset/?id=17385529" 
ExplosionSoundId = "http://www.roblox.com/asset/?id=2248511" 
ChargeSoundId = "http://www.roblox.com/asset/?id=2101137" 
function Spread(t, x) 
if t:GetMass() < 5000 and not t:FindFirstChild("Fiah!") and x.Enabled and x.Parent and not (t.Anchored and not t.CanCollide and (t.Transparency == 1 or t.Color == ChargeColor)) then 
Fiah(t) 
end 
end 
function Fiah(s, InfiniteLife) 
if not s:FindFirstChild("ForceField") and s.Name ~= "Scenery" and s.className ~= "SpawnLocation" then 
if s.Parent then 
if s.Parent:FindFirstChild("Humanoid") then 
tagHumanoid(s.Parent.Humanoid, 7.2) 
end 
end 
local x = Instance.new("Fire") 
x.Name = "Fiah!" 
x.Size = x.Size * 2.5 
x.Heat = x.Heat * 2.5 
x.Parent = s 
local c = s.LocalSimulationTouched:connect(function(t) Spread(t, x) end) 
Spawn(function() 
while x.Parent do 
if x.Enabled then 
for Index, Player in pairs(Game:GetService("Players"):GetChildren()) do 
pcall(function() 
if (s.Position - Player.Character.Torso.Position).magnitude < 3 then 
for Index, Part in pairs(Player.Character:GetChildren()) do 
if Part:IsA("BasePart") then 
Spread(Part, x) 
end 
end 
end 
end) 
end 
end 
wait() 
end 
end) 
Spawn(function() 
local Sound = {} 
Sound[1] = Instance.new("Sound") 
Sound[1].SoundId = ClackSoundId1 
Sound[1].Volume = 1 
Sound[1].Parent = s 
Sound[2] = Sound[1]:Clone() 
Sound[2].SoundId = ClackSoundId2 
Sound[2].Parent = s 
Sound[3] = Sound[1]:Clone() 
Sound[3].SoundId = ClackSoundId3 
Sound[3].Parent = s 
local Index = 1 
while x.Parent do 
wait(0.6) 
if x.Enabled then 
local cSound = Sound[Index] 
cSound.Pitch = math.random(50, 150)/100 
cSound:Play() 
Index = Index + 1 
if Index > 3 then Index = 1 end 
end 
end 
end) 
if not InfiniteLife then 
Debris:AddItem(s, 25) 
Spawn(function() 
wait(math.random(50, 70) / 10) 
s:BreakJoints() 
s.Anchored = false 
s.Velocity = Vector3.new(0, 2, 0) 
wait(math.random(40, 60) / 10) 
s.BrickColor = BrickColor.new("Black") 
s.Material = "Slate" 
wait(math.random(10, 30) / 10) 
x.Enabled = false 
wait(math.random(20, 40) / 10) 
s.Size = Vector3.new() 
s.Velocity = Vector3.new(0, -1, 0) 
end) 
end 
return x 
end 
end 
function tagHumanoid(h, time) 
if not h then return end 
if h:FindFirstChild("creator") then h.creator:Remove() end 
local c = Instance.new("ObjectValue") 
c.Name = "creator" 
c.Value = Game:GetService("Players").LocalPlayer 
c.Parent = h 
game:service("Debris"):AddItem(c, time or 1) 
end 
function Explode(pos) 
local e = Instance.new("Explosion") 
e.Hit:connect(function(p) if p then if p.Parent then tagHumanoid(p.Parent:FindFirstChild("Humanoid")) end end end) 
e.BlastPressure = 1000000 
e.BlastRadius = 5 
e.Position = pos 
e.Parent = workspace 
end 
function GetEyes(Character) 
if not Character then return end 
if Game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Laser") then return end 
local Humanoid = Character.Humanoid 
local Torso = Humanoid.Torso 
local Head = Torso.Neck.Part1 
local Sound1 = Instance.new("Sound") 
Sound1.SoundId = ChargeSoundId 
Sound1.Volume = 0.2 
Sound1.Parent = Head 
local Down 
local Hopper = Instance.new("HopperBin") 
Hopper.Name = "Laser" 
Hopper.Parent = User:FindFirstChild("Backpack") 
local Enabled = false 
local Mouse 
Hopper.Selected:connect(function(mouse) 
Mouse = mouse 
Mouse.Button1Down:connect(function() 
if Humanoid.Health > 0 then 
Enabled = true 
end 
end) 
Mouse.Button1Up:connect(function() 
Enabled = false 
end) 
end) 
Hopper.Deselected:connect(function() 
Enabled = false 
end) 
local B1, B2 = Instance.new("Model"), Instance.new("Model") 
B1.Parent, B2.Parent = Character, B1 
local Sensor = Instance.new("Part") 
Sensor.CanCollide = false 
Sensor.formFactor = 0 
Sensor.Size = Vector3.new(3, 3, 3) 
Sensor.Transparency = 1 
Sensor.Parent = B2 
local BodyPosition = Instance.new("BodyPosition") 
BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
BodyPosition.Parent = Sensor 
local Sound2 = Instance.new("Sound") 
Sound2.SoundId = ExplosionSoundId 
Sound2.Volume = 1 
Sound2.Parent = Sensor 
local Fire = Fiah(Sensor, true) 
Fire.Enabled = false 
local Laser1 = Instance.new("Part") 
Laser1.Anchored = true 
Laser1.Color = LaserColor 
Laser1.CanCollide = false 
Laser1.formFactor = 0 
Laser1.Size = Vector3.new() 
Laser1.Reflectance = LaserReflectance 
Laser1.Transparency = 1 
Laser1.Parent = B2 
local Laser2 = Laser1:Clone() 
Laser2.Parent = B2 
local Mesh1 = Instance.new("CylinderMesh") 
Mesh1.Scale = Vector3.new(LaserThickness, 1, LaserThickness) 
Mesh1.Parent = Laser1 
local Mesh2 = Mesh1:Clone() 
Mesh2.Parent = Laser2 
while Character.Parent do 
if Enabled then 
if not Fire.Enabled then 
Fire.Enabled = true 
Sound1.Pitch = 1 
Sound1:Play() 
Down = tick() 
end 
Laser1.Transparency = 0 
Laser2.Transparency = 0 
local Radius = math.random(-LaserAnimRadius*1000, LaserAnimRadius*1000)/1000 
local TargetPos = Mouse.Hit.p 
if tick() - Down >= 1 then 
Explode(TargetPos) 
Sound2:Play() 
Enabled = false 
end 
local Eye1Pos = Head.Position + Head.CFrame.lookVector / 2 + (Head.CFrame * CFrame.Angles(0, math.rad(90), 0)).lookVector / 5 + Vector3.new(0, 0.3, 0) 
local Eye2Pos = Head.Position + Head.CFrame.lookVector / 2 + (Head.CFrame * CFrame.Angles(0, math.rad(-90), 0)).lookVector / 5 + Vector3.new(0, 0.3, 0) 
Laser1.CFrame = CFrame.new((Eye1Pos + TargetPos) / 2, TargetPos) * CFrame.Angles(math.rad(90), 0, 0) 
Mesh1.Scale = Vector3.new(LaserThickness + Radius, (Eye1Pos - TargetPos).magnitude, LaserThickness + Radius) 
Laser2.CFrame = CFrame.new((Eye2Pos + TargetPos) / 2, TargetPos) * CFrame.Angles(math.rad(90), 0, 0) 
Mesh2.Scale = Vector3.new(LaserThickness + Radius, (Eye2Pos - TargetPos).magnitude, LaserThickness + Radius) 
Sensor.CFrame = CFrame.new(TargetPos) 
BodyPosition.position = TargetPos 
Sensor.Parent = B2 
Spawn(function() 
local Middle = ChargeDetail / 2 
local StartPos = Eye1Pos + Vector3.new(math.random(-ChargeRadius*10, ChargeRadius*10)/10, math.random(-ChargeRadius*10, ChargeRadius*10)/10, math.random(-ChargeRadius*10, ChargeRadius*10)/10).unit * ChargeRadius 
local Part = Instance.new("Part") 
Part.Anchored = true 
Part.CanCollide = false 
Part.Color = ChargeColor 
Part.formFactor = 0 
Part.Size = Vector3.new(1, 1, 1) 
Part.Reflectance = 0.125 
local Mesh = Instance.new("SpecialMesh") 
Mesh.MeshType = "Sphere" 
Mesh.Parent = Part 
Part.Parent = B2 
for i = 1, ChargeDetail do 
local Eye1Pos = Head.Position + Head.CFrame.lookVector / 2 + (Head.CFrame * CFrame.Angles(0, math.rad(90), 0)).lookVector / 5 + Vector3.new(0, 0.3, 0) 
local Dist = i / ChargeDetail 
local Pos = 1 - math.abs(i - Middle) / Middle -- Begin: 0, Middle: 1, End: 0 
Mesh.Scale = Vector3.new(Pos * ChargeThickness, Pos * ChargeThickness, Pos * ChargeRadius) 
Part.CFrame = CFrame.new(StartPos * (1 - Dist) + Eye1Pos * Dist, Eye1Pos) 
wait() 
end 
Part:Remove() 
end) 
Spawn(function() 
local Middle = ChargeDetail / 2 
local StartPos = Eye2Pos + Vector3.new(math.random(-ChargeRadius*10, ChargeRadius*10)/10, math.random(-ChargeRadius*10, ChargeRadius*10)/10, math.random(-ChargeRadius*10, ChargeRadius*10)/10).unit * ChargeRadius 
local Part = Instance.new("Part") 
Part.Anchored = true 
Part.CanCollide = false 
Part.Color = ChargeColor 
Part.formFactor = 0 
Part.Size = Vector3.new(1, 1, 1) 
Part.Reflectance = 0.125 
local Mesh = Instance.new("SpecialMesh") 
Mesh.MeshType = "Sphere" 
Mesh.Parent = Part 
Part.Parent = B2 
for i = 1, ChargeDetail do 
local Eye2Pos = Head.Position + Head.CFrame.lookVector / 2 + (Head.CFrame * CFrame.Angles(0, math.rad(-90), 0)).lookVector / 5 + Vector3.new(0, 0.3, 0) 
local Dist = i / ChargeDetail 
local Pos = 1 - math.abs(i - Middle) / Middle -- Begin: 0, Middle: 1, End: 0 
Mesh.Scale = Vector3.new(Pos * ChargeThickness, Pos * ChargeThickness, Pos * ChargeRadius) 
Part.CFrame = CFrame.new(StartPos * (1 - Dist) + Eye2Pos * Dist, Eye2Pos) 
wait() 
end 
Part:Remove() 
end) 
else 
if Fire.Enabled then 
Fire.Enabled = false 
for i = 1, 10 do 
Laser1.Transparency = i / 10 
Laser2.Transparency = i / 10 
Laser1.Reflectance = LaserReflectance * (1 - i / 10) / 3 
Laser2.Reflectance = LaserReflectance * (1 - i / 10) / 3 
Sound1.Pitch = 1 - i / 10 
wait() 
end 
Sound1:Stop() 
end 
end 
wait() 
end 
end 
wait() 
GetEyes(User.Character)
 --mediafire gtfo password