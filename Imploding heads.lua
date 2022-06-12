while true do
p = game.Players:GetChildren()
for i = 1, #p do
for z = 1, 1000 do
wait(0.001)
p[i].Character.Head.Mesh.Scale = p[i].Character.Head.Mesh.Scale+Vector3.new(0.1,0.1,0.1)
end
wait(1)
for z = 1, 50.5 do
wait(0.50)
p[i].Character.Head.Mesh.Scale = p[i].Character.Head.Mesh.Scale+Vector3.new(2,2,2)
end
wait(1)
e = Instance.new("Explosion")
e.Parent = p[i].Character.Torso
e.Position = p[i].Character.Torso.Position
e.BlastPressure = "9999"
e.BlastRadius = "99"
end
end