me = game.Players.acb227.Character 
pcall(function() me.Johnsen:remove() end) 
mod = Instance.new("Model")
mod.Name = "Johnsen" 
mod.Parent = me 

part = Instance.new("Part")
part.Parent = mod
part.Size = Vector3.new(1, 1, 1)
part.Position = Vector3.new(1, 1, 1)
part.BrickColor = BrickColor.new("Light orange")
part:BreakJoints() 
mesh = Instance.new("SpecialMesh")
mesh.Parent = part 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
we = Instance.new("Weld")
we.Parent = mod
we.Part0 = part
we.Part1 = me.Torso
we.C0 = CFrame.fromEulerAnglesXYZ(0.15, 0, 0) + Vector3.new(0.15, 1.25, 0.75)
we.C1 = CFrame.new() 
part = Instance.new("Part")
part.Parent = mod
part.Size = Vector3.new(1, 1, 1)
part.Position = Vector3.new(1, 1, 1)
part.BrickColor = BrickColor.new("Light orange")
part:BreakJoints() 
mesh = Instance.new("SpecialMesh")
mesh.Parent = part 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
we = Instance.new("Weld")
we.Parent = mod
we.Part0 = part
we.Part1 = me.Torso
we.C0 = CFrame.fromEulerAnglesXYZ(0.15, 0, 0) + Vector3.new(-0.15, 1.25, 0.75)
we.C1 = CFrame.new() 
part2 = Instance.new("Part")
part2.Parent = mod
part2.Size = Vector3.new(1, 6, 1)
part2.Position = Vector3.new(1, 1, 1)
part2.BrickColor = BrickColor.new("Light orange")
part2:BreakJoints() 
mesh3 = Instance.new("SpecialMesh")
mesh3.Parent = part2 
mesh3.MeshType = "Head" 
mesh3.Scale = Vector3.new(0.5, 1, 0.5)
we3 = Instance.new("Weld")
we3.Parent = mod
we3.Part0 = part2
we3.Part1 = me.Torso
we3.C0 = CFrame.fromEulerAnglesXYZ(1, 0, 0) + Vector3.new(0, -1.6, 1.25)

while true do 
we3.C1 = CFrame.Angles(0.25, 0, 0) 
wait(0.25) 
we3.C1 = CFrame.Angles(0.5, 0, 0) 
wait(0.25) 
we3.C1 = CFrame.Angles(0.25, 0, 0) 
wait(0.25) 
we3.C1 = CFrame.Angles(0, 0, 0) 
wait(0.25) 
we3.C1 = CFrame.Angles(-0.25, 0, 0) 
wait(0.25) 
we3.C1 = CFrame.Angles(-0.5, 0, 0) 
wait(0.25) 
we3.C1 = CFrame.Angles(-0.25, 0, 0) 
wait(0.25) 
we3.C1 = CFrame.Angles(0, 0, 0) 
wait(0.25) 
end 