local b = Instance.new("Part") 
b.Parent = Workspace 
b.Position = Vector3.new(0,200,0) 
b.Size = Vector3.new(70,1,70) 
b.BrickColor = BrickColor.new("Bright Blue") 
b.Transparency = 0 
b.Reflectance = 0.1 
b.Anchored = true 
b.CanCollide = true 
b.Name = ("Floor") 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

local b = Instance.new("Part") 
b.Parent = Workspace 
b.Position = Vector3.new(0,200,0) 
b.Size = Vector3.new(70,1,70) 
b.BrickColor = BrickColor.new("Bright Blue") 
b.Transparency = 0 
b.Reflectance = 0.1 
b.Anchored = true 
b.CanCollide = true 
b.Name = ("Roof") 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

local b = Instance.new("Part") 
b.Parent = Workspace 
b.Position = Vector3.new(0,200,34.5) 
b.Size = Vector3.new(70,70,1) 
b.BrickColor = BrickColor.new("Bright Blue") 
b.Transparency = 0 
b.Reflectance = 0.1 
b.Anchored = true 
b.CanCollide = true 
b.Name = ("Wall2") 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

local b = Instance.new("Part") 
b.Parent = Workspace 
b.Position = Vector3.new(35,200,0) 
b.Size = Vector3.new(1,70,68) 
b.BrickColor = BrickColor.new("Bright Blue") 
b.Transparency = 0 
b.Reflectance = 0.1 
b.Anchored = true 
b.CanCollide = true 
b.Name = ("Wall3") 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

local b = Instance.new("Part") 
b.Parent = Workspace 
b.Position = Vector3.new(-35,200,0) 
b.Size = Vector3.new(1,70,68) 
b.BrickColor = BrickColor.new("Bright Blue") 
b.Transparency = 0 
b.Reflectance = 0.1 
b.Anchored = true 
b.CanCollide = true 
b.Name = ("Wall4") 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 


local b = Instance.new("Part") 
b.Parent = Workspace 
b.Position = Vector3.new(0,200,-34.5) 
b.Size = Vector3.new(70,70,1) 
b.BrickColor = BrickColor.new("Bright Blue") 
b.Transparency = 0 
b.Reflectance = 0.1 
b.Anchored = true 
b.CanCollide = true 
b.Name = ("Wall1") 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

local admin = game.Players.Scriptaxor 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(0,203,0) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(0, 3, 0) 
end 
end 
end 
end 



admin.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "hot" then 
game.Workspace.acb227.Wall.Transparency = 0.3 
game.Workspace.acb227.Wall2.Transparency = 0.3 
game.Workspace.acb227.Wall3.Transparency = 0.3 
game.Workspace.acb227.Wall4.Transparency = 0.3 --Change the Base to whatever the name of your brick is  
end 
end 
vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if msg == "cold" then 
game.Workspace.acb227.Wall.Transparency = 0 
game.Workspace.acb227.Wall2.Transparency = 0 
game.Workspace.acb227.Wall3.Transparency = 0 
game.Workspace.acb227.Wall4.Transparency = 0  
end 
end 
vip.Chatted:connect(onChatted) 