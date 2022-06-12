print("Running Skill Giver...")

plr = "USERNAME HERE"
plrid = game.Players[plr].UserId

SKILL = "Skill Name"

copy = game.ReplicatedStorage.DB[SKILL]:Clone()
copy.Parent = game.ReplicatedStorage.leaderstat[plrid].Skills

print("Success!")