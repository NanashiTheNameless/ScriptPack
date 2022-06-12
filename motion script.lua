m = 2

function move() 
if m == 1 then 
for i = 1, 500 do 
wait() 
workspace.acb227.Torso.CFrame = workspace.acb227.Torso.CFrame * CFrame.new(0, 0, -0.4) 
end 
elseif m == 2 then 
end 
end 

function onChatted(msg) 
if msg == "on" then 
m = 1 
elseif msg == "off" then 
m = 2 
move() 
end 
end 
Game.Players.acb227.Chatted:connect(onChatted)

while true do 
wait() 
move() 
end 