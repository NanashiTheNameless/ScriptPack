Player = script.Parent.Parent.Parent
RadarMaxDistance = 100


function On()
	local PlayerGui = Player:FindFirstChild("PlayerGui")
	if PlayerGui == nil then return end
	if PlayerGui:FindFirstChild("TimeLordRadarGui") ~= nil then
		PlayerGui.TimeLordRadarGui:Remove()
	else
		local TimeLordRadarGui = Instance.new("ScreenGui", PlayerGui)
		TimeLordRadarGui.Name = "TimeLordRadarGui"
		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.Name = "Content"
		ImageLabel.Image = "http://www.roblox.com/Asset/?id=19617472"
		ImageLabel.Size = UDim2.new(0, 500, 0, 500)
		ImageLabel.Position = UDim2.new(0, 0, 0.5, -500 / 2) --UDim2.new(0.5, -500 / 2, 0.5, -500 / 2)
		ImageLabel.BorderSizePixel = 0
		ImageLabel.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
		ImageLabel.Parent = TimeLordRadarGui
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Name = "Copyright"
		TextLabel.Size = UDim2.new(1, 0, 0, 15)
		TextLabel.Position = UDim2.new(0, 15, 1, -20)
		TextLabel.BorderSizePixel = 0
		TextLabel.BackgroundTransparency = 1
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.Text = "TimeLord Tracker V1 (C) DS6 & Co."
		TextLabel.TextXAlignment = "Left"
		TextLabel.FontSize = "Size12"
		TextLabel.Parent = ImageLabel
		coroutine.wrap(function()
			local Blip = Instance.new("Frame")
			Blip.Name = "Blip"
			Blip.BorderColor3 = Color3.new(0, 0, 0)
			Blip.BackgroundColor3 = Color3.new(0, 1, 0)
			Blip.Size = UDim2.new(0, 10, 0, 10)
			local BlipText = TextLabel:Clone()
			BlipText.Name = "Blip Text"
			BlipText.TextColor3 = Color3.new(0, 1, 0)
			BlipText.Size = UDim2.new(0, 0, 0, 15)
			BlipText.TextXAlignment = "Center"
			while TimeLordRadarGui.Parent ~= nil do
				for _, Part in pairs(TimeLordRadarGui.Content:GetChildren()) do
					if Part.Name == "Blip" or Part.Name == "Blip Text" then
						Part:Remove()
					end
				end
				for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
					if PlayerList.Character ~= nil and PlayerList:FindFirstChild("Backpack") ~= nil then
						if PlayerList.Character:FindFirstChild("Torso") ~= nil and PlayerList.Backpack:FindFirstChild("Regenerate") ~= nil then
							local Distance = (Player.Character.Torso.Position - PlayerList.Character.Torso.Position)
							if Distance.magnitude < RadarMaxDistance then
								local NewBlip = Blip:Clone()
								NewBlip.Parent = TimeLordRadarGui.Content
								NewBlip.Position = UDim2.new(0, (Distance.x * ((TimeLordRadarGui.Content.Size.X.Offset / RadarMaxDistance) / 2)) + (TimeLordRadarGui.Content.Size.X.Offset / 2) - 5, 0, (Distance.z * ((TimeLordRadarGui.Content.Size.Y.Offset / RadarMaxDistance) / 2)) + (TimeLordRadarGui.Content.Size.Y.Offset / 2) - 5)
								local NewBlipText = BlipText:Clone()
								NewBlipText.Parent = TimeLordRadarGui.Content
								NewBlipText.Text = PlayerList.Name
								NewBlipText.Position = NewBlip.Position + UDim2.new(0, 5, 0, 15)
							end
						end
					end
				end
				wait(0.1)
			end
		end)()
	end
end


script.Parent.Selected:connect(function(Mouse)
	Mouse.Button1Down:connect(On)
end)