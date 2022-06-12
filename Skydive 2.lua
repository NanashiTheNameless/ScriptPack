p = game.Players:GetChildren() 
for i = 1,#p do 
p[i].Character.Torso.CFrame = CFrame.new(math.random(1,30),10000,math.random(1,30)) 
end