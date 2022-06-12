Meshes = {
	Blast = '20329976',
	Crown = '1323306',
	Ring = '3270017',
	Claw = '10681506',
	Crystal = '9756362',
	Coil = '9753878',
	Cloud = '1095708',
}
clangsounds = {
	'199149119',
	'199149109',
	'199149072',
	'199149025',
	'199148971'
}
hitsounds = {
	'199149137',
	'199149186',
	'199149221',
	'199149235',
	'199149269',
	'199149297'
}
blocksounds = {
	'199148933',
	'199148947'
}
armorsounds = {
	'199149321',
	'199149338',
	'199149367',
	'199149409',
	'199149452'
}
woosh = {
	Heavy1 = '320557353',
	Heavy2 = '320557382',
	Heavy3 = '320557453',
	Heavy4 = '199144226',
	Heavy5 = '203691447',
	Heavy6 = '203691467',
	Heavy7 = '203691492',
	Light1 = '320557413',
	Light2 = '320557487',
	Light3 = '199145095',
	Light4 = '199145146',
	Light5 = '199145887',
	Light6 = '199145913',
	Light7 = '199145841',
	Medium1 = '320557518',
	Medium2 = '320557537',
	Medium3 = '320557563',
	Medium4 = '199145204'
}
Songs = {
	Breaking = '179281636',
	FinalReckoning = '357375770',
	NotDeadYet = '346175829',
	Intense = '151514610',
	JumpP1 = '160536628',
	JumpP2 = '60536666',
	SonsOfWar = '158929777',
	WrathOfSea = '165520893',
	ProtectorsOfEarth = '160542922',
	SkyTitans = '179282324',
	ArchAngel = '144043274',
	Anticipation = '168614529',
	TheMartyred = '186849544',
	AwakeP1 = '335631255',
	AwakeP2 = '335631297',
	ReadyAimFireP1 = '342455387',
	ReadyAimFireP2 = '342455399',
	DarkLordP1 = '209567483',
	DarkLordP2 = '209567529',
	BloodDrainP1 = '162914123',
	BloodDrainP2 = '162914203',
	DanceOfSwords = '320473062',
	Opal = '286415112',
	Calamity = '190454307',
	Hypnotica = '155968128',
	Nemisis = '160453802',
	Breathe = '276963903',
	GateToTheRift = '270655227',
	InfernalBeserking = '244143404',
	Trust = '246184492',
	AwakeningTheProject = '245121821',
	BloodPain = '242545577',
	Chaos = '247241693',
	NightmareFictionHighStake = '248062278',
	TheWhiteWeapon = '247236446',
	Gale = '256851659',
	ImperialCode = '256848383',
	Blitzkrieg = '306431437',
	RhapsodyRage = '348690251',
	TheGodFist = '348541501',
	BattleForSoul = '321185592',
	TheDarkColossus = '305976780',
	EmpireOfAngels = '302580452',
	Kronos = '302205297',
	Exorcist = '299796054',
	CrimsonFlames = '297799220',
	UltimatePower = '295753229',
	DrivingInTheDark = '295753229',
	AscendToPower = '293860654',
	GodOfTheSun = '293612495',
	DarkRider = '293861765',
	Vengeance = '293375555',
	SoundOfWar = '293376196',
	HellsCrusaders = '293012202',
	Legend = '293011823',
	RisingSouls = '290524959'
}
misc = {
	GroundSlam = '199145477',
	LaserSlash = '199145497',
	RailGunFire = '199145534',
	Charge1 = '199145659',
	Charge2 = '169380469',
	Charge3 = '169380479',
	EmptyGun = '203691822',
	GunShoot = '203691837',
	Stomp1 = '200632875',
	Stomp2 = '200632561',
	TelsaCannonCharge = '169445572',
	TelsaCannonShoot = '169445602',
	AncientHymm = '245313442'
}

wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local cam = game.Workspace.CurrentCamera
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
cf = CFrame.new
vt = Vector3.new
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "RW"
RW.Part0 = Torso
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso


clerp = function(a, b, t)
  return a:lerp(b, t)
end


--[[--------------------------------------------------
LeftArm.Size = LeftArm.Size * 1
RightArm.Size = RightArm.Size * 1
LeftLeg.Size = LeftLeg.Size * 1
RightLeg.Size = RightLeg.Size * 1
Torso.Size = Torso.Size * 1
Head.Size = Head.Size * 1
RootPart.Size = RootPart.Size * 1
----------------------------------------------------]]


ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end





----------------------------------------------------
----------------------------------------------------



local dmgMultipyer = 0
local co1 = 3
local co2 = 3
local co3 = 3
local co4 = 70
local cooco = 3
local cooldown1 = 3
local cooldown2 = 3
local cooldown3 = 3
local cooldown4 = 70
local coolcool = 3
local maxEnergy = 200
local Energy = 20
local skill1stam = 10
local skill2stam = 30
local skill3stam = 40
local skill4stam = 60
local recovermana = 15
local skillcolorscheme = BrickColor.new("Teal").Color
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end

makelabel = function(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Position = UDim2.new(0, 0, 0, 0)
  label.TextColor3 = Color3.new(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end

framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.85, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.74, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.63, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.52, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)

text1 = Instance.new("TextLabel", framesk1)
text1.BackgroundTransparency = 1
text1.Size = UDim2.new(1, 0, 1, 0)
text1.Position = UDim2.new(0, 0, 0, 0)
text1.TextColor3 = Color3.new(255, 255, 255)
text1.TextStrokeTransparency = 0
text1.FontSize = Enum.FontSize.Size18
text1.Font = Enum.Font.SourceSansBold
text1.BorderSizePixel = 0
text1.TextScaled = true
text1.Text = "[Z]\n Smek Combo"


text2 = Instance.new("TextLabel", framesk2)
text2.BackgroundTransparency = 1
text2.Size = UDim2.new(1, 0, 1, 0)
text2.Position = UDim2.new(0, 0, 0, 0)
text2.TextColor3 = Color3.new(255, 255, 255)
text2.TextStrokeTransparency = 0
text2.FontSize = Enum.FontSize.Size18
text2.Font = Enum.Font.SourceSansBold
text2.BorderSizePixel = 0
text2.TextScaled = true
text2.Text = "[X]\n Wavez of Sugar"


text3 = Instance.new("TextLabel", framesk3)
text3.BackgroundTransparency = 1
text3.Size = UDim2.new(1, 0, 1, 0)
text3.Position = UDim2.new(0, 0, 0, 0)
text3.TextColor3 = Color3.new(255, 255, 255)
text3.TextStrokeTransparency = 0
text3.FontSize = Enum.FontSize.Size18
text3.Font = Enum.Font.SourceSansBold
text3.BorderSizePixel = 0
text3.TextScaled = false
text3.Text = "[C]\n SpinCycle"


text4 = Instance.new("TextLabel", framesk4)
text4.BackgroundTransparency = 1
text4.Size = UDim2.new(1, 0, 1, 0)
text4.Position = UDim2.new(0, 0, 0, 0)
text4.TextColor3 = Color3.new(255, 255, 255)
text4.TextStrokeTransparency = 0
text4.FontSize = Enum.FontSize.Size18
text4.Font = Enum.Font.SourceSansBold
text4.BorderSizePixel = 0
text4.TextScaled = true
text4.Text = "[V]\n Yummie laz0r"



function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function nooutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end


CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
   nooutline(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

CreateSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

local getclosest = function(obj, distance)
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CreateSound(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim) + dmgMultipyer
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      h.Health = h.Health - Damage
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        else
          do
            if Type == "Up" then
              local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
              game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
            else
              do
                if Type == "DarkUp" then
                  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
    end
  end
))
                  local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
                  game:GetService("Debris"):AddItem(bodyVelocity, 1)
                else
                  do
                    if Type == "Snare" then
                      local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                      game:GetService("Debris"):AddItem(bp, 1)
                    else
                      do
                        if Type == "Freeze" then
                          local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                          local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
                          hit.Parent.Torso.Anchored = true
                          coroutine.resume(coroutine.create(function(Part)
    swait(1.5)
    Part.Anchored = false
  end
), hit.Parent.Torso)
                          game:GetService("Debris"):AddItem(BodPos, 3)
                          game:GetService("Debris"):AddItem(BodGy, 3)
                        end
                        do
                          local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
                          game:GetService("Debris"):AddItem(debounce, Delay)
                          c = Instance.new("ObjectValue")
                          c.Name = "creator"
                          c.Value = Player
                          c.Parent = h
                          game:GetService("Debris"):AddItem(c, 0.5)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
        end
      end
    end
  end
end

ShowDamage = function(Pos, Text, Time, Color)
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 1)
  end
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end
)
end


----------------------------------------------------
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
                flyToggled = not flyToggled

        if not flyToggled then
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                RootPart.Velocity = Vector3.new()
                pchar.Humanoid.PlatformStand = false
        end
end

end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)

local function updateFly()

        if not flyToggled then return end

        lastForward = forward
        lastSide = side

        forward = 0
        side = 0

        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = RootPart
                floatBP.Parent = nil
                flyBV.Parent = RootPart

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = RootPart.Position
                floatBP.Parent = RootPart

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)
-------------------------------



	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
m = Instance.new("Model", Character)
m.Name = "Devine light"

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Handle",Vector3.new(0.25000006, 1.20000005, 0.25000006))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.141163945, -0.342636108, -0.847911835, -0.999825656, -0.0133569958, -0.0130459955, 0.009293437, 0.250005007, -0.968199968, 0.0161938071, -0.968152404, -0.249837279))
FakeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Handle",Vector3.new(0.25000006, 1.20000005, 0.25000006))
FakeHandleWeld=weld(m,handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.141163945, -0.342636108, -0.847911835, -0.999825656, -0.0133569958, -0.0130459955, 0.009293437, 0.250005007, -0.968199968, 0.0161938071, -0.968152404, -0.249837279))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-005, -0.326431274, -0.0416107178, -3.77115794e-006, 4.57465649e-006, -1.00000012, -0.0871620625, 0.996194243, 4.87267971e-006, 0.996194184, 0.0871620774, -3.35648656e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.82797623e-005, -0.151901245, -0.0220031738, -0.99999994, 0, -2.32830644e-010, -9.31322575e-010, 0.99619472, 0.0871562809, -2.32830644e-010, 0.087156266, -0.996194661))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.676803589, -0.0636501312, 3.77115794e-006, -4.57465649e-006, 1.00000012, 0.0871523172, 0.996195018, 4.23192978e-006, -0.996195018, 0.0871523172, 4.15742397e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000112533569, -0.851348877, -0.0831794739, -0.99999994, 0, -2.32830644e-010, -9.31322575e-010, 0.99619472, 0.0871562809, -2.32830644e-010, 0.087156266, -0.996194661))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.19616699e-005, 0.0226287842, -0.00234031677, 3.77115794e-006, -4.57465649e-006, 1.00000012, 0.0871523172, 0.996195018, 4.23192978e-006, -0.996195018, 0.0871523172, 4.15742397e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.86781311e-006, -1.55081177, -0.144371033, -0.99999994, 0, -2.32830644e-010, -9.31322575e-010, 0.99619472, 0.0871562809, -2.32830644e-010, 0.087156266, -0.996194661))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.39233398e-005, -1.37628174, -0.12481308, 3.77115794e-006, -4.57465649e-006, 1.00000012, 0.0871523172, 0.996195018, 4.23192978e-006, -0.996195018, 0.0871523172, 4.15742397e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.66108322e-005, -0.502304077, -0.0439300537, 0.99999994, 0, 2.32830644e-010, -9.31322575e-010, 0.996194839, -0.0871537775, -4.65661287e-010, 0.0871537924, 0.996194839))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.02586365, -0.102859497, -3.77115794e-006, 4.57465649e-006, -1.00000012, -0.0871620625, 0.996194243, 4.87267971e-006, 0.996194184, 0.0871620774, -3.35648656e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.19616699e-005, -1.72532654, -0.16396904, -3.77115794e-006, 4.57465649e-006, -1.00000012, -0.0871620625, 0.996194243, 4.87267971e-006, 0.996194184, 0.0871620774, -3.35648656e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.00543213e-005, -1.20176697, -0.105155945, 0.99999994, 0, 2.32830644e-010, -9.31322575e-010, 0.996194839, -0.0871537775, -4.65661287e-010, 0.0871537924, 0.996194839))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000135183334, 0.197174072, 0.0172729492, 0.99999994, 0, 2.32830644e-010, -9.31322575e-010, 0.996194839, -0.0871537775, -4.65661287e-010, 0.0871537924, 0.996194839))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.88486481e-005, 0.547546387, 0.0391845703, -0.99999994, 0, -2.32830644e-010, -9.31322575e-010, 0.99619472, 0.0871562809, -2.32830644e-010, 0.087156266, -0.996194661))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000205755234, -1.90118408, -0.166313171, 0.99999994, 0, 2.32830644e-010, -9.31322575e-010, 0.996194839, -0.0871537775, -4.65661287e-010, 0.0871537924, 0.996194839))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.97102737e-005, -2.2502594, -0.205524445, -0.99999994, 0, -2.32830644e-010, -9.31322575e-010, 0.99619472, 0.0871562809, -2.32830644e-010, 0.087156266, -0.996194661))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.07572937, -0.185987473, 3.77115794e-006, -4.57465649e-006, 1.00000012, 0.0871523172, 0.996195018, 4.23192978e-006, -0.996195018, 0.0871523172, 4.15742397e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.373001099, 0.0196170807, -3.77115794e-006, 4.57465649e-006, -1.00000012, -0.0871620625, 0.996194243, 4.87267971e-006, 0.996194184, 0.0871620774, -3.35648656e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, 0.722076416, 0.0587940216, 3.77115794e-006, -4.57465649e-006, 1.00000012, 0.0871523172, 0.996195018, 4.23192978e-006, -0.996195018, 0.0871523172, 4.15742397e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.77497864, 0.000152587891, -0.350048065, 7.58934766e-006, -1, 1.81794167e-006, 1, 7.58748502e-006, -2.12341547e-006, 2.12457962e-006, 1.78813934e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.7749939, 0.000155687332, 0.199939728, 7.58934766e-006, -1, 1.81794167e-006, 1, 7.58748502e-006, -2.12341547e-006, 2.12457962e-006, 1.78813934e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.399999976, 0.225000009))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.73125076e-005, -1.82868958, -3.25964355, -0.99999994, 0, -2.32830644e-010, -1.39698386e-009, 0.374601722, 0.927185833, -9.31322575e-010, 0.927185893, -0.374601722))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000054, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.13792038e-005, -2.4438324, -2.6292572, -1.00000012, -1.4686957e-006, 1.68639235e-006, 4.6286732e-007, 0.601810455, 0.798638999, -2.18860805e-006, 0.798639059, -0.601810515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000054, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.94990158e-005, -3.39315796, -0.288171768, -0.99999994, 0, -2.32830644e-010, -9.31322575e-010, 0.984807909, 0.173647165, 6.98491931e-010, 0.173647195, -0.984807849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.525000036, 0.225000009))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.10623169e-005, -0.378733158, 3.05079651, -1, -1.21910125e-006, 7.18282536e-007, -1.04343053e-006, 0.292375863, -0.956303477, 9.55536962e-007, -0.956303596, -0.292375863))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000054, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000146508217, -2.83062744, 1.35781097, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.93715096e-006, 0.945518613, -0.325568199, -1.11572444e-006, -0.32556814, -0.945518553))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.475000054, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000108003616, -2.67617798, 1.5712738, -0.99999994, -2.50525773e-007, 9.68342647e-007, -6.5099448e-007, 0.898796022, -0.438367248, -7.62753189e-007, -0.438367248, -0.898795962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.475000054, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.92198563e-005, -3.36148071, -0.0265235901, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.37928873e-006, 0.998629451, 0.0523391962, -1.76089816e-006, 0.0523392111, -0.998629391))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.525000036, 0.225000009))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.54866409e-005, -0.987586975, 2.83644104, -0.99999994, -2.50525773e-007, 9.68342647e-007, -9.75560397e-007, 0.453990608, -0.89100647, -2.16066837e-007, -0.891006529, -0.453990579))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.475000054, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.9870224e-006, -0.783958435, -3.6051178, -1.00000012, -1.4686957e-006, 1.68639235e-006, 1.43796206e-006, 0.156430051, 0.987689137, -1.71456486e-006, 0.987689018, -0.156430021))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.475000054, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.09944153e-005, -2.59901428, -2.4163208, -1.00000012, -1.4686957e-006, 1.68639235e-006, 1.94646418e-007, 0.694655478, 0.719342709, -2.2277236e-006, 0.719342709, -0.694655418))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.450000077, 0.200000048, 0.450000077))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.40018082e-005, 1.09999084, -1.14440918e-005, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.350000083, 0.200000048, 0.350000083))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137090683, 1.00004578, -7.62939453e-006, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.25, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.350000083, 0.200000048, 0.350000083))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000110626221, 0.925003052, -7.62939453e-006, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.25, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.300000072, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.45193863e-005, 0.974990845, 1.14440918e-005, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.25000006, 0.275000006, 0.25000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.36577606e-005, -2.5375061, -4.57763672e-005, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.300000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.95261765e-005, -3.26887512, -0.0964698792, -0.99999994, 0, -2.32830644e-010, 0, 1, 0, -2.32830644e-010, 0, -1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.324999958, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000180840492, 3.60629272, 0.27148819, -0.99999994, 0, -2.32830644e-010, 0, -1, 0, 2.32830644e-010, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.25, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.23192978e-005, -3.74385071, -0.146514893, -0.99999994, 0, -2.32830644e-010, 0, 1, 0, -2.32830644e-010, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.275000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.07559967e-005, -0.446483612, 4.00637817, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.68639235e-006, 4.54485416e-006, -0.99999994, 1.4686957e-006, -1, -4.55975533e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.225000009, 0.37499997))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000162363052, 3.75634766, 0.358917236, -0.99999994, 0, -2.32830644e-010, 0, -1, 0, 2.32830644e-010, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.449999988, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000143527985, -3.4850769, 0.845283508, -0.99999994, 0, -2.32830644e-010, 0, 0.961260915, -0.27564019, 9.31322575e-010, -0.27564019, -0.961260915))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.87499994, 0.275000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.38177109e-005, -3.43133545, 0.0409851074, -0.99999994, 0, -2.32830644e-010, 0, 1, 0, -2.32830644e-010, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.25, 0.275000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000165462494, 0.221511841, 4.00634766, 0.99999994, 0, 2.32830644e-010, -6.98491931e-010, -7.46548176e-006, 1.00000012, 0, -1, -7.46548176e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.13792038e-005, 2.9539032, 1.04855728, 0.99999994, 0, 2.32830644e-010, 0, -1, 0, -2.32830644e-010, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0.0399999991, 0.0599999987),Vector3.new(1, 0.600000024, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.324999988, 0.300000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.6385994e-005, -2.75909424, 1.54463196, 0.99999994, 0, 2.32830644e-010, 9.31322575e-010, 0.891005576, 0.453992337, 2.32830644e-010, -0.453992367, 0.891005516))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.849999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000112295151, 2.91397095, 0.523563385, 0.99999994, 0, 2.32830644e-010, 0, -1, 0, -2.32830644e-010, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.324999988, 0.300000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.80006027e-005, -1.87072754, 2.41197205, 1.00000012, 1.4686957e-006, -1.68639235e-006, 2.70083547e-007, 0.669127405, 0.743147731, 2.22073868e-006, -0.743147731, 0.669127405))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.300000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.28368759e-005, -2.24822998, 1.84187317, 0.99999994, 0, 2.32830644e-010, 0, 0.84804666, 0.529921532, 9.31322575e-010, -0.529921591, 0.84804666))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68220901e-005, -2.65576172, 0.894161224, 0.99999994, 0, 2.32830644e-010, 0, 0.987688124, 0.156436056, 5.82076609e-010, -0.156436056, 0.987688184))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000009, 0.200000003, 0.500000119))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000166416168, -2.77598572, 0.150032043, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.76972961e-005, 3.0738678, 1.12851715, 0.99999994, 0, 2.32830644e-010, 0, -1, 0, -2.32830644e-010, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0.0399999991, 0.0799999982),Vector3.new(1, 0.600000024, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.29289246e-005, -0.588516235, 2.79399109, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68639235e-006, -4.54485416e-006, 0.99999994, 1.4686957e-006, -1, -4.55975533e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.450000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.17232513e-005, -3.09391785, 0.203510284, -0.99999994, 0, -2.32830644e-010, 0, 1, 0, -2.32830644e-010, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000193834305, 2.91394043, 0.528549194, 0.99999994, 0, 2.32830644e-010, 0, -1, 0, -2.32830644e-010, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, -0.0799999982, 0),Vector3.new(1, 0.200000003, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33786011e-005, -2.993927, -0.728557587, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0.0399999991, 0),Vector3.new(1, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000111818314, 2.87391663, 0.948547363, 0.99999994, 0, 2.32830644e-010, 0, -1, 0, -2.32830644e-010, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0.0599999987, 0.0500000007),Vector3.new(1, 0.400000006, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.14576721e-006, 2.79399109, 0.788539886, 0.99999994, 0, 2.32830644e-010, 0, -1, 0, -2.32830644e-010, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0.0599999987, 0.0199999996),Vector3.new(1, 0.400000006, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000113010406, 2.81399536, 0.768547058, 0.99999994, 0, 2.32830644e-010, 0, -1, 0, -2.32830644e-010, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.349999994, 0.275000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.91821289e-005, -3.16886902, 0.14100647, -0.99999994, 0, -2.32830644e-010, 0, 1, 0, -2.32830644e-010, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.225000054, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.1791153e-005, 0.894130707, -2.45579529, -0.99999994, 0, -2.32830644e-010, 4.65661287e-010, -0.156433001, 0.987688661, 9.31322575e-010, 0.987688661, 0.156433031))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.25000006, 0.200000003, 0.400000125))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000175595284, -3.02496338, 0.100013733, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.46962702e-006, 1.00000012, -1.92224979e-006, -1.68755651e-006, -1.92224979e-006, -1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.25000006, 0.200000003, 0.900000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000111222267, -2.77497864, -0.15001297, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.25000006, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.64780426e-005, -2.7749939, 0.700061798, -0.99999994, 0, -2.32830644e-010, 0, 1, 0, -2.32830644e-010, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(1, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.25000006, 0.200000003, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000198960304, -2.97491455, -0.0999984741, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, -0.075000003, 0),Vector3.new(1, 0.25, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.25000006, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000100374222, -2.77496338, 0.399959564, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(1, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.25000006, 0.25, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.63316727e-005, -2.99990845, 0.199985504, 0.99999994, 0, 2.32830644e-010, 0, 1, 0, 2.32830644e-010, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.25000006, 0.200000003, 0.300000131))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.34057617e-005, -2.97489929, 0.450016022, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.46962702e-006, 1.00000012, -1.92224979e-006, -1.68755651e-006, -1.92224979e-006, -1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, -0.075000003, 0),Vector3.new(1, 0.25, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.225000009, 0.450000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.41481781e-005, -0.310428619, 6.47935486, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000024, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.31130219e-006, 0.314552307, 6.40434265, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 2.7750001))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000180959702, -0.0604934692, 5.31690979, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.3460083e-005, -0.0604476929, 6.80448914, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.225000009, 2.45000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.55379486e-005, -0.310440063, 5.02937317, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000124692917, -0.522918701, 5.8543396, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.350000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.88758087e-006, -0.522937775, -5.27934265, -1.00000012, -1.4686957e-006, 1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, -1.46776438e-006, 1, 9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 1.17499995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000113844872, -0.522911072, -4.5168457, -1.00000012, -1.4686957e-006, 1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, -1.46776438e-006, 1, 9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.300000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.41345978e-005, -0.597953796, 3.95437622, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.850000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.46899033e-005, -0.473011017, 4.22932434, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.33921814e-005, 0.689529419, 7.1244812, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(0.400000006, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.624999821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.28368759e-005, 0.689567566, 6.71194458, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.46385956e-005, 0.314544678, 7.00445557, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0399999991),Vector3.new(0.400000006, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.37499997, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.79764557e-005, 6.91694641, 0.926940918, -0.99999994, 0, -2.32830644e-010, 0, -1.00000012, 3.12924385e-006, 0, 3.14414501e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(0.400000006, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.37499997, 0.275000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.88622284e-005, 3.52999878, -0.0466842651, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.37928873e-006, -0.998629451, -0.0523391962, -1.76089816e-006, 0.0523392111, -0.998629391))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.375, 0.349999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000155329704, 0.103702545, 3.73388672, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.63400546e-006, -0.0348923355, -0.999391139, 1.52736902e-006, -0.999391079, 0.0348922759))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 0.824999869))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.4359436e-005, 0.177051544, 5.62684631, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.350000024, 2.2249999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, 0.0520553589, 4.25186157, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, -0.0599999987, 0),Vector3.new(0.600000024, 0.400000006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.449999988, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.529953e-005, 3.33050537, 0.74836731, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.76485628e-006, -0.98162812, 0.190804765, -1.37509778e-006, -0.190804765, -0.981628001))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 2.45000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.50746918e-005, -0.02293396, -3.96434021, -1.00000012, -1.4686957e-006, 1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, -1.46776438e-006, 1, 9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.37499997, 0.424999952))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.02142715e-005, 3.64367676, 0.0223693848, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.37928873e-006, -0.998629451, -0.0523391962, -1.76089816e-006, 0.0523392111, -0.998629391))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.375, 0.349999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.05039978e-005, -3.98643494, -0.00156402588, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.37928873e-006, 0.998629451, 0.0523391962, -1.76089816e-006, 0.0523392111, -0.998629391))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.276000023, 0.624999821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.79628754e-005, 0.690097809, 6.08680725, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.276000023, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000120639801, 0.690040588, 6.49934387, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(0.600000024, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 0.824999869))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000149726868, 0.177078247, 4.05181885, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.275000006, 0.624999881))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.29289246e-005, 0.414539337, 5.92686462, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 1.0250001, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.66651535e-005, -4.34370422, -0.140174866, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.37928873e-006, 0.998629451, 0.0523391962, -1.76089816e-006, 0.0523392111, -0.998629391))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 0.349999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.77757645e-005, -3.93121338, 0.0598831177, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.37928873e-006, 0.998629451, 0.0523391962, -1.76089816e-006, 0.0523392111, -0.998629391))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 0.850000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.10864639e-005, -0.0229148865, 5.61437988, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.92334366e-005, 0.414554596, 6.33935547, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0199999996),Vector3.new(0.600000024, 1, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-006, 0.177085876, 6.13929749, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.92334366e-005, -5.26878357, 2.33998299, 1.00000012, 1.4686957e-006, -1.68639235e-006, -8.40052962e-007, 0.945518076, 0.325569868, 2.07335688e-006, -0.325569868, 0.945517957))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.04119492e-005, -5.77072144, 0.6966362, 1.00000012, 1.4686957e-006, -1.68639235e-006, -1.46962702e-006, 1.00000012, -1.92224979e-006, 1.68755651e-006, 1.92224979e-006, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.300000042))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.4570694e-006, -5.29925537, 2.0106349, 1.00000012, 1.4686957e-006, -1.68639235e-006, -9.47155058e-007, 0.961260617, 0.275641471, 2.02583033e-006, -0.275641471, 0.961260498))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.94582748e-005, -5.47923279, -1.56515503, 1.00000012, 1.4686957e-006, -1.68639235e-006, -2.00886279e-006, 0.920505881, -0.390728742, 9.76957381e-007, 0.390728772, 0.920505881))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.1856041e-005, -5.97073364, -0.696552277, -1.00000012, -1.4686957e-006, 1.68639235e-006, -1.46962702e-006, 1.00000012, -1.92224979e-006, -1.68755651e-006, -1.92224979e-006, -1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, -0.0599999987, 0),Vector3.new(1, 0.400000006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.824999988))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000153303146, 0.335887909, 4.5459137, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.73621811e-006, -0.0349091887, 0.999390543, 1.40815973e-006, -0.999390602, -0.0349091738))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.375))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.91821289e-005, -5.67288208, 0.572040558, 1.00000012, 1.4686957e-006, -1.68639235e-006, -1.46962702e-006, 1.00000012, -1.92224979e-006, 1.68755651e-006, 1.92224979e-006, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.300000042))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.23600388e-005, -3.37290955, 4.40919495, 1.00000012, 1.4686957e-006, -1.68639235e-006, 3.10130417e-007, 0.656055272, 0.754712939, 2.21421942e-006, -0.754712939, 0.656055212))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000108599663, -3.42951965, 4.48682404, 1.00000012, 1.4686957e-006, -1.68639235e-006, 3.10130417e-007, 0.656055272, 0.754712939, 2.21421942e-006, -0.754712939, 0.656055212))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.450000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.77516174e-006, -1.16567993, 5.23135376, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.24936923e-006, 0.258815855, 0.965926707, 1.85426325e-006, -0.965926826, 0.258815825))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.40289688e-005, -0.0971374512, 5.06015015, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.60792843e-006, 0.0523323417, 0.998629749, 1.5553087e-006, -0.998629808, 0.0523323715))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.27825546e-005, 5.52069092, -0.734088898, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.46962702e-006, -1.00000012, 1.92224979e-006, -1.68755651e-006, -1.92224979e-006, -1.00000012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.212500006, 0.262499988, 0.275000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000167965889, 1.00331974, 4.18840027, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.93557935e-006, -0.190815717, 0.981625915, 1.11944973e-006, -0.981625915, -0.190815687))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.212500006, 0.262499988, 0.375))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.03199005e-005, 1.00331211, 3.86340332, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.93557935e-006, -0.190815717, 0.981625915, 1.11944973e-006, -0.981625915, -0.190815687))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Toothpaste","Hitbox",Vector3.new(0.600000024, 2.07500005, 4.57500029))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.016977191, -0.142856598, 4.93132019, 1.00000012, 1.4686957e-006, -1.68639235e-006, 1.68569386e-006, -9.65595245e-006, 1, 1.46776438e-006, -1, -9.67085361e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0047981739, -2.39778137, -0.231613159, 0.99999994, 0, 2.32830644e-010, -9.31322575e-010, 0.996194839, -0.0871537775, -4.65661287e-010, 0.0871537924, 0.996194839))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0065331459, -2.59547424, -0.24243927, 0.99999994, 0, 2.32830644e-010, -9.31322575e-010, 0.996194839, -0.0871537775, -4.65661287e-010, 0.0871537924, 0.996194839))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0039485693, -2.3556366, -0.20098877, 0.99999994, 0, 2.32830644e-010, -9.31322575e-010, 0.996194839, -0.0871537775, -4.65661287e-010, 0.0871537924, 0.996194839))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Quill grey","Part",Vector3.new(0.300000101, 0.200000003, 0.300000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0058170557, -2.54998779, -0.221252441, 0.99999994, 0, 2.32830644e-010, -9.31322575e-010, 0.996194839, -0.0871537775, -4.65661287e-010, 0.0871537924, 0.996194839))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))


Ssongs = {
378387996;203275374;303592872;179281636;357375770;346175829;151514610;160536628;60536666;158929777;165520893;160542922;179282324;144043274;168614529;186849544;335631255;335631297;342455387;342455399;209567483;209567529;162914123;162914203;320473062;286415112;190454307;155968128;160453802;276963903;270655227;244143404;246184492;245121821;242545577;247241693;248062278;247236446;256851659;256848383;342455399;209567483;209567529;162914123;162914203;320473062;286415112;190454307;155968128;160453802;276963903;270655227;244143404;246184492;245121821;242545577;247241693;248062278;247236446;256851659;256848383;306431437;348690251;348541501;321185592;305976780;302580452;302205297;299796054;297799220;295753229;295753229;293860654;293612495;293861765;293375555;293376196;293012202;293011823;290524959;306431437;348690251;348541501;321185592;305976780;302580452;302205297;299796054;297799220;295753229;295753229;293860654;293612495;293861765;293375555;293376196;293012202;293011823;290524959;
}
BackgroundSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
  end
))
end

BackgroundSound("http://roblox.com/asset/?id="..Ssongs[math.random(1,#Ssongs)], Hitbox, 1, 1)






do --> Threading System
	local Processing = {}

	local IDNum = 0
	function newThread(LoopFunc,LimitNum)
		LimitNum = LimitNum or math.huge
		IDNum = IDNum+1
		table.insert(Processing,
		{
			["Function"] = LoopFunc;
			["LimitNum"] = LimitNum;
			["ThreadID"] = IDNum;
			["Num"] = 0;
		})
		return IDNum
	end
	
	function removeThread(ThreadID)
		for i,v in pairs(Processing) do
			if(v["ThreadID"] == ThreadID)then
				table.remove(Processing,i)
				return
			end
		end
	end
	
	function Sleep(Loops)
		Loops = Loops or 1
		local Part = Instance.new("Part")
		newThread(function(Num)
			if(Num == Loops)then
				Part.Transparency = 1
				Part:Destroy()
			end  
		end,Loops)
		Part.Changed:wait()
	end
	
	game:getService("RunService").Stepped:connect(function()
		for i,v in pairs(Processing) do
			if(v["Num"] > v["LimitNum"])then
				removeThread(v["ThreadID"])
			else
				v["Function"](v["Num"])
				v["Num"] = v["Num"]+1
			end
		end
	end)
end

function Create22(Type,Table) --> Basic Creation Function
	local P = Instance.new(tostring(Type))
	for i,v in pairs(Table) do
		P[i] = v
	end
	return P
end
function Edit(Object,Table)
	for i,v in pairs(Table) do
		Object[i] = v
	end
	return Object
end

function lerp(v0, v1, t)
  return v0 + t*(v1-v0);
end

Lerp = {}
Lerp.Color2Vertex = function(Color)
	return Vector3.new(Color.r,Color.g,Color.b)
end
--[[
Lerp.Color = function(Color1,Color2,Inc)
	local C1 = Lerp.Color2Vertex(Color1)
	local C2 = Lerp.Color2Vertex(Color2)
	return Vector3.new(lerp(C1.X,C2.X,Inc),lerp(C1.Y,C2.Y,Inc),lerp(C1.Z,C2.Z,Inc))
end
--]]
Lerp.Color = function(Color1,Color2,Inc)
	return Vector3.new(lerp(Color1.r,Color2.r,Inc),lerp(Color1.g,Color2.g,Inc),lerp(Color1.b,Color2.b,Inc))
end
Lerp.CFrame = function(Start,Stop,Step)
	local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
	local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
	
	local i = Step
	return CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
	(Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
	(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
	(X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
	(Z1 * (1 - i)) + (Z2 * i) )
end

Lerp.Size = function(Size1,Size2,Inc)
	local C1 = Size1
	local C2 = Size2
	return Vector3.new(lerp(C1.X,C2.X,Inc),lerp(C1.Y,C2.Y,Inc),lerp(C1.Z,C2.Z,Inc))
end



Default = {
	Frames = 10;
	StartTransparency = 0;
	EndTransparency = 1;
	StartSize = Vector3.new(0,0,0);
	EndSize = Vector3.new(20,20,20);
	StartCFrame = CFrame.new(0,0,0);
	EndCFrame = CFrame.new(1,1,1);
	StartColor = Color3.new(0,0,0);
	EndColor = Color3.new(1,1,1);
	Mesh = "rbxassetid://9856898";
	Texture = "rbxassetid://13108480";
	Scale = 2;
	BasePart = Create22("Part",{Anchored = true});
	AtEnd = function()  end;
	Clean = true;
}

function Fix(Table)
	for i,v in pairs(Default) do
		if(Table[i] == nil)then
			Table[i] = v
		end
	end
	
	return Table
end

function newParticle(Settings)
	local Settings = Fix(Settings)
	local Loops = Settings["Frames"]
	local Part = Edit(Settings["BasePart"]:clone(),{CanCollide = false,formFactor = "Custom"})
	local Mesh = Create22("SpecialMesh",{Parent = Part,MeshId = Settings["Mesh"],TextureId = Settings["Texture"]})
	Mesh.VertexColor = Lerp.Color2Vertex(Settings["StartColor"])
	
	Edit(Part,{Parent = workspace,Transparency = Settings["StartTransparency"],Size = Settings["StartSize"],Size = Vector3.new(1,1,1)})
	Part.CFrame = Settings["StartCFrame"]
	
	newThread(function(Frame)
		local LCF = Part.CFrame
		
		Part.Transparency = lerp(Settings["StartTransparency"],Settings["EndTransparency"],Frame/Loops)
		Mesh.Scale = Lerp.Size(Settings["StartSize"],Settings["EndSize"],Frame/Loops)*Settings["Scale"]
		Mesh.VertexColor = Lerp.Color(Settings["StartColor"],Settings["EndColor"],Frame/Loops)
		Part.CFrame =  Lerp.CFrame(Settings["StartCFrame"],Settings["EndCFrame"],Frame/Loops)
		
		if Frame == Loops and Settings["Clean"] then  Settings.AtEnd()	Part:Destroy()  end
	end,Loops)
end





BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end
SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
DragonEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://420077883", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end



Hate = function()
attack = true
local count = 1
local barra = false
local keafy = false
  dd = math.random(-50, 50)
  dd2 = math.random(-50, 50)
  dd3 = math.random(-50, 50)
  if count == 1 then
    MagniDamage(RootPart, 17, 6, 10, 0, "Normal")
    CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.6)
    coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
  else
    if count == 2 then
      MagniDamage(RootPart, 17, 5, 15, 0, "Normal")
      CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.5)
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
    else
      if count == 3 then
        CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.2)
        MagniDamage(RootPart, 17, 4, 20, 0, "Normal")
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
     end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Teal"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
      end
    end
  end
  count = 1
  wait(2)
  keafy = false
  attack = false
end




BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end

SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

local attackready = false
finale = function()
  attack = true
  attackready = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-75)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(20)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  ref = CreatePart(workspace, "SmoothPlastic", 0, 0, BrickColor.new("Teal"), "ref", Vector3.new())
  ref.Anchored = true
  ref.CanCollide = false
  ref.CFrame = LeftArm.CFrame * CFrame.new(0, -0.5, 0)
  coroutine.resume(coroutine.create(function()
    for i = 0, 5, 0.1 do
      swait()
      ref.CFrame = LeftArm.CFrame * CFrame.new(0, -0.5 - 5 * i, 0)
    end
  end
))
  coroutine.resume(coroutine.create(function()
    while attackready do
      wait(0.15)
      BlockEffect(BrickColor.new("Teal"), ref.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07, 1)
      SphereEffect(BrickColor.new("Teal"), ref.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07)
    end
  end
))
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 2, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-95)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(-20)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 2, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-95)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(-20)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(0)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -25)
  MagniDamage(ref, 100, 1, 40, 10, "Knockdown")
  BlockEffect(BrickColor.new("Teal"), ref.CFrame, 150, 150, 150, 15, 15, 15, 0.07, 1)
  SphereEffect(BrickColor.new("Teal"), ref.CFrame, 150, 150, 150, 51, 51, 51, 0.07)
  SphereEffect(BrickColor.new("Teal"), ref.CFrame, 20, 100, 20, 10, 100, 10, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(0)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  ref.Parent = nil
  Humanoid.WalkSpeed = 15
  attack = false
  attackready = false
end

local slashndash = false
Slashy = function()
  attack = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(100), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-85)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4, -0.3) * angles(math.rad(-130), math.rad(-200), math.rad(-20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), 0.5)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), 0.5)
    FakeHandleWeld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(3)), 0.5)
  end
    wait(1)
    Humanoid.WalkSpeed = 15
    slashndash = false
    attack = false
end

function DIVIDE()
	attack = true
		Character.Humanoid.Jump = true
		for i = 0, 1, 0.05 do
			swait()
			Torso.Velocity = Vector3.new(0,130, 0)
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.5) * angles(6 * i, math.rad(0), math.rad(0)), .2)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(100), math.rad(0), math.rad(5)), 0.3)
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-20)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(20)), .3)
		end
		for i = 0, 1, 0.022 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.5) * angles(math.rad(50), math.rad(0), math.rad(0)), .2)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(200), math.rad(0), math.rad(5)), 0.3)
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-50)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(50)), .2)
		end
		for i = 0, 1, 0.05 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1, .5, -.7) * angles(math.rad(40), math.rad(0), math.rad(-50)), .3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, .5, -.7) * angles(math.rad(40), math.rad(0), math.rad(50)), .3)
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(20)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-20)), .3)
		MagniDamage(RootPart, 6, 9, 23, 10, "Normal")
		end
	attack = false
end

--[[			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(80), math.rad(0), math.rad(5)), 0.3)
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), .3)]]


spinattack = function()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, 0) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -0.5, 0) * RHCF * angles(math.rad(-3), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(50)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
  end
  for i = 0, 3 do
    swait()
    MagniDamage(RootPart, 15, 1, 15, 0, "Normal")
    CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.9)
    for i = 0, 1, 0.1 do
      swait()
      Torso.Velocity = RootPart.CFrame.lookVector * 75
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.25) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0.1) * angles(math.rad(100), math.rad(20), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -0.9, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -0.7, 0) * LHCF * angles(math.rad(-2), math.rad(30), math.rad(-10)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
    end
  end
  Humanoid.WalkSpeed = 15
  attack = false
end



words = {"Devine!","Light!"}--[math.random(1,#words)]
word = math.random()> 0.5 and "Devine" or "Light"

attackone = function()
  attack = true
  Humanoid.WalkSpeed = 0
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 11, 33, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
    ShowDamage(Hitbox.CFrame * CFrame.new(0, 0, Hitbox.Size.Z / 6).p + Vector3.new(0, 1.5, 0), word, 1.5, Hitbox.BrickColor.Color)
  end
)
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(100), math.rad(0), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-75)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(20)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4, -0.3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), 0.5)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), 0.5)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end



attacktwo = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 42, 110, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(-140), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1)
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.3) * angles(math.rad(80), math.rad(-50), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(10)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end




function attackthree()
	attack = true
	Character.Humanoid.WalkSpeed = 5
	for i = 0, 1, 0.04 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), .1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.3) * angles(math.rad(0), math.rad(70), math.rad(90)), .1)
		LW.C0 = clerp(LW.C0, CFrame.new(1.1, 0.5, -0.3) * angles(math.rad(0), math.rad(-130), math.rad(-90)), .1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(50), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(50), math.rad(0)), .1)
		--handleweld.C0 = clerp(handleweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(200), math.rad(180)), .1)
	end
	CreateSound("http://roblox.com/asset/?id=320557563", Torso, 1, 0.8)
	Torso.Velocity = RootPart.CFrame.lookVector * 70
	local Con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 12, 57, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end)
	for i = 0, 1, 0.03 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(80)), 0.1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.3) * angles(math.rad(0), math.rad(130), math.rad(76)), 0.1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.5) * angles(math.rad(0), math.rad(-130), math.rad(-76)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, -.3) * RHCF * angles(math.rad(-5), math.rad(-50), math.rad(8)), 0.1)
		LH.C0 = clerp(LH.C0, cn(-1, -1.1, -.5) * LHCF * angles(math.rad(-5), math.rad(-50), math.rad(-9)), 0.1)
		--handleweld.C0 = clerp(handleweld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(250), math.rad(180)), .15)
    end
	Con:disconnect()
	attack = false
	Character.Humanoid.WalkSpeed = 10
end



Naildrive = function()
  attack = true
  Humanoid.WalkSpeed = 5
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 5, 58, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(100), math.rad(-140), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, -0.5) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(20)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(160), math.rad(0), math.rad(10)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1)
  for i = 0, 1, 0.1 do
    Torso.Velocity = RootPart.CFrame.lookVector * 50
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(100), math.rad(200), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, -0.5) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(-10)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(260), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 1, 0.08 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(10), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(110), math.rad(250), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(-10)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(400), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1.2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(300), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(-200), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(-10)), 0.3)
    handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(260), math.rad(0), math.rad(0)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end

ob1u = function()
end


Laz0r = function(col23)
  attack = true
local sine = 0
local change = 1
sine = sine + change
Character.Humanoid.WalkSpeed = 0
la = Instance.new("Part",Character)
la.FormFactor = 3
la.TopSurface = 0
la.Transparency = 0.8
la.BottomSurface = 0
la.Material = "Neon"
la.Size = Vector3.new(0.3,0.3,0.3)
la.BrickColor = BrickColor.new(tostring(col23))
lam = Instance.new("SpecialMesh",la)
lam.MeshType = "Sphere"
lam.Scale = Vector3.new(1,1,1)
law = Instance.new("Weld",la)
law.Part0 = la
law.Part1 = handle
la1 = Instance.new("Part",Character)
la1.FormFactor = 3
la1.TopSurface = 0
la1.Transparency = 0
la1.BottomSurface = 0
la1.Material = "Neon"
la1.Size = Vector3.new(0.1,0.1,0.1)
la1.BrickColor = BrickColor.new(tostring(col23))
lam1 = Instance.new("SpecialMesh",la1)
lam1.MeshType = "Sphere"
lam1.Scale = Vector3.new(1,1,1)
law1 = Instance.new("Weld",la1)
law1.Part0 = la1
law1.Part1 = handle
s1 = Instance.new("Sound",handle)
        s1.SoundId = "rbxassetid://181004943"
        s1.Volume = .7
        s1.Pitch = .9
        s1:Play()
for i = 1,6,0.15 do wait()
lam.Scale = Vector3.new(i,i,i)
lam1.Scale = Vector3.new(i,i,i)
end
wait(0.1)
wait(0.4)
s = Instance.new("Sound",handle)
        s.SoundId = "rbxassetid://228343271"
        s.Volume = .7
        s.Pitch = 1
        s:Play()
rng = Instance.new("Part",Character)
rng.FormFactor = 3
rng.TopSurface = 0
rng.BottomSurface = 0
rng.Transparency = 0.8
rng.BrickColor = BrickColor.new(tostring(col23))
rng.Size = Vector3.new(0.1,0.1,0.1)
rng.Material = "Neon"
rngm = Instance.new("SpecialMesh",rng)
rngm.MeshType = "FileMesh"
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(1,1,1)
rngw = Instance.new("Weld",rng)
rngw.Part0 = rng
rngw.Part1 = handle
rngw.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.pi/2,0,0)
la2 = Instance.new("Part",Character)
la2.FormFactor = 3
la2.TopSurface = 0
la2.Transparency = 0
la2.BottomSurface = 0
la2.Material = "Neon"
la2.Size = Vector3.new(0.1,0.1,0.1)
la2.BrickColor = BrickColor.new(tostring(col23))
lam2 = Instance.new("SpecialMesh",la2)
lam2.MeshType = "Sphere"
lam2.Scale = Vector3.new(1,1,1)
law2 = Instance.new("Weld",la2)
law2.Part0 = la2
law2.Part1 = la1
local Beam1 = la2:Clone()
Beam1.Parent = Character
local Mesh = Instance.new("CylinderMesh",Beam1)
Beam1.Size = Vector3.new(1,1,1)
Beam1.Anchored = true
Beam1.CanCollide = false
local Beam2 = Beam1:Clone()
Beam2.Parent = Character
Beam2.Transparency = .8
Beam2.BrickColor = BrickColor.new(tostring(col23))
local Mesh2 = Instance.new("CylinderMesh",Beam2)
for i = 1,17,0.3 do wait()
lam2.Scale = Vector3.new(0,0,i)
rngm.Scale = Vector3.new(i/4,i/4,1)
local Ray = Ray.new(la2.CFrame.p,(la2.CFrame.p-(la2.CFrame*CFrame.new(0,-10,0)).p).unit*900)
local hit,pos = workspace:FindPartOnRay(Ray,Character)
local Mag = (pos - la2.CFrame.p).magnitude
Beam1.CFrame = la2.CFrame * CFrame.new(0,Mag/2,0)
Mesh.Scale = Vector3.new(.7,Mag,.7) 
Beam2.CFrame = Beam1.CFrame
Mesh2.Scale = Vector3.new(1.2,Mag,1.2)
if hit then
dmg2 = 6
if hit.Parent:FindFirstChild("Humanoid")
then hit.Parent:FindFirstChild("Humanoid"):TakeDamage(dmg2)
if hit.Parent.Parent:FindFirstChild("Humanoid")
then hit.Parent.Parent:FindFirstChild("Humanoid"):TakeDamage(dmg2)
if dmg2 > 6 then dmg2 = 6
end
end
end
end
end

cn,ca,bc,v3,r = CFrame.new,CFrame.Angles,BrickColor.new,Vector3.new,function(a)return (math.random()-.5)*2*(a or 1) end
deg,nf,c3,ins,ma,pi,mr = math.deg,math.floor,Color3.new,Instance.new,math.abs,math.pi,math.rad
local part = function(prnt,cfr,siz,col,anc,canc,tra,mat,typ)
                local p = ins(typ or "Part")
                p.FormFactor = "Custom"
                p.Material = mat
                p.Transparency = tra
                p.CanCollide = canc
                p.Anchored = anc
                p.BrickColor = bc(col)
                p.Size = siz
                p.CFrame = cfr
                p.Parent = prnt
                p.Locked = true
                p.TopSurface,p.BottomSurface = 0,0
                p:BreakJoints()
                return p
end
local mesh = function(typ,prnt,scal,mtyp,mid,mtx)
                local m = ins(typ or "SpecialMesh")
                if mtyp then m.MeshType = mtyp end
                if mid then m.MeshId = mid end
                if mtx then m.TextureId = mtx end
                if scal then m.Scale = scal end
                m.Parent = prnt
                return m
end
function cylinderOpen(cf)
        local p = part(Character,cf,v3(0,1000,0),tostring(col23),true,false,.1,"Neon")
        local pm = mesh("CylinderMesh",p)
        local p2 = part(Character,cf,v3(0,1000,0),tostring(col23),true,false,.1,"Neon")
        local p2m = mesh("CylinderMesh",p2)
        Spawn(function()
                        for i=.1,1.1,.0125 do
                                        p.Transparency = i
                                        p2.Transparency = i
                                        pm.Scale = pm.Scale + v3(.8,0,.8)
                                        p2m.Scale = p2m.Scale + v3(.5,0,.5)
                                        wait()
                        end
                        p:Destroy()
                        p2:Destroy()
        end)
end


for _,v in pairs(m:children()) do
    if v:IsA("Part") or v:IsA("WedgePart") then
         v.BrickColor = BrickColor.new(tostring(col23))
         SpecialEffect(BrickColor.new(tostring(col23)), v.CFrame, .3, 1, .3, 1, .3, .3, 0.07)
         SpecialEffect(BrickColor.new(tostring(col23)), v.CFrame, .3, math.cos((sine) / 1), .3, math.cos((sine) / 1), .3, .3, 1)
   end
end

for _,v in pairs(m:children()) do
    if v:IsA("Part") or v:IsA("WedgePart") then
         v.Material = "Neon"
         SpecialEffect(BrickColor.new(tostring(col23)), v.CFrame, .3, 1, .3, 1, .3, .3, 0.07)
         SphereEffect(BrickColor.new(tostring(col23)), v.CFrame, .3, math.cos((sine) / 1), .3, math.cos((sine) / 1), .3, .3, 1)
   end
end
SphereEffect(BrickColor.new(tostring(col23)), RootPart.CFrame, 4, 4, 4, 4, 4, 4, 3)
cylinderOpen(handle.CFrame)

SpecialEffect(BrickColor.new(tostring(col23)), RootPart.CFrame, .3, 1, .3, 1, .3, .3, 0.07)
SpecialEffect(BrickColor.new(tostring(col23)), RootPart.CFrame, .3, math.cos((sine) / 1), .3, math.cos((sine) / 1), .3, .3, 1)
SpecialEffect(BrickColor.new(tostring(col23)), RootPart.CFrame, .3, 1, .3, 1, .3, .3, 0.07)
SpecialEffect(BrickColor.new(tostring(col23)), RootPart.CFrame, .3, math.cos((sine) / 1), .3, math.cos((sine) / 1), .3, .3, 1)
  


for i = 4,1,-0.1 do wait()
lam.Scale = Vector3.new(i+2,i+2,i+2)
lam1.Scale = Vector3.new(i+2,i+2,i+2)
lam2.Scale = Vector3.new(i,i,i)
rng.Transparency = rng.Transparency + i/10
local Ray = Ray.new(la2.CFrame.p,(la2.CFrame.p-(la2.CFrame*CFrame.new(0,-10,0)).p).unit*900)
local hit,pos = workspace:FindPartOnRay(Ray,Character)
local Mag = (pos - la2.CFrame.p).magnitude
Beam1.CFrame = la2.CFrame * CFrame.new(0,Mag/2,0)
Beam2.CFrame = Beam1.CFrame
Mesh.Scale = Vector3.new(.7/4*i,Mag,.7/4*i)
Mesh2.Scale = Vector3.new(1.2/4*i,Mag,1.2/4*i)
if hit then
dmg = 6
if hit.Parent:FindFirstChild("Humanoid")
then hit.Parent:FindFirstChild("Humanoid"):TakeDamage(dmg)
if hit.Parent.Parent:FindFirstChild("Humanoid")
then hit.Parent.Parent:FindFirstChild("Humanoid"):TakeDamage(dmg)
if dmg > 6 then dmg = 6
end
end
end
end
end
rng:Remove()
la:Remove()
la1:Remove()
la2:Remove()
Beam1:Remove()
Beam2:Remove()
wait(0.5)
Character.Humanoid.WalkSpeed = 16
  attack = false
end


Armour = function()

Main=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Medium stone grey","Handle",Vector3.new(1.81000006, 1.95000005, 1.06000006))
Mainweld=weld(m,Character["Torso"],Main,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0149874687, -0.0753822327, -0.0199432373, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000024, 1))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237487793, -0.154968262, 5.43405914, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237617493, -0.529998779, 5.83411407, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.276000023, 0.624999821))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237594604, 0.220565796, 5.11646271, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.225000009, 4.72000027))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237449646, -0.780014038, 3.37401581, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 4.69500017))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237709045, -0.530029297, 3.38661194, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237586975, 0.219940186, 6.15420532, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(0.400000006, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.276000023, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237640381, 0.22052002, 5.52902222, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(0.600000024, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 4.03500032))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237571716, -0.292404175, 3.05155182, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.624999821))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237625122, 0.220077515, 5.74163818, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000024, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237602234, -0.154998779, 6.03413391, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0399999991),Vector3.new(0.400000006, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 4.03000021))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237571716, -0.492523193, 3.05405426, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237571716, -4.50415421, 1.5801239, -0.810560167, 0.437902123, 0.388888091, 0.537597954, 0.81976074, 0.19743593, -0.232337579, 0.36909914, -0.899880648))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237548828, -0.0549163818, 5.36904907, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0199999996),Vector3.new(0.600000024, 1, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237472534, -0.292373657, 5.16897583, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.275000006, 0.624999881))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237594604, -0.0550994873, 4.95654297, -0.810560167, 0.437902123, 0.388888091, -0.0446643643, 0.615867257, -0.786582947, -0.583949804, -0.654942214, -0.479638875))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.300000042))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237548828, -4.49594879, 1.29185486, -0.810560167, 0.437902123, 0.388888091, 0.549018979, 0.799323618, 0.244253829, -0.203888133, 0.411489338, -0.888316453))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237503052, -4.800354, 0.227142334, -0.810560167, 0.437902123, 0.388888091, 0.583950639, 0.654930234, 0.479654163, -0.0446529835, 0.615879953, -0.786573529))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237586975, -4.40258789, -1.6182251, -0.810560167, 0.437902123, 0.388888091, 0.554979146, 0.362233758, 0.74885571, 0.187057123, 0.822817445, -0.536638856))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.375))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.23765564, -4.70252228, 0.102386475, -0.810560167, 0.437902123, 0.388888091, 0.583950639, 0.654930234, 0.479654163, -0.0446529835, 0.615879953, -0.786573529))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.300000042))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237602234, -3.09076309, 3.3687439, -0.810560167, 0.437902123, 0.388888091, 0.349404037, 0.894483089, -0.278957039, -0.470009685, -0.0902323797, -0.878037095))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.237571716, -5.00043488, -0.227127075, 0.810560167, -0.437902123, -0.388888091, 0.583950639, 0.654930234, 0.479654163, 0.0446529835, -0.615879953, 0.786573529))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, -0.0599999987, 0),Vector3.new(1, 0.400000006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237579346, -3.14731979, 3.44648743, -0.810560167, 0.437902123, 0.388888091, 0.349404037, 0.894483089, -0.278957039, -0.470009685, -0.0902323797, -0.878037095))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.237594604, 4.55033112, -0.264434814, -0.810560167, 0.437902123, 0.388888091, -0.583950639, -0.654930234, -0.479654163, 0.0446529835, -0.615879953, 0.786573529))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.769999981, 0.379999995))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.243675232, -0.536224365, 1.01940918, -0.810560167, 0.437902123, 0.388888091, -0.0337482914, 0.62799418, -0.777485907, -0.584682226, -0.643323481, -0.494248658))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 3.54999995))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.243896484, -0.299423218, 2.78768158, -0.810560167, 0.437902123, 0.388888091, -0.0337482914, 0.62799418, -0.777485907, -0.584682226, -0.643323481, -0.494248658))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.225000009, 4.72000027))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254943848, -0.793792725, 3.38182831, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000024, 1))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.25491333, -0.168884277, 5.44179535, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 4.69500017))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254684448, -0.543777466, 3.39440918, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.300000042))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.25479126, -3.10621262, 3.36564636, -0.839777112, -0.440318048, -0.317639023, -0.359176099, 0.889280796, -0.283147007, 0.407144994, -0.123692013, -0.904949307))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.475000024, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254776001, -0.168716431, 6.04192352, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0399999991),Vector3.new(0.400000006, 1, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.276000023, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254760742, 0.206695557, 5.53679657, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(0.600000024, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.25479126, -5.00817108, -0.213226318, 0.839777112, 0.440318048, 0.317639023, -0.542916894, 0.676767468, 0.497219354, 0.00396692473, -0.590004981, 0.807389855))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, -0.0599999987, 0),Vector3.new(1, 0.400000006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254768372, -0.543716431, 5.84191132, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.300000012, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254814148, 4.55815887, -0.250793457, -0.839777112, -0.440318048, -0.317639023, 0.542916894, -0.676767468, -0.497219354, 0.00396692473, -0.590004981, 0.807389855))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.624999821))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.25478363, 0.206237793, 5.7494278, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254798889, 0.206161499, 6.1619873, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0599999987),Vector3.new(0.400000006, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 4.03500032))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254806519, -0.306243896, 3.05931854, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254905701, -0.306167603, 5.17675018, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 3.54999995))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.248504639, -0.313323975, 2.79519653, -0.839777112, -0.440318048, -0.317639023, -0.0140968077, 0.602530479, -0.797971427, 0.542748392, -0.665640414, -0.512198329))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.200000003, 4.03000021))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254852295, -0.506240845, 3.06187439, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.275000006, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254837036, -0.0686950684, 5.3768158, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0.0199999996),Vector3.new(0.600000024, 1, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254837036, -4.51597595, 1.56962585, -0.839777112, -0.440318048, -0.317639023, -0.514628649, 0.831984758, 0.20726499, 0.173008293, 0.337522537, -0.925282001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.275000006, 0.624999881))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254821777, -0.0689086914, 4.96432495, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.300000042))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254867554, -4.50723648, 1.28071594, -0.839777112, -0.440318048, -0.317639023, -0.522977889, 0.813180208, 0.255406082, 0.145837843, 0.38060233, -0.913166642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel blue-green","Part",Vector3.new(0.200000003, 0.276000023, 0.624999821))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254798889, 0.206756592, 5.12422943, -0.839777112, -0.440318048, -0.317639023, -0.00395964785, 0.589995861, -0.807396531, 0.542916954, -0.676775336, -0.497208506))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254898071, -4.80812073, 0.213317871, -0.839777112, -0.440318048, -0.317639023, -0.542916894, 0.676767468, 0.497219354, -0.00396692473, 0.590004981, -0.807389855))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254814148, -4.40440369, -1.63393402, -0.839777112, -0.440318048, -0.317639023, -0.498209715, 0.392442048, 0.773159981, -0.215781361, 0.807532787, -0.548934519))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.275000036))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.25479126, -3.16281509, 3.44329834, -0.839777112, -0.440318048, -0.317639023, -0.359176099, 0.889280796, -0.283147007, 0.407144994, -0.123692013, -0.904949307))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.375))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.254768372, -4.71031952, 0.0886688232, -0.839777112, -0.440318048, -0.317639023, -0.542916894, 0.676767468, 0.497219354, -0.00396692473, 0.590004981, -0.807389855))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.769999981, 0.379999995))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.248703003, -0.550109863, 1.02693939, -0.839777112, -0.440318048, -0.317639023, -0.0140968077, 0.602530479, -0.797971427, 0.542748392, -0.665640414, -0.512198329))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.51103723, -0.142183304, 0.0350189209, 0.590693891, 0.806895792, 0, -0.806895792, 0.590693891, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.512742043, 0.378017426, 0.0350189209, 0.590693891, 0.806895792, 0, -0.806895792, 0.590693891, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.530161381, 0.401000261, 0.0350189209, 0.626516283, -0.779408336, 0, 0.779408336, 0.626516283, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.63999999, 1.25))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0378718376, 0.0777981281, 0.0350189209, 0.999999464, -0.00113200059, 0, 0.00113200059, 0.999999464, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.17000008, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.109251976, 0.347222447, 0.0350189209, -0.840049565, 0.542509735, 0, -0.542509735, -0.840049565, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.22000003, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.164292574, 0.38587141, 0.0350189209, -0.814859867, -0.579657912, 0, 0.579657912, -0.814859867, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.531864166, -0.119204283, 0.0350189209, 0.626516283, -0.779408336, 0, 0.779408336, 0.626516283, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.677970409, -0.173780441, 0.0350189209, -0.58977592, -0.807566881, 0, 0.807566881, -0.58977592, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.17000008, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0874686241, 0.515722513, 0.0350189209, 0.840664089, -0.541557074, 0, 0.541557074, 0.840664089, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(1.10000014, 1.79499996, 1.88999987))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0200042725, 0.0774998665, 4.76837158e-007, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.5, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0350654125, -0.14564538, 0.0350189209, -1.00000012, -1.1920929e-007, 0, 1.1920929e-007, -1, 0, 1.49011612e-008, 8.94069672e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.603888273, 0.2479316, 0.0350189209, -0.627403378, 0.778694451, 0, -0.778694451, -0.627403378, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.605591297, -0.272274256, 0.0350189209, -0.627403378, 0.778694451, 0, -0.778694451, -0.627403378, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.679672718, 0.346423626, 0.0350189209, -0.58977592, -0.807566881, 0, 0.807566881, -0.58977592, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.22000003, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0158153772, 0.468460083, 0.0350189209, 0.814201117, 0.580583036, 0, -0.580583036, 0.814201117, 0, 0, 0, 1))

Main=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Handle",Vector3.new(1.10000014, 2.04500008, 0.959999859))
Mainweld=weld(m,Character["Right Arm"],Main,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.00713443756, 0.0323780775, 0, 1.10000001e-005, -1, 0, 1, 1.10000001e-005, 1, 0, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.265472531, 0.122612, 0.0150299072, -8.88323575e-006, -0.807566881, -0.58977592, -6.4875353e-006, -0.58977592, 0.807566881, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.263792276, -0.397553921, 0.0149993896, -8.88323575e-006, -0.807566881, -0.58977592, -6.4875353e-006, -0.58977592, 0.807566881, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.5, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389951944, 0.056848526, 0.0149841309, 0, 0, -1, -1.10000001e-005, -1, 0, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.423408747, -0.57733357, 0.0149993896, -8.57349187e-006, -0.779408336, 0.626516283, 6.89167928e-006, 0.626516283, 0.779408336, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.930000007, 1.13999987))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977936506, 0.0331380367, -0.00997924805, 1.09999946e-005, 0.999999464, 0.00113200059, 1.24520065e-008, 0.00113200059, -0.999999464, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.249999985, 1.63999999, 0.950000048))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41189158, -0.125176191, 0.0150146484, -1.24520065e-008, -0.00113200059, 0.999999464, -2.00001159e-006, 0.999999464, 0.00113200059, -1, -1.99999704e-006, -1.47160142e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.17000008, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.160142899, 0.115336657, 0.0149993896, -5.957128e-006, -0.541557074, 0.840664089, -2.75269758e-006, 0.840664089, 0.541557074, -1, 9.12029464e-007, -6.49868616e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.22000003, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299387097, 0.304534912, 0.0149993896, -6.37622543e-006, -0.579656839, -0.814860702, -8.96346774e-006, -0.814860702, 0.579656839, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.421707869, -0.0571342707, 0.0150146484, -8.57349187e-006, -0.779408336, 0.626516283, 6.89167928e-006, 0.626516283, 0.779408336, -1, 1.10000001e-005, 0))



Main=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Handle",Vector3.new(1.10000014, 2.04500008, 0.959999859))
Mainweld=weld(m,Character["Left Arm"],Main,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0299987793, 0.00387239456, 0.0199804306, 0, 1.09999992e-005, 1, 1.40000002e-005, 0.999999881, -1.10000001e-005, -1, 1.39999984e-005, -1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.249999985, 1.63999999, 0.950000048))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.411893368, -0.12518096, 0.0149993896, -1.24520065e-008, -0.00114600058, 0.999999464, -2.00001159e-006, 0.999999464, 0.00114600058, -1, -1.99999704e-006, -1.4744014e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.22000003, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299391747, 0.304537058, 0.0149993896, -6.37622543e-006, -0.579645455, -0.814868808, -8.96346774e-006, -0.814868808, 0.579645455, -1, 1.10000001e-005, 1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.17000008, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.160139322, 0.115334034, 0.0149841309, -5.957128e-006, -0.541568816, 0.840656519, -1.75269633e-006, 0.840656519, 0.541568816, -1, 1.75277819e-006, -5.95710389e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.421707153, -0.057138443, 0.0149993896, -8.57348641e-006, -0.779416621, 0.626506031, 6.89168655e-006, 0.626506031, 0.779416621, -1, 1.10000001e-005, 1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.263786316, -0.397557974, 0.0149993896, 2.11676343e-006, -0.807558596, -0.589787245, -6.48753485e-006, -0.589787245, 0.807558596, -1, 2.11685619e-006, -6.48750438e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.5, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389927387, 0.056851387, 0.0149841309, 0, 1.40000002e-005, -1, -1.10000001e-005, -1, -1.40000002e-005, -1, 1.10000001e-005, 1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.265485764, 0.122633219, 0.0149993896, 2.11676343e-006, -0.807558596, -0.589787245, -6.48753485e-006, -0.589787245, 0.807558596, -1, 2.11685619e-006, -6.48750438e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.423420191, -0.577328682, 0.0149841309, -8.57348641e-006, -0.779416621, 0.626506031, 6.89168655e-006, 0.626506031, 0.779416621, -1, 1.10000001e-005, 1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.930000007, 1.13999987))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977935791, 0.0331420898, -0.00999450684, 1.09999946e-005, 0.999999464, 0.00114600058, 1.24520065e-008, 0.00114600058, -0.999999464, -1, 1.10000001e-005, 1.54000007e-010))


Main=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Handle",Vector3.new(1.10000014, 2.04500008, 0.959999859))
Mainweld=weld(m,Character["Right Leg"],Main,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.00713443756, 0.0323780775, 0, 1.10000001e-005, -1, 0, 1, 1.10000001e-005, 1, 0, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.265472531, 0.122612, 0.0150299072, -8.88323575e-006, -0.807566881, -0.58977592, -6.4875353e-006, -0.58977592, 0.807566881, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.263792276, -0.397553921, 0.0149993896, -8.88323575e-006, -0.807566881, -0.58977592, -6.4875353e-006, -0.58977592, 0.807566881, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.5, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389951944, 0.056848526, 0.0149841309, 0, 0, -1, -1.10000001e-005, -1, 0, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.423408747, -0.57733357, 0.0149993896, -8.57349187e-006, -0.779408336, 0.626516283, 6.89167928e-006, 0.626516283, 0.779408336, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.930000007, 1.13999987))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977936506, 0.0331380367, -0.00997924805, 1.09999946e-005, 0.999999464, 0.00113200059, 1.24520065e-008, 0.00113200059, -0.999999464, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.249999985, 1.63999999, 0.950000048))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41189158, -0.125176191, 0.0150146484, -1.24520065e-008, -0.00113200059, 0.999999464, -2.00001159e-006, 0.999999464, 0.00113200059, -1, -1.99999704e-006, -1.47160142e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.17000008, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.160142899, 0.115336657, 0.0149993896, -5.957128e-006, -0.541557074, 0.840664089, -2.75269758e-006, 0.840664089, 0.541557074, -1, 9.12029464e-007, -6.49868616e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.22000003, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299387097, 0.304534912, 0.0149993896, -6.37622543e-006, -0.579656839, -0.814860702, -8.96346774e-006, -0.814860702, 0.579656839, -1, 1.10000001e-005, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.421707869, -0.0571342707, 0.0150146484, -8.57349187e-006, -0.779408336, 0.626516283, 6.89167928e-006, 0.626516283, 0.779408336, -1, 1.10000001e-005, 0))



Main=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Handle",Vector3.new(1.10000014, 2.04500008, 0.959999859))
Mainweld=weld(m,Character["Left Leg"],Main,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0299987793, 0.00387239456, 0.0199804306, 0, 1.09999992e-005, 1, 1.40000002e-005, 0.999999881, -1.10000001e-005, -1, 1.39999984e-005, -1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.249999985, 1.63999999, 0.950000048))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.411893368, -0.12518096, 0.0149993896, -1.24520065e-008, -0.00114600058, 0.999999464, -2.00001159e-006, 0.999999464, 0.00114600058, -1, -1.99999704e-006, -1.4744014e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.22000003, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299391747, 0.304537058, 0.0149993896, -6.37622543e-006, -0.579645455, -0.814868808, -8.96346774e-006, -0.814868808, 0.579645455, -1, 1.10000001e-005, 1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.17000008, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.160139322, 0.115334034, 0.0149841309, -5.957128e-006, -0.541568816, 0.840656519, -1.75269633e-006, 0.840656519, 0.541568816, -1, 1.75277819e-006, -5.95710389e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.421707153, -0.057138443, 0.0149993896, -8.57348641e-006, -0.779416621, 0.626506031, 6.89168655e-006, 0.626506031, 0.779416621, -1, 1.10000001e-005, 1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.263786316, -0.397557974, 0.0149993896, 2.11676343e-006, -0.807558596, -0.589787245, -6.48753485e-006, -0.589787245, 0.807558596, -1, 2.11685619e-006, -6.48750438e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 1.5, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389927387, 0.056851387, 0.0149841309, 0, 1.40000002e-005, -1, -1.10000001e-005, -1, -1.40000002e-005, -1, 1.10000001e-005, 1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.265485764, 0.122633219, 0.0149993896, 2.11676343e-006, -0.807558596, -0.589787245, -6.48753485e-006, -0.589787245, 0.807558596, -1, 2.11685619e-006, -6.48750438e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.519999981, 1.23000002))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.423420191, -0.577328682, 0.0149841309, -8.57348641e-006, -0.779416621, 0.626506031, 6.89168655e-006, 0.626506031, 0.779416621, -1, 1.10000001e-005, 1.54000007e-010))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.930000007, 1.13999987))
Partweld=weld(m,Main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.977935791, 0.0331420898, -0.00999450684, 1.09999946e-005, 0.999999464, 0.00114600058, 1.24520065e-008, 0.00114600058, -0.999999464, -1, 1.10000001e-005, 1.54000007e-010))


end



Fragemntation = function()
for X=0,10 do
	for Y=0,10 do
		wait()
		local CF = CFrame.new(-X,1,-Y)
		local Num = (X+Y)/(10*10)
		newParticle{Frames = 20,StartTransparency = 0,EndTransparency = 1,StartCFrame = CF,EndCFrame = CF,StartSize = Vector3.new(5,5,5),
		EndSize = Vector3.new(10,10,10), EndColor = Color3.new(Num,Num,Num)}
	end
end
end


ob1d = function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  else
    if attack == false and attacktype == 2 then
      attacktype = 3
      attacktwo()
    else
      if attack == false and attacktype == 3 then
        attacktype = 1
        attackthree()
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == "z" and co1 <= cooldown1 then
    cooldown1 = 0
    DIVIDE()
  else
    if attack == false and k == "x" and co2 <= cooldown2 then
      cooldown2 = cooldown2 / 2
      Slashy()
    else
        if attack == false and k == "c" and co3 <= cooldown3 then
          cooldown3 = 0
          spinattack()
        else
          if attack == false and k == "v" and co4 <= cooldown4 then
            cooldown4 = 0
                    Laz0r("Really red")
                    Armour()
                    dmgMultipyer = 16
                    wait(40)
                    Laz0r("Teal")
                     dmgMultipyer = 0
        end
      end
    end
  end
end

ds = function(mouse)
end

s = function(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
end

s(mouse)



local walk = 0
local walkforw = false
updateskills = function()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.033333333333333
  end
end



while 1 do
  swait()
  updateskills()
  bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Part") then
      v.Material = "SmoothPlastic"
    else
      if v:IsA("Hat") then
        v:WaitForChild("Handle").Material = "SmoothPlastic"
      end
    end
  end
  walk = walk + 1.2
  if 15 - 5 * (Humanoid.WalkSpeed / 16) <= walk then
    walk = 0
    if walkforw == true then
      walkforw = false
    else
      if walkforw == false then
        walkforw = true
      end
    end
  end
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(-130), math.rad(115), math.rad(205)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.5, -0.4) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-30)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.8, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(20)), 0.3)
        handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(130), math.rad(120), math.rad(205)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-60)), 0.3)
          RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(30)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1, -0.3) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-20)), 0.3)
          handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
        end
      else
        if (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos((sine) / 25)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos((sine) / 23)), math.rad(0), math.rad(20)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.55 + 0.05 * math.cos(sine / 15) + -math.sin(sine / 15) / 15, 0) * angles(math.rad(15), math.rad(0), math.rad(15 + 5 * math.cos(sine / 15))), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10 - 5 * math.cos((sine) / 23))), 0.3)
            RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * RHCF * angles(math.rad(-3 - 1 * math.cos((sine) / 25)), math.rad(20), math.rad(-7)), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(-3 - 1 * math.cos((sine) / 25)), math.rad(20), math.rad(5)), 0.3)
            handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
            end
        else
          if 2 < (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(2 * math.cos((sine) / 7))), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos((sine) / 23)), math.rad(0), math.rad(-2 * math.cos((sine) / 7))), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(100), math.rad(110), math.rad(-200)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30 * math.cos((sine) / 10)), math.rad(0), math.rad(-5)), 0.3)
              RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos((sine) / 8) / 2, -0.03 + math.sin((sine) / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin((sine) / 8)), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos((sine) / 8) / 2, -0.03 - math.sin((sine) / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin((sine) / 8)), 0.3)
              handleweld.C0 = clerp(handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
            end
          end
        end
      end
    end
  end
  if 0 < #Effects then
    for e = 1, #Effects do
      if Effects[e] ~= nil then
        local Thing = Effects[e]
        if Thing ~= nil then
          local Part = Thing[1]
          local Mode = Thing[2]
          local Delay = Thing[3]
          local IncX = Thing[4]
          local IncY = Thing[5]
          local IncZ = Thing[6]
          if Thing[1].Transparency <= 1 then
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            else
              if Thing[2] == "Block2" then
                Thing[1].CFrame = Thing[1].CFrame
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Cylinder" then
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Blood" then
                    Mesh = Thing[7]
                    Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Elec" then
                      Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Shatter" then
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                          Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                          Thing[6] = Thing[6] + Thing[5]
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            Part.Parent = nil
            table.remove(Effects, e)
          end
        end
      end
    end
  end
end