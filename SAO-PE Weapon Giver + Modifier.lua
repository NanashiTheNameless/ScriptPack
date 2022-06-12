print("Running Weapon Giver...")

plr = "USERNAME HERE"
plrid = game.Players[plr].UserId

WEAPON = "Elucidator"

copy = game.ReplicatedStorage.DB[WEAPON]:Clone()
copy.Parent = game.ReplicatedStorage.leaderstat[plrid].Equ

---------- ITEM MODIFIER ----------

Mod = game.ReplicatedStorage.DB[WEAPON]
Mod.Damage.Value = 10000
Mod.Speed.Value = 100

print("Success!")