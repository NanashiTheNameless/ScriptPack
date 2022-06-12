_G.gooten = true
while _G.gooten == true do
	game:GetService("Players").LocalPlayer.Character.Torso.Velocity = Vector3.new(0, 0, 0)
	game:GetService("Players").LocalPlayer.Character.Torso.RotVelocity = Vector3.new(0, 0, 0)
	pcall(function()
		game:GetService("Players").LocalPlayer.Character.Torso.CFrame = game:GetService("Players").gooten.Character.Torso.CFrame * CFrame.new(0, 6, 0)
	end)
	wait()
end


_G.gooten = true
while _G.gooten == true do
	local _, Player = pcall(function() return game:GetService("Players").gooten.Character end)
	if Player ~= nil then
		game:GetService("Players").gooten.Character.Parent = nil
		wait()
		game:GetService("Players").gooten.Character.Parent = Workspace
	end
	wait()
end