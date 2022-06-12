asdf = workspace:FindFirstChild("Housea") 
if asdf ~= nil then 
asdf:remove() 
end 
www.typewith.me/acb227 
hou = Instance.new("Model") 
hou.Name = "Housea" 
hou.Parent = workspace 

part = Instance.new("Part") 
part.Parent = hou 
part.BrickColor = BrickColor.new("Black") 
part.Size = Vector3.new(100, 1, 100) 
part.Anchored = true 
part.CFrame = CFrame.new(100, 0.5, 0) 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 

part = Instance.new("Part") 
part.Parent = hou 
part.BrickColor = BrickColor.new("Black") 
part.Size = Vector3.new(100, 40, 1) 
part.Anchored = true 
part.CFrame = CFrame.new(100, 20, 50) 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 

part = Instance.new("Part") 
part.Parent = hou 
part.BrickColor = BrickColor.new("Black") 
part.Size = Vector3.new(100, 40, 1) 
part.Anchored = true 
part.CFrame = CFrame.new(100, 20, -50) 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 