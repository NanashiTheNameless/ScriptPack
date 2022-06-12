Owner = Game.Players.acb227 
char = Owner.Character 

script.Parent = char

pet = Instance.new("Part") 
pet.Transparency = 0.1 
pet.Reflectance = 0 
pet.TopSurface = "Smooth" 
pet.BottomSurface = "Smooth" 
pet.Shape = "Ball" 
pet.CanCollide = false 
pet.Anchored = true 
pet.Size = Vector3.new(2, 2, 2) 
pet.BrickColor = BrickColor.new("Bright blue") 
mod = Instance.new("Model") 
mod.Parent = char 
pet.Name = "Head" 
hum = Instance.new("Humanoid") 
hum.Parent = mod 
hum.WalkSpeed = 0 
hum.MaxHealth = 0 
hum.Health = 0 
mod.Name = "Pet" 
pet.RightSurface = "Smooth" 
pet.LeftSurface = "Smooth" 
pet.Parent = mod 
--commands 
vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "kill " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = pet 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = pet 
look[i].Character.Humanoid.Health = 0 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 


vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "hurt " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = pet 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = pet 
look[i].Character.Humanoid.Health = 50 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 


vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "heal " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = pet 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = pet 
look[i].Character.Humanoid.Health = 100 
wait(1)
SPL:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

--keep at end
while true do 
pet.CFrame = char.Torso.CFrame + Vector3.new(0, 5, 0) 
wait(0.001) 
end 
