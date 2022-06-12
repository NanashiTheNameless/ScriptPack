me = Game.Players.LocalPlayer

plyr = me
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Guis" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.6 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 250)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Opitions" 
tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
tx.Visible = false 
txx.Visible = true 
t.Visible = true 
tn.Visible = true 
te.Visible = true 
tnx.Visible = true 
end 
end) 

txx = Instance.new("TextButton") 
txx.BackgroundTransparency = 0.6 
txx.Name = "Text - Reset" 
txx.Parent = sc 
txx.Position = UDim2.new(0, 0, 0, 250)
txx.Size = UDim2.new(0, 99, 0, 20) 
txx.Text = "Close" 
txx.Visible = false 
txx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txx.Visible = false 
tx.Visible = true 
tn.Visible = false 
tnx.Visible = false 
t.Visible = false 
te.Visible = false 
end 
end) 

te = Instance.new("TextButton") 
te.BackgroundTransparency = 0.6 
te.Name = "Text - Reset" 
te.Parent = sc 
te.Position = UDim2.new(0, 110, 0, 270)
te.Size = UDim2.new(0, 99, 0, 20) 
te.Text = "Brick" 
te.Visible = false 
te.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
shape = "Brick" 
end 
end) 

tnx = Instance.new("TextButton") 
tnx.BackgroundTransparency = 0.6 
tnx.Name = "Text - Reset" 
tnx.Parent = sc 
tnx.Position = UDim2.new(0, 110, 0, 310)
tnx.Size = UDim2.new(0, 99, 0, 20) 
tnx.Text = "Size - S" 
tnx.Visible = false 
tnx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
size = Vector3.new(5,mes.Scale.Y,1) 
end 
end) 

tn = Instance.new("TextButton") 
tn.BackgroundTransparency = 0.6 
tn.Name = "Text - Reset" 
tn.Parent = sc 
tn.Position = UDim2.new(0, 110, 0, 290)
tn.Size = UDim2.new(0, 99, 0, 20) 
tn.Text = "Size - N" 
tn.Visible = false 
tn.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
size = Vector3.new(5,1,mes.Scale.Z) 
end 
end) 

t = Instance.new("TextButton") 
t.BackgroundTransparency = 0.6 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 110, 0, 250)
t.Size = UDim2.new(0, 99, 0, 20) 
t.Text = "Pipe" 
t.Visible = false 
t.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
mesh = "CylinderMesh" 
end 
end) 