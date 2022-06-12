afor X = 1, math.huge, 0.1 do 
wait() 
game.Workspace.epicikr.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X) 
game.Workspace.epicikr.Torso.Neck.C1 = CFrame.new(0,0,0) 
end 