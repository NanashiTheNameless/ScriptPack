local Player = game.Players.LocalPlayer
local cloud = Instance.new("Part",Player.Character.Torso)
cloud.BrickColor = BrickColor.new(320)
cloud.Reflectance = 0.5
cloud.Anchored = true
cloud.CanCollide = false
cloud.FormFactor = Enum.FormFactor.Symmetric
cloud.Size = Vector3.new(1,1,1)

local mesh = Instance.new("SpecialMesh",cloud)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "rbxassetid://111820358"
mesh.Scale = Vector3.new(8,8,8)

local P = Instance.new("ParticleEmitter",cloud)
P.Size = NumberSequence.new(0.75)
P.LockedToPart = true
P.Texture = "rbxassetid://127496227"
P.Transparency = NumberSequence.new(0.5)
P.Acceleration = Vector3.new(0, -20, 0)
P.EmissionDirection = Enum.NormalId.Bottom
P.Enabled = true
P.Rate = 30
P.Rotation = NumberRange.new(0,360)
P.RotSpeed = NumberRange.new(0,15)
P.Speed = NumberRange.new(3,5)
P.VelocitySpread = 80

while wait() do
    cloud.CFrame = CFrame.new() + Vector3.new(Player.Character.Torso.CFrame.x,Player.Character.Torso.CFrame.y,Player.Character.Torso.CFrame.z) + Vector3.new(0,20,0)
end