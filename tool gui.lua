bin = Instance.new("Tool") 
bin.Parent = Game.Players.acb227.Backpack 
bin.Name = "gui tool" 
script.Parent = bin 
Tool = bin 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

s = Instance.new("ScreenGui") 
s.Name = "gui" 
s.Parent = pg 

sc = Instance.new("Frame") 
sc.Parent = s 
sc.Visible = false 

tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0 
tx.Name = "Text - Reset" 
tx.BackgroundColor3 = Color3.new(0, 0, 0)
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 0)
tx.Size = UDim2.new(0, 300, 0, 200) 
tx.Text = "" 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "Text - Reset" 
tx.BackgroundColor3 = Color3.new(1, 1, 1)
tx.Parent = sc 
tx.Position = UDim2.new(0, 10, 0, 10)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Part1" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "Text - Reset" 
tx.BackgroundColor3 = Color3.new(1, 1, 1)
tx.Parent = sc 
tx.Position = UDim2.new(0, 10, 0, 35)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Part2" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "Text - Reset" 
tx.BackgroundColor3 = Color3.new(1, 1, 1)
tx.Parent = sc 
tx.Position = UDim2.new(0, 10, 0, 60)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Part3" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

function notool() 
sc.Visible = false 
end 

function tool() 
sc.Visible = true 
end 

Tool.Equipped:connect(tool)
Tool.Unequipped:connect(notool) 