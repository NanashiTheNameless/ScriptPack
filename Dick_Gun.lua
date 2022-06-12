--Credits to Paul Migo & OpTic Wisdom

game:GetObjects("rbxassetid://503182370")[1].Parent=game.Players.LocalPlayer.Backpack

game.Players.LocalPlayer.Backpack.AssaultRifle.Main.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part1.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part2.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part3.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part4.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Partkaas.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part5.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part6.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part7.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part8.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part9.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part10.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part11.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part12.Transparency = 0
game.Players.LocalPlayer.Backpack.AssaultRifle.Part13.Transparency = 0

--------------------- TEMPLATE ASSAULT RIFLE WEAPON ---------------------------
-- Waits for the child of the specified parent
local function WaitForChild(parent, childName)
	while not parent:FindFirstChild(childName) do parent.ChildAdded:wait() end
	return parent[childName]
end

----- MAGIC NUMBERS ABOUT THE TOOL -----
-- How much damage a bullet does
local Damage = 100
-- How many times per second the gun can fire
local FireRate = 20 / 30
-- The maximum distance the can can shoot, this value should never go above 1000
local Range = 400
-- In radians the minimum accuracy penalty
local MinSpread = 0.01
-- In radian the maximum accuracy penalty
local MaxSpread = 0.1
-- Number of bullets in a clip
local ClipSize = 300
-- DefaultValue for spare ammo
local SpareAmmo = 600
-- The amount the aim will increase or decrease by
-- decreases this number reduces the speed that recoil takes effect
local AimInaccuracyStepAmount = 0.0125
-- Time it takes to reload weapon
local ReloadTime = 1
----------------------------------------

-- Colors
local FriendlyReticleColor = Color3.new(0, 1, 0)
local EnemyReticleColor	= Color3.new(1, 0, 0)
local NeutralReticleColor	= Color3.new(1, 1, 1)

local Spread = MinSpread
local AmmoInClip = ClipSize

local Tool = game.Players.LocalPlayer.Backpack.AssaultRifle
local Handle = WaitForChild(Tool, 'Handle')
local WeaponGui = nil

local LeftButtonDown
local Reloading = false
local IsShooting = false

-- Player specific convenience variables
local MyPlayer = nil
local MyCharacter = nil
local MyHumanoid = nil
local MyTorso = nil
local MyMouse = nil

local RecoilAnim
local RecoilTrack = nil

local IconURL = Tool.TextureId  -- URL to the weapon icon asset

local DebrisService = game:GetService('Debris')
local PlayersService = game:GetService('Players')

local OnFireConnection = nil
local OnReloadConnection = nil

local DecreasedAimLastShot = false
local LastSpreadUpdate = time()

-- this is a dummy object that holds the flash made when the gun is fired
local FlashHolder = nil


local WorldToCellFunction = Workspace.Terrain.WorldToCellPreferSolid
local GetCellFunction = Workspace.Terrain.GetCell

function RayIgnoreCheck(hit, pos)
	if hit then
		if hit.Transparency >= 1 or string.lower(hit.Name) == "water" or
				hit.Name == "Effect" or hit.Name == "Rocket" or hit.Name == "Bullet" or
				hit.Name == "Handle" or hit:IsDescendantOf(MyCharacter) then
			return true
		elseif hit:IsA('Terrain') and pos then
			local cellPos = WorldToCellFunction(Workspace.Terrain, pos)
			if cellPos then
				local cellMat = GetCellFunction(Workspace.Terrain, cellPos.x, cellPos.y, cellPos.z)
				if cellMat and cellMat == Enum.CellMaterial.Water then
					return true
				end
			end
		end
	end
	return false
end

-- @preconditions: vec should be a unit vector, and 0 < rayLength <= 1000
function RayCast(startPos, vec, rayLength)
	local hitObject, hitPos = game.Workspace:FindPartOnRay(Ray.new(startPos + (vec * .01), vec * rayLength), Handle)
	if hitObject and hitPos then
		local distance = rayLength - (hitPos - startPos).magnitude
		if RayIgnoreCheck(hitObject, hitPos) and distance > 0 then
			-- there is a chance here for potential infinite recursion
			return RayCast(hitPos, vec, distance)
		end
	end
	return hitObject, hitPos
end



function TagHumanoid(humanoid, player)
	-- Add more tags here to customize what tags are available.
	while humanoid:FindFirstChild('creator') do
		humanoid:FindFirstChild('creator'):Destroy()
	end 
	local creatorTag = Instance.new("ObjectValue")
	creatorTag.Value = player
	creatorTag.Name = "creator"
	creatorTag.Parent = humanoid
	DebrisService:AddItem(creatorTag, 1.5)

	local weaponIconTag = Instance.new("StringValue")
	weaponIconTag.Value = IconURL
	weaponIconTag.Name = "icon"
	weaponIconTag.Parent = creatorTag
end

local function CreateFlash()
	if FlashHolder then
		local flash = Instance.new('Fire', FlashHolder)
		flash.Color = Color3.new(1, 140 / 255, 0)
		flash.SecondaryColor = Color3.new(1, 0, 0)
		flash.Size = 0.3
		DebrisService:AddItem(flash, FireRate / 1.5)
	else
		FlashHolder = Instance.new("Part", Tool)
		FlashHolder.Transparency = 1
		FlashHolder.CanCollide= false
		FlashHolder.Size = Vector3.new(1, 1, 1)
		FlashHolder.Position = Tool.Handle.Position
		local Weld = Instance.new("ManualWeld")
		Weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Weld.C1 = CFrame.new(0, 2.2, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
		Weld.Part0 = FlashHolder
		Weld.Part1 = Tool.Handle
		Weld.Parent = FlashHolder
	end
end

local function CreateBullet(bulletPos)
	local bullet = Instance.new('Part', Workspace)
	bullettext = Instance.new("Decal" ,bullet)
	bullettext1 = Instance.new("Decal" ,bullet)
	bullettext1.Texture = "http://www.roblox.com/asset/?id=164688340"
	bullettext2 = Instance.new("Decal" ,bullet)
	bullettext2.Texture = "http://www.roblox.com/asset/?id=164688340"
	bullettext1.Face = "Front"
	bullettext.Texture = "http://www.roblox.com/asset/?id=164688340"
	bullettext.Face = "Back"
	bullettext2.Face = "Top"
	bullet.FormFactor = Enum.FormFactor.Custom
	bullet.Size = Vector3.new(4, 4, 0.1)
	bullet.BrickColor = MyPlayer.TeamColor
	bullet.Shape = Enum.PartType.Block
	bullet.CanCollide = false
	bullet.CFrame = CFrame.new(bulletPos)
	bullet.Anchored = true
	bullet.TopSurface = Enum.SurfaceType.Smooth
	bullet.BottomSurface = Enum.SurfaceType.Smooth
	bullet.Name = 'Bullet'
	bullet.Transparency = 1
	DebrisService:AddItem(bullet, 2.5)
	local fire = Instance.new("Fire", bullet)
	fire.Color = Color3.new(MyPlayer.TeamColor.r, MyPlayer.TeamColor.g, MyPlayer.TeamColor.b)
	fire.SecondaryColor = Color3.new(MyPlayer.TeamColor.r, MyPlayer.TeamColor.g, MyPlayer.TeamColor.b)
	fire.Size = 5
	fire.Heat = 0
	DebrisService:AddItem(fire, 0.2)
	return bullet
end

local function Reload()
	if not Reloading then
		Reloading = true
		-- Don't reload if you are already full or have no extra ammo
		if AmmoInClip ~= ClipSize and SpareAmmo > 0 then
			if RecoilTrack then
				RecoilTrack:Stop()
			end
			if WeaponGui and WeaponGui:FindFirstChild('Crosshair') then
				if WeaponGui.Crosshair:FindFirstChild('ReloadingLabel') then
					WeaponGui.Crosshair.ReloadingLabel.Visible = true
				end
			end
			wait(ReloadTime)
			-- Only use as much ammo as you have
			local ammoToUse = math.min(ClipSize - AmmoInClip, SpareAmmo)
			AmmoInClip = AmmoInClip + ammoToUse
			SpareAmmo = SpareAmmo - ammoToUse
			UpdateAmmo(AmmoInClip)
		end
		Reloading = false
	end
end

function OnFire()
	if IsShooting then return end
	if MyHumanoid and MyHumanoid.Health > 0 then
		if RecoilTrack and AmmoInClip > 0 then
			RecoilTrack:Play()
		end
		IsShooting = true
		while LeftButtonDown and AmmoInClip > 0 and not Reloading do
			if Spread and not DecreasedAimLastShot then
				Spread = math.min(MaxSpread, Spread + AimInaccuracyStepAmount)
				UpdateCrosshair(Spread)
			end
			CreateFlash()
			if MyMouse then
				local targetPoint = MyMouse.Hit.p
				local shootDirection = (targetPoint - Handle.Position).unit
				-- Adjust the shoot direction randomly off by a little bit to account for recoil
				shootDirection = CFrame.Angles((0.5 - math.random()) * 2 * Spread,
																(0.5 - math.random()) * 2 * Spread,
																(0.5 - math.random()) * 2 * Spread) * shootDirection
				local hitObject, bulletPos = RayCast(Handle.Position, shootDirection, Range)
				local bullet
				-- Create a bullet here
				if hitObject then
					bullet = CreateBullet(bulletPos)
				end
				if hitObject and hitObject.Parent then
					local hitHumanoid = hitObject.Parent:FindFirstChild("Humanoid")
					if hitHumanoid then
						local hitPlayer = game.Players:GetPlayerFromCharacter(hitHumanoid.Parent)
						if MyPlayer.Neutral or (hitPlayer and hitPlayer.TeamColor ~= MyPlayer.TeamColor) then
							TagHumanoid(hitHumanoid, MyPlayer)
							hitHumanoid:TakeDamage(Damage)
							if bullet then
								bullet:Destroy()
								bullet = nil
								--bullet.Transparency = 1
							end
							Spawn(UpdateTargetHit)
						end
					end
				end
				Kek = Instance.new ("Sound" ,game.Players.LocalPlayer.Character.AssaultRifle.Handle)
                Kek.Name = "FireSound"
                Kek.SoundId = "rbxassetid://384987591"
                Kek.Volume = 100
	            Kek:Play()
				AmmoInClip = AmmoInClip - 1
				UpdateAmmo(AmmoInClip)
			end
			wait(FireRate)
		end		
		IsShooting = false
		wait(5)
		local children = game.Workspace:GetChildren()
for _, child in pairs(children) do
    for _, child in pairs(child:GetChildren()) do
        table.insert(children, child)
    end

    if child:IsA("Sound") and child.Name == "FireSound" then
            child:Destroy()
		if AmmoInClip == 0 then
			Reload()
		end
end
end
		if RecoilTrack then
			RecoilTrack:Stop()
		end
	end
end

local TargetHits = 0
function UpdateTargetHit()
	TargetHits = TargetHits + 1
	if WeaponGui and WeaponGui:FindFirstChild('Crosshair') and WeaponGui.Crosshair:FindFirstChild('TargetHitImage') then
		WeaponGui.Crosshair.TargetHitImage.Visible = true
	end
	wait(0.5)
	TargetHits = TargetHits - 1
	if TargetHits == 0 and WeaponGui and WeaponGui:FindFirstChild('Crosshair') and WeaponGui.Crosshair:FindFirstChild('TargetHitImage') then
		WeaponGui.Crosshair.TargetHitImage.Visible = false
	end
end

function UpdateCrosshair(value, mouse)
	if WeaponGui then
		local absoluteY = 650
		WeaponGui.Crosshair:TweenSize(
			UDim2.new(0, value * absoluteY * 2 + 23, 0, value * absoluteY * 2 + 23),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Linear,
			0.33)
	end
end

function UpdateAmmo(value)
	if WeaponGui and WeaponGui:FindFirstChild('AmmoHud') and WeaponGui.AmmoHud:FindFirstChild('ClipAmmo') then
		WeaponGui.AmmoHud.ClipAmmo.Text = AmmoInClip
		if value > 0 and WeaponGui:FindFirstChild('Crosshair') and WeaponGui.Crosshair:FindFirstChild('ReloadingLabel') then
			WeaponGui.Crosshair.ReloadingLabel.Visible = false
		end
	end
	if WeaponGui and WeaponGui:FindFirstChild('AmmoHud') and WeaponGui.AmmoHud:FindFirstChild('TotalAmmo') then
		WeaponGui.AmmoHud.TotalAmmo.Text = SpareAmmo
	end
end


function OnMouseDown()
	LeftButtonDown = true
	OnFire()
end

function OnMouseUp()
	LeftButtonDown = false
end

function OnKeyDown(key)
	if string.lower(key) == 'r' then
		Reload()
	end
end


function OnEquipped(mouse)
	RecoilAnim = WaitForChild(Tool, 'Recoil')

	MyCharacter = Tool.Parent
	MyPlayer = game:GetService('Players'):GetPlayerFromCharacter(MyCharacter)
	MyHumanoid = MyCharacter:FindFirstChild('Humanoid')
	MyTorso = MyCharacter:FindFirstChild('Torso')
	MyMouse = mouse
	WeaponGui = WaitForChild(Tool, 'WeaponHud'):Clone()
	if WeaponGui and MyPlayer then
		WeaponGui.Parent = MyPlayer.PlayerGui
		UpdateAmmo(AmmoInClip)
	end
	if RecoilAnim then
		RecoilTrack = MyHumanoid:LoadAnimation(RecoilAnim)
	end

	if MyMouse then
		-- Disable mouse icon
		MyMouse.Icon = "http://www.roblox.com/asset/?id=18662154"
		MyMouse.Button1Down:connect(OnMouseDown)
		MyMouse.Button1Up:connect(OnMouseUp)
		MyMouse.KeyDown:connect(OnKeyDown)
	end
end


-- Unequip logic here
function OnUnequipped()
	LeftButtonDown = false
	Reloading = false
	MyCharacter = nil
	MyHumanoid = nil
	MyTorso = nil
	MyPlayer = nil
	MyMouse = nil
	if OnFireConnection then
		OnFireConnection:disconnect()
	end
	if OnReloadConnection then
		OnReloadConnection:disconnect()
	end
	if FlashHolder then
		FlashHolder = nil
	end
	if WeaponGui then
		WeaponGui.Parent = nil
		WeaponGui = nil
	end
	if RecoilTrack then
		RecoilTrack:Stop()
	end
end

local function SetReticleColor(color)
	if WeaponGui and WeaponGui:FindFirstChild('Crosshair') then
		for _, line in pairs(WeaponGui.Crosshair:GetChildren()) do
			if line:IsA('Frame') then
				line.BorderColor3 = color
			end
		end
	end
end


Tool.Equipped:connect(OnEquipped)
Tool.Unequipped:connect(OnUnequipped)

while true do
	wait(0.033)
	if WeaponGui and WeaponGui:FindFirstChild('Crosshair') and MyMouse then
		WeaponGui.Crosshair.Position = UDim2.new(0, MyMouse.X, 0, MyMouse.Y)
		SetReticleColor(NeutralReticleColor)

		local target = MyMouse.Target
		if target and target.Parent then
			local player = PlayersService:GetPlayerFromCharacter(target.Parent)
			if player then
				if MyPlayer.Neutral or player.TeamColor ~= MyPlayer.TeamColor then
					SetReticleColor(EnemyReticleColor)
				else
					SetReticleColor(FriendlyReticleColor)
				end
			end
		end
	end
	if Spread and not IsShooting then
		local currTime = time()
		if currTime - LastSpreadUpdate > FireRate * 2 then
			LastSpreadUpdate = currTime
			Spread = math.max(MinSpread, Spread - AimInaccuracyStepAmount)
			UpdateCrosshair(Spread, MyMouse)
		end
	end
end
