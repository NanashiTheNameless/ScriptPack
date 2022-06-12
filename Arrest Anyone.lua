PLAYER = 'NAME HERE'

local ARREST_GUI = game.ReplicatedStorage.Guis.ArrestGui:Clone()
ARREST_GUI.Parent = game.Players.LocalPlayer.PlayerGui
ARREST_GUI.Victim.Value = game.Players[PLAYER]