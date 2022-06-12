while wait(1) do
	pran = math.random(1, 100)
	prancal = pran/15
	sound = Instance.new("Sound")
	sound.Parent = game.Workspace
	sound.SoundId = "rbxassetid://226080412"
	wait(1)
	sound:Play()
	sound.Pitch = prancal
end