player = "jjphariss"
newname = ""
game.Players[player].Character.Archivable = true
clone = game.Players[player].Character:Clone()
clone.Parent = workspace
clone.Name = newname
game.Players[player].Character = clone