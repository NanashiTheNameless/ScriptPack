vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

i = Instance.new("IntValue")
i.Parent = plyr
i.Value = 99 
i.Name = "Attack" 

t = Instance.new("TextLabel") 
t.BackgroundTransparency = 0.3 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 200, 0, 145)
t.Size = UDim2.new(0, 99, 0, 20) 
t.Text = i.Value.. "" 
t.Visible = false 

pp = plyr.Attack 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Attack" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
t.Visible = true 
tx.Visible = false 
txb.Visible = true 
end 
end) 

txb = Instance.new("TextButton") 
txb.BackgroundTransparency = 0.3 
txb.Name = "Text - Reset" 
txb.Parent = sc 
txb.Position = UDim2.new(0, 200, 0, 125)
txb.Size = UDim2.new(0, 99, 0, 20) 
txb.Text = "Hide" 
txb.Visible = false 

txb.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
t.Visible = false 
tx.Visible = true 
txb.Visible = false 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

while wait() do 
t.Text = "Attack: " ..i.Value.. "/" ..i.Value 
end 