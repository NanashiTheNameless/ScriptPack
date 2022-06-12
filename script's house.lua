local b = Instance.new("Part") 
b.Parent = Workspace.Scriptaxor 
b.CFrame = CFrame.new(627.5,15.5,-177) 
b.Size = Vector3.new(45,1,44) 
b.BrickColor = BrickColor.new("Really black") 
b.Transparency = 0 
b.Reflectance = 0.1 
b.Anchored = true 
b.CanCollide = true 
b.Name = "Floor" 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

local p = Instance.new("Part") 
p.Parent = Workspace.Scriptaxor 
p.CFrame = CFrame.new(627.5,15.5,-177) 
p.Size = Vector3.new(45,1,10) 
p.BrickColor = BrickColor.new("Really black") 
p.Transparency = 0 
p.Reflectance = 0.1 
p.Anchored = true 
p.CanCollide = true 
p.Name = "Path" 
p.Locked = true 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
game.Workspace.Scriptaxor.Path.CFrame = CFrame.new(627.5,15.5,-177) 



local admin = game.Players.Scriptaxor 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = b,CFrame.new(627.5,16.5,-177) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = p.CFrame.new(0, 3, 0) 
end 
end 
end 
end 



