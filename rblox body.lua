local plyr = game.Players.acb227 
local char = plyr.Character 

pcall(function() char.Pants:remove() end) 
pcall(function() char.Shirt:remove() end) 
pcall(function() char["Shirt Graphic"]:remove() end) 
pcall(function() char["Body Colors"]:remove() end) 

for _, v in pairs(char:GetChildren()) do 
if v.className == "Part" and v.Name ~= "Head" and v.Name ~= "Torso" then 
pcall(function() v.BlockMesh:remove() end) 
pcall(function() v.SpecialMesh:remove() end) 
v.BrickColor = BrickColor.new("Pastel brown") 
Instance.new("BlockMesh", v).Bevel = 0.15 
end 
end 

local shirt = Instance.new("Part", char) 
shirt.Size = Vector3.new(2, 2, 1) 
shirt.BrickColor = BrickColor.new("Bright red") 
shirt:BreakJoints() 
local mesh = Instance.new("BlockMesh", shirt) 
mesh.Bevel = 0.1 
mesh.Scale = Vector3.new(1.1, 1.1, 1.1) 

pcall(function() char.Torso.BrickColor = char["Right Arm"].BrickColor end) 
pcall(function() char.Head.BrickColor = char["Right Arm"].BrickColor end) 

pcall(function() plyr.PlayerGui.ScreenGui:remove() end) 
local sc = Instance.new("ScreenGui", plyr.PlayerGui) 
local tt = Instance.new("TextButton", sc) 
tt.Position = UDim2.new(0, 0, 0, 500) 
tt.Size = UDim2.new(0, 200, 0, 20) 
tt.Text = "Settings" 
tt.BackgroundColor = BrickColor.new("White") 
local tt2 = Instance.new("TextButton", sc) 
tt2.Position = UDim2.new(0, 0, 0, 500) 
tt2.Size = UDim2.new(0, 200, 0, 20) 
tt2.Text = "Close" 
tt2.Visible = false 
tt2.Active = false 
local tt3 = Instance.new("TextButton", sc) 
tt3.Position = UDim2.new(0, 200, 0, 500) 
tt3.Size = UDim2.new(0, 200, 0, 20) 
tt3.Text = "Body Colors" 
tt3.Visible = false 
tt3.Active = false 
local tt4 = Instance.new("TextButton", sc) 
tt4.Position = UDim2.new(0, 200, 0, 500) 
tt4.Size = UDim2.new(0, 200, 0, 20) 
tt4.Text = "Back" 
tt4.Visible = false 
tt4.Active = false 
local tt5 = Instance.new("TextButton", sc) 
tt5.Position = UDim2.new(0, 400, 0, 500) 
tt5.Size = UDim2.new(0, 200, 0, 20) 
tt5.Text = "Color?" 
tt5.Visible = false 
tt5.Active = false 
local tt6 = Instance.new("TextBox", sc) 
tt6.Position = UDim2.new(0, 400, 0, 520) 
tt6.Size = UDim2.new(0, 200, 0, 20) 
tt6.Text = "Imput Colorname here" 
tt6.Visible = false 
tt6.Active = false 
tt3.BackgroundColor = BrickColor.new("White") 
tt.MouseButton1Down:connect(function() 
tt.Visible = false 
tt.Active = false 
tt2.Visible = true 
tt2.Active = true 
tt3.Visible = true 
tt3.Active = true 
tt4.Visible = false 
tt4.Active = false 
end) 
tt2.MouseButton1Down:connect(function() 
tt4.Visible = false 
tt4.Active = false 
tt3.Visible = false 
tt3.Active = false 
tt2.Visible = false 
tt2.Active = false 
tt.Visible = true 
tt.Active = true 
end) 
tt3.MouseButton1Down:connect(function() 
tt3.Visible = false 
tt3.Active = false 
tt4.Visible = true 
tt4.Active = true 
tt5.Visible = true 
tt5.Active = true 
tt6.Visible = true 
tt6.Active = true 
end) 
tt4.MouseButton1Down:connect(function() 
tt3.Visible = true 
tt3.Active = true 
tt4.Visible = false 
tt4.Active = false 
tt5.Visible = false 
tt5.Active = false 
tt6.Visible = false 
tt6.Active = false 
end) 
tt5.MouseButton1Down:connect(function() 
local imput = tt6.Text 
for _, v in pairs(char:GetChildren()) do 
if v.className == "Part" and v.Name ~= "Head" and v.Name ~= "Torso" then 
pcall(function() v.BlockMesh:remove() end) 
pcall(function() v.SpecialMesh:remove() end) 
v.BrickColor = BrickColor.new("" ..imput.. "") 
Instance.new("BlockMesh", v).Bevel = 0.15 
end 
end 

pcall(function() char.Torso.BrickColor = char["Right Arm"].BrickColor end) 
pcall(function() char.Head.BrickColor = char["Right Arm"].BrickColor end) 
end) 