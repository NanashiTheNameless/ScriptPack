---------------pet acb227 is makin------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
script.Parent = workspace.acb227
Owner = Workspace.acb227 
admin = "acb227" 
pl = Game.Players:GetChildren() 
--lego
local orb = Instance.new("Part") 
--local h = Instance.new("Humanoid") 
local m = Instance.new("Model") 

color = BrickColor.new("Bright red") 

--[[ local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 

local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = player2.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb ]]--

S = 2

m.Parent = Owner 
orb.Name = "Head" 
orb.Parent = m 
orb.formFactor = "Plate" 
orb.BrickColor = color
orb.Size = Vector3.new(S, S, S) 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.LeftSurface = "Motor"
orb.RightSurface = "Motor"
orb.Shape = "Ball" 
orb.Transparency = 0 
orb.Reflectance = 0 
orb.Anchored = true 
orb.CanCollide = false 
orb.Locked = true 
--h.Parent = m 
--h.MaxHealth = 0 
--h.Health = 0 
wait(.1) 
m.Name = "acb227's Goof-Ball" 

f = Instance.new("Fire") 
f.Color = Color3.new(1,1,0.50) 
f.Parent = orb 
f.Heat = Vector3.new(0)

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
T3.Text = "Pet : Nothing" 
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
-------------------------hat
hat = Instance.new("Part")
hat.Name = "Head" 
hat.Parent = orb 
hat.formFactor = "Plate" 
hat.BrickColor = color
hat.Size = Vector3.new(2, 1, 2) 
hat.TopSurface = "Smooth" 
hat.BottomSurface = "Smooth" 
hat.LeftSurface = "Smooth"
hat.RightSurface = "Smooth"
hat.Shape = "Block" 
hat.Transparency = 0 
hat.Reflectance = 0 
hat.Anchored = true 
hat.CanCollide = false 
hat.Locked = true 

mesh = Instance.new("SpecialMesh") 
mesh.TextureId = "http://www.roblox.com/asset/?id=31600964" 
mesh.MeshId = "http://www.roblox.com/asset/?id=13640868" 
mesh.Parent = hat 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(1.2, 1.2, 1.2)
-------------------------hat
hat2 = Instance.new("Part")
hat2.Name = "Head" 
hat2.Parent = orb 
hat2.formFactor = "Plate" 
hat2.BrickColor = color
hat2.Size = Vector3.new(2, 1, 2) 
hat2.TopSurface = "Smooth" 
hat2.BottomSurface = "Smooth" 
hat2.LeftSurface = "Smooth"
hat2.RightSurface = "Smooth"
hat2.Shape = "Block" 
hat2.Transparency = 0 
hat2.Reflectance = 0 
hat2.Anchored = true 
hat2.CanCollide = false 
hat2.Locked = true 

mesh = Instance.new("SpecialMesh") 
mesh.TextureId = "http://www.roblox.com/asset/?id=18136470" 
mesh.MeshId = "http://www.roblox.com/asset/?id=1577360" 
mesh.Parent = hat2 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(1.6, 2, 2.1) 

-------------------------hat
hat3 = Instance.new("Part")
hat3.Name = "Head" 
hat3.Parent = orb 
hat3.formFactor = "Plate" 
hat3.BrickColor = color
hat3.Size = Vector3.new(2, 1, 1) 
hat3.TopSurface = "Smooth" 
hat3.BottomSurface = "Smooth" 
hat3.LeftSurface = "Smooth"
hat3.RightSurface = "Smooth"
hat3.Shape = "Block" 
hat3.Transparency = 1 
hat3.Reflectance = 0 
hat3.Anchored = true 
hat3.CanCollide = false 
hat3.Locked = true 

mesh = Instance.new("SpecialMesh") 
mesh.TextureId = "http://www.roblox.com/asset/?id=8266230" 
mesh.MeshId = "ffed8316392f40eef1e67dbba9194256" 
mesh.Parent = hat3 
mesh.MeshType = "FileMesh" 
mesh.Scale = Vector3.new(0.5, 1, 0.5) 
-------------------------commands 
vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 10) == "Pet, Heal " then 
said = string.lower(string.sub(msg, 11)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Healing " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Humanoid.Health = 100
wait(1)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 10) == "Pet, Hurt " then 
said = string.lower(string.sub(msg, 11)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Hurting " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Humanoid.Health = 50
wait(1)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 10) == "Pet, Kill " then 
said = string.lower(string.sub(msg, 11)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Killing " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Humanoid.Health = 0
wait(1)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 13) == "Pet, Torture " then 
said = string.lower(string.sub(msg, 14)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Torturing " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
wait(2)
--.Health = 100 wait(3) Health = 
--for i = - 10, 1, -1 do .Health = i*10 wait(2) 
--looki.Character.Humanoid.Health
look[i].Character.Humanoid.Health = 90 
wait(2) 
look[i].Character.Humanoid.Health = 80 
wait(2) 
look[i].Character.Humanoid.Health = 70 
wait(2) 
look[i].Character.Humanoid.Health = 60 
wait(2) 
look[i].Character.Humanoid.Health = 50 
wait(2) 
look[i].Character.Humanoid.Health = 40 
wait(2) 
look[i].Character.Humanoid.Health = 30 
wait(2) 
look[i].Character.Humanoid.Health = 20 
wait(2) 
look[i].Character.Humanoid.Health = 10 
wait(2) 
look[i].Character.Humanoid.Health = 0 
wait(2) 
end 
wait(1) 
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
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
if msg == "exitall" then 
script:Remove()  
orb:Remove()  
m:Remove()  
h:Remove()  
m = Instance.new("Message") 
m.Parent = Workspace 
m.Text = "Succesfully Exited"
wait(3) 
m:Remove() 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Send" then 
Game.Workspace.acb227.Torso.CFrame = Game.Workspace.Base.CFrame + Vector3.new(0, 3, 0) 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 10) == "Pet, Send " then 
said = string.lower(string.sub(msg, 11)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Sending " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Torso.CFrame = Game.Workspace.Base.CFrame + Vector3.new(0, 3, 0) 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 12) == "Pet, Freeze " then 
said = string.lower(string.sub(msg, 13)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Freeze " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Torso.Anchored = true 
look[i].Character.Head.Anchored = true 
wait(1) 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 10) == "Pet, Thaw " then 
said = string.lower(string.sub(msg, 11)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Thawing " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Torso.Anchored = false 
look[i].Character.Head.Anchored = false 
wait(1)
SPL:Remove()
Name = look[i].Character.Name
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 13) == "Pet, Explode " then 
said = string.lower(string.sub(msg, 14)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Exploding " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
wait(3)
t = look[i].Character.Torso 
ex = Instance.new("Explosion") 
ex.Parent = workspace 
ex.Position = t.Position 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 12) == "Pet, Select " then 
said = string.lower(string.sub(msg, 13)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
t = look[i].Character.Torso 
h = look[i].Character.Head 
ra = look[i].Character["Right Arm"] 
la = look[i].Character["Left Arm"] 
rl = look[i].Character["Right Leg"] 
ll = look[i].Character["Left Leg"] 
sb1 = Instance.new("SelectionBox") 
sb.Parent = workspace 
sb.Adornee = t 
sb2 = Instance.new("SelectionBox") 
sb.Parent = workspace 
sb.Adornee = h 
sb3 = Instance.new("SelectionBox") 
sb.Parent = workspace 
sb.Adornee = ra 
sb4 = Instance.new("SelectionBox") 
sb.Parent = workspace 
sb.Adornee = la 
sb5 = Instance.new("SelectionBox") 
sb.Parent = workspace 
sb.Adornee = rl 
sb6 = Instance.new("SelectionBox") 
sb.Parent = workspace 
sb.Adornee = ll 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 14) == "Pet, Teleport " then 
said = string.lower(string.sub(msg, 15)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Teleporting " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
t = look[i].Character.Torso 
t.CFrame = Owner.Torso.CFrame + Vector3.new(0, 0, 3) 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 17) == "Pet, Teleport me " then 
said = string.lower(string.sub(msg, 18)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Teleport to " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
t = look[i].Character.Torso 
Owner.Torso.CFrame = t.CFrame + Vector3.new(0, 0, 3) 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 10) == "Pet, Kick " then 
said = string.lower(string.sub(msg, 11)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Kicking " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i]:Remove()
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 9) == "Pet, ff+ " then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Making " ..Name.. " a ForceField"
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
g = look[i].Character 
ex = Instance.new("ForceField") 
ex.Parent = g
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 9) == "Pet, ff- " then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Taking " ..Name.. " ForceField"
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.ForceField:Remove() 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 12) == "Pet, Inform " then 
said = string.lower(string.sub(msg, 13)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Informing " ..Name.. "..." 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
m = Instance.new("Message") 
m.Text = "You poop - Pet"
m.Parent = look[i].Character
wait(3)
m:Remove()
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 16) == "Pet, Invisible+ " then 
said = string.lower(string.sub(msg, 17)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Making " ..Name.. "Invisible"
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
g = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = g 
w1.Part0 = p 
w1.Part1 = g 
t = look[i].Character 
t.Head.Transparency = 1 
t.Torso.Transparency = 1
t["Right Arm"].Transparency = 1 
t["Left Arm"].Transparency = 1
t["Right Leg"].Transparency = 1 
t["Left Leg"].Transparency = 1
wait(1)
SPL:Remove()
Name = look[i].Character.Name
T3.Text =  "Pet : Nothing"
p:Remove()
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
Name = look[i].Character.Name
T3.Text =  "Pet : Taking " ..Name.. "'s Invisible"
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
g = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = g 
w1.Part0 = p 
w1.Part1 = g 
t = look[i].Character 
t.Head.Transparency = 0 
t.Torso.Transparency = 0
t["Right Arm"].Transparency = 0 
t["Left Arm"].Transparency = 0
t["Right Leg"].Transparency = 0 
t["Left Leg"].Transparency = 0
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 10) == "Pet, Find " then 
said = string.lower(string.sub(msg, 11)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Found " ..Name.. "."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
wait(5)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Sleep" then 
T3.Text = "Pet : Sleeping" 
orb.Transparency = 1 
f:Remove()
s:Remove()
d:Remove()
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Wake up" then 
T3.Text = "Pet : Waking up" 
orb.Transparency = 0 
f = Instance.new("Fire") 
f.Color = Color3.new(1,1,0.50) 
f.Parent = orb 
f.Heat = Vector3.new(0)
o = Instance.new("Decal") 
o.Face = "Front" 
o.Parent = orb 
o.Texture = Game.Players.acb227.Character.Head.face.Texture 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Ball" then 
T3.Text = "Pet : Now a Ball" 
orb.Shape = "Ball" 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Brick" then 
T3.Text = "Pet : Now a Brick" 
orb.Shape = "Block" 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Cylinder" then 
T3.Text = "Pet : Now a Cylinder" 
orb.Shape = "Cylinder" 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Classic" then 
T3.Text = "Pet : Now Classic" 
orb.BrickColor = BrickColor.new("Bright red") 
T3.TextColor = BrickColor.new("Bright red") 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Blue" then 
T3.Text = "Pet : Now Blue" 
orb.BrickColor = BrickColor.new("Bright blue") 
T3.TextColor = BrickColor.new("Bright blue") 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Green" then 
T3.Text = "Pet : Now Green" 
orb.BrickColor = BrickColor.new("Bright green") 
T3.TextColor = BrickColor.new("Bright green") 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Yellow" then 
T3.Text = "Pet : Now Yellow" 
orb.BrickColor = BrickColor.new("Bright yellow") 
T3.TextColor = BrickColor.new("Bright yellow") 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Brown" then 
T3.Text = "Pet : Now Brown" 
orb.BrickColor = BrickColor.new("Brown") 
T3.TextColor = BrickColor.new("Brown") 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Purple" then 
T3.Text = "Pet : Now Purple" 
orb.BrickColor = BrickColor.new("Bright violet") 
T3.TextColor = BrickColor.new("Bright violet") 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Black" then 
T3.Text = "Pet : Now Black" 
orb.BrickColor = BrickColor.new("Really black") 
T3.TextColor = BrickColor.new("Really black") 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Grey" then 
T3.Text = "Pet : Now Grey" 
orb.BrickColor = BrickColor.new("Stone grey") 
T3.TextColor = BrickColor.new("Stone grey") 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Motors" then 
T3.Text = "Pet : Now has Motors" 
orb.LeftSurface = "Motor" 
orb.RightSurface = "Motor" 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Hinges" then 
T3.Text = "Pet : Now has Hinges" 
orb.LeftSurface = "Hinge" 
orb.RightSurface = "Hinge" 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Smooth" then 
T3.Text = "Pet : Now is Smooth" 
orb.LeftSurface = "Smooth" 
orb.RightSurface = "Smooth" 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, im Bored" then 
T3.Text = "Pet : acb227 is bored so cheer him up" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, im Happy" then 
T3.Text = "Pet : acb227 is Happy!!" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, im Fine" then 
T3.Text = "Pet : acb227 is Fine" 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 11) == "Pet, Hinge " then 
said = string.lower(string.sub(msg, 12)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Adding a Hinge to " ..Name.. "..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Head.FrontSurface = "Hinge" 
look[i].Character.Torso.FrontSurface = "Hinge" 
look[i].Character["Right Arm"].FrontSurface = "Hinge" 
look[i].Character["Left Arm"].FrontSurface = "Hinge" 
look[i].Character["Right Leg"].FrontSurface = "Hinge" 
look[i].Character["Left Leg"].FrontSurface = "Hinge" 
wait(2)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 11) == "Pet, Motor " then 
said = string.lower(string.sub(msg, 12)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet : Adding a Motor to " ..Name.. "..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Head.FrontSurface = "Motor" 
look[i].Character.Torso.FrontSurface = "Motor" 
look[i].Character["Right Arm"].FrontSurface = "Motor" 
look[i].Character["Left Arm"].FrontSurface = "Motor" 
look[i].Character["Right Leg"].FrontSurface = "Motor" 
look[i].Character["Left Leg"].FrontSurface = "Motor" 
wait(2)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 12) == "Pet, Smooth " then 
said = string.lower(string.sub(msg, 13)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
T3.Text =  "Pet : Smoothing out " ..Name.. "..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Head.FrontSurface = "Smooth" 
look[i].Character.Torso.FrontSurface = "Smooth" 
look[i].Character["Right Arm"].FrontSurface = "Smooth" 
look[i].Character["Left Arm"].FrontSurface = "Smooth" 
look[i].Character["Right Leg"].FrontSurface = "Smooth" 
look[i].Character["Left Leg"].FrontSurface = "Smooth" 
wait(2)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, be Cool" then 
T3.Text = "Pet : Now is Cool" 
hat.Transparency = 0 
hat2.Transparency = 0 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Glasses" then 
T3.Text = "Pet : Now has Glasses" 
hat.Transparency = 1 
hat2.Transparency = 0 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Hat" then 
T3.Text = "Pet : Now has a hat" 
hat.Transparency = 0 
hat2.Transparency = 1 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, no Hats" then 
T3.Text = "Pet : Now has no hats" 
hat.Transparency = 1 
hat2.Transparency = 1 
wait(2)
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Pet, Shutdown" then 
T3.Text = "Pet : Shutting down" 
wait(5) 
game.workspace:Remove() 
game.Players:Remove() 
T3.Text = "Pet : Nothing" 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Commands" then 
m = Instance.new("Message")
m.Parent = Owner
m.Text = "Commands are as Following" 
wait(4)
m.Text = "Pet, Hurt" 
wait(2)
m.Text = "Pet, Heal" 
wait(2)
m.Text = "Pet, Torture" 
wait(2)
m.Text = "Pet, Explode" 
wait(2)
m.Text = "Pet, Find" 
wait(2)
m.Text = "Pet, Kill" 
wait(2)
m.Text = "Pet, Freeze" 
wait(2)
m.Text = "Pet, Send" 
wait(2)
m.Text = "Pet, Thaw" 
wait(2)
m.Text = "Pet, Kick" 
wait(2)
m.Text = "Pet, ff+" 
wait(2)
m.Text = "Pet, ff-" 
wait(2)
m.Text = "Pet, Invisible+" 
wait(2)
m.Text = "Pet, Invisible-" 
wait(2)
m.Text = "exitall" 
wait(2)
m.Text =  "x, y, z" 
wait(2)
m.Text = "Pet, be Cool" 
wait(2)
m.Text = "Pet, Glasses" 
wait(2)
m.Text = "Pet, Hat" 
wait(2)
m.Text = "Pet, no Hats" 
wait(2)
m:Remove() 
end 
end 
vip.Chatted:connect(onChatted)

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 11) == "Pet, Clone " then 
said = string.lower(string.sub(msg, 12)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
T3.Text =  "Pet : Cloning " ..Name.. "..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
clone = game.Playerslook[i].Character 
clonemodel = Instance.new("Model") 
clonemodel.Parent = game.Workspace  
clonehead = clone.Head:clone() 
clonehead.Parent = clonemodel 
clonehead.Anchored = true 
clonetorso = clone.Torso:clone() 
clonetorso.Parent = clonemodel 
clonetorso.Anchored = true 
clonerightarm = clone:FindFirstChild("Right Arm"):clone() 
clonerightarm.Parent = clonemodel 
clonerightarm.Anchored = true 
clonerightleg = clone:FindFirstChild("Right Leg"):clone() 
clonerightleg.Parent = clonemodel 
clonerightleg.Anchored = true 
cloneleftarm = clone:FindFirstChild("Left Arm"):clone() 
cloneleftarm.Parent = clonemodel 
cloneleftarm.Anchored = true 
cloneleftleg = clone:FindFirstChild("Left Leg"):clone() 
cloneleftleg.Parent = clonemodel 
cloneleftleg.Anchored = true 
cloneshirt = clone:FindFirstChild("Shirt"):clone() 
cloneshirt.Parent = clonemodel 
clonepants = clone:FindFirstChild("Pants"):clone() 
clonepants.Parent = clonemodel 
wait(2)
SPL:Remove()
T3.Text = "Pet : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

--[[ vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 11) == "Pet, Guard " then 
said = string.lower(string.sub(msg, 12)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
T3.Text =  "Pet : testing on " ..Name.. "..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
pi = Instance.new("Part") 
pi.Size = Vector3.new(1, 1, 1) 
pi.Parent = Workspace
pi.BrickColor = BrickColor.new("Bright red")
pi.Transparency = 0.7
pi.CanCollide = true 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(20, 20, 20) 
mesh.Parent = pi 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = pi 
w1.Part1 = t 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
end 
end 
end) 
end
wait(2)
SPL:Remove()
T3.Text = "Pet : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) ]]--

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 9) == "Pet, Sit " then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
T3.Text =  "Pet : Sittting " ..Name.. "..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Humanoid.Sit = true 
wait(2)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 10) == "Pet, Jump " then 
said = string.lower(string.sub(msg, 11)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
T3.Text =  "Pet : Making " ..Name.. " jump..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Humanoid.Jump = true 
wait(2)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 9) == "Pet, Name" then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet : l"
wait(0.5) 
T3.Text =  "Pet :  " 
wait(0.5) 
T3.Text =  "Pet : l"
wait(0.5) 
T3.Text =  "Pet :  "
wait(0.5) 
T3.Text =  "Pet : Pl"
wait(0.5) 
T3.Text =  "Pet : P "
wait(0.5) 
T3.Text =  "Pet : Pel" 
wait(0.5) 
T3.Text =  "Pet : Pe"
wait(0.5) 
T3.Text =  "Pet : Petl" 
wait(0.5) 
T3.Text =  "Pet : Pet"
wait(1)
T3.Text = "Pet : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 12) == "Pet, my Name" then 
said = string.lower(string.sub(msg, 13)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet : l"
wait(0.5) 
T3.Text =  "Pet :  " 
wait(0.5) 
T3.Text =  "Pet : l"
wait(0.5) 
T3.Text =  "Pet :  "
wait(0.5) 
T3.Text =  "Pet : Al"
wait(0.5) 
T3.Text =  "Pet : A "
wait(0.5) 
T3.Text =  "Pet : Acl" 
wait(0.5) 
T3.Text =  "Pet : Ac"
wait(0.5) 
T3.Text =  "Pet : Acbl" 
wait(0.5) 
T3.Text =  "Pet : Acb"
wait(0.5) 
T3.Text =  "Pet : Acb2l"
wait(0.5) 
T3.Text =  "Pet : Acb2"
wait(0.5) 
T3.Text =  "Pet : Acb22l"
wait(0.5) 
T3.Text =  "Pet : Acb22"
wait(0.5) 
T3.Text =  "Pet : Acb227l"
wait(0.5) 
T3.Text =  "Pet : Acb227"
wait(1)
T3.Text = "Pet : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 9) == "Pet, pfs " then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
T3.Text =  "Pet : PFSing " ..Name.. "..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Humanoid.PlatformStand = true 
wait(2)
SPL:Remove()
T3.Text = "Pet : Nothing" 
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

Chatter = "acb227" 
Player = game.Players[Chatter] 


function onChatted(msg) 
if string.sub(msg, 1, 2) == "S " then 
said = string.sub(msg, 3) 
S = said 
end 
end 

Player.Chatted:connect(onChatted) 
-------------------------always leave this last or ur commands might now work 
X = 3
Y = 5
Z = -2

while true do
orb.CFrame = Owner.Head.CFrame + Vector3.new(X,Y,Z) 
hat.CFrame = orb.CFrame + Vector3.new(0,1.05,0) 
hat2.CFrame = orb.CFrame + Vector3.new(0,0.35,0) 
hat3.CFrame = orb.CFrame + Vector3.new(0,0,0) 
orb.Size = Vector3.new(S, S, S)
wait(0.002) 
end 