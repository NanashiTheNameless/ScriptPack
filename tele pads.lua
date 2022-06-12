part1 = Instance.new("Part") 
part1.Position = Vector3.new(0, 4, 0) 
part1.Size = Vector3.new(4, 2, 4) 
part1.Parent = workspace 
part1.Anchored = true 
part1.Color = Color3.new("Bright red")
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part1 

function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h.Parent.Torso.CFrame = part2.CFrame + Vector3.new(0, 3, 0)
end 
end 

part2 = Instance.new("Part") 
part2.Position = Vector3.new(0, 4, 25) 
part2.Size = Vector3.new(4, 2, 4) 
part2.Parent = workspace 
part2.Anchored = true 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part2 

part1.Touched:connect(onTouched) 