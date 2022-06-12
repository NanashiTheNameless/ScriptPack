--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 
sign = > 

sc = Instance.new("ScreenGui") 
sc.Name = "Calc" 
sc.Parent = pg 

tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0 
tx.Name = "Background" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 180, 0, 150)
tx.Size = UDim2.new(0, 200, 0, 300) 
tx.Text = " " 

tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0 
tx.Name = "Word" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 180, 0, 150)
tx.Size = UDim2.new(0, 200, 0, 40) 
tx.Text = " " 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "x" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 180, 0, 190)
tx.Size = UDim2.new(0, 50, 0, 40) 
tx.Text = "x" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sign = x 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "/" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 230, 0, 190)
tx.Size = UDim2.new(0, 50, 0, 40) 
tx.Text = "/" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sign = / 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "-" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 280, 0, 190)
tx.Size = UDim2.new(0, 50, 0, 40) 
tx.Text = "-" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sign = - 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "+" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 330, 0, 190)
tx.Size = UDim2.new(0, 50, 0, 40) 
tx.Text = "+" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sign = + 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "=" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 180, 0, 230)
tx.Size = UDim2.new(0, 50, 0, 40) 
tx.Text = "=" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
sign = > 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 230, 0, 230)
tx.Size = UDim2.new(0, 50, 0, 40) 
tx.Text = "reset" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
pg.Calc.Word.Text = " " sign " " 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 