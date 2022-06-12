wait(0.1)
local Player = game.Players.yfc
 local Service = game:GetService("InsertService"):LoadAsset(16969792) 
 Service.Parent = workspace Service:MoveTo(Player.Character.Torso.Position)
 Service:MakeJoints()
 
 