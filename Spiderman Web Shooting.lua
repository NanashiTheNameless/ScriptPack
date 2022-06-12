local plr = game:GetService('Players').LocalPlayer
local mouse = plr:GetMouse()
local chr = plr.Character
local rope = nil
local working = false
local working2 = false
local forward = false
local backward = false
local shooting = false
local left = false
local right = false
local crawling = false
local active = true
local wing1 = nil
local wing2 = nil
local hats = {}
local gui = Instance.new('ScreenGui')
gui.Parent = plr.PlayerGui
gui.Name = "Spiderman"
gui.ResetOnSpawn = false
local frame = Instance.new('Frame',gui)
frame.Size = UDim2.new(0.2,0,0.2,0)
frame.Position = UDim2.new(0,0,0.9,0)
frame.BackgroundColor3 = Color3.fromRGB(255, 66, 66)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(66, 134, 244)
frame.Active = true
frame.Draggable = true
local txt = Instance.new('TextLabel',frame)
txt.Text = "Spiderman Gui"
txt.TextColor3 = Color3.fromRGB(66, 134, 244)
txt.Size = UDim2.new(1,0,0.3,0)
txt.TextScaled = true
txt.BackgroundTransparency = 1
local but = Instance.new('TextButton',frame)
but.Text = "Toggle Suit"
but.TextColor3 = Color3.fromRGB(255, 66, 66)
but.Size = UDim2.new(0.7,0,0.3,0)
but.Position = UDim2.new(0.15,0,0.5,0)
but.BorderSizePixel = 0
but.TextScaled = true
but.BackgroundColor3 = Color3.fromRGB(66, 134, 244)
but.MouseButton1Down:connect(function()
    active = not active
end)
local txt2 = Instance.new('TextLabel',frame)
txt2.Text = "Toggle wall climb on with C."
txt2.TextColor3 = Color3.fromRGB(66, 134, 244)
txt2.Size = UDim2.new(1,0,0.15,0)
txt2.Position = UDim2.new(0,0,0.85,0)
txt2.TextScaled = true
txt2.BackgroundTransparency = 1
function webshot(char)
local haaaaaaaaa = coroutine.wrap(function()
	if char:FindFirstChildOfClass('Humanoid').Health > 0 then
		for i,v in pairs(char:GetChildren()) do
			local partz = {Enum.NormalId.Back,Enum.NormalId.Right,Enum.NormalId.Left,Enum.NormalId.Top,Enum.NormalId.Bottom,Enum.NormalId.Front}
			if v:IsA('Part') and v.Transparency ~= 1 and v.Name ~= "Head" then
				for a,c in pairs(partz) do
					local dec = Instance.new('Decal',v)
					dec.Texture = 'http://www.roblox.com/asset/?id=148633485'
					dec.Face = c
				end
			end
		end
		char:FindFirstChildOfClass('Humanoid').Health = char:FindFirstChildOfClass('Humanoid').Health - char:FindFirstChildOfClass('Humanoid').MaxHealth*0.3
		if char:FindFirstChild('HumanoidRootPart') then
			local heyyyy = nil
			if char:FindFirstChild('Animate') then
				heyyyy = char.Animate:Clone()
				char.Animate:Destroy()
			end
			char:FindFirstChildOfClass('Humanoid').PlatformStand = true
			local ahhhhhhh = true
			char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position)*CFrame.Angles(0,0,math.pi/2)
				if char:FindFirstChildOfClass('Humanoid') then
					char:FindFirstChildOfClass('Humanoid').Changed:connect(function(change)
						if change == "PlatformStand" and ahhhhhhh then
							char:FindFirstChildOfClass('Humanoid').PlatformStand = true
						end
					end)
				end
			wait(15)
			ahhhhhhh = false
			if char:FindFirstChildOfClass('Humanoid') then
				char:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
			if force then
				force:Destroy()
			end
			if heyyyy then
				heyyyy.Parent = char
			end
			for i,v in pairs(char:GetChildren()) do
				if v.Name ~= "Head" then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('Decal') then
							c:Destroy()
						end
					end
				end
			end
		end
	end
end)
haaaaaaaaa()
end
mouse.KeyDown:connect(function(key)
if key == "f" then
	if rope == nil then
	if plr.Character and mouse.Hit and mouse.Target and plr.Character:FindFirstChild('Head') and plr.Character:FindFirstChild('Left Arm') and plr.Character:FindFirstChild('Torso') and plr.Character.Torso:FindFirstChild('Left Shoulder') then
		if game.CoreGui:FindFirstChild('hekking spiderman') then
			game.CoreGui:FindFirstChild('hekking spiderman'):Destroy()
		end
		local Head = plr.Character.Head
		local RightShoulder = plr.Character.Torso["Left Shoulder"]
		local RightArm = plr.Character["Left Arm"]
		local MousePosition = mouse.Hit.p
		local ToMouse = (MousePosition - Head.Position).unit
		local Angle = math.acos(ToMouse:Dot(Vector3.new(0, -1, 0)))
		local FromRightArmPos = (Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(((Head.Size.X / 2) + (RightArm.Size.X / 2)), ((Head.Size.Y / 2) - (RightArm.Size.Z / 2)), 0)))
		local ToMouseRightArm = ((MousePosition - FromRightArmPos) * Vector3.new(-1 ,0, -1)).unit
		local Look = (Head.CFrame.lookVector * Vector3.new(-1, 0, -1)).unit
		local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
		if tostring(LateralAngle) == "-1.#IND" then
			LateralAngle = 0
		end
		local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
		if LateralAngle < (-math.pi / 2) then
			LateralAngle = (-math.pi / 2)
		end
		if Cross.Y > 0 then
			LateralAngle = -LateralAngle
		end
		RightShoulder.C0 = CFrame.new(RightShoulder.C0.p) * CFrame.Angles(((-math.pi / 2) + Angle), ((-math.pi / 2) - LateralAngle), -math.pi/2)
		wait()
		local pa = Instance.new('Part',workspace)
		pa.Name = "SPOODERMEN"
		pa.Size = Vector3.new(0.2,0.2,0.2)
		pa.Anchored = true
		pa.CFrame = CFrame.new(MousePosition)
		pa.Transparency = 1
		local att = Instance.new('Attachment',pa)
		local att2 = Instance.new('Attachment',RightArm)
		att2.CFrame = CFrame.new(0,-1,0)
		att2.Axis = Vector3.new(0,0,0)
		local ropez = Instance.new('RopeConstraint',RightArm)
		ropez.Color = BrickColor.new('Institutional white')
		ropez.Attachment0 = att
		ropez.Attachment1 = att2
		ropez.Length = ropez.CurrentDistance-5
		ropez.Visible = true
		rope = ropez
		crawling = false
		txt2.Text = "Toggle wall climb on with C."
		end
	else
		if plr.Character and plr.Character:FindFirstChildOfClass('Humanoid') and plr.Character:FindFirstChild('Right Arm') and plr.Character:FindFirstChild('Torso') and plr.Character.Torso:FindFirstChild('Left Shoulder') then
			local RightShoulder = plr.Character.Torso["Left Shoulder"]
			rope:Destroy()
			rope = nil
			RightShoulder.C0 = CFrame.new(RightShoulder.C0.p)*CFrame.Angles(0,-math.pi/2,0)
			working = false
			working2 = false
			forward = false
			backward = false
			right = false
			left = false
-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

-- Properties
ScreenGui.Name = "hekking spiderman"
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 0.0500000007, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "!! PRESS BACKSPACE TO REGAIN BALANCE !!"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
		end
	end
elseif key == "q" and rope ~= nil then
	working = true
	working2 = false
elseif key == "e" and rope ~= nil then
	working2 = true
	working = false
elseif key == "w" and rope ~= nil then
	forward = true
elseif key == "s" and rope ~= nil then
	backward = true
elseif key == "a" and rope ~= nil then
	left = true
elseif key == "d" and rope ~= nil then
	right = true
elseif key == "x" and shooting == false then
	if plr.Character and mouse.Hit and plr.Character:FindFirstChild('Head') and plr.Character:FindFirstChild('Right Arm') and plr.Character:FindFirstChild('Torso') and plr.Character.Torso:FindFirstChild('Right Shoulder') then
		shooting = true
		local Head = plr.Character.Head
		local RightShoulder = plr.Character.Torso["Right Shoulder"]
		local RightArm = plr.Character["Right Arm"]
		local MousePosition = mouse.Hit.p
		local ToMouse = (MousePosition - Head.Position).unit
		local Angle = math.acos(ToMouse:Dot(Vector3.new(0, 1, 0)))
		local FromRightArmPos = (Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(((Head.Size.X / 2) + (RightArm.Size.X / 2)), ((Head.Size.Y / 2) - (RightArm.Size.Z / 2)), 0)))
		local ToMouseRightArm = ((MousePosition - FromRightArmPos) * Vector3.new(1 ,0, 1)).unit
		local Look = (Head.CFrame.lookVector * Vector3.new(1, 0, 1)).unit
		local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
		if tostring(LateralAngle) == "-1.#IND" then
			LateralAngle = 0
		end
		local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
		if LateralAngle > (math.pi / 2) then
			LateralAngle = (math.pi / 2)
		end
		if Cross.Y < 0 then
			LateralAngle = -LateralAngle
		end
		RightShoulder.C0 = CFrame.new(RightShoulder.C0.p) * CFrame.Angles(((math.pi / 2) - Angle), ((math.pi / 2) + LateralAngle), math.pi/2)
		wait()
		local shot = Instance.new('Part',workspace)
		shot.Name = "AAAA"
		shot.CanCollide = false
		shot.BrickColor = BrickColor.new('Institutional white')
		shot.Size = Vector3.new(3,3,0.2)
		shot.Transparency = 1
		shot.CFrame = CFrame.new(chr['Right Arm'].CFrame.p, mouse.Hit.p)*CFrame.Angles(0,0,0)
		local dec = Instance.new('Decal',shot)
		dec.Texture = 'rbxassetid://148633485'
		local dec2 = Instance.new('Decal',shot)
		dec2.Texture = 'rbxassetid://148633485'
		dec2.Face = Enum.NormalId.Back
		local heck = Instance.new('BodyVelocity',shot)
		heck.Velocity = (shot.CFrame*CFrame.Angles(0,0,0)).lookVector*120
		shot.Touched:connect(function(hit)
			if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent ~= chr then
				webshot(hit.Parent)
				shot:Destroy()
			elseif hit.Parent.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent.Parent ~= chr then
				webshot(hit.Parent.Parent)
				shot:Destroy()
			elseif hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and hit.Parent:FindFirstChildOfClass('Humanoid') == nil then
				shot:Destroy()
			end
		end)
		wait(1)
		RightShoulder.C0 = CFrame.new(RightShoulder.C0.p)*CFrame.Angles(0,math.pi/2,0)
		shooting = false
	end
elseif key == "c" and rope == nil then
	if crawling then
		crawling = false
		txt2.Text = "Toggle wall climb on with C."
	else
		crawling = true
		txt2.Text = "Toggle wall climb off with C."
	end
elseif key == "z" and rope == nil and wing1 == nil and wing2 == nil then
	local plr = game.Players.LocalPlayer
		if chr:FindFirstChild('HumanoidRootPart') and chr.HumanoidRootPart:FindFirstChild('RootJoint') then
			chr.HumanoidRootPart.RootJoint.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(180))
		end
		if chr.Torso:FindFirstChild('Right Shoulder') then
			chr.Torso["Right Shoulder"].C0 = CFrame.new(1.5,0,0)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(90))
		end
		if chr.Torso:FindFirstChild('Left Shoulder') then
			chr.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,0,0)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(-90))
		end
		if chr:FindFirstChildOfClass('Humanoid'):FindFirstChild('Animator') and chr:FindFirstChild('Animate') then
			animator = chr:FindFirstChildOfClass('Humanoid'):FindFirstChild('Animator')
			animator:remove()
			chr.Animate.Disabled = true
		end
		if chr:FindFirstChildOfClass('Humanoid') then
			chr:FindFirstChildOfClass('Humanoid').HipHeight = -3
			chr:FindFirstChildOfClass('Humanoid').WalkSpeed = 40
		end
		if chr:FindFirstChild('Torso') then
			wing1 = Instance.new('WedgePart',chr)
			wing1.Size = Vector3.new(0.2,1.5,3)
			wing1.Transparency = 1
			local dec = Instance.new('Decal',wing1)
			dec.Texture = 'http://www.roblox.com/asset/?id=148633485'
			dec.Face = Enum.NormalId.Right
			local dec2 = Instance.new('Decal',wing1)
			dec2.Texture = 'http://www.roblox.com/asset/?id=148633485'
			dec2.Face = Enum.NormalId.Left
			local dec3 = Instance.new('Decal',wing1)
			dec3.Texture = 'http://www.roblox.com/asset/?id=148633485'
			dec3.Face = Enum.NormalId.Front
			local weld = Instance.new('Weld',wing1)
			weld.Part0 = wing1
			weld.Part1 = chr.Torso
			weld.C0 = CFrame.new(0,-1.5,1)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
			wing2 = Instance.new('WedgePart',chr)
			wing2.Size = Vector3.new(0.2,1.5,3)
			wing2.Transparency = 1
			local dec4 = Instance.new('Decal',wing2)
			dec4.Texture = 'http://www.roblox.com/asset/?id=148633485'
			dec4.Face = Enum.NormalId.Right
			local dec5 = Instance.new('Decal',wing2)
			dec5.Texture = 'http://www.roblox.com/asset/?id=148633485'
			dec5.Face = Enum.NormalId.Left
			local dec6 = Instance.new('Decal',wing2)
			dec6.Texture = 'http://www.roblox.com/asset/?id=148633485'
			dec6.Face = Enum.NormalId.Front
			local weld2 = Instance.new('Weld',wing2)
			weld2.Part0 = wing2
			weld2.Part1 = chr.Torso
			weld2.C0 = CFrame.new(0,-1.5,1)*CFrame.Angles(math.rad(180),math.rad(270),math.rad(90))
			for i,v in pairs(chr:GetChildren()) do
				if v:IsA('Part') then
					v.Velocity = Vector3.new(0,0,0)
					local BodyForce = Instance.new('BodyForce',v)
					local Part = v
					BodyForce.Name = "stop destroying me"
					BodyForce.Force = Vector3.new(0,Part.Size.X * Part.Size.Y * Part.Size.Z * (game.Workspace.Gravity-45),0)
				end
			end
		end
elseif key == string.char(8) then
	if game.CoreGui:FindFirstChild('hekking spiderman') then
		game.CoreGui:FindFirstChild('hekking spiderman'):Destroy()
	end
elseif key == string.char(47) or key == string.char(48) then
	if chr:FindFirstChildOfClass('Humanoid') then
		chr:FindFirstChildOfClass('Humanoid').WalkSpeed = 30
	end
end
end)

mouse.KeyUp:connect(function(key)
	if key == "q" and rope ~= nil then
		working = false
	elseif key == "e" and rope ~= nil then
		working2 = false
	elseif key == "w" and rope ~= nil then
		forward = false
	elseif key == "s" and rope ~= nil then
		backward = false
	elseif key == "a" and rope ~= nil then
		left = false
	elseif key == "d" and rope ~= nil then
		right = false
	elseif key == "z" and wing1 ~= nil and wing2 ~= nil then
		if animator and chr:FindFirstChildOfClass('Humanoid') and chr:FindFirstChild('Animate') then
			animator.Parent = chr:FindFirstChildOfClass('Humanoid')
			chr.Animate.Disabled = false
		end
		if chr.Torso:FindFirstChild('Right Shoulder') then
			chr.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,0)*CFrame.Angles(0,math.pi/2,0)
		end
		if chr.Torso:FindFirstChild('Left Shoulder') then
			chr.Torso["Left Shoulder"].C0 = CFrame.new(-1,0.5,0)*CFrame.Angles(0,-math.pi/2,0)
		end
		if chr:FindFirstChild('HumanoidRootPart') and chr.HumanoidRootPart:FindFirstChild('RootJoint') then
			chr.HumanoidRootPart.RootJoint.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-270),math.rad(180),math.rad(0))
		end
		if chr:FindFirstChildOfClass('Humanoid') then
			chr:FindFirstChildOfClass('Humanoid').HipHeight = 0
			chr:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
		end
		if wing1 then
			wing1:Destroy()
			wing1 = nil
		end
		if wing2 then
			wing2:Destroy()
			wing2 = nil
		end
		for i,v in pairs(plr.Character:GetChildren()) do
			if v:IsA('Part') then
				for a,c in pairs(v:GetChildren()) do
					if c:IsA('BodyForce') then
						c:Destroy()
					end
				end
			end
		end
	elseif key == string.char(47) or key == string.char(48) then
		if chr:FindFirstChildOfClass('Humanoid') then
			chr:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
		end
	end
end)

plr.CharacterAppearanceLoaded:connect(function()
	wait()
	for i,v in pairs(hats) do
		table.remove(hats,i)
	end
	if plr.Character:FindFirstChild('Torso') then
	local chr = plr.Character
	chr.Torso.Touched:connect(function(hit)
		if hit:IsA('TrussPart') == false and rope == nil and crawling and hit.CanCollide then
			local c = Instance.new('TrussPart',workspace.CurrentCamera)
			c.Anchored = true
			c.Transparency = 1
			c.CFrame = CFrame.new(chr.Torso.Position + (chr.Torso.CFrame.lookVector * 1), chr.Torso.Position + (chr.Torso.CFrame.lookVector * 12))
			game:GetService('Debris'):AddItem(c,0.5)
		end
	end)
end
end)

if plr.Character:FindFirstChild('Torso') then
	local chr = plr.Character
	chr.Torso.Touched:connect(function(hit)
		if hit:IsA('TrussPart') == false and rope == nil and crawling and hit.CanCollide then
			local c = Instance.new('TrussPart',workspace.CurrentCamera)
			c.Anchored = true
			c.Transparency = 1
			c.CFrame = CFrame.new(chr.Torso.Position + (chr.Torso.CFrame.lookVector * 1), chr.Torso.Position + (chr.Torso.CFrame.lookVector * 12))
			game:GetService('Debris'):AddItem(c,0.5)
		end
	end)
end

game:GetService('RunService').Stepped:connect(function()
	chr = plr.Character
	local cam = game.Workspace.CurrentCamera
	for i,v in pairs(plr.PlayerGui:GetChildren()) do
		if v.Name == "SPOOOODA" then
			v:Destroy()
		end
	end
	if chr:FindFirstChild('HumanoidRootPart') and (cam.CoordinateFrame.p - chr.HumanoidRootPart.Position).magnitude < 2 then
		local haay = Instance.new('ScreenGui',plr.PlayerGui)
		haay.Name = "SPOOOODA"
		local img = Instance.new('ImageLabel',haay)
		img.Image = 'rbxassetid://744896574'
		img.BackgroundTransparency = 1
		img.Size = UDim2.new(1,0,1,0)
	end
	if plr.Character:FindFirstChild('Torso') then
	for a,c in pairs(plr.Character:GetChildren()) do
		for i,v in pairs(c:GetChildren()) do
			if v:IsA('BodyForce') and v.Name ~= "stop destroying me" then
				v:Destroy()
			end
		end
	end
	end
	if rope ~= nil and plr.Character and plr.Character:FindFirstChildOfClass('Humanoid') then
		plr.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
	end
	if working then
		rope.Length = rope.Length-2
		if rope ~= nil and plr.Character and plr.Character:FindFirstChild('Torso') then
		for i,v in pairs(plr.Character:GetChildren()) do
		if v:IsA('Part') then
		local BodyForce = Instance.new('BodyForce',v)
		local Part = v
		BodyForce.Force = Vector3.new(0,Part.Size.X * Part.Size.Y * Part.Size.Z * 196.2,0)
		end
		end
	end
	end
	if working2 then
		rope.Length = rope.Length+1
	end
	if forward and plr.Character and plr.Character:FindFirstChild('Torso') then
		local force = Instance.new('BodyForce',plr.Character.Torso)
		force.Force = Vector3.new(cam.CFrame.lookVector.x*1000,0,cam.CFrame.lookVector.z*1000)
	end
	if right and plr.Character and plr.Character:FindFirstChild('Torso') then
		local force = Instance.new('BodyForce',plr.Character.Torso)
		force.Force = Vector3.new(cam.CFrame.rightVector.x*1000,0,cam.CFrame.rightVector.z*1000)
	end
	if left and plr.Character and plr.Character:FindFirstChild('Torso') then
		local force = Instance.new('BodyForce',plr.Character.Torso)
		force.Force = Vector3.new(-cam.CFrame.rightVector.x*1000,0,-cam.CFrame.rightVector.z*1000)
	end
	if backward and plr.Character and plr.Character:FindFirstChild('Torso') then
		local force = Instance.new('BodyForce',plr.Character.Torso)
		force.Force = Vector3.new(-cam.CFrame.lookVector.x*1000,0,-cam.CFrame.lookVector.z*1000)
	end
	for i,v in pairs(chr:GetChildren()) do
		if v:IsA('Part') and v.Anchored == true then
			v.Anchored = false
		end
	end
	if active then
	for i,v in pairs(plr.Character:GetChildren()) do
		if v:IsA('Accessory') then
			if v:FindFirstChildOfClass('Part') then
				if v:FindFirstChildOfClass('Part'):FindFirstChildOfClass('SpecialMesh') then
					if v:FindFirstChildOfClass('Part'):FindFirstChildOfClass('SpecialMesh').TextureId ~= "rbxassetid://454487924" then
						table.insert(hats,v:Clone())
					end
				end
			end
			v:Destroy()
		elseif v:IsA('Shirt') then
			if v.ShirtTemplate ~= 'rbxassetid://616223451' then
				table.insert(hats,v:Clone())
			end
			v:Destroy()
		elseif v:IsA('Pants') then
			if v.PantsTemplate ~= 'rbxassetid://616226602' then
				table.insert(hats,v:Clone())
			end
			v:Destroy()
		end
	end
	local shirt = Instance.new('Shirt',plr.Character)
	shirt.ShirtTemplate = 'rbxassetid://616223451'
	local pants = Instance.new('Pants',plr.Character)
	pants.PantsTemplate = 'rbxassetid://616226602'
	local ac = Instance.new('Accessory',plr.Character)
	local pa = Instance.new('Part',ac)
	pa.Size = Vector3.new(1,1,1)
	local me = Instance.new('SpecialMesh',pa)
	me.MeshType = Enum.MeshType.FileMesh
	me.MeshId = 'rbxassetid://151354047'
	me.TextureId = 'rbxassetid://454487924'
	me.Scale = Vector3.new(1.26,1.26,1.26)
	local weld = Instance.new('Weld',pa)
	weld.Part0 = pa
	weld.Part1 = plr.Character.Head
	else
	for i,v in pairs(plr.Character:GetChildren()) do
		if v:IsA('Accessory') or v:IsA('Shirt') or v:IsA('Pants') then
			v:Destroy()
		end
	end
	for i,v in pairs(hats) do
		v:Clone().Parent = chr
	end
	end
end)