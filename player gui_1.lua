local sc = Instance.new("ScreenGui", game.Players.yfc.PlayerGui) 
local y = 180 

function whut(name) 
local tt22 = Instance.new("TextButton", sc) 
tt22.Position = UDim2.new(0, 300, 0, 250) 
tt22.Size = UDim2.new(0, 200, 0, 20) 
tt22.Text = "Kill?" 
tt22.BackgroundColor = BrickColor.new("White") 
local tt23 = Instance.new("TextButton", sc) 
tt23.Position = UDim2.new(0, 300, 0, 270) 
tt23.Size = UDim2.new(0, 200, 0, 20) 
tt23.Text = "nil?" 
tt23.BackgroundColor = BrickColor.new("White") 
local tt24 = Instance.new("TextButton", sc) 
tt24.Position = UDim2.new(0, 300, 0, 290) 
tt24.Size = UDim2.new(0, 200, 0, 20) 
tt24.Text = "ff?" 
tt24.BackgroundColor = BrickColor.new("White") 
local tt25 = Instance.new("TextButton", sc) 
tt25.Position = UDim2.new(0, 300, 0, 310) 
tt25.Size = UDim2.new(0, 200, 0, 20) 
tt25.Text = "unff?" 
tt25.BackgroundColor = BrickColor.new("White") 
local tt26 = Instance.new("TextButton", sc) 
tt26.Position = UDim2.new(0, 300, 0, 330) 
tt26.Size = UDim2.new(0, 200, 0, 20) 
tt26.Text = "Implode?" 
tt26.BackgroundColor = BrickColor.new("White") 
tt22.MouseButton1Down:connect(function() 
if game.Players[name].Character ~= nil then 
game.Players[name].Character:BreakJoints() 
tt22:remove() 
tt23:remove() 
tt24:remove() 
tt25:remove() 
tt26:remove() 
end 
end)
tt23.MouseButton1Down:connect(function() 
if game.Players[name].Character ~= nil then 
game.Players[name].Character = nil 
tt22:remove() 
tt23:remove() 
tt24:remove() 
tt25:remove() 
tt26:remove() 
end 
end)
tt24.MouseButton1Down:connect(function() 
if game.Players[name].Character ~= nil then 
pcall(function() game.Players[name].Character.ForceField:remove() end) 
Instance.new("ForceField", game.Players[name].Character) 
tt22:remove() 
tt23:remove() 
tt24:remove() 
tt25:remove() 
tt26:remove() 
end 
end)
tt25.MouseButton1Down:connect(function() 
if game.Players[name].Character ~= nil then 
pcall(function() game.Players[name].Character.ForceField:remove() end) 
tt22:remove() 
tt23:remove() 
tt24:remove() 
tt25:remove() 
tt26:remove() 
end 
end)
tt26.MouseButton1Down:connect(function() 
if game.Players[name].Character ~= nil then 
local m = Instance.new("SpecialMesh", game.Players[name].Character.Torso) 
m.MeshType = "Sphere" 
coroutine.resume(coroutine.create(function()
for i = 1, 50 do 
m.Scale = m.Scale + Vector3.new(1, 1, 2) 
wait() 
end 
Instance.new("Explosion", game.Players[name].Character).Position = game.Players[name].Character.Torso.Position 
end)) 
tt22:remove() 
tt23:remove() 
tt24:remove() 
tt25:remove() 
tt26:remove() 
end 
end)
end 
function whut2(name) 
local tt22 = Instance.new("TextButton", sc) 
tt22.Position = UDim2.new(0, 300, 0, 250) 
tt22.Size = UDim2.new(0, 200, 0, 20) 
tt22.Text = "kick?" 
tt22.BackgroundColor = BrickColor.new("White") 
local tt23 = Instance.new("TextButton", sc) 
tt23.Position = UDim2.new(0, 300, 0, 270) 
tt23.Size = UDim2.new(0, 200, 0, 20) 
tt23.Text = "clone?" 
tt23.BackgroundColor = BrickColor.new("White") 
tt22.MouseButton1Down:connect(function() 
if game.Players[name].Character ~= nil then 
game.Players[name]:remove() 
tt22:remove() 
tt23:remove() 
end 
end)
tt23.MouseButton1Down:connect(function() 
if game.Players[name].Character ~= nil then 
cc = game.Players[name].Character:clone() 
cc.Parent = game.Players[name] 
tt22:remove() 
tt23:remove() 
end 
end)
end 

for _, c in pairs(sc:GetChildren()) do 
c:remove() 
end 
for _,v in pairs(game.Players:GetChildren()) do 
y = y + 20 
local tt = Instance.new("TextButton", sc) 
tt.Position = UDim2.new(0, 50, 0, y) 
tt.Size = UDim2.new(0, 200, 0, 20) 
tt.Text = "Player: " ..v.Name.. "" 
tt.BackgroundColor = BrickColor.new("White") 
tt.MouseButton1Down:connect(function() 
if v.Character ~= nil then 
whut(v.Name) 
end 
end)
tt.MouseButton2Down:connect(function() 
if v.Character ~= nil then 
whut2(v.Name) 
end 
end)
end 

while wait(25) do 
y = 180
for _, c in pairs(sc:GetChildren()) do 
c:remove() 
end 
for _,v in pairs(game.Players:GetChildren()) do 
y = y + 20 
local tt = Instance.new("TextButton", sc) 
tt.Position = UDim2.new(0, 50, 0, y) 
tt.Size = UDim2.new(0, 200, 0, 20) 
tt.Text = "Player: " ..v.Name.. "" 
tt.BackgroundColor = BrickColor.new("White") 
tt.MouseButton1Down:connect(function() 
if v.Character ~= nil then 
whut(v.Name) 
end 
end)
end 
end 
