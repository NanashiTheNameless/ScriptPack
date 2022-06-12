script.Parent = nil
_G.MaxAmmo = true
--Player = game:GetService("Players").DarkShadow6
while _G.MaxAmmo == true do
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		pcall(function()
			for _, Part in pairs(Player.Backpack.Ammo:GetChildren()) do
				Part.Value = 999
			end
		end)
	end
	wait()
end