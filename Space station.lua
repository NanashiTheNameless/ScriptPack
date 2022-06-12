local admin = game.Players.acb227 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(0, 2505, 0) 
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

----------------------------------------------------------------------------
char = workspace.acb227 
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = char 
brick.Name = "Floor" 
brick.Size = Vector3.new(200, 1, 100) 
brick.Position = Vector3.new(0, 2500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = char 
brick.Name = "Wall" 
brick.Size = Vector3.new(200, 15, 1) 
brick.Position = Vector3.new(0, 2500, 49.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = char 
brick.Name = "Wall" 
brick.Size = Vector3.new(200, 15, 1) 
brick.Position = Vector3.new(0, 2500, -49.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = char 
brick.Name = "Wall" 
brick.Size = Vector3.new(1, 15, 98) 
brick.Position = Vector3.new(-100, 2500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = char 
brick.Name = "Wall" 
brick.Size = Vector3.new(1, 15, 98) 
brick.Position = Vector3.new(100, 2500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Mid grey")
brick.Parent = char 
brick.Name = "Ceiling" 
brick.Size = Vector3.new(200, 1, 100) 
brick.Position = Vector3.new(0, 2500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0 
brick.FormFactor = (2)