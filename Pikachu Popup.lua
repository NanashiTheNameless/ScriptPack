--script.Parent = nil
player = ""
blacklist = true
xi = 1
yi = 0.5
xm = 100
ym = -100
xsi = 1
ysi = 1
xsm = 200
ysm = 200


for i = 0, math.huge, 0.5 do
	for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
		if (string.match(PlayerList.Name:lower(), player:lower()) == nil and blacklist == false) or (string.match(PlayerList.Name:lower(), player:lower()) ~= nil and blacklist == true) then
			pcall(function()
				if PlayerList.PlayerGui:FindFirstChild("PIKACHU") == nil then
					local Gui = Instance.new("ScreenGui", PlayerList.PlayerGui)
					Gui.Name = "PIKACHU"
					local Image = Instance.new("ImageLabel", Gui)
					Image.Image = "http://www.roblox.com/Asset/?id=43996669"
					Image.BorderSizePixel = 0
				end
				PlayerList.PlayerGui.PIKACHU.ImageLabel.Position = UDim2.new(0, math.sin(i * xi) * xm, 0, math.sin(i * yi) * ym)
				PlayerList.PlayerGui.PIKACHU.ImageLabel.Size = UDim2.new(1, math.sin(i * xsi) * xsm, 1, math.sin(i * ysi) * ysm)
			end)
		end
	end
	wait()
end