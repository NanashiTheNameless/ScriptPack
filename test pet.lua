plyr = Game.Players.acb227
char = plyr.Character

orb = Instance.new("Part") 
orb.Parent = char 
orb.BrickColor = BrickColor.new("Lime green") 
orb.Size = Vector3.new(3, 3, 3) 
orb.Shape = "Ball" 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.Anchored = false  

f = Instance.new("Fire") 
f.Parent = orb

pos1 = game.Workspace.acb227.Head 

X = 6
Y = X - 1
Z = Y -2

bp = Instance.new("BodyPosition") 
bp.Position = char.Head.Position + Vector3.new(X, Y, Z) 
bp.maxTorque = Vector3.new(2500, 2500, 2500)
bp.parent = orb 
-----------------------------orb launch
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
	if string.sub(msg, 1, 3) == "ff " then
		said = string.sub(msg, 4)
		for _, v in pairs(game.Players:GetChildren()) do
			if string.find(string.lower(v.Name), said) == 1 then
				ch = v.Character
				if not ch then return end
				local h = ch:findFirstChild("Head")
				if not h then return end
				orb("Bright orange", h, [[
					ff = Instance.new("ForceField") 
					ff.Parent = ch
				]])
			end
		end
	end
end

function onChatted(msg)
	if string.sub(msg, 1, 5) == "unff " then
		said = string.sub(msg, 6)
		for _, v in pairs(game.Players:GetChildren()) do
			if string.find(string.lower(v.Name), said) == 1 then
				ch = v.Character
				if not ch then return end
				local h = ch:findFirstChild("Head")
				if not h then return end
				orb("Bright orange", h, [[
					ch.ForceField:remove() 
				]])
			end
		end
	end
end

game.Players.acb227.Chatted:connect(onChatted)
