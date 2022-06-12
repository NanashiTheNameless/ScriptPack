c/part = {"When i was a young boy....", "I made it together with friends"}
script.Parent = game.workspace.acb227 
m = Instance.new("Model") 
m.Parent = game.Workspace.acb227
m.Name = " "
h = Instance.new("Humanoid") 
h.Parent = m 
h.MaxHealth = 100
h.Health = 100
h.MaxHealth = 0 
c = Instance.new("Part") 
c.Parent = m 
c.Name = "Head" 
c.CFrame = game.Workspace.acb227.Head.CFrame
c.Transparency = 0 
c.Reflectance = 0 
c.Anchored = true 
c.BrickColor = BrickColor.new ("Really black") 
c.Size = Vector3.new(2,1,2) 
c.TopSurface = "Smooth" 
c.BottomSurface = "Smooth" 
c.Locked = true 

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = m 
guimain2.Adornee = c 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 2, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(1, 0, 0, 30) 
T3.Position = UDim2.new(-0.43, 0, 0, 0) 
T3.Text = "Sing: " ..part[1] 
T3.BackgroundTransparency = 1
T3.BackgroundColor = BrickColor.new(1003)
T3.TextColor = BrickColor.new(1003) 
T3.FontSize = "Size12"

while true do 
wait()
T3.Text = "Sing: " ..part[1] 
wait(2.5) 
T3.Text = "Sing: " ..part[2] 
wait(2.5) 
end 