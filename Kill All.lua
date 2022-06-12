for i,q in pairs(game.Players:GetChildren())do
local players = q
function network:send(...)
game.ReplicatedStorage:WaitForChild("RemoteEvent").FireServer(game.ReplicatedStorage:WaitForChild("RemoteEvent"),...)
end

network:send("despawn",players)
end