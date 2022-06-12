while true do 
grass = {}

pcall(function() workspace.Base.Terrainstorage:remove() end) 

local model = Instance.new("Model", workspace.Base) 
model.Name = "Terrainstorage" 

for i = 1,20 do
for x = 1,20 do
local part = Instance.new("Part", model) 
part.BrickColor = BrickColor.new("Bright blue") 
part.Anchored = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Locked = true 
part.formFactor = "Custom" 
part.Size = Vector3.new(4, 1, 4) 
part.CFrame = CFrame.new(x*4,1,i*4) 
local partm = Instance.new("BlockMesh", part) 
wait() 
end
end 

for i = 1,40 do
thing = model:GetChildren()[math.random(1,400)]
thing.BrickColor = BrickColor.new("Bright green")
table.insert(grass, thing)
end

for i = 1,math.random(1,3) do --how much it spreads
for a = 1,#grass do
for _,o in pairs(model:children()) do
if o:IsA("Part") and (o.Position - grass[a].Position).magnitude <= math.random(2,4) then --change # to that size of bricks, then size of bricks*2
o.BrickColor = BrickColor.new("Bright green")
table.insert(grass, o) --allows spreading to continue
end
end
wait()
end
wait()
end

for _,o in pairs(model:children()) do 
if o.BrickColor == BrickColor.new("Bright green") then 
o.CFrame = o.CFrame + Vector3.new(0, math.random(1,9)/10, 0) 
end 
wait() 
end 

for _,o in pairs(model:children()) do 
if o.BrickColor == BrickColor.new("Bright green") then 
asdf = math.random(1, 6) 
if asdf == 1 then 
local trunk = Instance.new("Part") 
trunk.Parent = o 
trunk.formFactor = "Custom" 
trunk.BrickColor = BrickColor.new("Reddish brown") 
trunk.Size = Vector3.new(0.35, 1.5, 0.35) 
trunk.Anchored = true 
trunk.CFrame = o.CFrame + Vector3.new(0, 1, 0) 
local trunkm = Instance.new("CylinderMesh", trunk) 
trunkm.Scale = Vector3.new(0.5, 1, 0.5) 
local leaves = Instance.new("Part") 
leaves.Parent = o 
leaves.formFactor = "Custom" 
leaves.BrickColor = BrickColor.new("Bright green") 
leaves.Size = Vector3.new(0.35, 1, 0.35) 
leaves.Anchored = true 
leaves.CFrame = o.CFrame + Vector3.new(0, 1.5, 0) 
local leavsm = Instance.new("SpecialMesh", leaves) 
leavsm.MeshType = "Sphere" 
leavsm.Scale = Vector3.new(2, 0.75, 2) 
end 
if asdf == 2 then 
local trunk = Instance.new("Part") 
trunk.Parent = o 
trunk.formFactor = "Custom" 
trunk.BrickColor = BrickColor.new("Reddish brown") 
trunk.Size = Vector3.new(1.75, 1.5, 1.75) 
trunk.Anchored = true 
trunk.CFrame = o.CFrame + Vector3.new(0, 1, 0) 
local trunkm = Instance.new("CylinderMesh", trunk) 
trunkm.Scale = Vector3.new(1, 1, 1) 
local leaves = Instance.new("Part") 
leaves.Parent = o 
leaves.formFactor = "Custom" 
leaves.BrickColor = BrickColor.new("Reddish brown") 
leaves.Size = Vector3.new(0.75, 1, 0.75) 
leaves.Anchored = true 
leaves.CFrame = o.CFrame + Vector3.new(0, 1.75, 0) 
local leavsm = Instance.new("SpecialMesh", leaves) 
leavsm.MeshType = "Sphere" 
leavsm.Scale = Vector3.new(2, 1, 2) 
local door = Instance.new("Part") 
door.Parent = o 
door.formFactor = "Custom" 
door.BrickColor = BrickColor.new("Dark stone grey") 
door.Size = Vector3.new(0.75, 1, 0.75) 
door.Anchored = true 
door.CFrame = o.CFrame + Vector3.new(0, 0.75, 0.5) 
local doorm = Instance.new("BlockMesh", door) 
doorm.Scale = Vector3.new(1, 1, 1) 
end 
end 
wait() 
end 

wait(10) 
end 