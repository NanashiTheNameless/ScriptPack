script/t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Hologram" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.formFactor = "Plate" 
handlee.BrickColor = BrickColor.new("Mid grey") 
handlee.Size = Vector3.new(1, 1, 2) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.9, 0.2, 0.9) 
-----------------------------------------Brick2
local LL = Instance.new("Part") 
LL.Name = "Part" 
LL.Parent = t 
LL.formFactor = "Plate" 
LL.BrickColor = BrickColor.new("Bright blue") 
LL.Size = Vector3.new(1, 1, 1) 
LL.TopSurface = "Smooth" 
LL.BottomSurface = "Smooth" 
LL.Transparency = 0.4 
LL.Reflectance = 0 
LL.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = LL 
m.Scale = Vector3.new(0.2, 0.4, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = LL
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.1, -0.2, 0.5)
local b = Instance.new("Part") 
b.Name = "Part" 
b.Parent = t 
b.formFactor = "Plate" 
b.BrickColor = BrickColor.new("Bright blue") 
b.Size = Vector3.new(1, 1, 1) 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.Transparency = 0.4 
b.Reflectance = 0 
b.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = b 
m.Scale = Vector3.new(0.5, 0.05, 0.5) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = b
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.1, 0.5)
-----------------------------------------Brick2
local RL = Instance.new("Part") 
RL.Name = "Part" 
RL.Parent = t 
RL.formFactor = "Plate" 
RL.BrickColor = BrickColor.new("Bright blue") 
RL.Size = Vector3.new(1, 1, 1) 
RL.TopSurface = "Smooth" 
RL.BottomSurface = "Smooth" 
RL.Transparency = 0.4 
RL.Reflectance = 0 
RL.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = RL 
m.Scale = Vector3.new(0.2, 0.4, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = RL
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.1, -0.2, 0.5)
-----------------------------------------Brick2
local T = Instance.new("Part") 
T.Name = "Part" 
T.Parent = t 
T.formFactor = "Plate" 
T.BrickColor = BrickColor.new("Bright blue") 
T.Size = Vector3.new(1, 1, 1) 
T.TopSurface = "Smooth" 
T.BottomSurface = "Smooth" 
T.Transparency = 0.4 
T.Reflectance = 0 
T.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = T 
m.Scale = Vector3.new(0.4, 0.4, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = T
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.6, 0.5)
-----------------------------------------Brick2
local RA = Instance.new("Part") 
RA.Name = "Part" 
RA.Parent = t 
RA.formFactor = "Plate" 
RA.BrickColor = BrickColor.new("Bright blue") 
RA.Size = Vector3.new(1, 1, 1) 
RA.TopSurface = "Smooth" 
RA.BottomSurface = "Smooth" 
RA.Transparency = 0.4 
RA.Reflectance = 0 
RA.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = RA 
m.Scale = Vector3.new(0.2, 0.4, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = RA
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.3, -0.6, 0.5)
-----------------------------------------Brick2
local LA = Instance.new("Part") 
LA.Name = "Part" 
LA.Parent = t 
LA.formFactor = "Plate" 
LA.BrickColor = BrickColor.new("Bright blue") 
LA.Size = Vector3.new(1, 1, 1) 
LA.TopSurface = "Smooth" 
LA.BottomSurface = "Smooth" 
LA.Transparency = 0.4 
LA.Reflectance = 0 
LA.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = LA 
m.Scale = Vector3.new(0.2, 0.4, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = LA
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.3, -0.6, 0.5)
-----------------------------------------Brick2
local Head = Instance.new("Part") 
Head.Name = "Part" 
Head.Parent = t 
Head.formFactor = "Plate" 
Head.BrickColor = BrickColor.new("Bright blue") 
Head.Size = Vector3.new(1, 1, 1) 
Head.TopSurface = "Smooth" 
Head.BottomSurface = "Smooth" 
Head.Transparency = 0.4 
Head.Reflectance = 0 
Head.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = Head 
m.Scale = Vector3.new(0.2, 0.22, 0.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = Head
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.9, 0.5)
-----------------------------------------Brick2
local R = Instance.new("Part") 
R.Name = "Part" 
R.Parent = t 
R.formFactor = "Plate" 
R.BrickColor = BrickColor.new("Bright blue") 
R.Size = Vector3.new(1, 1, 1) 
R.TopSurface = "Smooth" 
R.BottomSurface = "Smooth" 
R.Transparency = 1 
R.Reflectance = 0 
R.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = R 
m.Scale = Vector3.new(0.2, 0.2, 0.4) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = R
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.3, -0.7, 0.6)
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Holo gui" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300, 0, 64) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Turn off" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
R.Transparency = 1 
Head.Transparency = 0.6 
T.Transparency = 0.6 
RA.Transparency = 0.6 
LA.Transparency = 0.6 
LL.Transparency = 0.6 
RL.Transparency = 0.6 
wait(1) 
Head.Transparency = 0.9 
T.Transparency = 0.9 
RA.Transparency = 0.9 
LA.Transparency = 0.9 
LL.Transparency = 0.9 
RL.Transparency = 0.9 
wait(1) 
Head.Transparency = 1 
T.Transparency = 1 
RA.Transparency = 1 
LA.Transparency = 1 
LL.Transparency = 1 
RL.Transparency = 1 
wait(1) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300, 0, 84) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Turn on" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
R.Transparency = 1 
Head.Transparency = 0.9 
T.Transparency = 0.9 
RA.Transparency = 0.9 
LA.Transparency = 0.9 
LL.Transparency = 0.9 
RL.Transparency = 0.9 
wait(1) 
Head.Transparency = 0.6 
T.Transparency = 0.6 
RA.Transparency = 0.6 
LA.Transparency = 0.6 
LL.Transparency = 0.6 
RL.Transparency = 0.6 
wait(1) 
Head.Transparency = 0.4 
T.Transparency = 0.4 
RA.Transparency = 0.4 
LA.Transparency = 0.4 
LL.Transparency = 0.4 
RL.Transparency = 0.4 
wait(1) 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300, 0, 104) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Point" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
RA.Transparency = 1 
R.Transparency = 0.4
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 300, 0, 124) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Normal" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
RA.Transparency = 0.4 
R.Transparency = 1
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 







script.Parent = Game.Players.acb227.Character


