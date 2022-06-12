mod = Instance.new("Model")
mod.Parent = Workspace.acb227 
mod.Name = "Assasin" 

mod.Parent.Head.Transparency = 1

part = Instance.new("Part")
part.Parent = mod 
part:BreakJoints()
part.Size = Vector3.new(1, 2, 1)
part.BrickColor = BrickColor.new("Really black")
part.CanCollide = false 
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
weld = Instance.new("Weld")
weld.Parent = mod 
weld.Part0 = part 
weld.Part1 = mod.Parent["Right Arm"] 

part2 = Instance.new("Part")
part2.Parent = mod 
part2:BreakJoints()
part2.Size = Vector3.new(1, 2, 1)
part2.BrickColor = BrickColor.new("Really black")
part2.CanCollide = false 
mesh2 = Instance.new("BlockMesh")
mesh2.Parent = part2
mesh2.Scale = Vector3.new(1.1, 1.1, 1.1)
weld2 = Instance.new("Weld")
weld2.Parent = mod 
weld2.Part0 = part2 
weld2.Part1 = mod.Parent["Left Arm"] 

part3 = Instance.new("Part")
part3.Parent = mod 
part3:BreakJoints()
part3.Size = Vector3.new(2, 2, 1)
part3.BrickColor = BrickColor.new("Really black")
part3.CanCollide = false 
mesh3 = Instance.new("BlockMesh")
mesh3.Parent = part3
mesh3.Scale = Vector3.new(1.1, 1.1, 1.1)
weld3 = Instance.new("Weld")
weld3.Parent = mod 
weld3.Part0 = part3 
weld3.Part1 = mod.Parent["Torso"] 

part4 = Instance.new("Part")
part4.Parent = mod 
part4:BreakJoints()
part4.Size = Vector3.new(1, 2, 1)
part4.BrickColor = BrickColor.new("Really black")
part4.CanCollide = false 
mesh4 = Instance.new("BlockMesh")
mesh4.Parent = part4
mesh4.Scale = Vector3.new(1.1, 1.1, 1.1)
weld4 = Instance.new("Weld")
weld4.Parent = mod 
weld4.Part0 = part4 
weld4.Part1 = mod.Parent["Left Leg"] 

part5 = Instance.new("Part")
part5.Parent = mod 
part5:BreakJoints()
part5.Size = Vector3.new(1, 2, 1)
part5.BrickColor = BrickColor.new("Really black")
part5.CanCollide = false 
mesh5 = Instance.new("BlockMesh")
mesh5.Parent = part5
mesh5.Scale = Vector3.new(1.1, 1.1, 1.1)
weld5 = Instance.new("Weld")
weld5.Parent = mod 
weld5.Part0 = part5 
weld5.Part1 = mod.Parent["Right Leg"] 

part6 = Instance.new("Part")
part6.Parent = mod 
part6.Size = Vector3.new(1, 1, 1)
part6.BrickColor = BrickColor.new("Really black")
part6.CanCollide = false 
part6:BreakJoints()
mesh6 = Instance.new("SpecialMesh")
mesh6.Parent = part6
mesh6.Scale = Vector3.new(1.35, 1.35, 1.35)
weld6 = Instance.new("Weld")
weld6.Parent = mod 
weld6.Part0 = part6 
weld6.Part1 = mod.Parent.Head
weld6.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

part7 = Instance.new("Part")
part7.Parent = mod 
part7.Size = Vector3.new(1, 2, 1)
part7.BrickColor = BrickColor.new("Reddish brown")
part7.CanCollide = false 
part7:BreakJoints()
mesh7 = Instance.new("CylinderMesh")
mesh7.Parent = part7
mesh7.Scale = Vector3.new(0.3, 1, 0.3)
weld7 = Instance.new("Weld")
weld7.Parent = mod 
weld7.Part0 = part7 
weld7.Part1 = mod.Parent["Torso"] 
weld7.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.7) + Vector3.new(0, 0.2, -0.7) 

part8 = Instance.new("Part")
part8.Parent = mod 
part8.Size = Vector3.new(1, 1, 1)
part8.BrickColor = BrickColor.new("Really black")
part8.CanCollide = false 
part8:BreakJoints()
mesh8 = Instance.new("CylinderMesh")
mesh8.Parent = part8
mesh8.Scale = Vector3.new(0.35, 0.6, 0.35)
weld8 = Instance.new("Weld")
weld8.Parent = mod 
weld8.Part0 = part8 
weld8.Part1 = mod.Parent["Torso"] 
weld8.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.7) + Vector3.new(0, 0.2, -0.7) 

--//tool\\--
part9 = Instance.new("Part")
part9.Parent = mod 
part9.Size = Vector3.new(1, 5, 1)
part9.BrickColor = BrickColor.new("Really black")
part9.CanCollide = false 
part9:BreakJoints()
mesh9 = Instance.new("CylinderMesh")
mesh9.Parent = part9
mesh9.Scale = Vector3.new(0.2, 1, 0.2)
weld9 = Instance.new("Weld")
weld9.Parent = mod 
weld9.Part0 = part9 
weld9.Part1 = mod.Parent["Torso"] 
weld9.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.7) + Vector3.new(0, 0.2, -0.7) 