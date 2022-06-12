vip = "acb227" 
local players = {} 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 
char = plyr.Character 
script.Parent = char

part = Instance.new("Part")
part.Parent = char 
part.Shape = "Ball" 
part.Size = Vector3.new(2, 2, 2)
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Anchored = true
part.BrickColor = BrickColor.new("White")

par = Instance.new("Part")
par.Parent = char 
par.Shape = "Block" 
par.Size = Vector3.new(1, 1, 2)
par.TopSurface = "Smooth" 
par.BottomSurface = "Smooth" 
par.Anchored = true
par.BrickColor = BrickColor.new("Really black")
mesh = Instance.new("BlockMesh")
mesh.Parent = par
mesh.Scale = Vector3.new(0.7, 0.7, 0.7)

pa = Instance.new("Part")
pa.Parent = char 
pa.Shape = "Block" 
pa.Size = Vector3.new(1, 1, 2)
pa.TopSurface = "Smooth" 
pa.BottomSurface = "Smooth" 
pa.Anchored = true
pa.BrickColor = BrickColor.new("White")
mesh = Instance.new("BlockMesh")
mesh.Parent = pa
mesh.Scale = Vector3.new(0.35, 0.35, 0.7)

--Gui--------------lego---------------------------------------------------------------------------------------------- 
sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx1 = Instance.new("TextButton") 
tx1.BackgroundTransparency = 0.3 
tx1.Name = "Text - Reset" 
tx1.Parent = sc 
tx1.Position = UDim2.new(0, 200, 0, 125)
tx1.Size = UDim2.new(0, 20, 0, 20) 
tx1.Text = "+" 

tx2 = Instance.new("TextButton") 
tx2.BackgroundTransparency = 0.3 
tx2.Name = "Text - Reset" 
tx2.Parent = sc 
tx2.Position = UDim2.new(0, 200, 0, 125)
tx2.Size = UDim2.new(0, 20, 0, 20) 
tx2.Text = "-" 
tx2.Visible = false 

tx3 = Instance.new("TextButton") 
tx3.BackgroundTransparency = 0.3 
tx3.Name = "Text - Reset" 
tx3.Parent = sc 
tx3.Position = UDim2.new(0, 249.5, 0, 145)
tx3.Size = UDim2.new(0, 99, 0, 20) 
tx3.Text = "Actions" 
tx3.Visible = false 

tx4 = Instance.new("TextButton") 
tx4.BackgroundTransparency = 0.3 
tx4.Name = "Text - Reset" 
tx4.Parent = sc 
tx4.Position = UDim2.new(0, 249.5, 0, 145)
tx4.Size = UDim2.new(0, 99, 0, 20) 
tx4.Text = "Close" 
tx4.Visible = false 

tx5 = Instance.new("TextButton") 
tx5.BackgroundTransparency = 0.3 
tx5.Name = "Text - Reset" 
tx5.Parent = sc 
tx5.Position = UDim2.new(0, 249.5, 0, 165)
tx5.Size = UDim2.new(0, 99, 0, 20) 
tx5.Text = "Kill-self" 
tx5.Visible = false 

tx6 = Instance.new("TextButton") 
tx6.BackgroundTransparency = 0.3 
tx6.Name = "Text - Reset" 
tx6.Parent = sc 
tx6.Position = UDim2.new(0, 249.5, 0, 185)
tx6.Size = UDim2.new(0, 99, 0, 20) 
tx6.Text = "Kill-Others" 
tx6.Visible = false 

tx7 = Instance.new("TextButton") 
tx7.BackgroundTransparency = 0.3 
tx7.Name = "Text - Reset" 
tx7.Parent = sc 
tx7.Position = UDim2.new(0, 249.5, 0, 205)
tx7.Size = UDim2.new(0, 99, 0, 20) 
tx7.Text = "get base" 
tx7.Visible = false 

tx8 = Instance.new("TextButton") 
tx8.BackgroundTransparency = 0.3 
tx8.Name = "Text - Reset" 
tx8.Parent = sc 
tx8.Position = UDim2.new(0, 249.5, 0, 225)
tx8.Size = UDim2.new(0, 99, 0, 20) 
tx8.Text = "ff" 
tx8.Visible = false 

tx9 = Instance.new("TextButton") 
tx9.BackgroundTransparency = 0.3 
tx9.Name = "Text - Reset" 
tx9.Parent = sc 
tx9.Position = UDim2.new(0, 249.5, 0, 245)
tx9.Size = UDim2.new(0, 99, 0, 20) 
tx9.Text = "unff" 
tx9.Visible = false 

tx10 = Instance.new("TextButton") 
tx10.BackgroundTransparency = 0.3 
tx10.Name = "Text - Reset" 
tx10.Parent = sc 
tx10.Position = UDim2.new(0, 249.5, 0, 265)
tx10.Size = UDim2.new(0, 99, 0, 20) 
tx10.Text = "next" 
tx10.Visible = false 

tx11 = Instance.new("TextButton") 
tx11.BackgroundTransparency = 0.3 
tx11.Name = "Text - Reset" 
tx11.Parent = sc 
tx11.Position = UDim2.new(0, 249.5, 0, 285)
tx11.Size = UDim2.new(0, 99, 0, 20) 
tx11.Text = "back" 
tx11.Visible = false 

tx12 = Instance.new("TextButton") 
tx12.BackgroundTransparency = 0.3 
tx12.Name = "Text - Reset" 
tx12.Parent = sc 
tx12.Position = UDim2.new(0, 249.5, 0, 185)
tx12.Size = UDim2.new(0, 99, 0, 20) 
tx12.Text = "kick" 
tx12.Visible = false 

tx1.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tx1.Visible = false 
tx2.Visible = true 
tx3.Visible = true 
end 
end) 

tx2.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tx1.Visible = true 
tx2.Visible = false 
tx3.Visible = false 
end 
end) 

tx3.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tx1.Visible = false 
tx2.Visible = false 
tx3.Visible = false 
tx4.Visible = true 
wait(0.1) 
tx5.Visible = true 
wait(0.1) 
tx6.Visible = true 
wait(0.1) 
tx7.Visible = true 
wait(0.1) 
tx8.Visible = true 
wait(0.1) 
tx9.Visible = true 
wait(0.1) 
tx10.Visible = true 
wait(0.1) 
tx11.Visible = true 
end 
end) 

tx4.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tx1.Visible = false 
tx2.Visible = true 
tx3.Visible = true 
tx4.Visible = false 
tx5.Visible = false 
tx6.Visible = false 
tx7.Visible = false 
tx8.Visible = false 
tx9.Visible = false 
tx10.Visible = false 
tx11.Visible = false 
end 
end) 

tx5.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
for _, v in pairs(workspace:GetChildren()) do 
if v.Name == vip then 
v:BreakJoints()
end 
end 
end 
end) 

tx6.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name ~= vip then 
v.Character:BreakJoints()
end 
end 
end 
end) 

tx7.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
for _, v in pairs(game.Workspace:GetChildren()) do 
if v.Name == "Base" then 
v:remove() 
end 
end 
local base = Instance.new("Part", workspace) 
base.BrickColor = BrickColor.new("Bright green") 
base.Anchored = true 
base.Name = "Base" 
base.Size = Vector3.new(500, 1, 500) 
base.CFrame = CFrame.new(0, 0, 0) 
end 
end) 

tx8.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
for _, v in pairs(char:GetChildren()) do 
if v.Name == "ForceField" then 
v:remove() 
end 
end 
local ff = Instance.new("ForceField", char) 
end 
end) 

tx9.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
for _, v in pairs(char:GetChildren()) do 
if v.Name == "ForceField" then 
v:remove() 
end 
end 
end 
end) 

tx10.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tx9.Visible = false 
tx8.Visible = false 
tx7.Visible = false 
tx6.Visible = false 
tx5.Visible = false 
wait(0.1) 
tx12.Visible = true 
wait(0.1) 
tx13.Visible = true 
wait(0.1) 
tx14.Visible = true 
wait(0.1) 
tx15.Visible = true 
wait(0.1) 
tx16.Visible = true 
end 
end) 

tx11.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tx9.Visible = true 
tx8.Visible = true 
tx7.Visible = true 
tx6.Visible = true 
tx5.Visible = true 
tx12.Visible = false 
tx13.Visible = false 
tx14.Visible = false 
tx15.Visible = false 
tx16.Visible = false 
end 
end) 

tx12.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
for _,v in pairs(game.Players:GetChildren()) do 
table.insert(players, v.Name) 
for i = #players, 1 do 
local tx15 = Instance.new("TextButton") 
tx15.BackgroundTransparency = 0.3 
tx15.Name = "Text - Reset" 
tx15.Parent = sc 
tx15.Position = UDim2.new(0, 348.5, 0, 65+100*i)
tx15.Size = UDim2.new(0, 99, 0, 20) 
tx15.Text = "" ..v.Name.. " "
tx15.Visible = true 
wait() 
end 
end 
end 
end) 

while true do
wait()
part.CFrame = char.Head.CFrame + Vector3.new(0, 4, 0)
par.CFrame = part.CFrame * CFrame.new(0, 0, -0.455)
pa.CFrame = part.CFrame * CFrame.new(0, 0, -0.46)
end 