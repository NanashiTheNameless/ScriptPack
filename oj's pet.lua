plyr = Game.Players.ojmayo999
char = plyr.Character

m = Instance.new("Model") 
m.Parent = char 
m.Name = "Cheavs" 

orb = Instance.new("Part") 
orb.Parent = m 
orb.BrickColor = BrickColor.new("Lime green") 
orb.Size = Vector3.new(3, 3, 3) 
orb.Shape = "Ball" 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.Anchored = true 

f = Instance.new("Fire") 
f.Parent = orb
f.Heat = -1

d = Instance.new("Decal") 
d.Parent = orb 
d.Face = "Front" 
d.Texture = char.Head.face.Texture 

-----------------------------Commands
vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 5) == "hurt " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
look[i].Character.Humanoid.Health = 50 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 8) == "explode " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ex = Instance.new("Explosion")
ex.Parent = workspace
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
tor=look[i].Character.Torso
ex.Position=tor.Position
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 5) == "kill " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
look[i].Character:BreakJoints()
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 5) == "heal " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
look[i].Character.Humanoid.Health = 100 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 5) == "find " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = orb 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = orb 
wait(5)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 5) == "sleep" then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
orb.Transparency = 1 
f:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 8) == "wake up" then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
orb.Transparency = 0 
f = Instance.new("Fire") 
f.Parent = orb
f.Heat = -1
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 6) == "remove" then 
said = string.lower(string.sub(msg, 7)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
orb:remove() 
m:remove() 
script:remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 5) == "tele " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
t = look[i].Character.Torso 
t.CFrame = char.Torso.CFrame + Vector3.new(0, 0, 3) 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.ojmayo999

function onChatted(msg) 
if string.sub(msg, 1, 8) == "tele to " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
t = look[i].Character.Torso 
char.Torso.CFrame = t.CFrame + Vector3.new(0, 0, 3) 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 
-----------------------------End only
X = 5
Y = X-1
Z = Y-2

while true do 
orb.CFrame = char.Head.CFrame + Vector3.new(X, Y, Z)
wait(0.002) 
end 
