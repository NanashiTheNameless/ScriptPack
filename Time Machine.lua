while true do
	local Number = 0
	local Max_Number = 250
	local Targets = {}
	local Bricks = game.Workspace:GetChildren()
	for X = 1, # Bricks do
		if Bricks[X].className == "Part" then
			if Bricks[X].Locked == false and Bricks[X].Anchored == false then
				table.insert(Targets, Bricks[X])
				local Origin = Instance.new("CFrameValue")
				Origin.Parent = Bricks[X]
				Origin.Name = "Origin CFrame"
				Origin.Value = Bricks[X].CFrame
			end
		end
	end
	while Number < Max_Number do
		for X = 1, # Targets do
			local History = Instance.new("CFrameValue")
			History.Parent = Targets[X]
			History.Name = Number
			History.Value = Targets[X].CFrame
		end
		Number = Number + 1
		wait()
	end
	while Number > 0 do
		Number = Number - 1
		wait()
		for X = 1, # Targets do
			local History = Targets[X]:findFirstChild(Number)
			if History ~= nil then
				Targets[X].CFrame = History.Value
				History:remove()
			end
		end
	end
	for X = 1, # Targets do
		local Origin = Targets[X]:findFirstChild("Origin CFrame")
		if Origin ~= nil then
			Targets[X].CFrame = Origin.Value
			Targets[X]:makeJoints()
			Origin:remove()
		end
	end
	Targets = {}
end