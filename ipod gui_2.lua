--Gui------------------------------------------------------------------------------------------------------------ 
vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Headset" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 150)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Power On" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removee" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 175)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Power Off" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 