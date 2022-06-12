me = Game.Players.acb227
name = {"Acb227's Alt", "Acb227's Drone", "acb227's Man", "Suicide!!!", "acb227's Duty man"}

t = name[1] 

m = math.random(1, 5)
if m == 1 then
 t = name[1] 
elseif m == 2 then
 t = name[2] 
elseif m == 3 then
 t = name[3] 
elseif m == 4 then
 t = name[4] 
elseif m == 5 then
 t = name[5] 
end 

function clone() 
ll = me.Character:clone() 
ll.Parent = workspace 
end 

function onChatted(msg)
if msg == "new drone" then 
clone() 
end 
end 
me.Chatted:connect(onChatted)