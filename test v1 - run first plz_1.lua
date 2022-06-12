local junks = game.ReplicatedStorage

if junks:FindFirstChild("Colossus") then
	junks.model.NameOfModel:Clone().Parent = junks
	junks.model.NameOfModel:Clone().Parent = junks
else
	game:GetObjects("rbxassetid://ID")[1].Parent=junks
	wait(3)
	print("run script second time plis")
end