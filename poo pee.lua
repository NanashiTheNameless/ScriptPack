--Dog Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 600.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Poop" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
poop = Instance.new("Part") 
poop.BrickColor = BrickColor.new("Reddish brown") 
poop.Anchored = false 
poop.Locked = false 
poop.Parent = Game.Workspace 
poop.Size = Vector3.new(1, 1, 1) 
poop.Position = Game.Workspace.acb227.Tail.Position + Vector3.new(0, -1, 0) 
poop.TopSurface = "Smooth" 
poop.BottomSurface = "Smooth" 
poop.formFactor = "Plate"
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removepo" then 
sc:Remove() 
end 
end) 

--Dog Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 500.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Pee" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
poop = Instance.new("Part") 
poop.BrickColor = BrickColor.new("New Yeller") 
poop.Anchored = false 
poop.Locked = false 
poop.Parent = Game.Workspace 
poop.Size = Vector3.new(1, 1, 1) 
poop.Position = Game.Workspace.acb227..Tail.Position + Vector3.new(0, -1, 0) 
poop.TopSurface = "Smooth" 
poop.BottomSurface = "Smooth" 
poop.formFactor = "Plate"
--------------------------------------------------------
h = Instance.new("SpecialMesh") 
h.Parent = poop 
h.Scale = Vector3.new(2.5, 0.4, 2.5)
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removepe" then 
sc:Remove() 
end 
end) 

--Dog Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 700.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Lick" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227.Tounge.Transparency = 1 
wait(3) 
Game.Workspace.acb227.Tounge.Transparency = 0 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removel" then 
sc:Remove() 
end 
end) 

