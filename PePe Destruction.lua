--Ultimate V2.2
m = Instance.new("Message")
m.Parent = Workspace
m.Text = ("Loaded PePe Rage Script/Server Destruction")
game.Workspace.Gravity = 75
game.Lighting.TimeOfDay = ("5:00")
game.Lighting.FogEnd = 300


wait(1)
m:Remove()

while true do
wait(0.5)
b = Instance.new("BlurEffect")
b.Parent = game.Lighting
h = Instance.new("Hint")
h.Parent = game.Workspace
h.Text = ("It is the ultimate end of the server.")
game.Workspace.Gravity = -10
game.Lighting.TimeOfDay = ("0:00")
game.Lighting.FogEnd = 75
game.StarterPlayer.CameraMode = ("LockFirstPerson")
game.Workspace.Camera.FieldOfView = 200

for i,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Part")then
v.BrickColor = BrickColor.new('le color')
v.Name = ("locked")
v.Locked = true
v.Anchored = false
end
end
end