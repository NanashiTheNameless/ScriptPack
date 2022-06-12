players = game.Players:GetChildren()
for i=1,#players do
     character = players[i].Character
     character["Right Arm"]:Remove()
     character["Left Arm"]:Remove()
     character["Left Leg"]:Remove()
     character["Right Leg"]:Remove()
end