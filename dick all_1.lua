function armor(ms) 
me = ms.Character 
me2 = ms 
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
part = Instance.new("Part")
part.Parent = mod
part.Size = Vector3.new(1, 3, 1)
part.Position = Vector3.new(1, 1, 1)
part.BrickColor = BrickColor.new("Light orange")
part:BreakJoints() 
mesh3 = Instance.new("SpecialMesh")
mesh3.Parent = part 
mesh3.MeshType = "Head" 
mesh3.Scale = Vector3.new(0.5, 1, 0.5)
we3 = Instance.new("Weld")
we3.Parent = mod
we3.Part0 = part
we3.Part1 = me.Torso
we3.C0 = CFrame.fromEulerAnglesXYZ(1, 0, 0) + Vector3.new(0, -0.8, 1.25)
we3.C1 = CFrame.new() 

function cmds(msg) 
if msg == "grow" then 
for i = 0, 1, 0.1 do 
mesh3.Scale = mesh3.Scale + Vector3.new(0, i, 0)
we3.C0 = we3.C0 - Vector3.new(0, i, 0)
wait() 
end 
end 
if msg == "shrink" then 
for i = 0, 1, 0.1 do 
mesh3.Scale = mesh3.Scale - Vector3.new(0, i, 0)
we3.C0 = we3.C0 + Vector3.new(0, i+0.1, 0)
wait() 
end 
end 
end 

me2.Chatted:connect(cmds) 

end 
--damn
for _, v in pairs(Game.Players:GetChildren()) do 
armor(v)
end 

