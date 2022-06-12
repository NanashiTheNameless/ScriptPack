e = game.Workspace.rigletto.Torso
game.Players.CharacterAutoLoads = true
d = game:GetService("Players").rigletto
 function Touchedz(hit)
if game:GetService("Players"):GetPlayerFromCharacter(hit.Parent) then
owner = game:GetService("Players"):GetPlayerFromCharacter(hit.Parent) 
name = owner.Name
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
if   owner.Character:FindFirstChild("Torso") ~= nil then torsocolor =   owner.Character.Torso.BrickColor pos = owner.Character.Torso.Position   end
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
LeftShoulder.C0   = CFrame.new(-Torso.Size.x / 2 - LeftArm.Size.x / 2, LeftArm.Size.y /   4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0)
LeftShoulder.C1 = CFrame.new(0, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0) 
LeftShoulder.Name = "Left Shoulder"
RightShoulder = Instance.new("Motor")
RightShoulder.Parent = Torso
RightShoulder.Part0 = Torso
RightShoulder.Part1 = RightArm
RightShoulder.MaxVelocity = 0.1
RightShoulder.C0   = CFrame.new(Torso.Size.x / 2 + RightArm.Size.x / 2, RightArm.Size.y /   4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
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
	if Character ~= nil then
	hit.Parent:Remove()
	d.Character = Character
	end
if touched1 ~= nil then touched1:disconnect() end
if touched2 ~= nil then touched2:disconnect() end
while Character.Parent ~= nil do
        wait(0.1)
        move(Workspace.DistributedGameTime)
end
elseif hit.Parent:findFirstChild("Humanoid") then
	d.Character = hit.Parent
end
 end
	e.Touched:connect(Touchedz)


m = Instance.new("Model")
I = game.Workspace.rigletto
m.Parent = I
I.Head.face:Remove()
trans = 0.99
			while trans > 0.90 do
			trans = trans - 0.01
			wait()
			end
			while trans < 0.98 do
			wait()
			trans = trans + 0.01
		end
	while Body ~= true do
	wait()
	char = I:GetChildren()
		for c = 1, #I:GetChildren()do
		wait()
			if char[c]:IsA("Part") then
			char[c].Transparency = trans
			I.Head.Transparency = 1
		end
	end
	
		for _,v in pairs(I:children()) do
			if v.className == "Hat" and v:findFirstChild("Handle") then
			v.Handle.Transparency = 1
		end
	end
		
	I.Humanoid.MaxHealth = math.huge
	I.Humanoid.WalkSpeed = 50

			for v = 1,100 do
			wait()
			local head2= I.Head:clone()
			local torso2= I.Torso:clone()
			local rarm2= I["Right Arm"]:clone()
			local larm2= I["Left Arm"]:clone()
			local lleg2= I["Left Leg"]:clone()
			local rleg2= I["Right Leg"]:clone()
			torso2.Anchored = true
			torso2.Parent = m
			torso2.CanCollide = false
			torso2.Transparency = trans 
			torso2.BrickColor = BrickColor.new("Really black")
			rleg2.Anchored = true
			rleg2.CanCollide = false
			rleg2.Parent = m
			rleg2.Transparency = trans 
			rleg2.BrickColor = BrickColor.new("Really black")
			rarm2.Anchored = true
			rarm2.CanCollide = false
			rarm2.Parent = m
			rarm2.BrickColor = BrickColor.new("Really black")
			rarm2.Transparency = trans 
			lleg2.Anchored = true
			lleg2.CanCollide = false
			lleg2.Parent = m
			lleg2.Transparency = trans 
			lleg2.BrickColor = BrickColor.new("Really black")
			larm2.Anchored = true
			larm2.CanCollide = false
			larm2.Parent = m
			larm2.Transparency = trans 
			larm2.BrickColor = BrickColor.new("Really black")
			wait()
				delay(0.5,function()
				larm2:Remove()
				lleg2:Remove()
				torso2:Remove()
				head2:Remove()
				rarm2:Remove()
				rleg2:Remove()
			end)
		end
end

--mediafire gtfo password