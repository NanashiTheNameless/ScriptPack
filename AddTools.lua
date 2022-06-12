script.Parent = nil
Give = function(Player)
	Player.Changed:connect(function(Property)
		wait()
		if Property == "Character" and Player.Character ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character.Humanoid.Health > 0 then
			for _, Part in pairs(_G.Weapons or script:GetChildren()) do
				pcall(function()
					local Part2 = Part:Clone()
					Part2.Player.Value = Player
					Part2.Disabled = false
					Part2.Parent = game:GetService("Workspace")
				end)
			end
		end
	end)
end
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	pcall(function() Give(Player) end)
end
game:GetService("Players").PlayerAdded:connect(Give)