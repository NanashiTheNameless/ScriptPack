local admin = game.Players.acb227 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(50, 55, 40) 
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



admin.Chatted:connect(onChatted)
script.Parent = workspace.acb227
Floor = Instance.new("Part") 
Floor.Position = Vector3.new(50, 50, 40) 
Floor.Parent = workspace.acb227
Floor.Size = Vector3.new(35, 1, 45) 
Floor.Anchored = true 
Floor.Locked = true
Floor.BrickColor = BrickColor.new("Black")
door = Instance.new("Part") 
door.Position = Vector3.new(33, 50, 40) 
door.Parent = workspace.acb227
door.Size = Vector3.new(1, 10, 9) 
door.Anchored = true 
door.Locked = true
door.BrickColor = BrickColor.new("Black")
button1 = Instance.new("Part") 
button1.Position = Vector3.new(40, 50, 35) 
button1.Parent = workspace.acb227
button1.Size = Vector3.new(2, 1, 2) 
button1.Anchored = true 
button1.Locked = true
button1.BrickColor = BrickColor.new("Earth green")
button2 = Instance.new("Part") 
button2.Position = Vector3.new(40, 50, 45) 
button2.Parent = workspace.acb227
button2.Size = Vector3.new(2, 1, 2) 
button2.Anchored = true 
button2.Locked = true
button2.BrickColor = BrickColor.new("Bright red")
wall = Instance.new("Part") 
wall.Position = Vector3.new(33, 50, 53.5) 
wall.Parent = workspace.acb227
wall.Size = Vector3.new(1, 20, 18.5) 
wall.Anchored = true 
wall.Locked = true
wall.BrickColor = BrickColor.new("Black")
wall = Instance.new("Part") 
wall.Position = Vector3.new(33, 50, 40) 
wall.Parent = workspace.acb227
wall.Size = Vector3.new(1, 11, 9) 
wall.Anchored = true 
wall.Locked = true
wall.BrickColor = BrickColor.new("Black")
wall = Instance.new("Part") 
wall.Position = Vector3.new(33, 50, 26.5) 
wall.Parent = workspace.acb227
wall.Size = Vector3.new(1, 20, 18.5) 
wall.Anchored = true 
wall.Locked = true
wall.BrickColor = BrickColor.new("Black")
wall = Instance.new("Part") 
wall.Position = Vector3.new(67, 50, 40) 
wall.Parent = workspace.acb227
wall.Size = Vector3.new(1, 20, 45) 
wall.Anchored = true 
wall.Locked = true
wall.BrickColor = BrickColor.new("Black")
wall = Instance.new("Part") 
wall.Position = Vector3.new(50, 50, 18) 
wall.Parent = workspace.acb227
wall.Size = Vector3.new(33, 20, 1) 
wall.Anchored = true 
wall.Locked = true
wall.BrickColor = BrickColor.new("Black")
wall = Instance.new("Part") 
wall.Position = Vector3.new(50, 50, 62) 
wall.Parent = workspace.acb227
wall.Size = Vector3.new(33, 20, 1) 
wall.Anchored = true 
wall.Locked = true
wall.BrickColor = BrickColor.new("Black")
Tele = Instance.new("Part") 
Tele.Position = Vector3.new(50, 50, 40) 
Tele.Parent = workspace.acb227
Tele.Size = Vector3.new(5, 20, 5) 
Tele.Anchored = true 
Tele.Locked = true
Tele.CanCollide = false 
Tele.Transparency = 0.7
Tele.BrickColor = BrickColor.new("Bright blue")
function onTouched(hit)
	door.Transparency= 1 
	door.CanCollide= false 
end
button1.Touched:connect(onTouched)
function onTouched(hit)
	door.Transparency= 0 
	door.CanCollide= true 
end
button2.Touched:connect(onTouched)