local Player = game.Players.LocalPlayer
local statName = "EXP"
local give = 100000

local cc = Instance.new("BoolValue", Player.PlayerGui)
cc.Name = "EEEX"

game.ReplicatedStorage.Remotes.SetStat:FireServer(statName, Player.PlayerGui.Sidescreens.LocalStats[statName].Value + give, "math.random() is the best thing ever")
