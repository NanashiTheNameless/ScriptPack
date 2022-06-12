--Presetning a drop down made by acb227------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Drop down gui" 
sc.Parent = pg 
script.Parent = sc 
tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Drop" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Drop" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
a.Visible = true 
wait(0.2) 
b.Visible = true 
wait(0.2) 
c.Visible = true 
end 
end) 

a = Instance.new("TextButton") 
a.BackgroundTransparency = 0.3 
a.Name = "a" 
a.Parent = sc 
a.Position = UDim2.new(0, 200, 0, 145)
a.Size = UDim2.new(0, 99, 0, 20) 
a.Text = "Reset" 
a.Visible = false 
a.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
plyr.Character.Parent = workspace 
part = plyr.Character:findFirstChild("Head") 
part:remove() 
part = plyr.Character:findFirstChild("Torso") 
part:remove() 
part = plyr.Character:findFirstChild("Right Arm") 
part:remove() 
part = plyr.Character:findFirstChild("Left Arm") 
part:remove() 
part = plyr.Character:findFirstChild("Left Leg") 
part:remove() 
part = plyr.Character:findFirstChild("Right Leg") 
part:remove() 
hat = plyr.Character:findFirstChild("Humanoid") 
hat.Health = 0 
hat.MaxHealth = 0
plyr.Character:BreakJoints() 
end 
end) 

b = Instance.new("TextButton") 
b.BackgroundTransparency = 0.3 
b.Name = "b" 
b.Parent = sc 
b.Position = UDim2.new(0, 200, 0, 165)
b.Size = UDim2.new(0, 99, 0, 20) 
b.Text = "Kill all" 
b.Visible = false 
b.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
workspace:BreakJoints() 
end 
end) 

c = Instance.new("TextButton") 
c.BackgroundTransparency = 0.3 
c.Name = "Close" 
c.Parent = sc 
c.Position = UDim2.new(0, 200, 0, 185)
c.Size = UDim2.new(0, 99, 0, 20) 
c.Text = "close" 
c.Visible = false 

c.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
cl = script.Parent.Close 
cl.Visible = false 
wait(0.2) 
b.Visible = false 
wait(0.2) 
a.Visible = false 
end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Drop2" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 299, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Drop" 
tx.Visible = true 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
cl.Visible = true 
end 
end) 

cl = Instance.new("TextButton") 
cl.BackgroundTransparency = 0.3 
cl.Name = "Clo" 
cl.Parent = sc 
cl.Position = UDim2.new(0, 299, 0, 185)
cl.Size = UDim2.new(0, 99, 0, 20) 
cl.Text = "close" 
cl.Visible = false 

cl.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
cl2 = script.Parent.Clo 
cl2.Visible = false 
wait(0.2) 
b.Visible = false 
wait(0.2) 
a.Visible = false 
end 
end) 


plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 