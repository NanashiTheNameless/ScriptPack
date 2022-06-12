--[[Credits:
	fang - For inspiration
	victiny1223 - because I scripted it.
	idk - have fun I guess
--]]
lplr = game:GetService('Players').LocalPlayer
runservice = game:GetService('RunService')
lcharacter = lplr.Character
repeat wait() until lcharacter
lhumpart = lcharacter:FindFirstChild("Torso")
mode = ("Default")
--[[Commands:
	color(1-3 depending on which color you'd like to change) red green blue - Changes that color to the red green blue code provided
	mode (Default, Still, Large, Wave) - Changes the audio visualiser mode
	playmusic (MUSICID) - Plays the music/sound with that corresponding asset id
	stopmusic - Stops all music/sounds including your own.	
--]]
--Default Colors
colors = {
	{r = 0, g = 0, b = 255},
	{r = 255, g = 0, b = 0},
	{r = 255, g = 255, b = 0}
}
--Circle of Parts
smoothOut = function(basepart)
	local f = {'Front','Back','Bottom','Top','Left','Right'}
	if basepart:IsA("BasePart") then
		for _, face in ipairs(f) do
			basepart[face .. 'Surface'] = Enum.SurfaceType.Smooth
		end
	end
end
colorLerp = function(obj, targetColor)
	local tcolor = targetColor.Color
	local ccolor = obj.BrickColor.Color
	for i = 0, 1, .1 do
		obj.BrickColor = BrickColor.new(ccolor:Lerp(tcolor, i))
		wait(1/60)
	end
end
updateBlock = function(p, angle)
	p.Parent = lcharacter
	p.CanCollide = false
	p.Material = Enum.Material.Neon
	p.Anchored = true
	if not sound then
		p.Size = Vector3.new(1, 1, 1)
		p.CFrame = lhumpart.CFrame * CFrame.Angles(0, math.rad(angle), 0)
		* CFrame.new(20, 0, 0)
	elseif sound then
		if mode == 'Default' then
			p.Size = Vector3.new(1, (sound.PlaybackLoudness/math.random(10, 75)), 1)
		elseif mode == 'Wave' then
			p.Size = Vector3.new(1, (sound.PlaybackLoudness/angle), 1)
		elseif mode == 'Still' then
			p.Size = Vector3.new(1, (sound.PlaybackLoudness/bricks[angle]), 1)
		elseif mode == 'Large' then
			p.Size = Vector3.new(1, (sound.PlaybackLoudness), 1)
		end
		p.CFrame = lhumpart.CFrame * CFrame.Angles(0, math.rad(angle), 0)
		* CFrame.new(20, p.Size.Y/2, 0)
		if sound.PlaybackLoudness > 0 then
			colorLerp(p, BrickColor.new(colors[1]['r'],colors[1]['g'],colors[1]['b']))
		elseif sound.PlaybackLoudness >= 200 then
			colorLerp(p, BrickColor.new(colors[2]['r'],colors[2]['g'],colors[2]['b']))
		elseif sound.PlaybackLoudness >= 400 then
			colorLerp(p, BrickColor.new(colors[3]['r'],colors[3]['g'],colors[3]['b']))
		end
	end
end
bricks = {}
lhumpart.Anchored = true
setupVisualiser = function()
	for angle = 1, 360 do
		if angle % 5 == 0 then
			local p = Instance.new("Part")
			bricks[angle] = math.random(10, 75)	
			smoothOut(p)
			runservice:BindToRenderStep('updateBlock', Enum.RenderPriority.First.Value, function()
				updateBlock(p, angle)
			end)
		end
	end
end
setupVisualiser()
lhumpart.Anchored = false
sound = nil
playmusic = function(id)
	if sound then
		sound:Remove()
		sound = nil
	end
	local sound = Instance.new("Sound")
	sound.SoundId = ('rbxassetid://' .. id)
	sound.Volume = 5
	sound.Parent = workspace
	sound:Play()
	return sound
end
lcharacter:FindFirstChild("Humanoid").Died:connect(function()
	runservice:UnbindFromRenderStep('updateBlock')
end)
lplr.CharacterAdded:connect(function()
	lcharacter = lplr.Character
	lhumpart = lcharacter:FindFirstChild("Torso")
	setupVisualiser()
end)
removeSounds = function(directory)
	for _, obj in pairs(directory:GetChildren()) do
		pcall(function()
			if obj:IsA("Sound") then
				obj:Remove()
				sound = nil
			elseif #obj:GetChildren() > 0 then
				removeSounds(obj)
			end
		end)	
	end
end

checkMessage = function(inputMsg)
	local cmd = inputMsg:match('(%a+)')
	local arg = inputMsg:match('%a+%s(%w+)')
	local color,r,g,b = inputMsg:match('%a+(%d)%s(%d+)%s(%d+)%s(%d+)')
	if cmd and arg then
		if cmd:lower() == 'playmusic' then
			sound = playmusic(tonumber(arg))
		elseif cmd:lower() == 'mode' then
			mode = arg
		end
	elseif cmd:lower() == 'stopmusic' then
		removeSounds(workspace)
	elseif color and r and g and b then
		color = tonumber(color)
		r = tonumber(r)
		g = tonumber(g)
		b = tonumber(b)
		if colors[color] then
			local c = colors[color]
			c['r'] = r
			c['g'] = g
			c['b'] = b
		end
	end
end
lplr.Chatted:connect(checkMessage)