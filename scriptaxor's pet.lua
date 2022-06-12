chatter = game.Players.acb227 
Owner = Game.Players.acb227.Character



pos1 = game.Workspace.acb227.Head 
m = Instance.new("Model") 
m.Parent = game.Workspace.acb227 
m.Name = "Mod" 
h = Instance.new("Humanoid") 
h.Parent = m 
h.MaxHealth = 0 
c = Instance.new("Part") 
c.Parent = m 
c.Name = "Head" 
c.Position = pos1.Position 
c.Transparency = 0 
c.Shape = "Ball" 
c.Reflectance = 0.5 
c.BrickColor = BrickColor.new ("Bright blue") 
c.Size = Vector3.new(2,1,2) 
c.TopSurface = "Smooth" 
c.BottomSurface = "Smooth" 
c.Locked = true 
f = Instance.new("Fire") 
f.Color = Color3.new(0,1,0.50) 
f.Parent = c 
g = Instance.new("BodyGyro") 
g.Parent = c 
g.maxTorque = Vector3.new(1e+010, 1e+010, 1e+010) 
b = Instance.new("BodyPosition") 
b.Parent = c 
b.maxForce = Vector3.new(300000,300000,300000) 
o = Instance.new("Decal") 
o.Face = "Front" 
o.Texture = game.Players.acb227.Character.Head.face.Texture 
o.Parent = c 

--commands--
vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 4) == "ff+ " then 
said = string.lower(string.sub(msg, 5)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
t = look[i].Character 
ex = Instance.new("ForceField") 
ex.Parent = t
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 4) == "ff- " then 
said = string.lower(string.sub(msg, 5)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
look[i].Character.ForceField:Remove() 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 11) == "Invisible+ " then 
said = string.lower(string.sub(msg, 12)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
t = look[i].Character 
t.Head.Transparency = 1 
t.Torso.Transparency = 1
t["Right Arm"].Transparency = 1 
t["Left Arm"].Transparency = 1
t["Right Leg"].Transparency = 1 
t["Left Leg"].Transparency = 1
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 16) == "Pet, Invisible- " then 
said = string.lower(string.sub(msg, 17)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
t = look[i].Character 
t.Head.Transparency = 0 
t.Torso.Transparency = 0
t["Right Arm"].Transparency = 0 
t["Left Arm"].Transparency = 0
t["Right Leg"].Transparency = 0 
t["Left Leg"].Transparency = 0
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Remove" then 
script:Remove()  
c:Remove()  
m:Remove()  
h:Remove()  
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 9) == "Teleport " then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
t = look[i].Character.Torso 
t.CFrame = Owner.Torso.CFrame + Vector3.new(0, 0, 3) 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 12) == "Teleport me " then 
said = string.lower(string.sub(msg, 13)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
t = look[i].Character.Torso 
Owner.Torso.CFrame = t.CFrame + Vector3.new(0, 0, 3) 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

Chatter = "acb227" 
Player = game.Players[Chatter] 


function onChatted(msg) 
if string.sub(msg, 1, 2) == "x " then 
said = string.sub(msg, 3) 
X = said 
end 
if string.sub(msg, 1, 2) == "y " then 
said = string.sub(msg, 3) 
Y = said 
end 
if string.sub(msg, 1, 2) == "z " then 
said = string.sub(msg, 3) 
Z = said 
end 
end 

Player.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 7) == "Freeze " then 
said = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
look[i].Character.Torso.Anchored = true 
look[i].Character.Head.Anchored = true 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "Thaw " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
look[i].Character.Torso.Anchored = false 
look[i].Character.Head.Anchored = false 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "Kill " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
look[i].Character:BreakJoints() 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 8) == "Explode " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = c 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = c 
t = look[i].Character.Torso
ex = Instance.new("Explosion") 
ex.Position = t.Position 
ex.Parent = workspace
wait(1) 
ex:Remove()
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
--end of commands

c.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= chatter.Name then 
hit.Parent:BreakJoints() 
end 
end 
end) 

X = 3 
Y = 5 
Z = 0 

while true do 
b.position = game.Workspace.acb227.Head.Position + Vector3.new(X, Y, Z) 
g.cframe = pos1.CFrame 
wait() 
end 

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = Workspace.acb227 
guimain2.Adornee = c 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 3, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(1, 0, 0, 30) 
T3.Position = UDim2.new(0, 0, 0, 0) 
T3.Text = "Objective" 
T3.BackgroundTransparency = 1 
T3.BackgroundColor = BrickColor.new(1003) 
T3.TextColor = BrickColor.new(1004) 