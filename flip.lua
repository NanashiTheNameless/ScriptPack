o = game.Players.ScriptTyper.Character

o.Torso.Anchored = true 

for i = 0, 500, 1 do 
o.Torso.CFrame = o.Torso.CFrame * CFrame.Angles(math.rad(0*i), math.rad(10*i), math.rad(0*i)) 
wait() 
end 

o.Torso.Anchored = false 