hat = Instance.new("Part")
hat.Name = "Head" 
hat.Parent = workspace 
hat.formFactor = "Plate" 
hat.BrickColor = BrickColor.new("Really black")
hat.Size = Vector3.new(2, 1, 2) 
hat.TopSurface = "Smooth" 
hat.BottomSurface = "Smooth" 
hat.LeftSurface = "Smooth"
hat.RightSurface = "Smooth"
hat.Shape = "Block" 
hat.Transparency = 0 
hat.Reflectance = 0 
hat.Anchored = true 
hat.CanCollide = false 
hat.Locked = true 

mesh = Instance.new("SpecialMesh") 
mesh.TextureId = "http://www.roblox.com/asset/?id=31600964" 
mesh.MeshId = "http://www.roblox.com/asset/?id=13640868" 
mesh.Parent = hat 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(1.2, 1.2, 1.2)

while true do 
wait() 
hat.CFrame = workspace.xSoulStealerx.Head.CFrame + Vector3.new(0, 0.7, 0)
end 