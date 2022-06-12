--AssAssin Suit Gifted by Rosemarijohn2, Regular Script!

Person = game.Players.luxulux
Bin = script.Parent 
Grabbed = nil 
Suit = true 
Limbs = {Person.Character["Right Arm"], Person.Character["Left Arm"], Person.Character["Right Leg"], Person.Character["Left Leg"]} 
Joints = {Person.Character.Torso["Right Shoulder"], Person.Character.Torso["Left Shoulder"], Person.Character.Torso["Right Hip"], Person.Character.Torso["Left Hip"]} 
NewJoints = {nil, nil, nil, nil} 
PreferredHand = 1 
PreferredFoot = 3 
UnPreferredHand = 0 
UnPreferredFoot = 0 
if (PreferredHand == 1) then 
UnPreferredHand = 2 
else 
UnPreferredHand = 1 
end 
if (PreferredFoot == 3) then 
UnPreferredFoot = 4 
else 
UnPreferredFoot = 3 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Suit 
if (Person.Character:findFirstChild("Suit") ~= nil) then 
Person.Character.Suit:remove() 
end 
Suit = Instance.new("Model") 
Suit.Parent = Person.Character 
Suit.Name = "Suit" 
if (Person.Character:findFirstChild("Body Colors") ~= nil) then 
Person.Character["Body Colors"]:remove() 
end 
if (Person.Character.Torso:findFirstChild("roblox") ~= nil) then 
Person.Character.Torso.roblox:remove() 
end 
Person.Character.Torso.BrickColor = BrickColor.new("Lime green") 
Limbs[4].BrickColor = Person.Character.Head.BrickColor 
Limbs[3].BrickColor = Person.Character.Head.BrickColor 
Limbs[2].BottomSurface = 0 
Limbs[1].BottomSurface = 0 
TunicA = Instance.new("Part") 
TunicA.Parent = Suit 
TunicA.Name = "TunicA" 
TunicA.CanCollide = false 
TunicA.BrickColor = BrickColor.new("Lime green") 
TunicA.TopSurface = 0 
TunicA.BottomSurface = 0 
TunicA.formFactor = "Symmetric" 
TunicA.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicA 
Mesh.Scale = Vector3.new(2.02, 0.5, 1.02) 
TunicA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicA 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicA 
Weld.C0 = CFrame.new(0, -1.25, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicB = Instance.new("Part") 
TunicB.Parent = Suit 
TunicB.Name = "TunicB" 
TunicB.CanCollide = false 
TunicB.BrickColor = BrickColor.new("Lime green") 
TunicB.TopSurface = 0 
TunicB.BottomSurface = 0 
TunicB.formFactor = "Symmetric" 
TunicB.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicB 
Mesh.Scale = Vector3.new(1.02, 0.5, 1.02) 
TunicB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicB 
Weld.Part0 = Limbs[4] 
Weld.Part1 = TunicB 
Weld.C0 = CFrame.new(0, 0.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicC = Instance.new("Part") 
TunicC.Parent = Suit 
TunicC.Name = "TunicC" 
TunicC.CanCollide = false 
TunicC.BrickColor = BrickColor.new("Lime green") 
TunicC.TopSurface = 0 
TunicC.BottomSurface = 0 
TunicC.formFactor = "Symmetric" 
TunicC.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicC 
Mesh.Scale = Vector3.new(1.02, 0.5, 1.02) 
TunicC:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicC 
Weld.Part0 = Limbs[3] 
Weld.Part1 = TunicC 
Weld.C0 = CFrame.new(0, 0.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicD = Instance.new("Part") 
TunicD.Parent = Suit 
TunicD.Name = "TunicD" 
TunicD.CanCollide = false 
TunicD.BrickColor = BrickColor.new("Lime green") 
TunicD.TopSurface = 0 
TunicD.BottomSurface = 0 
TunicD.formFactor = "Symmetric" 
TunicD.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicD 
Mesh.Scale = Vector3.new(2.02, 1.01, 1.02) 
TunicD:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicD 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicD 
Weld.C0 = CFrame.new(0, -0.501, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicE = Instance.new("Part") 
TunicE.Parent = Suit 
TunicE.Name = "TunicE" 
TunicE.CanCollide = false 
TunicE.BrickColor = BrickColor.new("Lime green") 
TunicE.TopSurface = 0 
TunicE.BottomSurface = 0 
TunicE.formFactor = "Symmetric" 
TunicE.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = TunicE 
Mesh.MeshType = "Wedge" 
Mesh.Scale = Vector3.new(1.02, 1.01, 0.5) 
TunicE:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicE 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicE 
Weld.C0 = CFrame.new(0.25, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, 0) 
TunicF = Instance.new("Part") 
TunicF.Parent = Suit 
TunicF.Name = "TunicF" 
TunicF.CanCollide = false 
TunicF.BrickColor = BrickColor.new("Lime green") 
TunicF.TopSurface = 0 
TunicF.BottomSurface = 0 
TunicF.formFactor = "Symmetric" 
TunicF.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = TunicF 
Mesh.MeshType = "Wedge" 
Mesh.Scale = Vector3.new(1.02, 1.01, 0.5) 
TunicF:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicF 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicF 
Weld.C0 = CFrame.new(-0.25, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi/2, 0) 
TunicG = Instance.new("Part") 
TunicG.Parent = Suit 
TunicG.Name = "TunicG" 
TunicG.CanCollide = false 
TunicG.BrickColor = BrickColor.new("Lime green") 
TunicG.TopSurface = 0 
TunicG.BottomSurface = 0 
TunicG.formFactor = "Symmetric" 
TunicG.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicG 
Mesh.Scale = Vector3.new(0.51, 1.01, 1.02) 
TunicG:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicG 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicG 
Weld.C0 = CFrame.new(0.751, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicH = Instance.new("Part") 
TunicH.Parent = Suit 
TunicH.Name = "TunicH" 
TunicH.CanCollide = false 
TunicH.BrickColor = BrickColor.new("Lime green") 
TunicH.TopSurface = 0 
TunicH.BottomSurface = 0 
TunicH.formFactor = "Symmetric" 
TunicH.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicH 
Mesh.Scale = Vector3.new(0.51, 1.01, 1.02) 
TunicH:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicH 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicH 
Weld.C0 = CFrame.new(-0.751, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicI = Instance.new("Part") 
TunicI.Parent = Suit 
TunicI.Name = "TunicI" 
TunicI.CanCollide = false 
TunicI.BrickColor = BrickColor.new("Lime green") 
TunicI.TopSurface = 0 
TunicI.BottomSurface = 0 
TunicI.formFactor = "Symmetric" 
TunicI.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = TunicI 
Mesh.MeshType = "Wedge" 
Mesh.Scale = Vector3.new(1.02, 1.01, 0.51) 
TunicI:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicI 
Weld.Part0 = Limbs[2] 
Weld.Part1 = TunicI 
Weld.C0 = CFrame.new(0.251, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, math.pi) 
TunicK = Instance.new("Part") 
TunicK.Parent = Suit 
TunicK.Name = "TunicK" 
TunicK.CanCollide = false 
TunicK.BrickColor = BrickColor.new("Lime green") 
TunicK.TopSurface = 0 
TunicK.BottomSurface = 0 
TunicK.formFactor = "Symmetric" 
TunicK.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicK 
Mesh.Scale = Vector3.new(1.01, 1.505, 1.01) 
TunicK:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicK 
Weld.Part0 = Limbs[2] 
Weld.Part1 = TunicK 
Weld.C0 = CFrame.new(0, 0.2505, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicM = Instance.new("Part") 
TunicM.Parent = Suit 
TunicM.Name = "TunicM" 
TunicM.CanCollide = false 
TunicM.BrickColor = BrickColor.new("Lime green") 
TunicM.TopSurface = 0 
TunicM.BottomSurface = 0 
TunicM.formFactor = "Symmetric" 
TunicM.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicM 
Mesh.Scale = Vector3.new(2.02, 1.01, 0.51) 
TunicM:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicM 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicM 
Weld.C0 = CFrame.new(0, 0.501, 0.251) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
