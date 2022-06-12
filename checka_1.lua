local Players = game:GetService("Players") 
local Workspace = game:GetService("Workspace") 
local who = "acb227" 
local plyr = Players[who] 
local pg = plyr.PlayerGui 
local y = 400 
local pz = 20 
local x = 0 
local px = 20 
local typ = 1 
local parts = nil 
local count = 0 
pcall(function() pg["GUI MAP"]:remove() end) 
pcall(function() Workspace.Base.Checkers:remove() end) 
local sc  = Instance.new("ScreenGui", pg) 
sc.Name = "GUI MAP" 
local qwe = Instance.new("TextLabel", sc) 
qwe.Position = UDim2.new(0, x, 0, 380) 
qwe.Size = UDim2.new(0, 220, 0, 20) 
qwe.BackgroundColor = BrickColor.new("Really blue") 
qwe.Text = "It is your turn" 
function turn(turn) 
if turn == 1 then 
qwe.Text = "It is your turn" 
end 
if turn == 2 then 
qwe.Text = "It is their turn" 
end 
end 
local model = Instance.new("Model", workspace.Base) 
model.Name = "Checkers" 
for i = 1, 110 do 
if typ == 1 then 
typ = typ + 1 
local s = Instance.new("TextLabel", sc) 
s.Position = UDim2.new(0, x, 0, y) 
s.Size = UDim2.new(0, 20, 0, 20) 
s.BackgroundColor = BrickColor.new("Really black") 
s.Text = "" 
local part = Instance.new("Part", model) 
part.Name = i 
part.Size = Vector3.new(4, 1, 4) 
part.Anchored = true 
part.CFrame = CFrame.new(px, 2, pz) 
part.BrickColor = BrickColor.new("Really black") 
local partm = Instance.new("BlockMesh", part) 
else
typ = typ - 1 
local sd = Instance.new("TextButton", sc) 
sd.Position = UDim2.new(0, x, 0, y) 
sd.Size = UDim2.new(0, 20, 0, 20) 
sd.BackgroundColor = BrickColor.new("Really red") 
sd.Text = "" 
local part2 = Instance.new("Part", model) 
part2.Name = i 
part2.Size = Vector3.new(4, 1, 4) 
part2.Anchored = true 
part2.CFrame = CFrame.new(px, 2, pz) 
part2.BrickColor = BrickColor.new("Really red") 
local part2m = Instance.new("BlockMesh", part2) 
if count <= 15 then 
local part3 = Instance.new("Part", model) 
part3.Name = i 
part3.Size = Vector3.new(3, 1, 3) 
part3.Anchored = true 
part3.CFrame = CFrame.new(px, 3, pz) 
part3.BrickColor = BrickColor.new("Really black") 
local part3m = Instance.new("CylinderMesh", part3) 
sd.MouseButton1Down:connect(function() 
if part3.Position == part2.Position + Vector3.new(0, 1, 0) then 
--[[ local select = Instance.new("SelectionBox", part3) 
select.Adornee = part3 
select.Color = "Bright blue" ]] 
parts = part3 
end 
end) 
end 
if count >= 38 then 
local part4 = Instance.new("Part", model) 
part4.Name = i 
part4.Size = Vector3.new(3, 1, 3) 
part4.Anchored = true 
part4.CFrame = CFrame.new(px, 3, pz) 
part4.BrickColor = BrickColor.new("Bright red") 
local part4m = Instance.new("CylinderMesh", part4) 
sd.MouseButton1Down:connect(function() 
if part4.Position == part2.Position + Vector3.new(0, 1, 0) then 
--[[ local select2 = Instance.new("SelectionBox", part4) 
select2.Adornee = part4 
select2.Color = "Bright blue" ]]
parts = part4 
end 
end) 
end 
sd.MouseButton1Down:connect(function() 
parts.CFrame = part2.CFrame + Vector3.new(0, 1, 0) 
pcall(function() parts.SelectionBox:remove() end) 
turn(2) 
parts = nil 
end) 
count = count + 1 
end 
x = x + 20 
px = px + 4
if x == 220 then 
x = 0 
px = 20 
pz = pz + 4 
y = y + 20 
end 
wait() 
end 