local admin = game.Players.acb227 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(40, 5005, 40) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(5, 3, 0) 
end 
end 
end 
end 



admin.Chatted:connect(onChatted)
script.Parent = workspace.acb227
Floor = Instance.new("Part") 
Floor.Position = Vector3.new(40, 5000, 40) 
Floor.Parent = workspace.acb227
Floor.Size = Vector3.new(35, 1, 45) 
Floor.Anchored = true 
Floor.Locked = true
Floor.BrickColor = BrickColor.new("Black")
a = Instance.new("Part") 
a.Position = Vector3.new(57, 5000, 52.2) 
a.Parent = workspace.acb227
a.Size = Vector3.new(1, 15, 20.5) 
a.Anchored = true 
a.Locked = true
a.BrickColor = BrickColor.new("Black") 
path = Instance.new("Part") 
path.CFrame = CFrame.new(67.5, 4999.9, 39) 
path.Parent = workspace.acb227
path.Size = Vector3.new(20, 1, 5.9) 
path.Anchored = true 
path.Locked = true
path.BrickColor = BrickColor.new("Black") 
path.Transparency = 0 
e = Instance.new("Part") 
e.Position = Vector3.new(57, 5000, 26.8) 
e.Parent = workspace.acb227
e.Size = Vector3.new(1, 15, 18.5) 
e.Anchored = true 
e.Locked = true
e.BrickColor = BrickColor.new("Black") 
b = Instance.new("Part") 
b.Position = Vector3.new(23, 5000, 40) 
b.Parent = workspace.acb227
b.Size = Vector3.new(1, 15, 45) 
b.Anchored = true 
b.Locked = true
b.BrickColor = BrickColor.new("Black") 
c = Instance.new("Part") 
c.Position = Vector3.new(40, 5000, 18) 
c.Parent = workspace.acb227
c.Size = Vector3.new(33, 15, 1) 
c.Anchored = true 
c.Locked = true
c.BrickColor = BrickColor.new("Black") 
d = Instance.new("Part") 
d.Position = Vector3.new(40, 5000, 62) 
d.Parent = workspace.acb227
d.Size = Vector3.new(33, 15, 1) 
d.Anchored = true 
d.Locked = true
d.BrickColor = BrickColor.new("Black") 
door = Instance.new("Part") 
door.Position = Vector3.new(57, 5000, 39) 
door.Parent = workspace.acb227
door.Size = Vector3.new(1, 15, 5.9) 
door.Anchored = true 
door.Locked = true
door.BrickColor = BrickColor.new("Black") 
Roof = Instance.new("Part") 
Roof.Position = Vector3.new(40, 5000, 40) 
Roof.Parent = workspace.acb227
Roof.Size = Vector3.new(35, 1, 45) 
Roof.Anchored = true 
Roof.Locked = true
Roof.BrickColor = BrickColor.new("Black")

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200.5, 0, 175) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Tele in" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.workspace.acb227.Torso.CFrame = Floor.CFrame + Vector3.new(0, 5, 0)
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200.5, 0, 200) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Tele out"  

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.workspace.acb227.Torso.CFrame = workspace.Base.CFrame + Vector3.new(0, 5, 0)
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200.5, 0, 225) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Windows open"  

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
a.Transparency = 0.4 
b.Transparency = 0.4 
c.Transparency = 0.4 
d.Transparency = 0.4 
e.Transparency = 0.4 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200.5, 0, 250) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Windows close"  

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
a.Transparency = 0 
b.Transparency = 0 
c.Transparency = 0 
d.Transparency = 0 
e.Transparency = 0
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200.5, 0, 275) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Open Door"  

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
door.Transparency = 0.4 
door.CanCollide = false 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200.5, 0, 300) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Close Door"  

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
door.Transparency = 0 
door.CanCollide = true 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200.5, 0, 350) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Path"  

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(-1, 0, 0)
wait() 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200.5, 0, 329.5) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Path"  

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
path.CFrame = path.CFrame + Vector3.new(1, 0, 0)
wait() 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 
