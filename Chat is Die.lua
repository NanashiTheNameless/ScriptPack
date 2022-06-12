name = "PLAYERNAME"

plr = game.Players[name]
plr.Chatted:connect(function()
plr.Character:BreakJoints()
end)