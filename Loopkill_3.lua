for i = 1,10 --how many times you want to kill
wait(5)
for i,v in pairs(game.Players:GetPlayers())
v.Character:BreakJoints()
end
wait(.1)
end

for i = 1,10 --how many times you want to kill
wait(5)
workspace.PLAYERNAME:BreakJoints()
wait(.1)
end