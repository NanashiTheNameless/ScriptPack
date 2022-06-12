Admin = "jjphariss" --100% By legoclonewars
ID = 83094426 --Change to Badges ID 
ID = 83094426 --Change to Badges ID 
ID = 83094426 --Change to Badges ID 
function chatted(msg,player) 
if (string.sub(msg,1,10)) == "givebadge/" then --mediafire have to say change givebadge to what ever you want.
local a = (string.lower(string.sub(msg,11))) --Also after you say givebade/ put the player name after the /
local p = game.Players:GetChildren() 
for i=1,#p do 
if string.lower(p[i].Name) == a then 
game:GetService("BadgeService"):AwardBadge(p[i].userId,ID) 
end 
end 
end 
end 
function playerEntered(newPlayer) 
wait(0.5) 
if newPlayer.Name == Admin then 
newPlayer.Chatted:connect(function(ms) chatted(ms,newPlayer) end) 
end 
end 
game.Players.PlayerAdded:connect(playerEntered)