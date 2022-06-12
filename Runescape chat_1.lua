messageTime = 3 --You can change this so that the message will stay up longer. Right now, it will stay for 3 seconds.

function onChatted(msg, recipient, speaker) 

	if speaker.Character ~= nil then
		speaker.Character.Name = msg
		wait(messageTime)
		speaker.Character.Name = speaker.Name
	end

end 

function onPlayerEntered(newPlayer) 
	newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end 

game.Players.ChildAdded:connect(onPlayerEntered)