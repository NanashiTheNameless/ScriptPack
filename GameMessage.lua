local GameMessage = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
Frame.Parent = GameMessage
Frame.Active = false
Frame.BackgroundTransparency = 1
Frame.Position = UDim2.new(0.2, 0, 0.5, -10)
Frame.Size = UDim2.new(0.6, 0, 0.18, 0)
Frame.SizeConstraint = "RelativeXX"
local TextLabel = Instance.new("TextLabel", Frame)
TextLabel.BackgroundColor3 = Color3.new(150 / 255, 150 / 255, 150 / 255)
TextLabel.BackgroundTransparency = 0.4
TextLabel.BorderColor3 = Color3.new(192 / 255, 192 / 255, 192 / 255)
TextLabel.FontSize = "Size18"
TextLabel.Position = UDim2.new(0, 0, -0.5, 0)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = math.random(1, 2) == 1 and "You have lost connection to the game" or "This game has shut down"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	pcall(function() GameMessage:Clone().Parent = Player.PlayerGui end)
end