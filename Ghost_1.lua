plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
part = nil
bp = nil
particles = nil
function clerp(a,b,c,d)
	for i = 0,d,.01 do
		a.CFrame = CFrame.new(b:lerp(c,i))
		wait()
	end
end
function slerp(a2,b2,c2,d2)
	for i2 = 0,d2,.01 do
		a2.CFrame = CFrame.new(b2:lerp(c2,i2))
		wait()
	end
end
mouse.KeyDown:connect(function(key)
	if key == "e" and plr.Character.Parent == workspace then
		plr.Character.Parent = workspace.Camera
		plr.Character.Archivable = true
		Instance.new("ForceField",plr.Character).Visible = false
		for y,t in pairs(plr.Character:GetChildren()) do
			if t:IsA("Part") and t.Name ~= "HumanoidRootPart" then
				t.Transparency = 1
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face.Transparency = 1
				end
			elseif t:IsA("Accessory") and t:FindFirstChild("Handle") then
				t.Handle.Transparency = 1
			end
		end
	elseif key == "z" and plr.Character.Parent == workspace.Camera and part == nil then
		plr.Character.Torso.CFrame = CFrame.new(Vector3.new(mouse.hit.p.X,mouse.hit.p.Y+1.5,mouse.hit.p.Z),plr.Character.Torso.CFrame.p)
	elseif key == "x" and plr.Character.Parent == workspace.Camera and part == nil then
		if plr.Character.Torso.Anchored == true then
			for y,t in pairs(plr.Character:GetChildren()) do
				if t:IsA("Part") then
					t.Anchored = false
				end
			end
		else
			for y,t in pairs(plr.Character:GetChildren()) do
				if t:IsA("Part") then
					t.Anchored = true
				end
			end
		end
	elseif key == "c" and plr.Character.Parent == workspace.Camera and part ~= nil then
		local clone = part:Clone()
		clone.Parent = workspace
		clone.Anchored = false
		clone:ClearAllChildren()
		clone.CanCollide = true
		bp.Parent = clone
		particles.Parent = clone
		if part.Parent:FindFirstChildOfClass("Humanoid") then
			part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = false
		end
		part:Destroy()
		part = clone
	elseif key == "t" and plr.Character.Parent == workspace.Camera and part == nil then
		plr.Character.Parent = workspace
		plr.Character.Archivable = false
		plr.Character:FindFirstChildOfClass("ForceField"):Remove()
		for y,t in pairs(plr.Character:GetChildren()) do
			if t:IsA("Part") and t.Name ~= "HumanoidRootPart" then
				t.Transparency = 0
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face.Transparency = 0
				end
			elseif t:IsA("Accessory") and t:FindFirstChild("Handle") then
				t.Handle.Transparency = 0
			end
		end
	end
end)
mouse.Button1Down:connect(function()
	if plr.Character.Parent == workspace.Camera then
		if mouse ~= nil then
			if mouse.Target ~= nil then
				part = mouse.Target
				bp = Instance.new("BodyPosition",part)
				bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				bp.Position = part.Position
				particles = Instance.new("ParticleEmitter",part)
				particles.Color = ColorSequence.new(Color3.new(0,0,0))
				particles.Size = NumberSequence.new(1)
				particles.Texture = "rbxassetid://292289455"
				particles.VelocitySpread = 360
				particles.Speed = NumberRange.new(0)
				particles.RotSpeed = NumberRange.new(0)
				particles.Rotation = NumberRange.new(0)
				particles.Rate = 250
				particles.Lifetime = NumberRange.new(.2,.4)
				particles.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(.12,.688,0),NumberSequenceKeypoint.new(.891,.887,0),NumberSequenceKeypoint.new(1,1,0)})
				dwn = true
			end
		end
		while dwn == true do 
			wait()	
			bp.Position = mouse.hit.p
			if part then
				if part.Parent:FindFirstChildOfClass("Humanoid") then
					part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = true
				end
			end
		end
	end
end)
mouse.Button1Up:connect(function()
	dwn = false
	if part then if part.Parent:FindFirstChildOfClass("Humanoid") then part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = false end part = nil end
	if bp then bp:Destroy() end
	if particles then particles:Destroy() end
end)
base = Instance.new("ScreenGui",plr.PlayerGui)
bbg = Instance.new("BillboardGui",plr.Character.Head)
bbg.Size = UDim2.new(0,200,0,50)
bbg.StudsOffset = Vector3.new(0,3,0)
bbgTl = Instance.new("TextLabel",bbg)
bbgTl.BackgroundTransparency = 1
bbgTl.Size = UDim2.new(10,0,1,0)
bbgTl.Position = UDim2.new(-4.5,0,0,0)
bbgTl.Font = "Code"
bbgTl.Text = " "
bbgTl.TextSize = 25
bbgTl.TextStrokeColor3 = Color3.new(1,1,1)
bbgTl.TextColor3 = Color3.new(0,0,0)
bbgTl.TextStrokeTransparency = 0
bbgTl.TextWrapped = true
plr.Chatted:connect(function(msg)
	bbgTl.Text = msg
	wait(5)
	if bbgTl.Text == msg then
		bbgTl.Text = " "
	end
end)
touchCounter = 0
while wait() do
	if plr.Character.Parent == workspace.Camera then
		local c = plr.Character:Clone()
		c:MakeJoints()
		for y,t in pairs(c:GetChildren()) do
			if t:IsA("Part") then
				t.CanCollide = false 
				t.Anchored = true 
				t.Transparency = .5
				t.TopSurface = "Smooth"
				t.BottomSurface = "Smooth"
				t.RightSurface = "Smooth"
				t.LeftSurface = "Smooth"
				t.FrontSurface = "Smooth"
				t.BackSurface = "Smooth"
				t.BrickColor = BrickColor.new("Really black")
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face:Remove()
				elseif t.Name == "Torso" and t:FindFirstChild("roblox") then
					t.roblox:Remove()
				elseif t.Name == "HumanoidRootPart" then
					t:Remove()
				end
			else 
				t:Remove()
			end
		end
		c.Parent = workspace
		game.Debris:AddItem(c,.05)
	end
end