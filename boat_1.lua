Owner = workspace.acb227
Base = Instance.new("Part") 
Base.CFrame = Base.CFrame + Vector3.new(0, 1, 15) 
Base.Parent = Owner
Base.Size = Vector3.new(10, 1, 10) 
Base.Anchored = true 
Base.Locked = true
Base.BrickColor = BrickColor.new("Really black")
S1 = Instance.new("Seat") 
S1.Parent = Owner
S1.CFrame = Base.CFrame + Vector3.new(0, 1, -3)
S1.Size = Vector3.new(2, 1, 2) 
S1.Anchored = false 
S1.Locked = true
S1.BrickColor = BrickColor.new("Really blue")
S2 = Instance.new("Seat") 
S2.Parent = Owner 
S2.CFrame = Base.CFrame + Vector3.new(0, 1, 3)
S2.Size = Vector3.new(2, 1, 2) 
S2.Anchored = false 
S2.Locked = true
S2.BrickColor = BrickColor.new("Really blue")
Wep1 = Instance.new("Part") 
Wep1.CFrame = Base.CFrame + Vector3.new(3, 0, -5) 
Wep1.Parent = Owner
Wep1.Size = Vector3.new(1, 1, 5) 
Wep1.Anchored = false 
Wep1.Locked = true
Wep1.Transparency = 1 
Wep1.BrickColor = BrickColor.new("Black")
Wep2 = Instance.new("Part") 
Wep2.CFrame = Base.CFrame + Vector3.new(-3, 0, -5) 
Wep2.Parent = Owner
Wep2.Size = Vector3.new(1, 1, 5) 
Wep2.Anchored = false 
Wep2.Transparency = 1 
Wep2.Locked = true
Wep2.BrickColor = BrickColor.new("Black")
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Weps on" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300.5, 0, 0.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Turn on weps" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Wep1.Transparency = 0 
Wep2.Transparency = 0 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Weps off" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 400.5, 0, 0.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Turn off weps" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Wep1.Transparency = 1 
Wep2.Transparency = 1 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Motion" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 500.5, 0, 0.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "v" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Base.CFrame = Base.CFrame + Vector3.new(0, 0, 1)
S1.CFrame = S1.CFrame + Vector3.new(0, 0, 1)
S2.CFrame = S2.CFrame + Vector3.new(0, 0, 1)
Wep1.CFrame = Wep1.CFrame + Vector3.new(0, 0, 1)
Wep2.CFrame = Wep2.CFrame + Vector3.new(0, 0, 1)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Motion" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 0.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "^" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Base.CFrame = Base.CFrame + Vector3.new(0, 0, -1)
S1.CFrame = S1.CFrame + Vector3.new(0, 0, -1)
S2.CFrame = S2.CFrame + Vector3.new(0, 0, -1)
Wep1.CFrame = Wep1.CFrame + Vector3.new(0, 0, -1)
Wep2.CFrame = Wep2.CFrame + Vector3.new(0, 0, -1)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Motion" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 100.5, 0, 0.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "<" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Base.CFrame = Base.CFrame + Vector3.new(1, 0, 0)
S1.CFrame = S1.CFrame + Vector3.new(1, 0, 0)
S2.CFrame = S2.CFrame + Vector3.new(1, 0, 0)
Wep1.CFrame = Wep1.CFrame + Vector3.new(1, 0, 0)
Wep2.CFrame = Wep2.CFrame + Vector3.new(1, 0, 0)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Motion" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300.5, 0, 20.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = ">" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Base.CFrame = Base.CFrame + Vector3.new(-1, 0, 0)
S1.CFrame = S1.CFrame + Vector3.new(-1, 0, 0)
S2.CFrame = S2.CFrame + Vector3.new(-1, 0, 0)
Wep1.CFrame = Wep1.CFrame + Vector3.new(-1, 0, 0)
Wep2.CFrame = Wep2.CFrame + Vector3.new(-1, 0, 0)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Motion" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300.5, 0, 60.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "ya script" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
m = Instance.new("Message") 
m.Parent = Game.Players.Scriptaxor 
m.Text = Yup 
wait(3) 
m:remove() 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Motion" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 400.5, 0, 20.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "^^" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Base.CFrame = Base.CFrame + Vector3.new(0, 1, 0)
S1.CFrame = S1.CFrame + Vector3.new(0, 1, 0)
S2.CFrame = S2.CFrame + Vector3.new(0, 1, 0)
Wep1.CFrame = Wep1.CFrame + Vector3.new(0, 1, 0)
Wep2.CFrame = Wep2.CFrame + Vector3.new(0, 1, 0)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Motion" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 500.5, 0, 20.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "vv" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Base.CFrame = Base.CFrame + Vector3.new(0, -1, 0)
S1.CFrame = S1.CFrame + Vector3.new(0, -1, 0)
S2.CFrame = S2.CFrame + Vector3.new(0, -1, 0)
Wep1.CFrame = Wep1.CFrame + Vector3.new(0, -1, 0)
Wep2.CFrame = Wep2.CFrame + Vector3.new(0, -1, 0)
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Fire" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 400.5, 0, 40.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Fire 1" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
clo = Wep1:clone() 
clo.Anchored = true 
clo.CFrame = Wep1.CFrame + Vector3.new(0, 0, 0) 
clo.Parent = workspace 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo:remove() 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Fire" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300.5, 0, 40.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Fire 2" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
clo = Wep2:clone() 
clo.Anchored = true 
clo.CFrame = Wep2.CFrame + Vector3.new(0, 0, 0) 
clo.Parent = workspace 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo:remove() 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Fire" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 500.5, 0, 40.2) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Fire both" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
clo = Wep1:clone() 
clo.Anchored = true 
clo.CFrame = Wep1.CFrame + Vector3.new(0, 0, 0) 
clo.Parent = workspace 
clo2 = Wep2:clone() 
clo2.Anchored = true 
clo2.CFrame = Wep2.CFrame + Vector3.new(0, 0, 0) 
clo2.Parent = workspace 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo.CFrame = clo.CFrame - Vector3.new(0, 0, 1) 
clo2.CFrame = clo2.CFrame - Vector3.new(0, 0, 1) 
wait() 
clo:remove() 
clo2:remove() 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
