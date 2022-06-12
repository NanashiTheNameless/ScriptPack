part = Instance.new("Part") 
part.Size = Vector3.new(15, 1, 15) 
part.Parent = workspace.acb227 
part.CanCollide = false
part.Transparency = 1 
part.Anchored = true 
part.Friction = 1 

Color1 = "Bright orange" 
Color2 = "Really black" 

dec = Instance.new("Texture") 
dec.Texture = "http://www.roblox.com/asset/?id=34933123" 
dec.Face = "Top" 
dec.StudsPerTileV = 10 
dec.StudsPerTileU = 10 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "On" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "On" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
dec.Parent = part 
part.Transparency = 0 
part.CanCollide = true 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Off" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Off" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
dec.Parent = nil 
part.Transparency = 1 
part.CanCollide = false 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "shrink" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 145)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Shrink" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
part.Size = part.Size - Vector3.new(2, 0, 2)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "grow" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300, 0, 145)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Grow" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
part.Size = part.Size + Vector3.new(2, 0, 2)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "stop" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 165)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Stop" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
dec.Parent = nil 
Color1 = "Mid grey" 
Color2 = "Mid grey" 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "start" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300, 0, 165)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Start" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
dec.Parent = part 
Color1 = "Bright orange" 
Color2 = "Really black" 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

while true do 
part.CFrame = workspace.acb227.Torso.CFrame - Vector3.new(0, 3.5, 0) 
part.BrickColor = BrickColor.new(Color1) 
dec.Texture = "http://www.roblox.com/asset/?id=34933123" 
wait(0.1) 
part.CFrame = workspace.acb227.Torso.CFrame - Vector3.new(0, 3.5, 0) 
part.BrickColor = BrickColor.new(Color2) 
dec.Texture = ""
wait(0.1) 
end 