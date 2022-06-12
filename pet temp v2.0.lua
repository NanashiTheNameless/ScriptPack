--start of pet
plyr = Game.Players.acb227
char = plyr.Character
script.Parent = char
Admins = plyr

m = Instance.new("Model") 
m.Parent = char

color = BrickColor.new("Bright blue") 
size = Vector3.new(2, 2, 2)
B = 2 C = 2 D = 2

orb = Instance.new("Part") 
orb.Parent = char 
orb.BrickColor = color 
orb.Size = size
orb.Shape = "Ball" 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.Anchored = true 
orb.Transparency = 0.3
orb.Locked = true 

dec = Instance.new("Decal") 
dec.Face = "Front" 
dec.Parent = orb 
dec.Texture = char.Head.face.Texture

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = m 
guimain2.Adornee = orb 
guimain2.Size = UDim2.new(0, 40, 0, 2) 
guimain2.StudsOffset = (Vector3.new(0, 3, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(0, 0, 0, 0) 
T3.Position = UDim2.new(0, 0, 0, 0) 
T3.Text = "Pet v2.0 : Nothing" 
T3.BackgroundTransparency = 1 
T3.BackgroundColor = BrickColor.new(1003) 
T3.TextColor = color
T3.FontSize = "Size14"

hat = Instance.new("Part")
hat.Name = "Head" 
hat.Parent = orb 
hat.formFactor = "Plate" 
hat.BrickColor = BrickColor.new("White")
hat.Size = Vector3.new(2, 2, 2) 
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

meshab = Instance.new("SpecialMesh") 
meshab.TextureId = "http://www.roblox.com/asset/?id=31600964" 
meshab.MeshId = "http://www.roblox.com/asset/?id=13640868" 
meshab.Parent = hat 
meshab.MeshType = "FileMesh" 
meshab.Scale = Vector3.new(1.2, 1.2, 1.2)
--end of pet
--commands
vip = Admins

function onChatted(msg) 
if string.sub(msg, 1, 5) == "Heal " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
T3.Text = "Pet v2.0 : Healing" 
look[i].Character.Humanoid.Health = 100
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Hurt " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Hurting" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
look[i].Character.Humanoid:TakeDamage(25)
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 8) == "Explode " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Exploding" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
t = look[i].Character.Torso 
ex = Instance.new("Explosion") 
ex.Parent = workspace 
ex.Position = t.Position 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Kill " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Killing" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
look[i].Character.Humanoid.Health = 0
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Walk " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Walking" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
look[i].Character.Humanoid.WalkSpeed = 16
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 7) == "Punish " then 
said = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Punishing" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
look[i].Character.Parent = Game.Lighting
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 9) == "Unpunish " then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Unpunishing" 
look[i].Character.Parent = Game.Workspace
wait(1)
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 4) == "Run " then 
said = string.lower(string.sub(msg, 5)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Running" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
look[i].Character.Humanoid.WalkSpeed = 25
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Epic " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
t = look[i].Character.Torso 
T3.Text = "Pet v2.0 : Epicing" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
look[i].Character.Humanoid.WalkSpeed = 150 
f = Instance.new("Fire") 
f.Parent = t 
f.Heat = 0.1 
f.Size = 1
f.Color = Color3.new(1, 5, 5)
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 7) == "Unepic " then 
said = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
t = look[i].Character.Torso 
T3.Text = "Pet v2.0 : unepicing" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
look[i].Character.Humanoid.WalkSpeed = 16 
t.Fire:remove() 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 7) == "Freeze " then 
said = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Freezing" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
t = look[i].Character.Torso 
t.Anchored = true 
h = look[i].Character.Head 
h.Anchored = true 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Kick " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Kicking" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
look[i]:remove() 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
T3.Text = "Pet v2.0 : Nothing" 
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Thaw " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Thawing" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
t = look[i].Character.Torso 
t.Anchored = false 
h = look[i].Character.Head 
h.Anchored = false 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:remove()
SPL:Remove()
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 4) == "ff+ " then 
said = string.lower(string.sub(msg, 5)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : ForceFielding" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
t = look[i].Character
ff = Instance.new("ForceField") 
ff.Parent = t 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SB:Remove()
SPL:Remove()
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 4) == "ff- " then 
said = string.lower(string.sub(msg, 5)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : unForceFielding" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
t = look[i].Character
t.ForceField:remove() 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
wait(1)
SPL:Remove()
T3.Text = "Pet v2.0 : Nothing" 
SB:remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "tele " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : teleing" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
t = look[i].Character.Torso
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
t.CFrame = plyr.Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait(1)
SPL:Remove()
T3.Text = "Pet v2.0 : Nothing" 
SB:remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 8) == "tele to " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : teleing to" 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = color
SPL.Part = orb 
t = look[i].Character.Torso
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
plyr.Character.Torso.CFrame = t.CFrame + Vector3.new(0, 5, 0)
wait(1)
SPL:Remove()
T3.Text = "Pet v2.0 : Nothing" 
SB:remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Guard" then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text = "Pet v2.0 : Guarding" 
dist = 20 
me = orb 
for _, v in pairs(game.Players:GetChildren()) do 
if not v.Character then return end 
if (v.Character.Torso.Position - me.Position).magnitude < dist then 
if v.Name ~= me.Parent.Name then 
v.Character:BreakJoints() 
end 
end 
wait(0.3) 
T3.Text = "Pet v2.0 : Nothing" 
end
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
--end of commands
--Fun commands
function onChatted(msg) 
if string.sub(msg, 1, 4) == "Name" then 
said = string.lower(string.sub(msg, 5)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet v2.0 : l"
wait(0.5) 
T3.Text =  "Pet v2.0 :  " 
wait(0.5) 
T3.Text =  "Pet v2.0 : l"
wait(0.5) 
T3.Text =  "Pet v2.0 :  "
wait(0.5) 
T3.Text =  "Pet v2.0 : Pl"
wait(0.5) 
T3.Text =  "Pet v2.0 : P "
wait(0.5) 
T3.Text =  "Pet v2.0 : Pel" 
wait(0.5) 
T3.Text =  "Pet v2.0 : Pe"
wait(0.5) 
T3.Text =  "Pet v2.0 : Petl" 
wait(0.5) 
T3.Text =  "Pet v2.0 : Pet"
wait(1)
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Grey" then 
color = BrickColor.new("Stone grey") 
T3.TextColor = color
orb.BrickColor = color
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Red" then 
color = BrickColor.new("Bright red") 
T3.TextColor = color
orb.BrickColor = color
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Blue" then 
color = BrickColor.new("Bright blue") 
T3.TextColor = color
orb.BrickColor = color
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Yellow" then 
color = BrickColor.new("Bright yellow") 
T3.TextColor = color
orb.BrickColor = color
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Black" then 
color = BrickColor.new("Really black") 
T3.TextColor = color
orb.BrickColor = color
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Green" then 
color = BrickColor.new("Bright green") 
T3.TextColor = color
orb.BrickColor = color
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Flash" then 
color = BrickColor.new("Bright yellow") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright blue") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright red") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright green") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright red") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright blue") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright yellow") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright red") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright green") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
color = BrickColor.new("Bright blue") 
T3.TextColor = color
orb.BrickColor = color
wait(1)
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 6) == "Guest " then 
said = string.lower(string.sub(msg, 7)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
local SB = Instance.new("SelectionBox") 
SB.Parent = orb 
SB.Adornee = look[i].Character 
SB.Color = color
bor = Instance.new("Part") 
bor.Parent = look[i].Character 
bor.BrickColor = color 
bor.Name = "orb" 
bor.Size = size
bor.Shape = "Ball" 
bor.TopSurface = "Smooth" 
bor.BottomSurface = "Smooth" 
bor.Anchored = true 
bor.Transparency = 0.3
dec = Instance.new("Decal") 
dec.Face = "Front" 
dec.Parent = bor 
function onChatted(msg) 
if string.sub(msg, 1, 2) == "x " then 
said = string.sub(msg, 3) 
orb.BrickColor = BrickColor.new("Bright red") 
C = said 
wait(0.1) 
orb.BrickColor = color 
end 
if string.sub(msg, 1, 2) == "y " then 
said = string.sub(msg, 3) 
orb.BrickColor = BrickColor.new("Bright red") 
B = said 
wait(0.1) 
orb.BrickColor = color 
end 
if string.sub(msg, 1, 2) == "z " then 
said = string.sub(msg, 3) 
orb.BrickColor = BrickColor.new("Bright red") 
D = said 
wait(0.1) 
orb.BrickColor = color 
end 
end 
look[i].Chatted:connect(onChatted) 
local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = bor 
guimain2.Adornee = bor 
guimain2.Size = UDim2.new(0, 40, 0, 2) 
guimain2.StudsOffset = (Vector3.new(0, 3, 0)) 
guimain2.Name = "Guim" 

T31 = Instance.new("TextLabel") 
T31.Name = "name" 
T31.Parent = guimain2 
T31.Size = UDim2.new(0, 0, 0, 0) 
T31.Position = UDim2.new(0, 0, 0, 0) 
T31.Text = "Pet v2.0 Minnion : Owner is " ..Name.. "..." 
T31.BackgroundTransparency = 1 
T31.BackgroundColor = BrickColor.new(1003) 
T31.TextColor = color
T31.FontSize = "Size14"
dec.Texture = look[i].Character.Head.face.Texture
wait(2) 
SB:remove()
wait(1)
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
bor.CFrame = look[i].Character.Head.CFrame + Vector3.new(C, B, D) 
wait(3) 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 8) == "Overide " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.orb.BrickColor = BrickColor.new("Bright red") 
look[i].Character.orb.Guim.name.Text = "Overided by Master" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Stun " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet v2.0 : Stunning"
look[i].Character.Humanoid.WalkSpeed = -16 
wait(5)
look[i].Character.Humanoid.WalkSpeed = 16 
wait(2) 
T3.Text =  "Pet v2.0 : Nothing"
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "redo " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
look[i].Character.orb.CFrame = look[i].Head.CFrame
wait(2) 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 6) == "Ditch " then 
said = string.lower(string.sub(msg, 7)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.orb.BrickColor = BrickColor.new("Bright green") 
look[i].Character.orb.Guim.name.Text = "Good day" 
wait(3) 
look[i].Character.orb:remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 2) == "ad" then 
said = string.lower(string.sub(msg, 3)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet v2.0 : Thank"
wait(1) 
T3.Text =  "Pet v2.0 : darkmage0252" 
wait(1) 
T3.Text =  "Pet v2.0 : Hes #1"
wait(1) 
T3.Text =  "Pet v2.0 :  Go to"
wait(1) 
T3.Text =  "Pet v2.0 : darkmage0252's"
wait(1) 
T3.Text =  "Pet v2.0 : Sb now!"
wait(1) 
T3.Text =  "Pet v2.0 : darkmage0252" 
wait(1) 
T3.Text =  "Pet v2.0 : darkmage0252"
wait(1) 
T3.Text =  "Pet v2.0 : Go to" 
wait(1) 
T3.Text =  "Pet v2.0 : darkmage0252's SB Now!~~!~~!"
wait(2)
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Jail " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet v2.0 : Jailing"
look[i].Character.Torso.CFrame = workspace.Base.CFrame + Vector3.new(0, 105, 0)
wait(1) 
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 8) == "Release " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet v2.0 : Releasing"
look[i].Character.Torso.CFrame = workspace.Base.CFrame + Vector3.new(0, 5, 0)
wait(1) 
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 7) == "Launch " then 
said = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet v2.0 : Launching"
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
look[i].Character.Torso.CFrame = look[i].Character.Torso.CFrame + Vector3.new(0, 5, 0)
wait() 
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 7) == "my name" then 
said = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
T3.Text =  "Pet v2.0 : l"
wait(0.5) 
T3.Text =  "Pet v2.0 :  " 
wait(0.5) 
T3.Text =  "Pet v2.0 : l"
wait(0.5) 
T3.Text =  "Pet v2.0 :  "
wait(0.5) 
T3.Text =  "Pet v2.0 : Al"
wait(0.5) 
T3.Text =  "Pet v2.0 : A "
wait(0.5) 
T3.Text =  "Pet v2.0 : Acl" 
wait(0.5) 
T3.Text =  "Pet v2.0 : Ac"
wait(0.5) 
T3.Text =  "Pet v2.0 : Acbl" 
wait(0.5) 
T3.Text =  "Pet v2.0 : Acb"
wait(0.5) 
T3.Text =  "Pet v2.0 : Acb2l"
wait(0.5) 
T3.Text =  "Pet v2.0 : Acb2"
wait(0.5) 
T3.Text =  "Pet v2.0 : Acb22l"
wait(0.5) 
T3.Text =  "Pet v2.0 : Acb22"
wait(0.5) 
T3.Text =  "Pet v2.0 : Acb227l"
wait(0.5) 
T3.Text =  "Pet v2.0 : Acb227"
wait(1)
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 8) == "type hi " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet v2.0 : l"
wait(0.5) 
T3.Text =  "Pet v2.0 :  " 
wait(0.5) 
T3.Text =  "Pet v2.0 : l"
wait(0.5) 
T3.Text =  "Pet v2.0 :  "
wait(0.5) 
T3.Text =  "Pet v2.0 : Hl"
wait(0.5) 
T3.Text =  "Pet v2.0 : H "
wait(0.5) 
T3.Text =  "Pet v2.0 : Hel" 
wait(0.5) 
T3.Text =  "Pet v2.0 : He"
wait(0.5) 
T3.Text =  "Pet v2.0 : Hell" 
wait(0.5) 
T3.Text =  "Pet v2.0 : Hel"
wait(0.5) 
T3.Text =  "Pet v2.0 : Helll"
wait(0.5) 
T3.Text =  "Pet v2.0 : Hell"
wait(0.5) 
T3.Text =  "Pet v2.0 : Hello"
wait(0.5) 
T3.Text =  "Pet v2.0 : Hello"
wait(0.5) 
T3.Text =  "Pet v2.0 : Hellol"
wait(0.5) 
T3.Text =  "Pet v2.0 : Hello" ..Name.. "!"
wait(3)
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 9) == "type bye " then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet v2.0 : l"
wait(0.5) 
T3.Text =  "Pet v2.0 :  " 
wait(0.5) 
T3.Text =  "Pet v2.0 : l"
wait(0.5) 
T3.Text =  "Pet v2.0 :  "
wait(0.5) 
T3.Text =  "Pet v2.0 : Bl"
wait(0.5) 
T3.Text =  "Pet v2.0 : B "
wait(0.5) 
T3.Text =  "Pet v2.0 : Byl" 
wait(0.5) 
T3.Text =  "Pet v2.0 : By"
wait(0.5) 
T3.Text =  "Pet v2.0 : Byel" 
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye l"
wait(0.5) 
T3.Text =  "Pet v2.0 : bye "
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye Ul"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Pl"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U P"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Pll"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Pl"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Plal"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Pla"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Playl"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Play"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Playel"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Playe"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Playerl"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Player"
wait(0.5) 
T3.Text =  "Pet v2.0 : Bye U Player " ..Name.. "!"
wait(3)
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 9) == "Levitate " then 
said = string.lower(string.sub(msg, 10)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet v2.0 : Leviateing"
look[i].Character.Torso.Anchored = true
look[i].Character.Torso.CFrame = CFrame.new(0, 2, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 4, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 6, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 8, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 10, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 12, 0)
wait(1) 
look[i].Character.Torso.Anchored = false 
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 7) == "Delimb " then 
said = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name
T3.Text =  "Pet v2.0 : Leviateing"
look[i].Character.Torso.Anchored = true
look[i].Character.Torso.CFrame = CFrame.new(0, 2, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 4, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 6, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 8, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 10, 0)
wait(1) 
look[i].Character.Torso.CFrame = CFrame.new(0, 12, 0)
wait(1) 
look[i].Character.Torso.Anchored = false 
T3.Text = "Pet v2.0 : Nothing" 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 1" then 
size = Vector3.new(1, 1, 1)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "exitall" then 
orb:remove() 
script:remove() 
m:remove()
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 2" then 
size = Vector3.new(2, 2, 2)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 3" then 
size = Vector3.new(3, 3, 3)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 4" then 
size = Vector3.new(4, 4, 4)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 5" then 
size = Vector3.new(5, 5, 5)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 6" then 
size = Vector3.new(6, 6, 6)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 7" then 
size = Vector3.new(7, 7, 7)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 8" then 
size = Vector3.new(8, 8, 8)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 9" then 
size = Vector3.new(9, 9, 9)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Size 10" then 
size = Vector3.new(10, 10, 10)
orb.Size = size
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 2) == "x " then 
said = string.sub(msg, 3) 
orb.BrickColor = BrickColor.new("Bright red") 
X = said 
wait(0.1) 
orb.BrickColor = color 
end 
if string.sub(msg, 1, 2) == "y " then 
said = string.sub(msg, 3) 
orb.BrickColor = BrickColor.new("Bright red") 
Y = said 
wait(0.1) 
orb.BrickColor = color 
end 
if string.sub(msg, 1, 2) == "z " then 
said = string.sub(msg, 3) 
orb.BrickColor = BrickColor.new("Bright red") 
Z = said 
wait(0.1) 
orb.BrickColor = color 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Jail" then 
m = Instance.new("Model") 
m.Parent = workspace.acb227
m.Name = "Jaily" 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(25,1,25) 
h.CFrame = workspace.Base.CFrame + Vector3.new(0, 90, 0)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(1,18,25) 
h.CFrame = workspace.Base.CFrame + Vector3.new(13.5, 100, 0)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(1,18,25) 
h.CFrame = workspace.Base.CFrame + Vector3.new(-13.5, 100, 0)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(25,18,1) 
h.CFrame = workspace.Base.CFrame + Vector3.new(0, 100, 13.5)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(25,18,1) 
h.CFrame = workspace.Base.CFrame + Vector3.new(0, 100, -13.5)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(25,1,25) 
h.CFrame = workspace.Base.CFrame + Vector3.new(0, 109, 0)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Striped fedora" then 
meshab.TextureId = "http://www.roblox.com/asset/?id=31600964" 
meshab.MeshId = "http://www.roblox.com/asset/?id=13640868" 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Halloween fedora" then 
meshab.TextureId = "http://www.roblox.com/asset/?id=35753511" 
meshab.MeshId = "http://www.roblox.com/asset/?id=13640868" 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Plad fedora" then 
meshab.TextureId = "http://www.roblox.com/asset/?id=35711820" 
meshab.MeshId = "http://www.roblox.com/asset/?id=13640868" 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Winter fedora" then 
meshab.TextureId = "http://www.roblox.com/asset/?id=35828461" 
meshab.MeshId = "http://www.roblox.com/asset/?id=13640868" 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Blue fedora" then 
meshab.TextureId = "http://www.roblox.com/asset/?id=32703637" 
meshab.MeshId = "http://www.roblox.com/asset/?id=13640868" 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Happy fedora" then 
meshab.TextureId = "http://www.roblox.com/asset/?id=28189753" 
meshab.MeshId = "http://www.roblox.com/asset/?id=13640868" 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "Remove jail" then 
Game.workspace.acb227.Jaily:remove()
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "nogui" then 
Game.Players.acb227.PlayerGui:remove() 
wait(1) 
p = Instance.new("PlayerGui") 
p.Parent = Game.Players.acb227 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if msg == "notool" then 
Game.Players.acb227.Backpack:remove() 
wait(1) 
p = Instance.new("Backpack") 
p.Parent = Game.Players.acb227 
end 
end 
vip.Chatted:connect(onChatted) 
--end

Y = 3 X = 2 Z = 2 A = Y-2 

while true do 
wait(0.001) 
Y = X+2
orb.CFrame = char.Head.CFrame + Vector3.new(X, Y, Z) 
hat.CFrame = orb.CFrame + Vector3.new(0, A, 0)
wait(0.001) 
Y = X-2
end 


--[[m = Instance.new("Model") 
m.Parent = workspace.acb227
m.Name = "Jaily" 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(25,1,25) 
h.CFrame = workspace.Base.CFrame + Vector3.new(0, 90, 0)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(1,18,25) 
h.CFrame = workspace.Base.CFrame + Vector3.new(13.5, 100, 0)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(1,18,25) 
h.CFrame = workspace.Base.CFrame + Vector3.new(-13.5, 100, 0)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(25,18,1) 
h.CFrame = workspace.Base.CFrame + Vector3.new(0, 100, 13.5)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(25,18,1) 
h.CFrame = workspace.Base.CFrame + Vector3.new(0, 100, -13.5)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Anchored = true
h.Parent = m 
h.Size = Vector3.new(25,1,25) 
h.CFrame = workspace.Base.CFrame + Vector3.new(0, 109, 0)
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) ]]--