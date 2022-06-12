function orb(color, targ, func)
	local p = Instance.new("Part", Workspace)
	p.Shape = "Ball"
	p.TopSurface = "Smooth"
	p.BottomSurface = "Smooth"
	p.Size = Vector3.new(1,1,1)
	p.BrickColor = BrickColor.new(color)
	local b = Instance.new("BodyGyro", p)
	b.P = 5
	b.D = 2
	b.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	local c = Instance.new("BodyPosition", p)
	c.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	coroutine.resume(coroutine.create(function()
		while true do
			if not p then print("") break end
			c.position = targ.Position
			wait()
		end
	end))
	p.Touched:connect(function(h)
		if h.Parent.Name == targ.Parent.Name then
			loadstring(func)()
			p:remove() 
		end
	end)
end

function onChatted(msg)
	if string.sub(msg, 1, 2) == "k " then
		said = string.sub(msg, 3)
		for _, v in pairs(game.Players:GetChildren()) do
			if string.find(string.lower(v.Name), said) == 1 then
				ch = v.Character
				if not ch then return end
				local h = ch:findFirstChild("Head")
				if not h then return end
				orb("Bright red", h, [[
					ch:BreakJoints()
				]])
			end
		end
	end
	if string.sub(msg, 1, 2) == "f " then
		said = string.sub(msg, 3)
		for _, v in pairs(game.Players:GetChildren()) do
			if string.find(string.lower(v.Name), said) == 1 then
				ch = v.Character
				if not ch then return end
				local h = ch:findFirstChild("Head")
				if not h then return end
				orb("Bright orange", h, [[
					Instance.new("Fire", ch.Head) 
					for i = 1, 100 do 
					ch.Humanoid.Health = ch.Humanoid.Health - 1 
					wait(0.15) 
					end 
				]])
			end
		end
	end
end

game.Players.acb227.Chatted:connect(onChatted)