for X = 1, math.huge, 0.2 do 
wait() 
game.Workspace.peyquinn.Torso.Neck.C0 = CFrame.new(math.sin(X) / 2,1.5,0) 
game.Workspace.peyquinn.Torso.Neck.C1 = CFrame.new(0,0,0) 
end 


for X = 1, math.huge, 0.1 do 
wait() 
game.Workspace.peyquinn.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X) 
game.Workspace.peyquinn.Torso.Neck.C1 = CFrame.new(0,0,0) 
end 




for _,c in pairs(game.Players:GetChildren()) do
	c.Character.Head.Mesh.Scale = Vector3.new(100, 100, 100)
end



for _,c in pairs(game.Players:GetChildren()) do
	c.Character.Head.Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
end