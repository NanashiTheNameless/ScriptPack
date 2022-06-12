hop = Instance.new("HopperBin") 
hop.Parent = Game.Players.acb227.Backpack 
hop.Name = "Sword" 
arm = bin.Parent.Parent.Character["Right Arm"]

han = Instance.new("Part") 
han.Name = "Handle" 
han.Parent = hop 
han.Size = Vector3.new(1, 1, 1) 
hanm = Instance.new("CylinderMesh") 
hanm.Parent = han 
w = Instance.new("Weld")
w.Parent = arm.Parent 
w.Part0 = han
w.Part1 = arm
w.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0)

w = Instance.new("Weld")
w.Parent = arm.Parent.Torso 
w.Part0 = arm
w.Part1 = arm
w.C0 = CFrame.fromEulerAnglesXYZ(1.6, 0, 0) + Vector3.new(0, 0, 0)