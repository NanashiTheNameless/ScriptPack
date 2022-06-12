pitch = {0.7,0.8,0.9,1,1.1,0.9,1,1.3,1.2,1.3,1.4}
num = 1
t = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
h = Instance.new("Part", t)
h.BrickColor = BrickColor.new("Really black") 
h.Name = "Handle"
hBM=Instance.new("BlockMesh",h)
hBM.Scale = Vector3.new(0.15,1,0.012)
script.Parent = t
sound = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
sound.Volume = 1
sound.SoundId = "http://www.roblox.com/asset/?id=15666462"
script.Parent.Activated:connect(function()
sound.Pitch = tonumber(pitch[num])
sound:Play()
if num == 11 then
num = 1
else
num = num + 1
end
end)
