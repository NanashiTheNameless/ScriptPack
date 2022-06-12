--[[
#  | Key
___|_____________
1  | Hi-HatC (Closed)
2  | Hi-HatO (Open)
3  | Kick
4  | Crash
5  | Splash
6  | Ride
7  | Snare
8  | Tom 1
9  | Tom 2
10 | Tom 3
]]


_G.Synth = {}
_G.Synth.Drumkit1 = {}
_G.Synth.Drumkit1.Play = function(Pick, Pitch, Volume, PlayTime, FallOff)
	local Id = ""
	local Pitch2 = nil
	local Volume2 = nil
	local PlayTime2 = nil
	local FallOff2 = nil
	if Pick == "HiHatC" or Pick == 1 then
		Id = "31173735"
		Pitch2 = 2.5
		Volume2 = 0.75
		PlayTime2 = 0.1
		FallOff2 = -0.1
	elseif Pick == "HiHatO" or Pick == 2 then
		Id = "31173735"
	elseif Pick == "Kick" or Pick == 3 then
		Id = "31173820"
	elseif Pick == "Crash" or Pick == 4 then
		Id = "31173771"
		Pitch = 1
	elseif Pick == "Splash" or Pick == 5 then
		Id = "31173771"
		Pitch = 1.5
	elseif Pick == "Ride" or Pick == 6 then
		Id = "31173898"
	elseif Pick == "Snare" or Pick == 7 then
		Id = "31173799"
	elseif Pick == "Tom1" or Pick == 8 then
		Id = "31173844"
	elseif Pick == "Tom2" or Pick == 9 then
		Id = "31173863"
	elseif Pick == "Tom3" or Pick == 10 then
		Id = "31173881"
	end
	if Pitch == nil and Pitch2 ~= nil then
		Pitch = Pitch2
	elseif Pitch == nil and Pitch2 == nil then
		Pitch = 1
	end
	if Volume == nil and Volume2 ~= nil then
		Volume = Volume2
	elseif Volume == nil and Volume2 == nil then
		Volume = 1
	end
	if PlayTime == nil and PlayTime2 ~= nil then
		PlayTime = PlayTime2
	end
	if FallOff == nil and FallOff2 ~= nil then
		FallOff = FallOff2
	end
	local Sound = Instance.new("Sound")
	Sound.SoundId = "http://www.roblox.com/Asset/?id=" ..Id
	Sound.Looped = false
	Sound.PlayOnRemove = false
	Sound.Pitch = Pitch
	Sound.Volume = Volume
	Sound.Parent = Workspace
	Sound:Play()
	coroutine.wrap(function()
		if PlayTime == nil then return end
		wait(PlayTime)
		for i = Volume, 0, FallOff == nil and -0.05 or FallOff do
			Sound.Volume = i
			wait()
		end
		Sound:Stop()
	end)()
	return Sound
end


_G.Synth.Drumkit1.Demo1 = function(Time)
	Time = Time == nil and 0.3 or Time
	for x = 1, 4 do
		for i = 1, (function() if x == 4 then return 3 else return 4 end end)() do
			_G.Synth.Drumkit1.Play("HiHatC")
			_G.Synth.Drumkit1.Play("Kick")
			wait(Time)
			_G.Synth.Drumkit1.Play("HiHatC")
			wait(Time)
			_G.Synth.Drumkit1.Play("HiHatC")
			_G.Synth.Drumkit1.Play("Snare")
			wait(Time)
			_G.Synth.Drumkit1.Play("HiHatC")
			wait(Time)
			if i == 4 then _G.Synth.Drumkit1.Play("Crash") end
		end
		if x == 4 then
			_G.Synth.Drumkit1.Play("Snare")
			wait(Time * 0.5)
			_G.Synth.Drumkit1.Play("Snare")
			wait(Time * 0.5)
			_G.Synth.Drumkit1.Play("Tom1")
			wait(Time * 0.5)
			_G.Synth.Drumkit1.Play("Tom1")
			wait(Time * 0.5)
			_G.Synth.Drumkit1.Play("Tom2")
			wait(Time * 0.5)
			_G.Synth.Drumkit1.Play("Tom2")
			wait(Time * 0.5)
			_G.Synth.Drumkit1.Play("Tom3")
			wait(Time * 0.5)
			_G.Synth.Drumkit1.Play("Tom3")
			wait(Time * 0.5)
			_G.Synth.Drumkit1.Play("Crash")
		end
	end
	return true
end


_G.Synth.Drumkit1.Demo2 = function(Time)
	Time = Time == nil and 0.25 or Time
	for i = 1, 8 do
		_G.Synth.Drumkit1.Play("Kick")
		wait(Time)
		_G.Synth.Drumkit1.Play("Snare")
		_G.Synth.Drumkit1.Play("Kick")
		wait(Time)
		if math.floor(i / 2) ~= i / 2 then _G.Synth.Drumkit1.Play("Kick") end
		wait(Time)
	end
	for i = 1, 8 do
		_G.Synth.Drumkit1.Play("Kick")
		wait(Time)
		_G.Synth.Drumkit1.Play("Snare")
		_G.Synth.Drumkit1.Play("Kick")
		wait(Time)
		_G.Synth.Drumkit1.Play("Kick")
		wait(Time)
	end
	_G.Synth.Drumkit1.Play("Kick")
	wait(Time)
	_G.Synth.Drumkit1.Play("Snare")
	_G.Synth.Drumkit1.Play("Kick")
	wait(Time)
	for i = 1, 8 do
		_G.Synth.Drumkit1.Play("HiHatC")
		_G.Synth.Drumkit1.Play("Kick")
		wait(Time * 0.5)
		_G.Synth.Drumkit1.Play("HiHatC")
		if math.floor(i / 2) == i / 2 then _G.Synth.Drumkit1.Play("Kick") end
		wait(Time * 0.5)
		_G.Synth.Drumkit1.Play("HiHatC")
		if math.floor(i / 2) == i / 2 then _G.Synth.Drumkit1.Play("Kick") end
		wait(Time * 0.5)
		_G.Synth.Drumkit1.Play("Snare")
		_G.Synth.Drumkit1.Play("Kick")
		wait(Time)
		if math.floor(i / 2) ~= i / 2 then _G.Synth.Drumkit1.Play("Kick") end
		wait(Time)
	end
	return true
end


_G.Synth.Drumkit1.Demo1(0.25)