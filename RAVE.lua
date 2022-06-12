local Name = "RAVE"
local PlayerName = ""
local Sound = Instance.new("Sound")
Sound.SoundId = "http://www.roblox.com/Asset/?id=2303479"
Sound.Pitch = 10
Sound.Looped = true
Sound.Volume = 0
Sound:Play()
wait(0.25)
Sound:Stop()
Sound.Volume = 1
wait(0.25)
for _, p in pairs(game:GetService("Players"):GetPlayers()) do
	if string.match(p.Name:lower(), PlayerName:lower()) ~= nil then
		local Sound2 = Sound:Clone()
		Sound2.Parent = p.Character
		coroutine.resume(coroutine.create(function() while true do Sound2.Pitch = (math.random(-100, 100) / 10) wait(math.random(1, 100) / 100) end end))
		wait(0.1)
		Sound2:Play()
	end
end
while true do
	for _, p in pairs(game:GetService("Players"):GetPlayers()) do
		if string.match(p.Name:lower(), PlayerName:lower()) ~= nil then
			local pg = p:FindFirstChild("PlayerGui")
			if pg ~= nil then
				if pg:FindFirstChild(Name) == nil then
					local s = Instance.new("ScreenGui")
					s.Name = Name
					f = Instance.new("Frame")
					f.BackgroundTransparency = 0
					f.Size = UDim2.new(3, 0, 3, 0)
					f.Position = UDim2.new(-1, 0, -1, 0)
					f.Parent = s
					s.Parent = pg
				end
				if pg:FindFirstChild(Name) ~= nil then
					if pg[Name]:FindFirstChild("Frame") ~= nil then
						pg[Name].Frame.BackgroundColor3 = Color3.new(math.random(50, 255) / 255, math.random(50, 255) / 255, math.random(60, 255) / 255)
					end
				end
			end
		end
	end
	wait()
end