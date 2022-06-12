local admin = game.Players.acb227 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = part1.CFrame + Vector3.new(0, 5, 0) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(5, 3, 0) 
end 
end 
end 
end 

admin.Chatted:connect(onChatted)

mile = 100 
script.Parent = workspace.acb227 

part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.Size = Vector3.new(mile * 2, 1, mile * 7) 
part1.Name = "Base" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 
part1.CFrame = CFrame.new(0, 45, 0)
part1.Anchored = true
part1.BrickColor = BrickColor.new("Really black")

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(1, 1, 1) 
mesh1.Parent = part1 













































part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.Size = Vector3.new(5, 3, 4) 
part1.Name = "Base" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 
part1.CFrame = CFrame.new(0, 46.5, 25)
part1.Anchored = true
part1.BrickColor = BrickColor.new("Black")

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(1, 1, 1) 
mesh1.Parent = part1 

part1 = Instance.new("WedgePart") 
part1.Parent = script.Parent 
part1.Size = Vector3.new(5, 2, 4) 
part1.Name = "Base" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 
part1.CFrame = CFrame.new(0, 49, 25)
part1.Anchored = true
part1.BrickColor = BrickColor.new("Black")

mesh1 = Instance.new("SpecialMesh") 
mesh1.MeshType = "Wedge" 
mesh1.Scale = Vector3.new(1, 1, 1) 
mesh1.Parent = part1 


part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.Size = Vector3.new(5, 3, 4) 
part1.Name = "Base" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 
part1.CFrame = CFrame.new(10, 46.5, 25)
part1.Anchored = true
part1.BrickColor = BrickColor.new("Black")

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(1, 1, 1) 
mesh1.Parent = part1 

part1 = Instance.new("WedgePart") 
part1.Parent = script.Parent 
part1.Size = Vector3.new(5, 2, 4) 
part1.Name = "Base" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 
part1.CFrame = CFrame.new(10, 49, 25)
part1.Anchored = true
part1.BrickColor = BrickColor.new("Black")

mesh1 = Instance.new("SpecialMesh") 
mesh1.MeshType = "Wedge" 
mesh1.Scale = Vector3.new(1, 1, 1) 
mesh1.Parent = part1 

part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.Size = Vector3.new(10, 3, 8) 
part1.Name = "Base" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 
part1.CFrame = CFrame.new(5, 46.5, 50)
part1.Anchored = true
part1.BrickColor = BrickColor.new("Black")

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(1, 1, 1) 
mesh1.Parent = part1 

part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.Size = Vector3.new(7, 7, 7) 
part1.Name = "Base" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 
part1.CFrame = CFrame.new(5, 51.5, 50)
part1.Anchored = true
part1.BrickColor = BrickColor.new("Black")

mesh1 = Instance.new("CylinderMesh") 
mesh1.Scale = Vector3.new(1, 1, 1) 
mesh1.Parent = part1 

part1 = Instance.new("Part") 
part1.Parent = script.Parent 
part1.Size = Vector3.new(10, 3, 8) 
part1.Name = "Base" 
part1.TopSurface = "Smooth" 
part1.BottomSurface = "Smooth" 
part1.Locked = true 
part1.CFrame = CFrame.new(5, 55.5, 50)
part1.Anchored = true
part1.BrickColor = BrickColor.new("Black")

mesh1 = Instance.new("BlockMesh") 
mesh1.Scale = Vector3.new(1, 1, 1) 
mesh1.Parent = part1 

--[[ w2 = Instance.new("Weld") 
w2.Parent = script.Parent 
w2.Part0 = part1 
w2.Part1 = script.Parent["Right Arm"] 
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.55, 0, 0) + Vector3.new(0, 2.7, -0.9) 

part1.CFrame = CFrame.fromEulerAnglesXYZ(0, 0, 1) + Vector3.new(0, 46.5, -0.9)]]--