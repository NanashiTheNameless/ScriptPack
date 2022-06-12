me = "lordsheen" 
a = game:GetService("InsertService"):LoadAsset(54432238) --Gravity Gun 
a.Parent = game.Workspace
a:MakeJoints() 
a:MoveTo(game.Players[me].Character.Torso.Position) 
wait(.4) 
game.Workspace.lordsheen.Sword:Clone().Parent = game.StarterPack 
