local Player = game.Players.LocalPlayer
repeat wait() until Player.Character
local Character = Player.Character
local Camera = game.Workspace.CurrentCamera
local Head = Character:WaitForChild("Head")
local UIP = game:GetService("UserInputService")

--Some variables for you to change
local maxDistance = 1337
local enemyTeamOnly = true
local hotkey = Enum.KeyCode.LeftAlt
--end of variables ya bitch

local function handleESP(Player)
	if Player and Player.Character and Player.Character:FindFirstChild("Head") then
		if Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.Health > 0 then
			if not Player.Character.Head:FindFirstChild("FuckMyAss") then
				local esp = Instance.new("SphereHandleAdornment")
				esp.AlwaysOnTop = true
				esp.Name = "FuckMyAss"
				esp.Adornee = Player.Character.Head
				esp.ZIndex = 1
				esp.Color3 = Color3.new(1, 0, 0)
				esp.Parent = Player.Character.Head
			end
		else
			if Player.Character.Head:FindFirstChild("FuckMyAss") then
				Player.Character.head.FuckMyAss:Destroy()
			end
		end
	end
end

game:GetService("RunService").RenderStepped:connect(function()
	local closestP = nil
	local closestC = nil
	for i, c in pairs(game.Players:GetChildren()) do
		if c ~= Player and (not enemyTeamOnly or c.TeamColor ~= Player.TeamColor) and c.Character then
			spawn(function() handleESP(c) end)
			if UIP:IsKeyDown(hotkey) then
				local part = game.Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, (c.Character.Head.CFrame.p - Head.CFrame.p).unit * maxDistance), Character, true, true)
				local dist = (c.Character.Head.CFrame.p - Head.CFrame.p).magnitude
				if part and c.Character:FindFirstChild(part.Name) and (not closestC or dist < closestC) then
					closestC = dist
					closestP = c
				end
			end
		end
	end
	if UIP:IsKeyDown(hotkey) then
		if closestP ~= nil and closestP.Character and closestP.Character:FindFirstChild("Humanoid") and closestP.Character.Humanoid.Health > 0 then
			Camera.CFrame = CFrame.new(Camera.CFrame.p, closestP.Character.Head.CFrame.p)
		end
	end
end)