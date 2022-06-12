local Player = game.Players.LocalPlayer
local fin = true
local btools = false

while true do
if Hexus.GetKey("B") and fin == true then
fin = false
function Give(x)
H = Instance.new("HopperBin", Player.Backpack)H.BinType = x
end
for i = 2, 4 do
Give(i)
end
wait(0.1)
fin = true
elseif Hexus.GetKey("K") and btools == false and fin == true then
fin = false
btools = true
for i, v in pairs(game.Players:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Character then
v.Character:BreakJoints()
end
wait()
end
end
wait(0.1)
fin = true
end
end