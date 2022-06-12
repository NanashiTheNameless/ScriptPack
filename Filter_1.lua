-- BlooWolf
-- Okay, I made this to keep Roblox a nice and clean place!
-- This script makes it so some words can not be said.
-- For example, make on of those words down there "noob", then if someone says noob they're banned!
-- It does a lot of work for you.
-- Also, I suggest still adding the Ban Script V3 incase you need to ban them for stuff like tking, sking, so on.
-- If you want more words then just copy one of those lines and then paste them under the latest word, then whalla! Another word that can't be said.
-- By the way, if you haven't noticed, to make what words you don't want people saying. Change the "word" in the line to what word they can't say.
-- IMPORTANT: While changing "word" to the word you want, DO NOT delete the " "
-- Hope you use this to make your place a nice clean one!

function onChatted(msg, recipient, speaker)

	-- convert to all lower case

	local source = string.lower(speaker.Name)
	msg = string.lower(msg)

	if (msg == "bsod") then --filter
		local m = Instance.new("Message")
		m.Text = "Swear filter activated."--filter
		m.Parent = game.Workspace.source
		wait(2)
		source.Parent = nil
		m.Parent = nil
	end
	if (msg == "lag") then --filter
		local m = Instance.new("Message")
		m.Text = "Swear filter activated."--filter
		m.Parent = game.Workspace.source
		wait(2)
		source.Parent = nil
		m.Parent = nil
	end
	if (msg == "ban") then --filter
		local m = Instance.new("Message")
		m.Text = "Swear filter activated."--filter
		m.Parent = game.Workspace.source
		wait(2)
		source.Parent = nil
		m.Parent = nil
	end
	if (msg == "kick") then --filter
		local m = Instance.new("Message")
		m.Text = "Swear filter activated."--filter
		m.Parent = game.Workspace.source
		wait(2)
		source.Parent = nil
		m.Parent = nil
	end
		if (msg == "probe") then --filter
		local m = Instance.new("Message")
		m.Text = "Swear filter activated."--filter
		m.Parent = game.Workspace.source
		wait(2)
		source.Parent = nil
		m.Parent = nil
	end
end

function onPlayerEntered(newPlayer)
	newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end

game.Players.ChildAdded:connect(onPlayerEntered)