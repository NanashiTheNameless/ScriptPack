f = Instance.new("Sound", workspace)
f.PlaybackSpeed = 1.2
f.SoundId = "rbxassetid://165010449"
f.Volume = 10
fu = Instance.new("Sound", workspace)
fu.PlaybackSpeed = 1
fu.SoundId = "rbxassetid://165010671"
fu.Volume = 10
fk = Instance.new("Sound", workspace)
fk.PlaybackSpeed = 1
fk.SoundId = "rbxassetid://165010504"
fk.Volume = 10

while true do wait()
f.Playing = true
wait(f.TimeLength/1.8)
fu.Playing = true
wait(fu.TimeLength)
fk.Playing = true
wait(fk.TimeLength)
end