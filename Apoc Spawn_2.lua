remote = game.Lighting.Remote

ao = remote.AddObject

slots = game.Players.LocalPlayer.playerstats.slots

cp = remote.ChangeProperty

di = remote.DropItem
wait(.50)

item = 4016 -- Item ID here

slot = slots.slot20 --change this number to whatever 'slot' you want. change to 'slotbackpack' if you want a backpack, make sure the ID matches.

ao:FireServer(slot, item)
