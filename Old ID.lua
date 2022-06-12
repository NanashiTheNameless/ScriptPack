local children = game.Players:GetChildren() 
for c = 1, #children do 
local guimain = Instance.new("BillboardGui") 
guimain.Parent = game.Workspace 
guimain.Adornee = children[c].Character.Head 
guimain.Size = UDim2.new(0, 250, 0, 10) 
guimain.StudsOffset = (Vector3.new(0, 2, 0)) 

T1 = Instance.new("TextLabel") 
T1.Text = "im " ..children[c].Name  
T1.Parent = guimain 
T1.Size = UDim2.new(0.700000167, 0, 0, 20) 
T1.BackgroundColor = BrickColor:Black() 
T1.TextColor = BrickColor:White() 
T1.Visible = true 

T2 = Instance.new("ImageLabel") 
T2.Parent = guimain 
T2.Transparency = 1 
T2.Size = UDim2.new(0, 50, 0, 50) 
T2.Position = UDim2.new(0.699999928, -25, 0, -15) 
T2.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username=" ..children[c].Name 
T2.BackgroundColor = BrickColor:Black() 

T3 = Instance.new("ImageLabel") 
T3.Parent = guimain 
T3.Transparency = 1 
T3.Size = UDim2.new(0, 50, 0, 50) 
T3.Position = UDim2.new(0, -25, 0, -15) 
T3.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username=" ..children[c].Name 
T3.BackgroundColor = BrickColor:Black() 

end 