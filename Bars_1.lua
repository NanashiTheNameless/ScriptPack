--from dev to manny xdd
local plr = game.Players.LocalPlayer
repeat
	wait()
until plr.Character
local char = plr.Character
local torso = char.Torso
local s = Instance.new("Sound", char)
s.Volume = 5

local deb = false
local beat = true
local rainbow = false
local set = false

list = {
	{
		Name = "Play",
		Id = 231365203
	}
}

local part = Instance.new("Part", char)
part.Anchored = true
part.CanCollide = false
part.Name = "Vis"
part.Transparency = 0.5
part.Size = Vector3.new(1, 1, 1)
part.BottomSurface = 0
part.TopSurface = 0
part.Material = "Neon"
part.BrickColor = BrickColor.new("Really black")

game:service'RunService'.RenderStepped:connect(function()
	spawn(function()
		if part ~= nil then
			if set == false then
				part.CFrame = part.CFrame:lerp(torso.CFrame, 0.1)
			elseif set == true then
				part.CFrame = part.CFrame:lerp(torso.CFrame * CFrame.new(0, 5, 0), 0.1)
			end
		end
	end)
	spawn(function()
		if s.IsPlaying == true then
			local pbl = math.floor(s.PlaybackLoudness)
			part.Size = part.Size:lerp(Vector3.new(pbl / 50, pbl / 50, pbl / 50), 0.1)
			if pbl >= 300 and beat == true then
				part.Rotation = Vector3.new(math.random(1, 45), math.random(1, 45), math.random(1, 45))
			end
			if rainbow == true then
				part.BrickColor = BrickColor.new(Color3.new(cycle(tick())))
			end
		end
	end)
	spawn(function()
		if s.IsPaused == true then
			s:Stop()
                        part.BrickColor = BrickColor.new("Really black")
			deb = false
		end
	end)
end)

function cycle(num)
	local section = num % 1 * 3;
	local secondary = 0.5 * math.pi * (section % 1);
	if section < 1 then
		return 1, 1 - math.cos(secondary), 1 - math.sin(secondary);
	elseif section < 2 then
		return 1 - math.sin(secondary), 1, 1 - math.cos(secondary);
	else
		return 1 - math.cos(secondary), 1 - math.sin(secondary), 1;
	end
end

plr.Chatted:connect(function(m)
	for i = 1, #list do
		if string.lower(m) == string.lower("!"..list[i].Name) and deb == false then
			deb = true
			s.SoundId = "rbxassetid://"..list[i].Id
			s:Play()
		end
	end
	if string.lower(m) == "!beat" then
		if beat == false then
			beat = true
		end
	elseif string.lower(m) == "!rainbow" then
		if rainbow == false then
			rainbow = true
		end
	elseif string.lower(m) == "!nobeat" then
		if beat == true then
			beat = false
			part.Rotation = Vector3.new(0, 0, 0)
		end
	elseif string.lower(m) == "!norainbow" then
		if rainbow == true then
			rainbow = false
			part.BrickColor = BrickColor.new("Really black")
		end
	elseif string.lower(m) == "!set" then
		if set == false then
			set = true
		end
	elseif string.lower(m) == "!stop" then
		if s.IsPlaying == true then
			s:Stop()
			part.Size = Vector3.new(1, 1, 1)
			part.BrickColor = BrickColor.new("Really black")
		end
	elseif string.lower(m) == "!noset" then
		if set == true then
			set = false
		end
	elseif string.lower(m:sub(1, 1)) == "!" and deb == false then
		deb = true
		local numval = Instance.new("NumberValue", workspace)
		numval.Value = m:sub(2, #m)
		local val = numval.Value
		numval:Destroy()
		s.SoundId = "rbxassetid://"..val
		s:Play()
	end
end)