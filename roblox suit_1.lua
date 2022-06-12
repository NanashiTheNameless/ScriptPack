me = Game.Players.acb227
char = me.Character 
local gender = female 
local censored = true 

as = char:FindFirstChild("Shirt") 
asd = char:FindFirstChild("Pants") 
if as ~= nil then 
as:remove() 
end 
if asd ~= nil then 
asd:remove() 
end 

se = char:FindFirstChild("Suit") 
if se ~= nil then 
se:remove() 
end 

local mo = Instance.new("Model") 
mo.Parent = char 
mo.Name = "Suit" 

if gender == female and censored == true then 
part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright red") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(2, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(0, -0.25, 0) * CFrame.Angles(0, 0, 0) 

part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright red") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0.25, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(0, -0.85, 0) * CFrame.Angles(0, 0, 0.7) 

part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright red") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0.25, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(0, -0.85, 0) * CFrame.Angles(0, 0, -0.7) 

part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright red") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(2, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0) 
end 

if gender == female and censored == false then 
part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Pastel brown") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.95, 1.01, 0.95) 
mesh.Name = "spec Mesh" 
mesh.MeshType = "Sphere" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(0.4, -0.25, 0.5) * CFrame.Angles(0, 0, 0) 
part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Pastel brown") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.95, 1.01, 0.95) 
mesh.Name = "spec Mesh" 
mesh.MeshType = "Sphere" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(-0.4, -0.25, 0.5) * CFrame.Angles(0, 0, 0) 
part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Reddish brown") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.15, 0.15, 1) 
mesh.Name = "spec Mesh" 
mesh.MeshType = "Sphere" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(0.4, -0.25, 0.5) * CFrame.Angles(0, 0, 0) 
part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Reddish brown") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.15, 0.15, 1) 
mesh.Name = "spec Mesh" 
mesh.MeshType = "Sphere" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(-0.4, -0.25, 0.5) * CFrame.Angles(0, 0, 0) 
end 

if gender == male and censored == true then 
part = Instance.new("Part") 
part.Parent = mo 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright red") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(2, 2, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Torso"] 
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 

part = Instance.new("Part") 
part.Parent = mo 
part.CanCollide = false 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright red") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Right Arm"] 
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 

part = Instance.new("Part") 
part.Parent = mo 
part.CanCollide = false 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright red") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Left Arm"] 
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 

part = Instance.new("Part") 
part.Parent = mo 
part.CanCollide = false 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright blue") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Right Leg"] 
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 

part = Instance.new("Part") 
part.Parent = mo 
part.CanCollide = false 
part.Name = "Torso" 
part.BrickColor = BrickColor.new("Bright blue") 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(1.01, 1.01, 1.01) 
mesh.Name = "Brick Mesh" 
weld = Instance.new("Weld") 
weld.Parent = mo 
weld.Part0 = part 
weld.Part1 = char["Left Leg"] 
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
end 