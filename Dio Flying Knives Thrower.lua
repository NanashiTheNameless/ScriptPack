local p = game.Players.LocalPlayer
local char = p.Character
local hed = char.Head
local LocalPlayer = p

local Player = game.Players.localPlayer
local Character = p.Character

local LeftArm2 = Character["Left Arm"]
local RightArm2 = Character["Right Arm"]
local LeftLeg2 = Character["Left Leg"]
local RightLeg2 = Character["Right Leg"]
local Head2 = Character.Head
local Torso2 = Character.Torso

local player = game.Players.LocalPlayer
local shirt = player.Character:WaitForChild("Shirt")
local pants = player.Character:WaitForChild("Pants")

wait()
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=536831523"
pants.PantsTemplate = "http://www.roblox.com/asset/?id=547264976"

char.Humanoid.MaxHealth = math.huge
char.Humanoid.Health = math.huge

	for i,v in pairs(char:GetChildren()) do
		if v.ClassName == "Accessory" or v.ClassName == "Hat" then
			v:destroy()
		end
	end

local Hair = Instance.new("Part")
Hair.Parent = char
Hair.Name = "Hair"
Hair.Size = Vector3.new(1, 1, 1)
Hair.CFrame = char.Head.CFrame
Hair:BreakJoints()
Hair.CanCollide = false
Hair.TopSurface = "Smooth"
Hair.BottomSurface = "Smooth"
Hair.BrickColor = BrickColor.new("Gold")
Weld = Instance.new("Weld") 
Weld.Name = "Weld"
Weld.Part0 = char.Head 
Weld.Part1 = Hair
Weld.Parent = char.Head 
Weld.C0 = CFrame.new(0.1,0,0.2)*CFrame.fromEulerAnglesXYZ(0,0,0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair
Mesh.MeshId = "rbxassetid://886288384"
Mesh.TextureId = "rbxassetid://886289004"
Mesh.Scale = Vector3.new(0.11,0.1,0.08)

cut = Instance.new("Sound", Character)
cut.SoundId = "https://www.roblox.com/asset/?id=97095069"
cut.Volume = 1.5
thri = Instance.new("Sound", Character)
thri.SoundId = "https://www.roblox.com/asset/?id=186311262"
thri.Volume = 2.5
WRY = Instance.new("Sound", Character)
WRY.SoundId = "https://www.roblox.com/asset/?id=910713928"
WRY.Volume = 5

ff = Instance.new("ForceField", game.Players.LocalPlayer.Character)
ff.Visible = false

local Players=game:service'Players'
local Player=Players.LocalPlayer
local Mouse=Player:GetMouse''
local RenderStepped=game:service'RunService'.RenderStepped

local MeshId='http://www.roblox.com/asset?id=202083123'
local TextureId='http://www.roblox.com/asset/?id=189436355'

local KnifeSpeed= 120

Mouse.Button1Down:connect(function()
cut:Play()
if Mouse.Target then
local Knife=Instance.new('Part',Player.Character)
Knife.CanCollide=false
Knife.Size=Vector3.new(2,2,2)
Knife.CFrame=Player.Character.Torso.CFrame
local KnifeMesh=Instance.new('SpecialMesh',Knife)
KnifeMesh.MeshType='FileMesh'
KnifeMesh.MeshId=MeshId
KnifeMesh.TextureId=TextureId
KnifeMesh.Scale=Vector3.new(1,1,1)
local BodyVel=Instance.new('BodyVelocity',Knife)
BodyVel.maxForce=Vector3.new(math.huge,math.huge,math.huge)
local BodyGyro=Instance.new('BodyGyro',Knife)
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.P=2e4
coroutine.wrap(function()
RenderStepped:connect(function()
BodyGyro.cframe=CFrame.new(Knife.Position,Mouse.Hit.p)
BodyVel.velocity=Knife.CFrame.lookVector*KnifeSpeed
end)
end)()
Knife.Touched:connect(function(p)
if p.Parent~=Player.Character and p.Parent:FindFirstChild'Humanoid' then
p.Parent:BreakJoints()
Knife:Destroy''
thri:Play()
end
end)
end
end)

mse = Player:GetMouse()

sound = Instance.new("Sound", Character)
sound.SoundId = "https://www.roblox.com/asset/?id=840567549"
sound.Volume = 2.5
sound2 = Instance.new("Sound", Character)
sound2.SoundId = "https://www.roblox.com/asset/?id=616594208"
sound2.Volume = 2.5
sound3 = Instance.new("Sound", Character)
sound3.SoundId = "https://www.roblox.com/asset/?id=616576400"
sound3.Volume = 1.8
sound4 = Instance.new("Sound", Character)
sound4.SoundId = "https://www.roblox.com/asset/?id=616576400"
sound4.Volume = 2
TSTheme = Instance.new("Sound", Character)
TSTheme.SoundId = "https://www.roblox.com/asset/?id=910713928"
TSTheme.Volume = 2
canworld = true
mse.KeyDown:connect(function(key)
	key = key:lower()
	if key == "t" then
		if canworld == false then return end
		if canworld then
		canworld = false
		sound3:Play()
		sound:Play()
		sound4:Play()
		TSTheme:Play()

		local function spawnpart()
		sphere = Instance.new("Part")
		--game.Debris:AddItem(sphere,3)
		local sm = Instance.new("SpecialMesh", sphere)
		sm.MeshType = "Sphere"
		sphere.Transparency = 0.5
		sphere.Anchored = true
		sphere.CanCollide = false
		sphere.Material = "Neon"
		sphere.BrickColor = BrickColor.new("Black")
		end
		
		local function weld(lol)
			local weld = Instance.new("Weld", Player.Character.Torso)
			weld.Part0 = Player.Character.Torso
			weld.Part1 = lol
			weld.C0 = Player.Character.Torso.CFrame:inverse()
			weld.C1 = lol.CFrame:inverse()
		end
		wait()
		spawnpart()
			for i, v in pairs(game.Players:GetChildren()) do
			t = v.Character:FindFirstChild("Torso")
			if t then
				t.Anchored = true
				Player.Character:FindFirstChild("Torso").Anchored = false
			end
			RA = v.Character:FindFirstChild("Right Arm")
			if RA then
				RA.Anchored = true
				Player.Character:FindFirstChild("Right Arm").Anchored = false
			end
			LA = v.Character:FindFirstChild("Left Arm")
			if LA then
				LA.Anchored = true
				Player.Character:FindFirstChild("Left Arm").Anchored = false
			end
			RL = v.Character:FindFirstChild("Right Leg")
			if RL then
				RL.Anchored = true
				Player.Character:FindFirstChild("Right Leg").Anchored = false
			end
			LL = v.Character:FindFirstChild("Left Leg")
			if LL then
				LL.Anchored = true
				Player.Character:FindFirstChild("Left Leg").Anchored = false
			end
		end
		weld(sphere)
		cce = Instance.new("ColorCorrectionEffect", game.Lighting)
		cce.Saturation = -5
		--game.Debris:AddItem(cce, 5)
		sphere.Parent = Character.Torso
		for i = 1,3 do
			sphere.Size = sphere.Size + Vector3.new(50,50,50)
			wait()
			end
wait()
                        sphere:Destroy()
KnifeSpeed = 0
		cce.Saturation = -0.1
		wait(0.3)
		cce.Saturation = -0.2
		wait(0.3)
		cce.Saturation = -0.3
		wait(0.2)
	        cce.Saturation = -1.5
                wait()
		end
	end
end
)

mse.KeyDown:connect(function(key)
	key = key:lower()
	if key == "y" then
canworld = true
		sound2:Play()
wait()
KnifeSpeed = 1
		cce.Saturation = -1.3
		wait(0.5)
KnifeSpeed = 1.2
		cce.Saturation = -0.5
		wait(0.5)
KnifeSpeed = 1.4
		cce.Saturation = -0.4
		wait(0.3)
KnifeSpeed = 1.5
		cce.Saturation = -0.2
		wait(0.2)
	        cce.Saturation = 0

		for i, v in pairs(game.Players:GetChildren()) do
		t = v.Character:FindFirstChild("Torso")
			if t then
				t.Anchored = false
			end
			RA = v.Character:FindFirstChild("Right Arm")
			if RA then
				RA.Anchored = false
			end
			LA = v.Character:FindFirstChild("Left Arm")
			if LA then
				LA.Anchored = false
			end
			RL = v.Character:FindFirstChild("Right Leg")
			if RL then
				RL.Anchored = false
			end
			LL = v.Character:FindFirstChild("Left Leg")
			if LL then
				LL.Anchored = false
			end
		end
KnifeSpeed = 120
TSTheme:Stop()
end
end)