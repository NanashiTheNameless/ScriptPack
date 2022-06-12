--------------Pet--------------------------------------------------------------------------------------------------------------------------------
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
Game.Players.acb227.Chatted:connect(onChatted) 



vip = game.Players.acb227 

function onChatted(msg) 
if msg == "Hideb" then 
game.Workspace.Base.Transparency = 1  
end 
end 
vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if msg == "Showb" then 
game.Workspace.Base.Transparency = 0 
end 
end 
vip.Chatted:connect(onChatted) 


wait(0.1)
pet = Instance.new("Part")
pet.Transparency = 0.3
pet.Reflectance = 0
pet.TopSurface = "Smooth"
pet.BottomSurface = "Smooth"
pet.Shape = "Ball"
pet.CanCollide = false
pet.Anchored = true
pet.Size = Vector3.new(3, 3, 3)
pet.BrickColor = BrickColor.new("Hot pink")
mod = Instance.new("Model")
mod.Parent = game.Workspace.acb227
pet.Name = "Head"
hum = Instance.new("Humanoid")
hum.Parent = mod
hum.WalkSpeed = 0
hum.MaxHealth = 0
hum.Health = 0
mod.Name = "Poopoo"
pet.RightSurface = "Hinge"
pet.LeftSurface = "Hinge"
while true do
pet.Parent = mod
pet.CFrame = game.Workspace.acb227.Torso.CFrame + Vector3.new(0, 5, 0)
wait(0.001)
pet:Remove()
end
