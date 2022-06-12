-------------------------------------------------
--Black Onslaught by CKbackup (ChocolateKnight)--
-------------------------------------------------
--Player stuff--
player = game:GetService("Players").LocalPlayer
chara =  player.Character
hitdude = nil
debby = game:GetService("Debris")
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
chara.Humanoid.JumpPower = 100
local moosek = 0
local prevthing = 0
local timeofday = "Day"
taip = 1

--Objects--
local tool = Instance.new("Tool",player.Backpack)
tool.Name = "Hellma"
tool.GripForward = Vector3.new(-1,0,0)
tool.GripPos = Vector3.new(0,-2,0)
tool.GripRight = Vector3.new(0,0,-1)
tool.GripUp = Vector3.new(0,-1,0)
tool.CanBeDropped = false
local tool2 = Instance.new("Tool",player.Backpack)
tool2.Name = "Nilshade"
tool2.GripForward = Vector3.new(0,0,-1)
tool2.GripPos = Vector3.new(0.1,-2.2,0.1)
tool2.GripRight = Vector3.new(1,0,0)
tool2.GripUp = Vector3.new(0,1,0)
tool2.CanBeDropped = false
local handle = Instance.new("Part", tool)
handle.Name = "Handle"
handle.Size = Vector3.new(1,5,1)
local mesh = Instance.new("SpecialMesh", handle)
mesh.MeshId = "http://www.roblox.com/asset/?id=83509558"
mesh.TextureId = "http://www.roblox.com/asset/?id=83509797"
mesh.VertexColor = Vector3.new(0.7,0,1)
local mesh2 = Instance.new("SpecialMesh", tool)
mesh2.MeshId = "http://www.roblox.com/asset/?id=95891318"
mesh2.TextureId = "http://www.roblox.com/asset/?id=95891299"
mesh2.VertexColor = Vector3.new(0.7,0,1)
mesh2.Scale = Vector3.new(-0.8,0.8,-0.8)
mesh2.Offset = Vector3.new(1,0.5,0)
local handle2 = Instance.new("Part", tool2)
handle2.Name = "Handle"
handle2.Size = Vector3.new(1,5,1)
local mesh3 = Instance.new("SpecialMesh", handle2)
mesh3.MeshId = "http://www.roblox.com/asset/?id=86290540"
mesh3.TextureId = "http://www.roblox.com/asset/?id=86290896"
mesh3.Scale = Vector3.new(0.6,1,0.6)
mesh3.VertexColor = Vector3.new(0.7,0,1)
local spt1 = NumberSequenceKeypoint.new(0,1,0)
local spt2 = NumberSequenceKeypoint.new(.8,1,0)
local spt3 = NumberSequenceKeypoint.new(1,0,0)
local cpt1 = ColorSequenceKeypoint.new(0,BrickColor.new("Royal purple").Color)
local cpt2 = ColorSequenceKeypoint.new(1,BrickColor.new("Alder").Color)
local fira = Instance.new("ParticleEmitter",handle)
fira.Texture = "rbxasset://textures/particles/fire_main.dds"
fira.Color = ColorSequence.new({cpt1,cpt2})
fira.LightEmission = 1
fira.Lifetime = NumberRange.new(2,2)
fira.Size = NumberSequence.new({spt1,spt2,spt3})
fira.Speed = NumberRange.new(0,0)
fira.Rate = 10000
fira.RotSpeed = NumberRange.new(100,100)
fira.Enabled = false
local rpt1 = NumberSequenceKeypoint.new(0,1,0)
local rpt2 = NumberSequenceKeypoint.new(1,0,0)
local deffecto = Instance.new("ParticleEmitter",chara["Left Arm"])
deffecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
deffecto.Color = ColorSequence.new(Color3.new(0,0,0))
deffecto.Rate = 10000
deffecto.Lifetime = NumberRange.new(1,1)
deffecto.Size = NumberSequence.new({rpt1,rpt2})
deffecto.Speed = NumberRange.new(0,0)
deffecto.RotSpeed = NumberRange.new(100,100)
deffecto.Enabled = false
local sspt1 = NumberSequenceKeypoint.new(0,0,0)
local sspt2 = NumberSequenceKeypoint.new(1,10,0)
local tspt1 = NumberSequenceKeypoint.new(0,0,0)
local tspt2 = NumberSequenceKeypoint.new(1,1,0)
local eeeffecto = Instance.new("ParticleEmitter",chara.Torso)
eeeffecto.Texture = "http://www.roblox.com/asset/?id=205525524"
eeeffecto.LightEmission = 1
eeeffecto.LockedToPart = true
eeeffecto.Rate = 1
eeeffecto.Lifetime = NumberRange.new(5,5)
eeeffecto.Size = NumberSequence.new({sspt1,sspt2})
eeeffecto.Transparency = NumberSequence.new({tspt1,tspt2})
eeeffecto.Speed = NumberRange.new(0,0)
eeeffecto.RotSpeed = NumberRange.new(100,100)
--local musictool = Instance.new("Tool",player.Backpack)
--musictool.Name = "Music"
--musictool.RequiresHandle = false
--musictool.CanBeDropped = false
--local taunttool = Instance.new("Tool",player.Backpack)
--taunttool.Name = "Taunt"
--taunttool.RequiresHandle = false
--taunttool.CanBeDropped = false
--local changetool = Instance.new("Tool",player.Backpack)
--changetool.Name = "Turn Sexy"
--changetool.RequiresHandle = false
--changetool.CanBeDropped = false

local naeeym = Instance.new("BillboardGui",chara)
naeeym.Size = UDim2.new(0,100,0,40)
naeeym.StudsOffset = Vector3.new(0,2,0)
naeeym.Adornee = chara.Head
local tecks = Instance.new("TextLabel",naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = "Master of Star"
tecks.Font = "Fantasy"
tecks.FontSize = "Size24"
tecks.TextStrokeTransparency = 0
tecks.TextColor3 = Color3.new(0,0,0)
tecks.TextStrokeColor3 = BrickColor.new("Royal purple").Color
tecks.Size = UDim2.new(1,0,0.5,0)
fhandle = handle:clone()
fhandle.CanCollide = false
fhandle.Name = "FakeHandle"
fhandle.Parent = chara
local weld = Instance.new("Weld")
weld.Name = "BackWeld"
weld.Part0 = chara.Torso
weld.Part1 = fhandle
weld.C0 = CFrame.new(0,-.6,.4)
weld.C0 = weld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(0),math.rad(80))
weld.Parent = fhandle
fhandle2 = handle2:clone()
fhandle2.CanCollide = false
fhandle2.Name = "FakeHandle2"
fhandle2.Parent = chara
local weld2 = Instance.new("Weld")
weld2.Name = "BackWeld"
weld2.Part0 = chara.Torso
weld2.Part1 = fhandle2
weld2.C0 = CFrame.new(0,-.6,.6)
weld2.C0 = weld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(180),math.rad(60))
weld2.Parent = fhandle2
fhandle3 = handle2:clone()
fhandle3.CanCollide = false
fhandle3.Name = "FakeHandle3"
fhandle3.Parent = chara
fhandle3.BrickColor = BrickColor.new("Really black")
fhandle3.Mesh.MeshId = "rbxasset://fonts/torso.mesh"
fhandle3.Mesh.Offset = Vector3.new(0, 0.8, 0)
fhandle3.Mesh.Scale = Vector3.new(0.05, 2.5, 0.3)
fhandle3.Mesh.TextureId = ""
local weld3 = Instance.new("Weld")
weld3.Name = "BackWeld"
weld3.Part0 = chara.Torso
weld3.Part1 = fhandle3
weld3.C0 = CFrame.new(0,-.6,.6)
weld3.C0 = weld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(180),math.rad(60))
weld3.Parent = fhandle3

local orbuu = Instance.new("Part", chara)
orbuu.Size = Vector3.new(1,1,1)
orbuu.Name = "Diamond"
orbuu.Anchored = true
orbuu.CanCollide = false
orbuu.BrickColor = BrickColor.new("Really black")
local meshooo = Instance.new("SpecialMesh", orbuu)
meshooo.MeshType = "FileMesh"
meshooo.MeshId = "http://www.roblox.com/asset/?id=9756362"
local RotationSpeed = 6
local BobSpeed = 1
local RotationDist = Vector3.new(5, 0, 0)
local dt = 0
local currentTime = 0

local enablehit = Instance.new("BoolValue", tool)
enablehit.Value = false
local didhit = Instance.new("BoolValue", tool)
didhit.Value = false
local dreadecl = Instance.new("BoolValue", tool)
dreadecl.Value = false
local zanny = Instance.new("BoolValue", tool2)
zanny.Value = false
local revoruva = Instance.new("BoolValue", tool)
revoruva.Value = false
local blawk = Instance.new("BoolValue", tool2)
blawk.Value = false
local enablehit2 = Instance.new("BoolValue", tool)
enablehit2.Value = false
local didhit2 = Instance.new("BoolValue", tool)
didhit2.Value = false

local equipanim = Instance.new("Animation", tool)
equipanim.AnimationId = "http://www.roblox.com/asset/?id=66702743"
local scytheanim = Instance.new("Animation", tool)
scytheanim.AnimationId = "http://www.roblox.com/asset/?id=96065457"
local scytheleft = Instance.new("Animation", tool)
scytheleft.AnimationId = "http://www.roblox.com/asset/?id=184573779"
local scytheright = Instance.new("Animation", tool)
scytheright.AnimationId = "http://www.roblox.com/asset/?id=184573748"
local scythedown = Instance.new("Animation", tool)
scythedown.AnimationId = "http://www.roblox.com/asset/?id=94160738"
local swordabsorb = Instance.new("Animation", tool)
swordabsorb.AnimationId = "http://www.roblox.com/asset/?id=83994319"
local swordstab = Instance.new("Animation", tool)
swordstab.AnimationId = "http://www.roblox.com/asset/?id=54504034"
local stormv = Instance.new("Animation", tool)
stormv.AnimationId = "http://www.roblox.com/asset/?id=184574340"
local blasta = Instance.new("Animation", tool)
blasta.AnimationId = "http://www.roblox.com/asset/?id=86504773"
local equipanim2 = Instance.new("Animation", tool)
equipanim2.AnimationId = "http://www.roblox.com/asset/?id=184572142"
local kickanim = Instance.new("Animation", tool)
kickanim.AnimationId = "http://www.roblox.com/asset/?id=45738282"
local katsla1 = Instance.new("Animation", tool2)
katsla1.AnimationId = "http://www.roblox.com/asset/?id=93060724"
local katsla2 = Instance.new("Animation", tool2)
katsla2.AnimationId = "http://www.roblox.com/asset/?id=93060716"
local katsla3 = Instance.new("Animation", tool2)
katsla3.AnimationId = "http://www.roblox.com/asset/?id=93060712"
local katsla4 = Instance.new("Animation", tool2)
katsla4.AnimationId = "http://www.roblox.com/asset/?id=93060709"

local equipa = chara.Humanoid:LoadAnimation(equipanim)
local scythea = chara.Humanoid:LoadAnimation(scytheanim)
local scytheal = chara.Humanoid:LoadAnimation(scytheleft)
local scythear = chara.Humanoid:LoadAnimation(scytheright)
local scythead = chara.Humanoid:LoadAnimation(scythedown)
local swordabs = chara.Humanoid:LoadAnimation(swordabsorb)
local swordstb = chara.Humanoid:LoadAnimation(swordstab)
local stormvip = chara.Humanoid:LoadAnimation(stormv)
local blastanim = chara.Humanoid:LoadAnimation(blasta)
local equipa2 = chara.Humanoid:LoadAnimation(equipanim2)
local kicka = chara.Humanoid:LoadAnimation(kickanim)
local ktsl1 = chara.Humanoid:LoadAnimation(katsla1)
local ktsl2 = chara.Humanoid:LoadAnimation(katsla2)
local ktsl3 = chara.Humanoid:LoadAnimation(katsla3)
local ktsl4 = chara.Humanoid:LoadAnimation(katsla4)

local swordequip = Instance.new("Sound", tool)
swordequip.SoundId = "rbxasset://sounds/unsheath.wav"
swordequip.PlaybackSpeed = 0.6
swordequip.Volume = 1
local chargesound = Instance.new("Sound", tool)
chargesound.SoundId = "http://www.roblox.com/asset/?id=2101137"
chargesound.PlaybackSpeed = 0.6
chargesound.Volume = 1
local swordsound = Instance.new("Sound", tool)
swordsound.SoundId = "rbxasset://sounds/swordlunge.wav"
swordsound.PlaybackSpeed = 0.6
swordsound.Volume = 1
local swordland = Instance.new("Sound", tool)
swordland.SoundId = "http://www.roblox.com/asset/?id=46153268"
swordland.PlaybackSpeed = 0.5
swordland.Volume = 1
local scytheland = Instance.new("Sound", tool)
scytheland.SoundId = "http://www.roblox.com/asset/?id=28144425"
scytheland.PlaybackSpeed = 0.265
scytheland.Volume = 1
local finalhits1 = Instance.new("Sound", tool)
finalhits1.SoundId = "http://www.roblox.com/asset/?id=62339698"
finalhits1.PlaybackSpeed = 0.3
finalhits1.Volume = 1
local finalhits2 = Instance.new("Sound", tool)
finalhits2.SoundId = "http://www.roblox.com/asset/?id=2697431"
finalhits2.PlaybackSpeed = 0.3
finalhits2.Volume = 1
local blasts = Instance.new("Sound", tool)
blasts.SoundId = "http://www.roblox.com/asset/?id=2248511"
blasts.PlaybackSpeed = .5
blasts.Volume = 1
local katanaslash = Instance.new("Sound", tool)
katanaslash.SoundId = "http://www.roblox.com/asset/?id=62339698"
katanaslash.PlaybackSpeed = 0.8
katanaslash.Volume = 1
local foxs = Instance.new("Sound", tool)
foxs.SoundId = "http://www.roblox.com/asset/?id=501536185"
foxs.PlaybackSpeed = 1
foxs.Volume = 1
local music1 = Instance.new("Sound", chara.Torso)
music1.SoundId = "http://www.roblox.com/asset/?id=157916553"
music1.PlaybackSpeed = 1
music1.Volume = 1
music1.Looped = true
local music2 = Instance.new("Sound", chara.Torso)
music2.SoundId = "http://www.roblox.com/asset/?id=248249480"
music2.PlaybackSpeed = 1
music2.Volume = 1
music2.Looped = true
local music3 = Instance.new("Sound", chara.Torso)
music3.SoundId = "http://www.roblox.com/asset/?id=432543624"
music3.PlaybackSpeed = 1
music3.Volume = 1
music3.Looped = true

function scythehold()
tool.GripForward = Vector3.new(-1,0,0)
tool.GripPos = Vector3.new(0,-2,0)
tool.GripRight = Vector3.new(0,0,-1)
tool.GripUp = Vector3.new(0,-1,0)
end
function posslashleft()
tool.GripForward = Vector3.new(1,0,0)
tool.GripPos = Vector3.new(0,-4,0)
tool.GripRight = Vector3.new(0,1,0)
tool.GripUp = Vector3.new(0,0,-1)
end
function posslashright()
tool.GripForward = Vector3.new(-1,0,0)
tool.GripPos = Vector3.new(0,-4,0)
tool.GripRight = Vector3.new(0,1,0)
tool.GripUp = Vector3.new(0,0,1)
end
function posslashdown()
tool.GripForward = Vector3.new(0,1,-.5)
tool.GripPos = Vector3.new(0,-4,0)
tool.GripRight = Vector3.new(0,0,1)
tool.GripUp = Vector3.new(-1,0,0)
end
function regularswordpos()
tool.GripForward = Vector3.new(-1,0,0)
tool.GripPos = Vector3.new(0,-2,0)
tool.GripRight = Vector3.new(0,0,-1)
tool.GripUp = Vector3.new(0,-1,0)
end
function absorbswordm()
tool.GripForward = Vector3.new(1,1,0)
tool.GripPos = Vector3.new(0,-2,0)
tool.GripRight = Vector3.new(0,0,1)
tool.GripUp = Vector3.new(-1,1,0)
end
function createblack(part)
local pt1 = NumberSequenceKeypoint.new(0,1,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",part)
effecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecto.Color = ColorSequence.new(Color3.new(0,0,0))
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(1,1)
effecto.Size = NumberSequence.new({pt1,pt2})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(100,100)
end
function createhugeblack(part)
local pt1 = NumberSequenceKeypoint.new(0,10,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",part)
effecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecto.Color = ColorSequence.new(Color3.new(0,0,0))
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(1,1)
effecto.Size = NumberSequence.new({pt1,pt2})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(100,100)
end

createblack(orbuu)
orbuu.ParticleEmitter.Color = ColorSequence.new(Color3.new(1,0,1))
orbuu.ParticleEmitter.LightEmission = 1
--Spell Circle--

Void = nil
VoidParts = {}
Equipped = false

function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

	Player = player
	Character = chara

	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("Torso")
	if not Player or not Humanoid or Humanoid.Health == 0 or not Torso then
		return
	end
	Equipped = true
	Void = Instance.new("Model")
	Void.Name = "Void"
	Angle = 0
	for i = 1, 1 do
		local VoidPart = Instance.new("Part")
		VoidPart.Name = "VoidPart"
		VoidPart.Transparency = 1
		VoidPart.BrickColor = BrickColor.new("Really black")
		VoidPart.Material = Enum.Material.Plastic
		VoidPart.Shape = Enum.PartType.Block
		VoidPart.FormFactor = Enum.FormFactor.Custom
		VoidPart.TopSurface = Enum.SurfaceType.Smooth
		VoidPart.BottomSurface = Enum.SurfaceType.Smooth
		VoidPart.Anchored = true
		VoidPart.CanCollide = false
		VoidPart.Locked = true
		VoidPart.Size = Vector3.new(10, 0.2, 10)
		local BlockMesh = Instance.new("BlockMesh")
		BlockMesh.Scale = Vector3.new(1, (1 + (0.005 * i)), 1)
		BlockMesh.Parent = VoidPart
		VoidPart.Parent = Void
		local Star = Instance.new("Decal", VoidPart)
		Star.Texture = "http://www.roblox.com/asset/?id=205525524"
		Star.Face = "Top"
		local Light = Instance.new("PointLight", VoidPart)
		Light.Color = Color3.new(1,0,1)
		Light.Brightness = 100
		Light.Range = 10
		table.insert(VoidParts, VoidPart)
	end
	Spawn(function()
		while Equipped and Humanoid.Parent and Humanoid.Health > 0 and Torso.Parent do
			if Angle == 360 then
				Angle = 0
			end
			Angle = Angle + 0.05
			chara.Humanoid.MaxHealth = math.huge
			chara.Humanoid.Health = math.huge
			local parentPos = chara.Torso.CFrame
			--Rotate Fluffy around the player's head
			local rotation = CFrame.Angles(0 , RotationSpeed * currentTime, 0)
			local bob = Vector3.new(0, BobSpeed * math.sin(currentTime), 0)
			orbuu.CFrame =  ((parentPos + bob)  + (rotation * RotationDist))
			--Wait some time so we aren't going plaid
			dt, currentTime = wait(1/40)
			local cheeed = chara:GetChildren()
			for i = 1, #cheeed do
			if cheeed[i].ClassName == "Part" then
			if cheeed[i].Name ~= "Right Arm" and cheeed[i].Name ~= "Left Arm" and cheeed[i].Name ~= "Right Leg" and cheeed[i].Name ~= "Left Leg" and cheeed[i].Name ~= "Torso" and cheeed[i].Name ~= "HumanoidRootPart" and cheeed[i].Name ~= "Head" and cheeed[i].Name ~= "FakeHandle" and cheeed[i].Name ~= "FakeHandle2" and cheeed[i].Name ~= "FakeHandle3" and cheeed[i].Name ~= "Diamond" then
			cheeed[i]:Destroy()
			else end
			end
			end
			local Hit, EndPosition = RayCast(Torso.Position, Vector3.new(0, -1, 0), (Torso.Size.Y * 6.5), {Character})
			if Hit then
				if not Void.Parent then
					Void.Parent = Character
				end
				for i, v in pairs(VoidParts) do
					v.CFrame = CFrame.new(Torso.Position.X, EndPosition.Y, Torso.Position.Z) * CFrame.Angles(0, (Angle + i), 0)
				end
			else
				Void.Parent = nil
			end
			wait()
		end
	end)

--Now the real stuff!--

function chat(string)
--ch = game:GetService("Chat"):Chat(chara.Head, string, "Red")
if chara:FindFirstChild("TalkingBillBoard") ~= nil then
chara:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,4,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = string
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = BrickColor.new("Royal purple").Color
tecks2.Size = UDim2.new(1,0,0.5,0)
debby:AddItem(naeeym2,1)
end

function createorb(origin,target)
local orb = Instance.new("Part", game.Workspace)
orb.Shape = "Ball"
orb.CanCollide = false
orb.Size = Vector3.new(1,1,1)
orb.BrickColor = BrickColor.new("White")
orb.Material = "Neon"
orb.Position = origin.Position
orb.Velocity = Vector3.new(math.random() - .5, 0, math.random() - .5).unit * 80
local firr = Instance.new("Fire", orb)
firr.Color = Color3.new(1,1,1)
firr.SecondaryColor = Color3.new(1,1,1)
firr.Size = 2
local gotoforce = Instance.new("BodyPosition", orb)
gotoforce.Position = target.Position
debby:AddItem(orb,1)
end

function kicktouch(hit)
if revoruva.Value == true then
if hit ~= nil and hit.Parent:FindFirstChild("kicko") == nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid") ~= nil then
swordland:Play()
hitdude = hit.Parent
valood = Instance.new("NumberValue", hit.Parent)
valood.Name = "kicko"
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 20
hitdude.Humanoid.PlatformStand = true
faws = Instance.new("BodyVelocity", hit.Parent.Torso)
faws.Velocity = (hitdude.Torso.Position - chara.HumanoidRootPart.Position) * 20
wait(.5)
hitdude.Humanoid.PlatformStand = false
valood:Destroy()
faws:Destroy()
end
end
end

function onTouched(hit)
--EENFERNOH DEEVAIDER!--
if dreadecl.Value == true then
if hit ~= nil and hit.Parent:FindFirstChild("dreaded") == nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid") ~= nil then
finalhits1:Play()
hitdude = hit.Parent
valood = Instance.new("NumberValue", hit.Parent)
valood.Name = "dreaded"
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 30
hitdude.Humanoid.PlatformStand = true
faws = Instance.new("BodyVelocity", hit.Parent.Torso)
faws.Velocity = Vector3.new(0,50,0)
wait(1)
hitdude.Humanoid.PlatformStand = false
valood:Destroy()
faws:Destroy()
end
end
--BLEK AWNSLOT!--
if enablehit.Value == true then
if hit ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid") ~= nil then
swordland:play()
didhit.Value = true
enablehit.Value = false
hitdude = hit.Parent
if hitdude.Name == "grgrgry21" then
chat("I'm sorry, you were a great man, Gry.")
elseif hitdude then
chat("Sorry, but you need to die.")
end
hitdude.Humanoid.Health = 80
hitdude.Humanoid.MaxHealth = 100
hitdude.Humanoid.PlatformStand = true
hitdude.Humanoid.WalkSpeed = 0
chara.Humanoid.WalkSpeed = 0
if hitdude:FindFirstChild("Torso") ~= nil then
hitdude.Torso.CFrame = chara.Torso.CFrame + (chara.Torso.CFrame.lookVector*5)
local standstill = Instance.new("BodyPosition", hitdude.Torso)
standstill.Position = hitdude.Torso.Position
end
if hitdude:FindFirstChild("Left Arm") ~= nil then
hitdude["Left Arm"]:destroy()
end
if hitdude:FindFirstChild("Right Arm") ~= nil then
hitdude["Right Arm"]:destroy()
end
wait(1)
chat("Hell Zagan!")
swordequip:play()
swordabs:Stop()
scythea:Play()
fira.Enabled = true
--fira.Size = 5
mesh.Parent = tool
mesh2.Parent = handle
wait(1)
scythea:Stop()
posslashleft()
for i = 1,2 do
handle.CanCollide = true
scytheland:play()
scytheal:Play()
posslashleft()
swordsound:play()
swordland:play()
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 2
createorb(hitdude.Torso,chara.Torso)
chara.Humanoid.Health = chara.Humanoid.Health + 10
--fira.Size = fira.Size + .5
wait(0.4)
scytheal:Stop()
scythear:Play()
posslashright()
swordsound:play()
swordland:play()
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 2
createorb(hitdude.Torso,chara.Torso)
chara.Humanoid.Health = chara.Humanoid.Health + 10
--fira.Size = fira.Size + .5
wait(0.4)
handle.CanCollide = false
scythear:Stop()
scythead:Play()
posslashdown()
swordsound:play()
swordland:play()
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 2
createorb(hitdude.Torso,chara.Torso)
chara.Humanoid.Health = chara.Humanoid.Health + 10
--fira.Size = fira.Size + .5
wait(0.4)
scythead:Stop()
end
chat("Hell Reign!")
mesh2.Parent = tool
mesh.Parent = handle
chargesound:play()
swordabs:Play()
absorbswordm()
for i = 1, 4 do
wait(.25)
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 2
createorb(hitdude.Torso,handle)
--fira.Size = fira.Size + 1
chara.Humanoid.Health = chara.Humanoid.Health + 10
finalhits2:play()
end
regularswordpos()
swordabs:Stop()
swordstb:Play()
for i = 1, 4 do
wait(.25)
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 2
createorb(hitdude.Torso,handle)
--fira.Size = fira.Size + 1
chara.Humanoid.Health = chara.Humanoid.Health + 10
finalhits2:play()
end
chat("OBLITERATION!")
finalhits1:play()
finalhits2:play()
hitdude.Humanoid.Health = 0
local childs = hitdude:GetChildren()
for i=1,#childs do
		if (childs[i].className == "Part") then
			childs[i].BrickColor = BrickColor.new("Really black")
			childs[i]:BreakJoints()
			local b = Instance.new("BodyVelocity")
			b.velocity = Vector3.new(math.random() - .5, 0, math.random() - .5).unit * 80
			b.maxForce = Vector3.new(1e5,1e5,1e5)
			b.Parent = childs[i]
			createblack(childs[i])
		end
	end
wait(2)
if hitdude.Name == "grgrgry21" then
chat("I'm sorry...")
elseif hitdude then
chat("Die.")
end
wait(1)
tool.Enabled = true
didhit.Value = false
fira.Enabled = false
chara.Humanoid.WalkSpeed = 50
end
end
end

function onTouched2(hit)
if zanny.Value == true then
if hit ~= nil and hit.Parent:FindFirstChild("zanned") == nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid") ~= nil then
hitdude = hit.Parent
valood = Instance.new("NumberValue", hit.Parent)
valood.Name = "zanned"
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 10
faws = Instance.new("BodyVelocity", hit.Parent.Torso)
faws.Velocity = (hitdude.Torso.Position - chara.HumanoidRootPart.Position) * 1
wait(.3)
valood:Destroy()
faws:Destroy()
end
else end
if blawk.Value == true then
if hit ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid") ~= nil then
blawk.Value = false
chara.Torso.CFrame = chara.Torso.CFrame + (chara.Torso.CFrame.lookVector*20)
tool2.Enabled = false
hitdude = hit.Parent
hitdude.Humanoid.Health = hitdude.Humanoid.Health - 50
hitdude.Torso.Anchored = true
chat("Demonic Riposte!")
ktsl1:Play()
local sspt1 = NumberSequenceKeypoint.new(0,1,0)
local sspt2 = NumberSequenceKeypoint.new(1,0,0)
local ddeffecto = Instance.new("ParticleEmitter",hitdude.Torso)
ddeffecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
ddeffecto.Color = ColorSequence.new(Color3.new(0,0,0))
ddeffecto.Rate = 10000
ddeffecto.Lifetime = NumberRange.new(1,1)
ddeffecto.Size = NumberSequence.new({sspt1,sspt2})
ddeffecto.Speed = NumberRange.new(50,50)
ddeffecto.RotSpeed = NumberRange.new(100,100)
ddeffecto.VelocitySpread = 50
ddeffecto.EmissionDirection = "Front"
finalhits1:Play()
finalhits2:Play()
wait(1)
ddeffecto:Destroy()
scythea:Stop()
ktsl1:Stop()
hitdude.Torso.Anchored = false
chara.Humanoid.WalkSpeed = 50
tool2.Enabled = true
end
end
if enablehit2.Value == true then
if hit ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid") ~= nil then
scythea:Stop()
finalhits2:play()
didhit2.Value = true
enablehit2.Value = false
hitdude = hit.Parent
if hitdude.Name == "grgrgry21" then
chat("I'm sorry, Gry.")
elseif hitdude then
chat("Haha, how unfortunate.")
end
hitdude.Humanoid.Health = 100
hitdude.Humanoid.MaxHealth = 100
hitdude.Humanoid.PlatformStand = true
hitdude.Humanoid.WalkSpeed = 0
chara.Humanoid.WalkSpeed = 0
if hitdude:FindFirstChild("Torso") ~= nil then
createblack(hitdude.Torso)
hitdude.Torso.CFrame = chara.Torso.CFrame + (chara.Torso.CFrame.lookVector*5)
local standstill = Instance.new("BodyPosition", hitdude.Torso)
standstill.Position = hitdude.Torso.Position
end
if hitdude:FindFirstChild("Left Arm") ~= nil then
hitdude["Left Arm"]:destroy()
end
if hitdude:FindFirstChild("Right Arm") ~= nil then
hitdude["Right Arm"]:destroy()
end
wait(1)
local ssspt1 = NumberSequenceKeypoint.new(0,1,0)
local ssspt2 = NumberSequenceKeypoint.new(1,0,0)
local dddeffecto = Instance.new("ParticleEmitter",hitdude.Torso)
dddeffecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
dddeffecto.Color = ColorSequence.new(Color3.new(0,0,0))
dddeffecto.Rate = 10000
dddeffecto.Lifetime = NumberRange.new(1,1)
dddeffecto.Size = NumberSequence.new({ssspt1,ssspt2})
dddeffecto.Speed = NumberRange.new(50,50)
dddeffecto.RotSpeed = NumberRange.new(100,100)
dddeffecto.VelocitySpread = 50
dddeffecto.EmissionDirection = "Back"
for i = 1, 5 do
katanaslash:Play()
ktsl1:Play()
wait(0.1)
katanaslash:Play()
ktsl1:Stop()
ktsl2:Play()
wait(0.1)
katanaslash:Play()
ktsl2:Stop()
ktsl3:Play()
wait(0.1)
katanaslash:Play()
ktsl3:Stop()
ktsl4:Play()
wait(0.1)
ktsl4:Stop()
end
dddeffecto:Destroy()
wait(.5)
chara.Torso.CFrame = chara.Torso.CFrame + (chara.Torso.CFrame.lookVector*15)
wait(1)
if hitdude.Name == "grgrgry21" then
chat("Goodbye, Gry.")
elseif hitdude then
chat("Now die.")
end
wait(0.2)
ktsl1:Play()
swordsound:Play()
wait(0.1)
finalhits1:play()
finalhits2:play()
hitdude.Humanoid.Health = 0
local childs = hitdude:GetChildren()
for i=1,#childs do
		if (childs[i].className == "Part") then
			childs[i].BrickColor = BrickColor.new("Really black")
			childs[i]:BreakJoints()
			local b = Instance.new("BodyVelocity")
			b.velocity = Vector3.new(math.random() - .5, 0, math.random() - .5).unit * 80
			b.maxForce = Vector3.new(1e5,1e5,1e5)
			b.Parent = childs[i]
			createblack(childs[i])
		end
	end
wait(2)
ktsl1:Stop()
tool2.Enabled = true
didhit2.Value = false
chara.Humanoid.WalkSpeed = 50
end
end
end

function blowprojectile(hit)
	if (hit.Parent == nil) then return end -- happens when bullet hits sword

	local humanoid = nil
	if hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid") ~= nil then
	humanoid = hit.Parent:FindFirstChild("Humanoid")
	end
	if humanoid then
	hit:BreakJoints()
	hit.BrickColor = BrickColor.new("Really black")
	createblack(hit)
	end	
	local vCharacter = tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)
	local hum = vCharacter:findFirstChild("Humanoid") -- non-nil if tool held by a character
	if humanoid~=nil and humanoid ~= hum and hum ~= nil then
		-- final check, make sure sword is in-hand
	
		local right_arm = vCharacter:FindFirstChild("Right Arm")
		if (right_arm ~= nil) then
			local joint = right_arm:FindFirstChild("RightGrip")
			if (joint ~= nil and (joint.Part0 == sword or joint.Part1 == sword)) then
				wait(1)
			end
		end
	end
end

function fire(v, part)

	local vCharacter = chara
	local vPlayer = player
		
	local missile = Instance.new("Part")

	

	missile.CFrame = part.CFrame * CFrame.Angles(math.pi/2,0,0)
	missile.Size = Vector3.new(2,2,2)
	missile.Velocity = v.unit * 200
	missile.BrickColor = BrickColor.new("Really black")
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.CanCollide = false
	missile.Elasticity = .05
	missile.Friction = .7
	missile.Name = "Bullet"

	missile.Touched:connect(blowprojectile)

	local mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Sphere"
	mesh.Parent = missile
	
	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,1100,0)
	force.Parent = missile
	
	createblack(missile)

--	local force = Instance.new("BodyForce")
--	force.Name = "BulletFloat"
--	force.force = Vector3.new(0,98.1,0)
--	force.Parent = missile
	
	debby:AddItem(missile,5)
	missile.Parent = game.Workspace

	blasts:play()
end

function keydowns(key)
if tool.Enabled == true then
if key == "v" then
chat("HELL ONSLAUGHT!")
tool.Enabled = false
swordequip:Play()
wait(1)
chara.Humanoid.WalkSpeed = 0
enablehit.Value = true
swordsound:play()
swordabs:Play()
wait(2)
if didhit.Value == false then
swordabs:Stop()
enablehit.Value = false
tool.Enabled = true
chara.Humanoid.WalkSpeed = 50
chat("CHEESE")
print("Failed to land...")
elseif didhit.Value == true then end
else end
if key == "c" then
chat("Demon Viper!")
chara.Humanoid.WalkSpeed = 5
tool.Enabled = false
dreadecl.Value = true
stormvip:Play()
finalhits2:Play()
scytheland:Play()
fira.Enabled = true
wait(1)
chara.Humanoid.WalkSpeed = 50
dreadecl.Value = false
tool.Enabled = true
fira.Enabled = false
stormvip:Stop()
else end
if key == "x" then
chat("Shadow Blast!")
tool.Enabled = false
blastanim:Play()
chargesound:Play()
deffecto.Enabled = true
wait(1.5)
for i = 1, 10 do
wait(0.1)
fire(chara.HumanoidRootPart.CFrame.lookVector, orbuu)
end
wait(0.5)
blastanim:Stop()
deffecto.Enabled = false
tool.Enabled = true
else end
if key == "z" then
tool.Enabled = false
chat("Devil Revolver!")
kicka:Play()
chara.Humanoid.WalkSpeed = 5
revoruva.Value = true
swordsound:Play()
wait(1)
kicka:Stop()
tool.Enabled = true
chara.Humanoid.WalkSpeed = 50
revoruva.Value = false
end
end
if key == "g" then
Taunt()
elseif key == "m" then
Moosik()
elseif key == "h" then
changeclothes()
end
end

function keydowns2(key)
if tool2.Enabled == true then
if key == "z" and blawk.Value == false then
tool2.Enabled = false
chat("Devil Revolver!")
kicka:Play()
chara.Humanoid.WalkSpeed = 5
revoruva.Value = true
swordsound:Play()
wait(1)
kicka:Stop()
tool2.Enabled = true
chara.Humanoid.WalkSpeed = 50
revoruva.Value = false
end
if key == "x" and blawk.Value == false then
chat("Zantetsu!")
chara.Humanoid.WalkSpeed = 5
tool2.Enabled = false
zanny.Value = true
for i = 1, 2 do
katanaslash:Play()
ktsl1:Play()
wait(0.1)
katanaslash:Play()
ktsl1:Stop()
ktsl2:Play()
wait(0.1)
katanaslash:Play()
ktsl2:Stop()
ktsl3:Play()
wait(0.1)
katanaslash:Play()
ktsl3:Stop()
ktsl4:Play()
wait(0.1)
ktsl4:Stop()
end
chara.Humanoid.WalkSpeed = 50
tool2.Enabled = true
zanny.Value = false
end
if key == "c" then
if blawk.Value == false then
chat("With little to no trace...")
scythea:Play()
blawk.Value = true
chara.Humanoid.WalkSpeed = 5
elseif blawk.Value == true then
scythea:Stop()
blawk.Value = false
chara.Humanoid.WalkSpeed = 50
end
end
if key == "v" then
chat("Koukuujin Ougi...")
tool2.Enabled = false
swordequip:Play()
chara.Humanoid.WalkSpeed = 0
enablehit2.Value = true
scythea:Play()
wait(5)
if didhit2.Value == false then
enablehit2.Value = false
tool2.Enabled = true
chara.Humanoid.WalkSpeed = 50
print("Failed to land...")
scythea:Stop()
elseif didhit2.Value == true then end
end
end
if key == "g" then
Taunt()
elseif key == "m" then
Moosik()
elseif key == "h" then
changeclothes()
end
end

function onEquipped(mouse)
swordequip:play()
equipa:play()
chara.Humanoid.WalkSpeed = 50
if fhandle ~= nil then
fhandle.Transparency = 1
end
if mouse then mouse.KeyDown:connect(keydowns)
end
end

function onUnequipped()
equipa:stop()
chara.Humanoid.WalkSpeed = 16
if fhandle ~= nil then
fhandle.Transparency = 0
end
end

function onEquipped2(mouse)
swordequip:play()
equipa2:play()
chara.Humanoid.WalkSpeed = 50
if fhandle2 ~= nil then
fhandle2.Transparency = 1
end
if mouse then mouse.KeyDown:connect(keydowns2)
end
end

function onUnequipped2()
equipa2:stop()
chara.Humanoid.WalkSpeed = 16
if fhandle2 ~= nil then
fhandle2.Transparency = 0
end
end

function Taunt()
thing = math.random(1,4)
foxs:Play()
if taip == 1 then
if thing == 1 and prevthing ~= 1 then
chat("You're too weak.")
prevthing = 1
elseif thing == 2 and prevthing ~= 2 then
chat("Don't let your guard down.")
prevthing = 2
elseif thing == 3 and prevthing ~= 3 then
chat("Too naive.")
prevthing = 3
elseif thing == 4 and prevthing ~= 4 then
chat("Someone like you...")
wait(1)
chat("...can't defeat me!")
prevthing = 4
end
elseif taip == 2 then
chat("please fahk me")
end
end

function Moosik()
if moosek == 0 then
music1:Play()
moosek = 1
elseif moosek == 1 then
music1:Stop()
moosek = 0
end
end

function changeclothes()
if taip == 1 then
shirt.ShirtTemplate = ""
pants.PantsTemplate = "http://www.roblox.com/asset/?id=196429174"
tshirt.Graphic = "http://www.roblox.com/asset/?id=130291831"
taip = 2
tecks.Text = "ghey"
elseif taip == 2 then
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=555077915"
pants.PantsTemplate = "http://www.roblox.com/asset/?id=482320178"
tshirt.Graphic = ""
taip = 1
tecks.Text = "Enma the Null Kitsune"
end
end

tool.Equipped:connect(onEquipped)
tool.Unequipped:connect(onUnequipped)
tool2.Equipped:connect(onEquipped2)
tool2.Unequipped:connect(onUnequipped2)
--musictool.Activated:connect(Moosik)
--taunttool.Activated:connect(Taunt)
handle.Touched:connect(onTouched)
handle2.Touched:connect(onTouched2)
chara["Left Leg"].Touched:connect(kicktouch)
--changetool.Activated:connect(changeclothes)

--DEATH--
local deathed = false
function onDied()
deathed = true
chat("To be defeated by a weakling like you..")
shirt:Destroy()
pants:Destroy()
Void:Destroy()
orbuu:Destroy()
fhandle:Destroy()
fhandle2:Destroy()
fhandle3:Destroy()
music1.Volume = 0
local dmusic = Instance.new("Sound", game.Workspace)
dmusic.SoundId = "http://www.roblox.com/asset/?id=19094700"
dmusic.PlaybackSpeed = 1
dmusic.Volume = 1
dmusic.Looped = true
dmusic:Play()
debby:AddItem(dmusic, 5)
local shah = chara:GetChildren()
for i = 1, #shah do
if shah[i].ClassName == "Part" then
shah[i].Anchored = true
shah[i].BrickColor = BrickColor.new("Really black")
createhugeblack(shah[i])
elseif shah[i].ClassName == "Attachment" then
shah[i].Handle.Mesh.VertexColor = Color3.new(0,0,0)
shah[i].Handle.Anchored = true
end
end
for i = 1, 3 do
wait(1.2)
dmusic.PlaybackSpeed = dmusic.PlaybackSpeed - 0.2
end
for i = 1, #shah do
if shah[i].ClassName == "Part" then
shah[i].Anchored = false
createhugeblack(shah[i])
elseif shah[i].ClassName == "Attachment" then
shah[i].Handle.Anchored = false
end
end
local exx = Instance.new("Explosion", game.Workspace)
exx.Position = chara.Torso.Position
exx.BlastPressure = 500000000
exx.BlastRadius = 10000000000
exx.Visible = false
exx.ExplosionType = "CratersAndDebris"
finalhits1:Play()
end

while deathed == true do
wait(0.1)
if timeofday == "Day" then
game.Lighting.TimeOfDay = "18:00:00"
timeofday = "Dawn"
elseif timeofday == "Dawn" then
game.Lighting.TimeOfDay = "00:00:00"
timeofday = "Night"
elseif timeofday == "Night" then
game.Lighting.TimeOfDay = "6:00:00"
timeofday = "Morning"
elseif timeofday == "Morning" then
game.Lighting.TimeOfDay = "12:00:00"
timeofday = "Day"
end
end

chara.Humanoid.Died:connect(onDied)