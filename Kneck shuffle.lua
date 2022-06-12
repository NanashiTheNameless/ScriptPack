for X = 1, math.huge, 0.2 do 
wait() 
game.Workspace.PLAYERNAME.Torso.Neck.C0 = CFrame.new(math.sin(X) / 2,1.5,0) 
game.Workspace.PLAYERNAME.Torso.Neck.C1 = CFrame.new(0,0,0) 
end