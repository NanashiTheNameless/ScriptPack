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
local skillcolorscheme = BrickColor.new("Really black").Color
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


Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0299681127, 0.0631451607, 0.93859005, 0, 0, 1, 1, 0, 0, 0, 0.999999881, 0))

FakeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,1,1,"Really black","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FakeHandleWeld=weld(m,FakeHandleWeld,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0299681127, 0.0631451607, 0.93859005, 0, 0, 1, 1, 0, 0, 0, 0.999999881, 0))


mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 6, 6))
Handle1=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","Handle1",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handle1weld=weld(m,Handle,Handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.98023224e-006, 0.674997807, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Handle1,"","",Vector3.new(0, 0, 0),Vector3.new(1.14999998, 1, 1.25))
Handle1=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0.10000000149012,0,"Really black","Handle1",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handle1weld=weld(m,Handle,Handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.601040363, -0.601036072, -9.53674316e-007, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",Handle1,"","",Vector3.new(0, 0, 0),Vector3.new(1.25, 1.25, 0.500999987))
Hilt=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","Hilt",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hiltweld=weld(m,Handle,Hilt,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.624999523, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Hilt,"","",Vector3.new(0, 0, 0),Vector3.new(1.14999998, 1, 1.25))
ParticleEmitter=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0.10000000149012,1,"Really black","ParticleEmitter",Vector3.new(0.200000003, 3.79999995, 0.200000003))
ParticleEmitterweld=weld(m,Handle,ParticleEmitter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1920929e-006, -2.74999762, -2.98023224e-006, 0, 0, -1, 0, 1, 0, 1, 0, 0))
mesh("BlockMesh",ParticleEmitter,"","",Vector3.new(0, 0, 0),Vector3.new(0, 0, 0))
c=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0.10000000149012,0,"Really black","c",Vector3.new(0.200000003, 0.200000003, 0.200000003))
cweld=weld(m,Handle,c,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.795496941, 0.795491219, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",c,"","",Vector3.new(0, 0, 0),Vector3.new(1.75, 1.75, 0.500999987))
c=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","c",Vector3.new(0.200000003, 0.200000003, 0.200000003))
cweld=weld(m,Handle,c,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.795496941, 0.795491219, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",c,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1.5, 0.504000008))
c=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Really black","c",Vector3.new(0.200000003, 0.200000003, 0.200000003))
cweld=weld(m,Handle,c,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.795496941, 0.795491219, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",c,"","",Vector3.new(0, 0, 0),Vector3.new(0.649999976, 0.649999976, 0.507000029))
c=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.10000000149012,0,"Really black","c",Vector3.new(0.200000003, 0.200000003, 0.200000003))
cweld=weld(m,Handle,c,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.795496941, 0.795491219, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",c,"","",Vector3.new(0, 0, 0),Vector3.new(1.35000002, 1.35000002, 0.504999995))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.949998379, 0.0749989748, -9.53674316e-007, 0, 1, 0, 0, 0, 1, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.949996471, -0.0750010014, -2.02655792e-006, 0, 1, 0, 0, 0, 1, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.75, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.775868416, 0.077555418, -2.02655792e-006, 0, 0.984807968, 0.173647001, 0, -0.173647001, 0.984807968, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.775867939, -0.0775574446, -2.02655792e-006, 0, 0.984807968, -0.173647001, 0, 0.173647001, 0.984807968, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.79999495, 0.0749999285, -2.02655792e-006, 0, 1, 0, 0, 0, 1, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(17, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.79999495, -0.0750000477, -2.98023224e-006, 0, 1, 0, 0, 0, 1, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(17, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13959432, 1.19210529, -9.53674316e-007, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13959455, -1.19210577, -2.02655792e-006, 0, 0.707109332, -0.707104385, 0, 0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.49315012, 1.54565716, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.49314976, -1.54565704, -2.02655792e-006, 0, 0.707109332, -0.707104385, 0, 0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.84670651, 1.89920998, -2.98023224e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.84670687, -1.8992089, -2.02655792e-006, 0, 0.707109332, -0.707104385, 0, 0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.20026016, 2.25276089, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.20026064, -2.25276136, -2.02655792e-006, 0, 0.707109332, -0.707104385, 0, 0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.55381083, -2.60631227, -2.02655792e-006, 0, 0.707109332, -0.707104385, 0, 0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.55381536, 2.60631227, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.90736866, 2.95986462, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.90736771, -2.95986509, -2.02655792e-006, 0, 0.707109332, -0.707104385, 0, 0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.18137264, 3.2338655, -2.02655792e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
d=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.10000000149012,0,"Really black","d",Vector3.new(0.200000003, 0.200000003, 0.200000003))
dweld=weld(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.18137026, -3.23386741, -2.02655792e-006, 0, 0.707109332, -0.707104385, 0, 0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",d,"","",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.0500000007, 0.503000021))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -0.718766689, -0.016694665, 0.866025984, 0, 0.499998987, 0.211307287, 0.906309247, -0.365995973, -0.45315364, 0.422615409, 0.784887314))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.499000013, 1, 1.25))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.78813934e-006, -0.764952421, -0.127159119, -0.866025984, 0, -0.499998987, -0.321391523, 0.766047299, 0.556667924, 0.383022815, 0.642784297, -0.663416803))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.497999996, 1, 1.5))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1920929e-007, -0.718767166, -0.0166974068, -0.866025984, 0, -0.499998987, -0.211307287, 0.906309247, 0.365995973, 0.45315364, 0.422615409, -0.784887314))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.499000013, 1, 1.25))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -0.764955044, -0.127158165, 0.866025984, 0, 0.499998987, 0.321391672, 0.766047001, -0.556668162, -0.383022726, 0.642784655, 0.663416624))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.497999996, 1, 1.5))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.21865082e-006, -0.718008518, 0.0974549651, 0.866025984, 0, 0.499998987, 0.0868233219, 0.984807968, -0.150382817, -0.492402971, 0.173647016, 0.852869272))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1.25))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.96046448e-007, -0.718010426, 0.0974559784, -0.866025984, 0, -0.499998987, -0.0868233219, 0.984807968, 0.150382817, 0.492402971, 0.173647016, -0.852869272))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1.25))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.32458115e-006, -0.718769073, -0.0166960955, 0.866025984, 0, -0.499998987, -0.211307287, 0.906309247, -0.365995973, 0.45315364, 0.422615409, 0.784887314))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.499000013, 1, 1.25))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.32458115e-006, -0.76495266, -0.127157688, -0.866025388, 0, 0.500000238, 0.321392417, 0.766047001, 0.556667745, -0.38302362, 0.642784595, -0.663416088))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.497999996, 1, 1.5))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07288361e-006, -0.76495266, -0.127162218, 0.866025984, 0, -0.499998987, -0.321392179, 0.766046166, -0.556669056, 0.383022338, 0.642785668, 0.663415909))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.497999996, 1, 1.5))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.55651093e-007, -0.718766689, -0.0166959763, -0.866025388, 0, 0.500000238, 0.211308002, 0.906309009, 0.365996003, -0.453154624, 0.422615826, -0.784886479))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.499000013, 1, 1.25))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.31130219e-006, -0.718009472, 0.097455442, 0.866025984, 0, -0.499998987, -0.0868229121, 0.984808207, -0.150382087, 0.49240303, 0.173646137, 0.852869391))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1.25))
h=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Really black","h",Vector3.new(0.200000003, 0.200000003, 0.200000003))
hweld=weld(m,Handle,h,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.66893005e-006, -0.718008041, 0.0974588394, -0.866025388, 0, 0.500000238, 0.0868235305, 0.984807968, 0.150382683, -0.492404163, 0.173646986, -0.852868617))
mesh("SpecialMesh",h,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1.25))
Hitbox=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Medium stone grey","Hitbox",Vector3.new(5.86999989, 1, 1.9799999))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.91812801, -0.0785925388, 0.0599908978, 0, 1, 0, 0, 0, 1, 1, 0, 0))
Blade111=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0.10000000149012,0,"Really black","Blade111",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Blade111weld=weld(m,Handle,Blade111,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 2.69999647, -2.02655792e-006, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("BlockMesh",Blade111,"","",Vector3.new(0, 0, 0),Vector3.new(1, 18, 0.5))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0.10000000149012,0,"Really black","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,Handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.774998188, -2.02655792e-006, 0, 0, 1, 0, -1, 0, 1, 0, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Torso,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.25, 0.5))
Blade1=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0.10000000149012,0,"Really black","Blade1",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Blade1weld=weld(m,Handle,Blade1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.18198919, 3.18196392, -3.93390656e-006, 0, 0.707109332, 0.707104385, 0, -0.707104385, 0.707109332, 1, 0, 0))
mesh("BlockMesh",Blade1,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.500999987))


local function setupPart(part)
    part.Anchored = true
    part.FormFactor = 'Custom'
    part.CanCollide = false
    part.BrickColor = BrickColor.new("Really white")
    part.Material = "Neon"
    part.TopSurface = 'SmoothNoOutlines'
    part.BottomSurface = 'SmoothNoOutlines'
    part.FrontSurface = 'SmoothNoOutlines'
    part.BackSurface = 'SmoothNoOutlines'
    part.LeftSurface = 'SmoothNoOutlines'
    part.RightSurface = 'SmoothNoOutlines'
end

function CFrameFromTopBack(at, top, back)
    local right = top:Cross(back)
    return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateTriangle(parent, a, b, c)
    local this = {}
    local mPart1 = Instance.new('WedgePart')
    setupPart(mPart1)
    local mPart2 = Instance.new('WedgePart')
    setupPart(mPart2)
    function this:Set(a, b, c) --[[ edg1 A ------|------>B --. '\ | / \ \part1|part2/ | \ cut / / Direction edges point in: edg3 \ / edg2 / (clockwise) \ / |/ \<- / ` \ / C --]]
        local ab, bc, ca = b-a, c-b, a-c local abm, bcm, cam = ab.magnitude, bc.magnitude, ca.magnitude
        local edg1 = math.abs(0.5 + ca:Dot(ab)/(abm*abm))
        local edg2 = math.abs(0.5 + ab:Dot(bc)/(bcm*bcm))
        local edg3 = math.abs(0.5 + bc:Dot(ca)/(cam*cam))
        if edg1 < edg2 then
            if edg1 < edg3 then
                -- nothing to change
            else
                a, b, c = c, a, b
                ab, bc, ca = ca, ab, bc
                abm = cam
            end
        else
            if edg2 < edg3 then
                a, b, c = b, c, a
                ab, bc, ca = bc, ca, ab
                abm = bcm
            else 
                a, b, c = c, a, b
                ab, bc, ca = ca, ab, bc
                abm = cam
            end
        end

        local len1 = -ca:Dot(ab)/abm local len2 = abm - len1 local width = (ca + ab.unit*len1).magnitude
        local maincf = CFrameFromTopBack(a, ab:Cross(bc).unit, -ab.unit)
        
        mPart1.Parent = parent
        mPart1.Size = Vector3.new(1,1,1)
        mPart1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
        local Mesh = Instance.new("SpecialMesh",mPart1)
        Mesh.MeshType = "Wedge"
        Mesh.Scale = Vector3.new(0.005, width, len1)

        mPart2.Parent = parent
        mPart2.Size = Vector3.new(1,1,1)
        mPart2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
        local Mesh = Instance.new("SpecialMesh",mPart2)
        Mesh.MeshType = "Wedge"
        Mesh.Scale = Vector3.new(0.005, width, len2)
    end

    function this:SetProperty(prop, value)
        mPart1[prop] = value
        mPart2[prop] = value
    end
    
    function this:GetProperty(prop)
        return mPart1[prop]
    end
    
    this:Set(a, b, c)
    function this:Destroy()
        mPart1:Destroy()
        mPart2:Destroy()
    end
    return this
end
function CreateTrail(Adornee, Axis)
    local Axis = Axis or "X"
    
    local trail = {}
    trail.Triangles = {}
    trail.Adornee = Adornee
    trail.Axis = Axis
    
    local L1, L2
    
    function trail:Fade(speed)
        local speed = speed or 0.01     
        
        for n, v in pairs(trail.Triangles) do
            v:SetProperty("Transparency", v:GetProperty("Transparency") + speed)
            if v:GetProperty("Transparency") >= 1 then
                v:Destroy()
                
                table.remove(trail.Triangles, n)
            end
        end
    end
    
    function trail:Update()
        local adornee = trail.Adornee
        
        local axis = trail.Axis
        local Size = Vector3.new((axis == "X" and adornee.Size.X or 0), (axis == "Y" and adornee.Size.Y or 0), (axis == "Z" and adornee.Size.Z or 0))
        local P1 = adornee.CFrame * CFrame.new(Size / 2)
        local P2 = adornee.CFrame * CFrame.new(Size / -2)
        
        if L1 and L2 then
            table.insert(trail.Triangles, CreateTriangle(adornee, L1.p, L2.p, P1.p))
            table.insert(trail.Triangles, CreateTriangle(adornee, P1.p, P2.p, L2.p))
        end
        
        L1, L2 = P1, P2
    end
    
    return trail
end


Ssongs = {
378387996;203275374;303592872;179281636;357375770;346175829;151514610;160536628;60536666;158929777;165520893;160542922;179282324;144043274;168614529;186849544;335631255;335631297;342455387;342455399;209567483;209567529;162914123;162914203;320473062;286415112;190454307;155968128;160453802;276963903;270655227;244143404;246184492;245121821;242545577;247241693;248062278;247236446;256851659;256848383;342455399;209567483;209567529;162914123;162914203;320473062;286415112;190454307;155968128;160453802;276963903;270655227;244143404;246184492;245121821;242545577;247241693;248062278;247236446;256851659;256848383;306431437;348690251;348541501;321185592;305976780;302580452;302205297;299796054;297799220;295753229;295753229;293860654;293612495;293861765;293375555;293376196;293012202;293011823;290524959;306431437;348690251;348541501;321185592;305976780;302580452;302205297;299796054;297799220;295753229;295753229;293860654;293612495;293861765;293375555;293376196;293012202;293011823;290524959;
}


    local sou = Instance.new("Sound", Hitbox)
    sou.Volume = 1
    sou.Pitch = 1
    sou.SoundId = "http://roblox.com/asset/?id="..Ssongs[math.random(1,#Ssongs)]
    sou:play()


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
      SphereEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
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
      SphereEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
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
      SphereEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
     end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
      SpecialEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      CylinderEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RingEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
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

attackone = function()
  attack = true
  Humanoid.WalkSpeed = 0
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 1, 3, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(100), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-75)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(100), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4, -0.3) * angles(math.rad(30), math.rad(100), math.rad(-20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), 0.5)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), 0.5)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(100), math.rad(3)), 0.5)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end


attacktwo = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 1, 5, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, 0) * angles(math.rad(-90), math.rad(60), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -0.5, 0) * RHCF * angles(math.rad(-3), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(50)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.9)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.25) * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0.1) * angles(math.rad(-90), math.rad(-20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -0.9, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -0.7, 0) * LHCF * angles(math.rad(-2), math.rad(30), math.rad(-10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end

attackthree = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 1, 10, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(10)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
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
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  ref = CreatePart(workspace, "SmoothPlastic", 0, 0, BrickColor.new("Really black"), "ref", Vector3.new())
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
      BlockEffect(BrickColor.new("Really black"), ref.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07, 1)
      SphereEffect(BrickColor.new("Really black"), ref.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07)
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
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 2, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-95)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(-20)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -25)
  MagniDamage(ref, 100, 1, 40, 10, "Knockdown")
  BlockEffect(BrickColor.new("Really black"), ref.CFrame, 150, 150, 150, 15, 15, 15, 0.07, 1)
  SphereEffect(BrickColor.new("Really black"), ref.CFrame, 150, 150, 150, 51, 51, 51, 0.07)
  SphereEffect(BrickColor.new("Really black"), ref.CFrame, 20, 100, 20, 10, 100, 10, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(0)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  ref.Parent = nil
  Humanoid.WalkSpeed = 15
  attack = false
  attackready = false
end



Slashy = function()
  attack = true
  Humanoid.WalkSpeed = 0
  
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 1, 10, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
    hit.Velocity = Vector3.new(0,100, 0)
  end
)
		for i = 0, 1, 0.05 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1, .5, -.7) * angles(math.rad(40), math.rad(80), math.rad(-50)), .3)
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), .3)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(20), math.rad(-20), math.rad(50)), .3)
		MagniDamage(RootPart, 10, 10, 10, 10, "Normal")
		end
    wait(1)
    con:disconnect()
    attack = false
end


function DIVIDE()
	attack = true
		Character.Humanoid.Jump = true
		Torso.Velocity = Vector3.new(0,100, 0)
		for i = 0, 1, 0.05 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.5) * angles(6 * i, math.rad(0), math.rad(0)), .2)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.2, 1, .7) * angles(math.rad(180), math.rad(80), math.rad(-80)), .3)
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-20)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(20)), .3)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-10), math.rad(10), math.rad(50)), .3)
		end
		for i = 0, 1, 0.017 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.5) * angles(math.rad(50), math.rad(0), math.rad(0)), .2)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.2, 1, -1) * angles(math.rad(180), math.rad(80), math.rad(-80)), .3)
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-50)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(50)), .2)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-10), math.rad(10), math.rad(50)), .3)
		end
		for i = 0, 1, 0.05 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1, .5, -.7) * angles(math.rad(40), math.rad(80), math.rad(-50)), .3)
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), .3)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(20), math.rad(-20), math.rad(50)), .3)
		MagniDamage(RootPart, 10, 10, 10, 1e9, "Normal")
		end
	attack = false
end



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
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
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
      Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
    end
  end
  Humanoid.WalkSpeed = 15
  attack = false
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
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(160), math.rad(0), math.rad(10)), 0.3)
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
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(260), math.rad(0), math.rad(0)), 0.3)
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
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(400), math.rad(0), math.rad(0)), 0.3)
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
    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(260), math.rad(0), math.rad(0)), 0.3)
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
law.Part1 = Handle
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
law1.Part1 = Handle
s1 = Instance.new("Sound",Handle)
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
s = Instance.new("Sound",Handle)
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
rngw.Part1 = Handle
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
cylinderOpen(Handle.CFrame)

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
    Hate()
    wait(.3)
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
                    dmgMultipyer = 16
                    wait(20)
                    Laz0r("Really black")
                     dmgMultipyer = 3
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

TrailThingy = CreateTrail(Blade111,"Y")
TrailThingy1 = CreateTrail(Blade,"Y")
TrailThingy2 = CreateTrail(Blade1,"Y")

--[[TrailThingy3 = CreateTrail(RightArm,"Y")
TrailThingy4 = CreateTrail(RightLeg,"Y")
TrailThingy5 = CreateTrail(LeftArm,"Y")
TrailThingy6 = CreateTrail(LeftLeg,"Y")]]

while 1 do
  swait()
TrailThingy:Update()
TrailThingy:Fade(0.05)

TrailThingy1:Update()
TrailThingy1:Fade(0.05)

TrailThingy2:Update()
TrailThingy2:Fade(0.05)





--[[TrailThingy3:Update()
TrailThingy3:Fade(0.08)

TrailThingy4:Update()
TrailThingy4:Fade(0.08)

TrailThingy5:Update()
TrailThingy5:Fade(0.08)

TrailThingy6:Update()
TrailThingy6:Fade(0.08)]]
  
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
        Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
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
          Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
        end
      else
        if (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(100), math.rad(110 - 3 * math.cos((sine) / 23)), math.rad(205 + 3 * math.cos((sine) / 23))), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
          Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
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
              Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
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