me = Game.Players.acb227.Character
mod = Instance.new("Model")
mod.Name = "Johnsen" 
mod.Parent = me 

part = Instance.new("Part")
part.Parent = mod
part.Size = Vector3.new(1, 1, 3)
part.Position = Vector3.new(1, 1, 1)
part.BrickColor = BrickColor.new("Light orange")
part:BreakJoints() 
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.7, 0.5, 0.5)
we = Instance.new("Weld")
we.Parent = mod
we.Part0 = part
we.Part1 = me.Torso
we.C0 = CFrame.fromEulerAnglesXYZ(0.15, 0, 0) + Vector3.new(0, 1, 1)
we.C1 = CFrame.new() 

p = Instance.new("Part")
p.Parent = mod
p.Size = Vector3.new(1, 1, 3)
p.Position = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Light orange")
p:BreakJoints() 
mesh = Instance.new("BlockMesh")
mesh.Parent = p
mesh.Scale = Vector3.new(0.69, 0.49, 0.49)
weld = Instance.new("Weld")
weld.Parent = mod
weld.Part0 = p
weld.Part1 = part
weld.C0 = CFrame.new(0, 0, 0.7)
weld.C1 = CFrame.new() 

pa = Instance.new("Part")
pa.Parent = mod
pa.Size = Vector3.new(1, 1, 3)
pa.Position = Vector3.new(1, 1, 1)
pa.BrickColor = BrickColor.new("Dark orange")
pa:BreakJoints() 
mesh = Instance.new("BlockMesh")
mesh.Parent = pa
mesh.Scale = Vector3.new(0.15, 0.15, 0.499)
weld = Instance.new("Weld")
weld.Parent = mod
weld.Part0 = pa
weld.Part1 = p
weld.C0 = CFrame.new(0, 0, 0)
weld.C1 = CFrame.new() 

for i = 1, math.huge do 
wait(5) 
we.C0 = CFrame.fromEulerAnglesXYZ(0.2, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0.25, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0.3, 0, 0) + Vector3.new(0, 1, 1)
pr = Instance.new("Part") 
pr.Parent = workspace 
pr.Anchored = false 
pr.Size = Vector3.new(1, 1, 1)
pr.BrickColor = BrickColor.new("Light stone grey")
pr.CFrame = pa.CFrame * CFrame.new(0, 0, -0.5) 
pr.CanCollide = false 
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere" 
mesh.Parent = pr
mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0.25, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0.2, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0.15, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0.1, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0.1, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
we.C0 = CFrame.fromEulerAnglesXYZ(0.15, 0, 0) + Vector3.new(0, 1, 1)
wait(0.3)
end 