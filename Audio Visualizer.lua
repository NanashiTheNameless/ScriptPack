--[[list = ("All we know 517088496 nastyfree 242199426 gdg theme 174013272 ftbims 338666657 grab a bowl 512556874 RI90 410134997")
print(list)]]
print("Created by iiFootFetish-Made within 3 minutes")
local playr = game.Players.LocalPlayer
repeat
	wait()
	until playr.Character
local char = playr.Character
local torso = char.Torso
local head = char.Head
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local s = Instance.new("Sound", char)
beat = true
s.Volume = 1
s.Looped = true


local part = Instance.new("Part", char)
part.Anchored = true
part.CanCollide = false
part.Transparency = 0.5
part.Size = Vector3.new(1.2, 1.2, 1.2)
part.BottomSurface = 0
part.TopSurface = 0
part.Material = "Neon"
part.BrickColor = BrickColor.new("Black metallic")
local part4 = Instance.new("Part", char)
part4.Anchored = true
part4.CanCollide = false
part4.Transparency = 0.5
part4.Size = Vector3.new(1, 1, 1)
part4.BottomSurface = 0
part4.TopSurface = 0
part4.Material = "Wood"
part4.BrickColor = BrickColor.new("Deep blue")
game:service'RunService'.RenderStepped:connect(function()
	spawn(function()
		if part ~= nil then
				part.CFrame = part.CFrame:lerp(torso.CFrame * CFrame.new(1.8, 4, 0), 0.1)
				end
				if part4 ~= nil then
					part4.CFrame = part4.CFrame:lerp(torso.CFrame * CFrame.new(1.8, 4, 0), 0.1)
				end
		end)
	spawn(function()
		if s.IsPlaying == true then
			local pbl = math.floor(s.PlaybackLoudness)
			part.Size = part.Size:lerp(Vector3.new(pbl / 250, pbl / 250, pbl / 250), 0.01)
			if pbl >= 300 and beat == true then
				part.Rotation = Vector3.new(math.random(5, 50), math.random(5, 50), math.random(5, 50), 0.01)
			end
				part4.Size = part4.Size:lerp(Vector3.new(pbl / 260, pbl / 260, pbl / 260), 0.01)
			end
	end)
end)
local part3 = Instance.new("Part", char)
part3.Anchored = true
part3.CanCollide = false
part3.Transparency = 0.5
part3.Size = Vector3.new(1.2, 1.2, 1.2)
part3.BottomSurface = 0
part3.TopSurface = 0
part3.Material = "Neon"
part3.BrickColor = BrickColor.new("Black metallic")

local part2 = Instance.new("Part", char)
part2.Anchored = true
part2.CanCollide = false
part2.Transparency = 0.5
part2.Size = Vector3.new(1, 1, 1)
part2.BottomSurface = 0
part2.TopSurface = 0
part2.Material = "Wood"
part2.BrickColor = BrickColor.new("Deep blue")


game:service'RunService'.RenderStepped:connect(function()
	spawn(function()
		if part2 ~= nil then
				part2.CFrame = part2.CFrame:lerp(torso.CFrame * CFrame.new(-1.8, 4, 0), 0.1)
				end
				if part3 ~= nil then
					part3.CFrame = part3.CFrame:lerp(torso.CFrame * CFrame.new(-1.8, 4, 0), 0.1)
				end
		end)
	spawn(function()
		if s.IsPlaying == true then
			local pbl = math.floor(s.PlaybackLoudness)
			part2.Size = part.Size:lerp(Vector3.new(pbl / 260, pbl / 260, pbl / 260), 0.01)
		part3.Size = part3.Size:lerp(Vector3.new(pbl / 250, pbl / 250, pbl / 250), 0.01)
			if pbl >= 300 and beat == true then
				part3.Rotation = Vector3.new(math.random(5, 50), math.random(5, 50), math.random(5, 50), 0.01)	
end
		end
		end)
end)
playr.Chatted:connect(function(message)
            if message:sub(1,4) == "Play" then
            s:Stop()
                s.SoundId = "http://www.roblox.com/asset/?id="..message:sub(6)
    s:Play()
    end

	if message:sub(1,4) == "Stop" then
		s:Stop()
		part.Size = Vector3.new(1.2,1.2,1.2), 0.01
		part2.Size = Vector3.new(1,1,1), 0.01
		part3.Size = Vector3.new(1.2,1.2,1.2), 0.01
		part4.Size = Vector3.new(1,1,1), 0.01
	end
end)                                                                                                                                    