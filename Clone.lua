owner = game:GetService("Players").DarkShadow6
name = ""
randomName = math.random(1, 11)
if randomName == 1 then
	name = owner.Name.. tostring(math.random(0, 10000))
elseif randomName == 2 then
	name = owner.Name.. "Alt"
elseif randomName == 3 then
	name = owner.Name.. "Alternate"
elseif randomName == 4 then
	name = "The" ..owner.Name
elseif randomName == 5 then
	name = owner.Name.. "Temp"
elseif randomName == 6 then
	name = owner.Name.. "Temporary"
elseif randomName == 7 then
	name =  "Mr. " ..owner.Name
elseif randomName == 8 then
	name =  "Mc" ..owner.Name
elseif randomName == 9 then
	name =  "xX" ..owner.Name.. "Xx"
elseif randomName == 10 then
	name =  "xXx" ..owner.Name.. "xXx"
elseif randomName == 11 then
	name =  "xXxX" ..owner.Name.. "XxXx"
end
scale = 1
animate = true
follow = false
attacking = false
touched1 = nil
touched2 = nil
player = nil
pose = "Standing"
toolAnim = "None"
toolAnimTime = 0
armAdd = 0


function onChatted(msg, recipient)
	if Character == nil then return end
	if Character.Parent == nil then return end
	if string.sub(msg, 0, 4) == "/sc " then
		msg = string.sub(msg, 5)
	end
	if msg == "die/" then
		if Humanoid ~= nil then
			Humanoid.Health = 0
		end
		following = false
		attacking = false
	end
	if msg == "explode/" then
		wait(math.random(1, 500) / 100)
		e = Instance.new("Explosion")
		e.Position = Torso.Position
		e.BlastRadius = 10
		e.BlastPressure = 100000
		e.Parent = game.Workspace
		s = Instance.new("Sound")
		s.Name = "Explosion"
		s.Pitch = math.random(2, 15) / 10
		s.SoundId = "http://www.roblox.com/Asset/?id=2101148"
		s.Parent = Torso
		s:Play()
	end
	if msg == "posess/" then
		if Character ~= nil then
			owner.Character = Character
		end
		if touched1 ~= nil then touched1:disconnect() end
		if touched2 ~= nil then touched2:disconnect() end
	end
	if string.sub(msg, 0, 7) == "follow/" then
		following = false
		attacking = false
		animate = true
		if touched1 ~= nil then touched1:disconnect() end
		if touched2 ~= nil then touched2:disconnect() end
		wait(0.1)
		if string.sub(msg, 8) == "" then
			following = true
			player = owner
		end
		if game:GetService("Players"):FindFirstChild(string.sub(msg, 8)) ~= nil then
			following = true
			player = game:GetService("Players")[string.sub(msg, 8)]
		end
		while following and not attacking do
			if Humanoid ~= nil and player.Character:FindFirstChild("Torso") and player.Character:FindFirstChild("Humanoid") then
				Humanoid:MoveTo(player.Character.Torso.Position, player.Character.Torso)
				if player.Character.Humanoid.Jump == true then
					Humanoid.Jump = true
				end
			end
			wait(0.01)
		end
	end
	if msg == "wander/" then
		following = false
		attacking = false
		animate = true
		if touched1 ~= nil then touched1:disconnect() end
		if touched2 ~= nil then touched2:disconnect() end
		wait(0.1)
		following = true
		while following do
			if Humanoid ~= nil and Workspace:FindFirstChild("Base") ~= nil then
				Humanoid:MoveTo(Workspace.Base.Position + Vector3.new(math.random(-Workspace.Base.Size.x, Workspace.Base.Size.x), math.random(-Workspace.Base.Size.y, Workspace.Base.Size.y), math.random(-Workspace.Base.Size.z, Workspace.Base.Size.z)), Workspace.Base)
			end
			wait(math.random(1, 10))
		end
	end
	if string.sub(msg, 0, 7) == "attack/" then
		following = false
		attacking = false
		animate = true
		if touched1 ~= nil then touched1:disconnect() end
		if touched2 ~= nil then touched2:disconnect() end
		wait(0.1)
		if game:GetService("Players"):FindFirstChild(string.sub(msg, 8)) ~= nil then
			following = true
			attacking = true
			player = game:GetService("Players")[string.sub(msg, 8)]
			if LeftArm ~= nil then
				touched1 = LeftArm.Touched:connect(function(hit) if hit.Parent == player.Character and hit.Parent:FindFirstChild("Humanoid") ~= nil then hit.Parent.Humanoid:TakeDamage(math.random(1, 25)) end end)
			end
			if RightArm ~= nil then
				touched2 = RightArm.Touched:connect(function(hit) if hit.Parent == player.Character and hit.Parent:FindFirstChild("Humanoid") ~= nil then hit.Parent.Humanoid:TakeDamage(math.random(1, 25)) end end)
			end
		end
		while following and attacking do
			if Humanoid ~= nil and player.Character:FindFirstChild("Torso") and player.Character:FindFirstChild("Humanoid") then
				Humanoid:MoveTo(player.Character.Torso.Position, player.Character.Torso)
				if player.Character.Humanoid.Jump == true then
					Humanoid.Jump = true
				end
				if math.random(1, 5) == 1 then
					animate = false
					LeftShoulder.MaxVelocity = 0.5
					RightShoulder.MaxVelocity = 0.5
					LeftShoulder.DesiredAngle = math.random(2, 4)
					RightShoulder.DesiredAngle = math.random(2, 4)
				end
				if math.random(1, 50) == 1 then
					s = Instance.new("Sound")
					s.Name = "Yell"
					s.Pitch = math.random(7.5, 12.5) / 10
					s.SoundId = "rbxasset://sounds\\uuhhh.wav"
					s.Parent = Torso
					s:Play()
					wait(0.1)
					animate = true
				end
			else
				following = false
				attacking = false
			end
			wait(0.01)
		end
	end
	if string.sub(msg, 0, 12) == "suicidebomb/" then
		following = false
		attacking = false
		animate = true
		if touched1 ~= nil then touched1:disconnect() end
		if touched2 ~= nil then touched2:disconnect() end
		wait(0.1)
		if game:GetService("Players"):FindFirstChild(string.sub(msg, 13)) ~= nil then
			following = true
			attacking = true
			player = game:GetService("Players")[string.sub(msg, 13)]
			if LeftArm ~= nil then
				touched1 = LeftArm.Touched:connect(function(hit) if hit.Parent == player.Character then e = Instance.new("Explosion") e.Position = hit.Position e.BlastRadius = 10 e.BlastPressure = 100000 e.Parent = game.Workspace s = Instance.new("Sound") s.Name = "Explosion" s.Pitch = math.random(9, 11) / 10 s.SoundId = "http://www.roblox.com/Asset/?id=2101148" s.Parent = Torso s:Play() end end)
			end
			if RightArm ~= nil then
				touched2 = RightArm.Touched:connect(function(hit) if hit.Parent == player.Character then e = Instance.new("Explosion") e.Position = hit.Position e.BlastRadius = 10 e.BlastPressure = 100000 e.Parent = game.Workspace end end)
			end
		end
		while following and attacking do
			if Humanoid ~= nil and player.Character:FindFirstChild("Torso") and player.Character:FindFirstChild("Humanoid") then
				Humanoid:MoveTo(player.Character.Torso.Position, player.Character.Torso)
				if player.Character.Humanoid.Jump == true then
					Humanoid.Jump = true
				end
				if math.random(1, 5) == 1 then
					animate = false
					LeftShoulder.MaxVelocity = 0.5
					RightShoulder.MaxVelocity = 0.5
					LeftShoulder.DesiredAngle = math.random(2, 4)
					RightShoulder.DesiredAngle = math.random(2, 4)
				end
				if math.random(1, 50) == 1 then
					s = Instance.new("Sound")
					s.Name = "Yell"
					s.Pitch = math.random(7.5, 12.5) / 10
					s.SoundId = "rbxasset://sounds\\uuhhh.wav"
					s.Parent = Torso
					s:Play()
					wait(0.1)
					animate = true
				end
			else
				following = false
				attacking = false
			end
			wait(0.01)
		end
	end
	if string.sub(msg, 0, 7) == "stop/" then
		following = false
		attacking = false
		animate = true
		if touched1 ~= nil then touched1:disconnect() end
		if touched2 ~= nil then touched2:disconnect() end
	end
end


function move(time)
	if animate == false then return end
	local amplitude
	local frequency
	if pose == "Jumping" then
		RightShoulder.MaxVelocity = 0.5
		LeftShoulder.MaxVelocity = 0.5
		RightShoulder.DesiredAngle = 3.14
		LeftShoulder.DesiredAngle = -3.14
		RightHip.DesiredAngle = 0
		LeftHip.DesiredAngle = 0
		return
	end
	if pose == "FreeFall" then
		RightShoulder.MaxVelocity = 0.5
		LeftShoulder.MaxVelocity = 0.5
		RightShoulder.DesiredAngle = 3.14
		LeftShoulder.DesiredAngle = -3.14
		RightHip.DesiredAngle = 0
		LeftHip.DesiredAngle = 0
		return
	end
	if pose == "Seated" then
		RightShoulder.MaxVelocity = 0.15
		LeftShoulder.MaxVelocity = 0.15
		RightShoulder.DesiredAngle = 3.14 / 2
		LeftShoulder.DesiredAngle = -3.14 / 2
		RightHip.DesiredAngle = 3.14 / 2
		LeftHip.DesiredAngle = -3.14 / 2
		return
	end
	if pose == "Running" then
		RightShoulder.MaxVelocity = 0.15
		LeftShoulder.MaxVelocity = 0.15
		amplitude = 1
		frequency = 9
		armAdd = 0
	elseif pose == "Climbing" then
		RightShoulder.MaxVelocity = 0.5 
		LeftShoulder.MaxVelocity = 0.5
		amplitude = 1
		frequency = 9
		armAdd = 3.14
	else
		amplitude = 0.1
		frequency = 1
	end
	desiredAngle = amplitude * math.sin(time * frequency)
	RightShoulder.DesiredAngle = desiredAngle + armAdd
	LeftShoulder.DesiredAngle = desiredAngle - armAdd
	RightHip.DesiredAngle = -desiredAngle
	LeftHip.DesiredAngle = -desiredAngle
	for _, Children in ipairs(Character:GetChildren()) do
		if Children.ClassName == "Tool" then
			local tool = Children
		end
	end
	if tool then
		for _, Children in ipairs(Character:GetChildren()) do
			if Children.Name == "toolanim" and Children.ClassName == "StringValue" then
				local animStringValueObject = Children
			end
		end
		if animStringValueObject then
			toolAnim = animStringValueObject.Value
			animStringValueObject.Parent = nil
		elseif time > toolAnimTime then
			toolAnimTime = 0
		end
		if toolAnim == "None" then
			RightShoulder.DesiredAngle = 1.57
		elseif toolAnim == "Slash" then
			RightShoulder.MaxVelocity = 0.5
			RightShoulder.DesiredAngle = 0
			toolAnimTime = time + 1
		elseif toolAnim == "Lunge" then
			RightShoulder.MaxVelocity = 0.5
			LeftShoulder.MaxVelocity = 0.5
			RightHip.MaxVelocity = 0.5
			LeftHip.MaxVelocity = 0.5
			RightShoulder.DesiredAngle = 1.57
			LeftShoulder.DesiredAngle = 1.0
			RightHip.DesiredAngle = 1.57
			LeftHip.DesiredAngle = 1.0
			toolAnimTime = time + 2
		end
	else
		toolAnim = "None"
		toolAnimTime = 0
	end
end


Template = Instance.new("Part")
Template.FormFactor = "Custom"
Template.Size = Vector3.new(scale, scale, scale)
Template.BrickColor = BrickColor.new("Bright red")
Template.Locked = true
leftarmcolor = Template.BrickColor
rightarmcolor = Template.BrickColor
leftlegcolor = Template.BrickColor
rightarmcolor = Template.BrickColor
torsocolor = Template.BrickColor
pos = Vector3.new(0, 10, 0)
if owner.Character:FindFirstChild("Left Arm") ~= nil then leftarmcolor = owner.Character["Left Arm"].BrickColor end
if owner.Character:FindFirstChild("Right Arm") ~= nil then rightarmcolor = owner.Character["Right Arm"].BrickColor end
if owner.Character:FindFirstChild("Left Leg") ~= nil then leftlegcolor = owner.Character["Left Leg"].BrickColor end
if owner.Character:FindFirstChild("Right Leg") ~= nil then rightlegcolor = owner.Character["Right Leg"].BrickColor end
if owner.Character:FindFirstChild("Torso") ~= nil then torsocolor = owner.Character.Torso.BrickColor pos = owner.Character.Torso.Position end
if owner.Character:FindFirstChild("Head") ~= nil then headcolor = owner.Character.Head.BrickColor end
LeftArm = Template:Clone()
LeftArm.FormFactor = "Custom"
LeftArm.Size = Vector3.new(scale, scale * 2, scale)
LeftArm.Name = "Left Arm"
LeftArm.BrickColor = leftarmcolor
RightArm = Template:Clone()
RightArm.Size = Vector3.new(scale, scale * 2, scale)
RightArm.Name = "Right Arm"
RightArm.BrickColor = rightarmcolor
LeftLeg = Template:Clone()
LeftLeg.Size = Vector3.new(scale, scale * 2, scale)
LeftLeg.Name = "Left Leg"
LeftLeg.BrickColor = leftlegcolor
RightLeg = Template:Clone()
RightLeg.Size = Vector3.new(scale, scale * 2, scale)
RightLeg.Name = "Right Leg"
RightLeg.BrickColor = rightlegcolor
Torso = Template:Clone()
Torso.Size = Vector3.new(scale * 2, scale * 2, scale)
Torso.LeftSurface = "Weld"
Torso.RightSurface = "Weld"
Torso.Position = pos + Vector3.new(0, scale * 3.5, 0)
Torso.Name = "Torso"
Torso.BrickColor = torsocolor
Head = Template:Clone()
Head.Size = Vector3.new(scale * 2, scale, scale)
Head.TopSurface = "Smooth"
Head.BottomSurface = "Smooth"
Head.Name = "Head"
Head.BrickColor = headcolor
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Head"
Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
Mesh.Parent = Head
if owner.Character:FindFirstChild("Head") ~= nil then
	if owner.Character.Head:FindFirstChild("face") ~= nil then
		Face = owner.Character.Head.face:Clone()
		Face.Parent = Head
	end
end
if owner.Character:FindFirstChild("Torso") ~= nil then
	if owner.Character.Torso:FindFirstChild("roblox") ~= nil then
		Roblox = owner.Character.Torso.roblox:Clone()
		Roblox.Parent = Torso
	end
end
Character = Instance.new("Model")
Character.Name = name
Humanoid = Instance.new("Humanoid")
Humanoid.WalkSpeed = 16
LeftArm.Parent = Character
RightArm.Parent = Character
LeftLeg.Parent = Character
RightLeg.Parent = Character
Torso.Parent = Character
Head.Parent = Character
Humanoid.Parent = Character
LeftShoulder = Instance.new("Motor")
LeftShoulder.Parent = Torso
LeftShoulder.Part0 = Torso
LeftShoulder.Part1 = LeftArm
LeftShoulder.MaxVelocity = 0.1
LeftShoulder.C0 = CFrame.new(-Torso.Size.x / 2 - LeftArm.Size.x / 2, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0)
LeftShoulder.C1 = CFrame.new(0, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftShoulder.Name = "Left Shoulder"
RightShoulder = Instance.new("Motor")
RightShoulder.Parent = Torso
RightShoulder.Part0 = Torso
RightShoulder.Part1 = RightArm
RightShoulder.MaxVelocity = 0.1
RightShoulder.C0 = CFrame.new(Torso.Size.x / 2 + RightArm.Size.x / 2, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
RightShoulder.C1 = CFrame.new(0, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
RightShoulder.Name = "Right Shoulder"
LeftHip = Instance.new("Motor")
LeftHip.Parent = Torso
LeftHip.Part0 = Torso
LeftHip.Part1 = LeftLeg
LeftHip.MaxVelocity = 0.1
LeftHip.C0 = CFrame.new(-LeftLeg.Size.x / 2, -(LeftLeg.Size.y / 4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0)
LeftHip.C1 = CFrame.new(0, LeftLeg.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0)
LeftHip.Name = "Left Hip"
RightHip = Instance.new("Motor")
RightHip.Parent = Torso
RightHip.Part0 = Torso
RightHip.Part1 = RightLeg
RightHip.MaxVelocity = 0.1
RightHip.C0 = CFrame.new(RightLeg.Size.x / 2, -(RightLeg.Size.y / 4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
RightHip.C1 = CFrame.new(0, RightLeg.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
RightHip.Name = "Right Hip"
Neck = Instance.new("Weld")
Neck.Name = "Neck"
Neck.Part0 = Torso
Neck.Part1 = Head
Neck.C0 = CFrame.new(0, 1.5 * scale, 0)
Neck.C1 = CFrame.new()
Neck.Parent = Torso
Children = owner.Character:GetChildren()
for i = 1, #Children do
	if Children[i].ClassName == "Shirt" or Children[i].ClassName == "Pants" and scale == 1 then
		Children[i]:Clone().Parent = Character
	end
	if Children[i].ClassName == "Hat" then
		if Children[i]:FindFirstChild("Handle") ~= nil then
			Hat = Instance.new("Hat")
			Children[i].Handle:Clone().Parent = Hat
			Hat.Handle.Size = Hat.Handle.Size * scale
			Hat.Handle.Mesh.Scale = Hat.Handle.Mesh.scale * scale
			if scale == 1 then TempScale = 1 else TempScale = scale * 1.5 end
			Hat.AttachmentPos = Children[i].AttachmentPos-- * TempScale
			Hat.AttachmentUp = Children[i].AttachmentUp
			Hat.AttachmentForward = Children[i].AttachmentForward
			Hat.AttachmentRight = Children[i].AttachmentRight
			Hat.Parent = Character
		end
	end
end
owner.Character.Sound:Clone().Parent = Character
owner.Character.Health:Clone().Parent = Character
Character.Parent = Workspace
Humanoid.Died:connect(function() pose = "Dead" wait(5.01) if Character == nil then return end Character:Remove() end)
Humanoid.Running:connect(function(speed) if speed > 0 then pose = "Running" else pose = "Standing" end end)
Humanoid.Jumping:connect(function() pose = "Jumping" end)
Humanoid.Climbing:connect(function() pose = "Climbing" end)
Humanoid.GettingUp:connect(function() pose = "GettingUp" end)
Humanoid.FreeFalling:connect(function() pose = "FreeFall" end)
Humanoid.FallingDown:connect(function() pose = "FallingDown" end)
Humanoid.Seated:connect(function() pose = "Seated" end)
Humanoid.PlatformStanding:connect(function() pose = "PlatformStanding" end)
owner.Chatted:connect(function(msg, recipient) onChatted(msg, recipient) end)
while Character.Parent ~= nil do
	wait(0.1)
	move(Workspace.DistributedGameTime)
end