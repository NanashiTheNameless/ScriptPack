--pet by acb227 credit to bob371 in progress-----------------------
vip = game.Players.acb227 
char = vip.Character 

guard = Instance.new("Model") 
guard.Name = vip.Name.."'s Pet" 
guard.Parent = char 

part = Instance.new("Part") 
part.Name = "Head" 
part.CanCollide = false 
part.Locked = true 
part.TopSurface = 0 
part.Material = "Ice" 
part.BottomSurface = 0 
part.Shape = "Ball" 
part.Parent = guard 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(2,2,2) 
part.BrickColor = BrickColor.new("Really black") 
part.Reflectance = 0.5 

gyro = Instance.new("BodyGyro") 
gyro.Parent = part 

body = Instance.new("BodyPosition") 
body.Parent = part 
body.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
human = Instance.new("Humanoid") 
human.Parent = guard 
human.MaxHealth = 0 

script.Parent = guard 

Y = 4 

while true do 
for i =1,10 do 
wait() 
Y = Y + 0.05 
body.position = char.Torso.Position + Vector3.new(0,Y,0) 
end 
for i =1,10 do 
wait() 
Y = Y - 0.05 
body.position = char.Torso.Position + Vector3.new(0,Y,0) 
end 
end 

part2 = Instance.new("Part") 
part2.Name = "Cap" 
part2.CanCollide = false 
part2.Locked = true 
part2.TopSurface = 0 
part2.Material = "Ice" 
part2.BottomSurface = 0 
part2.Shape = "Ball" 
part2.Parent = guard 
part2.formFactor = "Symmetric" 
part2.Size = Vector3.new(4,4,4) 
part2.BrickColor = BrickColor.new("Really black") 
part2.Reflectance = 0.5 

m = Instance.new("SpecialMesh") 
m.Scale = Vector3.new(1, 1, 1) 
m.Parent = part2 
m.MeshType = "Prism" 

w1 = Instance.new("Weld") 
w1.Parent = part 
w1.Part0 = part2 
w1.Part1 = part 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.45, 0) 
--------------------------------------------------------------
vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "kill " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character:BreakJoints() 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

--[[ vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "Y  500" then 
said = string.lower(string.sub(msg, 6)) 
Y = 500
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "Y  50" then 
said = string.lower(string.sub(msg, 6)) 
then Y = 50
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "Y  5" then 
said = string.lower(string.sub(msg, 6)) 
then Y = 5
end 
end 
end 
end 
vip.Chatted:connect(onChatted) --]]