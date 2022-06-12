for _,v in pairs(game.Players:GetChildren()) do
		local Bomb = Instance.new('Part')
		Bomb.Parent = game.Workspace
		Bomb.Size = Vector3.new(2,2,2)
		Bomb.Material = 'Neon'
		Bomb.BrickColor = BrickColor.new('Really black')
		Bomb.Position = v.Character.Head.Position
		Bomb.Shape = 'Ball'
		Bomb.TopSurface = 'Smooth'
		Bomb.BottomSurface = 'Smooth'
		Bomb.Locked = true
		wait(3)
		local Explosion = Instance.new('Explosion')
		Explosion.Parent = game.Workspace
		Explosion.Position = Bomb.Position
		Explosion.BlastRadius = 10
	    Explosion.BlastPressure = 1000000
	    Bomb:Destroy()
	end