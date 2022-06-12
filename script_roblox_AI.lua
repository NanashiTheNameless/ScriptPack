--This script will just make a robot move around in random ways, looking for something with a 'Humanoid' in it.
local larm = script.Parent:FindFirstChild("Left Arm")
local rarm = script.Parent:FindFirstChild("Right Arm")

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 1000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= script.Parent) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

------------------
--SPAWNING--
------------------

miked=script.Parent

itlh=miked.Torso:findFirstChild("Left Hip")
itlh.Part0=miked.Torso
itlh.Part1=miked:findFirstChild("Left Leg")
itlh.C0=CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

itrh=miked.Torso:findFirstChild("Right Hip")
itrh.Part0=miked.Torso
itrh.Part1=miked:findFirstChild("Right Leg")
itrh.C0=CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)

itls=miked.Torso:findFirstChild("Left Shoulder")
itls.Part1=miked.Torso
itls.C0=CFrame.new(2, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
itls.Part0=miked:findFirstChild("Left Arm")

itrs=miked.Torso:findFirstChild("Right Shoulder")
itrs.Part1=miked.Torso
itrs.C0=CFrame.new(-2, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
itrs.Part0=miked:findFirstChild("Right Arm")

miked.Head:makeJoints()
------------------
------------------



function waitForChild(parent, childName)
	while true do
		local child = parent:findFirstChild(childName)
		if child then
			return child
		end
		parent.ChildAdded:wait()
	end
end

local Figure = script.Parent
local Torso = waitForChild(Figure, "Torso")
local RightShoulder = waitForChild(Torso, "Right Shoulder")
local LeftShoulder = waitForChild(Torso, "Left Shoulder")
local RightHip = waitForChild(Torso, "Right Hip")
local LeftHip = waitForChild(Torso, "Left Hip")
local Neck = waitForChild(Torso, "Neck")
local Humanoid = waitForChild(Figure, "Humanoid")
local pose = "Standing"

local toolAnim = "None"
local toolAnimTime = 0

local isSeated = false


function onRunning(speed)
	if isSeated then return end

	if speed>0 then
		pose = "Running"
	else
		pose = "Standing"
	end
end

function onDied()
	pose = "Dead"

	local parts = Figure:GetChildren()
	for i=1,#parts do
		if parts.className == "Part" then
			Debris.AddItem(parts[i], 60)
		end
	end
end

function onJumping()
	isSeated = false
	pose = "Jumping"
end

function onClimbing()
	pose = "Climbing"
end

function onGettingUp()
	pose = "GettingUp"
end

function onFreeFall()
	pose = "FreeFall"
end

function onDancing()
	pose = "Dancing"
end

function onFallingDown()
	pose = "FallingDown"
end

function onSeated()
	isSeated = true
	pose = "Seated"
end



function moveJump()
	RightShoulder.MaxVelocity = 0.5
	LeftShoulder.MaxVelocity = 0.5
	RightShoulder.DesiredAngle = -3.14
	LeftShoulder.DesiredAngle = -3.14
	RightHip.DesiredAngle = 0
	LeftHip.DesiredAngle = 0
end

function moveFreeFall()
	RightShoulder.MaxVelocity = 0.5
	LeftShoulder.MaxVelocity = 0.5
	RightShoulder.DesiredAngle = -1
	LeftShoulder.DesiredAngle = -1
	RightHip.DesiredAngle = 0
	LeftHip.DesiredAngle = 0
end

function moveFloat()
	RightShoulder.MaxVelocity = 0.5
	LeftShoulder.MaxVelocity = 0.5
	RightShoulder.DesiredAngle = -1.57
	LeftShoulder.DesiredAngle = 1.57
	RightHip.DesiredAngle = 1.57
	LeftHip.DesiredAngle = -1.57
end

function moveBoogy()
while pose=="Boogy" do
	wait(.5)
	RightShoulder.MaxVelocity = 1
	LeftShoulder.MaxVelocity = 1
	RightShoulder.DesiredAngle = -3.14
	LeftShoulder.DesiredAngle = 0
	RightHip.DesiredAngle = 1.57
	LeftHip.DesiredAngle = 0
	wait(.5)
	RightShoulder.MaxVelocity = 1
	LeftShoulder.MaxVelocity = 1
	RightShoulder.DesiredAngle = 0
	LeftShoulder.DesiredAngle = -3.14
	RightHip.DesiredAngle = 0
	LeftHip.DesiredAngle = 1.57
end
end

function moveZombie()
	RightShoulder.MaxVelocity = 0.5
	LeftShoulder.MaxVelocity = 0.5
	RightShoulder.DesiredAngle = -1.57
	LeftShoulder.DesiredAngle = 1.57
	RightHip.DesiredAngle = 0
	LeftHip.DesiredAngle = 0
end

function movePunch()
	script.Parent.Torso.Anchored=true
	RightShoulder.MaxVelocity = 60
	LeftShoulder.MaxVelocity = 0.5
	RightShoulder.DesiredAngle = -1.57
	LeftShoulder.DesiredAngle = 0
	RightHip.DesiredAngle = 0
	LeftHip.DesiredAngle = 0
wait(1)
script.Parent.Torso.Anchored=false
pose="Standing"

end

function moveKick()
	RightShoulder.MaxVelocity = 0.5
	LeftShoulder.MaxVelocity = 0.5
	RightShoulder.DesiredAngle = 0
	LeftShoulder.DesiredAngle = 0
	RightHip.MaxVelocity = 40
	RightHip.DesiredAngle = 1.57
	LeftHip.DesiredAngle = 0
wait(1)
pose="Standing"

end

function moveFly()
	RightShoulder.MaxVelocity = 0.5
	LeftShoulder.MaxVelocity = 0.5
	RightShoulder.DesiredAngle = 0
	LeftShoulder.DesiredAngle = 0
	RightHip.MaxVelocity = 40
	RightHip.DesiredAngle = 1.57
	LeftHip.DesiredAngle = 0
wait(1)
pose="Standing"

end


function moveClimb()
	RightShoulder.MaxVelocity = 0.5
	LeftShoulder.MaxVelocity = 0.5
	RightShoulder.DesiredAngle = -3.14
	LeftShoulder.DesiredAngle = 3.14
	RightHip.DesiredAngle = 0
	LeftHip.DesiredAngle = 0
end

function moveSit()
	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity = 0.15
	RightShoulder.DesiredAngle = -3.14 /2
	LeftShoulder.DesiredAngle = -3.14 /2
	RightHip.DesiredAngle = 3.14 /2
	LeftHip.DesiredAngle = -3.14 /2
end

function getTool()
	
	kidTable = Figure:children()
	if (kidTable ~= nil) then
		numKids = #kidTable
		for i=1,numKids do
			if (kidTable[i].className == "Tool") then return kidTable[i] end
		end
	end
	
	return nil
end

function getToolAnim(tool)

	c = tool:children()
	for i=1,#c do
		if (c[i].Name == "toolanim" and c[i].className == "StringValue") then
			return c[i]
		end
	end
	return nil
end

function animateTool()
	
	if (toolAnim == "None") then
		RightShoulder.DesiredAngle = -1.57
		return
	end

	if (toolAnim == "Slash") then
		RightShoulder.MaxVelocity = 0.5
		RightShoulder.DesiredAngle = 0
		return
	end

	if (toolAnim == "Lunge") then
		RightShoulder.MaxVelocity = 0.5
		LeftShoulder.MaxVelocity = 0.5
		RightHip.MaxVelocity = 0.5
		LeftHip.MaxVelocity = 0.5
		RightShoulder.DesiredAngle = -1.57
		LeftShoulder.DesiredAngle = 1.0
		RightHip.DesiredAngle = 1.57
		LeftHip.DesiredAngle = 1.0
		return
	end
end

function move(time)
	local amplitude
	local frequency

	if (pose == "Jumping") then
		moveJump()
		return
	end

	if (pose == "Zombie") then
		moveZombie()
		return
	end

	if (pose == "Boogy") then
		moveBoogy()
		return
	end

	if (pose == "Float") then
		moveFloat()
		return
	end

	if (pose == "Punch") then
		movePunch()
		return
	end

	if (pose == "Kick") then
		moveKick()
		return
	end

	if (pose == "Fly") then
		moveFly()
		return
	end

	if (pose == "FreeFall") then
		moveFreeFall()
		return
	end

	if (pose == "Climbing") then
		moveClimb()
		return
	end

	if (pose == "Seated") then
		moveSit()
		return
	end

		amplitude = 0.1
		frequency = 1

	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity = 0.15
	if (pose == "Running") then
		amplitude = 1
		frequency = 9
	elseif (pose == "Dancing") then
		amplitude = 2
		frequency = 16
	end


	desiredAngle = amplitude * math.sin(time*frequency)
	if pose~="Dancing" then
		RightShoulder.DesiredAngle = -desiredAngle
		LeftShoulder.DesiredAngle = desiredAngle
		RightHip.DesiredAngle = -desiredAngle
		LeftHip.DesiredAngle = -desiredAngle
	else
		RightShoulder.DesiredAngle = -desiredAngle
		LeftShoulder.DesiredAngle = desiredAngle
		RightHip.DesiredAngle = -desiredAngle
		LeftHip.DesiredAngle = -desiredAngle
	end
		


	local tool = getTool()

	if tool ~= nil then
	
		animStringValueObject = getToolAnim(tool)

		if animStringValueObject ~= nil then
			toolAnim = animStringValueObject.Value
			-- message recieved, delete StringValue
			animStringValueObject.Parent = nil
			toolAnimTime = time + .3
		end

		if time > toolAnimTime then
			toolAnimTime = 0
			toolAnim = "None"
		end

		animateTool()

		
	else
		toolAnim = "None"
		toolAnimTime = 0
	end
end


-- connect events
-----------------------------------------------------------------------------------------------------------------------

function unequip()
	local items=script.Parent:children()
	for i=1, #items do
		if items[i].className=="Tool" then items[i]:remove() end
	end
end




-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
dist=20

function followany()
following=true
	while following==true do

		local ch=game.Players:children()
		for i=1, #ch do
			local l=game.Workspace:findFirstChild(ch[i].Name)
			if l~=nil then
				local s=l.Torso
				local p=l.Torso.Position
				local q=script.Parent.Torso.Position
				local d=math.sqrt( ((p.x-q.x)^2)+((p.y-q.y)^2)+((p.z-q.z)^2) )
				if smallest==nil then
					smallest=d
					target=s
				elseif d<smallest then
					smallest=d
					target=s
				end
			end
		end

		if smallest==nil then stopmoving() return end
		
		if smallest>6*dist then return end
		
		script.Parent.Humanoid:MoveTo(target.Position, target)

		wait(0.5)
		for i=1, 6 do
			if target.Parent.Humanoid.Health<1 then stopmoving() else	wait(0.5) end
		end
	end
end



function gohome()
	script.Parent.Humanoid:MoveTo(Vector3.new(0,0,0), game.Workspace.Bases.Base)
end

function stopmoving()
	script.Parent.Humanoid:MoveTo(script.Parent.Torso.Position, script.Parent.Torso)
end

function follow(name)
	following=true

	local p=game.Workspace:findFirstChild(name)
	if p==nil then return end
	while following==true do	
		script.Parent.Humanoid:MoveTo(p.Torso.Position, p.Torso)
		wait(0.5)
		for i=1, 3 do
			if p.Humanoid.Health<1 then following=false; stopmoving() return end
			wait(0.5)
		end
	end
end


-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------


Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)


--[[

function newSound(id)
	local sound = Instance.new("Sound")
	sound.SoundId = id
	sound.Parent = script.Parent.Head
	return sound
end


local sDied = newSound("rbxasset://sounds/uuhhh.wav")
local sFallingDown = newSound("rbxasset://sounds/splat.wav")
local sFreeFalling = newSound("rbxasset://sounds/swoosh.wav")
local sGettingUp = newSound("rbxasset://sounds/hit.wav")
local sJumping = newSound("rbxasset://sounds/button.wav")
local sRunning = newSound("rbxasset://sounds/bfsl-minifigfoots1.mp3")
sRunning.Looped = true

local Figure = script.Parent
local Head = waitForChild(Figure, "Head")
local Humanoid = waitForChild(Figure, "Humanoid")


function onDied()
	sDied:play()
end

function onState(state, sound)
	if state then
		sound:play()
	else
		sound:pause()
	end
end

function onRunning(speed)
	if speed>0 then
		sRunning:play()
	else
		sRunning:pause()
	end
end


Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(function(state) onState(state, sJumping) end)
Humanoid.GettingUp:connect(function(state) onState(state, sGettingUp) end)
Humanoid.FreeFalling:connect(function(state) onState(state, sFreeFalling) end)
Humanoid.FallingDown:connect(function(state) onState(state, sFallingDown) end)
--]]

local nextTime = 0
local runService = game:service("RunService");

while Figure.Parent~=nil do
	time = runService.Stepped:wait()
	if time > nextTime then
		move(time)
		nextTime = time + 0.1
		wait(math.random(1,5))
		--local target = findNearestTorso(script.Parent.Torso.Position)
		--if target ~= nil then
		--	script.Parent.Zombie:MoveTo(target.Position, target)
		--end

		script.Parent.Humanoid:MoveTo(Vector3.new(math.random(-100,100),0,math.random(-100,100)), game.Workspace.Base)
	end
end