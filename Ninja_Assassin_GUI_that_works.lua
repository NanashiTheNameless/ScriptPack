-- Objects

local NinjaGUI = Instance.new("ScreenGui")
local FirstFrame = Instance.new("Frame")
local NinjaScrollingFrame = Instance.new("ScrollingFrame")
local InfNinjutsu = Instance.new("TextButton")
local MaxZen = Instance.new("TextButton")
local InstaKill = Instance.new("TextButton")
local OutsideMap = Instance.new("TextButton")
local Gamepasses = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")

-- Properties

NinjaGUI.Name = "NinjaGUI"
NinjaGUI.Parent = game.CoreGui

FirstFrame.Name = "FirstFrame"
FirstFrame.Parent = NinjaGUI
FirstFrame.BackgroundColor3 = Color3.new(1, 1, 1)
FirstFrame.BackgroundTransparency = 0.55000001192093
FirstFrame.BorderColor3 = Color3.new(0, 0, 0)
FirstFrame.BorderSizePixel = 2
FirstFrame.Position = UDim2.new(0.417004049, 0, 0.5, 0)
FirstFrame.Size = UDim2.new(0, 124, 0, 103)
FirstFrame.Active = true
FirstFrame.Draggable = true

NinjaScrollingFrame.Name = "NinjaScrollingFrame"
NinjaScrollingFrame.Parent = FirstFrame
NinjaScrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
NinjaScrollingFrame.BackgroundTransparency = 0.15000000596046
NinjaScrollingFrame.BorderColor3 = Color3.new(0.192157, 0.192157, 0.192157)
NinjaScrollingFrame.Size = UDim2.new(0, 100, 0, 103)

InfNinjutsu.Name = "InfNinjutsu"
InfNinjutsu.Parent = NinjaScrollingFrame
InfNinjutsu.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
InfNinjutsu.BorderSizePixel = 0
InfNinjutsu.Size = UDim2.new(0, 80, 0, 15)
InfNinjutsu.Font = Enum.Font.ArialBold
InfNinjutsu.FontSize = Enum.FontSize.Size14
InfNinjutsu.Text = "Inf Ninjutsu"
InfNinjutsu.TextColor3 = Color3.new(1, 1, 1)
InfNinjutsu.TextSize = 14
InfNinjutsu.MouseButton1Click:connect(function()
	while true do
wait()
game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 10)
end
end)

MaxZen.Name = "MaxZen"
MaxZen.Parent = NinjaScrollingFrame
MaxZen.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
MaxZen.BorderSizePixel = 0
MaxZen.Position = UDim2.new(0, 0, 0.0850000009, 0)
MaxZen.Size = UDim2.new(0, 80, 0, 15)
MaxZen.Font = Enum.Font.ArialBold
MaxZen.FontSize = Enum.FontSize.Size14
MaxZen.Text = "Max Zen"
MaxZen.TextColor3 = Color3.new(1, 1, 1)
MaxZen.TextSize = 14
MaxZen.MouseButton1Click:connect(function()
	for i = 1,50 do 
   game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("IncreaseZenRank", i)
end
end)

InstaKill.Name = "InstaKill"
InstaKill.Parent = NinjaScrollingFrame
InstaKill.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
InstaKill.BorderSizePixel = 0
InstaKill.Position = UDim2.new(0, 0, 0.170000002, 0)
InstaKill.Size = UDim2.new(0, 80, 0, 15)
InstaKill.Font = Enum.Font.ArialBold
InstaKill.FontSize = Enum.FontSize.Size14
InstaKill.Text = "InstaKill"
InstaKill.TextColor3 = Color3.new(1, 1, 1)
InstaKill.TextSize = 14
InstaKill.TextWrapped = true
InstaKill.MouseButton1Click:connect(function()
while true do
wait()
game.Players.LocalPlayer.Character.Sword.HitEvent:FireServer()
end
end)

OutsideMap.Name = "OutsideMap"
OutsideMap.Parent = NinjaScrollingFrame
OutsideMap.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
OutsideMap.BorderSizePixel = 0
OutsideMap.Position = UDim2.new(0, 0, 0.254999995, 0)
OutsideMap.Size = UDim2.new(0, 80, 0, 15)
OutsideMap.Font = Enum.Font.ArialBold
OutsideMap.FontSize = Enum.FontSize.Size14
OutsideMap.Text = "Outside Map"
OutsideMap.TextColor3 = Color3.new(1, 1, 1)
OutsideMap.TextSize = 14
OutsideMap.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(124.430862, 276.652863, 471.85906) + Vector3.new(1,0,0)
end)

Gamepasses.Name = "Gamepasses"
Gamepasses.Parent = NinjaScrollingFrame
Gamepasses.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
Gamepasses.BorderSizePixel = 0
Gamepasses.Position = UDim2.new(0, 0, 0.340000004, 0)
Gamepasses.Size = UDim2.new(0, 80, 0, 15)
Gamepasses.Font = Enum.Font.ArialBold
Gamepasses.FontSize = Enum.FontSize.Size14
Gamepasses.Text = "Gamepasses"
Gamepasses.TextColor3 = Color3.new(1, 1, 1)
Gamepasses.TextSize = 14
Gamepasses.MouseButton1Click:connect(function()
local RemoteEvent = game.ReplicatedStorage:WaitForChild("RemoteEvent")
RemoteEvent.ChangeStatsEvent:FireServer("100m", "VipPass", true)
RemoteEvent.ChangeStatsEvent:FireServer("100m", "PizzaPass", true)
RemoteEvent.ChangeStatsEvent:FireServer("100m", "RainbowPass", true)
RemoteEvent.ChangeStatsEvent:FireServer("100m", "NameChangePass", true)
RemoteEvent.ChangeStatsEvent:FireServer("100m", "FunnySwordPass", true)
RemoteEvent.ChangeStatsEvent:FireServer("100m", "FunnyThrowPass", true)
RemoteEvent.ChangeStatsEvent:FireServer("100m", "x2NinjutsuPass", true)
game.ReplicatedStorage.RemoteEvent.ChangeStatsEvent:FireServer("100m", "x2Reputationtime", 2e8)
game.ReplicatedStorage.RemoteEvent.ChangeStatsEvent:FireServer("100m", "x2NinjutsuTime", 2e8)
end)

TextLabel.Parent = FirstFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.806451619, 0, 0.150403067, 0)
TextLabel.Size = UDim2.new(0, 24, 0, 47)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "a"
TextLabel.TextSize = 14

TextLabel_2.Parent = FirstFrame
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.806451619, 0, -0.0338982157, 0)
TextLabel_2.Size = UDim2.new(0, 24, 0, 28)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "C"
TextLabel_2.TextSize = 14

TextLabel_3.Parent = FirstFrame
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.806451619, 0, 0.371564835, 0)
TextLabel_3.Size = UDim2.new(0, 24, 0, 51)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.FontSize = Enum.FontSize.Size14
TextLabel_3.Text = "W"
TextLabel_3.TextSize = 14

TextLabel_4.Parent = FirstFrame
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(0.806451619, 0, 0.29784444, 0)
TextLabel_4.Size = UDim2.new(0, 24, 0, 41)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.FontSize = Enum.FontSize.Size14
TextLabel_4.Text = "r"
TextLabel_4.TextSize = 14

TextLabel_5.Parent = FirstFrame
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Position = UDim2.new(0.806451619, 0, 0.50057596, 0)
TextLabel_5.Size = UDim2.new(0, 24, 0, 51)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.FontSize = Enum.FontSize.Size14
TextLabel_5.Text = "a"
TextLabel_5.TextSize = 14

TextLabel_6.Parent = FirstFrame
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.Position = UDim2.new(0.806451619, 0, 0.592726648, 0)
TextLabel_6.Size = UDim2.new(0, 24, 0, 57)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.FontSize = Enum.FontSize.Size14
TextLabel_6.Text = "r"
TextLabel_6.TextSize = 14

TextLabel_7.Parent = FirstFrame
TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.Position = UDim2.new(0.806451619, 0, 0.0582524277, 0)
TextLabel_7.Size = UDim2.new(0, 24, 0, 34)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.FontSize = Enum.FontSize.Size14
TextLabel_7.Text = "h"
TextLabel_7.TextSize = 14