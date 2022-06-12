local p = game.Players.LocalPlayer.Data

local r = game.ReplicatedStorage.Remotes.ChangeValue

r:FireServer(p.PlayerLevel,400)

r:FireServer(p.Power,400)

r:FireServer(p.Sword,400)

r:FireServer(p.Rank,6632)
r:FireServer(p.PlayerMoney,6632)