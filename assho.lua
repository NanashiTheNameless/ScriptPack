local Fake = Instance.new("Folder",workspace)
while wait() do
local base = workspace.Base
base.Transparency = .5
local sounds = Instance.new("Sound",workspace)
sounds.Volume = 1
sounds.SoundId = "http://www.roblox.com/asset/?id=250634910"
sounds.Looped = true
sounds.Volume = 40
Game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=250634910")
sounds:Play()
end
wait(1)
while wait() do
sounds.Pitch = sounds.Pitch-1
end

