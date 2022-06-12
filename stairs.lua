pcall(function() workspace.Base.Elev:remove() end) 
local mod = Instance.new("Model", workspace.Base) 
mod.Name = "Elev" 

local base = Instance.new("Part", mod) 
base.CFrame = CFrame.new(25, 25, 0)
base:BreakJoints() 

for i = 1, 10 do 
part1 = Instance.new("Part", mod) 
part1.Size = Vector3.new(10, 1, 2) 
part1.Anchored = true 
part1.CFrame = CFrame.new(25, 25, 0) 
part1.BrickColor = BrickColor.new("Really black") 
part1:BreakJoints() 
part1m = Instance.new("BlockMesh", part1) 
part1m.Bevel = 0.1
weld = Instance.new("Weld") 
weld.Parent = part1 
weld.Part0 = part1 
weld.Part1 = base 
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(20*i)) 
wait() 
end 
--[[
wait(5) 

for i = 1, 150 do 
for _,v in pairs(mod:GetChildren()) do 
v.CFrame = v.CFrame + Vector3.new(0, 0.25/2, 0) 
end 
wait() 
end ]]