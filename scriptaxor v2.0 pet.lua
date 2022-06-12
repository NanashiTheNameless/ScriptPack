chatter = game.Players.Scriptaxor 
Owner = chatter 


script.Parent = (Owner) 
pos1 = game.Workspace.Scriptaxor.Head 
m = Instance.new("Model") 
m.Parent = game.Workspace.Scriptaxor 
m.Name = "Mod" 
--h = Instance.new("Humanoid") 
--h.Parent = m 
--h.MaxHealth = 0 
c = Instance.new("Part") 
c.Parent = m 
c.Name = "Head" 
c.Position = pos1.Position 
c.Transparency = 0.6 
c.Shape = "Ball" 
c.Reflectance = 0 
c.BrickColor = BrickColor.new ("Bright blue") 
c.Size = Vector3.new(2,1,2) 
c.TopSurface = "Smooth" 
c.BottomSurface = "Smooth" 
c.Locked = true 
---f = Instance.new("Fire") 
--f.Color = Color3.new(0,1,0.50) 
--f.Parent = c 

-------------------------hat
hat = Instance.new("Part")
hat.Name = "Head" 
hat.Parent = c 
hat.formFactor = "Plate" 
hat.Size = Vector3.new(2, 1, 2) 
hat.TopSurface = "Smooth" 
hat.BottomSurface = "Smooth" 
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
-------------------------hat
hat2 = Instance.new("Part")
hat2.Name = "Head" 
hat2.Parent = c 
hat2.formFactor = "Plate" 
hat2.Size = Vector3.new(2, 1, 2) 
hat2.TopSurface = "Smooth" 
hat2.BottomSurface = "Smooth" 
hat2.Transparency = 0 
hat2.Reflectance = 0 
hat2.Anchored = true 
hat2.CanCollide = false 
hat2.Locked = true 
mesh = Instance.new("SpecialMesh") 
mesh.TextureId = "http://www.roblox.com/asset/?id=18136470" 
mesh.MeshId = "http://www.roblox.com/asset/?id=1577360" 
mesh.Parent = hat2 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(1.6, 2, 2.1) 

o = Instance.new("Decal") 
o.Face = "Front" 
o.Texture = game.Players.Scriptaxor.Character.Head.face.Texture 
o.Parent = c 
local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = m 
guimain2.Adornee = c 
guimain2.Size = UDim2.new(0, 40, 0, 2) 
guimain2.StudsOffset = (Vector3.new(-1, 2, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(3, 0, 0, 20) 
T3.Position = UDim2.new(0, 0, 0, 0) 
T3.Text = chatter.Name.."'s Mod" 
T3.BackgroundTransparency = 1 
T3.BackgroundColor = BrickColor.new(1003) 
T3.TextColor = BrickColor.new("Bright blue") 
T3.FontSize = "Size12" 

X = 3 
Y = 5 
Z = 0 

while true do 
c.CFrame = game.Workspace.Scriptaxor.Head.CFrame + Vector3.new(X, Y, Z) 
hat.CFrame = c.CFrame + Vector3.new(0,1.05,0) 
hat2.CFrame = c.CFrame + Vector3.new(0,0.35,0) 
wait(0.001) 
end 


--[[SB = Instance.new("SelectionBox") --Makes a SelectionBox
SB.Parent = c --makes ur pet the parent
SB.Adornee = look[i].Character --Selectes a person
SB.BrickColor = Color.new("Bright red") --makes the box red
wait(1) 
SB:Remvoe() ]]--