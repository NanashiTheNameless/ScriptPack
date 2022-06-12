local p = game.Players.LocalPlayer
local char = p.Character
local hed = char.Head
local LocalPlayer = p

local naeeym = Instance.new("BillboardGui",char)
naeeym.Size = UDim2.new(0,100,0,40)
naeeym.StudsOffset = Vector3.new(0,5,0)
naeeym.Adornee = char.Head
local tecks = Instance.new("TextLabel",naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = LocalPlayer.Name
tecks.Font = "ArialBold"
tecks.FontSize = "Size24"
tecks.TextStrokeTransparency = 0
tecks.TextStrokeColor3 = Color3.new(0,0,0)
tecks.TextColor3 = Color3.new(255,255,255)
tecks.Size = UDim2.new(1,0,0.5,0)

local Player = game.Players.localPlayer
local Character = p.Character
local LeftArm2 = Character["Left Arm"]
local RightArm2 = Character["Right Arm"]
local LeftLeg2 = Character["Left Leg"]
local RightLeg2 = Character["Right Leg"]
local Head2 = Character.Head
local Torso2 = Character.Torso

--created by SoldierJoao
--Credits to metabee for the knives edit
cut = Instance.new("Sound", Character)
cut.SoundId = "https://www.roblox.com/asset/?id=97095069"
cut.Volume = 1.5
thri = Instance.new("Sound", Character)
thri.SoundId = "https://www.roblox.com/asset/?id=186311262"
thri.Volume = 2.5
WRY = Instance.new("Sound", Character)
WRY.SoundId = "https://www.roblox.com/asset/?id=276152532"
WRY.Volume = 5

local Players=game:service'Players'
local Player=Players.LocalPlayer
local Mouse=Player:GetMouse''
local RenderStepped=game:service'RunService'.RenderStepped

local MeshId='http://www.roblox.com/asset?id=202083123'
local TextureId='http://www.roblox.com/asset/?id=189436355'

local BeeSpeed= 100

local QHold=false
local EHold=false

Mouse.Button1Down:connect(function()
cut:Play()
if Mouse.Target then
local Bee=Instance.new('Part',Player.Character)
Bee.CanCollide=false
Bee.Size=Vector3.new(2,2,2)
Bee.CFrame=Player.Character.Torso.CFrame
local BeeMesh=Instance.new('SpecialMesh',Bee)
BeeMesh.MeshType='FileMesh'
BeeMesh.MeshId=MeshId
BeeMesh.TextureId=TextureId
BeeMesh.Scale=Vector3.new(1,1,1)
local BodyVel=Instance.new('BodyVelocity',Bee)
BodyVel.maxForce=Vector3.new(math.huge,math.huge,math.huge)
local BodyGyro=Instance.new('BodyGyro',Bee)
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.P=2e4
coroutine.wrap(function()
RenderStepped:connect(function()
BodyGyro.cframe=CFrame.new(Bee.Position,Mouse.Hit.p)
BodyVel.velocity=Bee.CFrame.lookVector*BeeSpeed
end)
end)()
Bee.Touched:connect(function(p)
if p.Parent~=Player.Character and p.Parent:FindFirstChild'Humanoid'then
p.Parent:BreakJoints()
Bee:Destroy''
thri:Play()
end
end)
end
end)


Mouse.KeyDown:connect(function(k)
local Key=k:lower''
if Key=='q'then
QHold=true
elseif Key=='e'then
EHold=true
end
end)

Mouse.KeyUp:connect(function(k)
local Key=k:lower''
if Key=='q'then
QHold=false
elseif Key=='e'then
EHold=false
end
end)

coroutine.wrap(function()
RenderStepped:connect(function()
if QHold then
if BeeSpeed>0 then
BeeSpeed=BeeSpeed-1
end
elseif EHold then
BeeSpeed=BeeSpeed+1
end
end)
end)()




mse = Player:GetMouse()

sound = Instance.new("Sound", Character)
sound.SoundId = "https://www.roblox.com/asset/?id=290807425"
sound.Volume = 2.5
sound2 = Instance.new("Sound", Character)
sound2.SoundId = "https://www.roblox.com/asset/?id=290810519"
sound2.Volume = 2.5
sound3 = Instance.new("Sound", Character)
sound3.SoundId = "https://www.roblox.com/asset/?id=290807377"
sound3.Volume = 1.8
sound4 = Instance.new("Sound", Character)
sound4.SoundId = "https://www.roblox.com/asset/?id=290807397"
sound4.Volume = 2
TSTheme = Instance.new("Sound", Character)
TSTheme.SoundId = "https://www.roblox.com/asset/?id=172374380"
TSTheme.Volume = 2
canworld = true
mse.KeyDown:connect(function(key)
	key = key:lower()
	if key == "t" then
		if canworld == false then return end
		if canworld then
		canworld = false
		sound3:Play()
tecks.Text = "THE WORLD STOP TIME!"
wait(2)
tecks.Text = LocalPlayer.Name
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
BeeSpeed = 0
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

tecks.Text = LocalPlayer.Name

mse.KeyDown:connect(function(key)
	key = key:lower()
	if key == "y" then
canworld = true
tecks.Text = "Time continues moving again."
		sound2:Play()
wait()
BeeSpeed = 1
		cce.Saturation = -1.3
		wait(0.5)
BeeSpeed = 1.2
		cce.Saturation = -0.5
		wait(0.5)
BeeSpeed = 1.4
		cce.Saturation = -0.4
		wait(0.3)
BeeSpeed = 1.5
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
BeeSpeed = 100
tecks.Text = LocalPlayer.Name
TSTheme:Stop()
end
end)





