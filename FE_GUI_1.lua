-- Start Script
-- Objects

warn("FilteringEnabled GUI is now loading... Please wait! - Made By Sleep")
local FEGui = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local FEKill = Instance.new("TextButton")
local FEKillAll = Instance.new("TextButton")
local FEPunish = Instance.new("TextButton")
local Destroy = Instance.new("TextButton")
local PlayerName = Instance.new("TextBox")
local Players = game:GetService("Players")
local FE = Workspace.FilteringEnabled

-- Properties

FEGui.Name = "FEGui"
FEGui.Parent = game.CoreGui

Open.Name = "Open"
Open.Parent = FEGui
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.Position = UDim2.new(0, 0, 0, 350)
Open.Size = UDim2.new(0, 100, 0, 25)
Open.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Open.Font = Enum.Font.Cartoon
Open.FontSize = Enum.FontSize.Size18
Open.Text = "Open/Close"
Open.TextSize = 14

Destroy.Name = "Destroy"
Destroy.Parent = FEGui
Destroy.BackgroundColor3 = Color3.new(1, 1, 1)
Destroy.Position = UDim2.new(0, 0, 0, 400)
Destroy.Size = UDim2.new(0, 100, 0, 25)
Destroy.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Destroy.Font = Enum.Font.Cartoon
Destroy.FontSize = Enum.FontSize.Size18
Destroy.Text = "Destroy"
Destroy.TextSize = 14

Frame.Parent = FEGui
Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Frame.Position = UDim2.new(0, 400, 0, 200)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Visible = false
Frame.Draggable = true
Frame.Active = true

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(0.25, 0.25, 0.80)
Title.Size = UDim2.new(0, 300, 0, 30)
Title.Font = Enum.Font.Cartoon
Title.FontSize = Enum.FontSize.Size18
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Text = "FilteringEnabled GUI"
Title.TextSize = 14

FEKill.Name = "FEKill"
FEKill.Parent = Frame
FEKill.BackgroundColor3 = Color3.new(0.25, 0.25, 0.80)
FEKill.Position = UDim2.new(0, 25, 0, 100)
FEKill.Size = UDim2.new(0, 100, 0, 30)
FEKill.Font = Enum.Font.SciFi
FEKill.FontSize = Enum.FontSize.Size18
FEKill.Text = "FE Kill"
FEKill.TextColor3 = Color3.new(1, 1, 1)
FEKill.TextSize = 18

FEKillAll.Name = "FEKillAll"
FEKillAll.Parent = Frame
FEKillAll.BackgroundColor3 = Color3.new(0.25, 0.25, 0.80)
FEKillAll.Position = UDim2.new(0, 175, 0, 100)
FEKillAll.Size = UDim2.new(0, 100, 0, 30)
FEKillAll.Font = Enum.Font.SciFi
FEKillAll.FontSize = Enum.FontSize.Size18
FEKillAll.Text = "FE Kill All"
FEKillAll.TextColor3 = Color3.new(1, 1, 1)
FEKillAll.TextSize = 16

FEPunish.Name = "FEPunish"
FEPunish.Parent = Frame
FEPunish.BackgroundColor3 = Color3.new(0.25, 0.25, 0.80)
FEPunish.Position = UDim2.new(0, 100, 0, 150)
FEPunish.Size = UDim2.new(0, 100, 0, 30)
FEPunish.Font = Enum.Font.SciFi
FEPunish.FontSize = Enum.FontSize.Size18
FEPunish.Text = "FE Punish"
FEPunish.TextColor3 = Color3.new(1, 1, 1)
FEPunish.TextSize = 18

PlayerName.Name = "PlayerName"
PlayerName.Parent = Frame
PlayerName.BackgroundColor3 = Color3.new(0.25, 0.25, 0.80)
PlayerName.Position = UDim2.new(0, 75, 0, 50)
PlayerName.Size = UDim2.new(0, 150, 0, 30)
PlayerName.Font = Enum.Font.SciFi
PlayerName.FontSize = Enum.FontSize.Size18
PlayerName.Text = ""
PlayerName.TextColor3 = Color3.new(1, 1, 1)
PlayerName.TextSize = 18
PlayerName.ClearTextOnFocus = false

FEKill.MouseButton1Down:connect(function()
    local target = Players[PlayerName.Text]
    repeat
    wait()
    target:Move(Vector3.new(math.huge*0))
    until not target:FindFirstChild("Head")
end)

FEKillAll.MouseButton1Down:connect(function()
    for i, v in next, Players:GetPlayers() do
        v:Move(Vector3.new(math.huge*0))
    end
end)

FEPunish.MouseButton1Down:connect(function()
    FEPunish.Text = "N/A"
    wait(10)
    FEPunish.Text = "FE Punish"
end)

Open.MouseButton1Click:connect(function()
	if Frame.Visible == false then
		Frame.Visible = true
	else 
		Frame.Visible = false
	end
end)

Destroy.MouseButton1Click:connect(function()
    FEGui:Destroy()
    warn("Thank you for using Sleep's FE Gui!")
end)

if FE == true then
    Title.Text = "FilteringEnabled GUI - FE Is Enabled"
elseif FE == false then
    Title.Text = "FilteringEnabled GUI - FE Is Disabled"
end

-- End Of Script ( Made By StayBlue )