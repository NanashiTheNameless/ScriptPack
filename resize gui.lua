--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.5 
tx.Name = "Stats" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 200)
tx.Size = UDim2.new(0, 199, 0, 200) 
tx.Text = "Brick" 
tx.TextColor3 = Color3.new(1, 1, 1)
tx.BackgroundColor3 = Color3.new(0, 0, 0) 

t = Instance.new("TextLabel") 
t.BackgroundTransparency = 0.3 
t.Name = "Stats" 
t.Parent = sc 
t.Position = UDim2.new(0, 0, 0, 200)
t.Size = UDim2.new(0, 0, 0, 200) 
t.Text = "" 
t.BackgroundColor3 = Color3.new(200, 80, 200) 

he = Instance.new("TextLabel") 
he.BackgroundTransparency = 0.3 
he.Name = "Stats" 
he.Parent = sc 
he.Position = UDim2.new(0, 0, 0, 180)
he.Size = UDim2.new(0, 99, 0, 20) 
he.Text = "" ..plyr.Character.Humanoid.Health 
he.BackgroundColor3 = Color3.new(200, 80, 200) 

w = Instance.new("TextLabel") 
w.BackgroundTransparency = 0.3 
w.Name = "Stats" 
w.Parent = sc 
w.Position = UDim2.new(0, 0, 0, 160)
w.Size = UDim2.new(0, 99, 0, 20) 
w.Text = "" ..plyr.Character.Humanoid.WalkSpeed 
w.BackgroundColor3 = Color3.new(200, 60, 180) 

mh = Instance.new("TextLabel") 
mh.BackgroundTransparency = 0.3 
mh.Name = "Stats" 
mh.Parent = sc 
mh.Position = UDim2.new(0, 0, 0, 140)
mh.Size = UDim2.new(0, 99, 0, 20) 
mh.Text = "" ..plyr.Character.Humanoid.MaxHealth 
mh.BackgroundColor3 = Color3.new(200, 40, 160) 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
t.Size = UDim2.new(0, 10, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 20, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 30, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 40, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 50, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 60, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 70, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 80, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 90, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 100, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 110, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 120, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 130, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 140, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 150, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 160, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 170, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 180, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 190, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 199, 0, 200) 
wait(1) 
t.Size = UDim2.new(0, 0, 0, 200) 
wait(1) 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "remove" then 
sc:Remove() 
end 
end) 

while true do 
he.Text = "" ..plyr.Character.Humanoid.Health 
w.Text = "" ..plyr.Character.Humanoid.WalkSpeed 
mh.Text = "" ..plyr.Character.Humanoid.MaxHealth 
wait(0.001) 
end 