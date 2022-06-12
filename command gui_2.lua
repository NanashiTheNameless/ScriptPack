--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

damage = 0 
per = "who?" 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 50, 0, 225)
tx.Size = UDim2.new(0, 40, 0, 20) 
tx.Text = "Enter" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
if t.Text == "reset" then 
plyr.Character:BreakJoints() 
end 
if t.Text == "to base" then 
plyr.Character.Torso.CFrame = CFrame.new(0, 3, 0)
end 
if t.Text == "hurt" then 
gui3.Visible = true 
gui4.Visible = true 
end 
if t.Text == "kill" then 
gui1.Visible = true 
gui2.Visible = true 
end 
end 
end) 

t = Instance.new("TextBox") 
t.BackgroundTransparency = 0.5 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 50, 0, 245)
t.Size = UDim2.new(0, 300, 0, 20) 
t.Text = "Enter command here" 

gui1 = Instance.new("TextButton") 
gui1.BackgroundTransparency = 0 
gui1.Name = "Text - Reset" 
gui1.Parent = sc 
gui1.Position = UDim2.new(0, 50, 0, 265)
gui1.Size = UDim2.new(0, 40, 0, 20) 
gui1.Text = "Kill" 
gui1.Visible = false 

gui2 = Instance.new("TextBox") 
gui2.BackgroundTransparency = 0.5 
gui2.Name = "Text - Reset" 
gui2.Parent = sc 
gui2.Position = UDim2.new(0, 50, 0, 285)
gui2.Size = UDim2.new(0, 300, 0, 20) 
gui2.Text = "Kill who?" 
gui2.Visible = false 

gui3 = Instance.new("TextButton") 
gui3.BackgroundTransparency = 0 
gui3.Name = "Text - Reset" 
gui3.Parent = sc 
gui3.Position = UDim2.new(0, 50, 0, 265)
gui3.Size = UDim2.new(0, 40, 0, 20) 
gui3.Text = "Proceed" 
gui3.Visible = false 

gui4 = Instance.new("TextBox") 
gui4.BackgroundTransparency = 0.5 
gui4.Name = "Text - Reset" 
gui4.Parent = sc 
gui4.Position = UDim2.new(0, 50, 0, 285)
gui4.Size = UDim2.new(0, 300, 0, 20) 
gui4.Text = "Hurt who?" 
gui4.Visible = false 

gui5 = Instance.new("TextButton") 
gui5.BackgroundTransparency = 0 
gui5.Name = "Text - Reset" 
gui5.Parent = sc 
gui5.Position = UDim2.new(0, 50, 0, 265)
gui5.Size = UDim2.new(0, 40, 0, 20) 
gui5.Text = "Proceed" 
gui5.Visible = false 

gui6 = Instance.new("TextBox") 
gui6.BackgroundTransparency = 0.5 
gui6.Name = "Text - Reset" 
gui6.Parent = sc 
gui6.Position = UDim2.new(0, 50, 0, 285)
gui6.Size = UDim2.new(0, 300, 0, 20) 
gui6.Text = "How much damage?" 
gui6.Visible = false 

gui7 = Instance.new("TextButton") 
gui7.BackgroundTransparency = 0 
gui7.Name = "Text - Reset" 
gui7.Parent = sc 
gui7.Position = UDim2.new(0, 50, 0, 265)
gui7.Size = UDim2.new(0, 40, 0, 20) 
gui7.Text = "Finish" 
gui7.Visible = false 

gui1.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
ded = game.Players:findFirstChild(gui2.Text) 
wait(0)
ded.Character:BreakJoints() 
wait(2) 
gui1.Visible = false 
gui2.Visible = false 
end 
end) 

gui3.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
ded = game.Players:findFirstChild(gui4.Text) 
wait(0)
per = ded 
wait(2) 
gui3.Visible = false 
gui4.Visible = false 
gui5.Visible = true 
gui6.Visible = true 
end 
end) 

gui5.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
damage = game.Players:findFirstChild(gui6.Text) 
wait(0)
wait(2) 
gui5.Visible = false 
gui6.Visible = false 
gui7.Visible = true 
end 
end) 

gui7.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
wait(0)
per.Character.Humanoid.Health = per.Character.Humanoid.Health - damage 
wait(2) 
gui7.Visible = false 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "remove" then 
sc:Remove() 
end 
end) 