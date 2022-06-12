name = "yfc"
me = game.Players[name]
me.Chatted:connect(function(msg)
	if string.sub(msg, 1, 6) == "music/" then
		local test = string.sub(msg,7)
		local msg = Instance.new("Hint") 
		msg.Parent = workspace 
		msg.Text = "" 
		local son = Instance.new("Sound")
		son.Parent = workspace
		son.Volume = 0.5
		son.SoundId = "rbxasset://sounds/uuhhh.wav"
		local shown = 40
		local nuhhba = 1
		for i=1, string.len(test) + shown do 
		wait(0.13) 
		if i >= shown then
			nuhhba = nuhhba + 1
		end
		msg.Text = msg.Text..string.sub(test,i,i) 
		msg.Text = string.sub(test, nuhhba, i)
		if string.lower(string.sub(test,i,i)) == "a" then 
		son.Pitch = 0.35
		elseif string.lower(string.sub(test,i,i)) == "b" then 
		son.Pitch = 0.4
		elseif string.lower(string.sub(test,i,i)) == "c" then 
		son.Pitch = 0.45
		elseif string.lower(string.sub(test,i,i)) == "d" then 
		son.Pitch = 0.5
		elseif string.lower(string.sub(test,i,i)) == "e" then 
		son.Pitch = 0.55
		elseif string.lower(string.sub(test,i,i)) == "f" then 
		son.Pitch = 0.6
		elseif string.lower(string.sub(test,i,i)) == "g" then 
		son.Pitch = 0.65
		elseif string.lower(string.sub(test,i,i)) == "h" then 
		son.Pitch = 0.7
		elseif string.lower(string.sub(test,i,i)) == "i" then 
		son.Pitch = 0.75
		elseif string.lower(string.sub(test,i,i)) == "j" then 
		son.Pitch = 0.8
		elseif string.lower(string.sub(test,i,i)) == "k" then 
		son.Pitch = 0.85
		elseif string.lower(string.sub(test,i,i)) == "l" then 
		son.Pitch = 0.9
		elseif string.lower(string.sub(test,i,i)) == "m" then 
		son.Pitch = 0.95
		elseif string.lower(string.sub(test,i,i)) == "n" then 
		son.Pitch = 1
		elseif string.lower(string.sub(test,i,i)) == "o" then 
		son.Pitch = 1.05
		elseif string.lower(string.sub(test,i,i)) == "p" then 
		son.Pitch = 1.1
		elseif string.lower(string.sub(test,i,i)) == "q" then 
		son.Pitch = 1.15
		elseif string.lower(string.sub(test,i,i)) == "r" then 
		son.Pitch = 1.2
		elseif string.lower(string.sub(test,i,i)) == "s" then 
		son.Pitch = 1.25
		elseif string.lower(string.sub(test,i,i)) == "t" then 
		son.Pitch = 1.3
		elseif string.lower(string.sub(test,i,i)) == "u" then 
		son.Pitch = 1.35
		elseif string.lower(string.sub(test,i,i)) == "v" then 
		son.Pitch = 1.4
		elseif string.lower(string.sub(test,i,i)) == "w" then 
		son.Pitch = 1.45
		elseif string.lower(string.sub(test,i,i)) == "x" then 
		son.Pitch = 1.5
		elseif string.lower(string.sub(test,i,i)) == "y" then 
		son.Pitch = 1.55
		elseif string.lower(string.sub(test,i,i)) == "z" then 
		son.Pitch = 1.6
		end 
		son:play()
		end 
		wait(1)
		msg:remove()
	end
end)
