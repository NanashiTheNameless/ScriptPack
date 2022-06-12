--[[ vip = game.Players.acb227 

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
look[i].Character.Humanoid.Health = 100
wait(1)
SPL:Remove()
T3.Text = "Pet : Nothing" 
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
look[i].Character.Humanoid.Health = 50
wait(1)
SPL:Remove()
T3.Text = "Pet : Nothing" 
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
while true do 
look[i].Character.Humanoid.Health:TakeDamage(10) 
wait(2) 
end 
wait(1) 
SPL:Remove()
T3.Text = "Pet : Nothing" 
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
m.Parent = Workspace.acb227 
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
look[i].Character.Torso.CFrame = Game.Workspace.Base.CFrame + Vector3.new(0, 3, 0) 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
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
look[i].Character.Torso.Anchored = true 
look[i].Character.Head.Anchored = true 
wait(1) 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
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
look[i].Character.Torso.Anchored = false 
look[i].Character.Head.Anchored = false 
wait(1)
SPL:Remove()
Name = look[i].Character.Name
T3.Text =  "Pet : Nothing"
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
wait(3)
t = look[i].Character.Torso 
ex = Instance.new("Explosion") 
ex.Parent = workspace 
ex.Position = t.Position 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
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
t.CFrame = Owner.Torso.CFrame + Vector3.new(0, 0, 3) 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
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
Owner.Torso.CFrame = t.CFrame + Vector3.new(0, 0, 3) 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 17) == "Pet, Kick " then 
said = string.lower(string.sub(msg, 18)) 
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
look[i]:Remove()
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
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
t = look[i].Character 
ex = Instance.new("ForceField") 
ex.Parent = t
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
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
look[i].Character.ForceField:Remove() 
wait(1)
SPL:Remove()
T3.Text =  "Pet : Nothing"
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
wait(5)
SPL:Remove()
T3.Text = "Pet : Nothing" 
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
f.Heat = Vector3.new(1)
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
vip.Chatted:connect(onChatted) ]]--