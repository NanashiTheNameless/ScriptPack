function onChatted(msg, speaker)
user = game.Players[tostring(speaker)]
if string.sub(msg, 1, 5) == "get/r" then 

end 
end 
game.Players.ChildAdded:connect(function(plyr)
plyr.Chatted:connect(msg) 
onChatted(msg, plyr) 
end) 
end) 