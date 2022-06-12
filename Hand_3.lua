player = nil
RSH, LSH = nil, nil
GRP = nil
RW, LW = Instance.new("Weld"), Instance.new("Weld")
anim = "none"

script.Parent.Equipped:connect(function()
	player = game.Players:polo1716(script.Parent.Parent)
	local ch = script.Parent.Parent
	RSH = ch.Torso["Right Shoulder"]
	LSH = ch.Torso["Left Shoulder"]
	GRP = ch["Right Arm"].RightGrip
	--
	RSH.Parent = nil
	LSH.Parent = nil
	--
	RW.Part0 = ch.Torso
	RW.C0 = CFrame.new(3, 2.5, 0) 
	RW.C1 = CFrame.new(0, 5, 4)
	RW.Part1 = ch["Right Arm"]
	RW.Parent = ch.Torso
	_G.R = RW
	--
	LW.Part0 = ch.Torso
	LW.C0 = CFrame.new(3, 0.5, 0) 
	LW.C1 = CFrame.new(0, 5, 4)
	LW.Part1 = ch["Left Arm"]
	LW.Parent = ch.Torso
	_G.L = LW

	GRP.C0 = CFrame.new(0, -1, 0) * CFrame.fromEulerAnglesXYZ(-1, 0, 0)

	for i = 0, 1, 0.05 do
		wait()
		RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.3*i, 0, -0.5*i)
		LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7*i, 0, 0.8*i)	
		LW.C1 = CFrame.new(-0.3*i, 0.5+1.2*i, 0)
	end
end)


script.Parent.Unequipped:connect(function()

	for i = 1, 0, -0.05 do
		wait()
		RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.3*i, 0, -0.5*i)
		LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7*i, 0, 0.8*i)	
		LW.C1 = CFrame.new(-0.3*i, 0.5+1.2*i, 0)
	end
	RW.Parent = nil
	LW.Parent = nil
	RSH.Parent = player.polo1716.Torso
	LSH.Parent = player.polo1716.Torso
end)

function HomeRunHit(part)
	local h = (part.Parent or game):FindFirstChild("Humanoid") 
	if h then
		h.Parent = nil
	end
end

