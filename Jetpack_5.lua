if script == nil then return end


Player = game:GetService("Players"):FindFirstChild("DarkShadow6")
jetpackGyro = nil
jetpackGyroAdd = CFrame.fromEulerAnglesXYZ(-3.14 / 2, 0, 0)
jetpackVelocity = nil
jetpackFloating = false
jetpackSpeed2 = 75
jetpackSpeed = jetpackSpeed2


function makeParts()
	local jetpack = Instance.new("Model")
	jetpack.Name = "Jetpack"
	jetpack.Parent = Player.Character
	local p = Instance.new("Part")
	p.Name = "Backpack"
	p.FormFactor = "Custom"
	p.size = Vector3.new(2, 2, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(1, 1, 1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(0, 0, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Wing Open 1"
	p.Transparency = 1
	p.FormFactor = "Custom"
	p.size = Vector3.new(3, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(1, 0.75, 0.25)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(2.5, 0, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Wing Open 2"
	p.Transparency = 1
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(1, 1, 1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(4.5, 0, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Wing Open 3"
	p.Transparency = 1
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(0.5, 1.5, 0.5)
	m.MeshId = "http://www.roblox.com/Asset/?id=1033714"
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(4.5, -1.325, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Wing Closed 1"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(1, 1, 1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(1.25, 0, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Left Wing Closed 2"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(0.5, 1.5, 0.5)
	m.MeshId = "http://www.roblox.com/Asset/?id=1033714"
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(1.25, -1.325, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Wing Open 1"
	p.Transparency = 1
	p.FormFactor = "Custom"
	p.size = Vector3.new(3, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(1, 0.75, 0.25)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(-2.5, 0, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Wing Open 2"
	p.Transparency = 1
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(1, 1, 1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(-4.5, 0, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Wing Open 3"
	p.Transparency = 1
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(0.5, 1.5, 0.5)
	m.MeshId = "http://www.roblox.com/Asset/?id=1033714"
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(-4.5, -1.325, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Wing Closed 1"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(1, 1, 1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(-1.25, 0, -1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Right Wing Closed 2"
	p.FormFactor = "Custom"
	p.size = Vector3.new(1, 2, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = jetpack
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Head"
	m.Scale = Vector3.new(-0.5, 1.5, 0.5)
	m.MeshId = "http://www.roblox.com/Asset/?id=1033714"
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = Player.Character:FindFirstChild("Torso")
	w.C0 = CFrame.new(-1.25, -1.325, -1)
	w.C1 = CFrame.new()
	w.Parent = p
end


function removeParts()
	if Player.Character:FindFirstChild("Jetpack") ~= nil then
		Player.Character.Jetpack:Remove()
	end
end


function Weld(x, y)
	weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


function Wings(format)
	if Player.Character:FindFirstChild("Jetpack") == nil then return false end
	if format == 0 then
		if jetpackFloating == false then
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Neck") ~= nil then
					Player.Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0.25)
					Player.Character.Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-3.14 / 2.5, 0, 0)
				end
			end
		end
		Children = Player.Character.Jetpack:GetChildren()
		for i = 1, #Children do
			if string.match(Children[i].Name, "Wing Open") then
				Children[i].Transparency = 0
				Children[i].CanCollide = true
			end
			if string.match(Children[i].Name, "Wing Closed") then
				Children[i].Transparency = 1
				Children[i].CanCollide = false
			end
		end
		local s = Instance.new("Smoke")
		s.Name = "Smoke"
		s.RiseVelocity = -5
		s.Size = 1
		s.Color = Color3.new(0.5, 0.5, 0.5)
		s.Enabled = true
		local f = Instance.new("Fire")
		f.Name = "Fire"
		f.Heat = -25
		f.Size = 3
		f.Enabled = true
		if Player.Character.Jetpack:FindFirstChild("Left Wing Open 2") ~= nil then
			if Player.Character.Jetpack["Left Wing Open 2"]:FindFirstChild("Smoke") == nil then
				s:Clone().Parent =  Player.Character.Jetpack["Left Wing Open 2"]
				f:Clone().Parent =  Player.Character.Jetpack["Left Wing Open 2"]
			end
		end
		if Player.Character.Jetpack:FindFirstChild("Right Wing Open 2") ~= nil then
			if Player.Character.Jetpack["Right Wing Open 2"]:FindFirstChild("Smoke") == nil then
				s:Clone().Parent =  Player.Character.Jetpack["Right Wing Open 2"]
				f:Clone().Parent =  Player.Character.Jetpack["Right Wing Open 2"]
			end
		end
	elseif format == 1 then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Neck") ~= nil then
				Player.Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0)
				Player.Character.Torso.Neck.C1 = CFrame.new(0, 0, 0)
			end
		end
		Children = Player.Character.Jetpack:GetChildren()
		for i = 1, #Children do
			if string.match(Children[i].Name, "Wing Open") then
				Children[i].Transparency = 1
				Children[i].CanCollide = false
			end
			if string.match(Children[i].Name, "Wing Closed") then
				Children[i].Transparency = 0
				Children[i].CanCollide = true
			end
		end
		if Player.Character.Jetpack:FindFirstChild("Left Wing Open 2") ~= nil then
			if Player.Character.Jetpack["Left Wing Open 2"]:FindFirstChild("Smoke") ~= nil then
				Player.Character.Jetpack["Left Wing Open 2"].Smoke:Remove()
			end
		end
		if Player.Character.Jetpack:FindFirstChild("Right Wing Open 2") ~= nil then
			if Player.Character.Jetpack["Right Wing Open 2"]:FindFirstChild("Smoke") ~= nil then
				Player.Character.Jetpack["Right Wing Open 2"].Smoke:Remove()
			end
		end
		if Player.Character.Jetpack:FindFirstChild("Left Wing Open 2") ~= nil then
			if Player.Character.Jetpack["Left Wing Open 2"]:FindFirstChild("Fire") ~= nil then
				Player.Character.Jetpack["Left Wing Open 2"].Fire:Remove()
			end
		end
		if Player.Character.Jetpack:FindFirstChild("Right Wing Open 2") ~= nil then
			if Player.Character.Jetpack["Right Wing Open 2"]:FindFirstChild("Fire") ~= nil then
				Player.Character.Jetpack["Right Wing Open 2"].Fire:Remove()
			end
		end
	end	
end


function onButton1Down(mouse)
	if Player.Character:FindFirstChild("Jetpack") == nil then return end --or Button1Down == truethen return end
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
	Button1Down = true
	if Player.Character:FindFirstChild("Humanoid") ~= nil then
		Player.Character.Humanoid.PlatformStand = true
	end
	Wings(0)
	while Button1Down == true do
		if Player.Character == nil then return end
		if Player.Character:FindFirstChild("Torso") == nil then return end
		if Player.Character:FindFirstChild("Humanoid") == nil then return end
		if Player.Character:FindFirstChild("Jetpack") == nil then return end
		if jetpackGyro == nil then
			jetpackGyro = Instance.new("BodyGyro")
			jetpackGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			jetpackGyro.Parent = Player.Character.Torso
		end
		if jetpackVelocity == nil then
			jetpackVelocity = Instance.new("BodyVelocity")
			jetpackVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			jetpackVelocity.P = 100
			jetpackVelocity.Parent = Player.Character.Torso
		end
		jetpackGyro.cframe = CFrame.new(Player.Character.Torso.Position, mouse.Hit.p) * jetpackGyroAdd
		jetpackVelocity.velocity = (mouse.Hit.p - Player.Character.Torso.Position).unit * jetpackSpeed
		wait(0.01)
	end
end


function onButton1Up(mouse)
	if jetpackGyro ~= nil then
		jetpackGyro:Remove()
		jetpackGyro = nil
	end
	if jetpackVelocity ~= nil then
		jetpackVelocity:Remove()
		jetpackVelocity = nil
	end
	if Player.Character:FindFirstChild("Humanoid") ~= nil then
		Player.Character.Humanoid.PlatformStand = false
	end
	Wings(1)
	Button1Down = false
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
end


function onKeyDown(key, mouse)
	key = key:lower()
	if key == "q" then
		if jetpackFloating == true then
			jetpackFloating = false
			jetpackGyroAdd = CFrame.fromEulerAnglesXYZ(-3.14 / 2, 0, 0)
			jetpackSpeed = jetpackSpeed2
			if Button1Down == true then
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Neck") ~= nil then
						Player.Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0.25)
						Player.Character.Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-3.14 / 2.5, 0, 0)
					end
				end
			end
		elseif jetpackFloating == false then
			jetpackFloating = true
			jetpackGyroAdd = CFrame.fromEulerAnglesXYZ(0, 0, 0)
			jetpackSpeed2 = jetpackSpeed
			jetpackSpeed = 0
			if Button1Down == true then
				if Player.Character:FindFirstChild("Torso") ~= nil then
					if Player.Character.Torso:FindFirstChild("Neck") ~= nil then
						Player.Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0)
						Player.Character.Torso.Neck.C1 = CFrame.new(0, 0, 0)
					end
				end
			end
		end
	end
	if jetpackFloating == false then
		if key == "z" then
			if jetpackSpeed >= 25 then
				jetpackSpeed = jetpackSpeed - 25
			else
				jetpackSpeed = 25
			end
		end
		if key == "x" then
			if jetpackSpeed <= 1000 then
				jetpackSpeed = jetpackSpeed + 25
			else
				jetpackSpeed = 1000
			end
		end
	end
end


function onKeyUp(key, mouse)
	key = key:lower()
end

function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
	mouse.KeyUp:connect(function(key) onKeyUp(key, mouse) end)
	makeParts()
end


function onDeselected(mouse)
	Button1Down = false
	jetpackFloating = false
	jetpackGyroAdd = CFrame.fromEulerAnglesXYZ(-3.14 / 2, 0, 0)
	jetpackSpeed = jetpackSpeed2
	if jetpackGyro ~= nil then
		jetpackGyro:Remove()
		jetpackGyro = nil
	end
	if jetpackVelocity ~= nil then
		jetpackVelocity:Remove()
		jetpackVelocity = nil
	end
	if Player.Character:FindFirstChild("Humanoid") ~= nil then
		Player.Character.Humanoid.PlatformStand = false
	end
	removeParts()
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = "Jetpack"
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" then
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end