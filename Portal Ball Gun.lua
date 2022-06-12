--Script by Rufus14, Companion Cube model by Natej89
mouse = game.Players.LocalPlayer:GetMouse()
gun = Instance.new("Part", game.Players.LocalPlayer.Character)
gun.Size = Vector3.new(0.5, 1, 2)
gun.CanCollide = false
gun:BreakJoints()
weld = Instance.new("Weld", gun)
weld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
weld.Part1 = gun
mesh = Instance.new("SpecialMesh", gun)
mesh.MeshId = "rbxassetid://430056568"
mesh.TextureId = "rbxassetid://430056584"
portalmoosic = Instance.new("Sound", game.Players.LocalPlayer.Character)
portalmoosic.SoundId = "rbxassetid://142300248"
portalmoosic.Looped = true
portalmoosic:Play()
impact = Instance.new("Sound", game.Players.LocalPlayer.Character)
impact.SoundId = "rbxassetid://142082170"
mesh.Scale = Vector3.new(0.17,0.17,0.17)
weld.C0 = weld.C0 * CFrame.new(-0.2,-1.3,-0.8) * CFrame.Angles(3,0,0)
local rhandweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
rhandweld.Part0 = game.Players.LocalPlayer.Character.Torso
rhandweld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
rhandweld.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
rhandweld.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
local lhandweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
lhandweld.Part0 = game.Players.LocalPlayer.Character.Torso
lhandweld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
lhandweld.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
lhandweld.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Pick = Instance.new("Sound", gun)
Pick.SoundId = "rbxassetid://291256829"
Pick:Play()
blueexists = false
tping = false
orangeexists = false
for i = 0,1 , 0.1 do
	wait()
	lhandweld.C0 = lhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0,-0.2,-0.28),i)
	rhandweld.C0 = rhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0,0,0.28),i)
end
for i = 0,1 , 0.1 do
	wait()
	lhandweld.C0 = lhandweld.C0 * CFrame.new():lerp(CFrame.new(0,-0.25,0),i)
end
using = false
orange = false
blue = true
function changeportals(key)
	key = key:lower()
	if key == "q" then
		if not blue then
			blue = true
			orange = false
		end
	end
	if key == "e" then
		if not orange then
			blue = false
			orange = true
		end
	end
end
function portal()
	if not using then
		using = true
		if blue then
			local projectile = Instance.new("Part", workspace)
			projectile.Size = Vector3.new(1,1,1)
			projectile.BrickColor = BrickColor.new("Electric blue")
			projectile.Shape = "Ball"
			projectile.CanCollide = true
			projectile.Anchored = false
			projectile.Material = "Neon"
			local vel = Instance.new("BodyVelocity", projectile)
			vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			vel.Velocity = mouse.Hit.lookVector * 80
			projectile.Position = gun.CFrame.p
			wait(0.03)
			local function make(part)
				local gr = part.Parent:findFirstChild("Part")
				local portaldoor = Instance.new("Part", workspace)
				portaldoor.Size = Vector3.new(6.09, 5.84, 5.93)
				portaldoor.BrickColor = BrickColor.new("Electric blue")
				portaldoor.Anchored = true
				portaldoor.Shape = "Ball"
				portaldoor.Material = "Neon"
				portaldoor.CanCollide = false
				if blueexists == true then
					workspace.BluePortal:destroy()
				end
				blueexists = true
				portaldoor.Name = "BluePortal"
				portaldoor.CFrame = projectile.CFrame
				projectile:destroy()
				local function tp(part)
					local hum = part.Parent:findFirstChild("Humanoid")
					if hum ~= nil and blueexists and orangeexists and not tping then
						tping = true
						local tor = part.Parent:findFirstChild("Torso")
						if tor ~= nil then
							tor.CFrame = workspace.OrangePortal.CFrame
						end
						wait(0.1)
						tping = false
					end
					if not hum and blueexists and orangeexists and not tping then
							tping = true
							local cube = part.Parent:findFirstChild("Cube")
							if cube then
								tping = true
								cube.CFrame = workspace.OrangePortal.CFrame
								wait(0.1)
								tping = false
							end
					end
				end
				portaldoor.Touched:connect(tp)
			end
			projectile.Touched:connect(make)
		end
		if orange then
			local projectile1 = Instance.new("Part", workspace)
			projectile1.Size = Vector3.new(1,1,1)
			projectile1.BrickColor = BrickColor.new("Deep orange")
			projectile1.Shape = "Ball"
			projectile1.CanCollide = true
			projectile1.Anchored = false
			projectile1.Material = "Neon"
			local vel1 = Instance.new("BodyVelocity", projectile1)
			vel1.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			vel1.Velocity = mouse.Hit.lookVector * 80
			projectile1.Position = gun.CFrame.p
			wait(0.03)
			local function make1(part)
				local gr = part.Parent:findFirstChild("Part")
				local portaldoor = Instance.new("Part", workspace)
				portaldoor.Size = Vector3.new(6.09, 5.84, 5.93)
				portaldoor.BrickColor = BrickColor.new("Deep orange")
				portaldoor.Anchored = true
				portaldoor.Material = "Neon"
				portaldoor.Shape = "Ball"
				portaldoor.CanCollide = false
				if orangeexists == true then
					workspace.OrangePortal:destroy()
				end
				orangeexists = true
				portaldoor.Name = "OrangePortal"
				portaldoor.CFrame = projectile1.CFrame
				projectile1:destroy()
				local function tp(part)
					local hum = part.Parent:findFirstChild("Humanoid")
					if hum ~= nil and blueexists and orangeexists and not tping then
						tping = true
						local tor = part.Parent:findFirstChild("Torso")
						if tor ~= nil then
							tor.CFrame = workspace.BluePortal.CFrame
						end
						wait(0.1)
						tping = false
					end
					if not hum and blueexists and orangeexists and not tping then
							tping = true
							local cube = part.Parent:findFirstChild("Cube")
							if cube then
								tping = true
								cube.CFrame = workspace.BluePortal.CFrame
								wait(0.1)
								tping = false
							end
					end
				end
				portaldoor.Touched:connect(tp)
			end
			projectile1.Touched:connect(make1)
		end
		
		for i = 0,1 , 0.3 do
			wait()
			lhandweld.C0 = lhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0,0,-0.2),i)
			rhandweld.C0 = rhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0,0,0.2),i)
		end
		for i = 0,1 , 0.3 do
			wait()
			lhandweld.C0 = lhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0,0,0.2),i)
			rhandweld.C0 = rhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0,0,-0.2),i)
		end
		using = false
	end
end
function remove(key)
	key = key:lower()
	if key == "r" then
		if blueexists or orangeexists or blueexists and orangeexists then
			workspace.OrangePortal:destroy()
			workspace.BluePortal:destroy()
			orangeexists = false
			blueexists = false
		end
	end
end
impacting = false
cubesp = false
function cubespawn(key)
	key = key:lower()
	if key == "c" then
		if cubesp then
			workspace.Cube:destroy()
		end
		cubesp = true
		local coobe = Instance.new("Part", workspace)
		coobe.Size = Vector3.new(2.774, 2.834, 2.804)
		coobe:BreakJoints()
		coobe.Position = game.Players.LocalPlayer.Character.Torso.Position
		coobe.Name = "Cube"
		local meh = Instance.new("SpecialMesh", coobe)
		meh.MeshId = "rbxassetid://464957313"
		meh.TextureId = "rbxassetid://464957325"
		meh.Scale = Vector3.new(0.8,0.8,0.8)
		local function sounds()
			if not impacting then
				impacting = true
				local impactspeed = math.random(0.9,1.1)
				impact.PlaybackSpeed = impactspeed
				impact:Play()
				wait(0.2)
				impacting = false
			end
		end
		coobe.Touched:connect(sounds)
	end
end
function deleterportalsondedth()
	if orangeexists or blueexists or blueexists and orangeexists then
		workspace.OrangePortal:destroy()
		workspace.BluePortal:destroy()
		if cubesp then
			workspace.Cube:destroy()
		end
	end
end
game.Players.LocalPlayer.Character.Humanoid.Died:connect(deleterportalsondedth)
mouse.KeyDown:connect(cubespawn)
mouse.Button1Down:connect(portal)
mouse.KeyDown:connect(changeportals)
mouse.KeyDown:connect(remove)