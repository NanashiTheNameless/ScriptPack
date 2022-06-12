--Warning this script is not made by me and never will be
--idea's from ace28545 to make this model 
if (script:FindFirstChild("forCustomRun")~=nil) then
local sc = script["forCustomRun"].Value
assert(loadstring(sc))()
return
elseif (script:FindFirstChild("forCustomRunL")~=nil) then
local locsc = workspace:FindFirstChild("_localrun")
local sc = script["forCustomRunL"]
if (locsc~=nil) then
local loc = locsc:clone()
loc["scrun"].Value = sc.Value
loc.Name = script.Name
for i,v in pairs(script:GetChildren()) do
v:clone().Parent = loc
end
loc.Parent = script.Parent
script:remove()
return
else
assert(loadstring(sc.Value))()
return
end
end
local m = Instance.new("Model")
m.Name = "ShieldofHealth"
t1 = Instance.new("Tool", m)
t1.Name = "ShieldofHealth"
t1.GripForward = Vector3.new(0, 1, 0)
t1.GripUp = Vector3.new(0, 0, 1)
t1.TextureId = "http://www.roblox.com/asset?id=134371977"
t1.CanBeDropped = false
s1 = script:clone()
x1 = Instance.new("Animation", s1)
x1.Name = "BeginSmash"
x1.AnimationId = "http://www.roblox.com/asset/?id=120735709"
x2 = Instance.new("Animation", s1)
x2.Name = "EndSmash"
x2.AnimationId = "http://www.roblox.com/asset/?id=120735762"
s1.Name = "AnimationScript"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRunL"
so1.Value = [===[
-----------------
--| Constants |--
-----------------

--NOTE: These must be the names of animation objects under this script
local ANIMATION_NAMES = {
	'BeginSmash',
	'EndSmash'
}

-----------------
--| Variables |--
-----------------

local Tool = script.Parent

local Animations = {}
local AnimTracks = {}

local Character = nil
local Humanoid = nil

-----------------
--| Functions |--
-----------------

local function OnEquipped()
	Character = Tool.Parent
	Humanoid = Character:WaitForChild('Humanoid')

	-- Load all the Animations into AnimationTracks
	for animationName, animation in pairs(Animations) do
		AnimTracks[animationName] = Humanoid:LoadAnimation(animation)
	end
end

local function OnChanged(property)
	if property == 'Enabled' and Tool.Enabled == false then
		AnimTracks['BeginSmash']:Play()
		wait(0.1)
		if Tool.Parent == Character then
			AnimTracks['BeginSmash']:Stop()
			AnimTracks['EndSmash']:Play()

			wait(0.1)
			AnimTracks['EndSmash']:Stop()
		end
	end
end

-- When unequipped, stop all animations
local function OnUnequipped()
	for _, animTrack in pairs(AnimTracks) do
		animTrack:Stop()
	end
	AnimTracks = {}
end

--------------------
--| Script Logic |--
--------------------

-- First, get the animations
for _, animationName in pairs(ANIMATION_NAMES) do
	local animation = script:WaitForChild(animationName)
	if animation:IsA('Animation') then
		Animations[animationName] = animation
	end
end

Tool.Equipped:connect(OnEquipped)
Tool.Changed:connect(OnChanged)
Tool.Unequipped:connect(OnUnequipped)

]===]
s1.Parent = t1
s2 = script:clone()
s2.Name = "KorbloxStaffScript"
s2.Disabled = false
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRun"
so2.Value = [===[
-----------------
--| Constants |--
-----------------

local COOLDOWN = 0.1
local DAMAGE = 1000
local BOOM_DAMAGE = 100
local BOOM_SIZE = 64

-----------------
--| Variables |--
-----------------

local PlayersService = Game:GetService('Players')
local DebrisService = Game:GetService('Debris')

local Tool = script.Parent
local Handle = Tool:WaitForChild('Handle')

local Character = nil
local Humanoid = nil
local Torso = nil
local Player = nil

local EffectPart = nil
local Connections = {}

-----------------
--| Functions |--
-----------------

-- Returns a character ancestor and its Humanoid, or nil
local function FindCharacterAncestor(subject)
	if subject and subject ~= Workspace then
		local humanoid = subject:FindFirstChild('Humanoid')
		if humanoid then
			return subject, humanoid
		else
			return FindCharacterAncestor(subject.Parent)
		end
	end
	return nil
end

-- Removes any old creator tags and applies new ones to the specified target
local function ApplyTags(target)
	while target:FindFirstChild('creator') do
		target.creator:Destroy()
	end

	local creatorTag = Instance.new('ObjectValue')
	creatorTag.Value = Player
	creatorTag.Name = 'creator' --NOTE: Must be called 'creator' for website stats

	local iconTag = Instance.new('StringValue')
	iconTag.Value = Tool.TextureId
	iconTag.Name = 'icon'

	iconTag.Parent = creatorTag
	creatorTag.Parent = target
	DebrisService:AddItem(creatorTag, 4)
end

local function OnEquipped()
	Character = Tool.Parent
	Humanoid = Character:WaitForChild('Humanoid')
	Torso = Character:WaitForChild('Torso')
	Player = PlayersService:GetPlayerFromCharacter(Character)

	-- Create effects
	EffectPart = Instance.new('Part')
	EffectPart.Name = 'Effect'
	EffectPart.FormFactor = Enum.FormFactor.Custom
	EffectPart.Size = Vector3.new(0, 0, 0)
	EffectPart.BottomSurface = Enum.SurfaceType.Smooth
	EffectPart.TopSurface = Enum.SurfaceType.Smooth
	EffectPart.Transparency = 1
	EffectPart.CanCollide = false
	local fire = Instance.new('Fire')
	fire.Size = 2
	fire.Heat = 25
	fire.Color = Color3.new(255/255, 0,0)
	fire.SecondaryColor = Color3.new(0, 0, 0)
	fire.Parent = EffectPart
	local pointLight = Instance.new('PointLight')
	pointLight.Color = Color3.new(255/255, 0, 0)
	pointLight.Brightness = 1
	pointLight.Range = 8
	pointLight.Parent = EffectPart
	local weld = Instance.new('Weld')
	weld.Part0 = Handle
	weld.Part1 = EffectPart
	weld.C0 = CFrame.Angles(math.pi / 2, 0, 0) + Vector3.new(0, 0, 3)
	weld.Parent = EffectPart
	EffectPart.Parent = Handle
end

local function PleaseStop(part)
	if part then
		part.Anchored = true
		part.Velocity = Vector3.new(0,0,0)
		part.RotVelocity = Vector3.new(0,0,0)
		part.CFrame = part.CFrame + Vector3.new(0, 0.001, 0)
	end
end

local function OnSpearTouched(spear, otherPart, startPoint, index)
	if spear and otherPart and startPoint then
		Connections[index]:disconnect()
		local wooshSound = spear:FindFirstChild('Woosh')
		if wooshSound then
			wooshSound:Play()
		end

		local effectPart = spear:FindFirstChild(EffectPart.Name)
		PleaseStop(spear)
		spear.CFrame = spear.CFrame + Vector3.new(0, 4, 0)
		if effectPart then
			PleaseStop(effectPart)
			effectPart.CFrame = effectPart.CFrame + Vector3.new(0, 4, 0)
		end

		--[[
		local weld = Instance.new('Weld')
		weld.Part0 = otherPart
		weld.Part1 = spear
		weld.C0 = CFrame.Angles(math.pi / 2, 0, 0) + (spear.Position - otherPart.Position)
		weld.Parent = spear
		]]

		local ray = Ray.new(startPoint, (spear.Position - startPoint).unit * 999)
		local hitPart, hitPoint = Workspace:FindPartOnRay(ray, spear)
		spear.CFrame = spear.CFrame - spear.CFrame.p + hitPoint + Vector3.new(0, 2, 0)
		if effectPart then
			local weld = effectPart:FindFirstChild('Weld')
			if weld then
				effectPart.CFrame = spear.CFrame * weld.C0
			end
		end
			

		if hitPart then
			local character, humanoid = FindCharacterAncestor(hitPart)
			if character and humanoid then
				ApplyTags(humanoid)
				humanoid:TakeDamage(DAMAGE)
			end
			wait(0.1)
			if effectPart then
				local fire = effectPart:FindFirstChild('Fire')
				if fire then
					fire.Size = fire.Size * 2
				end
				local pointLight = effectPart:FindFirstChild('PointLight')
				if pointLight then
					pointLight.Range = pointLight.Range * 2
				end
			end
			wait(0.1)
			-- Boom
			local boomSound = spear:FindFirstChild('Boom')
			if boomSound then
				boomSound:Play()
			end
			local size = Vector3.new(BOOM_SIZE, BOOM_SIZE, BOOM_SIZE) / 2
			local region = Region3.new(spear.Position - size, spear.Position + size)
			local parts = Workspace:FindPartsInRegion3(region, spear, 100)
			for _, part in pairs(parts) do
				local character, humanoid = FindCharacterAncestor(part)
				if character and humanoid and character ~= Character then
					ApplyTags(humanoid)
					humanoid:TakeDamage(BOOM_DAMAGE)
				end
			end
			for i = 1, 5 do
				if effectPart then
					local effectClone = effectPart:Clone()
					effectClone.CanCollide = true
					effectClone.Anchored = false
					effectClone.Velocity = Vector3.new(math.random(), math.random() * 5, math.random())
					DebrisService:AddItem(effectClone, 1)
					effectClone.Parent = Workspace
				end
			end
			DebrisService:AddItem(spear, 0)
		end
	end
end

local function OnActivated()
	if Tool.Enabled and Humanoid.Health > 0 then
		Tool.Enabled = false

		wait(0.1)
		Connections = {}
		for i = 1, 12 do
			if Tool.Parent == Character then
				local handleClone = Handle:Clone()
				handleClone.Name = 'Effect'
				local startCFrame = (Torso.CFrame * CFrame.Angles(-math.pi / 2, 0, 0)) + (Torso.CFrame.lookVector * 10 * i) + Vector3.new(0, 100, 0)
				handleClone.CFrame = startCFrame
				handleClone.Velocity = Vector3.new(0, -200, 0)
				handleClone.RotVelocity = Vector3.new(0, 8, 0)
				handleClone.CanCollide = false
				Connections[i] = handleClone.Touched:connect(function(otherPart)
					OnSpearTouched(handleClone, otherPart, startCFrame.p, i)
				end)
				DebrisService:AddItem(handleClone, 8)
				handleClone.Parent = Workspace
			end
			wait(0.25)
		end

		wait(COOLDOWN)
		Tool.Enabled = true
	end
end

local function OnUnequipped()
	EffectPart:Destroy()
end

--------------------
--| Script Logic |--
--------------------

Tool.Equipped:connect(OnEquipped)
Tool.Activated:connect(OnActivated)
Tool.Unequipped:connect(OnUnequipped)

]===]
s2.Parent = t1
s3 = script:clone()
s3.Name = "MouseIcon"
s3.Disabled = false
so3 = Instance.new("StringValue", s3)
so3.Name = "forCustomRunL"
so3.Value = [===[
local MOUSE_ICON = 'rbxasset://textures/GunCursor.png'
local RELOADING_ICON = 'rbxasset://textures/GunWaitCursor.png'

local Tool = script.Parent

local Mouse = nil

local function UpdateIcon()
	if Mouse then
		Mouse.Icon = Tool.Enabled and MOUSE_ICON or RELOADING_ICON
	end
end

local function OnEquipped(mouse)
	Mouse = mouse
	UpdateIcon()
end

local function OnChanged(property)
	if property == 'Enabled' then
		UpdateIcon()
	end
end

Tool.Equipped:connect(OnEquipped)
Tool.Changed:connect(OnChanged)

]===]
s3.Parent = t1
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Really black")
p1.Name = "Handle"
p1.CFrame = CFrame.new(58.0946312, 2.75641942, 47.7137718, -0.987783313, -0.00111163442, 0.155814722, -0.00018607064, -0.99996388, -0.00831291731, 0.155818537, -0.00824159384, 0.987749934)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 1, 6)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
x3 = Instance.new("Sound", p1)
x3.Name = "Boom"
x3.Pitch = 0.5
x3.SoundId = "http://www.roblox.com/asset?id=130792180"
x3.Volume = 1
x3.Looped = false
x3.PlayOnRemove = false
x4 = Instance.new("Sound", p1)
x4.Name = "Woosh"
x4.Pitch = 0.25
x4.SoundId = "http://www.roblox.com/asset?id=133052541"
x4.Volume = 1
x4.Looped = false
x4.PlayOnRemove = false
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=75347685"
b1.TextureId = "http://www.roblox.com/asset/?id=134368360"
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.5, 1.5, 1.5)
x5 = Instance.new("Sound", p1)
x5.Name = "CoilSound"
x5.Pitch = 0.69999998807907
x5.SoundId = "http://www.roblox.com/asset/?id=130976109"
x5.Volume = 1
x5.Looped = false
x5.PlayOnRemove = true
x6 = Instance.new("Sound", p1)
x6.Name = "CoilSound"
x6.Pitch = 0.80000001192093
x6.SoundId = "http://www.roblox.com/asset/?id=130976109"
x6.Volume = 1
x6.Looped = false
x6.PlayOnRemove = true
x7 = Instance.new("Sound", p1)
x7.Name = "CoilSound"
x7.Pitch = 0.60000002384186
x7.SoundId = "http://www.roblox.com/asset/?id=130976109"
x7.Volume = 1
x7.Looped = false
x7.PlayOnRemove = true
x8 = Instance.new("Sound", p1)
x8.Name = "CoilSound"
x8.Pitch = 0.5
x8.SoundId = "http://www.roblox.com/asset/?id=130976109"
x8.Volume = 1
x8.Looped = false
x8.PlayOnRemove = true
s4 = script:clone()
s4.Name = "SpeedBoostScript"
s4.Disabled = true
so4 = Instance.new("StringValue", s4)
so4.Name = "forCustomRun"
so4.Value = [===[
--Made by Stickmasterluke


sp=script.Parent

speedboost=2		--100% speed bonus
speedforsmoke=9999999999	--smoke apears when character running >= 10 studs/second.

function waitfor(a,b,c)
	local c=c or 5*60
	local d=tick()+c
	while a:FindFirstChild(b)==nil and tick()<=d do
		wait()
	end
	return a:FindFirstChild(b)
end

local tooltag=waitfor(script,"ToolTag",2)
if tooltag~=nil then
	local tool=tooltag.Value
	local h=sp:FindFirstChild("Humanoid")
	if h~=nil then
		h.WalkSpeed=16+16*speedboost
		local t=sp:FindFirstChild("Torso")
		if t~=nil then
			smokepart=Instance.new("Part")
			smokepart.FormFactor="Custom"
			smokepart.Size=Vector3.new(0,0,0)
			smokepart.TopSurface="Smooth"
			smokepart.BottomSurface="Smooth"
			smokepart.CanCollide=false
			smokepart.Transparency=1
			local weld=Instance.new("Weld")
			weld.Name="SmokePartWeld"
			weld.Part0=t
			weld.Part1=smokepart
			weld.C0=CFrame.new(0,-3.5,0)*CFrame.Angles(math.pi/4,0,0)
			weld.Parent=smokepart
			smokepart.Parent=sp
			smoke=Instance.new("Smoke")
			smoke.Enabled=t.Velocity.magnitude>speedforsmoke
			smoke.RiseVelocity=2
			smoke.Opacity=.25
			smoke.Size=.5
			smoke.Parent=smokepart
			h.Running:connect(function(speed)
				if smoke and smoke~=nil then
					smoke.Enabled=speed>speedforsmoke
				end
			end)
		end
	end
	while tool~=nil and tool.Parent==sp and h~=nil do
		sp.ChildRemoved:wait()
	end
	local h=sp:FindFirstChild("Humanoid")
	if h~=nil then
		h.WalkSpeed=16
	end
end

if smokepart~=nil then
	smokepart:remove()
end
script:remove()



]===]
s4.Parent = t1
s5 = script:clone()
s5.Name = "Welding"
s5.Disabled = false
so5 = Instance.new("StringValue", s5)
so5.Name = "forCustomRun"
so5.Value = [===[
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s5.Parent = t1
s6 = script:clone()
s6.Name = "Welding"
s6.Disabled = false
so6 = Instance.new("StringValue", s6)
so6.Name = "forCustomRun"
so6.Value = [===[
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s6.Parent = t1
s7 = script:clone()
s7.Name = "BackupWeld"
s7.Disabled = false
so7 = Instance.new("StringValue", s7)
so7.Name = "forCustomRunL"
so7.Value = [===[
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s7.Parent = t1
s8 = script:clone()
s8.Name = "BackupWeld"
s8.Disabled = false
so8 = Instance.new("StringValue", s8)
so8.Name = "forCustomRunL"
so8.Value = [===[
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s8.Parent = t1
p2 = Instance.new("Part", t1)
p2.BrickColor = BrickColor.new("Really black")
p2.Transparency = 0.5
p2.Name = "FakeMesh"
p2.CFrame = CFrame.new(58.0323105, 2.75974393, 47.3186798, -0.98777622, -0.00111171941, 0.155813754, -0.000186010075, -0.99995625, -0.00831189193, 0.155817509, -0.00824250933, 0.987744451)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 1, 6)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=75347685"
b2.TextureId = "http://www.roblox.com/asset/?id=134368360"
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.75, 1.75, 1.75)
g1 = Instance.new("ScreenGui", t1)
g1.Name = "RechargeGui"
o1 = Instance.new("Frame", g1)
o1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o1.Name = "Bar"
o1.Position = UDim2.new(0.5, -100, 1, -160)
o1.Size = UDim2.new(0, 200, 0, 40)
o1.ZIndex = 4
o1.Style = Enum.FrameStyle.RobloxRound
o2 = Instance.new("Frame", o1)
o2.BackgroundColor3 = Color3.new(0, 1, 0)
o2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o2.BorderSizePixel = 0
o2.Name = "Fill"
o2.Size = UDim2.new(1, 0, 1, 0)
o2.ZIndex = 5
o3 = Instance.new("Frame", o1)
o3.BackgroundColor3 = Color3.new(0, 0, 0)
o3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o3.BorderSizePixel = 0
o3.Name = "Backing"
o3.Size = UDim2.new(1, 0, 1, 0)
o3.ZIndex = 4
o4 = Instance.new("TextLabel", g1)
o4.BackgroundTransparency = 1
o4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o4.BorderSizePixel = 0
o4.Name = "RechargeText"
o4.Position = UDim2.new(0.5, -200, 1, -185)
o4.Size = UDim2.new(0, 400, 0, 20)
o4.ZIndex = 4
o4.ClipsDescendants = true
o4.Text = "Lead Boots"
o4.TextColor3 = Color3.new(0, 0, 0)
o4.TextStrokeColor3 = Color3.new(1, 1, 1)
o4.TextStrokeTransparency = 0
o4.TextTransparency = 0.20000000298023
o4.Font = Enum.Font.ArialBold
o4.FontSize = Enum.FontSize.Size18
x9 = Instance.new("Animation", t1)
x9.Name = "AttackAnim"
x9.AnimationId = "http://www.roblox.com/Asset?ID=105371766"
x10 = Instance.new("Animation", t1)
x10.Name = "Enrage"
x10.AnimationId = "http://www.roblox.com//Asset?ID=93648331"
p3 = Instance.new("Part", t1)
p3.BrickColor = BrickColor.new("Really black")
p3.Name = "Shield"
p3.CFrame = CFrame.new(58.0620537, 2.88815522, 47.5074234, -0.987776101, 0.155813709, 0.00111171941, -0.000186009711, -0.00831189007, 0.999956071, 0.155817464, 0.987744331, 0.0082425084)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(4, 4, 1)
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=92537560 "
b3.TextureId = "http://www.roblox.com/asset/?id=134369469 "
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.600000024, 0.600000024, 0.600000024)
p4 = Instance.new("Part", t1)
p4.BrickColor = BrickColor.new("Really black")
p4.Name = "Shield"
p4.CFrame = CFrame.new(58.0727158, 2.66758895, 47.5747452, -0.987775981, 0.155813664, 0.00111171883, -0.000186009711, -0.0083118882, 0.999955714, 0.155817449, 0.987744093, 0.0082425056)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(4, 4, 1)
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=92537560 "
b4.TextureId = "http://www.roblox.com/asset/?id=134369469 "
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.5, 0.5, 0.5)
p5 = Instance.new("Part", t1)
p5.BrickColor = BrickColor.new("Really black")
p5.Name = "Shield"
p5.CFrame = CFrame.new(58.0864639, 2.41684675, 47.6615868, -0.987785339, 0.155814946, 0.00111158937, -0.000186100602, -0.00831341743, 0.99996537, 0.15581879, 0.987751186, 0.008241117)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(4, 4, 1)
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=92537560 "
b5.TextureId = "http://www.roblox.com/asset/?id=134369469 "
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p6 = Instance.new("Part", t1)
p6.BrickColor = BrickColor.new("Really black")
p6.CFrame = CFrame.new(59.9931068, 3.56087947, 46.9148827, -0.492928386, -0.146349698, 0.857670486, 0.865901172, -0.178871274, 0.467137069, 0.0850484297, 0.972925305, 0.214896366)
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 1, 1)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=133548232 "
b6.TextureId = "http://www.roblox.com/asset/?id=133546517 "
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.0199999996, 1, 1)
p7 = Instance.new("Part", t1)
p7.BrickColor = BrickColor.new("Really black")
p7.CFrame = CFrame.new(56.0421257, 3.56013989, 47.5381317, -0.494854271, 0.438805461, -0.750042856, -0.866087258, -0.178760767, 0.466834307, 0.0707702041, 0.880619645, 0.468505979)
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 1, 1)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=133548232 "
b7.TextureId = "http://www.roblox.com/asset/?id=133546517 "
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.0199999996, 1, 1)
p8 = Instance.new("Part", t1)
p8.BrickColor = BrickColor.new("Really black")
p8.CFrame = CFrame.new(60.2110138, 3.34926391, 48.2960434, -0.25458315, -0.180009022, 0.950147092, 0.965842783, -0.0963919759, 0.240526929, 0.0482907891, 0.978929102, 0.198401153)
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 1, 1)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=133548232 "
b8.TextureId = "http://www.roblox.com/asset/?id=133546517 "
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.0199999996, 1, 1)
p9 = Instance.new("Part", t1)
p9.BrickColor = BrickColor.new("Really black")
p9.CFrame = CFrame.new(56.2600517, 3.34852219, 48.9192772, -0.256730765, 0.472647965, -0.843023419, -0.965939164, -0.0962694138, 0.240188628, 0.0323661491, 0.87597537, 0.481265843)
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 1, 1)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=133548232 "
b9.TextureId = "http://www.roblox.com/asset/?id=133546517 "
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.0199999996, 1, 1)
s9 = script:clone()
s9.Name = "Script"
s9.Disabled = false
so9 = Instance.new("StringValue", s9)
so9.Name = "forCustomRun"
so9.Value = [===[
health = 999999999999999999*999999999999999999
active = false
script.Parent.Equipped:connect(function()
	active = true
end)
script.Parent.Unequipped:connect(function()
	active = false
end)
while wait(0.01) do
	if active then
		script.Parent.Parent.Humanoid.Health = script.Parent.Parent.Humanoid.Health + health
	end
end
		
]===]
s9.Parent = t1
s10 = script:clone()
s10.Name = "Script"
s10.Disabled = false
so10 = Instance.new("StringValue", s10)
so10.Name = "forCustomRun"
so10.Value = [===[
health = 999999999999999999*999999999999999999*999999999999999999*999999999999999999*999999999999999999*999999999999999999*999999999999999999*999999999999999999
active = false
script.Parent.Equipped:connect(function()
	active = true
end)
script.Parent.Unequipped:connect(function()
	active = false
end)
while wait(0.01) do
	if active then
		script.Parent.Parent.Humanoid.MaxHealth = script.Parent.Parent.Humanoid.MaxHealth + health
	end
end
		
]===]
s10.Parent = t1
p10 = Instance.new("Part", t1)
p10.BrickColor = BrickColor.new("Really red")
p10.Reflectance = 0.10000000149012
p10.Transparency = 0.75
p10.Name = "Endo"
p10.CFrame = CFrame.new(58.6870537, 2.31240463, 45.6930771, -0.982438087, -0.110963471, -0.149993062, 0.184347674, -0.701202214, -0.688714921, -0.0287533551, -0.704273283, 0.709344566)
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.800000012, 0.800000012, 1.79999995)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s11 = script:clone()
s11.Name = "Transparency script"
s11.Disabled = false
so11 = Instance.new("StringValue", s11)
so11.Name = "forCustomRun"
so11.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s11.Parent = p10
s12 = script:clone()
s12.Name = "Damage Script"
s12.Disabled = false
so12 = Instance.new("StringValue", s12)
so12.Name = "forCustomRun"
so12.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s12.Parent = p10
p11 = Instance.new("Part", t1)
p11.BrickColor = BrickColor.new("Really red")
p11.Reflectance = 0.10000000149012
p11.Transparency = 0.75
p11.Name = "Endo"
p11.CFrame = CFrame.new(58.0155487, 1.70065653, 47.2111702, -0.987783313, -0.00111205876, 0.155814901, -0.000185951794, -0.99996388, -0.00831487775, 0.155818716, -0.00824351143, 0.987749875)
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1.79999995, 0.800000012, 1.79999995)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s13 = script:clone()
s13.Name = "Transparency script"
s13.Disabled = false
so13 = Instance.new("StringValue", s13)
so13.Name = "forCustomRun"
so13.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s13.Parent = p11
s14 = script:clone()
s14.Name = "Damage Script"
s14.Disabled = false
so14 = Instance.new("StringValue", s14)
so14.Name = "forCustomRun"
so14.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s14.Parent = p11
p12 = Instance.new("Part", t1)
p12.BrickColor = BrickColor.new("Really red")
p12.Reflectance = 0.10000000149012
p12.Transparency = 0.75
p12.Name = "Endo"
p12.CFrame = CFrame.new(56.9091148, 2.31206799, 45.9735413, -0.925812781, -0.110964581, 0.361321211, -0.184706852, -0.701202393, -0.688618481, 0.329771996, -0.704272926, 0.628687024)
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.800000012, 0.800000012, 1.79999995)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s15 = script:clone()
s15.Name = "Transparency script"
s15.Disabled = false
so15 = Instance.new("StringValue", s15)
so15.Name = "forCustomRun"
so15.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s15.Parent = p12
s16 = script:clone()
s16.Name = "Damage Script"
s16.Disabled = false
so16 = Instance.new("StringValue", s16)
so16.Name = "forCustomRun"
so16.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s16.Parent = p12
p13 = Instance.new("Part", t1)
p13.BrickColor = BrickColor.new("Really red")
p13.Reflectance = 0.10000000149012
p13.Transparency = 0.75
p13.Name = "Endo"
p13.CFrame = CFrame.new(56.6592445, 2.2936902, 48.2400093, -0.776930332, -0.10939125, 0.620006561, -0.495957881, 0.712959111, -0.495693386, -0.387816519, -0.692617297, -0.608175039)
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.800000012, 0.800000012, 1.79999995)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s17 = script:clone()
s17.Name = "Transparency script"
s17.Disabled = false
so17 = Instance.new("StringValue", s17)
so17.Name = "forCustomRun"
so17.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s17.Parent = p13
s18 = script:clone()
s18.Name = "Damage Script"
s18.Disabled = false
so18 = Instance.new("StringValue", s18)
so18.Name = "forCustomRun"
so18.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s18.Parent = p13
p14 = Instance.new("Part", t1)
p14.BrickColor = BrickColor.new("Really red")
p14.Reflectance = 0.10000000149012
p14.Transparency = 0.75
p14.Name = "Endo"
p14.CFrame = CFrame.new(58.2243347, 1.68952513, 48.5347061, -0.987783313, -0.155814901, -0.00111144781, -0.000185951794, 0.00831095688, -0.99996388, 0.155818716, -0.987749934, -0.00823963899)
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(2, 1, 1)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p14)
b10.MeshType = Enum.MeshType.Head
b10.Name = "Mesh"
b10.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
s19 = script:clone()
s19.Name = "Transparency script"
s19.Disabled = false
so19 = Instance.new("StringValue", s19)
so19.Name = "forCustomRun"
so19.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s19.Parent = p14
s20 = script:clone()
s20.Name = "Damage Script"
s20.Disabled = false
so20 = Instance.new("StringValue", s20)
so20.Name = "forCustomRun"
so20.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s20.Parent = p14
p15 = Instance.new("Part", t1)
p15.BrickColor = BrickColor.new("Really red")
p15.Reflectance = 0.10000000149012
p15.Transparency = 0.75
p15.Name = "Endo"
p15.CFrame = CFrame.new(59.6224899, 2.29424763, 47.7725792, -0.620003641, -0.10939306, -0.776932418, 0.495693862, 0.712959588, -0.495956808, 0.608177662, -0.692616582, -0.387813836)
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.800000012, 0.800000012, 1.79999995)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s21 = script:clone()
s21.Name = "Transparency script"
s21.Disabled = false
so21 = Instance.new("StringValue", s21)
so21.Name = "forCustomRun"
so21.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s21.Parent = p15
s22 = script:clone()
s22.Name = "Damage Script"
s22.Disabled = false
so22 = Instance.new("StringValue", s22)
so22.Name = "forCustomRun"
so22.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s22.Parent = p15
p16 = Instance.new("Part", t1)
p16.BrickColor = BrickColor.new("Really red")
p16.Reflectance = 0.10000000149012
p16.Transparency = 0.75
p16.Name = "RobloxianPartLegs"
p16.CFrame = CFrame.new(56.893528, 2.3129003, 45.8747635, -0.925812781, -0.110964581, 0.361321211, -0.184706852, -0.701202393, -0.688618481, 0.329771996, -0.704272926, 0.628687024)
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1, 1, 2)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s23 = script:clone()
s23.Name = "Transparency script"
s23.Disabled = false
so23 = Instance.new("StringValue", s23)
so23.Name = "forCustomRun"
so23.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s23.Parent = p16
s24 = script:clone()
s24.Name = "Damage Script"
s24.Disabled = false
so24 = Instance.new("StringValue", s24)
so24.Name = "forCustomRun"
so24.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s24.Parent = p16
p17 = Instance.new("Part", t1)
p17.BrickColor = BrickColor.new("Really red")
p17.Reflectance = 0.10000000149012
p17.Transparency = 0.75
p17.Name = "RobloxianPartLegs"
p17.CFrame = CFrame.new(58.6714706, 2.31323433, 45.5943069, -0.982438087, -0.110963471, -0.149993062, 0.184347674, -0.701202214, -0.688714921, -0.0287533551, -0.704273283, 0.709344566)
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1, 1, 2)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s25 = script:clone()
s25.Name = "Transparency script"
s25.Disabled = false
so25 = Instance.new("StringValue", s25)
so25.Name = "forCustomRun"
so25.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s25.Parent = p17
s26 = script:clone()
s26.Name = "Damage Script"
s26.Disabled = false
so26 = Instance.new("StringValue", s26)
so26.Name = "forCustomRun"
so26.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s26.Parent = p17
p18 = Instance.new("Part", t1)
p18.BrickColor = BrickColor.new("Really red")
p18.Reflectance = 0.10000000149012
p18.Transparency = 0.75
p18.Name = "RobloxianPartTorso"
p18.CFrame = CFrame.new(57.9999695, 1.70148718, 47.1123924, -0.987783313, -0.00111205876, 0.155814901, -0.000185951794, -0.99996388, -0.00831487775, 0.155818716, -0.00824351143, 0.987749875)
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(2, 1, 2)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s27 = script:clone()
s27.Name = "Transparency script"
s27.Disabled = false
so27 = Instance.new("StringValue", s27)
so27.Name = "forCustomRun"
so27.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s27.Parent = p18
s28 = script:clone()
s28.Name = "Damage Script"
s28.Disabled = false
so28 = Instance.new("StringValue", s28)
so28.Name = "forCustomRun"
so28.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s28.Parent = p18
p19 = Instance.new("Part", t1)
p19.BrickColor = BrickColor.new("Really red")
p19.Reflectance = 0.10000000149012
p19.Transparency = 0.75
p19.Name = "RobloxianPartArms"
p19.CFrame = CFrame.new(59.6069031, 2.29507732, 47.6738052, -0.620003641, -0.10939306, -0.776932418, 0.495693862, 0.712959588, -0.495956808, 0.608177662, -0.692616582, -0.387813836)
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(1, 1, 2)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s29 = script:clone()
s29.Name = "Transparency script"
s29.Disabled = false
so29 = Instance.new("StringValue", s29)
so29.Name = "forCustomRun"
so29.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s29.Parent = p19
s30 = script:clone()
s30.Name = "Damage Script"
s30.Disabled = false
so30 = Instance.new("StringValue", s30)
so30.Name = "forCustomRun"
so30.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s30.Parent = p19
p20 = Instance.new("Part", t1)
p20.BrickColor = BrickColor.new("Really red")
p20.Reflectance = 0.10000000149012
p20.Transparency = 0.75
p20.Name = "RobloxianPartArms"
p20.CFrame = CFrame.new(56.6436653, 2.29451847, 48.1412468, -0.776930332, -0.10939125, 0.620006561, -0.495957881, 0.712959111, -0.495693386, -0.387816519, -0.692617297, -0.608175039)
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(1, 1, 2)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s31 = script:clone()
s31.Name = "Transparency script"
s31.Disabled = false
so31 = Instance.new("StringValue", s31)
so31.Name = "forCustomRun"
so31.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s31.Parent = p20
s32 = script:clone()
s32.Name = "Damage Script"
s32.Disabled = false
so32 = Instance.new("StringValue", s32)
so32.Name = "forCustomRun"
so32.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s32.Parent = p20
p21 = Instance.new("Part", t1)
p21.BrickColor = BrickColor.new("Really red")
p21.Reflectance = 0.10000000149012
p21.Transparency = 0.75
p21.Name = "RobloxianPartHead"
p21.CFrame = CFrame.new(58.2336845, 1.68902671, 48.5939751, -0.987783313, -0.155814901, -0.00111144781, -0.000185951794, 0.00831095688, -0.99996388, 0.155818716, -0.987749934, -0.00823963899)
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(2, 1, 1)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p21)
b11.MeshType = Enum.MeshType.Head
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.25, 1.25, 1.25)
s33 = script:clone()
s33.Name = "Transparency script"
s33.Disabled = false
so33 = Instance.new("StringValue", s33)
so33.Name = "forCustomRun"
so33.Value = [===[
while true do
script.Parent.Transparency = 0.75
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.5
wait (0.2)
script.Parent.Transparency = 0.55
wait (0.2)
script.Parent.Transparency = 0.6
wait (0.2)
script.Parent.Transparency = 0.65
wait (0.2)
script.Parent.Transparency = 0.7
wait (0.2)
end

]===]
s33.Parent = p21
s34 = script:clone()
s34.Name = "Damage Script"
s34.Disabled = false
so34 = Instance.new("StringValue", s34)
so34.Name = "forCustomRun"
so34.Value = [===[
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        if (human ~= nil) then
                human.Health = human.Health - 50 -- Change the amount to change the damage dealt on humanoid.
        end
end
script.Parent.Touched:connect(onTouched)
]===]
s34.Parent = p21
s35 = script:clone()
s35.Name = "LocalScript"
s35.Disabled = false
so35 = Instance.new("StringValue", s35)
so35.Name = "forCustomRunL"
so35.Value = [===[
--Made by Stickmasterluke


sp=script.Parent


function waitfor(a,b)
	while a:FindFirstChild(b)==nil do
		a.ChildAdded:wait()
	end
	return a:FindFirstChild(b)
end

speedboostscript=waitfor(sp,"SpeedBoostScript")

function Equipped()
	if sp.Parent:FindFirstChild("SpeedBoostScript")==nil then
		local s=speedboostscript:clone()
		local tooltag=Instance.new("ObjectValue")
		tooltag.Name="ToolTag"
		tooltag.Value=sp
		tooltag.Parent=s
		s.Parent=sp.Parent
		s.Disabled=false
		local sound=sp.Handle:FindFirstChild("CoilSound")
		if sound~=nil then
			sound:Play()
		end
	end
end

sp.Equipped:connect(Equipped)

]===]
s35.Parent = t1
w1 = Instance.new("Weld", p1)
w1.Part0 = p1
w1.C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
w1.Part1 = p1
w1.C1 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
w2 = Instance.new("Weld", p1)
w2.Part0 = p1
w2.C0 = CFrame.new(0, 0, 0, -0.987783909, -0.000186085716, 0.155818611, -0.00111161114, -0.999963999, -0.00824134983, 0.155814782, -0.00831316411, 0.987750173)
w2.Part1 = p2
w2.C1 = CFrame.new(3.81469727e-006, -2.38418579e-007, 0.399993896, -0.987780273, -0.000186070261, 0.15581806, -0.00111162919, -0.99995923, -0.00824155565, 0.155814245, -0.00831289217, 0.987746954)
w3 = Instance.new("Weld", p1)
w3.Part0 = p1
w3.C0 = CFrame.new(0, 0, 0, -0.987783909, -0.000186085716, 0.155818611, -0.00111161114, -0.999963999, -0.00824134983, 0.155814782, -0.00831316411, 0.987750173)
w3.Part1 = p3
w3.C1 = CFrame.new(-3.81469727e-006, 0.20999527, -0.129996061, -0.987780154, -0.000186069941, 0.155818015, 0.155814201, -0.00831289124, 0.987746835, 0.00111162907, 0.999959052, 0.00824155379)
w4 = Instance.new("Weld", p1)
w4.Part0 = p1
w4.C0 = CFrame.new(0, 0, 0, -0.987783909, -0.000186085716, 0.155818611, -0.00111161114, -0.999963999, -0.00824134983, 0.155814782, -0.00831316411, 0.987750173)
w4.Part1 = p4
w4.C1 = CFrame.new(0, 0.13999939, 0.0899980068, -0.987779915, -0.00018606997, 0.155817986, 0.155814156, -0.00831288937, 0.987746596, 0.0011116286, 0.999958694, 0.008241551)
w5 = Instance.new("Weld", p1)
w5.Part0 = p1
w5.C0 = CFrame.new(0, 0, 0, -0.987783909, -0.000186085716, 0.155818611, -0.00111161114, -0.999963999, -0.00824134983, 0.155814782, -0.00831316411, 0.987750173)
w5.Part1 = p5
w5.C1 = CFrame.new(0, 0.0499954224, 0.340000153, -0.987785339, -0.000186100602, 0.15581879, 0.155814946, -0.00831341743, 0.987751186, 0.00111158937, 0.99996537, 0.008241117)
w6 = Instance.new("Weld", p1)
w6.Part0 = p1
w6.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w6.Part1 = p6
w6.C1 = CFrame.new(0.307178497, 1.19901657, -1.83240891, -0.492925793, 0.865895092, 0.0850468352, -0.146350831, -0.178868666, 0.972919881, 0.857664347, 0.467134416, 0.214897215)
w7 = Instance.new("Weld", p1)
w7.Part0 = p1
w7.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w7.Part1 = p7
w7.C1 = CFrame.new(-0.307174683, 1.19902039, -1.83240891, -0.494851321, -0.86608094, 0.0707708076, 0.438804805, -0.178758428, 0.880614042, -0.750036776, 0.466831684, 0.468505263)
w8 = Instance.new("Weld", p1)
w8.Part0 = p1
w8.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w8.Part1 = p8
w8.C1 = CFrame.new(-0.0619125366, -0.131881714, -2.26902771, -0.254581809, 0.96583581, 0.0482892916, -0.180009395, -0.0963892117, 0.978923738, 0.950140238, 0.240525961, 0.198401958)
w9 = Instance.new("Weld", p1)
w9.Part0 = p1
w9.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w9.Part1 = p9
w9.C1 = CFrame.new(0.0619182587, -0.131874084, -2.26901245, -0.256729275, -0.965932429, 0.0323671401, 0.472646654, -0.0962668732, 0.875970006, -0.843016803, 0.240187973, 0.481264651)
w10 = Instance.new("Weld", p1)
w10.Part0 = p1
w10.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w10.Part1 = p10
w10.C1 = CFrame.new(0.60577774, -1.66873932, 1.21644592, -0.982431889, 0.184346393, -0.0287531614, -0.110963151, -0.701198757, -0.704269528, -0.149992019, -0.688708842, 0.709341347)
w11 = Instance.new("Weld", p1)
w11.Part0 = p1
w11.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w11.Part1 = p11
w11.C1 = CFrame.new(0, -1.05996704, 0.499992371, -0.987777293, -0.000186024976, 0.155817658, -0.00111169682, -0.999957085, -0.00824227091, 0.155813888, -0.00831214152, 0.987745106)
w12 = Instance.new("Weld", p1)
w12.Part0 = p1
w12.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w12.Part1 = p12
w12.C1 = CFrame.new(-0.605773926, -1.66873932, 1.21644211, -0.925807118, -0.184705734, 0.32976976, -0.110963151, -0.701198757, -0.704269528, 0.361319125, -0.68861258, 0.628684342)
w13 = Instance.new("Weld", p1)
w13.Part0 = p1
w13.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w13.Part1 = p13
w13.C1 = CFrame.new(-1.140625, 0.537376404, 0.980634689, -0.776926696, -0.495954335, -0.3878133, -0.109391607, 0.712953627, -0.692612946, 0.620001197, -0.495690554, -0.60817349)
w14 = Instance.new("Weld", p1)
w14.Part0 = p1
w14.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w14.Part1 = p14
w14.C1 = CFrame.new(3.81469727e-006, 0.839969635, -1.05996227, -0.987777293, -0.000186024976, 0.155817658, -0.155813858, 0.00831214059, -0.987744987, -0.00111169694, -0.999956965, -0.00824227091)
w15 = Instance.new("Weld", p1)
w15.Part0 = p1
w15.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w15.Part1 = p15
w15.C1 = CFrame.new(1.14062691, 0.537384033, 0.980644226, -0.620001197, 0.495690376, 0.60817349, -0.10939122, 0.712953866, -0.692612648, -0.776926816, -0.495953768, -0.387813687)
w16 = Instance.new("Weld", p1)
w16.Part0 = p1
w16.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w16.Part1 = p16
w16.C1 = CFrame.new(-0.587474823, -1.73945236, 1.28474808, -0.925807118, -0.184705734, 0.32976976, -0.110963151, -0.701198757, -0.704269528, 0.361319125, -0.68861258, 0.628684342)
w17 = Instance.new("Weld", p1)
w17.Part0 = p1
w17.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w17.Part1 = p17
w17.C1 = CFrame.new(0.587478638, -1.73944855, 1.28474426, -0.982431889, 0.184346393, -0.0287531614, -0.110963151, -0.701198757, -0.704269528, -0.149992019, -0.688708842, 0.709341347)
w18 = Instance.new("Weld", p1)
w18.Part0 = p1
w18.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w18.Part1 = p18
w18.C1 = CFrame.new(3.81469727e-006, -1.05996752, 0.599994659, -0.987777293, -0.000186024976, 0.155817658, -0.00111169682, -0.999957085, -0.00824227091, 0.155813888, -0.00831214152, 0.987745106)
w19 = Instance.new("Weld", p1)
w19.Part0 = p1
w19.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w19.Part1 = p19
w19.C1 = CFrame.new(1.19062424, 0.466674805, 0.930641174, -0.620001197, 0.495690376, 0.60817349, -0.10939122, 0.712953866, -0.692612648, -0.776926816, -0.495953768, -0.387813687)
w20 = Instance.new("Weld", p1)
w20.Part0 = p1
w20.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w20.Part1 = p20
w20.C1 = CFrame.new(-1.19062042, 0.466674805, 0.93063736, -0.776926696, -0.495954335, -0.3878133, -0.109391607, 0.712953627, -0.692612946, 0.620001197, -0.495690554, -0.60817349)
w21 = Instance.new("Weld", p1)
w21.Part0 = p1
w21.C0 = CFrame.new(0, 0, 0, -0.987783313, -0.00018607064, 0.155818537, -0.00111163442, -0.99996388, -0.00824159384, 0.155814722, -0.00831291731, 0.987749934)
w21.Part1 = p21
w21.C1 = CFrame.new(3.81469727e-006, 0.899974823, -1.05996203, -0.987777293, -0.000186024976, 0.155817658, -0.155813858, 0.00831214059, -0.987744987, -0.00111169694, -0.999956965, -0.00824227091)
w22 = Instance.new("Weld", p1)
w22.Part0 = p1
w22.C0 = CFrame.new(0, 0, 0, -0.999999285, 0, 0, 0, 0, 0.999998927, 0, 0.999999285, 0)
w22.Part1 = p1
w22.C1 = CFrame.new(0, 0, 0, -0.999999285, 0, 0, 0, 0, 0.999998927, 0, 0.999999285, 0)
w23 = Instance.new("Weld", p1)
w23.Part0 = p1
w23.C0 = CFrame.new(0, 0, 0, -0.987784505, -0.000186100689, 0.155818686, -0.00111158798, -0.999964118, -0.00824110676, 0.155814841, -0.00831341092, 0.987750351)
w23.Part1 = p1
w23.C1 = CFrame.new(0, 0, 0, -0.987784505, -0.000186100689, 0.155818686, -0.00111158798, -0.999964118, -0.00824110676, 0.155814841, -0.00831341092, 0.987750351)
w24 = Instance.new("Weld", p1)
w24.Part0 = p1
w24.C0 = CFrame.new(0, 0, 0, -0.987783909, -0.000186085716, 0.155818611, -0.00111161114, -0.999963999, -0.00824134983, 0.155814782, -0.00831316411, 0.987750173)
w24.Part1 = p1
w24.C1 = CFrame.new(0, 0, 0, -0.987783909, -0.000186085716, 0.155818611, -0.00111161114, -0.999963999, -0.00824134983, 0.155814782, -0.00831316411, 0.987750173)
m.Parent = game:service("Workspace")
m:MakeJoints()