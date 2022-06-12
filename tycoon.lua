local me = game.Players.acb227 
local bp = me.Backpack 
local pg = me.PlayerGui 
local char = me.Character 
local name = me.Name 
local offset = Vector3.new(25, 1, 0) 
local money = 50000 
local color = "Mid stone grey" 
local income = 1 
local brickname = "Droppart" 
local shape = "Ball" 
local blocksize = Vector3.new(1, 1, 1) 
script.Parent = char 

pcall(function() me.leaderstats:remove() end) 

local stats = Instance.new("IntValue")
stats.Name = "leaderstats"
stats.Parent = me

expinsert = Instance.new("IntValue")
expinsert.Parent = stats
expinsert.Name = "Money"
expinsert.Value = money

pcall(function() workspace.Base.MineTycoon:remove() end) 
local model = Instance.new("Model", workspace.Base) 
model.Name = "MineTycoon" 
local model2 = Instance.new("Model", model) 
model2.Name = "Money: " ..money.. "" 
local hum = Instance.new("Humanoid", model2) 
hum.MaxHealth = 0 
hum.Health = 0 

local base = Instance.new("Part", model) 
base.Anchored = true 
base.BrickColor = BrickColor.new("Mid stone grey") 
base.Size = Vector3.new(25, 1, 35) 
base.CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) + offset 
local basem = Instance.new("BlockMesh", base) 
local base2 = Instance.new("Part", model) 
base2.Anchored = true 
base2.BrickColor = BrickColor.new("White") 
base2.Size = Vector3.new(4, 4, 10) 
base2.CFrame = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0) + offset 
local base2m = Instance.new("BlockMesh", base2) 
local base2w = Instance.new("Part", model) 
base2w.Anchored = true 
base2w.BrickColor = BrickColor.new("White") 
base2w.Size = Vector3.new(1, 6, 10) 
base2w.CFrame = CFrame.new(2, 2, -4) * CFrame.Angles(0, 0, 0) + offset 
local base2wm = Instance.new("BlockMesh", base2w) 
local base3 = Instance.new("Part", model) 
base3.Anchored = true 
base3.formFactor = "Custom" 
base3.BrickColor = BrickColor.new("Really black") 
base3.Size = Vector3.new(4, 0.5, 10) 
base3.CFrame = CFrame.new(0, 4, 0) * CFrame.Angles(0, 0, 0) + offset 
base3.Velocity = base3.CFrame.lookVector * 25 
local base3m = Instance.new("BlockMesh", base3) 
base3m.Bevel = 0.1 
local base3w = Instance.new("Part", model) 
base3w.Anchored = true 
base3w.BrickColor = BrickColor.new("White") 
base3w.Size = Vector3.new(1, 6, 9) 
base3w.CFrame = CFrame.new(-2, 2, 0.5) * CFrame.Angles(0, 0, 0) + offset 
local base3wm = Instance.new("BlockMesh", base3w) 
local base4 = Instance.new("Part", model) 
base4.Anchored = true 
base4.BrickColor = BrickColor.new("White") 
base4.Size = Vector3.new(11, 4, 4) 
base4.CFrame = CFrame.new(7, 2, 3) * CFrame.Angles(0, 0, 0) + offset 
local base4m = Instance.new("BlockMesh", base4) 
local base4w = Instance.new("Part", model) 
base4w.Anchored = true 
base4w.BrickColor = BrickColor.new("White") 
base4w.Size = Vector3.new(10, 6, 1) 
base4w.CFrame = CFrame.new(7.5, 2, 0.5) * CFrame.Angles(0, 0, 0) + offset 
local base4wm = Instance.new("BlockMesh", base4w) 
local base5 = Instance.new("Part", model) 
base5.Anchored = true 
base5.formFactor = "Custom" 
base5.BrickColor = BrickColor.new("Really black") 
base5.Size = Vector3.new(4, 0.5, 11) 
base5.CFrame = CFrame.new(7, 4, 3) * CFrame.Angles(0, 1.575, 0) + offset 
base5.Velocity = base5.CFrame.lookVector * 25 
local base5m = Instance.new("BlockMesh", base5) 
local base5w = Instance.new("Part", model) 
base5w.Anchored = true 
base5w.BrickColor = BrickColor.new("White") 
base5w.Size = Vector3.new(15, 6, 1) 
base5w.CFrame = CFrame.new(5, 2, 5.5) * CFrame.Angles(0, 0, 0) + offset 
local base5wm = Instance.new("BlockMesh", base5w) 
local base6 = Instance.new("Part", model) 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("White") 
base6.Size = Vector3.new(14, 4, 4) 
base6.CFrame = CFrame.new(-5, 2, -6) * CFrame.Angles(0, 0, 0) + offset 
local base6m = Instance.new("BlockMesh", base6) 
local base6w = Instance.new("Part", model) 
base6w.Anchored = true 
base6w.BrickColor = BrickColor.new("White") 
base6w.Size = Vector3.new(14, 6, 1) 
base6w.CFrame = CFrame.new(-5, 2, -8.5) * CFrame.Angles(0, 0, 0) + offset 
local base6wm = Instance.new("BlockMesh", base6w) 
local base7 = Instance.new("Part", model) 
base7.Anchored = true 
base7.formFactor = "Custom" 
base7.BrickColor = BrickColor.new("Really black") 
base7.Size = Vector3.new(4, 0.5, 14) 
base7.CFrame = CFrame.new(-5, 4, -6) * CFrame.Angles(0, 1.575, 0) + offset 
base7.Velocity = base5.CFrame.lookVector * 25 
local base7m = Instance.new("BlockMesh", base7) 
local base7w = Instance.new("Part", model) 
base7w.Anchored = true 
base7w.BrickColor = BrickColor.new("White") 
base7w.Size = Vector3.new(10, 6, 1) 
base7w.CFrame = CFrame.new(-7, 2, -3.5) * CFrame.Angles(0, 0, 0) + offset 
local base7wm = Instance.new("BlockMesh", base7w) 
local base8 = Instance.new("Part", model) 
base8.Anchored = true 
base8.formFactor = "Custom" 
base8.CanCollide = false 
base8.BrickColor = BrickColor.new("Reddish brown") 
base8.Size = Vector3.new(4, 4, 4) 
base8.CFrame = CFrame.new(-14, 1.5, -6) * CFrame.Angles(0, 0, 0) + offset 
local base8m = Instance.new("BlockMesh", base8) 
local base9 = Instance.new("Part", model) 
base9.Anchored = true 
base9.formFactor = "Custom" 
base9.CanCollide = false 
base9.BrickColor = BrickColor.new("Dark stone grey") 
base9.Size = Vector3.new(2, 2, 4) 
base9.CFrame = CFrame.new(11, 5, 3) * CFrame.Angles(0, 0, 0) + offset 
local base9m = Instance.new("BlockMesh", base9) 
local base10 = Instance.new("Part", model2) 
base10.Anchored = true 
base10.formFactor = "Custom" 
base10.CanCollide = false 
base10.Name = "Head" 
base10.BrickColor = BrickColor.new("Reddish brown") 
base10.Size = Vector3.new(4, 1, 4) 
base10.CFrame = CFrame.new(-14, 0, -2) * CFrame.Angles(0, 0, 0) + offset 
local base10m = Instance.new("BlockMesh", base10) 
local base11 = Instance.new("Part", model) 
base11.Anchored = true 
base11.formFactor = "Custom" 
base11.CanCollide = false 
base11.BrickColor = BrickColor.new("Really red") 
base11.Size = Vector3.new(4, 1, 4) 
base11.CFrame = CFrame.new(10, 0.5, -7) * CFrame.Angles(0, 0, 0) + offset 
local base11m = Instance.new("CylinderMesh", base11) 
local base12 = Instance.new("Part", model) 
base12.Anchored = true 
base12.formFactor = "Custom" 
base12.CanCollide = false 
base12.Transparency = 1 
base12.BrickColor = BrickColor.new("Really black") 
base12.Size = Vector3.new(2, 2, 4) 
base12.CFrame = CFrame.new(9, 5, 3) * CFrame.Angles(0, 0, 0) + offset 
local base12m = Instance.new("BlockMesh", base12) 
local base13 = Instance.new("Part", model) 
base13.Anchored = true 
base13.formFactor = "Custom" 
base13.CanCollide = false 
base13.Transparency = 1 
base13.BrickColor = BrickColor.new("Reddish brown") 
base13.Size = Vector3.new(2, 2, 4) 
base13.CFrame = CFrame.new(7, 5, 3) * CFrame.Angles(0, 0, 0) + offset 
local base13m = Instance.new("BlockMesh", base13) 
local base14 = Instance.new("Part", model) 
base14.Anchored = true 
base14.formFactor = "Custom" 
base14.CanCollide = false 
base14.BrickColor = BrickColor.new("Really red") 
base14.Size = Vector3.new(4, 1, 4) 
base14.CFrame = CFrame.new(6, 0.5, -10) * CFrame.Angles(0, 0, 0) + offset 
local base14m = Instance.new("CylinderMesh", base14) 
local base15 = Instance.new("Part", model) 
base15.Anchored = true 
base15.formFactor = "Custom" 
base15.CanCollide = false 
base15.BrickColor = BrickColor.new("Really red") 
base15.Size = Vector3.new(4, 1, 4) 
base15.CFrame = CFrame.new(6, 0.5, -15) * CFrame.Angles(0, 0, 0) + offset 
local base15m = Instance.new("CylinderMesh", base15) 

while true do 
base8.Touched:connect(function(hit) 
if hit.Name == "Droppart" then 
hit:remove() 
money = money + 1 
model2.Name = "Money: " ..money.. "" 
end 
if hit.Name == "HIDERE" then 
money = money + income 
hit:remove() 
model2.Name = "Money: " ..money.. "" 
end 
end) 
base11.Touched:connect(function(hit) 
if hit.Parent.Name == name then 
if expinsert.Value >= 500 then 
expinsert.Value = expinsert.Value - 500 
color = "New Yeller" 
income = 5 
base12.Transparency = 0 
brickname = "HIDERE" 
base11:remove() 
end 
end 
end) 
base14.Touched:connect(function(hit) 
if hit.Parent.Name == name then 
if expinsert.Value >= 1000 then 
expinsert.Value = expinsert.Value - 1000 
income = 10 
shape = "Block" 
blocksize = Vector3.new(1, 0.2, 1) 
base13.Transparency = 0 
base14:remove() 
end 
end 
end) 
base10.Touched:connect(function(hit) 
if hit.Parent.Name == name then 
expinsert.Value = expinsert.Value + money
money = 0 
model2.Name = "Money: " ..money.. "" 
end 
end) 
coroutine.resume(coroutine.create(function() 
wait(2.5) 
local droppart = base9:clone() 
droppart.Parent = workspace 
droppart.Anchored = false 
droppart.Shape = shape 
droppart.formFactor = "Custom" 
droppart.CanCollide = true 
droppart.TopSurface = "Smooth" 
droppart.BrickColor = BrickColor.new(color) 
droppart.BottomSurface = "Smooth" 
droppart.Name = brickname 
droppart.Size = blocksize 
droppart.CFrame = base9.CFrame 
for _,v in pairs(droppart:GetChildren()) do 
v:remove() 
end 
end)) 
wait(2.5) 
end 