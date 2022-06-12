admin = {"xSoulStealerx", "Xewl", "joshmottley", "acb227"} 

offset = Vector3.new(0, 0, 0) 

asdf = Game.Workspace:FindFirstChild("acb house") 
if asdf ~= nil then 
asdf:remove() 
end 

mo = Instance.new("Model") 
mo.Parent = workspace 
mo.Name = "acb house" 

bottom = Instance.new("Part") 
bottom.Parent = mo 
bottom.Name = "lol" 
bottom.Anchored = true 
bottom.Locked = false 
bottom.Size = Vector3.new(50,1,50) 
bottom.CFrame = CFrame.new(Vector3.new(0, 1, 0) + offset) 
bottom.BrickColor = BrickColor.new("Black") 
wait(.1) 
side = Instance.new("Part") 
side.Parent = mo 
side.Size = Vector3.new(50,17,2) 
side.BrickColor = BrickColor.new("White") 
side.CFrame = CFrame.new(Vector3.new(0,10,24) + offset) 
side.Anchored = true 
side.Locked = false 
wait(.1) 
side2 = Instance.new("Part") 
side2.Parent = mo
side2.Size = Vector3.new(50,17,2) 
side2.BrickColor = BrickColor.new("White") 
side2.CFrame = CFrame.new(Vector3.new(0,10,-24) + offset) 
side2.Anchored = true 
side2.Locked = false 
wait(.1) 
side3 = Instance.new("Part") 
side3.Parent = mo
side3.Size = Vector3.new(2,17,50) 
side3.BrickColor = BrickColor.new("White") 
side3.CFrame = CFrame.new(Vector3.new(24,10,0) + offset) 
side3.Anchored = true 
side3.Locked = false 
wait(.1) 
side4 = Instance.new("Part") 
side4.Parent = mo
side4.Size = Vector3.new(2,17,20) 
side4.BrickColor = BrickColor.new("White") 
side4.CFrame = CFrame.new(Vector3.new(-24,10,13) + offset) 
side4.Anchored = true 
side4.Locked = false 
wait(.1) 
side5 = Instance.new("Part") 
side5.Parent = mo
side5.Size = Vector3.new(2,17,20) 
side5.BrickColor = BrickColor.new("White") 
side5.CFrame = CFrame.new(Vector3.new(-24,10,-13) + offset) 
side5.Anchored = true 
side5.Locked = false 
wait(.1) 
door = Instance.new("Part") 
door.Parent = mo
door.BrickColor = BrickColor.new("White") 
door.Size = Vector3.new(2,10,6) 
door.CFrame = CFrame.new(Vector3.new(-24,6,0) + offset) 
door.BrickColor = BrickColor.new("Black") 
door.Anchored = true 
door.Locked = false 
wait(.1) 
part = Instance.new("Part") 
part.Parent = side5 
part.BrickColor = BrickColor.new("White") 
part.CFrame = CFrame.new(Vector3.new(-24,13,0) + offset) 
part.Anchored = true 
part.Size = Vector3.new(2,8,6) 
part.Locked = false  
wait(0.1) 
top = Instance.new("Part") 
top.Parent = mo 
top.Name = "lol" 
top.Anchored = true 
top.Locked = false 
top.Size = Vector3.new(50,1,50) 
top.CFrame = CFrame.new(Vector3.new(0, 18, 0) + offset) 
top.BrickColor = BrickColor.new("Black") 
wait(0.1) 
desk = Instance.new("Part") 
desk.Parent = mo 
desk.Name = "lol" 
desk.Anchored = true 
desk.Locked = false 
desk.Size = Vector3.new(4,4,10) 
desk.CFrame = CFrame.new(Vector3.new(0, 2, 0) + offset) 
desk.BrickColor = BrickColor.new("Reddish brown") 
wait(0.1) 
seat = Instance.new("Seat") 
seat.Parent = mo 
seat.Name = "lol" 
seat.Anchored = false 
seat.Transparency = 1 
seat.Locked = false 
seat.Size = Vector3.new(2,1,2) 
seat.CFrame = CFrame.new(Vector3.new(3.5, 2, 0) + offset) * CFrame.Angles(0, 1.57, 0) 
seat:BreakJoints() 
seat.BrickColor = BrickColor.new("Really black") 
chair = Instance.new("Part") 
chair.Parent = mo 
chair.Name = "lol" 
chair.Anchored = true 
chair.Locked = false 
chair.Size = Vector3.new(2,1,2) 
chair.CFrame = CFrame.new(Vector3.new(3.5, 2, 0) + offset) * CFrame.Angles(0, 1.57, 0) 
chair.BrickColor = BrickColor.new("Really black") 

weld = Instance.new("Weld") 
weld.Parent = chair 
weld.Part0 = seat 
weld.Part1 = chair 
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 

act = true 
lift = false 

function cmds(msg) 
if msg == "open" and act == true then 
act = false 
door.CFrame = door.CFrame + Vector3.new(0, 10, 0) 
wait(1) 
act = true 
end 
if msg == "close" and act == true then 
act = false 
door.CFrame = door.CFrame - Vector3.new(0, 10, 0) 
wait(1) 
act = true 
end 
if msg == "lift" and act == true and lift == true then 
for i = 1, 10 do 
chair.CFrame = chair.CFrame - Vector3.new(0, 0.3, 0) 
wait() 
end 
for i = 1, 10 do 
chair.CFrame = chair.CFrame - Vector3.new(0.3, 0, 0) 
wait() 
end 
wait(1) 
lift = false 
act = true 
end 
if msg == "lift" and act == true and lift == false then 
for i = 1, 10 do 
chair.CFrame = chair.CFrame + Vector3.new(0, 0.3, 0) 
wait() 
end 
for i = 1, 10 do 
chair.CFrame = chair.CFrame + Vector3.new(0.3, 0, 0) 
wait() 
end 
wait(1) 
lift = true 
act = true 
end 
if msg == "openw" and act == true then 
act = false 
side.Transparency = 0.7 
side2.Transparency = 0.7 
side3.Transparency = 0.7 
side4.Transparency = 0.7 
side5.Transparency = 0.7 
wait(1) 
act = true 
end 
if msg == "closew" and act == true then 
act = false 
side.Transparency = 0 
side2.Transparency = 0 
side3.Transparency = 0 
side4.Transparency = 0 
side5.Transparency = 0 
wait(1) 
act = true 
end 
if msg == "eject" and act == true then 
act = false 
top.CanCollide = false 
top.Transparency = 1 
wait(1) 
bottom.Velocity = Vector3.new(0, 500, 0) 
wait(1) 
bottom.Velocity = Vector3.new(0, 0, 0) 
top.CanCollide = true 
top.Transparency = 0 
wait(1) 
act = true 
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