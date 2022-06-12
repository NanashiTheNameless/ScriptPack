Player = game:getService("Players").yfc
Character = Player.Character

Model = Instance.new("Model",Character)

P = Instance.new("Part")
P.Anchored = true
P.Locked = true
P.CanCollide = true
P.Reflectance = 0.1
P.formFactor = "Custom"
P.Size = Vector3.new(10,0.5,10)
P.TopSurface = 0
P.BottomSurface = 0
M = Instance.new("CylinderMesh",P)
M.Bevel = 0.1

C1 = true
while true do wait()
P2 = P:Clone()

if C1 then
P2.BrickColor = BrickColor.new("White")
C1 = false
elseif not C1 then
P2.BrickColor = BrickColor.new("Really black")
C1 = true
end
P2.Color = Color3.new(math.random(),math.random(),math.random())
P2.Parent = Model
P2.CFrame = Character.Torso.CFrame - Vector3.new(0,3.2,0)
for i,v in pairs(Model:GetChildren()) do
if v:IsA("Part") then
if v.Mesh.Scale.x > 0.1 then
v.Mesh.Scale = v.Mesh.Scale + Vector3.new(-0.05,0.05,-0.05)
v.Mesh.Offset = v.Mesh.Offset - Vector3.new(0,0,0)
else
v:Remove()
end
end
end
end