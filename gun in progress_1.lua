Tool = Instance.new("HopperBin") 
Tool.Parent = Game.Players.acb227.Backpack
Tool.Name = "Gun" 
script.Parent = Game.Players.acb227.Character 

part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.size = Vector3.new(1, 1, 4) 
part1.Name = "Handle" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(0.5, 0.5, 1) 
mesh1.Parent = part1 

weld1 = Instance.new("Weld") 
weld1.Parent = script.Parent 
weld1.Part0 = part1 
weld1.Part1 = script.Parent["Right Arm"] 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 2) 