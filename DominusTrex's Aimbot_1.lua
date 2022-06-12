-- On/Off: F, Focus on nearest player: G
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera
local FocusedPlayer
local ActivateButton = "f"
local FocusButton = "g"
local AimbotOn = true
local RunService = game:GetService("RunService")
local RenderStepped = function()
	RunService.RenderStepped:wait()
end
local GetClosestPlayer = function()
	local ClosestHead = 99e99
	local ClosestPlayer = nil
	for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("Head") and v:FindFirstChild("Torso") and v ~= Player.Character and v:FindFirstChild("Humanoid") and v.Humanoid.Health >0 then
			local PlayerMagnitude = (Player.Character:WaitForChild("Torso").Position - v:WaitForChild("Torso").Position).magnitude
			if ClosestHead > PlayerMagnitude then
				ClosestHead = PlayerMagnitude
				ClosestPlayer = v
			end
		end
	end
	return ClosestPlayer
end

FocusedPlayer = GetClosestPlayer()
function Aim()
	while AimbotOn == true do
		if FocusedPlayer and FocusedPlayer:FindFirstChild("Head") then
			Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p, FocusedPlayer.Head.CFrame.p)
		end	
		RenderStepped()
	end
end

Mouse.KeyDown:connect(function(k)
	if k:lower() == ActivateButton:lower() then
		if AimbotOn == true then
			AimbotOn = false
		else
			AimbotOn = true
			Aim()
		end
	elseif k:lower() == FocusButton:lower() then
		FocusedPlayer = GetClosestPlayer()
	end
end)