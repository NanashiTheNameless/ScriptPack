workspace.YOURNAME.Health:destroy''

game.ReplicatedStorage.Profiles.YOURNAME.Health:destroy''

inv=game.Players.LocalPlayer.PlayerGui

for i=1, 50 do
me=inv.WeaponHandler:Clone()
me.Parent=inv
end