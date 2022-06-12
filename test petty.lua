pet = Instance.new("Part", Workspace)


Owner = "Scriptaxor" 

pet.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = pet 
SPL.Humanoid = human 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = pet 
part = Instance.new("Part") 
part.Parent = hit 
part.Size = Vector3.new(1, 1, 1) 
part.Transparency = 0.3
part.BrickColor = BrickColor.new("Bright yellow") 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(3, 7, 3)
w1 = Instance.new("Weld") 
w1.Parent = part 
w1.Part0 = part 
w1.Part1 = human.Parent.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
wait(2) 
hit.Parent:BreakJoints() 
wait(3) 
part:remove() 
SPL:remove() 
end 
end 
end) 