plyr = Game.Players.acb227 
char = plyr.Character 

color = "Bright green" 

base = Instance.new("Part") 
base.Parent = workspace 
base.Size = Vector3.new(10, 1, 15) 
base.CFrame = char.Torso.CFrame + Vector3.new(15, 5, 0) 
base.BrickColor = BrickColor.new(color) 
base:BreakJoints() 
mesh = Instance.new("BlockMesh")
mesh.Parent = base 

left = Instance.new("Part") 
left.Parent = workspace 
left.Size = Vector3.new(1, 5, 1) 
left:BreakJoints() 
left.BrickColor = BrickColor.new(color)
mesh = Instance.new("BlockMesh")
mesh.Parent = left 
weld = Instance.new("Weld") 
weld.Parent = left 
weld.Part0 = left 
weld.Part1 = base 
weld.C0 = CFrame.new() 
weld.C1 = CFrame.new(4.5, 2.5, 0) * CFrame.Angles(0, 0, 0) 

right = Instance.new("Part") 
right.Parent = workspace 
right.Size = Vector3.new(1, 5, 1) 
right:BreakJoints() 
right.BrickColor = BrickColor.new(color)
mesh = Instance.new("BlockMesh")
mesh.Parent = right 
weld = Instance.new("Weld") 
weld.Parent = right 
weld.Part0 = right 
weld.Part1 = base 
weld.C0 = CFrame.new() 
weld.C1 = CFrame.new(-4.5, 2.5, 0) * CFrame.Angles(0, 0, 0) 

right = Instance.new("Part") 
right.Parent = workspace 
right.Size = Vector3.new(1, 5, 1) 
right:BreakJoints() 
right.BrickColor = BrickColor.new(color)
mesh = Instance.new("BlockMesh")
mesh.Parent = right 
weld = Instance.new("Weld") 
weld.Parent = right 
weld.Part0 = right 
weld.Part1 = base 
weld.C0 = CFrame.new() 
weld.C1 = CFrame.new(-4.5, 2.5, 0) * CFrame.Angles(0, 0, 0) 