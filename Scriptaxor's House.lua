--House in progress-----------------------------------------------------------------------------------------------------
local admin = game.Players.acb227  
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(0, 505, 0) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(0, 0, 0) 
end 
end 
end 
end 



admin.Chatted:connect(onChatted) ------------------------------

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "hot" then 
game.Workspace.acb227.Wall.Transparency = 0.3 
game.Workspace.acb227.Wall2.Transparency = 0.3 
game.Workspace.acb227.Wall3.Transparency = 0.3 
game.Workspace.acb227.Wall4.Transparency = 0.3 --Change the Base to whatever the name of your brick is  
game.Workspace.acb227.Wall5.Transparency = 0.3 
end 
end 
vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if msg == "cold" then 
game.Workspace.acb227.Wall.Transparency = 0 
game.Workspace.acb227.Wall2.Transparency = 0 
game.Workspace.acb227.Wall3.Transparency = 0 
game.Workspace.acb227.Wall4.Transparency = 0  
game.Workspace.acb227.Wall5.Transparency = 0 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "open" then 
game.Workspace.acb227.Door.Transparency = 0.7 --Change the Base to whatever the name of your brick is 
game.Workspace.acb227.Door.CanCollide = false 
end 
end 
vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if msg == "close" then 
game.Workspace.acb227.Door.Transparency = 0 --Change the Base to whatever the name of your brick is 
game.Workspace.acb227.Door.CanCollide = true
end 
end 
vip.Chatted:connect(onChatted) 


------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Floor" 
brick.Size = Vector3.new(50, 1, 50) 
brick.Position = Vector3.new(0, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall" 
brick.Size = Vector3.new(50, 25, 1) 
brick.Position = Vector3.new(0, 500, 24.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall2" 
brick.Size = Vector3.new(50, 25, 1) 
brick.Position = Vector3.new(0, 500, -24.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall3" 
brick.Size = Vector3.new(1, 25, 48) 
brick.Position = Vector3.new(24.5, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall4" 
brick.Size = Vector3.new(1, 25, 20) 
brick.Position = Vector3.new(-24.5, 500, 14) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall5" 
brick.Size = Vector3.new(1, 25, 20) 
brick.Position = Vector3.new(-24.5, 500, -14) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)

------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Door" 
brick.Size = Vector3.new(1, 25, 8) 
brick.Position = Vector3.new(-24.5, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Roof" 
brick.Size = Vector3.new(50, 1, 50) 
brick.Position = Vector3.new(0, 526, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Bright green")
brick.Parent = game.Workspace.acb227 
brick.Name = "Yard" 
brick.Size = Vector3.new(200, 1, 200) 
brick.Position = Vector3.new(0, 498.4, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("White")
brick.Parent = game.Workspace.acb227 
brick.Name = "1" 
brick.Size = Vector3.new(20, 2, 20) 
brick.Position = Vector3.new(50, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("White")
brick.Parent = game.Workspace.acb227 
brick.Name = "1" 
brick.Size = Vector3.new(16, 2, 16) 
brick.Position = Vector3.new(50, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("White")
brick.Parent = game.Workspace.acb227 
brick.Name = "1" 
brick.Size = Vector3.new(12, 2, 12) 
brick.Position = Vector3.new(50, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("White")
brick.Parent = game.Workspace.acb227 
brick.Name = "1" 
brick.Size = Vector3.new(8, 2, 8) 
brick.Position = Vector3.new(50, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("White")
brick.Parent = game.Workspace.acb227 
brick.Name = "1" 
brick.Size = Vector3.new(4, 2, 4) 
brick.Position = Vector3.new(50, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)