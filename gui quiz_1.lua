player = "acb227" 
vip = player 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

s = Instance.new("Frame") 
s.Parent = sc 
s.Name = "Frame" 

sa = Instance.new("Frame") 
sa.Parent = sc 
sa.Name = "Frame" 
sa.Visible = false 

sab = Instance.new("Frame") 
sab.Parent = sc 
sab.Name = "Frame" 
sab.Visible = false 

tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0 
tx.Name = "Text - Reset" 
tx.Parent = s 
tx.Position = UDim2.new(0, 100, 0, 100)
tx.Size = UDim2.new(0, 500, 0, 500) 
tx.Text = "" 

tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0 
tx.Name = "Text - Reset" 
tx.Parent = sa 
tx.Position = UDim2.new(0, 100, 0, 100)
tx.Size = UDim2.new(0, 500, 0, 500) 
tx.Text = "" 

b1 = Instance.new("TextButton") 
b1.BackgroundTransparency = 0 
b1.Name = "button" 
b1.Parent = s 
b1.Position = UDim2.new(0, 100, 0, 100)
b1.Size = UDim2.new(0, 99, 0, 99) 
b1.Text = "Telamon" 

b1.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
start1() 
end 
end) 

b1 = Instance.new("TextButton") 
b1.BackgroundTransparency = 0 
b1.Name = "button" 
b1.Parent = sa 
b1.Position = UDim2.new(0, 100, 0, 100)
b1.Size = UDim2.new(0, 99, 0, 99) 
b1.Text = "Roblox" 

b1.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
next2() 
end 
end) 

b2 = Instance.new("TextButton") 
b2.BackgroundTransparency = 0 
b2.Name = "button" 
b2.Parent = s 
b2.Position = UDim2.new(0, 100, 0, 250)
b2.Size = UDim2.new(0, 99, 0, 99) 
b2.Text = "Robux" 

b2.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
start1() 
end 
end) 

b2 = Instance.new("TextButton") 
b2.BackgroundTransparency = 0 
b2.Name = "button" 
b2.Parent = sa 
b2.Position = UDim2.new(0, 100, 0, 250)
b2.Size = UDim2.new(0, 99, 0, 99) 
b2.Text = "Telamon" 

b2.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
start2() 
end 
end) 

b3 = Instance.new("TextButton") 
b3.BackgroundTransparency = 0 
b3.Name = "button" 
b3.Parent = s 
b3.Position = UDim2.new(0, 100, 0, 400)
b3.Size = UDim2.new(0, 99, 0, 99) 
b3.Text = "acb227" 

b3.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
next1() 
end 
end) 

b3 = Instance.new("TextButton") 
b3.BackgroundTransparency = 0 
b3.Name = "button" 
b3.Parent = sa 
b3.Position = UDim2.new(0, 100, 0, 400)
b3.Size = UDim2.new(0, 99, 0, 99) 
b3.Text = "BuilderMan" 

b3.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
next2() 
end 
end) 

question = Instance.new("TextLabel") 
question.BackgroundTransparency = 0 
question.Name = "button" 
question.Parent = s 
question.Position = UDim2.new(0, 300, 0, 250)
question.Size = UDim2.new(0, 200, 0, 40) 
question.Text = "Question: Who made this?" 

question = Instance.new("TextLabel") 
question.BackgroundTransparency = 0 
question.Name = "button" 
question.Parent = sa 
question.Position = UDim2.new(0, 300, 0, 250)
question.Size = UDim2.new(0, 200, 0, 40) 
question.Text = "Question: Who makes almost all of roblox's hats?" 

function start1() 
wait(0.1) 
s.Visible = false 
wait(2) 
s.Visible = true 
end 

function start2() 
wait(0.1) 
sa.Visible = false 
wait(2) 
sa.Visible = true 
end 

function next1() 
wait(0.1) 
s.Visible = false 
wait(2) 
sa.Visible = true 
end 

function next2() 
wait(0.1) 
sa.Visible = false 
wait(2) 
sab.Visible = true 
end 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 