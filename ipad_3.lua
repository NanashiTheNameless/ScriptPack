hop = Instance.new("HopperBin") 
hop.Name = "Ipod" 
hop.Parent = Game.Players.yfc.Backpack 
script.Parent = Game.Players.yfc.Character 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Game.Players.yfc.Character  
h.Size = Vector3.new(2,2,2) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.8, 1.1, 0.2) 
w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character.Torso 
w1.Part0 = h 
w1.Part1 = Game.Players.yfc.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -1, 1.5) 
local ha = Instance.new("Part") 
ha.Name = "Handle" 
ha.Parent = Game.Players.yfc.Character  
ha.Size = Vector3.new(2,2,2) 
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new("Dark stone grey") 
ha.TopSurface = "Smooth" 
ha.BottomSurface = "Smooth" 
ha.Transparency = 0 
ha.Reflectance = 0 
m = Instance.new("BlockMesh") 
m.Parent = ha 
m.Scale = Vector3.new(0.7, 1, 0.2) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = ha 
w1.Part1 = h
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, -0.1) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character["Right Arm"] 
w1.Part0 = Game.Players.yfc.Character["Right Arm"] 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, -1) + Vector3.new(1, -1.5, 0) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character["Left Arm"] 
w1.Part0 = Game.Players.yfc.Character["Left Arm"] 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 1) + Vector3.new(-1, -1.5, 0) 

dec = Instance.new("Decal") 
dec.Texture = "http://www.roblox.com/asset/?id=19571247" 
dec.Face = "Back" 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Gui" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 175) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "On" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
ha.Reflectance = 0.5 
dec.Parent = ha 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Gui" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 195) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Off" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
ha.Reflectance = 0 
dec:remove() 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Gui" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200.5, 0, 215) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Story1" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tx1.Visible = false
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Gui" 
sc.Parent = pg 

tx1 = Instance.new("TextLable") 
tx1.BackgroundTransparency = 0.3 
tx1.Name = "Text - Reset" 
tx1.Parent = sc 
tx1.Position = UDim2.new(0, 200.5, 0, 235) 
tx1.Size = UDim2.new(0, 99, 0, 20) 
tx1.Text = "Once 5 years ago in a time when man was 5 years younger." 
Tx1.Visible = false

plyr.Chatted:connect(function(msg) 
if msg == "removeb" then 
sc:Remove() 
end 
end) 
