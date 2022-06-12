game.Players.LocalPlayer.Chatted:connect(function(msg)
if msg:sub(1, 7) == ";stopit" then
local audio = Instance.new("Sound",game.Players.LocalPlayer)
audio.Volume = 10
audio.SoundId = "rbxassetid://500243174"
audio.Pitch = 1
audio:Play()
end
end)