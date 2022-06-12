function onChatted(msg, speaker)
user = game.Players[tostring(speaker)]
if string.sub(msg, 1, 5) == "get/r" then 
user.Character.Parent = workspace 
user.Character:BreakJoints() 
ch = user.Character 
ch.Head:remove() 
ch.Torso:remove() 
ch["Right Leg"]:remove() 
ch["Right Arm"]:remove() 
ch["Left Leg"]:remove() 
ch["Left Arm"]:remove() 
Mem = Instance.new("Message") 
Mem.Parent = user
Mem.Text = "Got reset" 
wait(1.5) 
Mem:Remove() 
end 
end 
game.Players.ChildAdded:connect(function(plyr)
plyr.Chatted:connect(msg) 
onChatted(msg, plyr) 
end) 
end) 