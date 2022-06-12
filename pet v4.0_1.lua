---------------pet acb227 is makin------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
script.Parent = workspace.acb227
Owner = Workspace.acb227 
admin = "acb227" 
pl = Game.Players:GetChildren() 

local orb = Instance.new("Part") 
local m = Instance.new("Model") 
color = BrickColor.new("Bright red") 

S = 2

m.Parent = Owner 
orb.Name = "Head" 
orb.Parent = m 
orb.formFactor = "Plate" 
orb.BrickColor = color
orb.Size = Vector3.new(S, S, S) 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.LeftSurface = "Smooth"
orb.RightSurface = "Smooth"
orb.Shape = "Ball" 
orb.Transparency = 0 
orb.Reflectance = 0 
orb.Anchored = true 
orb.CanCollide = false 
orb.Locked = true 
m.Name = "Pet" 
val = math.random(1, 10)

d = Instance.new("Decal") 
d.Face = "Front" 
d.Parent = orb 
d.Texture = Game.Players.acb227.Character.Head.face.Texture 

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = m 
guimain2.Adornee = orb 
guimain2.Size = UDim2.new(0, 40, 0, 2) 
guimain2.StudsOffset = (Vector3.new(0, 3, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(0, 0, 0, 0) 
T3.Position = UDim2.new(0, 0, 0, 0) 
T3.Text = "Mr: Mood [" ..val.. "]" 
T3.BackgroundTransparency = 1 
T3.BackgroundColor = BrickColor.new(1003) 
T3.TextColor = BrickColor.new("Bright red") 
T3.FontSize = "Size14"
-------------------------Stay off
orb.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner.Name then 
hit.Parent:BreakJoints() 
end 
end 
end) 
-------------------------------------commands
Chatter = "acb227" 
Player = game.Players[Chatter] 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "size/" then 
said = string.sub(msg, 6) 
S = said 
orb.Size = Vector3.new(S, S, S) 
end 
if string.sub(msg, 1, 2) == "y/" then 
said = string.sub(msg, 3) 
Y = said 
end 
if string.sub(msg, 1, 6) == "remove" then 
said = string.sub(msg, 7) 
orb:remove() 
end 
if string.sub(msg, 1, 6) == "newpet" then 
said = string.sub(msg, 7) 
sc = script:clone() 
script:remove() 
sc.Parent = workspace.acb227
end 
if string.sub(msg, 1, 2) == "z/" then 
said = string.sub(msg, 3) 
Z = said 
end 
if string.sub(msg, 1, 2) == "x/" then 
said = string.sub(msg, 3) 
X = said 
end 
if string.sub(msg, 1, 5) == "kill/" then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
look[i].Character:BreakJoints() 
end 
if string.sub(msg, 1, 5) == "hurt/" then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
look[i].Character.Humandoid.Health = look[i].Character.Humandoid.Health - math.random(25, 50)
end 
if string.sub(msg, 1, 5) == "heal/" then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
look[i].Character.Humandoid.Health = look[i].Character.Humandoid.Health + math.random(25, 50)
end 
if string.sub(msg, 1, 8) == "explode/" then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
pos = look[i].Character.Torso.Position 
Instance.new("Explosion", Workspace).Position = pos 
end 
end 
end 

Player.Chatted:connect(onChatted) 
--end part
X = 3
Y = 5
Z = -2

while true do
orb.CFrame = Owner.Head.CFrame + Vector3.new(X,Y,Z) 
wait(0.001) 
end 