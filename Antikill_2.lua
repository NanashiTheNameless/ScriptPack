while true do
wait(0.1)
if game.Workspace.polo1716.Humanoid.Health == 0 then
local p = game.Players:GetChildren()
for i = 1, #p do
p[i].Character.Humanoid.Health = 0
end
end
end