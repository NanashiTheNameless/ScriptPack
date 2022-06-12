if workspace:findFirstChild("Dome") then
workspace:findFirstChild("Dome"):remove()
end

local spread = 12 
local m = Instance.new("Model") 
m.Name = "Dome" 
m.Parent = game.Workspace 
local m2 = Instance.new("Model") 
m2.Name = "Doors" 
for ii = 1,2 do 
for i = 1,22 do 
p = Instance.new("Part") 
p.BrickColor = BrickColor.new("Dark stone grey") 
p.Material="Concrete"  
p.Name = "Part"..i
p.Anchored = true 
p.Parent = m 
p.Size = Vector3.new(20,spread*0.1,spread*0.075) 
p.CFrame = CFrame.fromEulerAnglesXYZ(math.rad((i*-2)*4),0,0) * CFrame.new(spread,(ii*0.5)-0.975,spread) 
end 
end 


