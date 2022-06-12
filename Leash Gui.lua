--[[
	//  Created by Peyton
	//  Idk why I made this. I was bored and its pretty funny to watch people react.
	//  And this thing is not as glitchy as it used to be.
	// 	Sorry the UI looks so bad. I'll fix it sometime.
--]]

local LeaveCollar = true -- Leaves the collar on the people you capture after releasing them. 
-- I will add more functionality for this in the UI later.

-- Thats all the settings for now. --


-- Don't touch anything below for the best experience. -- (plus im a sloppy c0der xd) --

local Captured = false

function leash(plr)
if Captured then
	Release()
end
Char = game.Players[plr].Character
Master = game.Players.LocalPlayer.Character

Neck = Instance.new("Part")

Pole = Instance.new("Part")
Pole.Name = "Pole"
Pole.Size = Vector3.new(0.1,0.1,0.1)
Pole.Transparency = 1

Weld4 = Instance.new("Weld")
Weld4.Parent = Pole
Weld4.Part0 = Pole
Weld4.Part1 = Master["Left Arm"]
Weld4.C0 = CFrame.new(0,0.5,0)

Pole.Parent = Master["Left Arm"]

Attachment = Instance.new("Attachment", Neck)
Attachment1 = Instance.new("Attachment", Pole)

Neck.Size = Vector3.new(0.1,0.1,0.1)
Neck.CanCollide = false
Neck.Transparency = 1

Weld3 = Instance.new("Weld")
Weld3.Parent = Neck
Weld3.Part0 = Neck
Weld3.Part1 = Char.Head
Weld3.C0 = CFrame.new(0,0.5,0.55)

Instance.new("BodyGyro", Char.Torso)
Instance.new("BodyGyro", Master.Torso)
Neck.Parent = Char.Head

Collar = Instance.new("Part")
Collar.Size = Vector3.new(1,0.2,1)
Collar.CanCollide = false
Collar.Transparency = 0
Collar.BrickColor = BrickColor.Black()

local CollarMesh = Instance.new("CylinderMesh", Collar)
CollarMesh.Scale = Vector3.new(1.2,0.8,1.2)

local Weld6 = Instance.new("Weld")
Weld6.Parent = Collar
Weld6.Part0 = Collar
Weld6.Part1 = Char.Head
Weld6.C0 = CFrame.new(0,0.5,0)

Collar.Parent = Char.Head

Leash = Instance.new("RopeConstraint", Master["Left Arm"])
Leash.Color = BrickColor.Black()
Leash.Thickness = 0.1
Leash.Visible = true
Leash.Restitution = 1
Leash.Length = 5

Leash.Attachment0 = Attachment
Leash.Attachment1 = Master["Left Arm"].Pole.Attachment

Char.Humanoid.WalkSpeed = 0
Char.Humanoid.PlatformStand = true
Char.Humanoid.Sit = true
Clone = Char.HumanoidRootPart:Clone()
Char.HumanoidRootPart:Destroy()

Char.Humanoid.Died:connect(function()
	Release()
end)

Master.Humanoid.Died:connect(function()
	Release()
end)
end

local selecteduser = nil

local NewGuiPart1 = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)

local NewGuiPart2 = Instance.new("TextLabel")
NewGuiPart2.Size = UDim2.new(0, 300, 0, 20)
NewGuiPart2.Position = UDim2.new(0.5, -150, 0.4, -10)
NewGuiPart2.Font = Enum.Font.Bodoni
NewGuiPart2.FontSize = Enum.FontSize.Size14
NewGuiPart2.Text = "Leash Gui"
NewGuiPart2.TextScaled = true
NewGuiPart2.TextWrapped = true
NewGuiPart2.Draggable = true
NewGuiPart2.Active = true
NewGuiPart2.Parent = NewGuiPart1

local NewGuiPart3 = Instance.new("Frame")
NewGuiPart3.Name = "Main"
NewGuiPart3.Position = UDim2.new(0, 0, 1, 0)
NewGuiPart3.Size = UDim2.new(1, 0, 0, 150)
NewGuiPart3.Parent = NewGuiPart2

local NewGuiPart4 = Instance.new("TextButton")
NewGuiPart4.Active = true
NewGuiPart4.Name = "LeashEm"
NewGuiPart4.Position = UDim2.new(0, 0, 1, -30)
NewGuiPart4.Selectable = true
NewGuiPart4.Size = UDim2.new(1, 0, 0, 30)
NewGuiPart4.Style = Enum.ButtonStyle.Custom
NewGuiPart4.Font = Enum.Font.Antique
NewGuiPart4.FontSize = Enum.FontSize.Size14
NewGuiPart4.Text = "Leash Em"
NewGuiPart4.TextScaled = true
NewGuiPart4.TextWrapped = true
NewGuiPart4.Parent = NewGuiPart3

local NewGuiPart5 = Instance.new("ScrollingFrame")
NewGuiPart5.Name = "Players"
NewGuiPart5.Selectable = true
NewGuiPart5.Size = UDim2.new(1, 0, 0, 100)
NewGuiPart5.ClipsDescendants = true
NewGuiPart5.Parent = NewGuiPart3

local ListUI = Instance.new("UIListLayout", NewGuiPart5)

local Selected = Instance.new("TextLabel", NewGuiPart4)
Selected.Position = UDim2.new(0,0,0,-20)
Selected.Size = UDim2.new(1,0,0,20)
Selected.Text = "Selected: nil"

NewGuiPart4.MouseButton1Down:connect(function()
	if Captured then
		Release()
	else
		if selecteduser ~= nil then
			if game.Players:FindFirstChild(selecteduser) then
				leash(selecteduser)
				wait()
				Capture()
			end
		end
	end
end)

function Capture()
	NewGuiPart4.Text = "Release"
	Captured = true
	NewGuiPart5.Visible = false
	NewGuiPart4.Position = UDim2.new(0, 0, 0, 20)
	NewGuiPart4.Size = UDim2.new(1, 0, 0, 130)
	TP()
end

function TP()
	local prt = Instance.new("Part", game.Players.LocalPlayer.Character)
	prt.Transparency = 1
	prt.CanCollide = false
	prt.Anchored = true
	prt.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(Vector3.new(0, 5, -5))
	Char.Torso.CFrame = prt.CFrame * CFrame.new(0, 0, -4) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(180), math.rad(0))
	prt:Destroy()
end

function Release()
	Neck:Destroy()
	Pole:Destroy()
	Weld4:Destroy()
	Attachment:Destroy()
	Attachment1:Destroy()
	Weld3:Destroy()
	Char.Torso.BodyGyro:Destroy()
	Master.Torso.BodyGyro:Destroy()
	Leash:Destroy()
	Clone.Parent = Char
	Char.Humanoid.WalkSpeed = 16
	Char.Humanoid.PlatformStand = false
	Char.Humanoid.Sit = false
	if not LeaveCollar then	
	Collar:Destroy()
	end
	NewGuiPart4.Text = "Leash Em"
	NewGuiPart4.Position = UDim2.new(0, 0, 1, -30)
	NewGuiPart4.Size = UDim2.new(1, 0, 0, 30)
	NewGuiPart5.Visible = true
	Captured = false
	wait()
	TP()
end

function playerbuttons(name)
	local button = Instance.new("TextButton", NewGuiPart5)
	button.Size = UDim2.new(1, 0, 0, 25)
	button.TextScaled = true
	button.Text = name
	button.Name = name
	button.MouseButton1Down:connect(function()
		Selected.Text = "Selected: "..name
		selecteduser = name
	end)
	NewGuiPart5.CanvasSize = UDim2.new(0,0,0, NewGuiPart5.CanvasSize.Y.Offset + 25)
end

game.Players.ChildAdded:connect(function(thing)
	UpdateList()
end)

game.Players.ChildRemoved:connect(function(thing)
	UpdateList()
end)

function UpdateList()
	NewGuiPart5.CanvasSize = UDim2.new(0,0,0,0)
	for i,v in pairs(NewGuiPart5:GetChildren()) do
		if v.ClassName == "TextButton" then
			v:Destroy()
		end
	end

	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			playerbuttons(v.Name)
		end
	end
end

UpdateList()