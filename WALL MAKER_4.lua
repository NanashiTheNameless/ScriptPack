c/--[[Wall Maker]]------------------------------------------------------------------------------------------------------- 

gui = false 

me = "yfc" 

bigcolor = "Really black" 

smallcolor = "Really black" 

XSize = 10 

YSize = 5 

ZSize = 2 

Distance = 15 

if script.Parent.className ~= "HopperBin" then 

tool = Instance.new("HopperBin") 

tool.Parent = game.Players[me].Backpack 

tool.Name = "Wall Maker" 

script.Parent = tool 

end 

local tool = script.Parent 

tool.Selected:connect(function(mouse) 

if gui == false then 

gui = true 

screen = Instance.new("ScreenGui") 

screen.Parent = game.Players[me].PlayerGui 

b1 = Instance.new("TextButton") 

b1.Parent = screen 

b1.Size = UDim2.new(0.02, 0, 0.05, 0) 

b1.Position = UDim2.new(0.1, 0, 0.3, 0) 

b1.Text = ">" 

b1.MouseButton1Down:connect(function() 

XSize = XSize + 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "X increased to "..XSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b2 = Instance.new("TextButton") 

b2.Parent = screen 

b2.Size = UDim2.new(0.02, 0, 0.05, 0) 

b2.Position = UDim2.new(0, 0, 0.3, 0) 

b2.Text = "<" 

b2.MouseButton1Down:connect(function() 

XSize = XSize - 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "X decreased to "..XSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b3 = Instance.new("TextLabel") 

b3.Parent = screen 

b3.Size = UDim2.new(0.08, 0, 0.05, 0) 

b3.Position = UDim2.new(0.02, 0, 0.3, 0) 

b3.Text = "Size-X" 

b4 = Instance.new("TextButton") 

b4.Parent = screen 

b4.Size = UDim2.new(0.02, 0, 0.05, 0) 

b4.Position = UDim2.new(0.1, 0, 0.35, 0) 

b4.Text = ">" 

b4.MouseButton1Down:connect(function() 

YSize = YSize + 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Y increased to "..YSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b5 = Instance.new("TextButton") 

b5.Parent = screen 

b5.Size = UDim2.new(0.02, 0, 0.05, 0) 

b5.Position = UDim2.new(0, 0, 0.35, 0) 

b5.Text = "<" 

b5.MouseButton1Down:connect(function() 

YSize = YSize - 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Y decreased to "..YSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b6 = Instance.new("TextLabel") 

b6.Parent = screen 

b6.Size = UDim2.new(0.08, 0, 0.05, 0) 

b6.Position = UDim2.new(0.02, 0, 0.35, 0) 

b6.Text = "Size-Y" 

b7 = Instance.new("TextButton") 

b7.Parent = screen 

b7.Size = UDim2.new(0.02, 0, 0.05, 0) 

b7.Position = UDim2.new(0.1, 0, 0.4, 0) 

b7.Text = ">" 

b7.MouseButton1Down:connect(function() 

ZSize = ZSize + 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Z increased to "..ZSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b8 = Instance.new("TextButton") 

b8.Parent = screen 

b8.Size = UDim2.new(0.02, 0, 0.05, 0) 

b8.Position = UDim2.new(0, 0, 0.4, 0) 

b8.Text = "<" 

b8.MouseButton1Down:connect(function() 

ZSize = ZSize - 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Z decreased to "..ZSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b9 = Instance.new("TextLabel") 

b9.Parent = screen 

b9.Size = UDim2.new(0.08, 0, 0.05, 0) 

b9.Position = UDim2.new(0.02, 0, 0.4, 0) 

b9.Text = "Size-Z" 

b10 = Instance.new("TextButton") 

b10.Parent = screen 

b10.Size = UDim2.new(0.02, 0, 0.05, 0) 

b10.Position = UDim2.new(0.1, 0, 0.45, 0) 

b10.Text = ">" 

b10.MouseButton1Down:connect(function() 

Distance = Distance + 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Distance increased to "..Distance 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b11 = Instance.new("TextButton") 

b11.Parent = screen 

b11.Size = UDim2.new(0.02, 0, 0.05, 0) 

b11.Position = UDim2.new(0, 0, 0.45, 0) 

b11.Text = "<" 

b11.MouseButton1Down:connect(function() 

Distance = Distance - 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Distance decreased to "..Distance 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b12 = Instance.new("TextLabel") 

b12.Parent = screen 

b12.Size = UDim2.new(0.08, 0, 0.05, 0) 

b12.Position = UDim2.new(0.02, 0, 0.45, 0) 

b12.Text = "Distance" 

end 

mouse.Button1Down:connect(function() 

click = true 

while click == true do 

wall = Instance.new("Part") 

wall.Parent = workspace 

wall.Size = Vector3.new(XSize, YSize, ZSize) 

wall.Locked = true 

wall.CFrame = CFrame.new(tool.Parent.Parent.Character.Torso.Position, mouse.Hit.p) 

wall.CFrame = CFrame.new(wall.Position + (wall.CFrame.lookVector * Distance), mouse.Hit.p) 

wall.BrickColor = BrickColor.new(bigcolor) 

wall.Anchored = true 

wait (0.1) 

end 

end) 

mouse.Button1Up:connect(function() 

click = false 

end) 

end) 



 

