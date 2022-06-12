owner = Game.Players.acb227

mod = Instance.new("Model") 
mod.Parent = owner.Character 
mod.Name = "Ace" 
orb = Instance.new("Part") 
orb.Parent = mod 
orb.Size = Vector3.new(2, 2, 2) 
orb.shape = "Ball" 
orb.BrickColor = BrickColor.new("Earth green") 
orb.Transparency = 0 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.Anchored = true 
orb.Name = "Head" 
human = Instance.new("Humanoid") 
human.MaxHealth = 0 
human.Health = 0
human.Parent = mod

script.Parent = owner.Character

vip = owner 

function onChatted(msg) 
if msg == "Ace" then 
mod.Name = "Yes Master?" 
wait(1) 
mod.Name = "Ace" 
elseif msg == "Ace are you alright" then 
mod.Name = "Im alright Master" 
wait(1) 
mod.Name = "Ace" 
elseif msg == "Ace bring food" then 
mod.Name = "Bringing food Master" 
wait(1) 
mod.Name = "Ace" 
elseif msg == "Ace leave us" then 
mod.Name = "Bye Master" 
wait(1) 
mod:Remove() 
script:remove()
mod.Name = "Ace" 
elseif msg == "Ace help me" then 
mod.Name = "Master? Are you all right?" 
wait(3) 
mod.Name = "Ace" 
elseif msg == "Ace arrest me" then 
mod.Name = "But Master..." 
wait(1) 
mod.Name = "its... its... you!!"
wait(3) 
mod.Name = "Ace" 
elseif msg == "Ace sit" then 
mod.Name = "Alright Master" 
wait(1) 
Y = -4
mod.Name = "Ace" 
elseif msg == "Ace get up" then 
mod.Name = "Alright Master" 
wait(1) 
Y = X+2
mod.Name = "Ace" 
elseif msg == "Ace get me a drink" then 
mod.Name = "As you wish Master" 
wait(2) 
mod.Name = "Ace" 
elseif msg == "Ace get over here" then 
mod.Name = "Yes, Master" 
wait(1) 
mod.Name = "Ace" 
elseif msg == "Ace Come" then 
mod.Name = "Coming Master" 
wait(1) 
Y = X+2
mod.Name = "Ace" 
end 
end 
vip.Chatted:connect(onChatted) 

X = 2
Y = X+2d
Z = Y-1

while true do 
orb.CFrame = owner.Character.Head.CFrame + Vector3.new(X, Y, Z)
wait() 
end 