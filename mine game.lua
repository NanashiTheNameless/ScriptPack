local colors = {"Dark orange", "Reddish brown", "New Yeller", "Mid stone grey"} 
pcall(function() workspace.Base.Game:remove() end) 
local mod = Instance.new("Model", workspace.Base) 
mod.Name = "Game" 

local vn = Vector3

for i = 1, 50 do 
ore = Instance.new("Part", mod) 
ore.BrickColor = BrickColor.new(colors[math.random(1, #colors)]) 
ore.formFactor = "Custom" 
ore.Size = vn.new(2, 2, 2) 
ore.Anchored = true 
ore.CanCollide = false 
ore.CFrame = CFrame.new(math.random(-200, 200), 1.5, math.random(-200, 200)) 
ore.Name = "Ore" ..i.. "" 
coroutine.resume(coroutine.create(function() 
while wait() do 
for _,v in pairs(game.Players:GetChildren()) do 
for _,o in pairs(mod:GetChildren()) do 
if (v.Character.Torso.Position - ore.Position).magnitude < 2 then 
if o.Name == ore.Name then 
ore:remove() 
local tool = Instance.new("Tool", v.Backpack) 
if ore.BrickColor == BrickColor.new("Dark orange") then 
tool.Name = "Copper" 
end 
if ore.BrickColor == BrickColor.new("Reddish brown") then 
tool.Name = "Dirt" 
end 
if ore.BrickColor == BrickColor.new("New Yeller") then 
tool.Name = "Gold" 
end 
if ore.BrickColor == BrickColor.new("Mid stone grey") then 
tool.Name = "Tin" 
end 
end 
end 
end 
end 
end 
end)) 
end 