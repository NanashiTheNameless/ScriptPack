local admin = game.Players.acb227 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(0, 117, 0) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(5, 3, 0) 
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
game.Workspace.acb227.Wall6.Transparency = 0.7 
end 
end 
vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if msg == "cold" then 
game.Workspace.acb227.Wall.Transparency = 0 
game.Workspace.acb227.Wall2.Transparency = 0 
game.Workspace.acb227.Wall3.Transparency = 0 
game.Workspace.acb227.Wall4.Transparency = 0 
game.Workspace.acb227.Wall5.Transparency = 0 --Change the Base to whatever the name of your brick is 
game.Workspace.acb227.Wall6.Transparency = 0 
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

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "no" then 
game.Workspace.acb227.Porch.Transparency = 1 
game.Workspace.acb227.Porch.CanCollide = false 
end 
end 
vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if msg == "yes" then 
game.Workspace.acb227.Porch.Transparency = 0 
game.Workspace.acb227.Porch.CanCollide = true 
end 
end 
vip.Chatted:connect(onChatted) 

------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Floor" 
brick.Size = Vector3.new(50, 1, 50) 
brick.Position = Vector3.new(0, 115, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "1" 
brick.Size = Vector3.new(25, 1, 1) 
brick.Position = Vector3.new(0, 101, 25) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "2" 
brick.Size = Vector3.new(25, 1, 1) 
brick.Position = Vector3.new(0, 103, 25) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "3" 
brick.Size = Vector3.new(25, 1, 1) 
brick.Position = Vector3.new(0, 105, 25) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "4" 
brick.Size = Vector3.new(25, 1, 1) 
brick.Position = Vector3.new(0, 107, 25) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "5" 
brick.Size = Vector3.new(25, 1, 1) 
brick.Position = Vector3.new(0, 109, 25) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "6" 
brick.Size = Vector3.new(25, 1, 1) 
brick.Position = Vector3.new(0, 111, 25) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "7" 
brick.Size = Vector3.new(25, 1, 1) 
brick.Position = Vector3.new(0, 113, 25) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall" 
brick.Size = Vector3.new(12.5, 15, 1) 
brick.Position = Vector3.new(18.75, 115, 24.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall2" 
brick.Size = Vector3.new(12.5, 15, 1) 
brick.Position = Vector3.new(-18.75, 115, 24.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Door" 
brick.Size = Vector3.new(25, 15, 1) 
brick.Position = Vector3.new(0, 115, 24.5) 
brick.Anchored = true 
brick.CanCollide = false 
brick.Locked = true 
brick.Transparency = 0.7 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall3" 
brick.Size = Vector3.new(50, 15, 1) 
brick.Position = Vector3.new(0, 115, -24.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall4" 
brick.Size = Vector3.new(1, 15, 48) 
brick.Position = Vector3.new(-24.5, 115, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall5" 
brick.Size = Vector3.new(1, 15, 48) 
brick.Position = Vector3.new(24.5, 116, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Roof" 
brick.Size = Vector3.new(17, 1, 50) 
brick.Position = Vector3.new(-16.5, 129, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Roof" 
brick.Size = Vector3.new(17, 1, 50) 
brick.Position = Vector3.new(16.5, 129, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Roof" 
brick.Size = Vector3.new(16, 1, 10) 
brick.Position = Vector3.new(0, 129, 20) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Roof" 
brick.Size = Vector3.new(16, 1, 10) 
brick.Position = Vector3.new(0, 129, -20) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
-------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Really black")
brick.Parent = game.Workspace.acb227 
brick.Name = "Wall6" 
brick.Size = Vector3.new(16, 1, 30) 
brick.Position = Vector3.new(0, 131.2, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Dark green")
brick.Parent = game.Workspace.acb227 
brick.Name = "Porch" 
brick.Size = Vector3.new(55, 1, 55) 
brick.Position = Vector3.new(0, 99, 50) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------Fence
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 52) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 50) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 48) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 46) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 44) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 42) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 40) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 38) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 36) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 34) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 32) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 30) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 28) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 26) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 24) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(26, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 54) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 56) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 58) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 60) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 62) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 64) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 66) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 68) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 70) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 72) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 74) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(27, 99, 76) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(24, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(22, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(20, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(18, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(16, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(14, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(12, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(10, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(8, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(6, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(4, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(2, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(0, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-2, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-4, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-6, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-8, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-10, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-12, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-14, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-16, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-18, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-20, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-22, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-24, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-26, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 24) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 26) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 28) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 30) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 32) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 34) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 36) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 38) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 40) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 42) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 44) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 46) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 48) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 50) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 52) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 54) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 56) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 58) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 60) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 62) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 64) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 66) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 68) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 70) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 72) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 74) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-27, 99, 76) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-26, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-24, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-22, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-20, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-18, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-16, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-14, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-12, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-10, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-8, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-6, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-4, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(-2, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(0, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(2, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(4, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(6, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(8, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(10, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(12, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(14, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(16, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(18, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(20, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(22, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(24, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(26, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 1, 55) 
brick.Position = Vector3.new(27, 99, 50) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(1, 1, 55) 
brick.Position = Vector3.new(-27, 99, 50) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(53, 1, 1) 
brick.Position = Vector3.new(0, 99, 77) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Fence" 
brick.Size = Vector3.new(53, 1, 1) 
brick.Position = Vector3.new(0, 99, 23) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Pool" 
brick.Size = Vector3.new(15, 0.4, 15) 
brick.Position = Vector3.new(0, 99, 55) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = ("Plate")
brick.TopSurface = "Smooth"
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Pool" 
brick.Size = Vector3.new(15, 4, 1) 
brick.Position = Vector3.new(0, 99, 48) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = ("Plate")
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Pool" 
brick.Size = Vector3.new(15, 4, 1) 
brick.Position = Vector3.new(0, 99, 62) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = ("Plate")
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Pool" 
brick.Size = Vector3.new(1, 4, 13) 
brick.Position = Vector3.new(7, 99, 55) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = ("Plate")
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = game.Workspace.acb227 
brick.Name = "Pool" 
brick.Size = Vector3.new(1, 4, 13) 
brick.Position = Vector3.new(-7, 99, 55) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = ("Plate")
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Bright blue")
brick.Parent = game.Workspace.acb227 
brick.Name = "Pool" 
brick.Size = Vector3.new(13, 4, 13) 
brick.Position = Vector3.new(0, 99, 55) 
brick.Anchored = true 
brick.CanCollide = false 
brick.Locked = true 
brick.Transparency = 0.5 
brick.Reflectance = 0 
brick.FormFactor = ("Plate")
brick.TopSurface = "Smooth"