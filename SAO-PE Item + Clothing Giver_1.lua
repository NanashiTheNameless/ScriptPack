print("Running Item Giver...")

plr = "USERNAME HERE"
plrid = game.Players[plr].UserId

ITEM = "ITEM NAME"

copy = game.ReplicatedStorage.DB[ITEM]:Clone()
copy.Parent = game.ReplicatedStorage.leaderstat[plrid].Inv

---------- QUANTITY MODIFIER ----------

Mod = game.ReplicatedStorage.DB[ITEM]
Mod.Quantity.Value = ANY_NUMBER_HERE

print("Success!")