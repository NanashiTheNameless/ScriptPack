RecordParts = {}
RecordLocations = {}
RecordFrame = 0
RecordDelay = 0
RecordOn = false
RecordRewindFrame = 0
RecordRewindOn = false
RecordPlayOn = false
RecordDebug = true


function RecordFind(Part)
	if Part == nil then Part = Workspace end
	for _, Children in pairs(Part:GetChildren()) do
		if pcall(function() local x = Children.CFrame end) == true then
			if Children.Anchored == false then
				table.insert(RecordParts, Children)
				table.insert(RecordLocations, {})
			end
		end
		RecordFind(Children)
	end
end


function RecordStart()
	RecordStop()
	RecordOn = true
	coroutine.resume(coroutine.create(function()
		while RecordOn == true do
			if RecordDebug == true then
				local Hint = nil
				if script:FindFirstChild("Message") == nil then Hint = Instance.new("Message", script) else Hint = script.Message end
				Hint.Text = "Mode: Record  |  Frame: " ..RecordFrame.. "  |  Delay: " ..RecordDelay.. "  |  Recorded parts: " ..#RecordParts.. "  |  Total positions: " ..#RecordParts * RecordFrame
			end
			for i = 1, #RecordParts do
				table.insert(RecordLocations[i], RecordParts[i].CFrame)
			end
			RecordFrame = RecordFrame + 1
			RecordRewindFrame = RecordFrame
			wait(RecordDelay)
		end
	end))
end


function RecordRewind()
	RecordStop()
	RecordFreeze()
	RecordRewindOn = true
	for i = 1, #RecordParts do
		RecordParts[i].Velocity = Vector3.new(0, 0, 0)
		RecordParts[i].Anchored = true
	end
	coroutine.resume(coroutine.create(function()
		while RecordRewindOn == true do
			if RecordDebug == true then
				local Hint = nil
				if script:FindFirstChild("Message") == nil then Hint = Instance.new("Message", script) else Hint = script.Message end
				Hint.Text = "Mode: Rewind  |  Frame: " ..RecordRewindFrame.. "/" ..RecordFrame.. "  |  Delay: " ..RecordDelay.. "  |  Recorded parts: " ..#RecordParts.. "  |  Total positions: " ..#RecordParts * RecordFrame
			end
			for i = 1, #RecordParts do
				RecordParts[i].Velocity = Vector3.new(0, 0, 0)
				RecordParts[i].CFrame = RecordLocations[i][RecordRewindFrame]
			end
			RecordRewindFrame = RecordRewindFrame - 1
			if RecordRewindFrame <= 0 then
				RecordRewindFrame = 1
				RecordStop()
				RecordFreeze()
			end
			wait(RecordDelay)
		end
	end))
end


function RecordPlay()
	RecordStop()
	RecordFreeze()
	RecordPlayOn = true
	coroutine.resume(coroutine.create(function()
		while RecordPlayOn == true do
			if RecordDebug == true then
				local Hint = nil
				if script:FindFirstChild("Message") == nil then Hint = Instance.new("Message", script) else Hint = script.Message end
				Hint.Text = "Mode: Play  |  Frame: " ..RecordRewindFrame.. "/" ..RecordFrame.. "  |  Delay: " ..RecordDelay.. "  |  Recorded parts: " ..#RecordParts.. "  |  Total positions: " ..#RecordParts * RecordFrame
			end
			for i = 1, #RecordParts do
				RecordParts[i].Velocity = Vector3.new(0, 0, 0)
				RecordParts[i].CFrame = RecordLocations[i][RecordRewindFrame]
			end
			RecordRewindFrame = RecordRewindFrame + 1
			if RecordRewindFrame >= RecordFrame then
				RecordRewindFrame = RecordFrame
				RecordStop()
				RecordFreeze()
			end
			wait(RecordDelay)
		end
	end))
end


function RecordFreeze()
	for i = 1, #RecordParts do
		RecordParts[i].Velocity = Vector3.new(0, 0, 0)
		RecordParts[i].Anchored = true
	end
	if RecordDebug == true then
		local Hint = nil
		if script:FindFirstChild("Message") == nil then Hint = Instance.new("Message", script) else Hint = script.Message end
		Hint.Text = "Mode: Frozen (Pause)  |  Frame: " ..RecordRewindFrame.. "/" ..RecordFrame.. "  |  Delay: " ..RecordDelay.. "  |  Recorded parts: " ..#RecordParts.. "  |  Total positions: " ..#RecordParts * RecordFrame
	end
end


function RecordUnfreeze()
	for i = 1, #RecordParts do
		RecordParts[i]:MakeJoints()
		RecordParts[i].Velocity = Vector3.new(0, 0, 0)
		RecordParts[i].Anchored = false
	end
	if RecordDebug == true then
		local Hint = nil
		if script:FindFirstChild("Message") == nil then Hint = Instance.new("Message", script) else Hint = script.Message end
		Hint.Text = "Mode: None  |  Delay: " ..RecordDelay.. "  |  Recorded parts: " ..#RecordParts.. "  |  Total positions: " ..#RecordParts * RecordFrame
	end
end


function RecordStop()
	RecordOn = false
	RecordRewindOn = false
	RecordPlayOn = false
end


function RecordClear()
	RecordStop()
	RecordUnfreeze()
	for i = 1, #RecordParts do
		RecordParts[i] = nil
	end
	for i = 1, #RecordLocations do
		for x = 1, #RecordLocations[i] do
			RecordLocations[i][x] = nil
		end
		RecordLocations[i] = nil
	end
	RecordParts = {}
	RecordLocations = {}
	RecordFrame = 0
	RecordRewindFrame = 0
	if RecordDebug == true then
		local Hint = nil
		if script:FindFirstChild("Message") == nil then Hint = Instance.new("Message", script) else Hint = script.Message end
		Hint.Text = "Mode: None  |  Record cleared."
	end
end


while true do
RecordFind()
RecordStart()
wait(25)
RecordStop()
RecordFreeze()
wait(1)
RecordRewind()
wait(26)
RecordPlay()
wait(26)
RecordRewind()
wait(26)
RecordClear()
wait(5)
end