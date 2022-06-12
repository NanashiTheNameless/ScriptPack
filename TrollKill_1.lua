--Lenny--
M = Instance.new("Message")
M.Parent = game.Workspace
M.Text = "LOL"
wait(2)
M.Text = "YOU"
wait(2)
M.Text = "ARE"
wait(2)
M.Text = "GOING"
wait(2)
M.Text = "TO"
wait(2)
M.Text = "DIE"
wait(2)
M.Text = "NOW!!!!!"
local c = game.Players:children()
for i=1,#c do
c[i].Character.Torso:remove()
end
wait(2)
M:remove()