--MADE BY RUFUS14
mouse = game.Players.LocalPlayer:GetMouse()
using = false
hit = false
bat = Instance.new("Part", game.Players.LocalPlayer.Character)
bat.Size = Vector3.new(1, 1, 5)
bat.CanCollide = false
bat:BreakJoints()
baseballhit = Instance.new("Sound", bat)
baseballhit.Volume = 10
baseballhit.SoundId = "rbxassetid://175024455"
baseballhit1 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
baseballhit1.Volume = 20
baseballhit1.SoundId = "rbxassetid://130944130"
swinging = Instance.new("Sound", bat)
swinging.Volume = 10
swinging.PlaybackSpeed = 1.2
swinging.SoundId = "rbxassetid://147722227"
weld = Instance.new("Weld", bat)
weld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
weld.Part1 = bat
local batcritical = Instance.new("Sound", bat)
batcritical.SoundId = "rbxassetid://296102734"
batcritical.Volume = 5
weld.C0 = weld.C0 * CFrame.Angles(0,3.15,0) * CFrame.new(0,-0.95,1.9)
print(weld.C0)
mesh = Instance.new("SpecialMesh", bat)
mesh.MeshId = "http://www.roblox.com/asset/?id=54983181"
mesh.TextureId = "http://www.roblox.com/asset/?id=54983107"
mesh.Scale = Vector3.new(2,2,2)
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
function hit()
	if not using then
		using = true
		for i = 0,1 , 0.1 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.new():lerp(CFrame.Angles(0,0,-0.35),i)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.new():lerp(CFrame.Angles(0,0,0.35),i)
			rhandweld.C0 = rhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0,0,0.3),i)
			lhandweld.C0 = lhandweld.C0 * CFrame.new():lerp(CFrame.Angles(-0.15,0,0),i)
		end
		for i = 1,2 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.Angles(0,0,-0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,0.1)
			rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,0.1)
			lhandweld.C0 = lhandweld.C0 * CFrame.Angles(-0.05,0,0)
		end
		wait(0.2)
		swinging:Play()
		local se = Instance.new("Part", bat)
		se.Size = Vector3.new(1, 1, 3)
		se:BreakJoints()
		se.Transparency = 1
		se.CanCollide = false
		local dmgweld = Instance.new("Weld", se)
		dmgweld.Part0 = bat
		dmgweld.Part1 = se
		dmgweld.C0 = dmgweld.C0 * CFrame.new(0,0,1)
		local function dmg(part)
			local hum = part.Parent:findFirstChild("Humanoid")
			if hum ~= nil then
				se:destroy()
				baseballhit:Play()
				baseballhit1:Play()
				hum.Health = hum.Health - math.random(25,35)
				hum.PlatformStand = true
				local tor = part.Parent:findFirstChild("Torso")
				local dmgmat = math.random(1,4)
				if dmgmat == 3 then
				batcritical:Play()
				hum.Health = hum.Health - math.random(98,135)
				end
				if tor then
					tor.RotVelocity = game.Players.LocalPlayer.Character.Torso.CFrame.rightVector * 34
					tor.Velocity = game.Players.LocalPlayer.Character.Torso.CFrame.rightVector * 34
				end
				wait(2)
				hum.PlatformStand = false
				hit = false
			end
		end
		se.Touched:connect(dmg)
		for i = 0,1 , 0.2 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.new():lerp(CFrame.Angles(0,0,0.7),i)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.new():lerp(CFrame.Angles(0,0,-0.70),i)
			rhandweld.C0 = rhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0,0,-0.6),i)
			lhandweld.C0 = lhandweld.C0 * CFrame.new():lerp(CFrame.Angles(0.30,0,0),i)
		end
		for i = 1,2 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.Angles(0,0,-0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.3)
			rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,-0.4)
		end
		for i = 1,2 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.Angles(0,0,-0.05)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.05)
			rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,-0.2)
		end
		wait(0.2)
		for i = 1,2 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.Angles(0,0,0.05)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.05)
			rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,0.2)
		end
		for i = 1,2 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.Angles(0,0,0.06)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,0.2)
			rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,0.2)
		end
		se:destroy()
		for i = 1,2 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.Angles(0,0,0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,0.1)
			rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,0.1)
		end
		for i = 1,2 do
			wait()
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.Angles(0,0,-0.05)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,0.1)
			rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,0.1)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		game.Players.LocalPlayer.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		lhandweld.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		lhandweld.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		rhandweld.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		rhandweld.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		using = false
	end
end
function combo(key)
	key = key:lower()
	if key == "q" then
		if not using then
			using = true
			swinging:Play()
			for i = 1,2 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0,0,-0.05)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,0.05)
			end
			for i = 1,3 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0,0,-0.47)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,0.47)
			end
			for i = 1,2 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0,0,-0.05)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,0.05)
			end
			wait(0.4)
			swinging:Play()
			for i = 1,2 do
				wait()
				weld.C0 = weld.C0 * CFrame.Angles(0.13,0,0.05) * CFrame.new(0,-0.27,0.1)
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0.05,0,0)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0.05,0,00)
			end
			for i = 1,3 do
				wait()
				weld.C0 = weld.C0 * CFrame.Angles(0.33,0,0.1) * CFrame.new(0,-0.66,0.3)
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0.2,0,0)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0.2,0,0)
			end
			for i = 1,2 do
				wait()
				weld.C0 = weld.C0 * CFrame.Angles(0.13,0,0.05) * CFrame.new(0,-0.27,0.1)
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0.05,0,0)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0.05,0,00)
			end
			wait(0.5)
			for i = 1,2 do
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.05)
			end
			for i = 1,2 do
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.1)
			end
			for i = 1,2 do
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.2)
			end
			for i = 1,2 do
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.4)
			end
			swinging:Play()
			for i = 1,2 do
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.8)
			end
			local se = Instance.new("Part", bat)
			se.Size = Vector3.new(1, 1, 3)
			se:BreakJoints()
			se.Transparency = 1
			se.CanCollide = false
			local dmgweld = Instance.new("Weld", se)
			dmgweld.Part0 = bat
			dmgweld.Part1 = se
			dmgweld.C0 = dmgweld.C0 * CFrame.new(0,0,1)
			local function dmg(part)
				if not hit then
					hit = true
					local hum = part.Parent:findFirstChild("Humanoid")
					if hum ~= nil then
					baseballhit:Play()
					baseballhit1:Play()
					hum.Health = hum.Health - math.random(5,25)
					hum.PlatformStand = true
					local tor = part.Parent:findFirstChild("Torso")
					if tor then
						local vel = Instance.new("BodyVelocity", tor)
						vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						vel.Velocity = game.Players.LocalPlayer.Character.Torso.CFrame.rightVector * 35
						wait(0.1)
						vel:destroy()
						hit = false
					end
					wait(0.2)
					hit = false
					wait(1.5)
					hum.PlatformStand = false
				end
				end
			end
			se.Touched:connect(dmg)
			for i = 1,20 do
				swinging:Play()
				for i = 1,10 do
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,-0.9)
				end
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
			for i = 1,2 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0,0,0.05)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,-0.05)
			end
			for i = 1,3 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0,0,0.47)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,-0.47)
			end
			for i = 1,2 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(0,0,0.05)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(0,0,-0.05)
			end
			wait(0.4)
			swinging:Play()
			for i = 1,2 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(-0.05,0,0)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(-0.05,0,00)
			end
			for i = 1,3 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(-0.2,0,0)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(-0.2,0,0)
			end
			for i = 1,2 do
				wait()
				lhandweld.C0 = lhandweld.C0 * CFrame.Angles(-0.05,0,0)
				rhandweld.C0 = rhandweld.C0 * CFrame.Angles(-0.05,0,00)
			end
			for i = 1,2 do
				wait()
				weld.C0 = weld.C0 * CFrame.Angles(-0.13,0,-0.05) * CFrame.new(0,0.27,-0.1)
			end
			for i = 1,3 do
				wait()
				weld.C0 = weld.C0 * CFrame.Angles(-0.33,0,-0.1) * CFrame.new(0,0.66,-0.3)
			end
			for i = 1,2 do
				wait()
				weld.C0 = weld.C0 * CFrame.Angles(-0.13,0,-0.05) * CFrame.new(0,0.27,-0.1)
			end
			weld.C0 = CFrame.new(-0.0159739517, -0.949999988, -1.89993286, -0.999964654, 0, -0.00840734318, 0, 1, 0, 0.00840734318, 0, -0.999964654)
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
			game.Players.LocalPlayer.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
			lhandweld.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			lhandweld.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			rhandweld.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			rhandweld.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			using = false
			se:destroy()
		end
	end
end
mouse.KeyDown:connect(combo)
mouse.Button1Down:connect(hit)
--[[
	local vel = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.Torso)
vel.Velocity = game.Players.LocalPlayer.Character.Torso.CFrame.lookVector * -5
vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
--]]
--By Rufus14 (FINALLY I KNOW HOW TO MAKE A RAGDOLL :D)
--die plz
mouse = game.Players.LocalPlayer:GetMouse()
function ragdoll()
game.Players.LocalPlayer.Character.Archivable = true
clone = game.Players.LocalPlayer.Character:Clone()
clone.Parent = workspace
for i,v in pairs(clone:GetChildren()) do
	if v.ClassName == "Script" or v.ClassName == "LocalScript" then
		v:destroy()
	end
	for i,p in pairs(v:GetChildren()) do
	if p.ClassName == "Weld" or p.ClassName == "Motor6D" or p.ClassName == "BodyVelocity" then
		p:destroy()
	end
end
end
for i,t in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if t.ClassName == "Accessory" or t.ClassName == "ForceField" then
		t:destroy()
	end
end
vel = Instance.new("BodyVelocity", clone.Torso)
vel.Velocity = clone.Torso.CFrame.lookVector * -5
vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
clone.Head.face.Texture = "http://www.roblox.com/asset/?id=161061608"
using = false
hit = Instance.new("Sound", clone.Torso)
hit.SoundId = "rbxassetid://260430060"
hit.Volume = 5
hit1 = Instance.new("Sound", clone.Torso)
hit1.SoundId = "rbxassetid://138087186"
hit1.Volume = 5
hit2 = Instance.new("Sound", clone.Torso)
hit2.SoundId = "rbxassetid://131237241"
hit2.Volume = 5
hit3 = Instance.new("Sound", clone.Torso)
hit3.SoundId = "rbxassetid://278062209"
hit3.Volume = 5
hit3.TimePosition = 0.33
ded = Instance.new("Sound", clone.Torso)
ded.SoundId = "rbxassetid://418892870"
ded.Volume = 5
local leftarm = clone:findFirstChild("Left Arm")
local rightrm = clone:findFirstChild("Right Arm")
local leftleg = clone:findFirstChild("Left Leg")
local rightleg = clone:findFirstChild("Right Leg")
local head = clone:findFirstChild("Head")
local welding = Instance.new("Weld", clone.Torso)
welding.Part0 = clone.Torso
welding.Part1 = head
welding.C0 = welding.C0 * CFrame.new(0,1.5,0)
for i, g in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if g.ClassName == "Part" then
		g:destroy()
	end
end
for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if h.ClassName == "Accesory" then
		h:destroy()
	end
end
game.Workspace.CurrentCamera.CameraSubject = head
if leftleg ~= nil then
local glue = Instance.new("Glue", clone.Torso)
glue.Part0 = clone.Torso
glue.Part1 = leftleg
glue.Name = "Left leg"
local collider = Instance.new("Part", leftleg)
collider.Position = Vector3.new(0,999,0)
collider.Size = Vector3.new(1.7, 1, 1)
collider.Shape = "Cylinder"
local weld = Instance.new("Weld", collider)
weld.Part0 = leftleg
weld.Part1 = collider
weld.C0 = CFrame.Angles(0, 0, 80)
collider.TopSurface = "Smooth"
collider.BottomSurface = "Smooth"
collider.formFactor = "Symmetric"
glue.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
glue.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
collider.Transparency = 1
end
------------
if rightleg ~= nil then
local glue1 = Instance.new("Glue", clone.Torso)
glue1.Part0 = clone.Torso
glue1.Part1 = rightleg
glue1.Name = "Right leg"
local collider1 = Instance.new("Part", rightleg)
collider1.Position = Vector3.new(0,999,0)
collider1.Size = Vector3.new(1.7, 1, 1)
collider1.Shape = "Cylinder"
local weld1 = Instance.new("Weld", collider1)
weld1.Part0 = rightleg
weld1.Part1 = collider1
weld1.C0 = CFrame.Angles(0, 0, 80)
collider1.TopSurface = "Smooth"
collider1.BottomSurface = "Smooth"
collider1.formFactor = "Symmetric"
glue1.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
glue1.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
collider1.Transparency = 1
end
------------
if rightrm ~= nil then
local glue11 = Instance.new("Glue", clone.Torso)
glue11.Part0 = clone.Torso
glue11.Part1 = rightrm
glue11.Name = "Right shoulder"
local collider11 = Instance.new("Part", rightrm)
collider11.Position = Vector3.new(0,9999,0)
collider11.Size = Vector3.new(1.8,1,1)
collider11.Shape = "Cylinder"
local weld11 = Instance.new("Weld", collider11)
weld11.Part0 = rightrm
weld11.Part1 = collider11
weld11.C0 = CFrame.Angles(0, 0, 80)
collider11.TopSurface = "Smooth"
collider11.BottomSurface = "Smooth"
collider11.formFactor = "Symmetric"
glue11.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
glue11.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
collider11.Transparency = 1
end
------------
if leftarm ~= nil then
local glue111 = Instance.new("Glue", clone.Torso)
glue111.Part0 = clone.Torso
glue111.Part1 = leftarm
glue111.Name = "Left shoulder"
local collider111 = Instance.new("Part", leftarm)
collider111.Position = Vector3.new(0,9999,0)
collider111.Size = Vector3.new(1.8,1,1)
collider111.Shape = "Cylinder"
local weld111 = Instance.new("Weld", collider111)
weld111.Part0 = leftarm
weld111.Part1 = collider111
weld111.C0 = CFrame.Angles(0, 0, 80)
collider111.TopSurface = "Smooth"
collider111.BottomSurface = "Smooth"
collider111.formFactor = "Symmetric"
glue111.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
glue111.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
collider111.Transparency = 1
----------------
sensoring = Instance.new("Part", clone.Torso)
sensoring.Size = Vector3.new(1.2,1.1,0.8)
sensoring.CanCollide = false
sensoring.Position = clone.Torso.Position
local welder = Instance.new("Weld", sensoring)
welder.Part0 = clone.Torso
welder.Part1 = sensoring
welder.C0 = welder.C0 * CFrame.new(0,0,1.05)
sensoring.Transparency = 1
-----------------
sensoring1 = Instance.new("Part", clone.Torso)
sensoring1.Size = Vector3.new(1.2,1.1,0.8)
sensoring1.CanCollide = false
sensoring1.Position = clone.Torso.Position
local welder1 = Instance.new("Weld", sensoring)
welder1.Part0 = clone.Torso
welder1.Part1 = sensoring1
welder1.C0 = welder1.C0 * CFrame.new(0,0,-1.05)
sensoring1.Transparency = 1
end
clone.Name = game.Players.LocalPlayer.Character.Name.." (DEAD)"
ded:Play()
vel:destroy()
wait(0.5)
local function touch()
	if not using then
		using = true
		local Math = math.random(1,4)
		if Math == 1 then
			hit:Play()
		end
		if Math == 2 then
			hit1:Play()
		end
		if Math == 3 then
			hit2:Play()
		end
		if Math == 4 then
			hit3:Play()
		end
		wait(0.1)
		using = false
	end
end
sensoring.Touched:connect(touch)
sensoring1.Touched:connect(touch)
wait(4.47)
hit1.Volume = 0
hit2.Volume = 0
hit3.Volume = 0
hit.Volume = 0
		end

game.Players.LocalPlayer.Character.Humanoid.Died:connect(ragdoll)

--di ent