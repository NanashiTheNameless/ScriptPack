--Gui------------------------------------------------------------------------------------------------------------ 
vip = Game.Players.acb227 
plyr = game.Players:findFirstChild(vip) 
pg = vip:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Fight - Button" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 600.5, 0, 0) 
tx.Size = UDim2.new(0, 99, 0, 1) 
tx.Text = "Fight" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tool = Instance.new("Tool")
tool.Parent = vip.BackPack
vip.Character.ForceField:Remove() 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removefi" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = Game.Players.acb227 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Fight - Button" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 600.5, 0, 0) 
tx.Size = UDim2.new(0, 99, 0, 0) 
tx.Text = "Shop" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tool = Instance.new("ForceField")
tool.Parent = vip.Charecter
vip.BackPack.Tool:Remove() 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removesh" then 
sc:Remove() 
end 
end) 