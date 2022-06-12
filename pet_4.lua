owner = Game.Players.acb227.Character 
--//prop\\--
sx = 1 
sy = 1 
sz = 1 
x = 2
y = 3
z = 1
risey = 0.1 
fally = 0.1 
color = "Really black" 
shape = "Ball" 
--//\\- End of properties -//\\--
orb = Instance.new("Part") 
orb.Size = Vector3.new(sx, sy, sz) 
orb.Parent = owner 
orb.BrickColor = BrickColor.new(color)
orb.Anchored = true 
orb.Shape = shape  

while true do 
wait(0.001) 
orb.CFrame = owner.Head.CFrame * CFrame.new(x, y-fally, z) 
wait(0.001) 
orb.CFrame = owner.Head.CFrame * CFrame.new(x, y-fally*2, z) 
wait(0.001) 
orb.CFrame = owner.Head.CFrame * CFrame.new(x, y-fally, z) 
wait(0.001) 
orb.CFrame = owner.Head.CFrame * CFrame.new(x, y+risey, z) 
wait(0.001) 
orb.CFrame = owner.Head.CFrame * CFrame.new(x, y+risey*2, z) 
wait(0.001) 
orb.CFrame = owner.Head.CFrame * CFrame.new(x, y+risey, z) 
wait(0.001) 
end 