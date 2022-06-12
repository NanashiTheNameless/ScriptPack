wait(1)
local a = Instance.new("Sound")
a.Name = "Sound"
a.SoundId = "http://www.roblox.com/asset/?id=410806544"
a.Volume = 5
a.Pitch = 1
a.Looped = true
a.archivable = false
a.Parent = game.Workspace
a:play()

for i, v in pairs(game.Players:GetChildren()) do--this is going down in order of evrything in players, v is the variable 
p = v.Character
local weld = Instance.new("Weld",p.Torso)
weld.Part0 = p.Torso

local Harambe = Instance.new("Part",p.Torso)
Harambe.Anchored = true
Harambe.CanCollide = false
Harambe.Size = Vector3.new(3,2,6)
Harambe.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = Harambe
weld.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,math.rad(180),0)
Harambe.Anchored = false
local HarambeMesh = Instance.new("SpecialMesh",Harambe)
HarambeMesh.MeshType = Enum.MeshType.FileMesh
HarambeMesh.Scale = Vector3.new(0.0075,0.0075,0.0075)
HarambeMesh.MeshId = "rbxassetid://430095888"



local weld2 = Instance.new("Weld",p.Torso)
weld2.Part0 = p.Torso
local Smoke = Instance.new("Part",p.Torso)
Smoke.Anchored = true
Smoke.CanCollide = false
Smoke.Size = Vector3.new(0.2,0.2,0.2)
Smoke.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld2.Part1 = Smoke
weld2.C1 = CFrame.new(0,-3,0) * CFrame.Angles(math.rad(270),0,0)
Smoke.Anchored = false
Smoke.Transparency = 1;


p.Humanoid.WalkSpeed = 35;


for i,v in pairs(p:GetChildren()) do
if v:IsA("Part") then
 v.Transparency = 1;
elseif v:IsA("Hat") then
 v:Destroy()
elseif v:IsA("Model") then
 v:Destroy()
end
end

p.Head.face:Destroy()

local function SFX(id) local s=Instance.new("Sound",p.Torso); s.SoundId = "rbxassetid://"..id; s.Volume = 1; return s; end
Harambe.Touched:connect(function(p)
if p.Parent then
 if p.Parent:IsA("Model") then
  if game.Players:FindFirstChild(p.Parent.Name) then
   if p.Parent.Name ~= game.Players.LocalPlayer.Name then
      local Fart = SFX(131314452)
   -- Fart:Play()
   end
  end
 end
end
end)
end