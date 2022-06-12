script/me = "lordsheen" 
a = game:GetService("InsertService"):LoadAsset(56360025) 
a.Parent = game.Workspace
a:MakeJoints() 
a:MoveTo(game.Players[me].Character.Torso.Position) 

wait(1) 

if a~=nil then 
game.Players[me].Character=a 
end 

if a.