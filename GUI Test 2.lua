local player = Game.Players.DarkShadow6
local character = player.Character
local bg = Instance.new("BillboardGui")
bg.Parent = player.PlayerGui
bg.Adornee = character.Head
bg.Size = UDim2.new(1.5, 0, 1.0, 0)
bg.StudsOffset = Vector3.new(-0.35, 3, 0)
local frame = Instance.new("Frame")
frame.Parent = bg
frame.Size = UDim2.new(1.5, 0, 1, 0)
frame.BackgroundTransparency = 0.7
frame.BackgroundColor3 = Color3.new(1 / 255, 1 / 255, 1 / 255)
local text = Instance.new("TextLabel")
text.Parent = frame
text.Position = UDim2.new(0, 0, 0.25, 0)
text.Size = UDim2.new(1, 0, 0.5, 0)
text.Text = player.Name.. "'s chatbox"
text.BackgroundColor3 = Color3.new(0, 0, 0)
text.TextColor3 = Color3.new(255 / 255, 255 / 255, 255 / 255)


function onChatted(msg)
	if (string.sub(msg, 1, 8) == "/sc box/") then
		text.Text = string.sub(msg, 9)
	end
end


player.Chatted:connect(onChatted)