local Player = game:GetService("Players").LocalPlayer
local GuiParent = Player.PlayerGui
local Gui = GuiParent:FindFirstChild("HexusGui") or Instance.new("ScreenGui", Player.PlayerGui)
Gui.Name = "HexusGui"
Gui:ClearAllChildren()

local GuiOpen = false

function GetPlayer(Name)
	if Name:lower() == "me" then
		return Player
	end
	return game:GetService("Players"):FindFirstChild(Name)
end

local OpenButton = Instance.new("TextButton", Gui)
OpenButton.Size = UDim2.new(0, 150, 0, 35)
OpenButton.Text = "Open"
OpenButton.BorderSizePixel = 3
OpenButton.TextColor = BrickColor.new("White")
OpenButton.BackgroundColor = BrickColor.new("Really red")
OpenButton.Position = UDim2.new(1, -160, 1, -45)
OpenButton.BackgroundTransparency = 0.3
OpenButton.Font = "SourceSansLight"
OpenButton.FontSize = 7
OpenButton.Style = "RobloxButton"

local MainFrame = Instance.new("ScrollingFrame", Gui)
MainFrame.Size = UDim2.new(0, 550, 0, 350)
MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.Position = UDim2.new(1, -560, 1, 0)
MainFrame.BackgroundTransparency = 0.3
MainFrame.BackgroundColor = BrickColor.new("Really red")
MainFrame.BorderSizePixel = 3

--[[local Credits = Instance.new("TextLabel", MainFrame)
Credits.Size = UDim2.new(0.5, 0, 0, 25)
Credits.Position = UDim2.new(0.5, -10, 1, -35)
Credits.BackgroundTransparency = 1
Credits.TextColor = BrickColor.new("White")
Credits.Font = "SourceSansLight"
Credits.FontSize = 7
Credits.TextXAlignment = "Right"
Credits.Text = "Made by Customality"]]

local ArgumentBox = Instance.new("TextBox", Gui)
ArgumentBox.Size = UDim2.new(0, 200, 0, 35)
ArgumentBox.Position = UDim2.new(0, 25, 0, 55)
ArgumentBox.BorderSizePixel = 0
ArgumentBox.BackgroundColor = BrickColor.new("Really black")
ArgumentBox.Text = "Argument/Player"
ArgumentBox.Font = "SourceSansLight"
ArgumentBox.FontSize = 6
ArgumentBox.TextColor = BrickColor.new("White")

local ArgumentBox2 = Instance.new("TextBox", Gui)
ArgumentBox2.Size = UDim2.new(0, 200, 0, 35)
ArgumentBox2.Position = UDim2.new(0, 280, 0, 55)
ArgumentBox2.BorderSizePixel = 0
ArgumentBox2.BackgroundColor = BrickColor.new("Really black")
ArgumentBox2.Text = "Argument/Player"
ArgumentBox2.Font = "SourceSansLight"
ArgumentBox2.FontSize = 6
ArgumentBox2.TextColor = BrickColor.new("White")

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 25, 0, 25)
Button.Text = "God"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	if Plr then
		local Char = Plr.Character
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
Button.Position = UDim2.new(0, 205, 0, 25)
Button.Text = "Kill"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	if Plr then
		local Char = Plr.Character
		if Char then
			Char:BreakJoints()
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 380, 0, 25)
Button.Text = "Crash"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	if Plr then
		local Char = Plr.Character
		if Char then
			local Hum = Char:FindFirstChild("Humanoid")
			if Hum then
				Hum.HipHeight = 1/0*0
			end
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 25, 0, 90)
Button.Text = "WalkSpeed +"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	if Plr then
		local Char = Plr.Character
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
Button.Position = UDim2.new(0, 205, 0, 90)
Button.Text = "WalkSpeed -"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	if Plr then
		local Char = Plr.Character
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
Button.Position = UDim2.new(0, 380, 0, 90)
Button.Text = "Fire"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	if Plr then
		local Char = Plr.Character
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
Button.Position = UDim2.new(0, 25, 0, 155)
Button.Text = "TP"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	local Plr2 = GetPlayer(ArgumentBox2.Text)
	if Plr and Plr2 then
		local Char = Plr.Character
		local Char2 = Plr2.Character
		if Char and Char2 then
			Char:MoveTo(Char2.Torso.Position)
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 205, 0, 155)
Button.Text = "Go To"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	if Plr then
		local Char = Plr.Character
		local MyChar = Player.Character
		if Char and MyChar then
			MyChar:MoveTo(Char.Torso.Position)
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 380, 0, 155)
Button.Text = "Bring"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	local Plr = GetPlayer(ArgumentBox.Text)
	if Plr then
		local Char = Plr.Character
		local MyChar = Player.Character
		if Char and MyChar then
			Char:MoveTo(MyChar.Torso.Position)
		end
	end
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 25, 0, 220)
Button.Text = "Shutdown Game"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	workspace.Gravity = 0/0
end)


local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 205, 0, 220)
Button.Text = "Gravity"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
	workspace.Gravity = tonumber(ArgumentBox.Text)
end)

local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 135, 0, 50)
Button.Position = UDim2.new(0, 380, 0, 220)
Button.Text = "BTools"
Button.BorderSizePixel = 0
Button.BackgroundTransparency = 0.2
Button.BackgroundColor = BrickColor.new("Really black")
Button.TextColor = BrickColor.new("White")
Button.Font = "SourceSansLight"
Button.FontSize = 6

Button.MouseButton1Click:connect(function()
local player = GetPlayer(ArgumentBox.Text)

local tool1 = Instance.new("HopperBin")
tool1.Name = "Grab"
tool1.Parent = player.Backpack 
tool1.BinType = "Grab"

local tool2 = Instance.new("HopperBin")
tool2.Name = "Clone"
tool2.Parent = player.Backpack
tool2.BinType = "Clone"


local tool3 = Instance.new("HopperBin")
tool3.Name = "Hammer"
tool3.Parent = player.Backpack
tool3.BinType = "Hammer"
print("Gave delete tool")

local tool4 = Instance.new("HopperBin")
tool4.Name = "New Part"
tool4.Parent = player.Backpack
tool4.BinType = "Script"


local tool5 = Instance.new("HopperBin")
tool5.Name = "Paint"
tool5.Parent = player.Backpack
tool5.BinType = "Script"


local tool6 = Instance.new("HopperBin") --Gives the player a tool where it spawns a part.
tool6.Name = "Anchor"
tool6.Parent = player.Backpack
tool6.BinType = "Script"


local tool7 = Instance.new("HopperBin") --Gives the player a tool where it spawns a part.
tool7.Name = "Un-Anchor"
tool7.Parent = player.Backpack
tool7.BinType = "Script"


local tool8 = Instance.new("HopperBin") --Gives the player a tool where it spawns a part.
tool8.Name = "Lock"
tool8.Parent = player.Backpack
tool8.BinType = "Script"


local tool9 = Instance.new("HopperBin") --Gives the player a tool where it spawns a part.
tool9.Name = "Unlock"
tool9.Parent = player.Backpack
tool9.BinType = "Script"


playerMouse = game.Players.LocalPlayer:GetMouse()


--Functions--
function lock()
	playerMouse.Target.Locked = true
	print("Locked "..playerMouse.Target.Name)
end

function unlock()
	playerMouse.Target.Locked = false
	print("Unlocked "..playerMouse.Target.Name)
end

function anchor()
		playerMouse.Target.Anchored = true
		print("Anchored "..playerMouse.Target.Name)
end

function unanchor()
		playerMouse.Target.Anchored = false
		print("Un-anchored "..playerMouse.Target.Name)
end

function paint()
	playerMouse.Target.BrickColor = BrickColor.Random()
end

function create(mouse)
	local part = Instance.new("Part")
	part.Parent = game.Workspace
	part.Position = player.Head.Position
	part.Anchored = true
	part.Locked = false
	print("Created a new part.")
end

------------------------

--Events-

tool4.Selected:connect(function(mouse) 
	print("Selected.")
	mouse.Button1Down:connect(create)
end)

tool5.Selected:connect(function(mouse)
	print("Selected.")
	mouse.Button1Down:connect(paint)
end)

tool6.Selected:connect(function(mouse)
	print("Selected.")
	mouse.Button1Down:connect(anchor)
end)

tool7.Selected:connect(function(mouse)
	print("Selected.")
	mouse.Button1Down:connect(unanchor)
end)

tool8.Selected:connect(function(mouse)
	print("Selected.")
	mouse.Button1Down:connect(lock)
end)

tool9.Selected:connect(function(mouse)
	print("Selected.")
	mouse.Button1Down:connect(unlock)
end)

print("Gave tools to "..player.Name..". Thank Syris for this hot command")
end)

OpenButton.MouseButton1Click:connect(function()
	if GuiOpen then
		OpenButton:TweenPosition(UDim2.new(1, -160, 1, -45), "Out", "Quad", true, 0.1)
		MainFrame:TweenPosition(UDim2.new(1, -560, 1, 0), "Out", "Quad", true, 0.1)
	else
		OpenButton:TweenPosition(UDim2.new(1, -160, 1, -420), "Out", "Quad", true, 0.1)
		MainFrame:TweenPosition(UDim2.new(1, -560, 1, -370), "Out", "Quad", true, 0.1)
	end
	GuiOpen = not GuiOpen
	OpenButton.Text = GuiOpen and "Close" or "Open"
end)