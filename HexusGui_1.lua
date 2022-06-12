local Player = game:GetService("Players").LocalPlayer
local GuiParent = game.CoreGui
local Gui = GuiParent:FindFirstChild("HexusGui") or Instance.new("ScreenGui", game.CoreGui)
Gui.Name = "HexusGui"
Gui:ClearAllChildren()

local GuiOpen = false

function GetPlayers(Name)
	if Name:lower() == "me" then
		return {Player}
	elseif Name:lower() == "all" then
		return game:GetService("Players"):GetPlayers()
	elseif Name:lower() == "others" then
		local t = {}
		for i, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name ~= Player.Name then
				t[#t+1] = v
			end
		end
		return t
	else
		local t = {}
		for i, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name:sub(1, #Name):lower() == Name:lower() then
				t[#t+1] = v
			end
		end
		return t
	end
end

local MainFrame = Instance.new("Frame", Gui)
MainFrame.Size = UDim2.new(0, 550, 0, 350)
MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.Position = UDim2.new(1, -560, 1, -370)
MainFrame.BorderSizePixel = 3
MainFrame.Style = "DropShadow"

local ArgumentBox = Instance.new("TextBox", MainFrame)
ArgumentBox.Size = UDim2.new(0, 235, 0, 35)
ArgumentBox.Position = UDim2.new(0, 20, 1, -55)
ArgumentBox.BorderSizePixel = 0
ArgumentBox.BackgroundColor = BrickColor.new("Dark grey metallic")
ArgumentBox.Text = "Argument/Player"
ArgumentBox.Font = "SourceSansLight"
ArgumentBox.FontSize = 6
ArgumentBox.TextColor = BrickColor.new("White")

local ArgumentBox2 = Instance.new("TextBox", MainFrame)
ArgumentBox2.Size = UDim2.new(0, 235, 0, 35)
ArgumentBox2.Position = UDim2.new(1, -255, 1, -55)
ArgumentBox2.BorderSizePixel = 0
ArgumentBox2.BackgroundColor = BrickColor.new("Dark grey metallic")
ArgumentBox2.Text = "Argument/Player"
ArgumentBox2.Font = "SourceSansLight"
ArgumentBox2.FontSize = 6
ArgumentBox2.TextColor = BrickColor.new("White")

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 20, 0, 25)
Button.Text = "God"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char then
			local Hum = Char:FindFirstChild("Humanoid")
			if Hum then
				Hum.MaxHealth = 1/0
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 200, 0, 25)
Button.Text = "Kill"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char then
			Char:BreakJoints()
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 375, 0, 25)
Button.Text = "Crash"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char then
			local Hum = Char:FindFirstChild("Humanoid")
			if Hum then
				Hum.HipHeight = 0/0
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 20, 0, 90)
Button.Text = "WalkSpeed +"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char then
			local Hum = Char:FindFirstChild("Humanoid")
			if Hum then
				Hum.WalkSpeed = Hum.WalkSpeed + 5
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 200, 0, 90)
Button.Text = "WalkSpeed -"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char then
			local Hum = Char:FindFirstChild("Humanoid")
			if Hum then
				Hum.WalkSpeed = Hum.WalkSpeed - 5
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 375, 0, 90)
Button.Text = "Fire"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char then
			local Torso = Char:FindFirstChild("Torso")
			if Torso then
				local F = Instance.new("Fire", Torso)
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 20, 0, 155)
Button.Text = "TP"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayers(ArgumentBox2.Text)[1]
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char and Plr.Character then
			local Torso = Char:FindFirstChild("HumanoidRootPart")
			if Torso and v.Character:FindFirstChild("Torso") then
				Torso.CFrame = Plr.Character.Torso.CFrame * CFrame.new(math.random(-4, 4), 0, math.random(-4, 4))
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 200, 0, 155)
Button.Text = "Go To"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayers(ArgumentBox.Text)[1]
	local Char = Plr.Character
	if Char and Player.Character then
		local Torso = Char:FindFirstChild("HumanoidRootPart")
		if Torso and Player.Character:FindFirstChild("Humanoid") then
			Player.Character.HumanoidRootPart.CFrame = Torso.CFrame
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 375, 0, 155)
Button.Text = "Bring"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char and Player.Character then
			local Torso = Char:FindFirstChild("HumanoidRootPart")
			if Torso and v.Character:FindFirstChild("Torso") then
				Torso.CFrame = Player.Character.Torso.CFrame * CFrame.new(math.random(-4, 4), 0, math.random(-4, 4))
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 20, 0, 220)
Button.Text = "Fling"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plrs = GetPlayers(ArgumentBox.Text)
	for i, v in pairs(Plrs) do
		local Char = v.Character
		if Char then
			local Torso = Char:FindFirstChild("Torso")
			if Torso then
				local B = Instance.new("BodyForce", Torso)
				B.Force = Vector3.new(25000, 25000, 25000)
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 200, 0, 220)
Button.Text = "Gravity"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Dark grey metallic")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	workspace.Gravity = tonumber(ArgumentBox.Text)
end)