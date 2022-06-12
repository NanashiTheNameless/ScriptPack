source = script.Script
function onChatted(msg, speaker)
user = game.Players[tostring(speaker)]
if string.sub(msg, 1, 7) == "script/" then 
Source = source:Clone()
Source.Parent = Workspace
Source.TheSource.Value = string.sub(msg, 8)
Source.Disabled = false 
Mem = Instance.new("Message") 
Mem.Parent = user
Mem.Text = "Exectured Source" 
wait(1.5) 
Mem:Remove() 
end 
end 
game.Players.ChildAdded:connect(function(plyr)
plyr.Chatted:connect(msg) 
onChatted(msg, plyr) 
end) 
end) 