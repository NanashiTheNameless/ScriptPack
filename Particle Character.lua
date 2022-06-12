Player = game.Players.LocalPlayer
Char = Player.Character
Mouse = Player:GetMouse()
invis = false

Mouse.KeyDown:connect(function(key)
	if key:lower() == "0" then
	    if not invis then
            for i,v in pairs(Char:children()) do
            	if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
            		v.Transparency = 1
            		local f = Instance.new("ParticleEmitter",v)
            		f.Name = "Particle"
            		f.Color = ColorSequence.new(BrickColor.new("White").Color, BrickColor.new("Really black").Color)
            		f.Texture = "http://www.roblox.com/asset/?id=285779809"
            		f.Size = NumberSequence.new(0.20)
            		f.Transparency = NumberSequence.new(0)
            		f.Lifetime = NumberRange.new(1,1)
            		f.Rate = math.small
            		f.Rotation = NumberRange.new(math.huge)
            		f.RotSpeed = NumberRange.new(math.huge)
            		f.Speed = NumberRange.new(0)
            		if Char.Head:findFirstChild("face") then
            		    Char.Head.face.Parent = Char
            		end
            	elseif v:IsA("Hat") then
            		if v.Handle then
            		   v.Handle.Transparency = 1
            		end
        	    end
            end

            invis = true
        elseif invis then
			for i,v in pairs(Char:children()) do
				if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
					v.Transparency = 0
					if v.Particle then
						v.Particle:Destroy()
					end
				elseif v:IsA("Hat") then
					if v.Handle then
						v.Handle.Transparency = 0
					end
				end
            end
            if Char.face then
                Char.face.Parent = Char.Head
            end
            Char.Humanoid.WalkSpeed = 16
            invis = false
        end
    end
end)