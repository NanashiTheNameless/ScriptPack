game.Players.NAME.Status2.Lvl.Value=2000

nak = "nakata1609"
name = "NAME" --change to your name
plr = game.Players.LocalPlayer
gui = plr.PlayerGui["Open/Close"]
dest = game.ReplicatedStorage

gui.window2.LucemonSM.Unlock[nak]:Clone().Parent = dest 
dest[nak].Name = name
wait(1)
dest[name]:Clone().Parent = gui.window2.X7Super.Unlock
dest[name]:Clone().Parent = gui.window2.BShoutmon.Unlock
dest[name]:Clone().Parent = gui.window2.Gizu.Unlock
dest[name]:Clone().Parent = gui.window2.MetalKoromon.Unlock
dest[name]:Clone().Parent = gui.window2.SpecialPM.Unlock
dest[name]:Clone().Parent = gui.window2.Grani.Unlock
dest[name]:Clone().Parent = gui.window2.Bakomon.Unlock
dest[name]:Clone().Parent = gui.window2.Cutemon.Unlock
dest[name]:Clone().Parent = gui.window2.CAgumon.Unlock
dest[name]:Clone().Parent = gui.window2.KuraEgg.Unlock
dest[name]:Clone().Parent = gui.window2.Arkadi.Unlock