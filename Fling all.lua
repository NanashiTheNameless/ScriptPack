for _,v in pairs(game.Players:GetChildren()) do
		local Force1 local Force2 repeat Force1 = math.random(-92999,92999)
		until math.abs(Force1) >= 5555
		repeat Force2 = math.random(-92999,92999)
		until math.abs(Force2) >= 5555
		v.Character.Humanoid.PlatformStand = true v.Character.Torso.Velocity = Vector3.new(0,0,0) 
		
		local Fling = Instance.new('BodyForce', v.Character.Torso)
		Fling.Name = 'Flung'
		Fling.force = Vector3.new(Force1*4,9999*5,Force2*4)
	end