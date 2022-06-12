p = game.Players:GetChildren()
while wait(1) do
for i,v in pairs(p) do
m = Instance.new("Sound", v.Character.Torso)
m.SoundId = "http://www.roblox.com/asset/?id=174658105"
m.Volume = 20
m.Looped = false
m:Play()
a = Instance.new("Smoke", v.Character.Torso)
wait(1)
music:Destroy()
a:Destroy()
end
end