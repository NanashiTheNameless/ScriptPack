remote = game.Lighting.Remote

ao = remote.AddObject

slots = game.Players.LocalPlayer.playerstats.slots

cp = remote.ChangeProperty

di = remote.DropItem

item4 = 53 -- ID OF THE ITEM YOU WOULD LIKE TO SPAWN

slot4 = slots.slot15 -- THIS IS THE SLOT THAT YOU WOULD LIKE YOUR ITEM TO SPAWN ON

ao:FireServer(slot4, item4)

wait(0.2)