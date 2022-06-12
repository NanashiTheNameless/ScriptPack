--[[
Vehicle Support v8
Variables:

Health
MaxHealth
ToughnessMinorDamage
ToughnessMajorDamage

DriftAcceleration
DriftSteerDifficulty
DriftSteerPower

Acceleration
TopSpeed
Deceleration
BrakePower

SteerDifficulty
SteerPower

TireFriction
TireElasticity
MasterColor
Wrecked

Vehicle (Model)
Base (Part)
Thrust (BodyVelocity)
Steer (BodyGyro)
Seat (VehicleSeat)
--]]


Wheels = {}
RearTraction = false
FrontTraction = false

DriftCheck = 0
Drifting = false

ThrottlePercent = 0
IsBraking = false

SteerPercent = 0

if Wrecked == true then Health = math.random(1, MaxHealth) end

for _, Part in pairs(Vehicle:GetChildren()) do
	if Part:IsA("BasePart") then
		Part.Locked = true
		if Wrecked == true then
			pcall(function() Part.Weld.C1 = Part.Weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-7.5, 7.5)), math.rad(math.random(-7.5, 7.5)), math.rad(math.random(-7.5, 7.5))) end)
			if math.random(1, 5) == 1 then Part.Material = "CorrodedMetal" end
			if math.random(1, 10) == 1 then Part.BrickColor = BrickColor.new("Black") end
			if math.random(1, 50) == 1 then Part.BrickColor = BrickColor.new("Really black") end
		end
		if string.match(Part.Name, "VehicleSeat") == nil and string.match(Part.Name, "VehicleEngine") == nil and string.match(Part.Name, "VehicleBase") == nil and string.match(Part.Name, " Wheel") == nil then
			Part.Touched:connect(function(Hit)
				if Hit.Parent == nil then return end
				if Hit.Parent == Vehicle then return end
				if Hit.CanCollide == false then return end
				if Part:FindFirstChild("Weld") == nil then return end
				if string.match(Hit.Name, "VehicleSeat") or string.match(Hit.Name, "VehicleEngine") or string.match(Hit.Name, "VehicleBase") then return end
				local velocity1 = {
					math.abs(Part.Velocity.x),
					math.abs(Part.Velocity.y),
					math.abs(Part.Velocity.z)
				}
				local rotvelocity1 = {
					math.abs(Part.RotVelocity.x),
					math.abs(Part.RotVelocity.y),
					math.abs(Part.RotVelocity.z)
				}
				local velocity2 = {
					math.abs(Hit.Velocity.x),
					math.abs(Hit.Velocity.y),
					math.abs(Hit.Velocity.z)
				}
				local rotvelocity2 = {
					math.abs(Hit.RotVelocity.x),
					math.abs(Hit.RotVelocity.y),
					math.abs(Hit.RotVelocity.z)
				}
				for i = 1, #velocity1 do
					local Total = math.abs(velocity1[i] - velocity2[i])
					if Total > ToughnessMinorDamage / 2 then
						Health = Health - (Total / 10)
					end
					if Total > ToughnessMinorDamage then
						ThrottlePercent = ThrottlePercent * 0.9
						pcall(function() Part.Weld.C0 = Part.Weld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10))) end)
						pcall(function() Part.Weld.C1 = Part.Weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10))) end)
					end
					if Total > ToughnessMajorDamage and Hit:GetMass() > 3 then
						ThrottlePercent = 0
						Part:BreakJoints()
						Part.Velocity = Part.Velocity + math.random(math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10))
						Part.RotVelocity = Part.RotVelocity + math.random(math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25))
					end
					if Total > math.random(50, 75) then
						if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
							local Tag = Instance.new("ObjectValue", Hit.Parent.Humanoid)
							Tag.Name = "creator"
							Tag.Value = Driver
							coroutine.wrap(function() wait(1) Tag:Remove() end)()
						end
						Hit:BreakJoints()
					end
				end
				for i = 1, #rotvelocity1 do
					local Total = math.abs(velocity1[i] - velocity2[i])
					if Total > ToughnessMinorDamage / 4 and not string.match(Part.Name, " Wheel") then
						Health = Health - (Total / 10)
					end
					if Total > ToughnessMinorDamage / 2 and not string.match(Part.Name, " Wheel") then
						ThrottlePercent = ThrottlePercent * 0.9
						pcall(function() Part.Weld.C0 = Part.Weld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10))) end)
						pcall(function() Part.Weld.C1 = Part.Weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10))) end)
					end
					if Total > ToughnessMajorDamage / 2 and Hit:GetMass() > 3 then
						ThrottlePercent = ThrottlePercent * 0.75
						Part:BreakJoints()
						Part.Velocity = Part.Velocity + Vector3.new(math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10))
						Part.RotVelocity = Part.RotVelocity + Vector3.new(math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25))
					end
					if Total > math.random(50, 75) then
						if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
							local Tag = Instance.new("ObjectValue", Hit.Parent.Humanoid)
							Tag.Name = "creator"
							Tag.Value = Driver
							coroutine.wrap(function() wait(1) Tag:Remove() end)()
						end
						Hit:BreakJoints()
					end
				end
			end)
		end
		if string.match(Part.Name, " Wheel") then
			table.insert(Wheels, Part)
		end
		Part.ChildRemoved:connect(function(Object)
			if Object.Name == "Weld" then
				Health = Health - 25
			end
		end)
	end
end


while true do
	RearTraction = false
	FrontTraction = false
	for _, Part in pairs(Wheels) do
		local Hit = Workspace:FindPartOnRay(Ray.new(Part.Position, (Part.Position - (Part.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90)) * CFrame.new(0, -1, 0)).p).unit * ((Part.Size.x / 2) + 0.5)), Vehicle)
		if Hit ~= nil and Part:FindFirstChild("Weld") ~= nil then
			if string.match(Part.Name, "Rear") then
				RearTraction = true
			else
				FrontTraction = true
			end
		end
	end
	if Vehicle:FindFirstChild("VehicleEngine") ~= nil then
		if Vehicle.VehicleEngine:FindFirstChild("Weld") == nil then
			Health = 0
		end
		if pcall(function() return EffectHolder.Parent end) == false then
			EffectHolder = Instance.new("Part")
			EffectHolder.Name = ""
			EffectHolder.CanCollide = false
			EffectHolder.Anchored = true
			EffectHolder.FormFactor = "Custom"
			EffectHolder.Size = Vector3.new(1, 1, 1)
			EffectHolder.TopSurface = 0
			EffectHolder.BottomSurface = 0
			EffectHolder.Transparency = 1
			EffectHolder.Parent = Vehicle
		end
		EffectHolder.CFrame = CFrame.new(Vehicle.VehicleEngine.Position)
		for _, Part in pairs(EffectHolder:GetChildren()) do
			pcall(function() Part.Enabled = false end)
		end
		if Health <= 0 then
			if EffectHolder:FindFirstChild("Smoke 0") == nil then
				local Smoke = Instance.new("Smoke")
				Smoke.Name = "Smoke 0"
				Smoke.Color = Color3.new(0.05, 0.05, 0.05)
				Smoke.RiseVelocity = 12.5
				Smoke.Size = 12.5
				Smoke.Parent = EffectHolder
			end
			if EffectHolder:FindFirstChild("Fire 0") == nil then
				local Fire = Instance.new("Fire")
				Fire.Name = "Fire 0"
				Fire.Heat = 10
				Fire.Size = 20
				Fire.Parent = EffectHolder
			end
			EffectHolder["Smoke 0"].Enabled = true
			EffectHolder["Fire 0"].Enabled = true
		elseif Health < MaxHealth * 0.15 then
			if EffectHolder:FindFirstChild("Smoke 1") == nil then
				local Smoke = Instance.new("Smoke")
				Smoke.Name = "Smoke 1"
				Smoke.Color = Color3.new(0.25, 0.25, 0.25)
				Smoke.RiseVelocity = 10
				Smoke.Size = 10
				Smoke.Parent = EffectHolder
			end
			if EffectHolder:FindFirstChild("Fire 1") == nil then
				local Fire = Instance.new("Fire")
				Fire.Name = "Fire 1"
				Fire.Heat = 5
				Fire.Size = 10
				Fire.Parent = EffectHolder
			end
			EffectHolder["Smoke 1"].Enabled = true
			EffectHolder["Fire 1"].Enabled = true
		elseif Health < MaxHealth * 0.2 then
			if EffectHolder:FindFirstChild("Smoke 2") == nil then
				local Smoke = Instance.new("Smoke")
				Smoke.Name = "Smoke 2"
				Smoke.Color = Color3.new(0.5, 0.5, 0.5)
				Smoke.RiseVelocity = 9
				Smoke.Size = 7.5
				Smoke.Parent = EffectHolder
			end
			EffectHolder["Smoke 2"].Enabled = true
		elseif Health < MaxHealth * 0.3 then
			if EffectHolder:FindFirstChild("Smoke 3") == nil then
				local Smoke = Instance.new("Smoke")
				Smoke.Name = "Smoke 3"
				Smoke.Color = Color3.new(0.75, 0.75, 0.75)
				Smoke.RiseVelocity = 7.5
				Smoke.Size = 5
				Smoke.Parent = EffectHolder
			end
			EffectHolder["Smoke 3"].Enabled = true
		elseif Health < MaxHealth * 0.4 then
			if EffectHolder:FindFirstChild("Smoke 4") == nil then
				local Smoke = Instance.new("Smoke")
				Smoke.Name = "Smoke 4"
				Smoke.Color = Color3.new(1, 1, 1)
				Smoke.RiseVelocity = 5
				Smoke.Size = 3
				Smoke.Parent = EffectHolder
			end
			EffectHolder["Smoke 4"].Enabled = true
		end
	else
		Health = 0
		if EffectHolder ~= nil then
			EffectHolder:Remove()
			EffectHolder = nil
		end
	end
	if ThrottlePercent < 0.2 then
		Drifting = false
		DriftCheck = 0
	end
	if Seat.Throttle == 1 then
		if ThrottlePercent > 0.2 and tick() - DriftCheck < 0.5 and Drifting == false then
			coroutine.wrap(function()
				DriftCheck = 0
				Drifting = true
				local OldAcceleration = Acceleration
				local OldSteerDifficulty = SteerDifficulty
				local OldSteerPower = SteerPower
				Acceleration = DriftAcceleration
				SteerDifficulty = DriftSteerDifficulty
				SteerPower = DriftSteerPower
				local EffectHolder1 = Instance.new("Part")
				EffectHolder1.Name = ""
				EffectHolder1.CanCollide = false
				EffectHolder1.Anchored = true
				EffectHolder1.FormFactor = "Custom"
				EffectHolder1.Size = Vector3.new(1, 1, 1)
				EffectHolder1.TopSurface = 0
				EffectHolder1.BottomSurface = 0
				EffectHolder1.Transparency = 1
				EffectHolder1.Parent = Vehicle
				local Smoke = Instance.new("Smoke")
				Smoke.Color = Color3.new(0.9, 0.9, 0.9)
				Smoke.RiseVelocity = 15
				Smoke.Size = 10
				Smoke.Parent = EffectHolder1
				local EffectHolder2 = Instance.new("Part")
				EffectHolder2.Name = ""
				EffectHolder2.CanCollide = false
				EffectHolder2.Anchored = true
				EffectHolder2.FormFactor = "Custom"
				EffectHolder2.Size = Vector3.new(1, 1, 1)
				EffectHolder2.TopSurface = 0
				EffectHolder2.BottomSurface = 0
				EffectHolder2.Transparency = 1
				EffectHolder2.Parent = Vehicle
				local Smoke = Instance.new("Smoke")
				Smoke.Color = Color3.new(0.9, 0.9, 0.9)
				Smoke.RiseVelocity = 15
				Smoke.Size = 10
				Smoke.Parent = EffectHolder2
				while Drifting == true do
					if pcall(function() return Vehicle["Rear Left Wheel"].Weld end) == true then
						EffectHolder1.CFrame = Vehicle["Rear Left Wheel"].CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
					else
						EffectHolder1.Smoke.Enabled = false
					end
					if pcall(function() return Vehicle["Rear Right Wheel"].Weld end) == true then
						EffectHolder2.CFrame = Vehicle["Rear Right Wheel"].CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
					else
						EffectHolder2.Smoke.Enabled = false
					end
					wait()
				end
				Acceleration = OldAcceleration
				SteerDifficulty = OldSteerDifficulty
				SteerPower = OldSteerPower
				EffectHolder1.Smoke.Enabled = false
				EffectHolder2.Smoke.Enabled = false
				wait(7.5)
				EffectHolder1:Remove()
				EffectHolder2:Remove()
			end)()
			coroutine.wrap(function()
				while Drifting == true do
					if pcall(function() return Vehicle["Rear Left Wheel"].Weld end) == true then
						local DriftSound = Instance.new("Sound")
						DriftSound.SoundId = "http://www.roblox.com/Asset/?id=31245495"
						DriftSound.Volume = 1
						DriftSound.Pitch = math.random(90, 120) / 100
						DriftSound.Parent = Vehicle["Rear Left Wheel"]
						DriftSound:Play()
					end
					wait(math.random(35, 60) / 100)
				end
			end)()
			coroutine.wrap(function()
				while Drifting == true do
					if pcall(function() return Vehicle["Rear Right Wheel"].Weld end) == true then
						local DriftSound = Instance.new("Sound")
						DriftSound.SoundId = "http://www.roblox.com/Asset/?id=31245495"
						DriftSound.Volume = 1
						DriftSound.Pitch = math.random(90, 120) / 100
						DriftSound.Parent = Vehicle["Rear Right Wheel"]
						DriftSound:Play()
					end
					wait(math.random(35, 60) / 100)
				end
			end)()
			coroutine.wrap(function()
				while Drifting == true do
					if pcall(function() return Vehicle["Rear Wheel"].Weld end) == true then
						local DriftSound = Instance.new("Sound")
						DriftSound.SoundId = "http://www.roblox.com/Asset/?id=31245495"
						DriftSound.Volume = 1
						DriftSound.Pitch = math.random(90, 120) / 100
						DriftSound.Parent = Vehicle["Rear Wheel"]
						DriftSound:Play()
					end
					wait(math.random(35, 60) / 100)
				end
			end)()
		end
		if ThrottlePercent < 0 then
			ThrottlePercent = ThrottlePercent + BrakePower
			IsBraking = true
		else
			ThrottlePercent = ThrottlePercent + Acceleration
			IsBraking = false
		end
	elseif Seat.Throttle == -1 then
		Drifting = false
		if ThrottlePercent > 0.1 then
			ThrottlePercent = ThrottlePercent - BrakePower
			IsBraking = true
			DriftCheck = tick()
		else
			ThrottlePercent = ThrottlePercent - Acceleration
		end
	else
		if ThrottlePercent < 0 then
			ThrottlePercent = ThrottlePercent + Deceleration
		elseif ThrottlePercent > 0 then
			ThrottlePercent = ThrottlePercent - Deceleration
		end
		if ThrottlePercent > -Deceleration * 1.1 and ThrottlePercent < Deceleration * 1.1 then
			ThrottlePercent = 0
		end
	end
	if ThrottlePercent > 1 then ThrottlePercent = 1 end
	if ThrottlePercent < -1 then ThrottlePercent = -1 end
	if ThrottlePercent ~= 0 and RearTraction == true and (pcall(function() return Vehicle["Rear Left Wheel"].Weld end) == true or pcall(function() return Vehicle["Rear Right Wheel"].Weld end) == true or pcall(function() return Vehicle["Rear Wheel"].Weld end) == true) and Health > 0 then
		Thrust.maxForce = Vector3.new(math.huge, 0, math.huge)
		Thrust.velocity = Base.CFrame.lookVector * (TopSpeed * ThrottlePercent)
	else
		Thrust.maxForce = Vector3.new()
	end
	if Seat.Steer == 1 then
		SteerPercent = SteerPercent - (SteerDifficulty * (1 - (math.abs(ThrottlePercent) / 10)))
	elseif Seat.Steer == -1 then
		SteerPercent = SteerPercent + (SteerDifficulty * (1 - (math.abs(ThrottlePercent) / 10)))
	else
		if SteerPercent < 0 then
			SteerPercent = SteerPercent + SteerDifficulty
		elseif SteerPercent > 0 then
			SteerPercent = SteerPercent - SteerDifficulty
		end
		if SteerPercent > -SteerDifficulty * 1.1 and SteerPercent < SteerDifficulty * 1.1 then
			SteerPercent = 0
			Drifting = false
		end
	end
	if SteerPercent > 1 then SteerPercent = 1 end
	if SteerPercent < -1 then SteerPercent = -1 end
	if SteerPercent ~= 0 and RearTraction == true and FrontTraction == true and (pcall(function() return Vehicle["Rear Left Wheel"].Weld end) == true or pcall(function() return Vehicle["Rear Right Wheel"].Weld end) == true) and (pcall(function() return Vehicle["Front Left Wheel"].Weld end) == true or pcall(function() return Vehicle["Front Right Wheel"].Weld end) == true) and Health > 0 then
		Steer.maxTorque = Vector3.new(0, math.huge, 0)
		Steer.cframe = (Base.CFrame - Base.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad((SteerPercent * SteerPower) * ((ThrottlePercent * 10) > 1 and 1 or (ThrottlePercent * 10))), 0)
		ThrottlePercent = ThrottlePercent - ((Acceleration * 0.95) * (1 - math.abs(SteerPercent)))
		ThrottlePercent = ThrottlePercent - (Acceleration * (SteerPercent / 2))
	else
		Steer.maxTorque = Vector3.new()
		Steer.cframe = CFrame.new()
	end
	local SteerAngle = SteerPercent * (SteerPower * 1.5)
	if SteerAngle > 80 then SteerAngle = 80 end
	if SteerAngle < -80 then SteerAngle = -80 end
	for _, Part in pairs(Wheels) do
		if string.match(Part.Name, "Front ") then
			pcall(function()
				Part.Weld.C0 = CFrame.new(Part.Weld.C0.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(SteerAngle), math.rad(90))
			end)
		end
	end
	if Seat:FindFirstChild("SeatWeld") ~= nil and Driver == nil then
		local Part1 = Seat.SeatWeld.Part1
		if Part1 ~= nil then
			Driver = game:GetService("Players"):GetPlayerFromCharacter(Part1.Parent)
			if Driver ~= nil then
				local PlayerGui = Driver:FindFirstChild("PlayerGui")
				if PlayerGui == nil then return end
				local DriverGui = Instance.new("ScreenGui", PlayerGui)
				DriverGui.Name = "DriverGui"
				local Frame = Instance.new("Frame")
				Frame.Name = "Content"
				Frame.Size = UDim2.new(1, 0, 0, 100)
				Frame.Position = UDim2.new(0, 0, 1, -100)
				Frame.BorderSizePixel = 1
				Frame.BorderColor3 = Color3.new(0, 0, 0)
				Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
				Frame.Parent = DriverGui
				local TextLabel = Instance.new("TextLabel")
				TextLabel.Name = "SpeedText1"
				TextLabel.Size = UDim2.new(0, 85, 0, 15)
				TextLabel.Position = UDim2.new(0, 15, 0, 7.5)
				TextLabel.BorderSizePixel = 0
				TextLabel.BackgroundTransparency = 1
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.Text = "Speed"
				TextLabel.TextXAlignment = "Left"
				TextLabel.FontSize = "Size12"
				TextLabel.Parent = DriverGui.Content
				local TextLabel = Instance.new("TextLabel")
				TextLabel.Name = "SpeedText2"
				TextLabel.Size = UDim2.new(0, 85, 0, 15)
				TextLabel.Position = UDim2.new(0, 15, 0, 7.5 + 15)
				TextLabel.BorderSizePixel = 0
				TextLabel.BackgroundTransparency = 1
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.Text = "Bricks/sec."
				TextLabel.TextXAlignment = "Left"
				TextLabel.FontSize = "Size12"
				TextLabel.Parent = DriverGui.Content
				for i = 0, 1, 0.1 do
					local TextLabel = Instance.new("TextLabel")
					TextLabel.Name = "SpeedTextInc" ..i
					TextLabel.Size = UDim2.new(0, 0, 0, 15)
					TextLabel.Position = UDim2.new(0, 92 + (i * 200), 0, 37.5)
					TextLabel.BorderSizePixel = 1
					TextLabel.BackgroundTransparency = 0
					TextLabel.TextColor3 = Color3.new(1, 1, 1)
					TextLabel.Text = math.floor(TopSpeed * i)
					TextLabel.TextXAlignment = "Left"
					TextLabel.Parent = DriverGui.Content
				end
				local Frame = Instance.new("Frame")
				Frame.Name = "SpeedBack"
				Frame.Size = UDim2.new(0, 200, 0, 30)
				Frame.Position = UDim2.new(0, 100, 0, 7.5)
				Frame.BorderSizePixel = 1
				Frame.BorderColor3 = Color3.new(0, 0, 0)
				Frame.BackgroundColor3 = Color3.new(0, 0, 0)
				Frame.Parent = DriverGui.Content
				local Frame = Instance.new("Frame")
				Frame.Name = "SpeedFront"
				Frame.BorderSizePixel = 1
				Frame.BorderColor3 = Color3.new(0, 0, 0)
				Frame.BackgroundColor3 = Color3.new(0, 0, 0.9)
				Frame.Parent = DriverGui.Content
				coroutine.wrap(function()
					while DriverGui.Parent ~= nil do
						DriverGui.Content.SpeedFront.Size = DriverGui.Content.SpeedBack.Size - UDim2.new(0, DriverGui.Content.SpeedBack.Size.X.Offset * (1 - math.abs(ThrottlePercent)), 0, 0)
						DriverGui.Content.SpeedFront.Position = DriverGui.Content.SpeedBack.Position
						wait()
					end
				end)()
				local TextLabel = Instance.new("TextLabel")
				TextLabel.Name = "DamageText"
				TextLabel.Size = UDim2.new(0, 85, 0, 30)
				TextLabel.Position = UDim2.new(0, 215, 0, 57.5)
				TextLabel.BorderSizePixel = 0
				TextLabel.BackgroundTransparency = 1
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.Text = "Damage"
				TextLabel.TextXAlignment = "Left"
				TextLabel.FontSize = "Size12"
				TextLabel.Parent = DriverGui.Content
				local Frame = Instance.new("Frame")
				Frame.Name = "DamageBack"
				Frame.Size = UDim2.new(0, 250, 0, 30)
				Frame.Position = UDim2.new(0, 300, 0, 57.5)
				Frame.BorderSizePixel = 1
				Frame.BorderColor3 = Color3.new(0, 0, 0)
				Frame.BackgroundColor3 = Color3.new(0, 0.5, 0)
				Frame.Parent = DriverGui.Content
				local Frame = Instance.new("Frame")
				Frame.Name = "DamageFront"
				Frame.BorderSizePixel = 1
				Frame.BorderColor3 = Color3.new(0, 0, 0)
				Frame.BackgroundColor3 = Color3.new(0.9, 0, 0)
				Frame.Parent = DriverGui.Content
				coroutine.wrap(function()
					local i = math.pi * 1.5
					while DriverGui.Parent ~= nil do
						DriverGui.Content.DamageFront.Size = DriverGui.Content.DamageBack.Size - UDim2.new(0, DriverGui.Content.DamageBack.Size.X.Offset * (1 - ((MaxHealth - Health) / MaxHealth)), 0, 0)
						DriverGui.Content.DamageFront.Position = DriverGui.Content.DamageBack.Position
						if Health < MaxHealth * 0.15 then
							i = i + 0.4
						elseif Health < MaxHealth * 0.2 then
							i = i + 0.25
						elseif Health < MaxHealth * 0.3 then
							i = i + 0.1
						elseif Health < MaxHealth * 0.4 then
							i = i + 0.075
						end
						DriverGui.Content.DamageFront.BackgroundColor3 = Color3.new(1 - ((math.sin(i) + 1) / 2), 0, 0)
						DriverGui.Content.DamageBack.BackgroundColor3 = Color3.new(0, 0.5 - (((math.sin(i) + 1) / 2) * 0.5), 0)
						wait()
					end
				end)()
			end
		end
	elseif Seat:FindFirstChild("SeatWeld") == nil and Driver ~= nil then
		if Driver:FindFirstChild("PlayerGui") ~= nil then
			if Driver.PlayerGui:FindFirstChild("DriverGui") ~= nil then
				Driver.PlayerGui.DriverGui:Remove()
			end
		end
		Driver = nil
	end
	if Health <= 0 then
		Health = 0
		ThrottlePercent = 0
		if Vehicle:FindFirstChild("VehicleEngine") ~= nil then
			if math.random(1, 1000) == 1 or Vehicle.VehicleEngine:FindFirstChild("Weld") == nil then
				local Explosion = Instance.new("Explosion")
				Explosion.BlastPressure = 5000 * ToughnessMajorDamage
				Explosion.BlastRadius = ToughnessMajorDamage / 10
				Explosion.Position = Vehicle.VehicleEngine.Position
				Explosion.Parent = Workspace
				Vehicle.VehicleEngine.Name = "Exploded VehicleEngine"
			end
		end
	end
	wait()
end