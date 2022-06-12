local PlayerService = game:GetService("Players")

local Console = Raindrop:GetConsole()
Console:CreateConsole('Chatlogs')

local function LogMessage(Player,Message)
Console:WriteLine(Player.Name.." - "..tick().."\n"..Message)
end

for i,v in next, PlayerService:GetPlayers() do
v.Chatted:connect(function(Message)
LogMessage(v, Message)
end)
end

PlayerService.PlayerAdded:connect(function(Player)
Player.Chatted:connect(function(Message)
LogMessage(Player, Message)
end)
end)