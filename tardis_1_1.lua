TimeLord = "acb227" --master 
local on = false 
local players = game:GetService("Players") 
local workspace = game:GetService("Workspace") 
wbase = workspace.Base 
local me = game.Players:findFirstChild(TimeLord) 
local year = 2011 
local month = 8 
local day = 16 
local times = {"12:00:00", "24:00:00", "15:00:00", "08:00:00", "17:00:00"} 
print('yes') 
local char = me.Character 
script.Parent = char 
pcall(function() wbase.Tardis:remove() end)
local tard = Instance.new("Model", wbase) 
tard.Name = "Tardis" 
local tard2 = Instance.new("Model", tard) 
tard2.Name = "Date: " ..year.. "/" ..month.. "/" ..day.. " "
local hums = Instance.new("Humanoid", tard2) 
hums.Health = 0 
hums.MaxHealth = 0 
local base = Instance.new("Part", tard) 
base.BrickColor = BrickColor.new("Navy blue") 
base.Anchored = true 
base.Size = Vector3.new(10, 1, 9) 
base.CFrame = CFrame.new(16, 0.5, 1) 
basem = Instance.new("BlockMesh", base) 

local base2 = Instance.new("Part", tard) 
base2.BrickColor = BrickColor.new("Navy blue") 
base2.Anchored = true 
base2.Size = Vector3.new(1, 16, 8) 
base2.CFrame = CFrame.new(20, 6.2, 1) 
base2m = Instance.new("BlockMesh", base2) 

local base3 = Instance.new("Part", tard) 
base3.BrickColor = BrickColor.new("Navy blue") 
base3.Anchored = true 
base3.Size = Vector3.new(1, 16, 8) 
base3.CFrame = CFrame.new(12, 6.2, 1) 
base3m = Instance.new("BlockMesh", base3) 

local base4 = Instance.new("Part", tard) 
base4.BrickColor = BrickColor.new("Navy blue") 
base4.Anchored = true 
base4.Size = Vector3.new(8, 16, 1) 
base4.CFrame = CFrame.new(16, 6.2, 4.5) 
base4m = Instance.new("BlockMesh", base4) 

local base5 = Instance.new("Part", tard) 
base5.BrickColor = BrickColor.new("Navy blue") 
base5.Anchored = true 
base5.CanCollide = false 
base5.Size = Vector3.new(8, 16, 1) 
base5.CFrame = CFrame.new(16, 6.2, -2.5) 
base5m = Instance.new("BlockMesh", base5) 

local base6 = Instance.new("Part", tard) 
base6.BrickColor = BrickColor.new("Navy blue") 
base6.Anchored = true 
base6.Size = Vector3.new(10, 1, 9) 
base6.CFrame = CFrame.new(16, 13.5, 1) 
base6m = Instance.new("BlockMesh", base6) 

local base7 = Instance.new("Part", tard) 
base7.BrickColor = BrickColor.new("Bright yellow") 
base7.Anchored = true 
base7.Transparency = 0.25
base7.Size = Vector3.new(1, 2, 1) 
base7.CFrame = CFrame.new(16, 14.5, 1) 
base7m = Instance.new("BlockMesh", base7) 

local base8 = Instance.new("Part", tard) 
base8.BrickColor = BrickColor.new("White") 
base8.Anchored = true 
base8.CanCollide = false 
base8.formFactor = "Custom" 
base8.Size = Vector3.new(9.25, 2.5, 2.5) 
base8.CFrame = CFrame.new(16, 10.5, 2.5) 
base8m = Instance.new("BlockMesh", base8) 

local base9 = Instance.new("Part", tard) 
base9.BrickColor = BrickColor.new("White") 
base9.Anchored = true 
base9.CanCollide = false 
base9.formFactor = "Custom" 
base9.Size = Vector3.new(9.25, 2.5, 2.5) 
base9.CFrame = CFrame.new(16, 10.5, -0.5) 
base9m = Instance.new("BlockMesh", base9) 

local base10 = Instance.new("Part", tard) 
base10.BrickColor = BrickColor.new("White") 
base10.Anchored = true 
base10.CanCollide = false 
base10.formFactor = "Custom" 
base10.Size = Vector3.new(2.5, 2.5, 8.25) 
base10.CFrame = CFrame.new(17.5, 10.5, 1) 
base10m = Instance.new("BlockMesh", base10) 

local base11 = Instance.new("Part", tard) 
base11.BrickColor = BrickColor.new("White") 
base11.Anchored = true 
base11.CanCollide = false 
base11.formFactor = "Custom" 
base11.Size = Vector3.new(2.5, 2.5, 8.25) 
base11.CFrame = CFrame.new(14.5, 10.5, 1) 
base11m = Instance.new("BlockMesh", base11) 

local brick = Instance.new("Part", tard) 
brick.BrickColor = BrickColor.new("Yellow") 
brick.Anchored = true 
brick.CanCollide = false 
brick.Transparency = 1 
brick.formFactor = "Custom" 
brick.Size = Vector3.new(1, 1, 1) 
brick.CFrame = CFrame.new(16, 4, 1) 
brickm = Instance.new("BlockMesh", brick) 

local tfloor = Instance.new("Part", tard) 
tfloor.BrickColor = BrickColor.new("Black") 
tfloor.Anchored = true 
tfloor.CanCollide = true 
tfloor.formFactor = "Custom" 
tfloor.Size = Vector3.new(50, 1, 50) 
tfloor.CFrame = CFrame.new(0, 25000, 0) 
tfloorm = Instance.new("BlockMesh", tfloor) 

local tfloor2 = Instance.new("Part", tard) 
tfloor2.BrickColor = BrickColor.new("Black") 
tfloor2.Anchored = true 
tfloor2.CanCollide = true 
tfloor2.formFactor = "Custom" 
tfloor2.Size = Vector3.new(1, 40, 50) 
tfloor2.CFrame = CFrame.new(25, 25020, 0) 
tfloor2m = Instance.new("BlockMesh", tfloor2) 

local tfloor3 = Instance.new("Part", tard) 
tfloor3.BrickColor = BrickColor.new("Black") 
tfloor3.Anchored = true 
tfloor3.CanCollide = true 
tfloor3.formFactor = "Custom" 
tfloor3.Size = Vector3.new(1, 40, 50) 
tfloor3.CFrame = CFrame.new(-25, 25020, 0) 
tfloor3m = Instance.new("BlockMesh", tfloor3) 

local tfloor4 = Instance.new("Part", tard) 
tfloor4.BrickColor = BrickColor.new("Black") 
tfloor4.Anchored = true 
tfloor4.CanCollide = true 
tfloor4.formFactor = "Custom" 
tfloor4.Size = Vector3.new(50, 40, 1) 
tfloor4.CFrame = CFrame.new(0, 25020, 25) 
tfloor4m = Instance.new("BlockMesh", tfloor4) 

local tfloor5 = Instance.new("Part", tard) 
tfloor5.BrickColor = BrickColor.new("Black") 
tfloor5.Anchored = true 
tfloor5.CanCollide = true 
tfloor5.formFactor = "Custom" 
tfloor5.Size = Vector3.new(50, 40, 1) 
tfloor5.CFrame = CFrame.new(0, 25020, -25) 
tfloor5m = Instance.new("BlockMesh", tfloor5) 

local tfloor6 = Instance.new("Part", tard) 
tfloor6.BrickColor = BrickColor.new("Black") 
tfloor6.Anchored = true 
tfloor6.CanCollide = true 
tfloor6.formFactor = "Custom" 
tfloor6.Size = Vector3.new(50, 1, 50) 
tfloor6.CFrame = CFrame.new(0, 25040, 0) 
tfloor6m = Instance.new("BlockMesh", tfloor6) 

local tfloor7 = Instance.new("Part", tard) 
tfloor7.BrickColor = BrickColor.new("Black") 
tfloor7.Anchored = true 
tfloor7.CanCollide = true 
tfloor7.formFactor = "Custom" 
tfloor7.Size = Vector3.new(25, 6, 25) 
tfloor7.CFrame = CFrame.new(0, 25000, 0) 
tfloor7m = Instance.new("CylinderMesh", tfloor7) 

local tfloor8 = Instance.new("Part", tard2) 
tfloor8.BrickColor = BrickColor.new("Black") 
tfloor8.Anchored = true 
tfloor8.CanCollide = true 
tfloor8.Name = "Head" 
tfloor8.formFactor = "Custom" 
tfloor8.Size = Vector3.new(10, 6, 10) 
tfloor8.CFrame = CFrame.new(0, 25001.5, 0) 
tfloor8m = Instance.new("CylinderMesh", tfloor8) 

local tfloor9 = Instance.new("Part", tard) 
tfloor9.BrickColor = BrickColor.new("White") 
tfloor9.Anchored = true 
tfloor9.CanCollide = true 
tfloor9.Transparency = 0.5
tfloor9.formFactor = "Custom" 
tfloor9.Size = Vector3.new(10, 75, 10) 
tfloor9.CFrame = CFrame.new(0, 25008.5, 0) 
tfloor9m = Instance.new("CylinderMesh", tfloor9) 
tfloor9m.Scale = Vector3.new(0.999, 0.999, 0.999) 

local tfloor10 = Instance.new("Part", tard) 
tfloor10.BrickColor = BrickColor.new("White") 
tfloor10.Anchored = true 
tfloor10.CanCollide = true 
tfloor10.Transparency = 0
tfloor10.formFactor = "Custom" 
tfloor10.Size = Vector3.new(5, 2, 5) 
tfloor10.CFrame = CFrame.new(0, 25004.5, 0) 
tfloor10m = Instance.new("CylinderMesh", tfloor10) 
tfloor10m.Scale = Vector3.new(0.999, 0.999, 0.999) 

local tfloor11 = Instance.new("Part", tard) 
tfloor11.BrickColor = BrickColor.new("Mid stone grey") 
tfloor11.Anchored = true 
tfloor11.CanCollide = true 
tfloor11.Transparency = 0
tfloor11.formFactor = "Custom" 
tfloor11.Size = Vector3.new(3, 3, 3) 
tfloor11.CFrame = CFrame.new(0, 25006.5, 0) 
tfloor11m = Instance.new("CylinderMesh", tfloor11) 
tfloor11m.Scale = Vector3.new(0.999, 0.999, 0.999) 

local tfloor12 = Instance.new("Part", tard) 
tfloor12.BrickColor = BrickColor.new("White") 
tfloor12.Anchored = true 
tfloor12.CanCollide = true 
tfloor12.Transparency = 0
tfloor12.formFactor = "Custom" 
tfloor12.Size = Vector3.new(5, 2, 5) 
tfloor12.CFrame = CFrame.new(0, 25024.5, 0) 
tfloor12m = Instance.new("CylinderMesh", tfloor12) 
tfloor12m.Scale = Vector3.new(0.999, 0.999, 0.999) 

local tfloor13 = Instance.new("Part", tard) 
tfloor13.BrickColor = BrickColor.new("Mid stone grey") 
tfloor13.Anchored = true 
tfloor13.CanCollide = true 
tfloor13.Transparency = 0
tfloor13.formFactor = "Custom" 
tfloor13.Size = Vector3.new(3, 3, 3) 
tfloor13.CFrame = CFrame.new(0, 25022.5, 0) 
tfloor13m = Instance.new("CylinderMesh", tfloor13) 
tfloor13m.Scale = Vector3.new(0.999, 0.999, 0.999) 

local tfloor14 = Instance.new("Part", tard) 
tfloor14.BrickColor = BrickColor.new("Black") 
tfloor14.Anchored = true 
tfloor14.CanCollide = true 
tfloor14.formFactor = "Custom" 
tfloor14.Size = Vector3.new(10, 24, 10) 
tfloor14.CFrame = CFrame.new(0, 25037, 0) 
tfloor14m = Instance.new("CylinderMesh", tfloor14) 

local trav = Instance.new("Part", tard) 
trav.BrickColor = BrickColor.new("Black") 
trav.Anchored = true 
trav.CanCollide = true 
trav.formFactor = "Custom" 
trav.Size = Vector3.new(1, 3, 1) 
trav.CFrame = CFrame.new(0, 25002.5, 10) 
travm = Instance.new("BlockMesh", trav) 
local button1 = Instance.new("ClickDetector", trav) 

local trav2 = Instance.new("Part", tard) 
trav2.BrickColor = BrickColor.new("Bright blue") 
trav2.Anchored = true 
trav2.CanCollide = true 
trav2.formFactor = "Custom" 
trav2.Size = Vector3.new(1, 3, 1) 
trav2.CFrame = CFrame.new(0, 25002.5, -10) 
trav2m = Instance.new("BlockMesh", trav2) 
local button2 = Instance.new("ClickDetector", trav2) 
local trav3 = Instance.new("Part", tard) 
trav3.BrickColor = BrickColor.new("Bright red") 
trav3.Anchored = true 
trav3.CanCollide = true 
trav3.formFactor = "Custom" 
trav3.Size = Vector3.new(1, 3, 1) 
trav3.CFrame = CFrame.new(1.5, 25002.5, -10) 
trav3m = Instance.new("BlockMesh", trav3) 
local button3 = Instance.new("ClickDetector", trav3) 
local trav4 = Instance.new("Part", tard) 
trav4.BrickColor = BrickColor.new("Bright red") 
trav4.Anchored = true 
trav4.CanCollide = true 
trav4.formFactor = "Custom" 
trav4.Size = Vector3.new(1, 3, 1) 
trav4.CFrame = CFrame.new(-1.5, 25002.5, -10) 
trav4m = Instance.new("BlockMesh", trav4) 
local button4 = Instance.new("ClickDetector", trav4) 

local trav5 = Instance.new("Part", tard) 
trav5.BrickColor = BrickColor.new("Bright blue") 
trav5.Anchored = true 
trav5.CanCollide = true 
trav5.formFactor = "Custom" 
trav5.Size = Vector3.new(1, 3, 1) 
trav5.CFrame = CFrame.new(0, 25002, -10.5) 
trav5m = Instance.new("BlockMesh", trav5) 
local button5 = Instance.new("ClickDetector", trav5) 
local trav6 = Instance.new("Part", tard) 
trav6.BrickColor = BrickColor.new("Bright red") 
trav6.Anchored = true 
trav6.CanCollide = true 
trav6.formFactor = "Custom" 
trav6.Size = Vector3.new(1, 3, 1) 
trav6.CFrame = CFrame.new(1.5, 25002, -10.5) 
trav6m = Instance.new("BlockMesh", trav6) 
local button6 = Instance.new("ClickDetector", trav6) 
local trav8 = Instance.new("Part", tard) 
trav8.BrickColor = BrickColor.new("Bright red") 
trav8.Anchored = true 
trav8.CanCollide = true 
trav8.formFactor = "Custom" 
trav8.Size = Vector3.new(1, 3, 1) 
trav8.CFrame = CFrame.new(-1.5, 25002, -10.5) 
trav8m = Instance.new("BlockMesh", trav8) 
local button7 = Instance.new("ClickDetector", trav8) 
local trav9 = Instance.new("Part", tard) 
trav9.BrickColor = BrickColor.new("New Yeller") 
trav9.Anchored = true 
trav9.CanCollide = true 
trav9.formFactor = "Custom" 
trav9.Size = Vector3.new(2, 3, 2) 
trav9.CFrame = CFrame.new(0, 25002, -7.5) 
trav9m = Instance.new("BlockMesh", trav9) 
local button9 = Instance.new("ClickDetector", trav9) 


local baset = Instance.new("Part", tard) 
baset.BrickColor = BrickColor.new("Navy blue") 
baset.Anchored = true 
baset.Size = Vector3.new(1, 16, 8) 
baset.CFrame = CFrame.new(24.5, 25004.5, 1) 
basetm = Instance.new("BlockMesh", baset) 
local baset2 = Instance.new("Part", tard) 
baset2.BrickColor = BrickColor.new("White") 
baset2.Anchored = true 
baset2.Size = Vector3.new(1, 2, 2) 
baset2.CFrame = CFrame.new(24.49, 25010, 2.5) 
baset2m = Instance.new("BlockMesh", baset2) 
local baset3 = Instance.new("Part", tard) 
baset3.BrickColor = BrickColor.new("White") 
baset3.Anchored = true 
baset3.Size = Vector3.new(1, 2, 2) 
baset3.CFrame = CFrame.new(24.49, 25010, -0.5) 
baset3m = Instance.new("BlockMesh", baset3) 

function trans(tran, ref) 
base.Transparency = tran 
base2.Transparency = tran 
base3.Transparency = tran 
base4.Transparency = tran 
base5.Transparency = tran 
base6.Transparency = tran 
base7.Transparency = tran 
base7.Reflectance = ref 
base8.Transparency = tran 
base9.Transparency = tran 
base10.Transparency = tran 
base11.Transparency = tran 
end 

function test(msg) 
if msg == "travel" then 
if on == false then 
on = true 
for i = 1, 3 do 
tfloor11m.Scale = tfloor11m.Scale + Vector3.new(0, i/2, 0) 
tfloor13m.Scale = tfloor13m.Scale + Vector3.new(0, i/2, 0) 
trans(i/7, 1) 
base7.Transparency = 0.5
base7.Reflectance = 0 
wait(0.1) 
end 
for i = 1, 3 do 
tfloor11m.Scale = tfloor11m.Scale - Vector3.new(0, i/2, 0) 
tfloor13m.Scale = tfloor13m.Scale - Vector3.new(0, i/2, 0) 
trans(i/7, 1) 
base7.Transparency = 0.5
base7.Reflectance = 0 
wait(0.1) 
end 
game.Lighting.TimeOfDay = times[math.random(1, #times)] 
for i = 1, 3 do 
tfloor11m.Scale = tfloor11m.Scale + Vector3.new(0, i/2, 0) 
tfloor13m.Scale = tfloor13m.Scale + Vector3.new(0, i/2, 0) 
trans(i/7, 1) 
base7.Transparency = 0.5
base7.Reflectance = 0 
wait(0.1) 
end 
for i = 1, 3 do 
tfloor11m.Scale = tfloor11m.Scale - Vector3.new(0, i/2, 0) 
tfloor13m.Scale = tfloor13m.Scale - Vector3.new(0, i/2, 0) 
trans(i/7, 1) 
base7.Transparency = 0.5
base7.Reflectance = 0 
wait(0.1) 
end 
trans(0, 0) 
base7.Transparency = 0.5
base7.Reflectance = 0 
on = false 
end 
end 
end 

button1.MouseClick:connect(function() 
if on == false then 
on = true 
for i = 1, 3 do 
tfloor11m.Scale = tfloor11m.Scale + Vector3.new(0, i/2, 0) 
tfloor13m.Scale = tfloor13m.Scale + Vector3.new(0, i/2, 0) 
trans(i/7, 1) 
base7.Transparency = 0.5
base7.Reflectance = 0 
wait(0.1) 
end 
for i = 1, 3 do 
tfloor11m.Scale = tfloor11m.Scale - Vector3.new(0, i/2, 0) 
tfloor13m.Scale = tfloor13m.Scale - Vector3.new(0, i/2, 0) 
trans(i/7, 1) 
base7.Transparency = 0.5
base7.Reflectance = 0 
wait(0.1) 
end 
game.Lighting.TimeOfDay = times[math.random(1, #times)] 
for i = 1, 3 do 
tfloor11m.Scale = tfloor11m.Scale + Vector3.new(0, i/2, 0) 
tfloor13m.Scale = tfloor13m.Scale + Vector3.new(0, i/2, 0) 
trans(i/7, 1) 
base7.Transparency = 0.5
base7.Reflectance = 0 
wait(0.1) 
end 
for i = 1, 3 do 
tfloor11m.Scale = tfloor11m.Scale - Vector3.new(0, i/2, 0) 
tfloor13m.Scale = tfloor13m.Scale - Vector3.new(0, i/2, 0) 
trans(i/7, 1) 
base7.Transparency = 0.5
base7.Reflectance = 0 
wait(0.1) 
end 
trans(0, 0) 
base7.Transparency = 0.5
base7.Reflectance = 0 
on = false 
end 
end)
button4.MouseClick:connect(function() 
year = year + 1 
end)
button2.MouseClick:connect(function() 
month = month + 1 
end)
button3.MouseClick:connect(function() 
day = day + 1 
end)
button7.MouseClick:connect(function() 
year = year - 1 
end)
button5.MouseClick:connect(function() 
month = month - 1 
end)
button6.MouseClick:connect(function() 
day = day - 1 
end)
button9.MouseClick:connect(function() 
day = math.random(1, 250) 
month = math.random(1, 395) 
year = math.random(-5000, 250000) 
end)

me.Chatted:connect(test) 

while true do 
tard2.Name = "Date: " ..year.. "/" ..month.. "/" ..day.. " "
for _,v in pairs(players:GetChildren()) do 
if (v.Character.Torso.Position - brick.Position).magnitude < 2 then 
v.Character.Torso.CFrame = tfloor.CFrame + Vector3.new(0, 3, 20) 
end 
end 
for _,v in pairs(players:GetChildren()) do 
if (v.Character.Torso.Position - baset.Position).magnitude < 4.5 then 
v.Character.Torso.CFrame = CFrame.new(0, 5, 0) 
end 
end 
wait() 
end 