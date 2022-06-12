local sword=game.Players.LocalPlayer.Backpack.LinkedSword
a=Instance.new("SelectionBox",sword.Handle)
a.Adornee=sword.Handle
sword.Handle.Size=Vector3.new(0.2,0.2,121)
sword.Equipped:connect(function()
while wait() do
game.Workspace[game.Players.LocalPlayer.Name].LinkedSword.GripPos=Vector3.new(0,0,-60)
end
end)