-----------------------------------------------------------House-------------------------------------------------------------------------------------------------------------------------- 

admin = {"yfc"} 

offset = Vector3.new(0, 0, 0) 
bottom = Instance.new("Part") 
bottom.Parent = Workspace 
bottom.Name = "lol" 
bottom.Anchored = true 
bottom.Locked = false 
bottom.Size = Vector3.new(50,1,50) 
bottom.CFrame = CFrame.new(Vector3.new(0, 1, 0) + offset) 
bottom.BrickColor = BrickColor.new("Black") 
wait(.5) 
side = Instance.new("Part") 
side.Parent = Workspace 
side.Size = Vector3.new(50,17,2) 
side.BrickColor = BrickColor.new("White") 
side.CFrame = CFrame.new(Vector3.new(0,10,24) + offset) 
side.Anchored = true 
side.Locked = false 
wait(.5) 
side2 = Instance.new("Part") 
side2.Parent = Workspace 
side2.Size = Vector3.new(50,17,2) 
side2.BrickColor = BrickColor.new("White") 
side2.CFrame = CFrame.new(Vector3.new(0,10,-24) + offset) 
side2.Anchored = true 
side2.Locked = false 
wait(.5) 
side3 = Instance.new("Part") 
side3.Parent = Workspace 
side3.Size = Vector3.new(2,17,50) 
side3.BrickColor = BrickColor.new("White") 
side3.CFrame = CFrame.new(Vector3.new(24,10,0) + offset) 
side3.Anchored = true 
side3.Locked = false 
wait(.5) 
side4 = Instance.new("Part") 
side4.Parent = Workspace 
side4.Size = Vector3.new(2,17,20) 
side4.BrickColor = BrickColor.new("White") 
side4.CFrame = CFrame.new(Vector3.new(-24,10,13) + offset) 
side4.Anchored = true 
side4.Locked = false 
wait(.5) 
side5 = Instance.new("Part") 
side5.Parent = Workspace 
side5.Size = Vector3.new(2,17,20) 
side5.BrickColor = BrickColor.new("White") 
side5.CFrame = CFrame.new(Vector3.new(-24,10,-13) + offset) 
side5.Anchored = true 
side5.Locked = false 
wait(.5) 
door = Instance.new("Part") 
door.Parent = game.Workspace 
door.BrickColor = BrickColor.new("White") 
door.Size = Vector3.new(2,10,6) 
door.CFrame = CFrame.new(Vector3.new(-24,6,0) + offset) 
door.BrickColor = BrickColor.new("Black") 
door.Anchored = true 
door.Locked = false 
wait(.5) 
part = Instance.new("Part") 
part.Parent = side5 
part.BrickColor = BrickColor.new("White") 
part.CFrame = CFrame.new(Vector3.new(-24,13,0) + offset) 
part.Anchored = true 
part.Size = Vector3.new(2,8,6) 
part.Locked = false  
wait(0.5) 
top = Instance.new("Part") 
top.Parent = Workspace 
top.Name = "lol" 
top.Anchored = true 
top.Locked = false 
top.Size = Vector3.new(50,1,50) 
top.CFrame = CFrame.new(Vector3.new(0, 18, 0) + offset) 
top.BrickColor = BrickColor.new("Black") 

function cmds(msg) 
if msg == "open" then 
door.CFrame = door.CFrame + Vector3.new(0, 10, 0) 
end 
if msg == "close" then 
door.CFrame = door.CFrame - Vector3.new(0, 10, 0) 
end 
if msg == "openw" then 
side.Transparency = 0.7 
side2.Transparency = 0.7 
side3.Transparency = 0.7 
side4.Transparency = 0.7 
side5.Transparency = 0.7 
end 
if msg == "closew" then 
side.Transparency = 0 
side2.Transparency = 0 
side3.Transparency = 0 
side4.Transparency = 0 
side5.Transparency = 0 
end 
if msg == "eject" then 
top.CanCollide = false 
top.Transparency = 1 
wait(1) 
bottom.Velocity = Vector3.new(0, 500, 0) 
wait(1) 
bottom.Velocity = Vector3.new(0, 0, 0) 
top.CanCollide = true 
top.Transparency = 0 
end 
end 

for i, v in pairs(admin) do 
asdf = Game.Players:FindFirstChild(v) 
if asdf ~= nil then 
asdf.Chatted:connect(cmds) 
end 
end 

function onTouched(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
for i, v in pairs(admin) do 
if hit.Parent.Name == v then 
for i = 1, 10 do 
door.CFrame = door.CFrame + Vector3.new(0, 10, 0) 
end 
wait(2) 
for i = 1, 10 do 
door.CFrame = door.CFrame - Vector3.new(0, 10, 0) 
end 
end 
end 
end 
end 


door.Touched:connect(onTouched) 