player = game.Players.LocalPlayer
wait()
script.Parent=nil
active = true
Settings = {
	Prefix = "";
	LerpSpeed = .5;
	MusicLerp = .3;
	Distance = .5;
	Range = 15;
	Height = 4;
}

function SpawnBars()
	partmiddle = Instance.new("Part")
	partmiddle.Name = "Bars___"..player.Name
	partmiddle.Size = Vector3.new(.2,4,.2)
	partmiddle.Parent = player.Character
	partmiddle.Anchored = true
	partmiddle.Material = "Neon"
	partmiddle.CanCollide = false
	partleft = partmiddle:Clone()
	partright = partmiddle:Clone()
	partleftfar = partmiddle:Clone()
	partrightfar = partmiddle:Clone()
	partleftfarfar = partmiddle:Clone()
	partrightfarfar = partmiddle:Clone()
	partleftfarfarfar = partmiddle:Clone()
	partrightfarfarfar = partmiddle:Clone()
	partleftfarest = partmiddle:Clone()
	partrightfarest = partmiddle:Clone()
	partleftfarestfar = partmiddle:Clone()
	partrightfarestfar = partmiddle:Clone()
	partleft.Parent = partmiddle
	partright.Parent = partmiddle
	partleftfar.Parent = partmiddle
	partrightfar.Parent = partmiddle
	partleftfarfar.Parent = partmiddle
	partrightfarfar.Parent = partmiddle
	partleftfarfarfar.Parent = partmiddle
	partrightfarfarfar.Parent = partmiddle
	partleftfarest.Parent = partmiddle
	partrightfarest.Parent = partmiddle
	partleftfarestfar.Parent = partmiddle
	partrightfarestfar.Parent = partmiddle
end
function SpawnMusic()
	Sound = Instance.new('Sound',partmiddle)
	Sound.EmitterSize = Settings.Range
	Sound.Looped = true
	Sound.Volume = 1
	Sound:Play()
end

game:GetService'RunService'.RenderStepped:connect(function()
	if not active then return end
	if not player.Character:FindFirstChild('Bars___'..player.Name) then
		SpawnBars()
		wait()
	end
	if not player.Character:FindFirstChild('Bars___'..player.Name):FindFirstChild('Sound') then
		SpawnMusic()
		wait()
	else
		if Sound.PlaybackLoudness >= 350 then
			partmiddle.BrickColor = BrickColor.Random()
		end
	end
	pcall(function()
		partmiddle.CFrame = partmiddle.CFrame:Lerp(player.Character.HumanoidRootPart.CFrame*CFrame.new(0,Settings.Height,3),Settings.LerpSpeed)
		partleft.CFrame = partleft.CFrame:Lerp(partmiddle.CFrame*CFrame.new(-Settings.Distance,0,0),Settings.LerpSpeed)
		partright.CFrame = partright.CFrame:Lerp(partmiddle.CFrame*CFrame.new(Settings.Distance,0,0),Settings.LerpSpeed)
		partleftfar.CFrame = partleftfar.CFrame:Lerp(partleft.CFrame*CFrame.new(-Settings.Distance,0,0),Settings.LerpSpeed)
		partrightfar.CFrame = partrightfar.CFrame:Lerp(partright.CFrame*CFrame.new(Settings.Distance,0,0),Settings.LerpSpeed)
		partleftfarfar.CFrame = partleftfarfar.CFrame:Lerp(partleftfar.CFrame*CFrame.new(-Settings.Distance,0,0),Settings.LerpSpeed)
		partrightfarfar.CFrame = partrightfarfar.CFrame:Lerp(partrightfar.CFrame*CFrame.new(Settings.Distance,0,0),Settings.LerpSpeed)
		partleftfarfarfar.CFrame = partleftfarfarfar.CFrame:Lerp(partleftfarfar.CFrame*CFrame.new(-Settings.Distance,0,0),Settings.LerpSpeed)
		partrightfarfarfar.CFrame = partrightfarfarfar.CFrame:Lerp(partrightfarfar.CFrame*CFrame.new(Settings.Distance,0,0),Settings.LerpSpeed)
		partleftfarest.CFrame = partleftfarest.CFrame:Lerp(partleftfarfarfar.CFrame*CFrame.new(-Settings.Distance,0,0),Settings.LerpSpeed)
		partrightfarest.CFrame = partrightfarest.CFrame:Lerp(partrightfarfarfar.CFrame*CFrame.new(Settings.Distance,0,0),Settings.LerpSpeed)
		partleftfarestfar.CFrame = partleftfarestfar.CFrame:Lerp(partleftfarest.CFrame*CFrame.new(-Settings.Distance,0,0),Settings.LerpSpeed)
		partrightfarestfar.CFrame = partrightfarestfar.CFrame:Lerp(partrightfarest.CFrame*CFrame.new(Settings.Distance,0,0),Settings.LerpSpeed)
	end)
	local Color =  partmiddle.BrickColor
	local Color_2 = partleft.BrickColor
	local Color_3 = partleftfar.BrickColor
	local Color_4 = partleftfarfar.BrickColor
	local Color_5 = partleftfarfarfar.BrickColor
	local Prev_Size = partmiddle.Size
	local Prev_Size2 = partleft.Size
	local Prev_Size3 = partleftfar.Size
	local Prev_Size4 = partleftfarfar.Size
	local Prev_Size5 = partleftfarfarfar.Size
	partmiddle.Size = partmiddle.Size:Lerp(Vector3.new(.3,Sound.PlaybackLoudness/100,.3),Settings.MusicLerp)
	wait()
	partleft.Size = partleft.Size:Lerp(Prev_Size,Settings.MusicLerp)
	partright.Size = partright.Size:Lerp(Prev_Size,Settings.MusicLerp)
	partleft.BrickColor = Color
	partright.BrickColor = Color
	wait()
	partleftfar.Size = partleftfar.Size:Lerp(Prev_Size2,Settings.MusicLerp)
	partrightfar.Size = partrightfar.Size:Lerp(Prev_Size2,Settings.MusicLerp)
	partleftfar.BrickColor = Color_2
	partrightfar.BrickColor = Color_2
	wait()
	partleftfarfar.Size = partleftfarfar.Size:Lerp(Prev_Size3,Settings.MusicLerp)
	partrightfarfar.Size = partrightfarfar.Size:Lerp(Prev_Size3,Settings.MusicLerp)
	partleftfarfar.BrickColor = Color_3
	partrightfarfar.BrickColor = Color_3
	wait()
	partleftfarfarfar.Size = partleftfarfarfar.Size:Lerp(Prev_Size4,Settings.MusicLerp)
	partrightfarfarfar.Size = partrightfarfarfar.Size:Lerp(Prev_Size4,Settings.MusicLerp)
	partleftfarfarfar.BrickColor = Color_4
	partrightfarfarfar.BrickColor = Color_4
	wait()
	partleftfarest.Size = partleftfarest.Size:Lerp(Prev_Size5,Settings.MusicLerp)
	partrightfarest.Size = partleftfarest.Size:Lerp(Prev_Size5,Settings.MusicLerp)
	partleftfarest.BrickColor = Color_5
	partrightfarest.BrickColor = Color_5
end)

Chatted = player.Chatted:connect(function(msg)
	if msg:lower():sub(1,#Settings.Prefix+#'play ')==Settings.Prefix..'play ' then
		if not partmiddle:FindFirstChild('Sound') then SpawnMusic() end
		local Sound = partmiddle:FindFirstChild('Sound')
		Sound:Stop()
		Sound.SoundId = "http://www.roblox.com/asset?id="..tonumber(msg:sub(#Settings.Prefix+#'play '+1))
		Sound:Play()
	end
	if msg:lower():sub(1,#Settings.Prefix+#'stop')==Settings.Prefix..'stop' then
		local Sound = partmiddle:FindFirstChild('Sound')
		if Sound and Sound.Playing then Sound:Stop() end
	end
	if msg:lower():sub(1,#Settings.Prefix+#'vol ')==Settings.Prefix..'vol ' then
		local Sound = partmiddle:FindFirstChild('Sound')
		if Sound then
			Sound.Volume = tonumber(msg:sub(#Settings.Prefix+#'vol '+1))
		end
		print('Volume: '..tonumber(msg:sub(#Settings.Prefix+#'vol '+1)))
	end
	if msg:lower():sub(1,#Settings.Prefix+#'height ')==Settings.Prefix..'height ' then
		Settings.Height = tonumber(msg:sub(#Settings.Prefix+#'height '+1))
		print('Height: '..tonumber(msg:sub(#Settings.Prefix+#'height '+1)))
	end
	if msg:lower():sub(1,#Settings.Prefix+#'space ')==Settings.Prefix..'space ' then
		Settings.Distance = tonumber(msg:sub(#Settings.Prefix+#'space '+1))
		print("Space: "..tonumber(msg:sub(#Settings.Prefix+#'space '+1)))
	end
	if msg:lower():sub(1,#Settings.Prefix+#'range ')==Settings.Prefix..'range ' then
		Settings.Range = tonumber(msg:sub(#Settings.Prefix+#'range '+1))
		local Sound = partmiddle:FindFirstChild('Sound')
		if Sound then
			Sound.EmitterSize = tonumber(msg:sub(#Settings.Prefix+#'range '+1))
		end
		print('Range: '..tonumber(msg:sub(#Settings.Prefix+#'range '+1)))
	end
	if msg:lower():sub(1,#Settings.Prefix+#'smooth ')==Settings.Prefix..'smooth ' then
		Settings.LerpSpeed = tonumber(msg:sub(#Settings.Prefix+#'smooth '+1))
		print('Smooth: '..tonumber(msg:sub(#Settings.Prefix+#'smooth '+1)))
	end
	if msg:lower():sub(1,#Settings.Prefix+#'mbounce ')==Settings.Prefix..'mbounce ' then
		Settings.MusicLerp = tonumber(msg:sub(#Settings.Prefix+#'mbounce '+1))
		print('Music Bounce: '..tonumber(msg:sub(#Settings.Prefix+#'mbounce '+1)))
	end
	if msg:lower():sub(1,#Settings.Prefix+#'rmv')==Settings.Prefix..'rmv' then
		active = false
		partmiddle:Destroy()
		Chatted:disconnect()
		print("Removed MusicBars")
		script:Destroy()
	end
end)


print("Music Bars Loaded")
print("Created By: WaverlyCole")
print("Say 'play [ID] to play a song.")
print("Say 'stop' to stop a song.")
print("Say 'vol [#]' to change the volume.")
print("Say 'smooth [#0-1]' to change the follow speed.")
print("Say 'mbounce [#0-1] to change the music bounce.'")
print("Say 'range [#]' to change the music range.")
print("Say 'rmv' to remove all functions.")