Victim = game.Players["LocalPlayer"]
Victim = Victim.Character
		o1 = Instance.new("Sound")
		o1.Parent = Victim.Head
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()
		o1 = Instance.new("Sound")
		o1.Name = "SoundofPain"
		o1.Parent = Victim.Head
		o1.Volume = 3
		o1.SoundId = "rbxassetid://606862847"
		o1:Play()
Victim.Head.face.Texture = "http://www.roblox.com/asset/?id=412416747"
Victim.Head.BrickColor = BrickColor.New("Maroon")
for i=1, 10 do
	wait(.1)
Victim.Head.Size = Victim.Head.Size *1.3
end
g = Instance.new("Explosion")
g.Parent = workspace
g.Position = Victim.Head.Position
g.BlastRadius = 200
g.BlastPressure = 100000
PS33 = Instance.new("Sound")
PS33.Name = "Boom"
PS33.Parent = workspace
PS33.SoundId = "rbxassetid://165969964"
PS33.Volume = 10
PS33:Play()
Victim.Head:Destroy()