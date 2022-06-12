plyr = Game.Players.acb227 
char = plyr.Character 
script.Parent = char 

dog = Instance.new("Model") 
dog.Parent = char 
dog.Name = "Dog" 

fll = Instance.new("Part") 
fll.Size = Vector3.new(1, 2, 1) 
fll.formFactor = "Symmetric" 
fll.Parent = dog 
fll.Anchored = true 
fll.Name = "Front Left Leg" 
fll.CFrame = char["Left Leg"].CFrame * CFrame.new(7, 0, 1) 
fll.BrickColor = BrickColor.new("Reddish brown") 

bll = Instance.new("Part") 
bll.Size = Vector3.new(1, 2, 1) 
bll.formFactor = "Symmetric" 
bll.Parent = dog 
bll.Anchored = true 
bll.Name = "Back Left Leg" 
bll.CFrame = char["Right Leg"].CFrame * CFrame.new(6, 0, -1) 
bll.BrickColor = BrickColor.new("Reddish brown") 

frl = Instance.new("Part") 
frl.Size = Vector3.new(1, 2, 1) 
frl.formFactor = "Symmetric" 
frl.Parent = dog 
frl.Anchored = true 
frl.Name = "Front Rigth Leg" 
frl.CFrame = char["Left Leg"].CFrame * CFrame.new(8, 0, 1) 
frl.BrickColor = BrickColor.new("Reddish brown") 

brl = Instance.new("Part") 
brl.Size = Vector3.new(1, 2, 1) 
brl.formFactor = "Symmetric" 
brl.Parent = dog 
brl.Anchored = true 
brl.Name = "Back Right Leg" 
brl.CFrame = char["Right Leg"].CFrame * CFrame.new(7, 0, -1) 
brl.BrickColor = BrickColor.new("Reddish brown") 

t = Instance.new("Part") 
t.Size = Vector3.new(2, 1, 3) 
t.formFactor = "Symmetric" 
t.Parent = dog 
t.Anchored = true 
t.Name = "Torso" 
t.CFrame = char["Torso"].CFrame * CFrame.new(6.5, 0, 0) 
t.BrickColor = BrickColor.new("Reddish brown") 

h = Instance.new("Part") 
h.Size = Vector3.new(2, 1, 1) 
h.formFactor = "Symmetric" 
h.Parent = dog 
h.Anchored = true 
h.Name = "Head" 
h.CFrame = char["Torso"].CFrame * CFrame.new(6.5, 0, 0) 
h.BrickColor = BrickColor.new("Reddish brown") 
m = Instance.new("SpecialMesh")
m.Parent = h 
m.Scale = Vector3.new(1.3, 1.3, 1.3) 

b = Instance.new("Part") 
b.Size = Vector3.new(1, 2, 1) 
b.formFactor = "Symmetric" 
b.Parent = dog 
b.Anchored = true 
b.Name = "Tail" 
b.CFrame = char["Torso"].CFrame * CFrame.new(6.5, -1, -1.5) 
b.BrickColor = BrickColor.new("Reddish brown") 
m = Instance.new("SpecialMesh")
m.Parent = b 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.4, 1.1, 0.4) 

ha = Instance.new("Part") 
ha.Size = Vector3.new(2, 1, 2) 
ha.formFactor = "Symmetric" 
ha.Parent = dog 
ha.Anchored = true 
ha.Name = "Hat" 
ha.CFrame = char["Torso"].CFrame * CFrame.new(6.5, -1, -1.5) 
ha.BrickColor = BrickColor.new("Reddish brown") 
m = Instance.new("SpecialMesh")
m.Parent = ha 
m.MeshType = "FileMesh" 
m.Scale = Vector3.new(1, 1, 1) 
m.MeshId = char.Fedora.Handle.Mesh.MeshId 
m.TextureId = char.Fedora.Handle.Mesh.TextureId 

function touch(hit) 
for i = 1, 1500 do 
wait(0.1) 
hit.CFrame = h.CFrame * CFrame.new(0, 0, 0.5) 
end 
end 

while true do 
wait() 
fll.CFrame = char["Left Leg"].CFrame * CFrame.new(7, 0, 1) 
bll.CFrame = char["Left Leg"].CFrame * CFrame.new(7, 0, -1) 
frl.CFrame = char["Right Leg"].CFrame * CFrame.new(7, 0, 1) 
brl.CFrame = char["Right Leg"].CFrame * CFrame.new(7, 0, -1) 
t.CFrame = char["Torso"].CFrame * CFrame.new(7, -0.5, 0) 
h.CFrame = char["Torso"].CFrame * CFrame.new(7, 0.5, -0.95) 
b.CFrame = char["Torso"].CFrame * CFrame.new(7.05, -1.1, 1.5) 
ha.CFrame = char["Torso"].CFrame * CFrame.new(7, 1.22, -0.95) 
end 

h.Touched:connect(touch) 