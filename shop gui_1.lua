--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Shop" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0 
tx.Name = "Open" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 200)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Open Shop" 
tx.Visible = true 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txx.Visible = true 
t.Visible = true  
tx.Visible = false 
end 
end) 

txx = Instance.new("TextLabel") 
txx.BackgroundTransparency = 0 
txx.Name = "Text - Reset" 
txx.Parent = sc 
txx.Position = UDim2.new(0, 99, 0, 100)
txx.Size = UDim2.new(0, 500, 0, 300) 
txx.Text = " " 
txx.Visible = false 

t = Instance.new("TextButton") 
t.BackgroundTransparency = 0 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 0, 0, 200)
t.Size = UDim2.new(0, 99, 0, 20) 
t.Text = "Close Shop" 
t.Visible = false 

t.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txx.Visible = false 
t.Visible = false  
tx.Visible = true 
end 
end) 

t = Instance.new("TextButton") 
t.BackgroundTransparency = 0 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 250, 0, 150)
t.Size = UDim2.new(0, 99, 0, 20) 
t.Text = "Sword one" 
t.Visible = false 

t.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local playeritem = script.Parent.Parent.Parent.Parent.Parent.StarterGear:findFirstChild("?")--Change ? to the name of your weapon 
	if playeritem == nil then 
	local shopitem = game.Lighting.wep:clone()--Change wep to the Name of your weapon
		if (script.Parent.Parent.Parent.Parent.Parent.leaderstats.KOs.Value >= 5) then--Change KOs to your money count and change 5 to the amount you want it to be
		local si = game.Lighting.wep:clone()--Change wep to the name of your weapon
		shopitem.Parent = script.Parent.Parent.Parent.Parent.Parent.StarterGear 
		si.Parent = script.Parent.Parent.Parent.Parent.Parent.Backpack 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 