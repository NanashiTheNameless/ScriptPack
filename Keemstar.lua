local a = Instance.new("Sound")
a.Name = "Sound"
a.SoundId = "http://www.roblox.com/asset/?id=433992205"
a.Volume = 1
a.Pitch = 1
a.Looped = true
a.archivable = false
a.Parent = game.Workspace
a:play()
for i, v in pairs(game.Players:GetChildren()) do--this is going down in order of evrything in players, v is the variable 
p = v.Character

local weld = Instance.new("Weld",p.Torso)
weld.Part0 = p.Torso

local train = Instance.new("Part",p.Torso)
train.Anchored = true
train.CanCollide = false
train.Size = Vector3.new(3,2,6)
train.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = train
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(180),0)
train.Anchored = false
local TrainMesh = Instance.new("SpecialMesh",train)
TrainMesh.MeshType = Enum.MeshType.FileMesh
TrainMesh.Scale = Vector3.new(.5,.5,.5)
TrainMesh.MeshId = "rbxassetid://471652548"
TrainMesh.TextureId = "rbxassetid://471652580"


local weld2 = Instance.new("Weld",p.Torso)
weld2.Part0 = p.Torso
local Smoke = Instance.new("Part",p.Torso)
Smoke.Anchored = true
Smoke.CanCollide = false
Smoke.Size = Vector3.new(1,1,1)
Smoke.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld2.Part1 = Smoke
weld2.C1 = CFrame.new(0,-4,3.5)-- * CFrame.Angles(0,math.rad(180),0)
Smoke.Anchored = false
Smoke.Transparency = 1;

p.Humanoid.WalkSpeed = 60;


for i,v in pairs(p:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1;
elseif v:IsA("Hat") then
v:Destroy()
elseif v:IsA("Model") then
v:Destroy()
end
end
end

local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=8979672"
pe.VelocitySpread = 50
pe.Rate = 1
se = Instance.new("ParticleEmitter",v.Character.Torso)
se.Texture = "http://www.roblox.com/asset/?id=176067516"
se.VelocitySpread = 50
se.Rate = 1
fe = Instance.new("ParticleEmitter",v.Character.Torso)
fe.Texture = "http://www.roblox.com/asset/?id=179012130"
fe.VelocitySpread = 50
fe.Rate = 1
end