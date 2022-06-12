--=[[Acb227's Neatest pet]]=------------------------------------------------------------------------------------------------------------------------
plyr = Game.Players.acb227
mod = Instance.new("Model")
mod.Parent = plyr.Character
mod.Name = "Mr. Neat" 
script.Parent = mod.Parent
vip = plyr

shape = "Ball" 
size = Vector3.new(2, 2, 2) 
color = Color3.new("Bright blue")

orb = Instance.new("Part") 
orb.Parent = mod 
orb.Name = "Head" 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.Shape = shape
orb.Size = size
orb.Color = color
orb.Anchored = true

hum = Instance.new("Humanoid") 
hum.Parent = mod 
hum.Name = "Human" 
hum.MaxHealth = 0 
--------------------------------------
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Kill " then 
said = string.lower(string.sub(msg, 7)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Name 
mod.Name = "Mr. Neat killing " ..Name.. "."  
look[i].Character.Humanoid.Health = 0 
wait(1) 
mod.Name = "Mr. Neat" 
end
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Heal " then 
said = string.lower(string.sub(msg, 7)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Name 
mod.Name = "Mr. Neat Healing " ..Name.. "."  
look[i].Character.Humanoid.Health = 100 
wait(1) 
mod.Name = "Mr. Neat" 
end
end 
end 
end 
vip.Chatted:connect(onChatted) 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "Hurt " then 
said = string.lower(string.sub(msg, 7)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Name 
mod.Name = "Mr. Neat Hurting." ..Name.. "."  
look[i].Character.Humanoid.Health = 50 
wait(1) 
mod.Name = "Mr. Neat" 
end
end 
end 
end 
vip.Chatted:connect(onChatted) 
--------------------------------------
X = math.pi Y = math.pi Z = math.pi
--------------------------------------
while true do 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.1, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.1, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.2, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.2, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.3, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.3, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.4, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.4, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.5, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.5, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.4, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.4, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.3, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.3, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.2, Z) 
wait(0.1) 
orb.CFrame = mod.Parent.Head.CFrame + Vector3.new(X, Y-0.2, Z) 
wait(0.1) 
end 