local npc = Instance.new("Model") 
npc.Name = "TestDummy" 
local leftarm = Instance.new("Part", npc) 
leftarm.Size = Vector3.new(1, 2, 1) 
leftarm.formFactor = "Symmetric" 
local leftleg = Instance.new("Part", npc) 
leftleg.Size = Vector3.new(1, 2, 1) 
leftleg.formFactor = "Symmetric" 
local rightarm = Instance.new("Part", npc) 
rightarm.Size = Vector3.new(1, 2, 1) 
rightarm.formFactor = "Symmetric" 
local rightleg = Instance.new("Part", npc) 
rightleg.Size = Vector3.new(1, 2, 1) 
rightleg.formFactor = "Symmetric" 
local torso = Instance.new("Part", npc) 
torso.Size = Vector3.new(2, 2, 1) 
torso.formFactor = "Symmetric" 
local head = Instance.new("Part", npc) 
head.Size = Vector3.new(2, 1, 1) 
head.formFactor = "Symmetric" 
local joints = {} 
local canRespawn = true 
local stance = "idle" 
local cachecopy = npc:Clone()

function MakeHuman()
	local h = Instance.new("Humanoid")
	h.MaxHealth = 100
	h.Health = 100
	h.WalkSpeed = 16
	h.Parent = npc
end

function ConnectWithInstance(instance)

	local c = Instance.new(instance)
	c.Part0 = torso
	c.Part1 = head
	c.C1 = c.Part1.CFrame:toObjectSpace(c.Part0.CFrame)
	c.Name = "HeadConnector"
	joints[c.Name] = c
	c.Parent = game.JointsService
	c = nil

	local c = Instance.new(instance)
	c.Part0 = torso
	c.Part1 = leftarm
	c.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(90))
	c.C1 = CFrame.new(0,-.5,0)
	c.Name = "LeftArmConnector"
	c.MaxVelocity = .15
	joints[c.Name] = c
	c.Parent = game.JointsService
	c = nil

	local c = Instance.new(instance)
	c.Part0 = torso
	c.Part1 = leftleg
	c.C0 = CFrame.new(-.5,-1.5,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(90))
	c.C1 = CFrame.new(0,-.5,0)
	c.Name = "LeftLegConnector"
	c.MaxVelocity = .15
	joints[c.Name] = c
	c.Parent = game.JointsService
	c = nil

	local c = Instance.new(instance)
	c.Part0 = torso
	c.Part1 = rightarm
	c.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(90))
	c.C1 = CFrame.new(0,-.5,0)
	c.Name = "RightArmConnector"
	c.MaxVelocity = .15
	joints[c.Name] = c
	c.Parent = game.JointsService
	c = nil

	local c = Instance.new(instance)
	c.Part0 = torso
	c.Part1 = rightleg
	c.C0 = CFrame.new(.5,-1.5,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(90))
	c.C1 = CFrame.new(0,-.5,0)
	c.Name = "RightLegConnector"
	c.MaxVelocity = .15
	joints[c.Name] = c
	c.Parent = game.JointsService
	c = nil

end

function UnAnchor()
	for i,v in pairs(npc:GetChildren()) do
		if v:IsA("Part") then
			v.Anchored = false
		end
	end
end

function AnimateFrame(time)
	local a
	local f
	local ca = 0
	if stance == "idle" then
		joints["RightArmConnector"].MaxVelocity = .15
		joints["LeftArmConnector"].MaxVelocity = .15
		a = .1
		f = 1
	elseif stance == "running" then
		joints["RightArmConnector"].MaxVelocity = .15
		joints["LeftArmConnector"].MaxVelocity = .15
		a = 1
		f = 9
	elseif stance == "jumping" then
		joints["RightArmConnector"].MaxVelocity = .5
		joints["LeftArmConnector"].MaxVelocity = .5
		joints["RightArmConnector"].DesiredAngle = 3.14
		joints["LeftArmConnector"].DesiredAngle = 3.14
		joints["RightLegConnector"].DesiredAngle = 0
		joints["LeftLegConnector"].DesiredAngle = 0
		return
	elseif stance == "climbing" then
		joints["RightArmConnector"].MaxVelocity = .5
		joints["LeftArmConnector"].MaxVelocity = .5
		a = 1
		f = 9
		ca = 3.14
	elseif stance == "sitting" then
		joints["RightArmConnector"].MaxVelocity = .15
		joints["LeftArmConnector"].MaxVelocity = .15
		joints["RightArmConnector"].DesiredAngle = 0
		joints["LeftArmConnector"].DesiredAngle = 0
		joints["RightLegConnector"].DesiredAngle = 1.57
		joints["LeftLegConnector"].DesiredAngle = 1.57
		return
	end
	local da = a * math.sin(time*f)
	joints["RightArmConnector"].DesiredAngle = -da - ca
	joints["LeftArmConnector"].DesiredAngle = da + ca
	joints["RightLegConnector"].DesiredAngle = da
	joints["LeftLegConnector"].DesiredAngle = -da
end

ConnectWithInstance("Motor6D")
MakeHuman()
UnAnchor()

npc.Humanoid.Running:connect(function(speed)
	if speed > 0 then
		stance = "running"
	else
		stance = "idle"
	end
end)

npc.Humanoid.Jumping:connect(function()
	stance = "jumping"
end)

npc.Humanoid.FreeFalling:connect(function()
	stance = "jumping" -- On purpose!
end)

npc.Humanoid.Seated:connect(function()
	stance = "sitting"
end)

coroutine.wrap(function()
	while true do
		local gt,time = wait()
		AnimateFrame(time)
	end 
end)()




-- Custom Code Below
