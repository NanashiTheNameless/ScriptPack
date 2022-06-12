plyr = Game.Players.acb227
Tool = Instance.new("HopperBin") 
Tool.Parent = plyr.Backpack
Tool.Name = "Sword" 
script.Parent = plyr.Character 
Owner = plyr.Character
Color2 = BrickColor.new("Mid grey")
nameo = "acb227"
part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.size = Vector3.new(1, 4, 2) 
part1.Name = "Handle" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(0.25, 1, 0.8) 
mesh1.Parent = part1 

w2 = Instance.new("Weld") 
w2.Parent = script.Parent 
w2.Part0 = part1 
w2.Part1 = script.Parent["Right Arm"] 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, 0, 0) + Vector3.new(0, 2.7, -0.9) 

w2 = Instance.new("Weld") 
w2.Parent = script.Parent 
w2.Part0 = script.Parent["Right Arm"] 
w2.Part1 = script.Parent.Torso 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, 0, 0) + Vector3.new(-1.5, 0.5, 0.5) 
w2 = Instance.new("Weld") 
w2.Parent = script.Parent 
w2.Part0 = script.Parent["Left Arm"] 
w2.Part1 = script.Parent.Torso 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, 1, 0) + Vector3.new(0.5, 0.5, 0.5) 
