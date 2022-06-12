space = {}
colors = {"Bright blue", "Bright yellow", "Bright green", "Bright red", "Really black", "Really black", "Really black", "Really black", "Really black", "Really black"} 
script.Parent = workspace.acb227
pcall(function() workspace.Base.Spacegen:remove() end) 

local model = Instance.new("Model", workspace.Base) 
model.Name = "Spacegen" 

for i = 1,20 do
for x = 1,20 do
local part = Instance.new("Part", model) 
part.BrickColor = BrickColor.new("Really black") 
part.Anchored = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.formFactor = "Custom" 
part.Size = Vector3.new(1, 1, 1) 
part.CFrame = CFrame.new(x,1,i) 
wait() 
end
end 

for i = 1,5 do
thing = model:GetChildren()[math.random(1,400)]
thing.BrickColor = BrickColor.new(colors[math.random(1, 10)])
table.insert(space, thing)
end

for i = 1,math.random(1,3) do --how much it spreads
for a = 1,#space do
for _,o in pairs(model:children()) do
if o:IsA("Part") and (o.Position - space[a].Position).magnitude <= math.random(1,2) then --change # to that size of bricks, then size of bricks*2
o.BrickColor = BrickColor.new(colors[math.random(1, 10)])
table.insert(space, o) --allows spreading to continue
end
end
wait()
end
wait()
end

for _,o in pairs(model:children()) do 
if o.BrickColor == BrickColor.new("Really black") then 
o.CFrame = o.CFrame - Vector3.new(0, 0.25, 0) 
local partm = Instance.new("BlockMesh", o) 
end 
wait() 
end 

for _,o in pairs(model:children()) do 
if o.BrickColor == BrickColor.new("Bright blue") then 
o.CFrame = o.CFrame + Vector3.new(0, 0.25, 0) 
local partm = Instance.new("SpecialMesh", o) 
partm.MeshType = "Sphere" 
local partb = Instance.new("Part", model) 
partb.BrickColor = BrickColor.new("Really black") 
partb.Anchored = true 
partb.TopSurface = "Smooth" 
partb.BottomSurface = "Smooth" 
partb.formFactor = "Custom" 
partb.Size = Vector3.new(1, 0.5, 1) 
partb.CFrame = o.CFrame - Vector3.new(0, 0.25, 0) 
local partbm = Instance.new("BlockMesh", partb) 
partbm.Scale = Vector3.new(1, 1, 1) 
end 
wait() 
end 
for _,o in pairs(model:children()) do 
if o.BrickColor == BrickColor.new("Bright yellow") then 
o.CFrame = o.CFrame + Vector3.new(0, 0.5, 0) 
local partm = Instance.new("SpecialMesh", o) 
partm.MeshType = "Sphere" 
local partb = Instance.new("Part", model) 
partb.BrickColor = BrickColor.new("Really black") 
partb.Anchored = true 
partb.TopSurface = "Smooth" 
partb.BottomSurface = "Smooth" 
partb.formFactor = "Custom" 
partb.Size = Vector3.new(1, 0.5, 1) 
partb.CFrame = o.CFrame - Vector3.new(0, 0.5, 0) 
local partbm = Instance.new("BlockMesh", partb) 
partbm.Scale = Vector3.new(1, 1, 1) 
end 
wait() 
end 
for _,o in pairs(model:children()) do 
if o.BrickColor == BrickColor.new("Bright red") then 
o.CFrame = o.CFrame + Vector3.new(0, 0.6, 0) 
local partm = Instance.new("SpecialMesh", o) 
partm.MeshType = "Sphere" 
local partb = Instance.new("Part", model) 
partb.BrickColor = BrickColor.new("Really black") 
partb.Anchored = true 
partb.TopSurface = "Smooth" 
partb.BottomSurface = "Smooth" 
partb.formFactor = "Custom" 
partb.Size = Vector3.new(1, 0.5, 1) 
partb.CFrame = o.CFrame - Vector3.new(0, 0.6, 0) 
local partbm = Instance.new("BlockMesh", partb) 
partbm.Scale = Vector3.new(1, 1, 1) 
end 
wait() 
end 
for _,o in pairs(model:children()) do 
if o.BrickColor == BrickColor.new("Bright green") then 
o.CFrame = o.CFrame + Vector3.new(0, 0.7, 0) 
local partm = Instance.new("SpecialMesh", o) 
partm.MeshType = "Sphere" 
local partb = Instance.new("Part", model) 
partb.BrickColor = BrickColor.new("Really black") 
partb.Anchored = true 
partb.TopSurface = "Smooth" 
partb.BottomSurface = "Smooth" 
partb.formFactor = "Custom" 
partb.Size = Vector3.new(1, 0.5, 1) 
partb.CFrame = o.CFrame - Vector3.new(0, 0.7, 0) 
local partbm = Instance.new("BlockMesh", partb) 
partbm.Scale = Vector3.new(1, 1, 1) 
end 
wait() 
end 
