player = Game.Players.yfc
char = player.Character 
char.Torso.Transparency = 1 
char.Head.Transparency = 1 
char["Right Arm"].Transparency = 1 
char["Right Leg"].Transparency = 1 
char["Left Arm"].Transparency = 1 
char["Left Leg"].Transparency = 1 

part = Instance.new("Part") 
part.Parent = player.Character 
part.Size = Vector3.new(3, 2, 3) 
part:BreakJoints() 
part.BrickColor = BrickColor.new("Bright red") 
mesh = Instance.new("SpecialMesh")
mesh.Parent = part 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1.01,1.01,1.01) 
weld = Instance.new("Weld") 
weld.Parent = part 
weld.Part0 = part 
weld.Part1 = player.Character.Torso 
weld.C0 = CFrame.new(0, 0, 0) 
weld.C1 = CFrame.new() 

part = Instance.new("Part") 
part.Parent = player.Character 
part.Size = Vector3.new(3, 1, 3) 
part:BreakJoints() 
part.BrickColor = BrickColor.new("Bright red") 
mesh = Instance.new("BlockMesh")
mesh.Parent = part 
mesh.Scale = Vector3.new(1.01,0.65,1.01) 
weld = Instance.new("Weld") 
weld.Parent = part 
weld.Part0 = part 
weld.Part1 = player.Character.Torso 
weld.C0 = CFrame.new(0, 0.75, 0) 
weld.C1 = CFrame.new() 

part = Instance.new("Part") 
part.Parent = player.Character 
part.Size = Vector3.new(1, 2, 1) 
part:BreakJoints() 
part.BrickColor = BrickColor.new("Really black") 
mesh = Instance.new("CylinderMesh")
mesh.Parent = part 
mesh.Scale = Vector3.new(0.6,1.01,0.6) 
weld = Instance.new("Weld") 
weld.Parent = part 
weld.Part0 = part 
weld.Part1 = player.Character.Torso 
weld.C0 = CFrame.new(0.5, 1.75, 1.15) 
weld.C1 = CFrame.new() 

part = Instance.new("Part") 
part.Parent = player.Character 
part.Size = Vector3.new(1, 2, 1) 
part:BreakJoints() 
part.BrickColor = BrickColor.new("Really black") 
mesh = Instance.new("CylinderMesh")
mesh.Parent = part 
mesh.Scale = Vector3.new(0.6,1.01,0.6) 
weld = Instance.new("Weld") 
weld.Parent = part 
weld.Part0 = part 
weld.Part1 = player.Character.Torso 
weld.C0 = CFrame.new(-0.5, 1.75, 1.15) 
weld.C1 = CFrame.new() 

part = Instance.new("Part") 
part.Parent = player.Character 
part.Size = Vector3.new(1, 2, 1) 
part:BreakJoints() 
part.BrickColor = BrickColor.new("Really black") 
mesh = Instance.new("CylinderMesh")
mesh.Parent = part 
mesh.Scale = Vector3.new(0.6,1.01,0.6) 
weld = Instance.new("Weld") 
weld.Parent = part 
weld.Part0 = part 
weld.Part1 = player.Character.Torso 
weld.C0 = CFrame.new(0.5, 1.75, -1.15) 
weld.C1 = CFrame.new() 

part = Instance.new("Part") 
part.Parent = player.Character 
part.Size = Vector3.new(1, 2, 1) 
part:BreakJoints() 
part.BrickColor = BrickColor.new("Really black") 
mesh = Instance.new("CylinderMesh")
mesh.Parent = part 
mesh.Scale = Vector3.new(0.6,1.01,0.6) 
weld = Instance.new("Weld") 
weld.Parent = part 
weld.Part0 = part 
weld.Part1 = player.Character.Torso 
weld.C0 = CFrame.new(-0.5, 1.75, -1.15) 
weld.C1 = CFrame.new() 