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
tx.Position = UDim2.new(0, 600.5, 0, 0) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Silencer off" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.yfc.Gun.Silencer.Transparency = 1
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
tx.Position = UDim2.new(0, 500.5, 0, 0) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Silencer on" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.yfc.Gun.Silencer.Transparency = 0
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
tx.Position = UDim2.new(0, 400.5, 0, 0) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Shoot" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.yfc.Gun.Shell.Transparency = 0
wait(0.5) 
Game.Workspace.yfc.Gun.Shell.Transparency = 1
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 




