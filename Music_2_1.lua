local ID = "190819252"

local p = game.Players.LocalPlayer.Character
local s = Instance.new("Sound", p.Torso)
s.Name = "Song"
s.SoundId = "rbxassetid://506337000"
s.Volume = 10
s.Looped = false
s.archivable = false
wait(0)
s:Play()