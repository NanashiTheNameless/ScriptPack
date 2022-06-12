for _, player in pairs(game.Players:GetChildren()) do
	local bg = Instance.new("BillboardGui")
	bg.Parent = Workspace
	bg.Adornee = player.Character.Head
	bg.Size = UDim2.new(1.5, 0, 1.0, 0)
	bg.StudsOffset = Vector3.new(-0.35, 3, 0)
	local frame = Instance.new("Frame")
	frame.Parent = bg
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundTransparency = 1
	local text = Instance.new("TextLabel")
	text.Parent = frame
	text.Position = UDim2.new(0, 0, 0.25, 0)
	text.Size = UDim2.new(1, 0, 1, 0)
	text.Text = "DarkShadow6 is a noob."
	text.BackgroundTransparency = 1
	coroutine.resume(coroutine.create(function()
	while true do
		text.FontSize = math.random(8, 13) == 13 and "Size18" or "Size" ..math.random(8, 12)
		text.TextColor3 = Color3.new(math.random(1, 255) / 255, math.random(1, 255) / 255, math.random(1, 255) / 255)
		wait()
	end
	end))
end