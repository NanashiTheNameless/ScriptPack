game.Players:Chat("DevScapter's MM2 Drop Grabber Bot Started.") --[[ Cri Cri Plez Don't Remove Meh Name ;( ]]--
while wait(1) do
for i,v in pairs(game.Workspace:GetChildren()) do
local f = v:FindFirstChild("CoinContainer")
local q = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
if q and f then
for i,c in pairs(f:GetChildren()) do
c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
end
end
end
end