--you know m3? this update from it -YoungWarlock
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
m.Name = "M4"
t1 = Instance.new("Tool", m)
t1.Name = "M4"
t1.GripForward = Vector3.new(-0.197077975, 0, -0.980387866)
t1.GripPos = Vector3.new(0, -0.300000012, -0.200000003)
t1.GripRight = Vector3.new(0.980387866, 0, -0.197077975)
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Black")
p1.Name = "DustCover"
p1.CFrame = CFrame.new(37.5, 2.29999995, 19.3000011, -1, -0, -0, -0, -0, -1, -0, -1, -0)
p1.Anchored = true
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.140000001, 0.439999998, 0.140000001)
x1 = Instance.new("Smoke", p1)
x1.Enabled = false
x1.Color = Color3.new(0.4, 0.4, 0.4)
x1.Opacity = 0.10000000149012
x1.RiseVelocity = 0
x1.Size = 0.20000000298023
p2 = Instance.new("Part", t1)
p2.BrickColor = BrickColor.new("Black")
p2.Transparency = 1
p2.Name = "CHandleB"
p2.CFrame = CFrame.new(37.5970001, 2.44000006, 18.1300011, -0.99452287, -0.104528472, -4.56908866e-009, -0.104528561, 0.994521916, 4.34719674e-008, -7.22843835e-016, 4.37113989e-008, -1.00000095)
p2.Anchored = true
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1, 1, 1)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("CylinderMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.300000012, 0.100000001, 0.300000012)
s1 = script:clone()
g1 = Instance.new("ScreenGui", s1)
g1.Name = "HudGui"
o1 = Instance.new("TextLabel", g1)
o1.BackgroundColor3 = Color3.new(0.992157, 0.984314, 1)
o1.BackgroundTransparency = 1
o1.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
o1.BorderSizePixel = 0
o1.Name = "AmmoMaxLabel"
o1.Position = UDim2.new(1, -165, 1, -130)
o1.Size = UDim2.new(0, 0, 0, -30)
o1.Text = "20"
o1.TextWrapped = true
o1.TextColor3 = Color3.new(1, 1, 1)
o1.TextStrokeTransparency = 0.40000000596046
o1.TextTransparency = 0.40000000596046
o1.FontSize = Enum.FontSize.Size24
o1.TextXAlignment = Enum.TextXAlignment.Left
o1.TextYAlignment = Enum.TextYAlignment.Bottom
o2 = Instance.new("TextLabel", g1)
o2.BackgroundTransparency = 1
o2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o2.BorderSizePixel = 0
o2.Name = "Instructions"
o2.Position = UDim2.new(1, -40, 1, -190)
o2.Size = UDim2.new(0, -300, 0, -20)
o2.Text = "(r)Reload | (v)Fire Selector | (z)Zoom"
o2.TextWrapped = true
o2.TextColor3 = Color3.new(1, 1, 1)
o2.TextStrokeTransparency = 0.40000000596046
o2.TextTransparency = 0.40000000596046
o2.FontSize = Enum.FontSize.Size9
o2.TextXAlignment = Enum.TextXAlignment.Right
o3 = Instance.new("TextLabel", g1)
o3.BackgroundTransparency = 1
o3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o3.BorderSizePixel = 0
o3.Name = "ModeLabel"
o3.Position = UDim2.new(1, -115, 1, -160)
o3.Size = UDim2.new(0, 0, 0, -30)
o3.Text = "Semi-Automatic"
o3.TextColor3 = Color3.new(1, 1, 1)
o3.TextStrokeTransparency = 0.40000000596046
o3.TextTransparency = 0.40000000596046
o3.TextXAlignment = Enum.TextXAlignment.Left
o4 = Instance.new("ImageLabel", g1)
o4.BackgroundTransparency = 1
o4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o4.BorderSizePixel = 0
o4.Name = "ClipPic"
o4.Position = UDim2.new(1, -105, 1, -140)
o4.Size = UDim2.new(0, -8, 0, -15)
o4.Image = "http://www.roblox.com/asset/?id=131543027"
o5 = Instance.new("TextLabel", g1)
o5.BackgroundTransparency = 1
o5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o5.BorderSizePixel = 0
o5.Name = "MagazinesCarriedLabel"
o5.Position = UDim2.new(1, -100, 1, -140)
o5.Size = UDim2.new(0, 0, 0, -15)
o5.Text = "x 6"
o5.TextColor3 = Color3.new(1, 1, 1)
o5.TextStrokeTransparency = 0.40000000596046
o5.TextTransparency = 0.40000000596046
o5.FontSize = Enum.FontSize.Size10
o5.TextXAlignment = Enum.TextXAlignment.Left
o6 = Instance.new("TextLabel", g1)
o6.BackgroundTransparency = 1
o6.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
o6.BorderSizePixel = 0
o6.Name = "AmmoLoadedLabel"
o6.Position = UDim2.new(1, -185, 1, -135)
o6.Size = UDim2.new(0, 0, 0, -30)
o6.Text = "20"
o6.TextColor3 = Color3.new(1, 1, 1)
o6.TextStrokeTransparency = 0.40000000596046
o6.TextTransparency = 0.40000000596046
o6.FontSize = Enum.FontSize.Size36
o6.TextXAlignment = Enum.TextXAlignment.Right
o6.TextYAlignment = Enum.TextYAlignment.Bottom
o7 = Instance.new("TextLabel", g1)
o7.BackgroundColor3 = Color3.new(0.992157, 0.984314, 1)
o7.BackgroundTransparency = 1
o7.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
o7.BorderSizePixel = 0
o7.Name = "SlashLarge"
o7.Position = UDim2.new(1, -165, 1, -120)
o7.Size = UDim2.new(0, 0, 0, -30)
o7.Text = "/"
o7.TextColor3 = Color3.new(1, 1, 1)
o7.TextStrokeTransparency = 0.40000000596046
o7.TextTransparency = 0.40000000596046
o7.FontSize = Enum.FontSize.Size48
o7.TextXAlignment = Enum.TextXAlignment.Right
o7.TextYAlignment = Enum.TextYAlignment.Bottom
s1.Name = "GunScript"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRunL"
so1.Value = [===[
-- DECLARATION OF VARIABLES: Do not touch unless you know what you're doing.
local tool = script.Parent
local Cam = game.Workspace.CurrentCamera
local canReload = true
local isFiring = false
local canZoom = true
local canCycleModes = true
local isZoomed = false
local arms = nil
local torso = nil
local welds = {}
local cancelStatus = true
local cooldownInterrupted = false
local reloading = false
local recoilMultiplier = 1
local toolIsEquipped = true

wait()

local NoAmmoClick = tool.Handle.NoAmmoClick
local MagazineOut = tool.Handle.MagazineOut
local MagazineIn= tool.Handle.MagazineIn
local FireModeClick = tool.Handle.FireModeClick

local fireModeIcons = {
	[1] = "ModeAuto",
	[2] = "ModeSingle",
	[3] = "ModeBurst"
}

local flashListBig = { -- List of image IDs for Muzzleflash -- big
	"131435802",
	"131435817",
	"131435825",
}

local fireStreakLimiter = Instance.new("DoubleConstrainedValue") -- Constrains the recoil
	fireStreakLimiter.MaxValue = 10
	fireStreakLimiter.MinValue = 0
	fireStreakLimiter.Value = 0
	
local aimLimit = Instance.new("DoubleConstrainedValue") -- Constrains the recoil
	aimLimit.MaxValue = math.rad(70)
	aimLimit.MinValue = math.rad(-45)
	aimLimit.Value = 0

local fireStreak = fireStreakLimiter.Value

-- DECLARATION OF VARIABLES: You can modify the ones below this. Names are intuitive.
--AMMUNITION MECHANICS
local usesMagazines = true -- Uses clips: bullets still loaded into magazine after reloading are wasted. Turn of for infinite ammo.
local MagazinesCarried = 6 -- Clips you begin with.
local AmmoLoaded = 30 -- Ammo the gun starts with. Reccommended to be equal to AmmoMax
local AmmoMax = 30 -- Magazine size
--ZOOM
local zoomMin = 70 -- FOV default
local zoomMax = 40 -- FOV zoom in
local zoomFrames = 10 -- Larger number = slower zoom speed
local zoomWalkSpeedMultiplier = 0.5 -- Slows character down by this factor upon zooming
--GUN DAMAGE
local gunDamage = 30 -- duh
local rateOfFireScale = 0 -- the minimum is 0. Each additional unit increases the firing delay by ~0.03 seconds.
--RECOIL
local recoilX = 3 -- Kind of hard to explain. Larger values mean larger recoil. Go figure.
local recoily = 3
local defaultRecoilMultiplier = 1
local zoomRecoilMultiplier = 0.6 -- Zooming multiplies recoil by this amount
--RAYCASTING
local range = 350 -- [range - (spreadX OR spreadY)] should be less than 1000
local spreadX = 5 -- 
local spreadY = 5
--FIRE MODES
local fireMode = 1 -- Fire mode gun starts with. Look at the list below for a guide.
local burstLength = 3 -- Length of a burst.
--END. Anything below here. Feel free to modify yourself, if you know what you're doing.
local fireModeValues = { -- Modes
	[1] = "Automatic",
	[2] = "Semi-Automatic",
	[3] = tostring(burstLength).."-Round Burst"
}

print[[Made by YoungWarlock!]] -- Please don't remove me :c -- This only prints in the output window. 

-- Change how you want the shell casing to look here.
local Shell = Instance.new("Part")
Shell.BrickColor = BrickColor.new(24)
Shell.Name = "Shell"
Shell.Locked = true
Shell.formFactor = 3
Shell.CanCollide = true
Shell.Size = Vector3.new(.2,.2,.2)
--Shell.Parent = game.Workspace
local ShellMesh = Instance.new("CylinderMesh")
ShellMesh.Scale = Vector3.new(0.30, 1, 0.30)

function loadValues()
--	print[[loadValues()]]
	wait()
	cancelStatus = true
	tool.Enabled = true
	
	playerPlayer = game.Players.LocalPlayer
	playerCharacter = playerPlayer.Character
	playerHumanoid = playerCharacter.Humanoid
	
	if playerHumanoid then
		playerSpeed = playerHumanoid.WalkSpeed
	else
		print [[Humanoid not found]]
	end
	
	recoilMultiplier = 1

end

function changeGunStatus(status)
	--print("changeGunStatus("..status..")")
	if status == "disable" then
		canCycleModes = false
		canReload = false
		canZoom = false
		reloading = true
	elseif status == "enable" then
		canCycleModes = true
		canReload = true
		canZoom = true
		reloading = false
	else
		print[[Invalid Input]]
	end
end

function convertColor3(r, g, b)
	return Color3.new(r/255,g/255,b/255)
end

function convertToCFrameDegrees(xa, ya, za)
	return CFrame.Angles(math.rad(xa), math.rad(ya), math.rad(za))
end

function updateAmmo()
	Hud.AmmoLoadedLabel.Text = tostring(AmmoLoaded)
	if AmmoLoaded <= AmmoMax/2 then
		Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,255,0)
--		Hud.AmmoLoadedLabel.TextColor3 = Color3.new(1, 1, 0)
		if AmmoLoaded <= AmmoMax/4 then
			Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,0,0)
--			Hud.AmmoLoadedLabel.TextColor3 = Color3.new(1, 0, 0)
		end
	else
		Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,255,255)
	end
end

function updateHUD()
	Hud.ModeLabel.Text = (fireModeValues[fireMode])
	if usesClips then
		Hud.MagazinesCarriedLabel.Text = "x "..MagazinesCarried
	else
		Hud.MagazinesCarriedLabel.Visible = false
		Hud.ClipPic.Visible = false
	end
	Hud.AmmoMaxLabel.Text = tostring(AmmoMax)
	updateAmmo()
end

function recoilCooldown()
coroutine.resume(coroutine.create(function ()
wait(0.2)
	while fireStreakLimiter.Value > 0 and not cooldownInterrupted do
		wait(.10 - fireStreakLimiter.Value/100)
		fireStreakLimiter.Value = fireStreakLimiter.Value - 1
		fireStreak = fireStreakLimiter.Value
--		print(fireStreak)
	end
end))
end

--function recoilCooldown()
--wait(0.2)
--	while fireStreakLimiter.Value > 0 and not isFiring and not cooldownInterrupted do
--		wait(.10 - fireStreakLimiter.Value/100)
--		fireStreakLimiter.Value = fireStreakLimiter.Value - 1
--		fireStreak = fireStreakLimiter.Value
--		print(fireStreak)
--	end
--end

function WeldArms(mouse) -- All hail ipod, the original creator of the weld arm script.
	toolIsEquipped = true
--	print[[WeldArms(mouse)]]
	print[[Made by YoungWarlock!]]
	loadValues()
	Hud = script.HudGui:Clone()
	Hud.Parent = playerPlayer.PlayerGui
	updateHUD()
	mouse.KeyDown:connect(commandKeys)
	mouse.Button1Up:connect(stopFiring)
	
	mouse.Icon = "http://www.roblox.com/asset/?id=131424826"
	
	arms = {tool.Parent:FindFirstChild("Left Arm"), tool.Parent:FindFirstChild("Right Arm")}
	torso = tool.Parent:FindFirstChild("Torso")

	if arms ~= nil and torso ~= nil then
		local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}

		if sh ~= nil then
			local yes = true

			if yes then
				yes = false
				sh[1].Part1 = nil
				sh[2].Part1 = nil

				local falseArmLeft = arms[1]:clone()
				falseArmLeftG = falseArmLeft
				falseArmLeft.Parent = tool
				falseArmLeft.BrickColor = arms[1].BrickColor
				local meshCheck1 = tool.Parent:FindFirstChild("leftarm")
				if meshCheck1 then
					meshBody1 = Instance.new("SpecialMesh")
					meshBody1.Parent = falseArmLeft
					meshBody1.MeshId = "http://www.roblox.com/asset/?id="..tostring(meshCheck1.MeshId)
					meshBody1.Scale = Vector3.new(.90,.90,.90)
				else
	
					meshDefault1 = Instance.new("BlockMesh")
					meshDefault1.Parent = falseArmLeft
					meshDefault1.Scale = Vector3.new(.80,.95,.80)
					meshDefault1.Parent = falseArmLeft
				end

				local falseArmWeldLeft = Instance.new("Weld")
				falseArmWeldLeft.Parent = falseArmLeft
				falseArmWeldLeft.Part0 = falseArmLeft
				falseArmWeldLeft.Part1 = arms[1]

				local falseArmRight = arms[2]:clone()
				falseArmRightG = falseArmRight
				falseArmRight.Parent = tool
				falseArmRight.BrickColor = arms[2].BrickColor
				
				local meshCheck2 = tool.Parent:FindFirstChild("rightarm")
				if meshCheck2 then
					meshBody2 = Instance.new("SpecialMesh")
					meshBody2.Parent = falseArmRight
					meshBody2.MeshId = "http://www.roblox.com/asset/?id="..tostring(meshCheck2.MeshId)
					meshBody2.Scale = Vector3.new(.90,.90,.90)
				else
	
					meshDefault2 = Instance.new("BlockMesh")
					meshDefault2.Parent = falseArmRight
					meshDefault2.Scale = Vector3.new(.80,.95,.80)
					meshDefault2.Parent = falseArmRight
				end

				local falseArmWeldRight = Instance.new("Weld")
				falseArmWeldRight.Parent = falseArmRight
				falseArmWeldRight.Part0 = falseArmRight
				falseArmWeldRight.Part1 = arms[2]

				local weldLeft = Instance.new("Weld") -- left arm
				weldLeftG = weldLeft
				weldLeft.Part0 = torso
				weldLeft.Parent = torso
				weldLeft.Part1 = arms[1]
				--weldLeft.C1 = CFrame.new(-0.1, 0.0, 0.7) * CFrame.Angles(math.rad(290), 0, math.rad(-90))
				weldLeft.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90)
				--X position value moves arm DOWNWARDS... X angle value rotates arm IN (C)
				--Y position value moves arm FORWARD... Y angle value tilts arm UPWARDS (C)
				--Z position value moves arm AWAY... Z angle value tilts arm INWARDS (C)
				welds[1] = weldLeft
				
				local weldRight = Instance.new("Weld") -- right arm
				weldRightG = weldRight
				weldRight.Part0 = torso
				weldRight.Parent = torso
				weldRight.Part1 = arms[2]
				weldRight.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0)
				welds[2] = weldRight
				--X position value moves arm INSIDE... X angle value tilts arm DOWNWARDS (C)
				--Y position value moves arm FORWARD... Y angle value rotates arm AWAY (C)
				--Z position value moves arm UPWARDS... Z angle value tilts arm OUTWARDS (C)
				--X GripPos value move tool INSIDE. Y GripPos value move tool DOWNWARDS. Z GripPos value move tool FORWARDS.
			
				--NOTE: Use these when you're modifying the gun positions. These happen if the values are increased. Hopefully you understand my wording.
			
				coroutine.resume(coroutine.create(
					function () 
						lastvar = 0
						aimLimit.Value = 0
		--				thisvarTorso = 0
		--				origC1L = weldLeft.C1
		--				origC1R = weldRight.C1
						while toolIsEquipped do
							lastvar = aimLimit.Value
							aimLimit.Value = -math.atan((playerHumanoid.TargetPoint.y-tool.Handle.CFrame.p.y)/math.sqrt((playerHumanoid.TargetPoint.x-tool.Handle.CFrame.p.x)^2+(playerHumanoid.TargetPoint.z-tool.Handle.CFrame.p.z)^2))
		--					lastvarTorso = thisvarTorso
		--					thisvarTorso = math.atan((playerHumanoid.TargetPoint.z-tool.Handle.CFrame.p.z)/(playerHumanoid.TargetPoint.x-tool.Handle.CFrame.p.x))
							
		--					playerHumanoid.TargetPoint - tool.Handle.CFrame.p
		--					weldLeftG.C1 = weldLeftG.C1 * convertToCFrameDegrees(testvar-lastvar, 0, 0)
		--					weldRightG.C1 = weldRightG.C1 * convertToCFrameDegrees(testvar-lastvar, 0, 0)
		
							weldLeftG.C1 = weldLeftG.C1 * CFrame.Angles(aimLimit.Value-lastvar, 0, 0)
							weldRightG.C1 = weldRightG.C1 * CFrame.Angles(aimLimit.Value-lastvar, 0, 0)
							
		--					playerCharacter.Torse.CFrame = playerCharacter.Torso.CFrame * CFrame.Angles(0, thisvarToso - lastvarTorso, 0)
							print(aimLimit.Value)
							wait()
						end
					end
				))	
			
			
			end
		end
	end
end

function stopFiring(mouse)
--	print[[stopFiring(mouse)]]
	isFiring = false
--	recoilCooldown()
end

function createShellCasing() -- Hooray for a bullet casing! ~~YoungWarlock
	local ShellClone = Shell:Clone()
	ShellClone.Parent = Workspace
	ShellClone.CFrame = tool.Port.CFrame * convertToCFrameDegrees(90,0,0)
	ShellClone.Velocity = Vector3.new(0,math.random(10,40),0) + (tool.Port.CFrame * convertToCFrameDegrees(0,math.random(-140,-90),0)).lookVector * (math.random(5,25))
	ShellClone.RotVelocity = Vector3.new(0,0,(math.random(200,400) / 10))
	local ShellMeshClone = ShellMesh:Clone()
	ShellMeshClone.Parent = ShellClone
	game.Debris:AddItem(ShellClone, 0.3) --Add it to the debris. No script can match this one's reliability.
end



function raycastShoot()
--	print[[raycastShoot()]]
	local ray = Ray.new(tool.Handle.CFrame.p, ((playerHumanoid.TargetPoint - tool.Handle.CFrame.p).unit * (range) + Vector3.new(math.random(-100,100)/100 * spreadX,math.random(-100,100)/100 * spreadY,math.random(0,0)))) 
	--local hitcheck, positioncheck = game.Workspace:FindPartOnRay(ray, tool.Parent)
	
	--local ignoreList = {}	
	--table.insert(ignoreList, tool.Parent)
	
	--if hitcheck and hitcheck.Parent:IsA("Tool") then
	--	local ignoreList = {}
	--	table.insert(ignoreList, hit.Parent)
	--	table.insert(ignoreList, tool.Parent)
	--	print[[Hit a tool]]
	--end
	
	--print[[Debug spot]]
	local hit, position = game.Workspace:FindPartOnRay(ray, tool.Parent)-- ignoreList)
 
	local ShootSound = tool.Handle.ShootSound
	ShootSound.Pitch = math.random(110,115)/100
	ShootSound:Play()	
	
	--weldLeftG.C1 = CFrame.new(-0.35, 0.8, 0.6) * convertToCFrameDegrees(305, 5, -90)
	--weldRightG.C1 = CFrame.new(-0.95, -0.5, 0.3) * convertToCFrameDegrees(-90, -15, 0)
	
    local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")

coroutine.resume(coroutine.create(
	function () 
		if humanoid and humanoid.Parent.Name ~= tool.Parent.Name then --and hit:IsDescendantOf(humanoid.Parent) then
			local KillRecord = Instance.new("ObjectValue")
			KillRecord.Value = playerPlayer
			KillRecord.Name = "creator"
--			local tag = KillRecord:Clone()
			KillRecord.Parent = humanoid
			humanoid:TakeDamage(gunDamage)
			print("Hit "..humanoid.Parent.Name.." for "..gunDamage.." damage.")
			wait(1)
			if humanoid then
				local tagCheck = humanoid:findFirstChild("creator")
				if tagCheck then
					tagCheck:Destroy()
				end
			end
		end
	end))
	
	local distance = (position - tool.Muzzle.CFrame.p).magnitude
		local rayPart = Instance.new("Part", tool)
		rayPart.Name          = "RayPart"
		rayPart.BrickColor    = BrickColor.new(24)
		rayPart.Transparency  = 0.5
		rayPart.Anchored      = true
		rayPart.CanCollide    = false
		rayPart.TopSurface    = Enum.SurfaceType.Smooth
		rayPart.BottomSurface = Enum.SurfaceType.Smooth
		rayPart.formFactor    = Enum.FormFactor.Custom
		rayPart.Size          = Vector3.new(.2, 1, .2)
		rayPart.CFrame        = CFrame.new(position, tool.Muzzle.CFrame.p) * CFrame.new(0, 0, 1) * convertToCFrameDegrees(90, 0, 0)
		local rayMesh = Instance.new("CylinderMesh",rayPart)
		rayMesh.Scale = Vector3.new(1,10,1)
		rayMesh.Offset = Vector3.new(0, -distance + rayMesh.Scale.y/2, 0)
--		rayMesh.Scale = Vector3.new(1,distance,1)
--		rayMesh.Offset = Vector3.new(0, -distance/2, 0)

		coroutine.resume(coroutine.create(
		function () 
		for i = 0, distance - rayMesh.Scale.y, 30 do
			rayMesh.Offset = rayMesh.Offset + Vector3.new(0, 30, 0)
			wait()		
		end
		rayPart:Destroy()
		end))

		game.Debris:AddItem(rayPart, 3)

	local recoilXTemp = math.random(-100,100)/100*recoilX
	local recoilyTemp = math.random(80,100)/100*recoily
	local recoilFrames = 2
		
	fireStreakLimiter.Value = fireStreakLimiter.Value + 1
	fireStreak = fireStreakLimiter.Value
	
	coroutine.resume(coroutine.create(
		function () 
			local recoilFormula = fireStreak^1.4/30 * recoilMultiplier
			for i = 1, recoilFrames do
				local camRotation = Cam.CoordinateFrame - Cam.CoordinateFrame.p
				local camScroll = (Cam.CoordinateFrame.p - Cam.Focus.p).magnitude
				local ncf = CFrame.new(Cam.Focus.p)*camRotation*convertToCFrameDegrees(recoilyTemp/recoilFrames * recoilFormula, recoilXTemp/recoilFrames * recoilFormula, 0)
				weldLeftG.C1 = (weldLeftG.C1 + Vector3.new(0, -0.1/recoilFrames, -0.1/recoilFrames))-- * CFrame.Angles(aimLimit.Value-lastvar, 0, 0)
				weldRightG.C1 = (weldRightG.C1 + Vector3.new(0, -0.1/recoilFrames, 0))-- * CFrame.Angles(aimLimit.Value-lastvar, 0, 0)
				Cam.CoordinateFrame = ncf*CFrame.new(0, 0, camScroll)
				wait()
			end
	end))
		
		wait()
		
		weldLeftG.C1 = (weldLeftG.C1 + Vector3.new(0, 0.1, 0.1))-- * CFrame.Angles(aimLimit.Value-lastvar, 0, 0)
		weldRightG.C1 = (weldRightG.C1 + Vector3.new(0, 0.1, 0))-- * CFrame.Angles(aimLimit.Value-lastvar, 0, 0)
--		print(fireStreak)
		tool.Muzzle.PointLight.Enabled = true
		tool.Muzzle.BillboardGui.Flash.Image = "http://www.roblox.com/asset/?id="..flashListBig[math.random(1,#flashListBig)]
		tool.Muzzle.BillboardGui.Enabled = true
		
		createShellCasing()
		
		wait()
		
		tool.Muzzle.PointLight.Enabled = false
		tool.Muzzle.BillboardGui.Enabled = false
		updateAmmo()
		
		if rateOfFireScale > 0 then
			wait(0.03 * rateOfFireScale)
		end
end

function modeAutomatic()
--	print[[modeAutomatic()]]
	isFiring = true
	while isFiring == true do
		if not isReloading and playerHumanoid.Health > 0 then
			if AmmoLoaded > 0 then
				AmmoLoaded = AmmoLoaded - 1
				raycastShoot()
			else
				NoAmmoClick:Play()
				canReload = true
				Reload()
				break
			end
		elseif playerHumanoid.Health <= 0 then
			tool:Destroy()
		end
	end
end

function modeSingle()
--	print[[modeSingle()]]
--	isFiring = true
	if playerHumanoid.Health > 0 then
		if AmmoLoaded > 0 then
			AmmoLoaded = AmmoLoaded - 1
			raycastShoot()
		else
			NoAmmoClick:Play()
			canReload = true
			Reload()
		end
	wait()
	elseif playerHumanoid.Health <= 0 then
		tool:Destroy()
	end
end

function modeBurst()
--	print[[modeBurst()]]
--	isFiring = true
	if playerHumanoid.Health > 0 then
		for i = 1, burstLength do
			if AmmoLoaded > 0 then
				AmmoLoaded = AmmoLoaded - 1
				raycastShoot()
			else
				NoAmmoClick:Play()
				canReload = true
				Reload()
				break
			end
		end
		wait()
	elseif playerHumanoid.Health <= 0 then
		tool:Destroy()
	end
end
		
function onActivated()
--	print[[onActivated()]]
	if not tool.Enabled then
		return
	end

	tool.Enabled = false
	changeGunStatus("disable")
	cooldownInterrupted = true
	if fireMode == 1 then
		modeAutomatic()
	
	elseif fireMode == 2 then
		modeSingle()
		
	elseif fireMode == 3 then
		modeBurst()
	end
tool.Enabled = true
cooldownInterrupted = false
changeGunStatus("enable")
recoilCooldown()
end

function Reload()
--	print[[Reload()]]
	if canReload then
		cooldownInterrupted = false
		cancelStatus = false
		recoilCooldown()
		if usesClips then
			if MagazinesCarried <= 0 then 
				return
			end
		MagazinesCarried = MagazinesCarried - 1
		end
		AmmoLoaded = 0
		updateHUD()
		changeGunStatus("disable")
		tool.Enabled = false
		if isZoomed then
			zoomOut()
		end
		wait(.1)
		local reloadTween = 12
		local reloadTween = 12
		for i = 1, reloadTween do
			--weldLeftG.C1 = CFrame.new(-0.35, 0.9 - 0.9/reloadTween*i, 0.7 + 0.3/reloadTween*i) * CFrame.Angles(math.rad(305 - 15/reloadTween*i), math.rad(5 - 75/reloadTween*i), math.rad(-90 + 90/reloadTween*i))
			weldLeftG.C1 = CFrame.new(-0.35 + 1.5/reloadTween*i , 0.9 - 1/reloadTween*i, 0.7 - 1/reloadTween*i) * convertToCFrameDegrees(305 + 30/reloadTween*i, 5 + 30/reloadTween*i, -90 + 90/reloadTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)
			weldRightG.C1 = CFrame.new(-0.95 + 0/reloadTween*i, -0.4 + 0.3/reloadTween*i, 0.3 + 0.8/reloadTween*i) * convertToCFrameDegrees(-90, -15, 0 + 15/reloadTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)
			wait()
		end
		

		MagazineOut:Play()
		
		local magazineUsedProp = tool.Magazine:Clone()
		magazineUsedProp.CFrame = tool.Magazine.CFrame
		magazineUsedProp.CanCollide = true
		magazineUsedProp.Parent = Workspace
		game.Debris:AddItem(magazineUsedProp, 3)
		tool.Magazine.Transparency = 1
		
		wait(.2)	--The following is left for MY consideration. This should have welded a fake magazine into the player's left hand upon reloading. Can't be bothered to tune it.
--		local magazineNewProp = tool.Magazine:Clone()
--		magazineNewProp.Transparency = 0
--		magazineNewProp.Parent = tool
--		
--		local magazineNewPropWeld = Instance.new("Weld")
--		leftarm = tool.Parent["Left Arm"]
--		magazineNewPropWeldG = magazineNewPropWeld
--		magazineNewPropWeld.Parent =  magazineNewProp
--		magazineNewPropWeld.Part0 =  magazineNewProp
--		magazineNewPropWeld.Part1 = leftarm
--		magazineNewPropWeld.C0 = CFrame.new(-1,-0.4,0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90))
		
--		magazineNewProp:Destroy()
		local reloadTween = 12
		for i = 1, reloadTween do
			weldLeftG.C1 = CFrame.new(1.15 - 1.2/reloadTween*i , -0.1 + 0.8/reloadTween*i, -0.3 + 1/reloadTween*i) * convertToCFrameDegrees(335 - 10/reloadTween*i, 35 - 35/reloadTween*i, -0 - 90/reloadTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)		
			weldRightG.C1 = CFrame.new(-0.95 - 0/reloadTween*i, -0.1 - 0.3/reloadTween*i, 1.1 - 0.8/reloadTween*i) * convertToCFrameDegrees(-90 - 5/reloadTween*i, -15, 15 - 15/reloadTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)
			wait()
		end
		tool.Magazine.Transparency = 0

		MagazineIn:Play()
		
		wait(.2)
		local reloadTween = 4
		for i = 1, reloadTween do
			weldLeftG.C1 = CFrame.new(-0.05 -0.30/reloadTween*i , 0.7 + 0.2/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 - 20/reloadTween*i, 0 + 5/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)		
			weldRightG.C1 = CFrame.new(-0.95 - 0/reloadTween*i, -0.4 - 0.0/reloadTween*i, 0.3 - 0.0/reloadTween*i) *convertToCFrameDegrees(-95 + 5/reloadTween*i, -15, 0 + 0/reloadTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)
		wait()		
		end

		weldLeftG.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90) * CFrame.Angles(aimLimit.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0) * CFrame.Angles(aimLimit.Value, 0, 0)
		wait(0.2)
		if not cancelStatus then
			AmmoLoaded = AmmoMax
		end
		changeGunStatus("enable")
		tool.Enabled = true
		updateHUD()
	end
end
		
--function resetValues()
--	print[[resetValues()]]
--	changeGunStatus("enable")
--	recoilMultiplier = defaultRecoilMultiplier
--	Cam.FieldOfView = zoomMin
--	tool.Muzzle.PointLight.Enabled = false
--	tool.Muzzle.BillboardGui.Enabled = false
--	if playerHumanoid then
--	playerHumanoid.WalkSpeed = playerSpeed
--	end
--	while playerPlayer.PlayerGui:FindFirstChild("HudGui") do
--		playerPlayer.PlayerGui:FindFirstChild("HudGui"):Destroy()
--		wait()
--		print[[ee]]
--	end
--end

function RemoveWeldArms(mouse)
--	print[[RemoveWeldArms(mouse)]]
	toolIsEquipped = false
	changeGunStatus("enable")
	recoilMultiplier = defaultRecoilMultiplier
	Cam.FieldOfView = zoomMin
	tool.Muzzle.PointLight.Enabled = false
	tool.Muzzle.BillboardGui.Enabled = false
	if playerHumanoid then
	playerHumanoid.WalkSpeed = playerSpeed
	end
	while playerPlayer.PlayerGui:FindFirstChild("HudGui") do
		playerPlayer.PlayerGui:FindFirstChild("HudGui"):Destroy()
		wait()
	--	print[[ee]]
	end
	
	if arms ~= nil and torso ~= nil then
		local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
	
		if sh ~= nil then
			local yes = true
			if yes then
				yes = false
				sh[1].Part1 = arms[1]
				sh[2].Part1 = arms[2]
				--for _, v in pairs(playerCharacter["Left Arm"]:GetChildren()) do
				--	v:Destroy()
				--end
				--for _, v in pairs(playerCharacter["Right Arm"]:GetChildren()) do
				--	v:Destroy()
				--end
				welds[1].Parent = nil
				welds[2].Parent = nil
				falseArmLeftG:Destroy()
				falseArmRightG:Destroy()
			end
		end
	end
end

function zoomIn()
--	print[[zoomIn()]]
	isZoomed = true
	recoilMultiplier = zoomRecoilMultiplier
	playerHumanoid.WalkSpeed = playerSpeed * zoomWalkSpeedMultiplier
	for i = 1, zoomFrames do
		Cam.FieldOfView = Cam.FieldOfView + (zoomMax - Cam.FieldOfView)/3
		wait()
	end
	Cam.FieldOfView = zoomMax
end

function zoomOut()
--	print[[zoomOut()]]
	isZoomed = false
	recoilMultiplier = defaultRecoilMultiplier
	playerHumanoid.WalkSpeed = playerSpeed
	for i = 1, zoomFrames do
		Cam.FieldOfView = Cam.FieldOfView + (zoomMin - Cam.FieldOfView)/3
		wait()
	end
	Cam.FieldOfView = zoomMin
end

function fireModeChange()

	FireModeClick:Play()
	if fireMode == 1 then
		fireMode = 2
		updateHUD()
	elseif fireMode == 2 then
		fireMode = 3
		updateHUD()
	elseif fireMode == 3 then
		fireMode = 1
		updateHUD()
	end
end

function fireModeAnimate()

	local fireModeAnimateTween = 8
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.9 - 0.8/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(305 + 30/fireModeAnimateTween*i, 5, -90) * CFrame.Angles(aimLimit.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.4 + 0.1/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 0 + 5/fireModeAnimateTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.3, -0.2 - .1/fireModeAnimateTween*i)
		wait()
	end
	
	wait(.1)
	fireModeAnimateTween = 3
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.1 - 0/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(335 + 0/fireModeAnimateTween*i, 5 - 10/fireModeAnimateTween*i, -90) * CFrame.Angles(aimLimit.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.3 + 0/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 5 + 0/fireModeAnimateTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.3, -0.3 - 0/fireModeAnimateTween*i)
		wait()
	end
	fireModeChange()
	
	wait(0.2)
	fireModeAnimateTween = 8
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.1 + 0.8/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(335 - 30/fireModeAnimateTween*i, -5 + 10/fireModeAnimateTween*i, -90) * CFrame.Angles(aimLimit.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.3 - 0.1/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 5 - 5/fireModeAnimateTween*i) * CFrame.Angles(aimLimit.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.3, -0.3 + 0.1/fireModeAnimateTween*i)
		wait()
	end
	weldLeftG.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90) * CFrame.Angles(aimLimit.Value, 0, 0)
	weldRightG.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0) * CFrame.Angles(aimLimit.Value, 0, 0)
	tool.GripPos = Vector3.new(0, -0.3, -0.2)
end

function commandKeys(key)
	if key == "v" and canCycleModes then
		changeGunStatus("disable")
		fireModeAnimate()
--		print("fireModeKey(key): "..fireModeValues[fireMode])
		wait(.5)
		changeGunStatus("enable")
	elseif key == "z" and canZoom then
		changeGunStatus("disable")
		if not isZoomed then
			zoomIn()
		elseif isZoomed then
			zoomOut()
		end
		wait(.5)
		changeGunStatus("enable")
	elseif key == "r" and canReload and not reloading and AmmoLoaded < AmmoMax then
			changeGunStatus("disable")
			reloading = true
			canReload = true
--			if AmmoLoaded < AmmoMax and canReload then
			Reload()
--			else
--				print[[Cannot reload right now]]
--			end
			reloading = false
			wait(.5)
			changeGunStatus("enable")
	end
end

tool.Equipped:connect(WeldArms)
tool.Unequipped:connect(RemoveWeldArms)
tool.Activated:connect(onActivated)

]===]
s1.Parent = t1
p3 = Instance.new("Part", t1)
p3.BrickColor = BrickColor.new("Black")
p3.CFrame = CFrame.new(37.6090012, 2.32000017, 21.2500019, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p3.Anchored = true
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(1, 1, 1)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("CylinderMesh", p3)
b3.Name = "Mesh"
b3.Offset = Vector3.new(0, 0.200000003, 0)
b3.Scale = Vector3.new(0.180000007, 0.400000006, 0.180000007)
p4 = Instance.new("Part", t1)
p4.BrickColor = BrickColor.new("Really black")
p4.Name = "Hole"
p4.CFrame = CFrame.new(37.6090012, 2.32000017, 21.2530003, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p4.Anchored = true
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("CylinderMesh", p4)
b4.Name = "Mesh"
b4.Offset = Vector3.new(0, 0.200000003, 0)
b4.Scale = Vector3.new(0.100000001, 0.400000006, 0.100000001)
p5 = Instance.new("Part", t1)
p5.BrickColor = BrickColor.new("Black")
p5.Name = "Muzzle"
p5.CFrame = CFrame.new(37.6090012, 2.32000017, 21.1930008, 0.994522631, -3.11535775e-009, 0.104528442, 0.104528509, 2.96396454e-008, -0.994521916, 1.06417249e-013, 1.00000072, 2.98029903e-008)
p5.Anchored = true
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.246153846, 0.200000003)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("CylinderMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.846153855, 1, 0.846153855)
g2 = Instance.new("BillboardGui", p5)
g2.Enabled = false
g2.Size = UDim2.new(2, 0, 2, 0)
o8 = Instance.new("ImageLabel", g2)
o8.BackgroundTransparency = 1
o8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o8.BorderSizePixel = 0
o8.Name = "Flash"
o8.Size = UDim2.new(1, 1, 1, 1)
o8.ClipsDescendants = true
o8.Image = "http://www.roblox.com/asset/?id=131435802"
x2 = Instance.new("PointLight", p5)
x2.Color = Color3.new(1, 0.988235, 0.870588)
x2.Range = 30
x2.Enabled = false
p6 = Instance.new("Part", t1)
p6.BrickColor = BrickColor.new("Black")
p6.Reflectance = 0.0099999997764826
p6.Name = "Frontsight"
p6.CFrame = CFrame.new(37.5930023, 2.47000003, 20.5570011, -0.99452287, -2.97087891e-015, 0.104528464, -0.104528561, 2.82660248e-014, -0.994521856, -7.22843835e-016, -1.00000095, 2.14705352e-014)
p6.Anchored = true
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.0799999982, 0.0799999982, 0.340000004)
p7 = Instance.new("Part", t1)
p7.BrickColor = BrickColor.new("Black")
p7.Name = "Barrel 1"
p7.CFrame = CFrame.new(37.6090012, 2.32000017, 20.4500008, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p7.Anchored = true
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("CylinderMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.150000006, 0.800000012, 0.150000006)
p8 = Instance.new("Part", t1)
p8.BrickColor = BrickColor.new("Black")
p8.Reflectance = 0.0099999997764826
p8.Name = "Frontsight"
p8.CFrame = CFrame.new(37.5900002, 2.49600005, 20.3970013, -0.99452287, 0.0739127845, 0.0739127845, -0.104528561, -0.703233123, -0.703233123, -7.22843835e-016, -0.707107425, 0.707107425)
p8.Anchored = true
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.0799999982, 0.5, 0.0799999982)
p9 = Instance.new("Part", t1)
p9.BrickColor = BrickColor.new("Black")
p9.Name = "Rail"
p9.CFrame = CFrame.new(37.6090012, 2.32000017, 20.1500015, -0.99452287, -0, 0.104528457, -0.104528561, -0, -0.994521797, -7.22843835e-016, -1.00000083, 0)
p9.Anchored = true
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(1, 1, 1)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Head
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p10 = Instance.new("Part", t1)
p10.BrickColor = BrickColor.new("Black")
p10.Name = "ForeGrip"
p10.CFrame = CFrame.new(37.6470032, 1.96200013, 19.9500008, -0.99452287, -0.104528472, -4.56908866e-009, -0.104528561, 0.994521916, 4.34719674e-008, -7.22843835e-016, 4.37113989e-008, -1.00000095)
p10.Anchored = true
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("CylinderMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.25, 0.600000024, 0.25)
p11 = Instance.new("Part", t1)
p11.BrickColor = BrickColor.new("Black")
p11.Name = "Rail"
p11.CFrame = CFrame.new(37.6090012, 2.32000017, 19.9300003, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p11.Anchored = true
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.180000007, 0.699999988, 0.360000014)
p12 = Instance.new("Part", t1)
p12.BrickColor = BrickColor.new("Black")
p12.Name = "Rail"
p12.CFrame = CFrame.new(37.6090012, 2.32000017, 19.9300003, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p12.Anchored = true
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Size = Vector3.new(1, 1, 1)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.360000014, 0.699999988, 0.180000007)
p13 = Instance.new("Part", t1)
p13.BrickColor = BrickColor.new("Black")
p13.Name = "ForeBarrel"
p13.CFrame = CFrame.new(37.6090012, 2.32000017, 19.9300003, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p13.Anchored = true
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Symmetric
p13.Size = Vector3.new(1, 1, 1)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("CylinderMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.360000014, 0.800000012, 0.360000014)
p14 = Instance.new("Part", t1)
p14.BrickColor = BrickColor.new("Black")
p14.Name = "Rearsight"
p14.CFrame = CFrame.new(37.5890007, 2.5150001, 19.4310017, -0.99452287, -0, 0.104528479, -0.104528561, -0, -0.994521916, -7.22843835e-016, -1.00000107, 0)
p14.Anchored = true
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Size = Vector3.new(1, 1, 1)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshType = Enum.MeshType.Brick
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.219999999, 0.129999995, 0.300000012)
p15 = Instance.new("Part", t1)
p15.BrickColor = BrickColor.new("Dark stone grey")
p15.Transparency = 1
p15.Name = "Port"
p15.CFrame = CFrame.new(37.4420013, 2.31000018, 19.316, -0.994521916, -0.104528062, 3.11524517e-009, -0.104528435, 0.99451828, -2.96389633e-008, -1.33036201e-013, -2.98022353e-008, -0.999997795)
p15.Anchored = true
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.200000003, 0.338461548)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.0769230723, 0.538461506, 1)
p16 = Instance.new("Part", t1)
p16.BrickColor = BrickColor.new("Dark stone grey")
p16.Name = "Bolt"
p16.CFrame = CFrame.new(37.5100021, 2.31000018, 19.3000011, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p16.Anchored = true
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Symmetric
p16.Size = Vector3.new(1, 1, 1)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("CylinderMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.140000001, 0.400000006, 0.140000001)
p17 = Instance.new("Part", t1)
p17.BrickColor = BrickColor.new("Really black")
p17.Name = "MagazineHole"
p17.CFrame = CFrame.new(37.6530037, 1.90300012, 19.3100014, -0.99452287, 9.13817289e-009, -0.104528472, -0.104528561, -8.69438992e-008, 0.994521916, -7.22843835e-016, 1.00000095, 8.74228334e-008)
p17.Anchored = true
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Symmetric
p17.Size = Vector3.new(1, 1, 1)
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Wedge
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.239999995, 0.439999998, 0.0900000036)
p18 = Instance.new("Part", t1)
p18.BrickColor = BrickColor.new("Black")
p18.Name = "Magazine Housing"
p18.CFrame = CFrame.new(37.6520004, 1.91200006, 19.3100014, -0.99452287, 9.13817289e-009, -0.104528472, -0.104528561, -8.69438992e-008, 0.994521916, -7.22843835e-016, 1.00000095, 8.74228334e-008)
p18.Anchored = true
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1, 1, 1)
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Wedge
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.25999999, 0.460000008, 0.0900000036)
p19 = Instance.new("Part", t1)
p19.BrickColor = BrickColor.new("Black")
p19.Name = "Magazine Housing"
p19.CFrame = CFrame.new(37.6270027, 2.15100002, 19.3100014, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p19.Anchored = true
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 1, 1)
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.25999999, 0.460000008, 0.400000006)
p20 = Instance.new("Part", t1)
p20.BrickColor = BrickColor.new("Really black")
p20.Name = "BoltHole"
p20.CFrame = CFrame.new(37.5100021, 2.31000018, 19.3000011, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p20.Anchored = true
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Symmetric
p20.Size = Vector3.new(1, 1, 1)
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("CylinderMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.129999995, 0.389999986, 0.129999995)
p21 = Instance.new("Part", t1)
p21.BrickColor = BrickColor.new("Dark stone grey")
p21.Name = "Magazine"
p21.CFrame = CFrame.new(37.6500015, 1.93100011, 19.3100014, -0.99452287, -3.71359827e-015, 0.104528472, -0.104528561, 3.53325293e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.21286881e-014)
p21.Anchored = true
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(1, 1, 1.14120007)
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.209999993, 0.430000007, 0.600000024)
p22 = Instance.new("Part", t1)
p22.BrickColor = BrickColor.new("Really black")
p22.Name = "MagazineHole"
p22.CFrame = CFrame.new(37.6270027, 2.15100002, 19.3100014, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p22.Anchored = true
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Symmetric
p22.Size = Vector3.new(1, 1, 1)
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("BlockMesh", p22)
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.239999995, 0.439999998, 0.405999988)
p23 = Instance.new("Part", t1)
p23.BrickColor = BrickColor.new("Black")
p23.Name = "StockT"
p23.CFrame = CFrame.new(37.6150017, 2.26100016, 18.0500011, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p23.Anchored = true
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Symmetric
p23.Size = Vector3.new(1, 1, 1)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("CylinderMesh", p23)
b23.Name = "Mesh"
b23.Offset = Vector3.new(0, 0.400000006, 0)
b23.Scale = Vector3.new(0.25, 0.800000012, 0.25)
p24 = Instance.new("Part", t1)
p24.BrickColor = BrickColor.new("Black")
p24.Name = "StockC"
p24.CFrame = CFrame.new(37.6150017, 2.26100016, 18.25, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p24.Anchored = true
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Symmetric
p24.Size = Vector3.new(1, 1, 1)
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b24 = Instance.new("CylinderMesh", p24)
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.200000003, 1, 0.200000003)
p25 = Instance.new("Part", t1)
p25.BrickColor = BrickColor.new("Black")
p25.Name = "StockAngle1"
p25.CFrame = CFrame.new(37.6470032, 1.96200013, 17.5, 0.99452287, 0.104528472, -8.5697458e-008, 0.104528561, -0.994521916, -2.09976978e-008, -8.74228618e-008, 1.19249233e-008, -1.00000095)
p25.Anchored = true
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Symmetric
p25.Size = Vector3.new(1, 1, 1)
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("SpecialMesh", p25)
b25.MeshType = Enum.MeshType.Wedge
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.200000003, 0.5, 0.5)
p26 = Instance.new("Part", t1)
p26.BrickColor = BrickColor.new("Black")
p26.Name = "StockAngle2"
p26.CFrame = CFrame.new(37.6410027, 2.02200007, 17.75, 0.99452287, 0.104528472, -8.5697458e-008, 0.104528561, -0.994521916, -2.09976978e-008, -8.74228618e-008, 1.19249233e-008, -1.00000095)
p26.Anchored = true
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Symmetric
p26.Size = Vector3.new(1, 1, 1)
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p26)
b26.MeshType = Enum.MeshType.Wedge
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.200000003, 0.400000006, 0.600000024)
p27 = Instance.new("Part", t1)
p27.BrickColor = BrickColor.new("Black")
p27.Name = "CHandleC"
p27.CFrame = CFrame.new(37.5970001, 2.44000006, 18.4700012, -0.99452287, -0.104528472, -4.56908866e-009, -0.104528561, 0.994521916, 4.34719674e-008, -7.22843835e-016, 4.37113989e-008, -1.00000095)
p27.Anchored = true
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Symmetric
p27.Size = Vector3.new(1, 1, 1)
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("CylinderMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.300000012, 0.100000001, 0.300000012)
p28 = Instance.new("Part", t1)
p28.BrickColor = BrickColor.new("Black")
p28.Name = "Grip"
p28.CFrame = CFrame.new(37.651001, 1.9180001, 18.5760002, -0.99452287, -0.0270539597, 0.100966752, -0.104528561, 0.257401198, -0.96063441, -7.22843835e-016, -0.965926707, -0.258819282)
p28.Anchored = true
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Symmetric
p28.Size = Vector3.new(1, 1, 1)
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("BlockMesh", p28)
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.25, 0.379999995, 0.800000012)
p29 = Instance.new("Part", t1)
p29.BrickColor = BrickColor.new("Black")
p29.Transparency = 1
p29.Name = "CHandleB1"
p29.CFrame = CFrame.new(37.5970001, 2.44000006, 18.5500011, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p29.Anchored = true
p29.CanCollide = false
p29.FormFactor = Enum.FormFactor.Symmetric
p29.Size = Vector3.new(1, 1, 1)
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("BlockMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.150000006, 0.800000012, 0.100000001)
p30 = Instance.new("Part", t1)
p30.BrickColor = BrickColor.new("Black")
p30.Name = "Rearsight"
p30.CFrame = CFrame.new(37.5900002, 2.50500011, 18.6310005, -0.99452287, 0.0947349742, 0.0441756397, -0.104528561, -0.901342988, -0.420303106, -7.22843835e-016, -0.422618657, 0.906308711)
p30.Anchored = true
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Symmetric
p30.Size = Vector3.new(1, 1, 1)
p30.BottomSurface = Enum.SurfaceType.Smooth
p30.TopSurface = Enum.SurfaceType.Smooth
b30 = Instance.new("SpecialMesh", p30)
b30.MeshType = Enum.MeshType.Brick
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.219999999, 0.400000006, 0.219999999)
p31 = Instance.new("Part", t1)
p31.BrickColor = BrickColor.new("Black")
p31.Name = "Rearsight"
p31.CFrame = CFrame.new(37.5870018, 2.53000021, 18.7310009, -0.99452287, -2.97087891e-015, 0.104528472, -0.104528561, 2.82660248e-014, -0.994521916, -7.22843835e-016, -1.00000095, 2.14705369e-014)
p31.Anchored = true
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Symmetric
p31.Size = Vector3.new(1, 1, 1)
p31.BottomSurface = Enum.SurfaceType.Smooth
p31.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("SpecialMesh", p31)
b31.MeshType = Enum.MeshType.Brick
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.219999999, 0.300000012, 0.300000012)
p32 = Instance.new("Part", t1)
p32.BrickColor = BrickColor.new("Black")
p32.Name = "Handle"
p32.CFrame = CFrame.new(37.6360016, 2.06200004, 18.6500015, -0.994522631, -0.104528472, -2.97087828e-015, -0.104528539, 0.994521916, 2.82660163e-014, -7.22843729e-016, -2.14705369e-014, -1.00000072)
p32.Anchored = true
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.246153846, 0.200000003, 0.307692319)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("BlockMesh", p32)
b32.Name = "Mesh"
b32.Scale = Vector3.new(1, 0.846153855, 1)
x3 = Instance.new("Sound", p32)
x3.Name = "FireModeClick"
x3.Pitch = 1.5
x3.SoundId = "rbxasset://sounds/switch.wav"
x3.Volume = 1
x3.Looped = false
x3.PlayOnRemove = false
x4 = Instance.new("Sound", p32)
x4.Name = "NoAmmoClick"
x4.Pitch = 2
x4.SoundId = "rbxasset://sounds/switch.wav"
x4.Volume = 1
x4.Looped = false
x4.PlayOnRemove = false
x5 = Instance.new("Sound", p32)
x5.Name = "ShootSound"
x5.Pitch = 0.80000001192093
x5.SoundId = "http://www.roblox.com/asset/?id=131045445"
x5.Volume = 1
x5.Looped = false
x5.PlayOnRemove = false
x6 = Instance.new("Sound", p32)
x6.Name = "MagazineOut"
x6.Pitch = 0.85000002384186
x6.SoundId = "http://www.roblox.com/asset/?id=131045401"
x6.Volume = 1
x6.Looped = false
x6.PlayOnRemove = false
x7 = Instance.new("Sound", p32)
x7.Name = "MagazineIn"
x7.Pitch = 0.89999997615814
x7.SoundId = "http://www.roblox.com/asset/?id=131045429"
x7.Volume = 1
x7.Looped = false
x7.PlayOnRemove = false
p33 = Instance.new("Part", t1)
p33.BrickColor = BrickColor.new("Black")
p33.Reflectance = 0.20000000298023
p33.Transparency = 1
p33.Name = "Sights"
p33.CFrame = CFrame.new(37.564003, 2.77000022, 18.6170006, 0.994522631, -4.05055722e-008, 0.10452874, 0.104528807, 3.85375102e-007, -0.994521916, 9.10321514e-013, 1.0000006, 3.87498233e-007)
p33.Anchored = true
p33.CanCollide = false
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("BlockMesh", p33)
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.0769230723, 0.0153846154, 0.0769230723)
p34 = Instance.new("Part", t1)
p34.BrickColor = BrickColor.new("Black")
p34.Name = "Trigger"
p34.CFrame = CFrame.new(37.6340027, 2.08200002, 18.8800011, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p34.Anchored = true
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Symmetric
p34.Size = Vector3.new(1, 1, 1)
p34.BottomSurface = Enum.SurfaceType.Smooth
p34.TopSurface = Enum.SurfaceType.Smooth
b34 = Instance.new("BlockMesh", p34)
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.100000001, 0.0700000003, 0.300000012)
p35 = Instance.new("Part", t1)
p35.BrickColor = BrickColor.new("Black")
p35.Name = "Trigger Housing"
p35.CFrame = CFrame.new(37.6550026, 1.88300014, 18.9000015, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p35.Anchored = true
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Symmetric
p35.Size = Vector3.new(1, 1, 1)
p35.BottomSurface = Enum.SurfaceType.Smooth
p35.TopSurface = Enum.SurfaceType.Smooth
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.100000001, 0.400000006, 0.0250000004)
p36 = Instance.new("Part", t1)
p36.BrickColor = BrickColor.new("Black")
p36.CFrame = CFrame.new(37.6050034, 2.36000013, 18.8500004, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p36.Anchored = true
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Symmetric
p36.Size = Vector3.new(1, 1, 1)
p36.BottomSurface = Enum.SurfaceType.Smooth
p36.TopSurface = Enum.SurfaceType.Smooth
b36 = Instance.new("BlockMesh", p36)
b36.Name = "Mesh"
b36.Offset = Vector3.new(0, -0.140000001, 0.0700000003)
b36.Scale = Vector3.new(0.25999999, 1.10000002, 0.409999996)
p37 = Instance.new("Part", t1)
p37.BrickColor = BrickColor.new("Medium stone grey")
p37.Transparency = 1
p37.Name = "WeldPoint"
p37.CFrame = CFrame.new(37.6050034, 2.36000013, 18.8500004, -0.99452287, -3.99680289e-015, 0.104528472, -0.104528561, 3.19744231e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.19744231e-014)
p37.Anchored = true
p37.CanCollide = false
p37.FormFactor = Enum.FormFactor.Symmetric
p37.Size = Vector3.new(1, 1, 1)
p37.BottomSurface = Enum.SurfaceType.Smooth
p37.TopSurface = Enum.SurfaceType.Smooth
p38 = Instance.new("Part", t1)
p38.BrickColor = BrickColor.new("Black")
p38.Name = "Center"
p38.CFrame = CFrame.new(37.6090012, 2.32000017, 18.9900017, -0.99452287, -3.71359827e-015, 0.104528472, -0.104528561, 3.53325293e-014, -0.994521916, -7.22843835e-016, -1.00000095, 3.21286881e-014)
p38.Anchored = true
p38.CanCollide = false
p38.FormFactor = Enum.FormFactor.Symmetric
p38.Size = Vector3.new(1, 1, 1)
p38.BottomSurface = Enum.SurfaceType.Smooth
p38.TopSurface = Enum.SurfaceType.Smooth
b37 = Instance.new("CylinderMesh", p38)
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.319999993, 1.10000002, 0.319999993)
p39 = Instance.new("Part", t1)
p39.BrickColor = BrickColor.new("Black")
p39.Name = "Rearsight"
p39.CFrame = CFrame.new(37.5760002, 2.63400006, 19.0370007, -0.99452287, -0.00547059812, 0.10438522, -0.104528561, 0.0520492569, -0.993158937, -7.22843835e-016, -0.998630464, -0.0523360074)
p39.Anchored = true
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Symmetric
p39.Size = Vector3.new(1, 1, 1)
p39.BottomSurface = Enum.SurfaceType.Smooth
p39.TopSurface = Enum.SurfaceType.Smooth
b38 = Instance.new("SpecialMesh", p39)
b38.MeshType = Enum.MeshType.Brick
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.219999999, 0.899999976, 0.129999995)
p40 = Instance.new("Part", t1)
p40.BrickColor = BrickColor.new("Medium stone grey")
p40.Transparency = 1
p40.Name = "ShellOut"
p40.CFrame = CFrame.new(37.5060005, 2.35000014, 19.25, 0.104528517, -3.71359827e-015, 0.99452287, -0.994521916, 3.53325293e-014, 0.104528606, 3.21286881e-014, -1.00000095, 7.22842353e-016)
p40.Anchored = true
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Symmetric
p40.Size = Vector3.new(1, 1, 1)
p40.BottomSurface = Enum.SurfaceType.Smooth
p40.TopSurface = Enum.SurfaceType.Smooth
s2 = script:clone()
s2.Name = "BackupWeld"
s2.Disabled = false
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRunL"
so2.Value = [===[
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
s2.Parent = t1
w1 = Instance.new("Weld", p1)
w1.Part0 = p1
w1.C0 = CFrame.new(-0.104999997, 0.449999988, -0.0599999987, 0.994521916, 0, -0.104528464, 0, 1, 0, 0.104528464, 0, 0.994521916)
w1.Part1 = p36
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Part0 = p2
w2.C0 = CFrame.new(0, -0.0799999982, -0.720000029, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w2.Part1 = p36
w2.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Part0 = p3
w3.C0 = CFrame.new(0, 2.4000001, -0.0399999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p36
w3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Part0 = p4
w4.C0 = CFrame.new(0, 2.40300012, -0.0399999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p36
w4.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p6)
w5.Part0 = p6
w5.C0 = CFrame.new(0, 0.159999996, -0.0260000005, 1, 0, 0, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769)
w5.Part1 = p8
w5.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p7)
w6.Part0 = p7
w6.C0 = CFrame.new(0, 1.60000002, -0.0399999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p36
w6.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p8)
w7.Part0 = p8
w7.C0 = CFrame.new(0, 0.300000012, -0.0500000007, 1, 0, 0, 0, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769)
w7.Part1 = p9
w7.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p10)
w8.Part0 = p10
w8.C0 = CFrame.new(0, 0.400000006, 1.10000002, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w8.Part1 = p36
w8.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p11)
w9.Part0 = p11
w9.C0 = CFrame.new(0, 1.08000004, -0.0399999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p36
w9.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p12)
w10.Part0 = p12
w10.C0 = CFrame.new(0, 1.08000004, -0.0399999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p36
w10.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p13)
w11.Part0 = p13
w11.C0 = CFrame.new(0, 1.08000004, -0.0399999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p36
w11.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p14)
w12.Part0 = p14
w12.C0 = CFrame.new(0, 0.800000012, 0.00999999978, 1, 0, 0, 0, 0.42261824, -0.906307817, 0, 0.906307817, 0.42261824)
w12.Part1 = p30
w12.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p16)
w13.Part0 = p16
w13.C0 = CFrame.new(-0.100000001, 0.449999988, -0.0399999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p36
w13.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p17)
w14.Part0 = p17
w14.C0 = CFrame.new(0, 0, 0.25, 1, 0, 0, 0, -1, 8.74227766e-008, 0, -8.74227766e-008, -1)
w14.Part1 = p19
w14.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p18)
w15.Part0 = p18
w15.C0 = CFrame.new(0, 0, 0.239999995, 1, 0, 0, 0, -1, 8.74227766e-008, 0, -8.74227766e-008, -1)
w15.Part1 = p19
w15.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p19)
w16.Part0 = p19
w16.C0 = CFrame.new(0, 0.460000008, -0.209999993, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p36
w16.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p20)
w17.Part0 = p20
w17.C0 = CFrame.new(-0.100000001, 0.449999988, -0.0399999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17.Part1 = p36
w17.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p22)
w18.Part0 = p22
w18.C0 = CFrame.new(0, 0.460000008, -0.209999993, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p36
w18.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19 = Instance.new("Weld", p23)
w19.Part0 = p23
w19.C0 = CFrame.new(0, -0.800000012, -0.100000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19.Part1 = p36
w19.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p24)
w20.Part0 = p24
w20.C0 = CFrame.new(0, -0.600000024, -0.100000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20.Part1 = p36
w20.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p27)
w21.Part0 = p27
w21.C0 = CFrame.new(0, -0.0799999982, -0.379999995, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w21.Part1 = p36
w21.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p28)
w22.Part0 = p28
w22.C0 = CFrame.new(0, -0.150000006, -0.5, 1, 0, 0, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813)
w22.Part1 = p36
w22.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p29)
w23.Part0 = p29
w23.C0 = CFrame.new(0, -0.300000012, 0.0799999982, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23.Part1 = p36
w23.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p30)
w24.Part0 = p30
w24.C0 = CFrame.new(0, 0.0399999991, 0.25999999, 1, 0, 0, 0, 0.42261824, 0.906307817, 0, -0.906307817, 0.42261824)
w24.Part1 = p36
w24.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p34)
w25.Part0 = p34
w25.C0 = CFrame.new(0, 0.0299999993, -0.280000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25.Part1 = p36
w25.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26 = Instance.new("Weld", p35)
w26.Part0 = p35
w26.C0 = CFrame.new(0, 0.0500000007, -0.479999989, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26.Part1 = p36
w26.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27 = Instance.new("Weld", p36)
w27.Part0 = p36
w27.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27.Part1 = p37
w27.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m.Parent = game:service("Workspace")
m:MakeJoints()