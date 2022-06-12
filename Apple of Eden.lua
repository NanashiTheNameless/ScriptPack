--Apple of Eden

plr = game:service'Players'.LocalPlayer
plrgui = plr.PlayerGui
char = plr.Character
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char:findFirstChild("Head")
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera

RS = game:service'RunService'

local tool = Instance.new('HopperBin', plr.Backpack)
tool.Name = 'Apple of Eden'

local rm = Instance.new("Weld")
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = 'Right Shoulder'

local lm = Instance.new("Weld")
lm.C0 = CFrame.new(-1.35, 0.45, 0)
lm.C1 = CFrame.new(0, 0, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = "Left Shoulder"

rsc0 = rm.C0
lsc0 = lm.C0

local Apple = Instance.new'Model'
Apple.Name = 'Apple of Eden'
local handle = Instance.new('Part', Apple)
handle.Shape = 'Ball'
handle.FormFactor = 'Custom'
handle.CanCollide = false
handle.LeftSurface = 10
handle.RightSurface = 10
handle.FrontSurface = 10
handle.BackSurface = 10
handle.TopSurface = 10
handle.BottomSurface = 10
handle.Material = 'SmoothPlastic'
Instance.new('PointLight', handle).Color = Color3.new(1,1,0)
handle.Size = Vector3.new(1,1,1)
local HandleWeld = Instance.new('Weld', handle)
HandleWeld.Part0 = handle
HandleWeld.Part1 = ra
HandleWeld.C0 = CFrame.Angles(math.pi/2, 0, 0)
HandleWeld.C1 = CFrame.new(-.25, -1.2, -.25)

local ring = handle:clone()
ring.Shape = 'Block'
ring.PointLight:remove()
ring.Parent = Apple
ring.FormFactor = 'Custom'
ring.BrickColor = BrickColor.new('New Yeller')
ring.Size = Vector3.new(1.025,.2,1.025)
Instance.new('CylinderMesh', ring).Scale = Vector3.new(.9975, .5, .9975)
local wld = Instance.new('Weld', handle)
wld.Part0 = ring
wld.Part1 = handle

local ring = ring:clone()
ring.Parent = Apple
ring.Size = Vector3.new(1,.2,1)
Instance.new('CylinderMesh', ring).Scale = Vector3.new(.85, .5, .85)
local wld = Instance.new('Weld', handle)
wld.Part0 = ring
wld.Part1 = handle
wld.C0 = CFrame.Angles(0, 0, math.pi/2)
wld.C1 = CFrame.new(.225, .045, 0)

local ring = ring:clone()
ring.Parent = Apple
ring.Size = Vector3.new(1,.2,1)
Instance.new('CylinderMesh', ring).Scale = Vector3.new(.85, .5, .85)
local wld = Instance.new('Weld', handle)
wld.Part0 = ring
wld.Part1 = handle
wld.C0 = CFrame.Angles(0, 0, math.pi/2)
wld.C1 = CFrame.new(-.225, .045, 0)

local RadiusEffect = Instance.new('Part')
RadiusEffect.FormFactor = 'Custom'
RadiusEffect.Size = Vector3.new(0,0,0)
RadiusEffect.Transparency = .99
RadiusEffect.Anchored = true
RadiusEffect.CanCollide = false

local surfacegui = Instance.new('SurfaceGui', RadiusEffect)
surfacegui.Face = 'Top'
local image = Instance.new('ImageLabel', surfacegui)
image.Size = UDim2.new(1,0,1,0)
image.Image = "rbxassetid://166139049"
image.BackgroundTransparency = 1

radius = .1

tool.Selected:connect(function(mouse)
	rs.Parent = nil
	rm.Parent = torso
	Apple.Parent = char
	for angle = 0, 70, 10 do
	rm.C0 = rsc0 * CFrame.Angles(math.rad(angle), 0, -math.rad(angle)/4)
	RS.RenderStepped:wait()
	end

	mouse.Button1Down:connect(function()
		if debounce then return end
		debounce = true
		for angle = 0, 70, 5 do
			rm.C0 = rsc0 * CFrame.Angles(math.rad(70) + math.rad(angle)*1.2, 0, math.rad(angle)/3+(-math.rad(70)/4))
			RS.RenderStepped:wait()
		end
		radius = .1
		RadiusEffect.Parent = char
		while debounce do
			wait(0)
			radius = radius + .25
			if radius >= 20 then 
				for angle = 70, 0, -5 do
					rm.C0 = rsc0 * CFrame.Angles(math.rad(70) + math.rad(angle)*1.2, 0, math.rad(angle)/3+(-math.rad(70)/4))
					RS.RenderStepped:wait()
				end
				RadiusEffect.Parent = nil
				debounce = false
				wait()
				for i,v in pairs(game:service'Players':players()) do
					if v.Character and v.Character:findFirstChild'Humanoid' then
						if v.Character ~= char then
							v.Character:findFirstChild'Humanoid'.WalkSpeed = 16
							wait()
							if v.Character.Head and (head.Position - v.Character.Head.Position).magnitude <= radius and v.Character:findFirstChild'Humanoid' and v ~= plr then
								v.Character:FindFirstChild'Humanoid'.Health = v.Character:FindFirstChild'Humanoid'.Health - math.random(21,27)
								coroutine.wrap(function()
									v.Character:findFirstChild'Humanoid'.WalkSpeed = -16
									wait(10)
									v.Character:findFirstChild'Humanoid'.WalkSpeed = 16
								end)()
							end
						end
					end
				end
				wait(.5)
				humanoid.WalkSpeed = 16
				wait(4.5)
				humanoid.Health = humanoid.Health + 50
				break
			end

			RadiusEffect.Size = Vector3.new(radius,0,radius)
			RadiusEffect.CFrame = rootpart.CFrame * CFrame.new(0, -3, 0)
			for i,v in pairs(game:service'Players':players()) do
				if v.Character and v.Character:findFirstChild'Humanoid' then
					v.Character:findFirstChild'Humanoid'.WalkSpeed = 6
				end
				if v.Character and v.Character.Head and (head.Position - v.Character.Head.Position).magnitude <= radius and v.Character:findFirstChild'Humanoid' and v ~= plr then
					v.Character:FindFirstChild'Humanoid'.Health = v.Character:FindFirstChild'Humanoid'.Health - .45
				end
			end
			humanoid.Health = humanoid.Health - 1.25
		end
	end)
	mouse.Button1Up:connect(function()
		for angle = 70, 0, -5 do
			rm.C0 = rsc0 * CFrame.Angles(math.rad(70) + math.rad(angle)*1.2, 0, math.rad(angle)/3+(-math.rad(70)/4))
			RS.RenderStepped:wait()
		end
		RadiusEffect.Parent = nil
		debounce = false
		wait()
		for i,v in pairs(game:service'Players':players()) do
			if v.Character and v.Character:findFirstChild'Humanoid' then
				if v.Character ~= char then
					v.Character:findFirstChild'Humanoid'.WalkSpeed = 16
					wait()
					if v.Character.Head and (head.Position - v.Character.Head.Position).magnitude <= radius and v ~= plr then
						v.Character:FindFirstChild'Humanoid'.Health = v.Character:FindFirstChild'Humanoid'.Health - math.random(21,27)
						coroutine.wrap(function()
							v.Character:findFirstChild'Humanoid'.WalkSpeed = -16
							wait(10)
							v.Character:findFirstChild'Humanoid'.WalkSpeed = 16
						end)()
					end
				end
			end
		end
		wait(.5)
		humanoid.WalkSpeed = 16
		wait(4.5)
		humanoid.Health = humanoid.Health + 50
	end)
end)
tool.Deselected:connect(function()
	Apple.Parent = nil
	rm.Parent = nil
	rs.Parent = torso
end)