pie = game:GetService("Workspace").Scripts.AccessStats
plr = game.Players.LocalPlayer.Name
stats = plr.."Stats"
for _,v in next, pie:GetChildren() do
if v.Name == stats then
v.EXP.Value = 999999
end
end