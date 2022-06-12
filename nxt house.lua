local base = Instance.new("Part") 
base.Parent = game.Workspace.acb227 
base.Name = "NewBrick" 
base.Size = Vector3.new(25, 1, 25) 
base.Position = Vector3.new(15, 1, 15) 
base.Anchored = true 
base.CanCollide = true 
base.Locked = true 
base.BrickColor = BrickColor.new("Really black") 
base.Transparency = 0 
base.Reflectance = 0 
base.TopSurface = "Smooth" 
base.BottomSurface = "Smooth" 
base.CFrame = CFrame.new(50, 250, 50)
----------------------------------------------mesh
h = Instance.new("BlockMesh") 
h.Scale = Vector3.new(1, 1, 1) 
h.Parent = base 

local path = Instance.new("Part") 
path.Parent = game.Workspace.acb227 
path.Name = "NewBrick" 
path.Size = Vector3.new(49, 1, 7) 
path.Position = Vector3.new(15, 1, 15) 
path.Anchored = true 
path.CanCollide = true 
path.Locked = true 
path.BrickColor = BrickColor.new("Really black") 
path.Transparency = 0 
path.Reflectance = 0 
path.TopSurface = "Smooth" 
path.BottomSurface = "Smooth" 
path.CFrame = CFrame.new(62.5, 250, 50)
----------------------------------------------mesh
h = Instance.new("BlockMesh") 
h.Scale = Vector3.new(1, 0.99, 1) 
h.Parent = path 
























































local admin = game.Players.acb227 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = base.CFrame + Vector3.new(0, 5, 0) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = workspace.Base.CFrame + Vector3.new(0, 5, 0) 
end 
end 
end 
end 


admin.Chatted:connect(onChatted)

admin.Chatted:connect(function(msg) 
if msg == "removed" then 
path.CFrame = path.CFrame 
path.Size = Vector3.new(48, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(47, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(46, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(45, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(44, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(43, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(42, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(41, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(40, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(48, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(39, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(38, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(37, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(36, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(35, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(34, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(33, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(32, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(31, 1, 7)
wait(0.1) 
path.CFrame = path.CFrame 
path.Size = Vector3.new(30, 1, 7)
end 
end) 
