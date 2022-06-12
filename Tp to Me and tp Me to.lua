Me to Player:
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("Me To", math.floor(tick() % 1 * 100000), "PLAYERNAME")
Player to Me:
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), "PLAYERNAME")