who = "acb227" 
players = game:GetService('Players') 
plyr = players[who] 
char = plyr.Character 
pg = plyr.PlayerGui 
local lvl = 1 
local exp = 0 
local gold = 500 

pcall(function() pg.RpgGui:remove() end) 
local gui = Instance.new("ScreenGui", pg) 
gui.Name = "RpgGui" 

local back = Instance.new("Frame", gui) 
back.Position = UDim2.new(0, 0, 0, 200) 
back.Size = UDim2.new(0, 200, 0, 200) 
back.BorderSizePixel = 0 
back.BackgroundColor = BrickColor.new("Reddish brown") 
back.BackgroundTransparency = 0.15
local id = Instance.new("TextLabel", back) 
id.Position = UDim2.new(0, 0, 0, 0) 
id.Size = UDim2.new(0, 200, 0, 20) 
id.BorderSizePixel = 0 
id.BackgroundColor = BrickColor.new("Really black") 
id.BackgroundTransparency = 0.5 
id.TextColor = BrickColor.new("White") 
id.Text = "stats: lvl/" ..lvl.. " exp/" ..exp.. " gold/" ..gold.. " " 
id.TextWrap = true 
local shop = Instance.new("TextButton", back) 
shop.Position = UDim2.new(0, 0, 0, 25) 
shop.Size = UDim2.new(0, 200, 0, 40) 
shop.BorderSizePixel = 0 
shop.BackgroundColor = BrickColor.new("Really black") 
shop.BackgroundTransparency = 0.5 
shop.TextColor = BrickColor.new("White") 
shop.Text = "Shop" 
shop.TextWrap = true 
shop.AutoButtonColor = false 
local eqp = Instance.new("TextButton", back) 
eqp.Position = UDim2.new(0, 0, 0, 70) 
eqp.Size = UDim2.new(0, 200, 0, 40) 
eqp.BorderSizePixel = 0 
eqp.BackgroundColor = BrickColor.new("Really black") 
eqp.BackgroundTransparency = 0.5 
eqp.TextColor = BrickColor.new("White") 
eqp.Text = "Equipment" 
eqp.TextWrap = true 
eqp.AutoButtonColor = false 
local shop2 = Instance.new("Frame", gui) 
shop2.Position = UDim2.new(0, -200, 0, -200) 
shop2.Size = UDim2.new(0, 200, 0, 200) 
shop2.BorderSizePixel = 0 
shop2.BackgroundColor = BrickColor.new("Reddish brown") 
shop2.BackgroundTransparency = 0.15
shop2.Visible = false 
local shop3 = Instance.new("TextLabel", shop2) 
shop3.Position = UDim2.new(0, 0, 0, 0) 
shop3.Size = UDim2.new(0, 200, 0, 25) 
shop3.BorderSizePixel = 0 
shop3.BackgroundColor = BrickColor.new("Really black") 
shop3.BackgroundTransparency = 0.5 
shop3.TextColor = BrickColor.new("White") 
shop3.Text = "Shop" 
shop3.TextWrap = true 
local shop4 = Instance.new("TextButton", shop2) 
shop4.Position = UDim2.new(0, 0, 0, 30) 
shop4.Size = UDim2.new(0, 200, 0, 25) 
shop4.BorderSizePixel = 0 
shop4.BackgroundColor = BrickColor.new("Really black") 
shop4.BackgroundTransparency = 0.5 
shop4.TextColor = BrickColor.new("White") 
shop4.Text = "Bronze sword - 100" 
shop4.TextWrap = true 
shop4.AutoButtonColor = false 
local shop5 = Instance.new("TextButton", shop2) 
shop5.Position = UDim2.new(0, 0, 0, 60) 
shop5.Size = UDim2.new(0, 200, 0, 25) 
shop5.BorderSizePixel = 0 
shop5.BackgroundColor = BrickColor.new("Really black") 
shop5.BackgroundTransparency = 0.5 
shop5.TextColor = BrickColor.new("White") 
shop5.Text = "Iron sword - 150" 
shop5.TextWrap = true 
shop5.AutoButtonColor = false 
local equip = Instance.new("Frame", gui) 
equip.Position = UDim2.new(0, -200, 0, -200) 
equip.Size = UDim2.new(0, 200, 0, 200) 
equip.BorderSizePixel = 0 
equip.BackgroundColor = BrickColor.new("Reddish brown") 
equip.BackgroundTransparency = 0.15
equip.Visible = false 
local equip2 = Instance.new("TextButton", equip) 
equip2.Position = UDim2.new(0, 75, 0, 5) 
equip2.Size = UDim2.new(0, 50, 0, 25) 
equip2.BorderSizePixel = 0 
equip2.BackgroundColor = BrickColor.new("Dark stone grey") 
equip2.BackgroundTransparency = 0.5 
equip2.TextColor = BrickColor.new("White") 
equip2.Text = "Head" 
equip2.TextWrap = true 
equip2.AutoButtonColor = false 
local equip3 = Instance.new("TextButton", equip) 
equip3.Position = UDim2.new(0, 75, 0, 30) 
equip3.Size = UDim2.new(0, 50, 0, 50) 
equip3.BorderSizePixel = 0 
equip3.BackgroundColor = BrickColor.new("Dark stone grey") 
equip3.BackgroundTransparency = 0.5 
equip3.TextColor = BrickColor.new("White") 
equip3.Text = "Torso" 
equip3.TextWrap = true 
equip3.AutoButtonColor = false 
local equip4 = Instance.new("TextButton", equip) 
equip4.Position = UDim2.new(0, 125, 0, 30) 
equip4.Size = UDim2.new(0, 25, 0, 50) 
equip4.BorderSizePixel = 0 
equip4.BackgroundColor = BrickColor.new("Dark stone grey") 
equip4.BackgroundTransparency = 0.5 
equip4.TextColor = BrickColor.new("White") 
equip4.Text = "Right arm" 
equip4.TextWrap = true 
equip4.AutoButtonColor = false 
local equip5 = Instance.new("TextButton", equip) 
equip5.Position = UDim2.new(0, 50, 0, 30) 
equip5.Size = UDim2.new(0, 25, 0, 50) 
equip5.BorderSizePixel = 0 
equip5.BackgroundColor = BrickColor.new("Dark stone grey") 
equip5.BackgroundTransparency = 0.5 
equip5.TextColor = BrickColor.new("White") 
equip5.Text = "Left arm" 
equip5.TextWrap = true 
equip5.AutoButtonColor = false 
local equip6 = Instance.new("TextButton", equip) 
equip6.Position = UDim2.new(0, 75, 0, 80) 
equip6.Size = UDim2.new(0, 25, 0, 50) 
equip6.BorderSizePixel = 0 
equip6.BackgroundColor = BrickColor.new("Dark stone grey") 
equip6.BackgroundTransparency = 0.5 
equip6.TextColor = BrickColor.new("White") 
equip6.Text = "Left Leg" 
equip6.TextWrap = true 
equip6.AutoButtonColor = false 
local equip7 = Instance.new("TextButton", equip) 
equip7.Position = UDim2.new(0, 100, 0, 80) 
equip7.Size = UDim2.new(0, 25, 0, 50) 
equip7.BorderSizePixel = 0 
equip7.BackgroundColor = BrickColor.new("Dark stone grey") 
equip7.BackgroundTransparency = 0.5 
equip7.TextColor = BrickColor.new("White") 
equip7.Text = "Right Leg" 
equip7.TextWrap = true 
equip7.AutoButtonColor = false 
local equip8 = Instance.new("TextButton", equip) 
equip8.Position = UDim2.new(0, 0, 0, 150) 
equip8.Size = UDim2.new(0, 200, 0, 40) 
equip8.BorderSizePixel = 0 
equip8.BackgroundColor = BrickColor.new("Really black") 
equip8.BackgroundTransparency = 0.5 
equip8.TextColor = BrickColor.new("White") 
equip8.Text = "Right Leg" 
equip8.TextWrap = true 
equip8.AutoButtonColor = false 

shop.MouseButton1Click:connect(function()
shop2.Visible = true 
shop2:TweenPosition(UDim2.new(0, 300, 0, 200))
end)
shop.MouseButton2Click:connect(function()
shop2:TweenPosition(UDim2.new(0, -200, 0, -200))
wait(1) 
shop2.Visible = false 
end) 
eqp.MouseButton1Click:connect(function()
equip.Visible = true 
equip:TweenPosition(UDim2.new(0, 300, 0, 200))
end)
eqp.MouseButton2Click:connect(function()
equip.Visible = true 
equip:TweenPosition(UDim2.new(0, -200, 0, -200))
end)
shop4.MouseButton1Click:connect(function()
if gold >= 100 then 
gold = gold - 100 
local sword = Instance.new("Tool", plyr.Backpack) 
sword.Name = "BronzeSword" 
local hand = Instance.new("Part", sword) 
hand.Name = "Handle" 
hand.Size = Vector3.new(1, 3, 1) 
hand.CanCollide = false 
hand.BrickColor = BrickColor.new("Reddish brown") 
end 
end)
shop5.MouseButton1Click:connect(function()
if gold >= 150 then 
gold = gold - 150 
local sword = Instance.new("Tool", plyr.Backpack) 
sword.Name = "IronSword" 
local hand = Instance.new("Part", sword) 
hand.Name = "Handle" 
hand.Size = Vector3.new(1, 4, 1) 
hand.CanCollide = false 
hand.BrickColor = BrickColor.new("Mid stone grey") 
end 
end)

coroutine.resume(coroutine.create(function() 
while true do 
id.Text = "stats: lvl/" ..lvl.. " exp/" ..exp.. " gold/" ..gold.. " " 
wait() 
end
end))

coroutine.resume(coroutine.create(function() 
while true do 
if exp >= lvl*50 then 
lvl = lvl + 1 
gold = gold + 25 
exp = 0 
end 
wait() 
end
end))

