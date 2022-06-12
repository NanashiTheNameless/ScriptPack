

local Me = game.Players.LocalPlayer 
local sound = Instance.new("Sound") 
sound.Looped = true 
--[[ S = {
	G = {
		{"Banjo", "http://www.roblox.com/asset/?id=12857629"},
		{"Guitar", "http://www.roblox.com/asset/?id=1089403"},
	},
	D = {
		{"Crash", "http://www.roblox.com/asset/?id=31173771"},
		{"Snare", "http://www.roblox.com/asset/?id=31173799"},
		{"High tom", "http://www.roblox.com/asset/?id=31173844"},
		{"Medium tom", "http://www.roblox.com/asset/?id=31173863"},
		{"Low tom", "http://www.roblox.com/asset/?id=31173881"},
		{"Kick drum", "http://www.roblox.com/asset/?id=31173820"},
		{"Hi-hat", "http://www.roblox.com/asset/?id=31173735"},
		{"Ride cymbal", "http://www.roblox.com/asset/?id=31173898"},
		{"Maraca", "http://www.roblox.com/asset/?id=21338895"},
	} ]]-- 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "sound"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=12857629" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "e" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=1089403" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "l" then 
sound.Pitch = sound.Pitch + 0.1
	end 
        if key == "k" then 
sound.Pitch = sound.Pitch - 0.1
	end 
        if key == "r" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=31173771" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "t" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=31173799" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "y" then 
sound.Parent = Workspace.acb227
sound.SoundId = "http://www.roblox.com/asset/?id=31173844" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "u" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=31173863" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "p" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=31173881" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "f" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=31173820" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "g" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=31173735" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "h" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=31173898" 
sound:play()
wait(5) 
sound:stop() 
	end 
        if key == "j" then 
sound.Parent = Workspace.acb227 
sound.SoundId = "http://www.roblox.com/asset/?id=21338895" 
sound:play()
wait(5) 
sound:stop() 
	end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
