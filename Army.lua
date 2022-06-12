for _, p in pairs(game.Players:GetPlayers()) do
	if p.Name ~= "DarkShadow6" then
		pcall(function() p.Character.Shirt:Remove() end)
		pcall(function() p.Character.Pants:Remove() end)
		pcall(function() p.Character["Body Colors"]:Remove() end)
		pcall(function() p.Character["Shirt Graphic"]:Remove() end)
		pcall(function() p.Character.Torso.roblox:Remove() end)
		pcall(function() Workspace.DarkShadow6.Pants:Clone().Parent = p.Character end)
		pcall(function() Workspace.DarkShadow6.Shirt:Clone().Parent = p.Character end)
		pcall(function() Workspace.DarkShadow6["Body Colors"]:Clone().Parent = p.Character end)
		pcall(function() Workspace.DarkShadow6["Shirt Graphic"]:Clone().Parent = p.Character end)
		pcall(function() Workspace.DarkShadow6.Torso.roblox:Clone().Parent = p.Character end)
	end
end