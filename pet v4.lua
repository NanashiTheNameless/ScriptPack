me = Game.Players.acb227 
char = me.Character 
script.Parent = char
script.Name = "_Main" 

mo = Instance.new("Model") 
mo.Parent = char 
mo.Name = "bingbangboom" 

head = Instance.new("Part") 
head.Parent = mo 
head.Name = "Head" 
head.CanCollide = false 
head.formFactor = "Symmetric" 
head.Transparency = 0.45 
head.BrickColor = BrickColor.new("Bright green") 
head.Size = Vector3.new(2, 1, 1) 
head.Anchored = true 
i = Instance.new("SpecialMesh")
i.Scale = Vector3.new(1.3, 1.3, 1.3)
i.Parent = head 
---------------------------------
torso = Instance.new("Part") 
torso.Parent = mo 
torso.CanCollide = false 
torso.Name = "Torso" 
torso.formFactor = "Symmetric" 
torso.Transparency = 0.45 
torso.BrickColor = BrickColor.new("Bright green") 
torso.Size = Vector3.new(2, 2, 1) 
torso.Anchored = true 
is = Instance.new("SpecialMesh")
is.MeshType = "Brick" 
is.Scale = Vector3.new(1, 1, 1)
is.Parent = torso 
---------------------------------
ra = Instance.new("Part") 
ra.Parent = mo 
ra.CanCollide = false 
ra.Name = "RA" 
ra.formFactor = "Symmetric" 
ra.Transparency = 0.45 
ra.BrickColor = BrickColor.new("Bright green") 
ra.Size = Vector3.new(1, 2, 1) 
ra.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = ra 
---------------------------------
la = Instance.new("Part") 
la.CanCollide = false 
la.Parent = mo 
la.Name = "LA" 
la.formFactor = "Symmetric" 
la.Transparency = 0.45 
la.BrickColor = BrickColor.new("Bright green") 
la.Size = Vector3.new(1, 2, 1) 
la.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = la 
---------------------------------
---------------------------------
rl = Instance.new("Part") 
rl.Parent = mo 
rl.CanCollide = false 
rl.Name = "RL" 
rl.formFactor = "Symmetric" 
rl.Transparency = 0.45 
rl.BrickColor = BrickColor.new("Bright green") 
rl.Size = Vector3.new(1, 2, 1) 
rl.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = rl 
---------------------------------
ll = Instance.new("Part") 
ll.Parent = mo 
ll.CanCollide = false 
ll.Name = "LL" 
ll.formFactor = "Symmetric" 
ll.Transparency = 0.45 
ll.BrickColor = BrickColor.new("Bright green") 
ll.Size = Vector3.new(1, 2, 1) 
ll.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = ll 
---------------------------------
--[[h = Instance.new("Part") 
h.Parent = mo 
h.Name = "Fedora" 
h.CanCollide = false 
h.formFactor = "Symmetric" 
h.Transparency = 0.45 
h.BrickColor = BrickColor.new("Bright green") 
h.Size = Vector3.new(1, 2, 1) 
h.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "FileMesh" 
i.Scale = Vector3.new(1, 1, 1)
i.TextureId = "http://www.roblox.com/asset/?id=31600964" 
i.MeshId = "http://www.roblox.com/asset/?id=13640868" 
i.Parent = h ]]
---------------------------------
fire = Instance.new("Fire") 
fire.Parent = torso 
fire.Size = 10 
fire.Heat = 2 
fire.Color = Color3.new(0, 255, 0) 
fire.SecondaryColor = Color3.new(0, 102, 0) 
	local gui = Instance.new("BillboardGui")
	gui.Parent = mo
	gui.Adornee = head
	gui.Size = UDim2.new(1, 0, 1, 0)
	gui.StudsOffset = Vector3.new(0, 3, 0)
	local frame = Instance.new("Frame")
	frame.Parent = gui
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundTransparency = 1
	local text = Instance.new("TextLabel")
	text.Parent = frame
	text.Size = UDim2.new(1, 0, 1, 0)
	text.BackgroundTransparency = 1
	text.Text = mo.Name.. " General -- " ..me.Name 
---------------------------------
function talk(msg) 
if msg == "mode:rage" then 
fire.Heat = 25 
fire.Color = Color3.new(255, 0, 0) 
fire.SecondaryColor = Color3.new(102, 0, 0) 
end 
if msg == "mode:calm" then 
fire.Heat = 0 
fire.Color = Color3.new(0, 255, 0) 
fire.SecondaryColor = Color3.new(0, 102, 0) 
end 
if msg == "mode:player" then 
head.Transparency = 0.45
torso.Transparency = 0.45
torso.Size = Vector3.new(2, 2, 1) 
is.MeshType = "Brick" 
rl.Transparency = 0.45
ra.Transparency = 0.45
ll.Transparency = 0.45
la.Transparency = 0.45
h.Transparency = 0.45 
end 
if msg == "mode:block" then 
head.Transparency = 1
torso.Transparency = 0.45 
torso.Size = Vector3.new(2, 2, 2) 
is.MeshType = "Brick" 
rl.Transparency = 1
ra.Transparency = 1
ll.Transparency = 1
la.Transparency = 1
h.Transparency = 1 
end 
if msg == "mode:ball" then 
head.Transparency = 1
torso.Transparency = 0.45 
torso.Size = Vector3.new(2, 2, 2) 
is.MeshType = "Sphere" 
rl.Transparency = 1
ra.Transparency = 1
ll.Transparency = 1
la.Transparency = 1
h.Transparency = 1 
end 
if msg == "new" then 
head:remove()  
torso:remove()  
rl:remove()  
ra:remove()  
ll:remove()  
la:remove()  
h:remove()  
sc = script:clone() 
sc.Parent = char 
script:remove() 
end 
end 
function talk2(msg) 
if string.sub(msg, 1, 5) == "kill/" then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
look[i].Character:BreakJoints() 
end 
end 
end 
if string.sub(msg, 1, 5) == "hurt/" then 
said = string.lower(string.sub(msg, 6)) 
said2 = string.lower(string.sub(msg, 8)) 
said2 = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
look[i].Character.Humanoid.Health = look[i].Character.Humanoid.Health - said2 - said3 
end 
end 
end 
if string.sub(msg, 1, 5) == "heal/" then 
said = string.lower(string.sub(msg, 6)) 
said2 = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
look[i].Character.Humanoid.Health = look[i].Character.Humanoid.Health + said2 + said3 
end 
end 
end 
if string.sub(msg, 1, 8) == "explode/" then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
exp = Instance.new("Explosion", Workspace)
exp.Position = look[i].Character.Torso.Position 
end 
end 
end 
end 
me.Chatted:connect(talk) 
me.Chatted:connect(talk2) 
---------------------------------
x = 5 
y = 0 
z = -2

while true do 
wait(0.001) 
head.CFrame = char.Head.CFrame + Vector3.new(x, y, z)
torso.CFrame = char.Torso.CFrame + Vector3.new(x, y, z)
ra.CFrame = char["Right Arm"].CFrame + Vector3.new(x, y, z)
la.CFrame = char["Left Arm"].CFrame + Vector3.new(x, y, z)
rl.CFrame = char["Right Leg"].CFrame + Vector3.new(x, y, z)
ll.CFrame = char["Left Leg"].CFrame + Vector3.new(x, y, z)
end 