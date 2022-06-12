-- lego
pcall(function() script.Parent = nil end)
while game:GetService("Players").LocalPlayer == nil do wait() end
pcall(function() game:GetService("Players").LocalPlayer:SetSuperSafeChat(false) end)


function Reset()
	pcall(function() CamSphere.Model:Remove() end)
	pcall(function() CamSphere.Part1:Remove() end)
	pcall(function() CamSphere.Part2:Remove() end)
	pcall(function() CamSphere.Humanoid:Remove() end)
	CamSphere = {}
	CamSphere.Activated = true
	CamSphere.Removed = false
	CamSphere.Moving = true
	CamSphere.Busy = false
	CamSphere.BusyBypass = false
	CamSphere.Hidden = true
	CamSphere.ShowChat = false
	CamSphere.WaitTime = 0.1
	CamSphere.FloatSpeed = 5
	CamSphere.FloatDistance = 5
	CamSphere.Name = "CamSphere v4"
	CamSphere.ChatColor = Enum.ChatColor.Red
	CamSphere.Color = BrickColor.new("Really black")
	CamSphere.Offset = {}
	CamSphere.Offset.X = 0
	CamSphere.Offset.Y = 0
	CamSphere.Offset.Z = 0
	CamSphere.Size = 2
	CamSphere.PointLock = nil
	CamSphere.Point1 = CFrame.new()
	CamSphere.Point2 = CFrame.new()
	CamSphere.Model = Instance.new("Model")
	CamSphere.Part1 = Instance.new("Part")
	CamSphere.Part1.Transparency = 1
	CamSphere.Part1Mesh = Instance.new("SpecialMesh", CamSphere.Part1)
	CamSphere.Part2 = Instance.new("Part")
	CamSphere.Part2.Transparency = 1
	CamSphere.Part2Mesh = Instance.new("SpecialMesh", CamSphere.Part2)
	CamSphere.Humanoid = Instance.new("Humanoid")
	CamSphere.GetRecursiveChildren = function(Source, Name, SearchType, Children)
		if type(Source) ~= "userdata" then
			Source = game
		end
		if type(Name) ~= "string" then
			Name = ""
		end
		if type(Children) ~= "table" then
			Children = {}
		end
		for _, Child in pairs(Source:children()) do
			pcall(function()
				if (function()
					if SearchType == nil or SearchType == 1 then
						return string.match(Child.Name:lower(), Name:lower())
					elseif SearchType == 2 then
						return string.match(Child.ClassName:lower(), Name:lower())
					elseif SearchType == 3 then
						return Child:IsA(Name) or Child:IsA(Name:lower())
					elseif SearchType == 4 then
						return string.match(Child.Name:lower() .. string.rep(string.char(1), 5) .. Child.ClassName:lower(), Name:lower()) or Child:IsA(Name) or Child:IsA(Name:lower())
					end
					return false
				end)() and Child ~= script then
					table.insert(Children, Child)
				end
				CamSphere.GetRecursiveChildren(Child, Name, SearchType, Children)
			end)
		end
		return Children
	end
	loadstring(game:GetService("InsertService"):LoadAsset(62991657)["PacketFunctions"].Value)()
end
Reset()


CatchMsg = function(Msg)
	if CamSphere.Activated == false then return end
	if string.sub(Msg, 2, 6) == "lego " then
		Msg = string.sub(Msg, 0, 1) .. string.sub(Msg, 7)
	end
	if CamSphere.Busy == false then
		if string.sub(Msg, 0, 6) == "/shoot" then
			CamSphere.Busy = true
			CamSphere.BusyBypass = true
			SoundToServer("SpinUp", "http://www.roblox.com/Asset/?id=10209788", 1, 1, false, CamSphere.Part1)
			wait(1)
			SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209776", 0.9, 1, true, CamSphere.Part1)
			CamSphere.BusyBypass = false
			for i = 1, tonumber(string.sub(Msg, 8)) or math.huge do
				if CamSphere.Busy == false then break end
				coroutine.wrap(function()
					local Shell = Instance.new("Part", Workspace)
					Shell.Name = "Shell"
					Shell.TopSurface = 0
					Shell.BottomSurface = 0
					Shell.BrickColor = BrickColor.new("New Yeller")
					Shell.FormFactor = "Custom"
					Shell.Size = Vector3.new(0.21, 0.6, 0.21)
					Shell.CFrame = CamSphere.Point1 * CFrame.new(CamSphere.Size / 2, CamSphere.Size / 2, 0) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))
					Instance.new("CylinderMesh", Shell).Bevel = 0.05
					local BodyVelocity = Instance.new("BodyVelocity")
					BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
					BodyVelocity.velocity = ((Shell.CFrame.p - CamSphere.Point1.p).unit * math.random(40, 60)) + Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
					BodyVelocity.Parent = Shell
					game:GetService("Debris"):AddItem(BodyVelocity, 0.1)
					game:GetService("Debris"):AddItem(Shell, 10)
					local Bullet = Instance.new("Part", Workspace)
					Bullet.Name = "Bullet"
					Bullet.TopSurface = 0
					Bullet.BottomSurface = 0
					Bullet.BrickColor = BrickColor.new("New Yeller")
					Bullet.FormFactor = "Custom"
					Bullet.Size = Vector3.new(0.2, 0.5, 0.2)
					Bullet.CFrame = CFrame.new(CamSphere.Point1.p, CamSphere.Point2.p) * CFrame.new(0, 0, -(CamSphere.Size / 2) - 2.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
					Instance.new("CylinderMesh", Bullet).Bevel = 0.1
					local BodyVelocity = Instance.new("BodyVelocity")
					BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
					BodyVelocity.velocity = ((CamSphere.Point2.p - CamSphere.Point1.p).unit * 500) + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
					BodyVelocity.Parent = Bullet
					TouchedToServer([[if Hit.Name == "Focus" or Hit.Name == "Bullet" then return end
local Sound = Instance.new("Sound", Source)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 5
Explosion.BlastPressure = 500000
Explosion.Position = Source.Position
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = Workspace
Source:Remove()]], Bullet)
					coroutine.wrap(function()
						while Bullet.Parent ~= nil do
							Bullet:BreakJoints()
							wait()
						end
					end)()
				end)()
				wait()
			end
			CamSphere.BusyBypass = true
			SendToServer([[for _, Part in pairs(Source:GetChildren()) do
	if Part:IsA("Sound") then
		coroutine.wrap(function()
			Part:Stop()
			wait(1)
			Part:Remove()
		end)()
	end
end]], "Sound Stop", {"Source", CamSphere.Part1})
			SoundToServer("SpinDown", "http://www.roblox.com/Asset/?id=10209786", 1, 1, false, CamSphere.Part1)
			wait(0.5)
			CamSphere.BusyBypass = false
			CamSphere.Busy = false
		elseif string.sub(Msg, 0, 6) == "/laser" then
			CamSphere.Busy = true
			for i = 1, tonumber(string.sub(Msg, 8)) or math.huge do
				if CamSphere.Busy == false then break end
				SoundToServer("Fire", "http://www.roblox.com/Asset/?id=13775494", math.random(1500, 2500) / 1000, 1, false, CamSphere.Part1)
				local Hit, Position = Workspace:FindPartOnRay(Ray.new(CamSphere.Point1.p, ((CamSphere.Point2.p - CamSphere.Point1.p).unit + Vector3.new(math.random(-10, 10) / 1000, math.random(-10, 10) / 1000, math.random(-10, 10) / 1000)) * 500), CamSphere.Model)
				local Laser = Instance.new("Part", CamSphere.Model)
				Laser.Name = "Laser"
				Laser.TopSurface = 0
				Laser.BottomSurface = 0
				Laser.BrickColor = BrickColor.new("Really blue")
				Laser.FormFactor = "Custom"
				Laser.CanCollide = false
				Laser.Anchored = true
				Laser.Size = Vector3.new(math.random(900, 1100) / 1000, (Position - CamSphere.Point1.p).magnitude, math.random(900, 1100) / 1000)
				Laser.CFrame = CFrame.new((Position + CamSphere.Point1.p) / 2, CamSphere.Point1.p) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
				Instance.new("CylinderMesh", Laser).Bevel = Laser.Size.x / 2
				coroutine.wrap(function()
					for i = 1, 0, -0.15 do
						pcall(function()
							Laser.Transparency = (1 - i)
							Laser.Mesh.Scale = Vector3.new(i, 1, i)
							Laser.Mesh.Bevel = (Laser.Size.x / 2) * i
						end)
						wait()
					end
					Laser:Remove()
				end)()
				coroutine.wrap(function()
					local LaserExplosion = Instance.new("Part", CamSphere.Model)
					LaserExplosion.Name = "Laser Explosion"
					LaserExplosion.TopSurface = 0
					LaserExplosion.BottomSurface = 0
					LaserExplosion.BrickColor = BrickColor.new("Really blue")
					LaserExplosion.Anchored = true
					LaserExplosion.CanCollide = false
					LaserExplosion.FormFactor = "Custom"
					LaserExplosion.Size = Vector3.new(1, 1, 1)
					LaserExplosion.CFrame = CFrame.new(Position)
					Instance.new("SpecialMesh", LaserExplosion).MeshType = "Sphere"
					for i = 0, 1, 0.1 do
						pcall(function()
							LaserExplosion.Transparency = i
							LaserExplosion.Mesh.Scale = Vector3.new(i * 10, i * 10, i * 10)
						end)
						wait()
					end
					LaserExplosion:Remove()
				end)()
				if Hit ~= nil then
					Hit:BreakJoints()
					if Hit.Anchored == false then
						Hit.Velocity = Hit.Velocity + Vector3.new(math.random(-15000, 15000) / 1000, math.random(-15000, 15000) / 1000, math.random(-15000, 15000) / 1000)
						Hit.RotVelocity = Hit.RotVelocity + Vector3.new(math.random(-25000, 25000) / 1000, math.random(-25000, 25000) / 1000, math.random(-25000, 25000) / 1000)
					end
				end
				wait()
			end
			CamSphere.Busy = false
		elseif string.sub(Msg, 0, 5) == "/bomb" then
			CamSphere.Busy = true
			for i = 1, tonumber(string.sub(Msg, 7)) or 1 do
				if CamSphere.Busy == false then break end
				coroutine.wrap(function()
					local Bomb = Instance.new("Part", Workspace)
					Bomb.Name = "Bomb"
					Bomb.TopSurface = 0
					Bomb.BottomSurface = 0
					Bomb.BrickColor = BrickColor.new("Really black")
					Bomb.FormFactor = "Custom"
					Bomb.Size = Vector3.new(1, 1, 1)
					Bomb.CFrame = CFrame.new(CamSphere.Point1.p) * CFrame.new(math.random(-2, 2), math.random(-7, -1), math.random(-2, 2))
					Bomb.Velocity = ((Bomb.Position - CamSphere.Point1.p).unit * 25)
					local Mesh = Instance.new("SpecialMesh", Bomb)
					Mesh.MeshType = "Sphere"
					coroutine.wrap(function()
						while Bomb.Parent ~= nil do
							Bomb:BreakJoints()
							wait()
						end
					end)()
					coroutine.wrap(function()
						wait(math.random(1000, 6000) / 1000)
						for i = 1, 5 do
							SoundToServer("Blip", "http://www.roblox.com/Asset/?id=15666462", 4, 1, false, Bomb)
							wait(0.05)
							Bomb.BrickColor = BrickColor.new("Really red")
							wait(0.05)
							Bomb.BrickColor = BrickColor.new("Really black")
						end
						TouchedToServer([[local Sound = Instance.new("Sound", Source)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 5
Explosion.BlastPressure = 500000
Explosion.Position = Source.Position
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = Workspace
wait(0.1)
Source:Remove()]], Bomb)
					end)()
				end)()
				wait(0.1)
			end
			CamSphere.Busy = false
		end
	end
	if Msg == "/remove" then
		CamSphere.Busy = false
		CamSphere.BusyBypass = false
		CamSphere.Activated = false
	elseif Msg == "/hide" then
		CamSphere.Hidden = not CamSphere.Hidden
	elseif Msg == "/center" or Msg == "/ct" then
		Workspace.CurrentCamera.CoordinateFrame = CFrame.new(0, 10, 0)
		Workspace.CurrentCamera.Focus = CFrame.new(1, 10, 0)
	elseif Msg == "/chat" then
		CamSphere.ShowChat = not CamSphere.ShowChat
	elseif string.sub(Msg, 0, 5) == "/size" then
		CamSphere.Size = tonumber(string.sub(Msg, 7)) or 2
	elseif string.sub(Msg, 0, 11) == "/floatspeed" or string.sub(Msg, 0, 3) == "/fs" then
		CamSphere.FloatSpeed = tonumber((string.sub(Msg, 0, 3) == "/fs" and string.sub(Msg, 5) or string.sub(Msg, 13))) or 5
	elseif string.sub(Msg, 0, 9) == "/waittime" or string.sub(Msg, 0, 3) == "/wt" then
		CamSphere.WaitTime = tonumber((string.sub(Msg, 0, 3) == "/wt" and string.sub(Msg, 5) or string.sub(Msg, 11))) or 0.1
	elseif string.sub(Msg, 0, 2) == "/x" then
		CamSphere.Offset.X = tonumber(string.sub(Msg, 4)) or 0
	elseif string.sub(Msg, 0, 2) == "/y" then
		CamSphere.Offset.Y = tonumber(string.sub(Msg, 4)) or 0
	elseif string.sub(Msg, 0, 2) == "/z" then
		CamSphere.Offset.Z = tonumber(string.sub(Msg, 4)) or 0
	elseif string.sub(Msg, 0, 6) == "/lock " then
		if string.sub(Msg, 7) == "off" then
			CamSphere.PointLock = nil
		else
			for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
				if string.match(Player.Name:lower(), string.sub(Msg, 7):lower()) then
					pcall(function() CamSphere.PointLock = Player.Character.Torso end)
					break
				end
			end
			for _, Model in pairs(Workspace:GetChildren()) do
				if string.match(Model.Name:lower(), string.sub(Msg, 7):lower()) then
					pcall(function() CamSphere.PointLock = Model.Torso end)
					break
				end
			end
		end
	elseif Msg == "/stop" then
		CamSphere.Moving = false
	elseif Msg == "/go" then
		CamSphere.Moving = true
	elseif Msg == "/moving" then
		CamSphere.Moving = not CamSphere.Moving
	elseif Msg == "/c" or Msg == "/cancel" and CamSphere.BusyBypass == false then
		CamSphere.Busy = false
	elseif Msg == "/r" or Msg == "/reset" then
		Reset()
	elseif Msg == "/fix" then
		SendToServer([[
local new = Instance.new
game:GetService("ScriptContext").ScriptsDisabled = true
wait()
RemoveAll = function(Source)
	for _, Child in pairs(Source:GetChildren()) do
		pcall(function() RemoveAll(Child) end)
		pcall(function()
			if Child.ClassName ~= "Player" and Child.ClassName ~= "Lighting" then
				pcall(function() Child.Disabled = true end)
				pcall(function() Child.Activated = false end)
				pcall(function() Child:Remove() end)
			end
		end)
	end
end
RemoveAll(game)
wait(0.5)
Base = Instance.new("Part")
Base.Name = "Base"
Base.BrickColor = BrickColor.new("Dark green")
Base.TopSurface = "Studs"
Base.BottomSurface = "Smooth"
Base.FormFactor = "Custom"
Base.Size = Vector3.new(1000, 5, 1000)
Base.CFrame = CFrame.new(0, -2, 0)
Base.Locked = true
Base.Anchored = true
Base.Parent = Workspace
game:GetService("Lighting").Brightness = 1
game:GetService("Lighting").GeographicLatitude = 41.73
game:GetService("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
game:GetService("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
game:GetService("Lighting").TimeOfDay = "14:00:00"
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	pcall(function()
		local Model = new("Model", Workspace)
		local Part = new("Part", Model)
		Part.Name = "Head"
		Part.Transparency = 1
		Part.CanCollide = false
		Part.Anchored = true
		Part.Locked = true
		Part.Parent = Model
		local Humanoid = new("Humanoid", Model)
		Humanoid.Health = 100
		Player.Character = Model
		Humanoid.Health = 0
	end)
end
wait()
Instance.new = new
game:GetService("ScriptContext").ScriptsDisabled = false]], "Fix")
	elseif Msg == "/up" then
		pcall(function() game:GetService("Players").LocalPlayer.Character:Remove() end)
		game:GetService("Players").LocalPlayer.Character = nil
	elseif Msg == "/down" then
		if game:GetService("Players").LocalPlayer.Character ~= nil then
			CatchMsg("/up")
		end
		Character = Instance.new("Model")
		Character.Name = CamSphere.Name
		Character.Parent = Workspace
		local Head = Instance.new("Part")
		Head.Name = "Head"
		Head.FormFactor = 0
		Head.Size = Vector3.new(2, 1, 1)
		Head.TopSurface = 0
		Head.BottomSurface = "Weld"
		Head.BrickColor = CamSphere.Color
		Head.Parent = Character
		local Mesh = Instance.new("SpecialMesh")
		Mesh.MeshType = "Head"
		Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
		Mesh.Parent = Head
		local Face = Instance.new("Decal")
		Face.Name = "face"
		Face.Face = "Front"
		Face.Texture = "rbxasset://textures/face.png"
		Face.Parent = Head
		local Torso = Instance.new("Part")
		Torso.Name = "Torso"
		Torso.FormFactor = 0
		Torso.Size = Vector3.new(2, 2, 1)
		Torso.TopSurface = "Studs"
		Torso.BottomSurface = "Inlet"
		Torso.LeftSurface = "Weld"
		Torso.RightSurface = "Weld"
		Torso.BrickColor = CamSphere.Color
		Torso.Parent = Character
		local TShirt = Instance.new("Decal")
		TShirt.Name = "roblox"
		TShirt.Face = "Front"
		TShirt.Texture = ""
		TShirt.Parent = Torso
		local Limb = Instance.new("Part")
		Limb.FormFactor = 0
		Limb.Size = Vector3.new(1, 2, 1)
		Limb.TopSurface = "Studs"
		Limb.BottomSurface = "Inlet"
		Limb.BrickColor = CamSphere.Color
		local LeftArm = Limb:Clone()
		LeftArm.Name = "Left Arm"
		LeftArm.Parent = Character
		local RightArm = Limb:Clone()
		RightArm.Name = "Right Arm"
		RightArm.Parent = Character
		local LeftLeg = Limb:Clone()
		LeftLeg.Name = "Left Leg"
		LeftLeg.Parent = Character
		local RightLeg = Limb:Clone()
		RightLeg.Name = "Right Leg"
		RightLeg.Parent = Character
		Character:BreakJoints()
		local Neck = Instance.new("Motor6D")
		Neck.Name = "Neck"
		Neck.Part0 = Torso
		Neck.Part1 = Head
		Neck.C0 = CFrame.new(0, 2, 0)
		Neck.C1 = CFrame.new(0, 0.5, 0)
		Neck.MaxVelocity = 0
		Neck.Parent = Torso
		local LeftShoulder = Instance.new("Motor6D")
		LeftShoulder.Name = "Left Shoulder"
		LeftShoulder.Part0 = Torso
		LeftShoulder.Part1 = LeftArm
		LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftShoulder.MaxVelocity = 0.5
		LeftShoulder.Parent = Torso
		local RightShoulder = Instance.new("Motor6D")
		RightShoulder.Name = "Right Shoulder"
		RightShoulder.Part0 = Torso
		RightShoulder.Part1 = RightArm
		RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightShoulder.MaxVelocity = 0.5
		RightShoulder.Parent = Torso
		local LeftHip = Instance.new("Motor6D")
		LeftHip.Name = "Left Hip"
		LeftHip.Part0 = Torso
		LeftHip.Part1 = LeftLeg
		LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftHip.MaxVelocity = 0.1
		LeftHip.Parent = Torso
		local RightHip = Instance.new("Motor6D")
		RightHip.Name = "Right Hip"
		RightHip.Part0 = Torso
		RightHip.Part1 = RightLeg
		RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightHip.MaxVelocity = 0.1
		RightHip.Parent = Torso
		local Humanoid = Instance.new("Humanoid")
		Humanoid.Parent = Character
		local BodyColors = Instance.new("BodyColors")
		BodyColors.Name = "Body Colors"
		BodyColors.HeadColor = Head.BrickColor
		BodyColors.TorsoColor = Torso.BrickColor
		BodyColors.LeftArmColor = LeftArm.BrickColor
		BodyColors.RightArmColor = RightArm.BrickColor
		BodyColors.LeftLegColor = LeftLeg.BrickColor
		BodyColors.RightLegColor = RightLeg.BrickColor
		BodyColors.Parent = Character
		local Shirt = Instance.new("Shirt")
		Shirt.Name = "Shirt"
		Shirt.ShirtTemplate = ""
		Shirt.Parent = Character
		local ShirtGraphic = Instance.new("ShirtGraphic")
		ShirtGraphic.Name = "Shirt Graphic"
		ShirtGraphic.Graphic = ""
		ShirtGraphic.Parent = Character
		local Pants = Instance.new("Pants")
		Pants.Name = "Pants"
		Pants.PantsTemplate = ""
		Pants.Parent = Character
		Torso.CFrame = CFrame.new(CamSphere.Point1.p, CamSphere.Point2.p)
		game:GetService("Players").LocalPlayer.Character = Character
		Workspace.CurrentCamera.CameraSubject = Character.Humanoid
		Workspace.CurrentCamera.CameraType = "Custom"
		local Animate = game:GetService("InsertService"):LoadAsset(56087370)["Animate"]
		wait(0.1)
		Animate.Parent = Character
	elseif Msg == "/ex" or Msg == "/explode" then
		local Shield = Instance.new("ForceField", game:GetService("Players").LocalPlayer.Character or nil)
		wait(0.1)
		local Explosion = Instance.new("Explosion")
		Explosion.BlastRadius = 25
		Explosion.BlastPressure = 1000000
		Explosion.Position = CamSphere.Point2.p
		Explosion.Hit:connect(function(Hit)
			if Hit:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) == false then
				Hit.Anchored = false
				Hit:BreakJoints()
			end
		end)
		Explosion.Parent = Workspace
		wait(0.5)
		Shield:Remove()
	elseif string.sub(Msg, 0, 3) == "/m " or string.sub(Msg, 0, 3) == "/h " or string.sub(Msg, 0, 9) == "/message " or string.sub(Msg, 0, 6) == "/hint " then
		SendToServer([[local Message = Instance.new("]] ..(string.sub(Msg, 0, 2) == "/m" and "Message" or "Hint").. [[", Workspace)
local Text = "]] ..CamSphere.Name.. ": " ..(string.sub(Msg, 3, 3) == " " and string.sub(Msg, 4) or (string.sub(Msg, 0, 9) == "/message " and string.sub(Msg, 10) or string.sub(Msg, 7))).. [["
for i = 1, Text:len() do
	Message.Text = Text:sub(0, i) .. string.rep("  ", Text:len() - i)
	Message.Parent = Workspace
	local Sound = Instance.new("Sound", Workspace)
	Sound.SoundId = "rbxasset://sounds/Kerplunk.wav"
	Sound.Pitch = 10
	Sound.Volume = 1
	Sound:Play()
	game:GetService("Debris"):AddItem(Sound, 1)
	wait(math.random() * 0.1)
end
wait(2.5)
for i = Text:len(), 1, -5 do
	Message.Text = Text:sub(0, i) .. string.rep("  ", Text:len() - i)
	Message.Parent = Workspace
	local Sound = Instance.new("Sound", Workspace)
	Sound.SoundId = "rbxasset://sounds/Kerplunk.wav"
	Sound.Pitch = 3
	Sound.Volume = 1
	Sound:Play()
	game:GetService("Debris"):AddItem(Sound, 1)
	wait(math.random() * 0.1)
end
Message:Remove()]], "Message Trigger")
	elseif string.sub(Msg, 0, 6) == "/give " then
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if Player ~= game:GetService("Players").LocalPlayer and string.match(Player.Name:lower(), string.sub(Msg, 7):lower()) then
				if script ~= nil then
					script:Clone().Parent = Player.Character
				end
			end
		end
	elseif string.sub(Msg, 0, 4) == "/sb " then
		local QuickScript = game:GetService("InsertService"):LoadAsset(54471119)["QuickScript"]
		QuickScript.Name = "QuickScript (" ..tick().. ")"
		QuickScript.DynamicSource.Value = string.sub(Msg, 5)
		QuickScript.Parent = Workspace
	elseif string.sub(Msg, 0, 5) == "/sbl " then
		local QuickScript = game:GetService("InsertService"):LoadAsset(54471119)["QuickLocalScript"]
		QuickScript.Name = "QuickLocalScript (" ..tick().. ")"
		QuickScript.DynamicSource.Value = string.sub(Msg, 6)
		QuickScript.Parent = game:GetService("Players").LocalPlayer.Backpack
	elseif string.sub(Msg, 0, 4) == "/ls " then
		loadstring(string.sub(Msg, 5))()
	elseif string.sub(Msg, 0, 12) == "/SendToServer " or string.sub(Msg, 0, 4) == "/ss " then
		SendToServer(string.sub(Msg, 0, 12) == "/SendToServer " and string.sub(Msg, 13) or string.sub(Msg, 5), "SendToServer")
	elseif string.sub(Msg, 0, 5) == "/lsr " then
		local Message = Instance.new("Message", Workspace)
		if Msg:match("CamSphere") == nil then
			Message.Text = "[CamSphere] Cannot replace!"
			wait(5)
			Message:Remove()
			return
		else
			Message.Text = "[CamSphere] Removing..."
		end
		CamSphere.Activated = false
		while CamSphere.Removed == false do wait() end
		Message:Remove()
		loadstring(string.sub(Msg, 6))()
		error()
	elseif Msg == "/rp" or Msg == "/remove player" then
		pcall(function() game:GetService("Players")[game:GetService("Players").LocalPlayer.Name]:Remove() end)
	elseif string.sub(Msg, 0, 6) == "/name " then
		CamSphere.Name = string.sub(Msg, 7)
	elseif string.sub(Msg, 0, 7) == "/color " then
		CamSphere.Color = BrickColor.new(string.sub(Msg, 8))
	elseif string.sub(Msg, 0, 12) == "/chat color " then
		if string.sub(Msg, 13) == "red" then
			CamSphere.ChatColor = Enum.ChatColor.Red
		elseif string.sub(Msg, 13) == "green" then
			CamSphere.ChatColor = Enum.ChatColor.Green
		elseif string.sub(Msg, 13) == "blue" then
			CamSphere.ChatColor = Enum.ChatColor.Blue
		end
	elseif string.match(Msg, "lego") == nil and CamSphere.ShowChat == true then
		if game:GetService("Players").LocalPlayer.Character ~= nil and CamSphere.Hidden == true then
			pcall(function() game:GetService("Chat"):Chat(game:GetService("Players").LocalPlayer.Character, Msg, CamSphere.ChatColor) end)
		else
			pcall(function() game:GetService("Chat"):Chat(CamSphere.Part1, Msg, CamSphere.ChatColor) end)
		end
	end
end
coroutine.wrap(function()
	while CamSphere.Activated == true do
		pcall(function() CatchMsgConnection:disconnect() end)
		pcall(function() CatchMsgConnection = game:GetService("Players").LocalPlayer.Chatted:connect(CatchMsg) end)
		wait(1)
	end
end)()


local Hint = Instance.new("Message", Workspace)
Hint.Text = "[CamSphere] Loaded."
game:GetService("Debris"):AddItem(Hint, 5)


while CamSphere.Activated == true do
	if CamSphere.Moving == true then
		local CoordinateFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p)
		local Focus = CFrame.new(Workspace.CurrentCamera.Focus.p)
		local FocusAngle = CFrame.fromEulerAnglesXYZ(CFrame.new(CoordinateFrame.p, Focus.p):toEulerAnglesXYZ())
		local CharacterOffset = CFrame.new(0, (CamSphere.Size / 2) + 5, 0)
		local Offset = CFrame.new(CamSphere.Offset.X, CamSphere.Offset.Y, CamSphere.Offset.Z)
		local Float = CFrame.new(0, ((math.sin(tick() * CamSphere.FloatSpeed) + 1) / 2), 0)
		if game:GetService("Players").LocalPlayer.Character == nil then
			CamSphere.Point1 = CoordinateFrame * Float * Offset
			CamSphere.Point2 = CamSphere.PointLock ~= nil and CamSphere.PointLock.CFrame or Focus * Float * Offset
		else
			CamSphere.Point1 = Focus * CharacterOffset * Float * FocusAngle * Offset
			CamSphere.Point2 = CamSphere.PointLock ~= nil and CFrame.new(CamSphere.Point1.p) * CFrame.fromEulerAnglesXYZ(CFrame.new(CamSphere.Point1.p, CamSphere.PointLock.CFrame.p):toEulerAnglesXYZ()) * CFrame.new(0, 0, -10) or Focus * CharacterOffset * Float * FocusAngle * Offset * CFrame.new(0, 0, -10)
		end
		pcall(function()
			if CamSphere.Hidden == true then
				if CamSphere.Part1.Transparency >= 1 then
					CamSphere.Part1.Parent = nil
				else
					CamSphere.Part1.Transparency = CamSphere.Part1.Transparency + 0.1
					local Old = CamSphere.Part1.CFrame
					CamSphere.Part1.Size = CamSphere.Part1.Size + Vector3.new(0.3, 0.3, 0.3)
					CamSphere.Part1.CFrame = Old
				end
				if CamSphere.Part2.Transparency >= 1 then
					CamSphere.Part2.Parent = nil
				else
					CamSphere.Part2.Transparency = CamSphere.Part2.Transparency + 0.1
					local Old = CamSphere.Part2.CFrame
					CamSphere.Part2.Size = CamSphere.Part2.Size + Vector3.new(0.3, 0.3, 0.3)
					CamSphere.Part2.CFrame = Old
				end
			else
				CamSphere.Model.Name = CamSphere.Name
				CamSphere.Model.Parent = Workspace
				CamSphere.Part1.Name = "Head"
				CamSphere.Part1.FormFactor = "Custom"
				CamSphere.Part1.Size = Vector3.new(1, 1, 1) * CamSphere.Size
				CamSphere.Part1.TopSurface = 0
				CamSphere.Part1.BottomSurface = 0
				CamSphere.Part1.Material = "Plastic"
				CamSphere.Part1.BrickColor = CamSphere.Color
				CamSphere.Part1.Transparency = CamSphere.Part1.Transparency <= 0 and 0 or CamSphere.Part1.Transparency - 0.05
				CamSphere.Part1.Reflectance = 0
				CamSphere.Part1.Anchored = true
				CamSphere.Part1.CanCollide = true
				CamSphere.Part1.Parent = CamSphere.Model
				CamSphere.Part1.CFrame = CamSphere.Point1
				CamSphere.Part1Mesh.MeshType = "Sphere"
				CamSphere.Part1Mesh.VertexColor = Vector3.new(1, 1, 1)
				CamSphere.Part1Mesh.Scale = Vector3.new(1, 1, 1)
				CamSphere.Part1Mesh.Parent = CamSphere.Part1
				CamSphere.Part2.Name = "Focus"
				CamSphere.Part2.FormFactor = "Custom"
				CamSphere.Part2.TopSurface = 0
				CamSphere.Part2.BottomSurface = 0
				CamSphere.Part2.Material = "Plastic"
				CamSphere.Part2.BrickColor = BrickColor.new("Institutional white")
				CamSphere.Part2.Transparency = CamSphere.Part2.Transparency <= 0.75 and 0.75 or CamSphere.Part2.Transparency - 0.01
				CamSphere.Part2.Reflectance = 0
				CamSphere.Part2.Anchored = true
				CamSphere.Part2.CanCollide = false
				CamSphere.Part2.Parent = CamSphere.Model
				CamSphere.Part2.Size = Vector3.new(0.2, 0.2, (CamSphere.Point2.p - CamSphere.Point1.p).magnitude)
				CamSphere.Part2.CFrame = CFrame.new((CamSphere.Point1.p + CamSphere.Point2.p) / 2, CamSphere.Point2.p)
				CamSphere.Part2Mesh.MeshType = "Sphere"
				CamSphere.Part2Mesh.Scale = Vector3.new(1, 1, 1)
				CamSphere.Part2Mesh.Parent = CamSphere.Part2
				CamSphere.Humanoid.Name = "Humanoid"
				CamSphere.Humanoid.MaxHealth = 0
				CamSphere.Humanoid.Health = 0
				CamSphere.Humanoid.Parent = CamSphere.Model
			end
		end)
	end
	wait(CamSphere.WaitTime)
end
pcall(function() CamSphere.Part1:Remove() end)
pcall(function() CamSphere.Part2:Remove() end)
pcall(function() CamSphere.Humanoid:Remove() end)
pcall(function() CamSphere.Model:Remove() end)
CamSphere.Removed = true