

local player = game:GetService("Players").LocalPlayer	

local bin = Instance.new("HopperBin", player.Backpack)

bin.Name = "Striker unit"
	
local camera = game:GetService("Workspace").CurrentCamera
local character = player.Character

local torso = character:FindFirstChild("Torso")
local humanoid = character:FindFirstChild("Humanoid")
local neck = torso:FindFirstChild("Neck")

local rightLeg = character:FindFirstChild("Right Leg")
local leftLeg = character:FindFirstChild("Left Leg")

local rightHip = torso:FindFirstChild("Right Hip")
local leftHip = torso:FindFirstChild("Left Hip")

local neckAngle = neck.C1
local rightHipAngle = rightHip.C1
local leftHipAngle = leftHip.C1

local leftWeld = Instance.new("Weld") 
local rightWeld = Instance.new("Weld") 

local velocity = Instance.new("BodyVelocity")
local gyro = Instance.new("BodyGyro")
local pos = Instance.new("BodyPosition")

local parts = {"StrikerOne", "StrikerTwo", "JointOne", "JointTwo", "PropellerOne", "PropellerTwo"}
local welds = {"SWelderOne", "SWelderTwo", "JWelderOne", "JWelderTwo", "PWelderOne", "PWelderTwo"}

local strikerColor = "Really black"
local propellerColor = "White"
local jointColor = "Bright blue"

local mainModel = Instance.new("Model")
local cframePart = Instance.new("Part")

local toolSelected = false
local runNext = false
local strikerLoaded = false
local connected = false
local turn = false
local forward = false
local backward = false
local onleft = false
local onright = false
local onup = false
local ondown = false


local gyroAngleX = 0
local desiredGyroAngleX = 0
local gyroAngleY = 0
local desiredGyroAngleY = 0
local gyroAngleZ = 0
local desiredGyroAngleZ = 0
local angleSetSpeed = 5
local rotationIndice = 0
local maxRotation = 70
local motorSpeed = 0
local desiredSpeed = 0
local xPartPos = 0
local desiredXPartPos = 0
local yPartPos = 0
local desiredYPartPos = 0

function Striker(delay) 

	wait(delay)

	mainModel.Name = "Striker"
	mainModel.Archivable = false
	mainModel.Parent = character

	for index, name in pairs(parts) do

		getfenv()[name] = Instance.new("Part")
		getfenv()[name].Name = name
		getfenv()[name].Anchored = true
		getfenv()[name].Locked = true
		getfenv()[name].CanCollide = false
		getfenv()[name].Transparency = 1
		getfenv()[name].CFrame = CFrame.new(0, math.huge, 0)
		getfenv()[name].FormFactor = Enum.FormFactor.Custom
		getfenv()[name].BottomSurface = Enum.SurfaceType.Smooth
		getfenv()[name].TopSurface = Enum.SurfaceType.Smooth
		
		if index <= 2 then
		
			getfenv()[name].BrickColor = BrickColor.new(strikerColor)
			getfenv()[name].Size = Vector3.new(1.1, 1.5, 1.1)
			
		elseif index == 3 or index == 4 then
		
			getfenv()[name].BrickColor = BrickColor.new(jointColor)
			getfenv()[name].Size = Vector3.new(0.25, 0.25, 0.25)

		elseif index >= 5 then
		
			getfenv()[name].BrickColor = BrickColor.new(propellerColor)
			getfenv()[name].Size = Vector3.new(1.55, 0.2, 0.2)
			
		end
		
		getfenv()[name].Parent = mainModel
		
		coroutine.resume(coroutine.create(function()
		
			for i = getfenv()[name].Transparency, 0, -0.1 do 
			
				if toolSelected then wait() getfenv()[name].Transparency = i end
				
			end
		
		end))
		
	end
	
	for index, name in pairs(welds) do
	
		getfenv()[name] = Instance.new("Weld")
		getfenv()[name].Parent = mainModel
		getfenv()[name].Name = name
		
		if index == 1 then 
		
			getfenv()[name].Part0 = leftLeg 
			StrikerOne.Anchored = false
			getfenv()[name].Part1 = StrikerOne
			getfenv()[name].C1 = CFrame.new(0, 0.35, 0)
			
		elseif index == 2 then 
		
			getfenv()[name].Part0 = rightLeg
			StrikerTwo.Anchored = false
			getfenv()[name].Part1 = StrikerTwo
			getfenv()[name].C1 = CFrame.new(0, 0.35, 0)
			
		elseif index == 3 then 
		
			getfenv()[name].Part0 = StrikerOne
			JointOne.Anchored = false
			getfenv()[name].Part1 = JointOne
			getfenv()[name].C1 = CFrame.new(0, 0.775, 0)
			JointOne.CanCollide = true
			
		elseif index == 4 then 
		
			getfenv()[name].Part0 = StrikerTwo 
			JointTwo.Anchored = false
			getfenv()[name].Part1 = JointTwo
			getfenv()[name].C1 = CFrame.new(0, 0.775, 0)
			JointTwo.CanCollide = true
			
		elseif index == 5 then 
		
			getfenv()[name].Part0 = JointOne
			PropellerOne.Anchored = false
			getfenv()[name].Part1 = PropellerOne
		
		elseif index == 6 then 
		
			getfenv()[name].Part0 = JointTwo
			PropellerTwo.Anchored = false
			getfenv()[name].Part1 = PropellerTwo
			
		end
		
	end
	
	wait(0.1)
	
	strikerLoaded = true
	
end

function SetAngles(cfr, x, y, z) print("Settings")

	local x2, y2, z2 = cfr.C1:toEulerAnglesXYZ()
	
	x = math.rad(x)
	y = math.rad(y)
	z = math.rad(z)
	
	x2 = math.rad(x2)
	y2 = math.rad(y2)
	z2 = math.rad(z2)

	coroutine.resume(coroutine.create(function() local v1 local v2
	
		if x2 < x then v1, v2 = x2, x else v1, v2 = x, x2 end 
		
		for i = v1, v2, (v2 - v1) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(i/v2, 0, 0)
			
		end 
		
	end))
	
	coroutine.resume(coroutine.create(function() local v3 local v4
	
		if y2 < y then v3, v4 = y2, y else v3, v4 = y, x2 end
		
		for i = v3, v4, (v2 - v1) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(0, i/v4, 0) 
			
		end 
		
	end))
	
	coroutine.resume(coroutine.create(function() local v5 local v6
	
		if z2 < z then v5, v6 = z2, z else v5, v6 = z, z2 end
		
		for i = v5, v6, (v5 - v6) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(0, 0, i/v6)
			
		end 
		
	end))
	
end

function Connection(mouse)

	toolSelected = true

	coroutine.resume(coroutine.create(function() repeat wait()

		if toolSelected then
		
			if leftHip ~= nil then
			
				leftHip.DesiredAngle = 0
				leftHip.CurrentAngle = 0
				
			end
		
			if rightHip ~= nil then
			
				rightHip.DesiredAngle = 0
				rightHip.CurrentAngle = 0
				
			end
			
			runNext = true
		
		else break end

	until false return false end))
	
	repeat wait() until runNext
	
	humanoid.PlatformStand = true
	
	torso.Anchored = true wait()
	torso.Velocity = Vector3.new(0, 0, 0)
	torso.RotVelocity = Vector3.new(0, 0, 0)
	
	leftHipAngle = leftHip.C1
	rightHipAngle = rightHip.C1
	
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.Parent = torso
	pos.position = torso.CFrame.p
	
	torso.Anchored = false
	
	coroutine.resume(coroutine.create(Striker),0.2)
	
	for i = 1, 20, 1 do wait()
	
		if toolSelected then
		
			pos.position = pos.position + Vector3.new(0, 0.2, 0)
			torso.CFrame = torso.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(18), 0)
			humanoid.PlatformStand = true
	
			leftHip.C1 = leftHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), -math.rad(0.5), -math.rad(0.5))
			rightHip.C1 = rightHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), math.rad(0.5), math.rad(0.5))
			
		end
		
	end
	
	local x22, y22, z22 = leftHip.C1:toEulerAnglesXYZ()
	
	repeat wait() until strikerLoaded
	
	gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	gyro.Parent = torso
	gyro.P = 1500
	
	velocity.Parent = torso
	velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	velocity.P = 125
	
	if pos ~= nil then if pos.Parent == torso then pos:remove() end end
	
	coroutine.resume(coroutine.create(function()
	
		while strikerLoaded do wait(0.03405) if toolSelected and rotationIndice < maxRotation then rotationIndice = rotationIndice + 0.25 
		
			if desiredSpeed ~= 0 then if desiredSpeed > 0 then motorSpeed = desiredSpeed - (maxRotation - rotationIndice) elseif desiredSpeed < 0 then motorSpeed = desiredSpeed + (maxRotation - rotationIndice) end else motorSpeed = 0 end
			if desiredXPartPos ~= 0 then if desiredXPartPos > 0 then xPartPos = desiredXPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredXPartPos < 0 then xPartPos = desiredXPartPos + (maxRotation/2 - rotationIndice/2) end else xPartPos = 0 end
			if desiredYPartPos ~= 0 then if desiredYPartPos > 0 then yPartPos = desiredYPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredYPartPos < 0 then yPartPos = desiredYPartPos + (maxRotation/2 - rotationIndice/2) end else yPartPos = 0 end
			
			if desiredGyroAngleX ~= 0 then if desiredGyroAngleX > 0 then gyroAngleX = math.rad(desiredGyroAngleX - (maxRotation - rotationIndice)) elseif desiredGyroAngleX < 0 then gyroAngleX = math.rad(desiredGyroAngleX + (maxRotation - rotationIndice)) end else gyroAngleX = 0 end
			if desiredGyroAngleY ~= 0 then if desiredGyroAngleY > 0 then gyroAngleY = math.rad(desiredGyroAngleY - (maxRotation - rotationIndice)) elseif desiredGyroAngleY < 0 then gyroAngleY = math.rad(desiredGyroAngleY + (maxRotation - rotationIndice)) end else gyroAngleY = 0 end
			if desiredGyroAngleZ ~= 0 then if desiredGyroAngleZ > 0 then gyroAngleZ = math.rad(desiredGyroAngleZ - (maxRotation - rotationIndice)) elseif desiredGyroAngleZ < 0 then gyroAngleZ = math.rad(desiredGyroAngleZ + (maxRotation - rotationIndice)) end else gyroAngleZ = 0 end
		
			elseif toolSelected and rotationIndice == maxRotation then humanoid.PlatformStand = true motorSpeed = desiredSpeed gyroAngleX = math.rad(desiredGyroAngleX) gyroAngleY = math.rad(desiredGyroAngleY) gyroAngleZ = math.rad(desiredGyroAngleZ) xPartPos = desiredXPartPos yPartPos = desiredYPartPos end
		
			if PropellerOne ~= nil and PWelderOne ~= nil then
			
				PWelderOne.C1 = PWelderOne.C1 * CFrame.fromEulerAnglesXYZ(0, -math.rad(rotationIndice), 0)
				
			end
			
			if PropellerTwo ~= nil and PWelderTwo ~= nil then
			
				PWelderTwo.C1 = PWelderTwo.C1 * CFrame.fromEulerAnglesXYZ(0, math.rad(rotationIndice), 0)
				
			end
			
			if cframePart ~= nil then

				cframePart.Size = Vector3.new(0.2, 0.2, 0.2)
				cframePart.CFrame = CFrame.new(torso.CFrame.p, camera.CoordinateFrame.lookVector * 10000000) + Vector3.new(xPartPos, yPartPos, 0)
				
			end
			
			if velocity ~= nil then if velocity.Parent == torso then velocity.velocity = (cframePart.CFrame - cframePart.CFrame.p) * Vector3.new(xPartPos, yPartPos, -motorSpeed) end end
			if gyro ~= nil then if gyro.Parent == torso then gyro.cframe = CFrame.new(gyro.cframe.p, camera.CoordinateFrame.lookVector * 10000000) * CFrame.fromEulerAnglesXYZ(gyroAngleX, gyroAngleY, gyroAngleZ) end end
			
		end return
		
	end)) connected = true stand = true
	
	mouse.KeyDown:connect(function(key) key = key:lower()
	
		if key == "w" then ForwardDown()
		elseif key == "s" then BackwardDown()
		elseif key == "a" then LeftDown()
		elseif key == "d" then RightDown()
		elseif key == "e" then UpDown()
		elseif key == "q" then DownDown()
		
	end end)
	
	mouse.KeyUp:connect(function(key) key = key:lower()
	
		if key == "w" then ForwardUp() if backward then BackwardDown() end
		elseif key == "s" then BackwardUp() if forward then ForwardDown() end
		elseif key == "a" then LeftUp() if onright then RightDown() end
		elseif key == "d" then RightUp() if onleft then LeftDown() end
		elseif key == "e" then UpUp() if ondown then DownDown() end
		elseif key == "q" then DownUp() if onup then UpDown() end
		
	end end)

end

function Disconnection()

	toolSelected = false wait()
	
	for index, name in pairs(parts) do 
	
		if getfenv()[name] ~= nil then
		
			coroutine.resume(coroutine.create(function()
			
				for i = getfenv()[name].Transparency, 1, 0.1 do wait()
						
					getfenv()[name].Transparency = i
							
				end
			
			end))
			
		end 
		
	end
	
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.Parent = torso
	pos.position = torso.CFrame.p
	
	coroutine.resume(coroutine.create(Striker),0.2)
	
	for i = 1, 10, 1 do wait()
		
		pos.position = pos.position - Vector3.new(0, 0.15, 0)
		humanoid.PlatformStand = true

		leftHip.C1 = leftHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), -math.rad(-1), -math.rad(-1))
		rightHip.C1 = rightHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-1), math.rad(-1))
		
	end wait()
	
	humanoid.PlatformStand = false
	
	if pos ~= nil then if pos.Parent == torso then pos:remove() end end
	if gyro ~= nil then if gyro.Parent == torso then gyro:remove() end end
	if velocity ~= nil then if velocity.Parent == torso then velocity:remove() end end
	if mainModel ~= nil then mainModel:remove() end
	
	strikerLoaded = false
	rotationIndice = 0
	motorSpeed = 0
	desiredSpeed = 0
	
	ForwardUp()
	BackwardUp()
	LeftUp()
	RightUp()
	
	forward = false
	backward = false
	onleft = false
	onright = false
	onup = false
	ondown = false
	
	leftHip.C1 = leftHipAngle
	rightHip.C1 = rightHipAngle
	
	connected = false

end

function ForwardDown() forward = true

	desiredGyroAngleX = -maxRotation
	desiredSpeed = maxRotation

end

function BackwardDown() backward = true

	desiredGyroAngleX = maxRotation
	desiredSpeed = -maxRotation

end

function ForwardUp() forward = false

	desiredGyroAngleX = 0
	desiredSpeed = 0

end

function BackwardUp() backward = false

	desiredGyroAngleX = 0
	desiredSpeed = 0

end

function LeftDown() onleft = true

	desiredGyroAngleY = -maxRotation
	desiredXPartPos = -maxRotation/2

end

function RightDown() onright = true

	desiredGyroAngleY = maxRotation
	desiredXPartPos = maxRotation/2

end

function LeftUp() onleft = false

	desiredGyroAngleY = 0
	desiredXPartPos = 0

end

function RightUp() onright = false

	desiredGyroAngleY = 0
	desiredXPartPos = 0

end

function UpDown() onup = true

	desiredYPartPos = maxRotation/2

end

function DownDown() ondown = true

	desiredYPartPos = -maxRotation/2

end

function UpUp() onup = false

	desiredYPartPos = 0

end

function DownUp() ondown = false

	desiredYPartPos = 0

end


bin.Selected:connect(Connection)
bin.Deselected:connect(Disconnection)

--mediafire
		