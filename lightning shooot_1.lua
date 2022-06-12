local Me = game.Players.LocalPlayer 
char = Me.Character 
local on = false 

function spark(pos)
	Hit = char.Head.CFrame
	pcall(function() workspace.Guideline:remove() end)
	local P = Instance.new("Part") 
	P.Name = "Guideline" 
	local Place0 = pos 
	P.formFactor = 0 
	P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
	P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
	P.Parent = workspace
	P.BrickColor = BrickColor.Black()
	P.Anchored = true 
	P.CanCollide = false
	P.Transparency = 1
	m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1,0.1,1)
	m.Parent = P
	mh = char.Head.CFrame
	for c1 = 1, 1 do
		oldHit = char.Head.CFrame 
		for count = 1, 9 do
			val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
			val2 = P.Size.z / 10
			val3 = P.CFrame.lookVector * -1
			val4 = count * val2
			val5 = val4 * val3
			val6 = pos.p
			Hit = CFrame.new(val5 + val1 + val6)
			local s = Instance.new("Part") 
			s.Name = "Spark" 
			local Place0 = oldHit
			s.formFactor = 0 
			s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
			s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
			s.Parent = P 
			s.BrickColor = BrickColor.White()
			s.Anchored = true 
			s.CanCollide = false
			m = Instance.new("BlockMesh")
			m.Scale = Vector3.new(0.1,0.1,1)
			m.Parent = s
			clone = s:clone()
			clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
			clone.BrickColor = BrickColor.Blue()
			clone.Transparency = 0.8
			clone.Parent = s.Parent
			oldHit = Hit
		end
		Hit = oldHit
		local s = Instance.new("Part") 
		s.Name = "Spark" 
		local Place0 = mh
		s.formFactor = 0 
		s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
		s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
		s.Parent = P 
		s.BrickColor = BrickColor.White()
		s.Anchored = true 
		s.CanCollide = false
		m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1,0.1,1)
		m.Parent = s
		clone = s:clone()
		clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
		clone.BrickColor = BrickColor.Blue()
		clone.Transparency = 0.8
		clone.Parent = s.Parent
		wait(0.1) 
	end
	P:remove()
end
function spark2(pos)
	Hit = char.Head.CFrame
	pcall(function() workspace.Guideline:remove() end)
	local P = Instance.new("Part") 
	P.Name = "Guideline" 
	local Place0 = pos 
	P.formFactor = 0 
	P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
	P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
	P.Parent = workspace
	P.BrickColor = BrickColor.Red()
	P.Anchored = true 
	P.CanCollide = false
	P.Transparency = 1
	m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1,0.1,1)
	m.Parent = P
	mh = char.Head.CFrame
	for c1 = 1, 1 do
		oldHit = char.Head.CFrame 
		for count = 1, 9 do
			val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
			val2 = P.Size.z / 10
			val3 = P.CFrame.lookVector * -1
			val4 = count * val2
			val5 = val4 * val3
			val6 = pos.p
			Hit = CFrame.new(val5 + val1 + val6)
			local s = Instance.new("Part") 
			s.Name = "Spark" 
			local Place0 = oldHit
			s.formFactor = 0 
			s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
			s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
			s.Parent = P 
			s.BrickColor = BrickColor.Red()
			s.Anchored = true 
			s.CanCollide = false
			m = Instance.new("BlockMesh")
			m.Scale = Vector3.new(0.1,0.1,1)
			m.Parent = s
			clone = s:clone()
			clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
			clone.BrickColor = BrickColor.White()
			clone.Transparency = 0.8
			clone.Parent = s.Parent
			oldHit = Hit
		end
		Hit = oldHit
		local s = Instance.new("Part") 
		s.Name = "Spark" 
		local Place0 = mh
		s.formFactor = 0 
		s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
		s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
		s.Parent = P 
		s.BrickColor = BrickColor.Red()
		s.Anchored = true 
		s.CanCollide = false
		m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1,0.1,1)
		m.Parent = s
		clone = s:clone()
		clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
		clone.BrickColor = BrickColor.White()
		clone.Transparency = 0.8
		clone.Parent = s.Parent
		wait(0.1) 
	end
	P:remove()
end

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = ""
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function() 
poss = mouse.hit.p 
spark(CFrame.new(poss))
local ff = Instance.new("ForceField", char) 
local ex = Instance.new("Explosion", workspace) 
ex.Position = poss 
ff:remove() 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
poss = mouse.hit.p 
spark2(CFrame.new(poss))
mouse.Target:BreakJoints() 
if mouse.Target.Name ~= "Base" then 
mouse.Target.Anchored = false 
end 
	end 
		if key == "e" and on == false then 
on = true 
for i = 0, math.huge, 0.1 do 
if on == true then 
poss = mouse.hit.p 
spark2(CFrame.new(poss))
mouse.Target:BreakJoints() 
if mouse.Target.Name ~= "Base" then 
mouse.Target.Anchored = false 
end 
end 
wait() 
end 
	end 
    end)
    mouse.KeyUp:connect(function(key)
        if key == "e" then 
on = false 
	end 
    end)	
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
