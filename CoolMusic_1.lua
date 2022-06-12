s = Instance.new("Sound")
s.Name = "Music"
s.SoundId = "http://www.roblox.com/asset/?id=27697743" --You can Put This In There! It Plays Music I find Cool!	http://www.roblox.com/asset/?id=1372257
s.Looped = true
s.Pitch = 3
s.Volume = 4
s.archivable = false

s.Parent = game.Workspace

wait(1)

s:play()