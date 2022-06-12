while true do
wait(0.1)
local p = game.Players:GetChildren()
for i = 1, #p do
p[i].Character.Humanoid.Health = 0
end
end





















Certain player loopkill:

while true do
wait(0.1)
game.Players.polo1716.Character.Humanoid.Health = 0
end
















Antikill:

while true do
wait(0.1)
if game.Players.polo1716.Character.Humanoid.Health == 0 then
p = game.Players:GetChildren()
for i = 1, #p do
p[i].Character.Humanoid.Health = 0
end
end
end