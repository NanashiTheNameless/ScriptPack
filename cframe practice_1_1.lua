local i = 0
for i = 1, 85, 60 do

	local p = Instance.new("Part")
	p.Parent = game.Workspace
	p.Name = "Brick"
	p.Size = Vector3.new(1,20,3) --[[change 50 to change the size of the stairs --]]
	p.Anchored = true
	p.CFrame=(CFrame.fromEulerAnglesXYZ(25,(i/1),3)+Vector3.new(25,i,25))
--[[change 25 to change the 'smoothness' of the stairwell --]]
	wait()
	end