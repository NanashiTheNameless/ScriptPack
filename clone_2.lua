plyr = Game.Players.acb227 
char = plyr.Character 

mod = Instance.new("Model") 
mod.Name = "acb227" 
mod.Parent = char 

--[[ ra = Instance.new("Part") 
ra.Parent = mod 
ra.formFactor = char["Right Arm"].formFactor 
ra.Name = "Right Arm" 
ra.BrickColor = char["Right Arm"].BrickColor 
ra.Size = char["Right Arm"].Size 
ra.CFrame = char["Right Arm"].CFrame 

la = Instance.new("Part") 
la.Parent = mod 
la.formFactor = char["Left Arm"].formFactor 
la.Name = "Left Arm" 
la.BrickColor = char["Left Arm"].BrickColor 
la.Size = char["Left Arm"].Size 
la.CFrame = char["Left Arm"].CFrame 

h = Instance.new("Part") 
h.Parent = mod 
h.formFactor = char["Head"].formFactor 
h.Name = "Head" 
h.BrickColor = char["Head"].BrickColor 
h.Size = char["Head"].Size 
h.CFrame = char["Head"].CFrame 
m = Instance.new(char.Head.Mesh.className) 
m.Parent = h 
m.Scale = char.Head.Mesh.Scale 
m.MeshType = char.Head.Mesh.MeshType 

t = Instance.new("Part") 
t.Parent = mod 
t.formFactor = char["Torso"].formFactor 
t.Name = "Torso" 
t.BrickColor = char["Torso"].BrickColor 
t.Size = char["Torso"].Size 
t.CFrame = char["Torso"].CFrame 

rl = Instance.new("Part") 
rl.Parent = mod 
rl.formFactor = char["Right Leg"].formFactor 
rl.Name = "Right Leg" 
rl.BrickColor = char["Right Leg"].BrickColor 
rl.Size = char["Right Leg"].Size 
rl.CFrame = char["Right Leg"].CFrame 

ll = Instance.new("Part") 
ll.Parent = mod 
ll.formFactor = char["Left Leg"].formFactor 
ll.Name = "Left Leg" 
ll.BrickColor = char["Left Leg"].BrickColor 
ll.Size = char["Left Leg"].Size 
ll.CFrame = char["Left Leg"].CFrame 

shirt = char.Shirt:clone() 
shirt.Parent = mod 

pants = char.Pants:clone() 
pants.Parent = mod ]] 

for _, v in pairs (char:getChildren()) do 
local clone = v:clone() 
clone.Parent = mod 
end 

for _, v in pairs (clone:getChildren()) do 
v.Anchored = true 
end 