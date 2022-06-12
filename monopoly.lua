local Players = game:GetService("Players") 
local Workspace = game:GetService("Workspace") 
local who = "acb227" 
local plyr = Players[who] 
local pg = plyr.PlayerGui 
local y = 400 
local pz = 20 
local x = 0 
local px = 20 
local count = 0 
local number = 0 
local players = {}   
local turn = nil 
local oldturn = "nil" 
local offset = Vector3.new(75, 1.5, 0) 
pcall(function() pg["GUI MAP"]:remove() end) 
pcall(function() Workspace.Base.Monopoly:remove() end) 
local sc  = Instance.new("ScreenGui", pg) 
sc.Name = "GUI MAP" 
local model = Instance.new("Model", workspace.Base) 
model.Name = "Monopoly" 
local model2 = Instance.new("Model", model) 
model2.Name = "Dice: " 

local base = Instance.new("Part", model) 
base.Size = Vector3.new(75, 1, 75) 
base.CFrame = CFrame.new(0, 0, 0) + offset 
base.Anchored = true 
base.BrickColor = BrickColor.new("Really black") 
local basem = Instance.new("BlockMesh", base) 

local baseh = Instance.new("Part", model2) 
baseh.Size = Vector3.new(5, 5, 5) 
baseh.CFrame = CFrame.new(0, 2.5, 0) + offset 
baseh.Anchored = true 
baseh.Name = "Head" 
baseh.BrickColor = BrickColor.new("Really black") 
local basehm = Instance.new("BlockMesh", baseh) 

local hu = Instance.new("Humanoid", model2) 
hu.MaxHealth = 0 
hu.Health = 0 

local base2 = Instance.new("Part", model) 
base2.Size = Vector3.new(1, 50, 75) 
base2.CFrame = CFrame.new(37.5, 0, 0) + offset 
base2.Anchored = true 
base2.Transparency = 0.75 
base2.BrickColor = BrickColor.new("Really black") 
local base2m = Instance.new("BlockMesh", base2) 

local base3 = Instance.new("Part", model) 
base3.Size = Vector3.new(1, 50, 75) 
base3.CFrame = CFrame.new(-37.5, 0, 0) + offset 
base3.Anchored = true 
base3.Transparency = 0.75 
base3.BrickColor = BrickColor.new("Really black") 
local base3m = Instance.new("BlockMesh", base3) 

local base4 = Instance.new("Part", model) 
base4.Size = Vector3.new(76, 50, 1) 
base4.CFrame = CFrame.new(0, 0, 37.5) + offset 
base4.Anchored = true 
base4.Transparency = 0.75 
base4.BrickColor = BrickColor.new("Really black") 
local base4m = Instance.new("BlockMesh", base4) 

local base5 = Instance.new("Part", model) 
base5.Size = Vector3.new(76, 50, 1) 
base5.CFrame = CFrame.new(0, 0, -37.5) + offset 
base5.Anchored = true 
base5.Transparency = 0.75 
base5.BrickColor = BrickColor.new("Really black") 
local base5m = Instance.new("BlockMesh", base5) 

for i = 1, 13 do 
number = number + 1 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 5) 
base6.CFrame = CFrame.new(-35+5*i, 0, -32.5) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("White") 
base6.Name = number 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
if count <= 2 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Really red") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 3 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("New Yeller") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 4 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("New Yeller") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 5 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("New Yeller") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 6 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Dark green") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 7 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Dark green") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 8 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Dark green") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 9 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright yellow") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 10 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright yellow") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 11 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright yellow") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 12 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright green") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 13 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, -30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright green") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
count = count + 1 
end 
for i = 1, 14 do 
number = number + 1 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 5) 
base6.CFrame = CFrame.new(-35, 0, -37.5+5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("White") 
base6.Name = number 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
if count == 14 or count == 15 or count == 16 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(-32.5, 0.5, -37.5+5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright blue") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 17 or count == 18 or count == 19 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(-32.5, 0.5, -37.5+5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright orange") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 20 or count == 21 or count == 22 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(-32.5, 0.5, -37.5+5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright violet") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 23 or count == 24 or count == 25 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(-32.5, 0.5, -37.5+5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Light blue") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
count = count + 1 
end 
for i = 1, 13 do 
number = number + 1 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 5) 
base6.CFrame = CFrame.new(-35+5*i, 0, 32.5) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("White") 
base6.Name = number 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
if count == 27 or count == 28 or count == 29 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, 30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Really blue") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 30 or count == 31 or count == 32 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, 30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Light red") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 33 or count == 34 or count == 35 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, 30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright red") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 36 or count == 37 or count == 38 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, 30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Hot pink") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 39 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 1) 
base6.CFrame = CFrame.new(-35+5*i, 0.5, 30) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Dark red") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
count = count + 1 
end 
for i = 1, 14 do 
number = number + 1 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(5, 2, 5) 
base6.CFrame = CFrame.new(35, 0, 37.5-5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("White") 
base6.Name = number 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
if count == 41 or count == 42 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(32.5, 0.5, 37.5-5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Dark red") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 43 or count == 44 or count == 45 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(32.5, 0.5, 37.5-5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Dark stone grey") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 46 or count == 47 or count == 48 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(32.5, 0.5, 37.5-5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Light stone grey") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 49 or count == 50 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(32.5, 0.5, 37.5-5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Black") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
if count == 51 or count == 52 then 
local base6 = Instance.new("Part", model) 
base6.Size = Vector3.new(1, 2, 5) 
base6.CFrame = CFrame.new(32.5, 0.5, 37.5-5*i) + offset 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Bright green") 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.5 
end 
count = count + 1 
end 

for _,v in pairs(model:GetChildren()) do 
if v.className == "Part" then 
v.Locked = true 
end 
end 
for _,v in pairs(model2:GetChildren()) do 
if v.className == "Part" then 
v.Locked = true 
end 
end 

for _,v in pairs(Players:GetChildren()) do 
table.insert(players, v.Name) 
end 
for _,p in pairs(Players:GetChildren()) do 
for _,c in pairs(players) do 
if p.Name == c then 
if p.Character.Torso ~= nil then 
p.Character.Torso.CFrame = CFrame.new(0, 5, 0) + offset 
pcall(function() p.Character.Torso.MONOPOLYPOS:remove() end) 
pcall(function() p.Character.Torso.posval:remove() end) 
local monpos = Instance.new("BodyPosition", p.Character.Torso) 
monpos.Name = "MONOPOLYPOS" 
monpos.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
monpos.position = model["54"].Position + Vector3.new(0, 5, 0) 
local posv = Instance.new("IntValue", p.Character.Torso) 
posv.Value = 54 
posv.Name = "posval" 
end 
end 
end 
end 

function turns() 
for _,v in pairs(Players:GetChildren()) do 
a = math.random(1, #players) 
asdf = players[a] 
if v.Name == asdf and v.Name ~= oldturn then 
turn = v 
end 
end 
end 

coroutine.resume(coroutine.create(function() 
while wait() do 
for _,v in pairs(Players:GetChildren()) do 
if v.Character.Torso.posval ~= nil then 
if v.Character.Torso.posval.Value <= 1 then 
v.Character.Torso.posval.Value = 54 
end 
end 
end 
end 
end)) 

while wait() do 
turns() 
a = math.random(2, 12) 
model2.Name = "Dice: " ..a.. "" 
for i = 1, a do 
pcall(function() 
turn.Character.Torso.posval.Value = turn.Character.Torso.posval.Value - i 
turn.Character.Torso.MONOPOLYPOS.position = model[turn.Character.Torso.posval.Value].Position + Vector3.new(0, 5, 0) 
end) 
wait(0.25) 
end 
pcall(function() 
oldturn = turn.Name 
turn = nil 
end) 
wait(2) 
end 
