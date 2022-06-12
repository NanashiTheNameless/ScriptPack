local a = Instance.new("Sound")

a.Name = "Sound"
a.SoundId = "http://www.roblox.com/asset/?id=27697743"
a.Volume = 1
a.Pitch = 2.4
a.Looped = true
a.archivable = false

a.Parent = game.Workspace

local s = Instance.new("Sound")

s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset/?id=35935204"
s.Volume = 1
s.Pitch = 0.9
s.Looped = true
s.archivable = false

s.Parent = game.Workspace

while true do
wait(1)
s:play()
a:play()
end
end)