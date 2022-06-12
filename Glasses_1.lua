wait(0.1)
local Player = game.Players.yfc
 local Service = game:GetService("InsertService"):LoadAsset(69499452) -- Put the id of the item here, you can find that on the top of the page
 Service.Parent = workspace Service:MoveTo(Player.Character.Torso.Position)
 Service:MakeJoints()
 
 