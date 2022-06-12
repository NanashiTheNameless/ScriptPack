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


local co1 = 3
local co2 = 3
local co3 = 3
local co4 = 3
local cooco = 3
local cooldown1 = 3
local cooldown2 = 3
local cooldown3 = 3
local cooldown4 = 3
local coolcool = 3
local maxEnergy = 20
local Energy = 100
local skill1stam = 10
local skill2stam = 30
local skill3stam = 40
local skill4stam = 60
local recovermana = 5
local skillcolorscheme = Character["Torso"].BrickColor.Color
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
    local Damage = math.random(minim, maxim)
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


handle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Handle",Vector3.new(0.200000003, 1.06998396, 0.217137367))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.780001402, -0.0400540233, -0.224309444, 0, -0.999999881, 0, 0, 0, 1, -1, 0, 0))
mesh("SpecialMesh",handle,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0179617442, 0.412164241, 0.0416160636))
FakeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","FakeHandle",Vector3.new(0.200000003, 1.06998396, 0.217137367))
FakeHandleWeld=weld(m,handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.201812744, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",FakeHandle,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0179617442, 0.412164241, 0.0416160636))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.618053555, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.692440987, 3.81469727e-006, -1.10055923, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.629501164))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.297582209, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08339119, 0.0475130081, 0.623767018, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.297582209, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08339119, -0.0475053787, 0.623767018, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.515045226, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.287946224, 0.0475077629, 0.932790935, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.686726034))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.24753904, 0.625581264, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.746583045, 0.915634453))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.549381554, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.957495213, 0.0475068092, 0.795445025, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.343362987))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.263244897))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, -1.04724193, 1.03188705, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.542969406, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.434926629, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.784000933, -2.86102295e-006, -0.928881168, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.286138207))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07013488, 0.0475077629, -0.448181152, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.686727583, 0.135742366, 0.97286427))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.206018344))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475077629, 0.846952021, -0.408116341, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.240354285, 0.200000003, 0.331918091))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.984296024, -9.53674316e-007, -0.184934139, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.801180303))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.841227949, 0, -0.202104092, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909537, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475068092, 0.715329945, -0.757202148, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.743956268))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.217463195))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475087166, -0.932792008, 0.0783009529, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.814454198, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.286136419))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.784002006, -0.45962429, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.407227099, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.240354717))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475087166, 0.846950948, -0.00963401794, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 0.715328991, -0.671361446, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.407227099, 0.686729074))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.320472002))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475077629, -1.07013702, -0.190657139, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.814454198, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.412035584, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.887011945, -1.90734863e-006, -0.820153236, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.801182747))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475068092, 0.795445025, -0.59696722, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.407227099, 0.858410656))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.339355856, 0.686725557))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475068092, -0.995742023, 0.888823986, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.528299332, 0.0475077629, 0.85839504, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.171686471, 0.135742366, 0.0572271682))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.721063256, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.871654034, 0.0475068092, 0.841229022, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.114454322))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.400590986, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03188419, 0.0475130081, 0.715332985, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.400590986, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03188801, -0.0475053787, 0.715332985, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.623769999, 3.81469727e-006, -0.883100033, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.572272539, 0.339355886, 0.171683878))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.721063256, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.87165308, 0.0475130081, 0.841232002, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.114454322))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475053787, 0.715330005, -0.757200241, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.743956268))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.549381554, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.957494259, -0.0475053787, 0.795450032, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.343362987))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, 0.715332031, -0.671358109, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.407227099, 0.686729074))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475120544, 0.715330005, -0.757200241, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.743956268))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.434926629, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.784004986, 3.81469727e-006, -0.928880215, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.286138207))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475120544, 0.795446992, -0.596964359, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.407227099, 0.858410656))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.286136419))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 0.784003019, -0.459622383, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.407227099, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.721063256, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.87165308, -0.0475053787, 0.841232002, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.114454322))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475068092, 0.795446992, -0.596964359, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.407227099, 0.858410656))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.549381554, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.957494259, 0.0475130081, 0.795450032, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.343362987))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.549380839, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.72677803, 3.81469727e-006, -0.997550011, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.400592566))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475053787, 0.623769999, -0.883100033, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.51504755))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, 0.623769999, -0.802983284, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.678711832, 0.629501939))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.240354717))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475111008, 0.846949995, -0.00963592529, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.320472002))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475111008, -1.07013798, -0.19066143, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.814454198, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.818340003, 0.255706787, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.542969465, 0.572271407))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -1.13881302, 0.808703423, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.542969406, 0.915634453))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -1.24754298, 0.625576019, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.746583045, 0.915634453))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.206018344))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475120544, 0.846953988, -0.408119202, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.339355856, 0.686725557))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475130081, -0.995742023, 0.888819218, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475101471, 0.846953034, 0.158426762, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.20361349, 0.286135525))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.217463195))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475101471, -0.932793021, 0.0783076286, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.814454198, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.515045226, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.287940025, 0.0475111008, 0.932793021, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.686726034))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07014, 0.0475120544, -0.448176384, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.686727583, 0.135742366, 0.97286427))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.263244897))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -1.04724801, 1.03188705, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.542969406, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.28760004, -0.442451, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484643, 0.915634453))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475053787, 0.42919901, -1.03761244, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.678711832, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.812626302, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.63849115, -0.0475034714, 0.52076304, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.228909686, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11772823, 0.0475130081, 0.532208025, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475053787, 0.532209039, -0.968938351, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.36625433))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-006, -0.606606007, 2.42249203, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.475097954, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.394861996, -0.997555256, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.678711832, 0.400593191))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475130081, 0.532209039, -0.968938351, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(1.07587111, 0.200000003, 0.263244927))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.70143747, 4.76837158e-006, -0.51504302, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.339355856, 0.81262517))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475139618, -0.709610999, 1.6384902, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.228909686, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11772823, -0.0475053787, 0.532208025, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475130081, 0.623769999, -0.883100033, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.51504755))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.812626302, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.6384902, 0.0475139618, 0.520761013, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475130081, 0.42919901, -1.03761244, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.678711832, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.509316027, -0.911711216, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.678711832, 0.457820415))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.420801163, 1.07587099))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-006, -0.824064016, 1.70143938, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.339355856, 0.81262517))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475034714, -0.709609985, 1.63849211, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.354808271))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475158691, -0.520763993, 2.22220135, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969406, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.320470005, 3.81469727e-006, -1.24934721, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.629499793, 0.339355886, 0.51504451))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475053787, 0.326192021, -1.10628223, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-006, -1.3122983, -0.366254002, -1, 0, 0, 0, 0, -1, 0, -1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.135742366, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.354808271))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475025177, -0.520763993, 2.22220135, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969406, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26651812, 0.0475139618, 0.320466995, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.343367934, 0.135742366, 0.629498899))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.366253734))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.47498402, 7.15255737e-006, 2.42249203, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.915634692, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.360529006, 3.81469727e-006, -1.07766819, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909537, 0.339355886, 0.400592566))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.314745009, 3.81469727e-006, -1.15778208, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.686726868, 0.339355886, 0.400592566))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.15206337, 0.0475130081, 0.42919901, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.801185369, 0.135742366, 0.572271645))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18640041, -0.047504425, 0.326194018, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.457822293, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.629499555, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.54692936, 0.0475139618, 0.429200023, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.537936091, 0.200000003, 0.217463255))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.13063812, 0.0475158691, 0.366251022, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.629499555, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.54692936, -0.047504425, 0.429200023, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18640041, 0.0475130081, 0.326194018, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.457822293, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.15206337, -0.047504425, 0.42919901, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.801185369, 0.135742366, 0.572271645))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.291856021, -1.0776701, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.542969465, 0.400593191))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475139618, -1.3122983, -0.366254002, -1, 0, 0, 0, 0, -1, 0, -1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742366, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475130081, 0.326192021, -1.10628223, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.297582209, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.083395, 0.0475068092, 0.623763978, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475120544, 0.623766959, -0.883102417, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.51504755))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.320472002))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475101471, -1.07013607, -0.190658092, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.814454198, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.528299332, -0.0475111008, 0.85839504, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.171686471, 0.135742366, 0.0572271682))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475087166, 0.846952975, 0.158420563, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.20361349, 0.286135525))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.206018344))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475111008, 0.846952021, -0.408116341, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07013488, -0.0475111008, -0.448181152, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.686727583, 0.135742366, 0.97286427))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.240354717))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475101471, 0.846950948, -0.00963401794, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.339355856, 0.81262517))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.047504425, -0.709603012, 1.63849211, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475068092, 0.623766959, -0.883102417, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.51504755))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.515045226, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.287946224, -0.0475101471, 0.932790935, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.686726034))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.297582209, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08339214, -0.0475120544, 0.623763978, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.618053555, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.692437947, -2.86102295e-006, -1.10055923, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.629501164))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.217463195))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475087166, -0.932792008, 0.0783009529, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.814454198, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.420801163, 1.07587099))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.824060023, 1.70144033, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.812626302, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.63849306, -0.0475130081, 0.520755947, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475120544, 0.532205045, -0.968938351, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475068092, 0.532205045, -0.968938351, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(1.07587111, 0.200000003, 0.263244927))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.70144033, -3.81469727e-006, -0.515032947, 0, 0, -1, -1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.812626302, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.63849306, 0.047504425, 0.520755947, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.36625433))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, -0.606597006, 2.42249393, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.475097954, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.228909686, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11772919, -0.0475120544, 0.532203019, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475120544, 0.429197013, -1.03760815, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.678711832, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.15206432, 0.0475068092, 0.42919594, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.801185369, 0.135742366, 0.572271645))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.15206432, -0.0475120544, 0.42919594, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.801185369, 0.135742366, 0.572271645))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475068092, 0.429194987, -1.03761435, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.678711832, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, 0.394859016, -0.997553349, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.678711832, 0.400593191))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.228909686, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.11772919, 0.0475068092, 0.532203019, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.354808271))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475149155, -0.52075702, 2.22220039, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969406, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.339355856, 0.81262517))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475130081, -0.709600985, 1.63849211, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, 0.509313047, -0.91171217, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.678711832, 0.457820415))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.354808271))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475034714, -0.52075702, 2.22220039, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969406, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475130081, -1.31229639, -0.366244018, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742366, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475120544, 0.326185048, -1.10628223, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18640041, -0.0475120544, 0.326186955, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.457822293, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475068092, 0.326185048, -1.10628223, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475053787, -1.31229639, -0.366244018, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742366, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, -1.31229639, -0.366244018, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.135742366, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26651812, -0.0475130081, 0.320465028, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.343367934, 0.135742366, 0.629498899))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.629499555, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.54693031, -0.0475130081, 0.429194033, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.360523045, -2.86102295e-006, -1.0776701, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909537, 0.339355886, 0.400592566))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26651812, 0.0475053787, 0.320465028, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.343367934, 0.135742366, 0.629498899))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18640423, 0.0475053787, 0.326186001, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.457822293, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.320463002, -2.86102295e-006, -1.24935007, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.629499793, 0.339355886, 0.51504451))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.314742982, -2.86102295e-006, -1.15778637, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.686726868, 0.339355886, 0.400592566))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.629499555, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.54693127, 0.0475053787, 0.429194987, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.366253734))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.474973023, -5.7220459e-006, 2.42249775, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.915634692, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.400590301, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06441188, -9.53674316e-007, -0.442455292, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.915637076))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475087166, 0.846952975, 0.158420563, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.20361349, 0.286135525))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.549380839, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.726774991, -2.86102295e-006, -0.997554302, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.400592566))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.28759599, -0.442459106, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484643, 0.915634453))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.331917435))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.18458796, -0.184937, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.950196505, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.43492651, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.967125952, -1.90734863e-006, -0.659918308, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.572274029))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.400590986, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03188944, 0.0475068092, 0.715326011, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.32047224, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02435493, -1.90734863e-006, -0.56835413, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.343365371))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.13880801, 0.808707237, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.542969406, 0.915634453))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.339355856, 0.686725557))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475120544, -0.995742023, 0.888823986, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 0.818337023, 0.255709648, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.542969465, 0.572271407))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.721063256, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.871654034, -0.0475120544, 0.841229022, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.114454322))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.549381554, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.957495213, -0.0475120544, 0.795445025, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.343362987))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.400590986, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.03188944, -0.0475120544, 0.715326011, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.457817316))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.343363076, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.921346009, -1.90734863e-006, -0.728590012, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.114456721))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475111008, 0.715331018, -0.757200241, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.542969465, 0.743956268))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.274691015))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.795443952, -0.0611376762, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484703, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475111008, 0.795445025, -0.59696722, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.407227099, 0.858410656))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 0.623766959, -0.802986145, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.678711832, 0.629501939))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.623766959, -1.90734863e-006, -0.883102417, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.572272539, 0.339355886, 0.171683878))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.285058975, 0.331917435))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.984296024, 0.146975517, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.542969167, 3.86855936))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.28746033e-005, -0.337642014, 4.53987694, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.480707973))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.320471019, 5.7220459e-006, 2.10202503, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.629499793, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.047504425, -0.280408025, 1.33518744, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.271484703, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475034714, 1.85022974, 0.30330202, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742366, 0.114457399))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.366504341, 2.86136341))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.047498703, -0.320475996, 3.83026695, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77011156, -0.0475034714, 0.274691015, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.915635586, 0.135742366, 0.171681494))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.148792028, -0.047501564, -2.49689007, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.171683058, 0.135742366, 0.97286427))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.400590003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475158691, 0.171680987, -2.19930744, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.746583045, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.120178998, 0.0475158691, -2.46255016, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.114455901, 0.135742366, 0.62949878))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 1.85022974, 0.30330202, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.135742366, 0.114457399))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475034714, -0.274688005, -1.64421606, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.148792028, 0.0475168228, -2.49689007, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.171683058, 0.135742366, 0.97286427))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(1.16743457, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.8158927, -0.0475034714, 0.246073008, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.114454329))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.366504341, 2.86136341))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475187302, -0.320475996, 3.83026695, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.320472032))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.42821598, 7.15255737e-006, 0.223186016, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.858407557, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.400590003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475025177, 0.171680987, -2.19930744, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.746583045, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.047504425, -1.3122983, -0.366254002, -1, 0, 0, 0, 0, -1, 0, -1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742366, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.223183036, -1.15778399, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484703, 0.400593191))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(1.14454234, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77010965, 5.7220459e-006, 0.228908002, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.286135793))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475149155, 1.85022974, 0.30330202, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742366, 0.114457399))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(1.16743457, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.8158927, 0.0475149155, 0.246073008, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.114454329))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475034714, 0.366251022, -1.84450579, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26651812, -0.047504425, 0.320466995, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.343367934, 0.135742366, 0.629498899))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475139618, -0.280408025, 1.33518744, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.271484703, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.537936091, 0.200000003, 0.217463255))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.13063812, -0.0475025177, 0.366251022, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 0.366251022, -1.84450579, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.203613549, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77011156, 0.0475149155, 0.274691015, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.915635586, 0.135742366, 0.171681494))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77011156, 5.7220459e-006, 0.274691015, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.915635586, 0.339355886, 0.171681494))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-006, -0.280408025, 1.33518744, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484703, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.047504425, 0.257519007, -1.18640041, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.271484703, 0.457820415))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475130081, 0.257519007, -1.18640041, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.271484703, 0.457820415))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475149155, 0.366251022, -1.84450579, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.27469036))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.55983639, 7.15255737e-006, 0.246078014, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.457817316, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475139618, -0.274688005, -1.64421606, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, -0.274688005, -1.64421606, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.203613549, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.15255737e-006, 0.0858410001, 2.55983829, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484703, 0.457820415))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.120178998, -0.047501564, -2.46255016, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.114455901, 0.135742366, 0.62949878))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475168228, 0.120178998, 2.55983639, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742307, 0.343362719))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 2.66678476))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475187302, 0.148797035, 3.92755222, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.20361349, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 2.66678476))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.047498703, 0.148797035, 3.92755222, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.20361349, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.389145195))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 0.13162303, -2.14780521, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.814454257, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.047501564, 0.120178998, 2.55983639, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742307, 0.343362719))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 3.86855388))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.28746033e-005, 0.103013992, -4.53987598, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.0678711757, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.515045226, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.287940025, -0.0475068092, 0.932793021, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.686726034))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.339355856, 0.686725557))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475053787, -0.995743036, 0.888822079, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.320472002))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475068092, -1.07013798, -0.19066143, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.814454198, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.801180303))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.841232002, 9.53674316e-007, -0.202103138, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909537, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.412035584, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.887014031, 2.86102295e-006, -0.820150375, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.801182747))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.331917435))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -1.18458903, -0.184933186, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.950196505, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.528292179, -0.0475068092, 0.858397007, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.171686471, 0.135742366, 0.0572271682))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.217463195))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475077629, -0.932793021, 0.0783076286, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.814454198, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.32047224, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02435493, 2.86102295e-006, -0.568349361, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.343365371))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.400590301, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06441498, 1.90734863e-006, -0.442456245, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.915637076))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.43492651, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.967127025, 2.86102295e-006, -0.659913063, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.572274029))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.528292179, 0.0475120544, 0.858397007, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.171686471, 0.135742366, 0.0572271682))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.240354285, 0.200000003, 0.331918091))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.984299004, 1.90734863e-006, -0.184933186, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07014, -0.0475068092, -0.448176384, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.686727583, 0.135742366, 0.97286427))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.206018344))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475068092, 0.846953988, -0.408119202, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.343363076, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.921347976, 2.86102295e-006, -0.728585243, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.114456721))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -0.274681032, -1.64421511, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.203613549, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, 0.366241992, -1.84450769, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.203613549, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.537936091, 0.200000003, 0.217463255))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.13063908, -0.0475149155, 0.366244972, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.047504425, 0.366241992, -1.84450769, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475130081, -0.280405939, 1.33518934, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.271484703, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475139618, 0.366241992, -1.84450769, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 0.171684563))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475130081, -0.274681032, -1.64421511, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475120544, 0.25751394, -1.18640137, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.271484703, 0.457820415))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475139618, 1.85022974, 0.30329293, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742366, 0.114457399))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.280405939, 1.33518934, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484703, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, 0.223177969, -1.15778637, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484703, 0.400593191))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, 0.291848958, -1.07767105, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.542969465, 0.400593191))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77011156, 0.047504425, 0.274681032, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.915635586, 0.135742366, 0.171681494))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475053787, -0.280405939, 1.33518934, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.271484703, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(1.16743457, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.81589365, -0.0475139618, 0.246068001, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.114454329))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.047504425, -0.274681032, -1.64421511, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 0.343366027))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(1.14454234, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77011061, -4.76837158e-006, 0.228901982, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.286135793))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475053787, 0.25751394, -1.18640137, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.271484703, 0.457820415))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.047504425, 1.85022974, 0.30329293, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742366, 0.114457399))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(1.16743457, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.81589365, 0.047504425, 0.246068001, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 0.114454329))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.542969167, 3.86855936))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1920929e-005, -0.337626994, 4.53987694, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, 1.85022974, 0.30329293, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.135742366, 0.114457399))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77011156, -0.0475139618, 0.274681032, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.915635586, 0.135742366, 0.171681494))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77011156, -4.76837158e-006, 0.274681032, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.915635586, 0.339355886, 0.171681494))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.480707973))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.320461929, -4.76837158e-006, 2.10202312, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.629499793, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.537936091, 0.200000003, 0.217463255))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.13063908, 0.0475034714, 0.366244972, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135742366, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.27469036))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.55983543, -5.7220459e-006, 0.246065974, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.457817316, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.400590003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475034714, 0.171674967, -2.19931126, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.746583045, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475025177, 0.120167017, 2.55983734, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742307, 0.343362719))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475158691, 0.120167017, 2.55983734, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.135742307, 0.343362719))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.366504341, 2.86136341))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0474996567, -0.320461929, 3.83026886, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.366504341, 2.86136341))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475187302, -0.320461929, 3.83026886, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.148781002, 0.0475025177, -2.49688625, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.171683058, 0.135742366, 0.97286427))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.389145195))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, 0.13161397, -2.14780617, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.814454257, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 2.66678476))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475187302, 0.148777008, 3.92755222, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.20361349, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.320472032))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.42821598, -5.7220459e-006, 0.223177969, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.858407557, 0.339355886, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.120168984, 0.0475025177, -2.46255207, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.114455901, 0.135742366, 0.62949878))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.148781002, -0.0475149155, -2.49688625, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.171683058, 0.135742366, 0.97286427))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.120168984, -0.0475149155, -2.46255207, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Blade,"","",Vector3.new(0, 0, 0),Vector3.new(0.114455901, 0.135742366, 0.62949878))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 2.66678476))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0474996567, 0.148777008, 3.92755222, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.20361349, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.400590003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475149155, 0.171674967, -2.19931126, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.746583045, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0475077629, 0.846953034, 0.158426762, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.20361349, 0.286135525))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 0.0858319998, 2.55983734, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484703, 0.457820415))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Deep blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.240354717))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0475077629, 0.846949995, -0.00963592529, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.114454329, 0.203613549, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.285058975, 0.331917435))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.984295011, 0.14698267, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 1, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 3.86855388))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1920929e-005, 0.102995992, -4.53987694, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.0678711757, 1))
Blade=part(Enum.FormFactor.Custom,m,Enum.Material.Foil,0.5,0,"Light blue","Blade",Vector3.new(0.200000003, 0.200000003, 0.274691015))
Bladeweld=weld(m,handle,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.795446992, -0.0611410141, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.286135793, 0.271484703, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.200000003, 0.271484703, 0.446372032))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.692444026, 9.53674316e-007, -0.276518345, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909537, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -0.663830042, 0.522593975, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.610840619, 0.228911862))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.493978024, -0.595160007, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.610840619, 0.171684712))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.795453012, -0.104835033, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.271484703, 0.515047729))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.795454025, 0.373800278, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.271484703, 0.572274864))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.200000003, 0.271484703, 0.526490033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.640941024, 9.53674316e-007, -0.236460209, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.286136687, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.200000003, 0.271484703, 0.377699524))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.743950009, 9.53674316e-007, -0.242182255, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.286136687, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.795453012, 0.373805046, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.271484703, 0.572274864))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.743950009, 0.465367317, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.343366176))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.200000003, 0.271484703, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.795453012, 9.53674316e-007, -0.236458302, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909537, 1, 0.80118233))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.721055984, -0.0132761002, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.610840619, 0.40059334))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.663834989, 0.522593975, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.610840619, 0.228911862))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.200000003, 0.271484703, 0.526490033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.640942037, -9.53674316e-007, -0.236459255, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.286136687, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.200000003, 0.271484703, 0.377699524))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.743948996, -9.53674316e-007, -0.242182255, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.286136687, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.493978977, -0.595162928, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.610840619, 0.171684712))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.200000003, 0.271484703, 0.446372032))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.69244796, -9.53674316e-007, -0.276521206, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909537, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.743951023, 0.465367317, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.339355886, 0.343366176))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.200000003, 0.271484703, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.795455992, -9.53674316e-007, -0.236459255, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909537, 1, 0.80118233))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.721059978, -0.0132799149, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.610840619, 0.40059334))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0.5,0,"Sand blue","Part",Vector3.new(0.228908643, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.795456946, -0.104840279, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.271484703, 0.515047729))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.503594935, 0.419586182, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.339356631, 0.228912368))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.274691254))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457814038, 0, -0.225020409, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.17168276, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503593981, 0, -0.156344414, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.286137313, 1, 0.686728954))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.457812011, 0.379531384, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.203613937, 0.17168507))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203614011, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.310854435, -0.497873008, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 1, 0.228912368))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613997, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.310854435, 0.497873008, -1, 0, 0, 0, 0, -1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 1, 0.228912368))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.217464015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555100024, 0, -0.333745003, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228910059, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526486933, 0, -0.310856342, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0572281852, 1, 0.858410895))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354804933, 0, -0.150621414, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.858410299, 1, 0.6295017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 0.555100024, 0.00388908386, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.228912398))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.509317935, -0.0762300491, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.114457831))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762262344, 0, 0.412031949, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.114455476, 1, 0.743956387))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.217464015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316579342, 0, 0.331914008, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.457819223, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.555097997, -0.041893959, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.228912398))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.509317935, 0.0762300491, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.114457831))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268963993, 0, -0.0762281418, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228910074, 1, 0.114456013))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.492147982, -0.0418963432, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.475099355, 0.228912398))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555100024, 0, -0.144900322, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228910059, 1, 0.801183581))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.555097997, 0.041893959, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.228912398))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242184162, 0, 0.326189935, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.286137313, 1, 0.572274327))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.412033975, -0.242184162, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.339356542, 0.286139637))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.469263971))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595158041, 0, -0.207848072, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.17168276, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 0.555097997, 0.493982315, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.515048802))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.268966019, 0.00388908386, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.228912398))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.268968046, -0.0418901443, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.228912398))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.314748943, -0.0762300491, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.114457831))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.331914961, -0.0418930054, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.475099355, 0.228912398))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.268968046, 0.0418901443, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.228912398))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.242181301, 0.246078014, -1, 0, 0, 0, 0, -1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.339356542, 0.228912368))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.412033975, 0.242184162, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.339356542, 0.286139637))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.493980408, 0.595158041, -1, 0, 0, 0, 0, -1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.61084199, 0.171685085))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.15061903, 0, 0.25752002, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.629501104, 1, 0.114456013))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.242181301, -0.246078014, -1, 0, 0, 0, 0, 1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.339356542, 0.228912368))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354821, 0.203613982, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933971405, 0, 0.234628975, 0, 0, 1, -1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.114456013))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.314748943, 0.0762300491, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858409345, 0.271485299, 0.114457831))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316579342, 0, 0.331917018, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.457818806, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.457814008, 0.379526138, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.203613728, 0.171684906))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242181301, 0, 0.326194018, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.286137074, 1, 0.572273791))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613818, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.310855389, 0.497869998, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 1, 0.22891216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.242179394, -0.246075034, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.339356244, 0.22891216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613833, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.310855389, -0.497869998, 1, 0, 0, 0, 0, 1, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 1, 0.22891216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.412030995, 0.242180347, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.339356244, 0.286139369))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.509320021, -0.0762262344, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.114457719))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.503596008, 0.419584274, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.339356333, 0.22891216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.274690986))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457816005, 0, -0.225015163, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.171682626, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555096984, 0, -0.333744049, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909835, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150619984, 0, 0.25751701, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.629500508, 1, 0.114455909))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555097997, 0, -0.14489603, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909835, 1, 0.801182806))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.412030995, -0.242180347, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.339356244, 0.286139369))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.509320021, 0.0762262344, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.114457719))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354806006, 0, -0.15061903, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.858409464, 1, 0.629501104))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.242179394, 0.246075034, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.339356244, 0.22891216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503597975, 0, -0.156342983, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.286137074, 1, 0.686728358))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354583, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933933258, 0, 0.234629989, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.114455909))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.555101037, 0.493978977, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.515048325))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762233734, 0, 0.412032008, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.114455365, 1, 0.743955672))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526481986, 0, -0.310855389, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0572281294, 1, 0.85841012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.469263554))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595158994, 0, -0.207847118, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.171682596, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.314743996, -0.0762219429, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.114457719))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.203613788, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268964022, 0, -0.0762219429, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.228909865, 1, 0.114455909))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.314743996, 0.0762219429, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.114457719))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 0.268965006, 0.041888237, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.228912175))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.555096984, -0.041888237, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.228912175))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.331914008, -0.041891098, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.475098848, 0.228912175))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -0.555096984, 0.041888237, -1, 0, 0, 0, -1, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.228912175))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.555096984, 0.00389099121, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.228912175))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 0.492148995, -0.041891098, -1, 0, 0, 0, 1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.475098848, 0.228912175))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.268965006, -0.041888237, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.228912175))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.493978024, 0.595160007, 1, 0, 0, 0, 0, -1, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.610841453, 0.171684921))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.268963009, 0.00389099121, 1, 0, 0, 0, -1, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.858408511, 0.27148506, 0.228912175))
Hitbox=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Medium stone grey","Hitbox",Vector3.new(6.10999966, 1, 2))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.76222515, -0.0475378036, -0.00994300842, 0, 0, 1, -1, 0, 0, 0, -1, 0))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.274691314))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457812309, -2.38418579e-007, -0.225012302, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272949, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.503592968, 0.419583797, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.314748138, 0.0762238503, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.314748168, -0.0762238503, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.268967211, 0.0418877602, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967241, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.49215132, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.55510056, 0.041888237, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.103009038, 0.0343369879))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.493978024, 0.595159888, 0.99999392, -7.91495403e-009, -6.78595455e-008, -1.34303008e-007, -6.55649842e-007, -0.999994874, 2.20201679e-009, 0.999996305, -6.25847633e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819737, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268967181, 2.38418579e-007, -0.0762238503, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967271, 0.00389385223, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.331916451, -0.041888237, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365185, 0.171681702, 0.469263524))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595160067, 2.38418579e-007, -0.207845688, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681911, 0.171681702, 0.125900224))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354807675, 2.38418579e-007, -0.150618076, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.41203618, -0.242182255, 1, 8.4371365e-008, -1.32811849e-007, 8.43714574e-008, -1, 6.85455063e-007, -1.32811792e-007, -6.85455063e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.412036151, 0.242182255, 1, -8.7752575e-008, -1.03239472e-007, 8.77525039e-008, 1, -6.85455063e-007, 1.03239529e-007, 6.85455063e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.509319603, -0.0762243271, -0.99999392, 3.44701228e-008, 1.00972102e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.242181778, 0.246077538, 1, 1.30966908e-008, -3.19616227e-008, -3.19616156e-008, -7.15258579e-007, -1, -1.30967139e-008, 1, -7.15258579e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.509319663, 0.0762243271, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910744, 0.171681702, 0.148791149))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762243271, 2.38418579e-007, 0.412033886, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354598, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, 2.38418579e-007, 0.234630585, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900105, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618076, 2.38418579e-007, 0.257521898, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.103009678))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.55510062, 0.493978024, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101275, 2.38418579e-007, -0.333743572, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.160236567))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101395, 2.38418579e-007, -0.14489603, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.137345672))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503597379, 2.38418579e-007, -0.156341553, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365259, 0.171681702, 0.274691015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457815558, 2.38418579e-007, -0.225013256, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456266, 0.171681702, 0.171682015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526487768, 2.38418579e-007, -0.310853004, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272353, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.503596783, 0.419583797, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.171681717, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.310854912, 0.497876048, 1, 1.30954101e-008, -3.19691402e-008, -3.19691331e-008, -7.15258693e-007, -1, -1.30954332e-008, 1, -7.15258693e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0343363322, 0.0343369842))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.457817107, 0.379527569, 1, -8.77475728e-008, -1.03240339e-007, 8.77475017e-008, 1, -6.8545512e-007, 1.03240396e-007, 6.8545512e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.114454769))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180347, 2.38418579e-007, 0.326194108, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915637612, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316575527, 2.38418579e-007, 0.331917107, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.171681732, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.310854912, -0.497876078, 1, -3.14915702e-008, -5.13853884e-008, 5.13854133e-008, 7.15258011e-007, 1, -3.14915347e-008, -1, 7.15258011e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.242181778, -0.246077538, 1, -1.64764469e-008, -2.04088664e-007, 2.04088693e-007, 7.15258636e-007, 1, -1.64763012e-008, -1, 7.15258636e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900239, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618553, -2.38418579e-007, 0.257518291, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.242182732, 0.246073961, -1, -1.30966411e-008, 1.03758325e-007, -1.03758317e-007, -6.55652627e-007, -1, 1.30967095e-008, -1, 6.55652627e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.242182732, -0.246073961, -1, 1.64762586e-008, -6.83687489e-008, -6.83687347e-008, 6.5565257e-007, 1, 1.6476303e-008, 1, -6.5565257e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.412032783, -0.242182255, -1, -8.43714503e-008, 2.90819635e-009, -8.43714503e-008, 1, -6.25849452e-007, -2.9081384e-009, -6.25849452e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915638581, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31657505, -2.38418579e-007, 0.33191371, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.103009142, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.4939785, 0.595156968, -0.99999392, 7.91495403e-009, 6.78595455e-008, -1.34303008e-007, -7.15254259e-007, -0.999994874, -2.2020088e-009, -0.999996305, 6.85451937e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.314745188, 0.0762238503, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.412032843, 0.242182255, -1, 8.77525324e-008, 3.24803544e-008, -8.7752511e-008, -1, 6.25849452e-007, 3.24804077e-008, 6.25849452e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910968, 0.171681881, 0.148791298))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762238503, -2.38418579e-007, 0.412031174, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.103009783))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.555096865, 0.4939785, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.17168209, 0.171681881, 0.125900358))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354804158, -2.38418579e-007, -0.150618076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820222, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268963337, -2.38418579e-007, -0.0762243271, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.314745247, -0.0762238503, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.114454888))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180824, -2.38418579e-007, 0.32619071, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354851, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, -2.38418579e-007, 0.234627724, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.268963337, 0.0418872833, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.331913531, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, -0.0418872833, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.171681896, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.310854912, 0.497872889, -1, -1.30953604e-008, 1.03750807e-007, -1.037508e-007, -6.55652514e-007, -1, 1.30954287e-008, -1, 6.55652514e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0343363695, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.457814097, 0.379526615, -1, 8.77475301e-008, 3.24794875e-008, -8.77475088e-008, -1, 6.25849395e-007, 3.24795408e-008, 6.25849395e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555097342, -2.38418579e-007, -0.333743572, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.509315968, -0.0762243271, 0.99999392, -3.44700801e-008, -3.47469609e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.509315968, 0.0762243271, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.46926403))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595156789, -2.38418579e-007, -0.207845211, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.137345821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503594041, -2.38418579e-007, -0.156341076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.555097938, 0.0418872833, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456378, 0.171681881, 0.171682194))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526484609, -2.38418579e-007, -0.310853004, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.492148638, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, 0.0038933754, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.171681911, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.310854912, -0.497872829, -1, 3.14915916e-008, 8.43345092e-008, 8.43345305e-008, 6.55653253e-007, 1, 3.14915347e-008, 1, -6.55653253e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.160236731))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555098176, -2.38418579e-007, -0.144895077, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967271, 0.00389385223, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.242182732, 0.246073961, -1, -1.30966411e-008, 1.03758325e-007, -1.03758317e-007, -6.55652627e-007, -1, 1.30967095e-008, -1, 6.55652627e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.242182732, -0.246073961, -1, 1.64762586e-008, -6.83687489e-008, -6.83687347e-008, 6.5565257e-007, 1, 1.6476303e-008, 1, -6.5565257e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.103009038, 0.0343369879))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.493978024, 0.595159888, 0.99999392, -7.91495403e-009, -6.78595455e-008, -1.34303008e-007, -6.55649842e-007, -0.999994874, 2.20201679e-009, 0.999996305, -6.25847633e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915637612, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316575527, 2.38418579e-007, 0.331917107, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0343363322, 0.0343369842))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.457817107, 0.379527569, 1, -8.77475728e-008, -1.03240339e-007, 8.77475017e-008, 1, -6.8545512e-007, 1.03240396e-007, 6.8545512e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.114454769))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180347, 2.38418579e-007, 0.326194108, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.171681717, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.310854912, 0.497876048, 1, 1.30954101e-008, -3.19691402e-008, -3.19691331e-008, -7.15258693e-007, -1, -1.30954332e-008, 1, -7.15258693e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.242181778, -0.246077538, 1, -1.64764469e-008, -2.04088664e-007, 2.04088693e-007, 7.15258636e-007, 1, -1.64763012e-008, -1, 7.15258636e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.171681732, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.310854912, -0.497876078, 1, -3.14915702e-008, -5.13853884e-008, 5.13854133e-008, 7.15258011e-007, 1, -3.14915347e-008, -1, 7.15258011e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.412036151, 0.242182255, 1, -8.7752575e-008, -1.03239472e-007, 8.77525039e-008, 1, -6.85455063e-007, 1.03239529e-007, 6.85455063e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.242181778, 0.246077538, 1, 1.30966908e-008, -3.19616227e-008, -3.19616156e-008, -7.15258579e-007, -1, -1.30967139e-008, 1, -7.15258579e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.41203618, -0.242182255, 1, 8.4371365e-008, -1.32811849e-007, 8.43714574e-008, -1, 6.85455063e-007, -1.32811792e-007, -6.85455063e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365259, 0.171681702, 0.274691015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457815558, 2.38418579e-007, -0.225013256, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272353, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.503596783, 0.419583797, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456266, 0.171681702, 0.171682015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526487768, 2.38418579e-007, -0.310853004, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900105, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618076, 2.38418579e-007, 0.257521898, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.137345672))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503597379, 2.38418579e-007, -0.156341553, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681911, 0.171681702, 0.125900224))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354807675, 2.38418579e-007, -0.150618076, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.160236567))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101395, 2.38418579e-007, -0.14489603, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101275, 2.38418579e-007, -0.333743572, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.103009678))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.55510062, 0.493978024, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354598, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, 2.38418579e-007, 0.234630585, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910744, 0.171681702, 0.148791149))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762243271, 2.38418579e-007, 0.412033886, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.509319663, 0.0762243271, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.509319603, -0.0762243271, -0.99999392, 3.44701228e-008, 1.00972102e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819737, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268967181, 2.38418579e-007, -0.0762238503, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.314748168, -0.0762238503, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.314748138, 0.0762238503, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365185, 0.171681702, 0.469263524))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595160067, 2.38418579e-007, -0.207845688, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.331916451, -0.041888237, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.268967211, 0.0418877602, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.55510056, 0.041888237, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.49215132, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967241, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967271, 0.00389385223, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.103009038, 0.0343369879))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.493978024, 0.595159888, 0.99999392, -7.91495403e-009, -6.78595455e-008, -1.34303008e-007, -6.55649842e-007, -0.999994874, 2.20201679e-009, 0.999996305, -6.25847633e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272949, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.503592968, 0.419583797, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.274691314))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457812309, -2.38418579e-007, -0.225012302, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0343363695, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.457814097, 0.379526615, -1, 8.77475301e-008, 3.24794875e-008, -8.77475088e-008, -1, 6.25849395e-007, 3.24795408e-008, 6.25849395e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.171681896, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.310854912, 0.497872889, -1, -1.30953604e-008, 1.03750807e-007, -1.037508e-007, -6.55652514e-007, -1, 1.30954287e-008, -1, 6.55652514e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.171681911, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.310854912, -0.497872829, -1, 3.14915916e-008, 8.43345092e-008, 8.43345305e-008, 6.55653253e-007, 1, 3.14915347e-008, 1, -6.55653253e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.137345821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503594041, -2.38418579e-007, -0.156341076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.160236731))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555098176, -2.38418579e-007, -0.144895077, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.46926403))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595156789, -2.38418579e-007, -0.207845211, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456378, 0.171681881, 0.171682194))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526484609, -2.38418579e-007, -0.310853004, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555097342, -2.38418579e-007, -0.333743572, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, -0.0418872833, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.555097938, 0.0418872833, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, 0.0038933754, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.492148638, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.509315968, 0.0762243271, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.509315968, -0.0762243271, 0.99999392, -3.44700801e-008, -3.47469609e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.114454888))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180824, -2.38418579e-007, 0.32619071, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.17168209, 0.171681881, 0.125900358))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354804158, -2.38418579e-007, -0.150618076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910968, 0.171681881, 0.148791298))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762238503, -2.38418579e-007, 0.412031174, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915638581, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31657505, -2.38418579e-007, 0.33191371, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820222, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268963337, -2.38418579e-007, -0.0762243271, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.412032783, -0.242182255, -1, -8.43714503e-008, 2.90819635e-009, -8.43714503e-008, 1, -6.25849452e-007, -2.9081384e-009, -6.25849452e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.412032843, 0.242182255, -1, 8.77525324e-008, 3.24803544e-008, -8.7752511e-008, -1, 6.25849452e-007, 3.24804077e-008, 6.25849452e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.331913531, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.314745247, -0.0762238503, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.314745188, 0.0762238503, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.268963337, 0.0418872833, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.103009142, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.4939785, 0.595156968, -0.99999392, 7.91495403e-009, 6.78595455e-008, -1.34303008e-007, -7.15254259e-007, -0.999994874, -2.2020088e-009, -0.999996305, 6.85451937e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.103009783))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.555096865, 0.4939785, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354851, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, -2.38418579e-007, 0.234627724, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900239, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618553, -2.38418579e-007, 0.257518291, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.103009038, 0.0343369879))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.493978024, 0.595159888, 0.99999392, -7.91495403e-009, -6.78595455e-008, -1.34303008e-007, -6.55649842e-007, -0.999994874, 2.20201679e-009, 0.999996305, -6.25847633e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272949, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.503592968, 0.419583797, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.274691314))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457812309, -2.38418579e-007, -0.225012302, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0343363695, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.457814097, 0.379526615, -1, 8.77475301e-008, 3.24794875e-008, -8.77475088e-008, -1, 6.25849395e-007, 3.24795408e-008, 6.25849395e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.171681896, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.310854912, 0.497872889, -1, -1.30953604e-008, 1.03750807e-007, -1.037508e-007, -6.55652514e-007, -1, 1.30954287e-008, -1, 6.55652514e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.171681911, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.310854912, -0.497872829, -1, 3.14915916e-008, 8.43345092e-008, 8.43345305e-008, 6.55653253e-007, 1, 3.14915347e-008, 1, -6.55653253e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.137345821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503594041, -2.38418579e-007, -0.156341076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.160236731))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555098176, -2.38418579e-007, -0.144895077, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.46926403))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595156789, -2.38418579e-007, -0.207845211, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456378, 0.171681881, 0.171682194))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526484609, -2.38418579e-007, -0.310853004, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555097342, -2.38418579e-007, -0.333743572, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, -0.0418872833, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.555097938, 0.0418872833, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, 0.0038933754, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.492148638, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.509315968, 0.0762243271, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.509315968, -0.0762243271, 0.99999392, -3.44700801e-008, -3.47469609e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.114454888))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180824, -2.38418579e-007, 0.32619071, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.17168209, 0.171681881, 0.125900358))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354804158, -2.38418579e-007, -0.150618076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910968, 0.171681881, 0.148791298))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762238503, -2.38418579e-007, 0.412031174, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915638581, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31657505, -2.38418579e-007, 0.33191371, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820222, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268963337, -2.38418579e-007, -0.0762243271, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.412032783, -0.242182255, -1, -8.43714503e-008, 2.90819635e-009, -8.43714503e-008, 1, -6.25849452e-007, -2.9081384e-009, -6.25849452e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.412032843, 0.242182255, -1, 8.77525324e-008, 3.24803544e-008, -8.7752511e-008, -1, 6.25849452e-007, 3.24804077e-008, 6.25849452e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.331913531, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.314745247, -0.0762238503, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.314745188, 0.0762238503, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.268963337, 0.0418872833, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.103009142, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.4939785, 0.595156968, -0.99999392, 7.91495403e-009, 6.78595455e-008, -1.34303008e-007, -7.15254259e-007, -0.999994874, -2.2020088e-009, -0.999996305, 6.85451937e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.103009783))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.555096865, 0.4939785, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354851, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, -2.38418579e-007, 0.234627724, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900239, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618553, -2.38418579e-007, 0.257518291, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.242182732, -0.246073961, -1, 1.64762586e-008, -6.83687489e-008, -6.83687347e-008, 6.5565257e-007, 1, 1.6476303e-008, 1, -6.5565257e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.242182732, 0.246073961, -1, -1.30966411e-008, 1.03758325e-007, -1.03758317e-007, -6.55652627e-007, -1, 1.30967095e-008, -1, 6.55652627e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915637612, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316575527, 2.38418579e-007, 0.331917107, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0343363322, 0.0343369842))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.457817107, 0.379527569, 1, -8.77475728e-008, -1.03240339e-007, 8.77475017e-008, 1, -6.8545512e-007, 1.03240396e-007, 6.8545512e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.114454769))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180347, 2.38418579e-007, 0.326194108, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.171681717, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.310854912, 0.497876048, 1, 1.30954101e-008, -3.19691402e-008, -3.19691331e-008, -7.15258693e-007, -1, -1.30954332e-008, 1, -7.15258693e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.242181778, -0.246077538, 1, -1.64764469e-008, -2.04088664e-007, 2.04088693e-007, 7.15258636e-007, 1, -1.64763012e-008, -1, 7.15258636e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.171681732, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.310854912, -0.497876078, 1, -3.14915702e-008, -5.13853884e-008, 5.13854133e-008, 7.15258011e-007, 1, -3.14915347e-008, -1, 7.15258011e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.412036151, 0.242182255, 1, -8.7752575e-008, -1.03239472e-007, 8.77525039e-008, 1, -6.85455063e-007, 1.03239529e-007, 6.85455063e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.242181778, 0.246077538, 1, 1.30966908e-008, -3.19616227e-008, -3.19616156e-008, -7.15258579e-007, -1, -1.30967139e-008, 1, -7.15258579e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.41203618, -0.242182255, 1, 8.4371365e-008, -1.32811849e-007, 8.43714574e-008, -1, 6.85455063e-007, -1.32811792e-007, -6.85455063e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365259, 0.171681702, 0.274691015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457815558, 2.38418579e-007, -0.225013256, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272353, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.503596783, 0.419583797, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456266, 0.171681702, 0.171682015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526487768, 2.38418579e-007, -0.310853004, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900105, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618076, 2.38418579e-007, 0.257521898, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.137345672))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503597379, 2.38418579e-007, -0.156341553, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681911, 0.171681702, 0.125900224))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354807675, 2.38418579e-007, -0.150618076, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.160236567))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101395, 2.38418579e-007, -0.14489603, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101275, 2.38418579e-007, -0.333743572, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.103009678))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.55510062, 0.493978024, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354598, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, 2.38418579e-007, 0.234630585, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910744, 0.171681702, 0.148791149))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762243271, 2.38418579e-007, 0.412033886, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.509319663, 0.0762243271, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.509319603, -0.0762243271, -0.99999392, 3.44701228e-008, 1.00972102e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819737, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268967181, 2.38418579e-007, -0.0762238503, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.314748168, -0.0762238503, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.314748138, 0.0762238503, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365185, 0.171681702, 0.469263524))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595160067, 2.38418579e-007, -0.207845688, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.331916451, -0.041888237, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.268967211, 0.0418877602, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.55510056, 0.041888237, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.49215132, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967241, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967271, 0.00389385223, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.49215132, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967241, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272949, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.503592968, 0.419583797, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.274691314))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457812309, -2.38418579e-007, -0.225012302, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0343363695, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.457814097, 0.379526615, -1, 8.77475301e-008, 3.24794875e-008, -8.77475088e-008, -1, 6.25849395e-007, 3.24795408e-008, 6.25849395e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.171681896, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.310854912, 0.497872889, -1, -1.30953604e-008, 1.03750807e-007, -1.037508e-007, -6.55652514e-007, -1, 1.30954287e-008, -1, 6.55652514e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.171681911, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.310854912, -0.497872829, -1, 3.14915916e-008, 8.43345092e-008, 8.43345305e-008, 6.55653253e-007, 1, 3.14915347e-008, 1, -6.55653253e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.137345821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503594041, -2.38418579e-007, -0.156341076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.160236731))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555098176, -2.38418579e-007, -0.144895077, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.46926403))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595156789, -2.38418579e-007, -0.207845211, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456378, 0.171681881, 0.171682194))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526484609, -2.38418579e-007, -0.310853004, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555097342, -2.38418579e-007, -0.333743572, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, -0.0418872833, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.555097938, 0.0418872833, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, 0.0038933754, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.492148638, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.509315968, 0.0762243271, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.509315968, -0.0762243271, 0.99999392, -3.44700801e-008, -3.47469609e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.114454888))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180824, -2.38418579e-007, 0.32619071, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.17168209, 0.171681881, 0.125900358))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354804158, -2.38418579e-007, -0.150618076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910968, 0.171681881, 0.148791298))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762238503, -2.38418579e-007, 0.412031174, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915638581, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31657505, -2.38418579e-007, 0.33191371, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820222, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268963337, -2.38418579e-007, -0.0762243271, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.412032783, -0.242182255, -1, -8.43714503e-008, 2.90819635e-009, -8.43714503e-008, 1, -6.25849452e-007, -2.9081384e-009, -6.25849452e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.412032843, 0.242182255, -1, 8.77525324e-008, 3.24803544e-008, -8.7752511e-008, -1, 6.25849452e-007, 3.24804077e-008, 6.25849452e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.331913531, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.314745247, -0.0762238503, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.314745188, 0.0762238503, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.268963337, 0.0418872833, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.103009142, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.4939785, 0.595156968, -0.99999392, 7.91495403e-009, 6.78595455e-008, -1.34303008e-007, -7.15254259e-007, -0.999994874, -2.2020088e-009, -0.999996305, 6.85451937e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.103009783))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.555096865, 0.4939785, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354851, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, -2.38418579e-007, 0.234627724, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900239, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618553, -2.38418579e-007, 0.257518291, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.242182732, -0.246073961, -1, 1.64762586e-008, -6.83687489e-008, -6.83687347e-008, 6.5565257e-007, 1, 1.6476303e-008, 1, -6.5565257e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.242182732, 0.246073961, -1, -1.30966411e-008, 1.03758325e-007, -1.03758317e-007, -6.55652627e-007, -1, 1.30967095e-008, -1, 6.55652627e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915637612, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316575527, 2.38418579e-007, 0.331917107, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0343363322, 0.0343369842))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.457817107, 0.379527569, 1, -8.77475728e-008, -1.03240339e-007, 8.77475017e-008, 1, -6.8545512e-007, 1.03240396e-007, 6.8545512e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.114454769))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180347, 2.38418579e-007, 0.326194108, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.171681717, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.310854912, 0.497876048, 1, 1.30954101e-008, -3.19691402e-008, -3.19691331e-008, -7.15258693e-007, -1, -1.30954332e-008, 1, -7.15258693e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.242181778, -0.246077538, 1, -1.64764469e-008, -2.04088664e-007, 2.04088693e-007, 7.15258636e-007, 1, -1.64763012e-008, -1, 7.15258636e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.171681732, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.310854912, -0.497876078, 1, -3.14915702e-008, -5.13853884e-008, 5.13854133e-008, 7.15258011e-007, 1, -3.14915347e-008, -1, 7.15258011e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.412036151, 0.242182255, 1, -8.7752575e-008, -1.03239472e-007, 8.77525039e-008, 1, -6.85455063e-007, 1.03239529e-007, 6.85455063e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.242181778, 0.246077538, 1, 1.30966908e-008, -3.19616227e-008, -3.19616156e-008, -7.15258579e-007, -1, -1.30967139e-008, 1, -7.15258579e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.41203618, -0.242182255, 1, 8.4371365e-008, -1.32811849e-007, 8.43714574e-008, -1, 6.85455063e-007, -1.32811792e-007, -6.85455063e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365259, 0.171681702, 0.274691015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457815558, 2.38418579e-007, -0.225013256, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272353, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.503596783, 0.419583797, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456266, 0.171681702, 0.171682015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526487768, 2.38418579e-007, -0.310853004, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900105, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618076, 2.38418579e-007, 0.257521898, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.137345672))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503597379, 2.38418579e-007, -0.156341553, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681911, 0.171681702, 0.125900224))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354807675, 2.38418579e-007, -0.150618076, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.160236567))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101395, 2.38418579e-007, -0.14489603, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101275, 2.38418579e-007, -0.333743572, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.103009678))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.55510062, 0.493978024, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354598, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, 2.38418579e-007, 0.234630585, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910744, 0.171681702, 0.148791149))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762243271, 2.38418579e-007, 0.412033886, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.509319663, 0.0762243271, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.509319603, -0.0762243271, -0.99999392, 3.44701228e-008, 1.00972102e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819737, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268967181, 2.38418579e-007, -0.0762238503, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.314748168, -0.0762238503, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.314748138, 0.0762238503, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365185, 0.171681702, 0.469263524))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595160067, 2.38418579e-007, -0.207845688, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.331916451, -0.041888237, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.268967211, 0.0418877602, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.55510056, 0.041888237, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.103009038, 0.0343369879))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.493978024, 0.595159888, 0.99999392, -7.91495403e-009, -6.78595455e-008, -1.34303008e-007, -6.55649842e-007, -0.999994874, 2.20201679e-009, 0.999996305, -6.25847633e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967271, 0.00389385223, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.103009038, 0.0343369879))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.493978024, 0.595159888, 0.99999392, -7.91495403e-009, -6.78595455e-008, -1.34303008e-007, -6.55649842e-007, -0.999994874, 2.20201679e-009, 0.999996305, -6.25847633e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272949, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.503592968, 0.419583797, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.274691314))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457812309, -2.38418579e-007, -0.225012302, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0343363695, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.457814097, 0.379526615, -1, 8.77475301e-008, 3.24794875e-008, -8.77475088e-008, -1, 6.25849395e-007, 3.24795408e-008, 6.25849395e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.171681896, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.310854912, 0.497872889, -1, -1.30953604e-008, 1.03750807e-007, -1.037508e-007, -6.55652514e-007, -1, 1.30954287e-008, -1, 6.55652514e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.171681911, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.310854912, -0.497872829, -1, 3.14915916e-008, 8.43345092e-008, 8.43345305e-008, 6.55653253e-007, 1, 3.14915347e-008, 1, -6.55653253e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.137345821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503594041, -2.38418579e-007, -0.156341076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.160236731))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555098176, -2.38418579e-007, -0.144895077, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.46926403))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595156789, -2.38418579e-007, -0.207845211, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456378, 0.171681881, 0.171682194))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526484609, -2.38418579e-007, -0.310853004, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555097342, -2.38418579e-007, -0.333743572, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, -0.0418872833, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.555097938, 0.0418872833, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, 0.0038933754, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.492148638, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.509315968, 0.0762243271, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.509315968, -0.0762243271, 0.99999392, -3.44700801e-008, -3.47469609e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.114454888))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180824, -2.38418579e-007, 0.32619071, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.17168209, 0.171681881, 0.125900358))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354804158, -2.38418579e-007, -0.150618076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910968, 0.171681881, 0.148791298))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762238503, -2.38418579e-007, 0.412031174, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915638581, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31657505, -2.38418579e-007, 0.33191371, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820222, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268963337, -2.38418579e-007, -0.0762243271, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.412032783, -0.242182255, -1, -8.43714503e-008, 2.90819635e-009, -8.43714503e-008, 1, -6.25849452e-007, -2.9081384e-009, -6.25849452e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.412032843, 0.242182255, -1, 8.77525324e-008, 3.24803544e-008, -8.7752511e-008, -1, 6.25849452e-007, 3.24804077e-008, 6.25849452e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.331913531, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.314745247, -0.0762238503, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.314745188, 0.0762238503, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.268963337, 0.0418872833, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.103009142, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.4939785, 0.595156968, -0.99999392, 7.91495403e-009, 6.78595455e-008, -1.34303008e-007, -7.15254259e-007, -0.999994874, -2.2020088e-009, -0.999996305, 6.85451937e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.103009783))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.555096865, 0.4939785, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354851, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, -2.38418579e-007, 0.234627724, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900239, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618553, -2.38418579e-007, 0.257518291, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.242182732, -0.246073961, -1, 1.64762586e-008, -6.83687489e-008, -6.83687347e-008, 6.5565257e-007, 1, 1.6476303e-008, 1, -6.5565257e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.242182732, 0.246073961, -1, -1.30966411e-008, 1.03758325e-007, -1.03758317e-007, -6.55652627e-007, -1, 1.30967095e-008, -1, 6.55652627e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915637612, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316575527, 2.38418579e-007, 0.331917107, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0343363322, 0.0343369842))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.457817107, 0.379527569, 1, -8.77475728e-008, -1.03240339e-007, 8.77475017e-008, 1, -6.8545512e-007, 1.03240396e-007, 6.8545512e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.114454769))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180347, 2.38418579e-007, 0.326194108, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.171681717, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.310854912, 0.497876048, 1, 1.30954101e-008, -3.19691402e-008, -3.19691331e-008, -7.15258693e-007, -1, -1.30954332e-008, 1, -7.15258693e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.242181778, -0.246077538, 1, -1.64764469e-008, -2.04088664e-007, 2.04088693e-007, 7.15258636e-007, 1, -1.64763012e-008, -1, 7.15258636e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.171681732, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.310854912, -0.497876078, 1, -3.14915702e-008, -5.13853884e-008, 5.13854133e-008, 7.15258011e-007, 1, -3.14915347e-008, -1, 7.15258011e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.412036151, 0.242182255, 1, -8.7752575e-008, -1.03239472e-007, 8.77525039e-008, 1, -6.85455063e-007, 1.03239529e-007, 6.85455063e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.242181778, 0.246077538, 1, 1.30966908e-008, -3.19616227e-008, -3.19616156e-008, -7.15258579e-007, -1, -1.30967139e-008, 1, -7.15258579e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.41203618, -0.242182255, 1, 8.4371365e-008, -1.32811849e-007, 8.43714574e-008, -1, 6.85455063e-007, -1.32811792e-007, -6.85455063e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365259, 0.171681702, 0.274691015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457815558, 2.38418579e-007, -0.225013256, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272353, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.503596783, 0.419583797, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456266, 0.171681702, 0.171682015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526487768, 2.38418579e-007, -0.310853004, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900105, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618076, 2.38418579e-007, 0.257521898, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.137345672))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503597379, 2.38418579e-007, -0.156341553, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681911, 0.171681702, 0.125900224))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354807675, 2.38418579e-007, -0.150618076, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.160236567))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101395, 2.38418579e-007, -0.14489603, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101275, 2.38418579e-007, -0.333743572, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.103009678))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.55510062, 0.493978024, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354598, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, 2.38418579e-007, 0.234630585, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910744, 0.171681702, 0.148791149))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762243271, 2.38418579e-007, 0.412033886, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.509319663, 0.0762243271, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.509319603, -0.0762243271, -0.99999392, 3.44701228e-008, 1.00972102e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819737, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268967181, 2.38418579e-007, -0.0762238503, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.314748168, -0.0762238503, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.314748138, 0.0762238503, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365185, 0.171681702, 0.469263524))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595160067, 2.38418579e-007, -0.207845688, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.331916451, -0.041888237, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.268967211, 0.0418877602, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.55510056, 0.041888237, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.49215132, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967241, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967271, 0.00389385223, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.268967241, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.49215132, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272949, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.503592968, 0.419583797, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.274691314))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457812309, -2.38418579e-007, -0.225012302, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0343363695, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.457814097, 0.379526615, -1, 8.77475301e-008, 3.24794875e-008, -8.77475088e-008, -1, 6.25849395e-007, 3.24795408e-008, 6.25849395e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.171681896, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.310854912, 0.497872889, -1, -1.30953604e-008, 1.03750807e-007, -1.037508e-007, -6.55652514e-007, -1, 1.30954287e-008, -1, 6.55652514e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.171681911, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.310854912, -0.497872829, -1, 3.14915916e-008, 8.43345092e-008, 8.43345305e-008, 6.55653253e-007, 1, 3.14915347e-008, 1, -6.55653253e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.137345821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503594041, -2.38418579e-007, -0.156341076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.160236731))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555098176, -2.38418579e-007, -0.144895077, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365557, 0.171681881, 0.46926403))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595156789, -2.38418579e-007, -0.207845211, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456378, 0.171681881, 0.171682194))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526484609, -2.38418579e-007, -0.310853004, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457820147, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555097342, -2.38418579e-007, -0.333743572, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, -0.0418872833, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.555097938, 0.0418872833, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.555097938, 0.0038933754, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.492148638, -0.0418877602, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.509315968, 0.0762243271, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.509315968, -0.0762243271, 0.99999392, -3.44700801e-008, -3.47469609e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274737, 0.171681881, 0.114454888))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180824, -2.38418579e-007, 0.32619071, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.17168209, 0.171681881, 0.125900358))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354804158, -2.38418579e-007, -0.150618076, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910968, 0.171681881, 0.148791298))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762238503, -2.38418579e-007, 0.412031174, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915638581, 0.171681881, 0.217464045))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31657505, -2.38418579e-007, 0.33191371, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457820222, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268963337, -2.38418579e-007, -0.0762243271, -2.20201279e-009, -0.999996305, 6.55649785e-007, -0.99999392, 4.26325641e-014, 6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.412032783, -0.242182255, -1, -8.43714503e-008, 2.90819635e-009, -8.43714503e-008, 1, -6.25849452e-007, -2.9081384e-009, -6.25849452e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0572279356))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.412032843, 0.242182255, -1, 8.77525324e-008, 3.24803544e-008, -8.7752511e-008, -1, 6.25849452e-007, 3.24804077e-008, 6.25849452e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, 0.0038933754, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0801182166, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.331913531, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.314745247, -0.0762238503, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.268963397, -0.0418872833, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.022891568))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.314745188, 0.0762238503, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681881, 0.0457818359, 0.0457824841))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.268963337, 0.0418872833, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.103009142, 0.0343370214))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.4939785, 0.595156968, -0.99999392, 7.91495403e-009, 6.78595455e-008, -1.34303008e-007, -7.15254259e-007, -0.999994874, -2.2020088e-009, -0.999996305, 6.85451937e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0457818359, 0.103009783))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.555096865, 0.4939785, -0.999992311, -6.49501573e-008, 4.74951349e-008, 6.4437863e-008, -0.99999541, 6.25847065e-007, 1.64104151e-007, 6.55649274e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354851, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, -2.38418579e-007, 0.234627724, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900239, 0.171681881, 0.0228912067))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618553, -2.38418579e-007, 0.257518291, 1.34303008e-007, 6.85452051e-007, 0.999994874, -0.99999392, 4.26325641e-014, 6.78595526e-008, -2.20201279e-009, -0.999996305, 6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.242182732, -0.246073961, -1, 1.64762586e-008, -6.83687489e-008, -6.83687347e-008, 6.5565257e-007, 1, 1.6476303e-008, 1, -6.5565257e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681881, 0.0572272837, 0.0457824767))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.242182732, 0.246073961, -1, -1.30966411e-008, 1.03758325e-007, -1.03758317e-007, -6.55652627e-007, -1, 1.30967095e-008, -1, 6.55652627e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0915637612, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.316575527, 2.38418579e-007, 0.331917107, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0343363322, 0.0343369842))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.457817107, 0.379527569, 1, -8.77475728e-008, -1.03240339e-007, 8.77475017e-008, 1, -6.8545512e-007, 1.03240396e-007, 6.8545512e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.114454769))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.242180347, 2.38418579e-007, 0.326194108, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.171681717, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.310854912, 0.497876048, 1, 1.30954101e-008, -3.19691402e-008, -3.19691331e-008, -7.15258693e-007, -1, -1.30954332e-008, 1, -7.15258693e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.242181778, -0.246077538, 1, -1.64764469e-008, -2.04088664e-007, 2.04088693e-007, 7.15258636e-007, 1, -1.64763012e-008, -1, 7.15258636e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.171681732, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.310854912, -0.497876078, 1, -3.14915702e-008, -5.13853884e-008, 5.13854133e-008, 7.15258011e-007, 1, -3.14915347e-008, -1, 7.15258011e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.412036151, 0.242182255, 1, -8.7752575e-008, -1.03239472e-007, 8.77525039e-008, 1, -6.85455063e-007, 1.03239529e-007, 6.85455063e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.242181778, 0.246077538, 1, 1.30966908e-008, -3.19616227e-008, -3.19616156e-008, -7.15258579e-007, -1, -1.30967139e-008, 1, -7.15258579e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272241, 0.057227876))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.41203618, -0.242182255, 1, 8.4371365e-008, -1.32811849e-007, 8.43714574e-008, -1, 6.85455063e-007, -1.32811792e-007, -6.85455063e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365259, 0.171681702, 0.274691015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457815558, 2.38418579e-007, -0.225013256, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0572272353, 0.045782432))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.503596783, 0.419583797, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0114456266, 0.171681702, 0.171682015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.526487768, 2.38418579e-007, -0.310853004, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.125900105, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.150618076, 2.38418579e-007, 0.257521898, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0572274141, 0.171681702, 0.137345672))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.503597379, 2.38418579e-007, -0.156341553, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681911, 0.171681702, 0.125900224))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.354807675, 2.38418579e-007, -0.150618076, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.160236567))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101395, 2.38418579e-007, -0.14489603, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0457819663, 0.171681702, 0.217463821))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555101275, 2.38418579e-007, -0.333743572, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.103009678))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.55510062, 0.493978024, 0.999992311, 6.49501288e-008, -8.82238425e-008, -6.44378773e-008, 0.99999541, -6.85451369e-007, 1.04501638e-007, 7.15253691e-007, 0.99999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.240354598, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0933918953, 2.38418579e-007, 0.234630585, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0228910744, 0.171681702, 0.148791149))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0762243271, 2.38418579e-007, 0.412033886, 1.34303008e-007, 6.85452051e-007, 0.999994874, 0.99999392, -4.26325641e-014, -6.78595526e-008, 2.20201279e-009, 0.999996305, -6.55649785e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.509319663, 0.0762243271, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.509319603, -0.0762243271, -0.99999392, 3.44701228e-008, 1.00972102e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0457819737, 0.171681702, 0.0228911825))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268967181, 2.38418579e-007, -0.0762238503, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.314748168, -0.0762238503, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0228915438))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.314748138, 0.0762238503, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0343365185, 0.171681702, 0.469263524))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.595160067, 2.38418579e-007, -0.207845688, 2.20201279e-009, 0.999996305, -6.55649785e-007, 0.99999392, -4.26325641e-014, -6.78595526e-008, -1.34303008e-007, -6.85452051e-007, -0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0801181346, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.331916451, -0.041888237, 0.99999392, -3.44700801e-008, -3.47469538e-008, -3.36162955e-008, -0.999996245, 5.66243216e-007, -1.31819306e-007, -5.66243216e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, 0.268967211, 0.0418877602, 0.99999392, 2.83586115e-008, -3.97143971e-008, -2.92122504e-008, 0.999996245, -5.66243216e-007, 1.3678671e-007, 5.66243216e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, 0.55510056, -0.041888237, -0.99999392, 3.44701228e-008, 1.00972109e-007, 3.36162742e-008, 0.999996245, -7.45056241e-007, -1.3678671e-007, -8.04660885e-007, -0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.171681702, 0.0457817875, 0.0457824357))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.55510056, 0.041888237, -0.99999392, -2.83585724e-008, 9.60047473e-008, 2.92122717e-008, -0.999996245, 7.45056241e-007, 1.31819306e-007, 8.04660885e-007, 0.999994874))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))




main=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Really black","Handle",Vector3.new(1.18888795, 0.202614263, 1.19073999))
mainweld=weld(m,Character["Right Arm"],main,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000557899475, 0.292643309, 0.0299999714, 1, 0, 0, 0, 0.999999762, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.405221939, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Really black","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.780060053, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.354575872, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.20555973, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Teal","Part",Vector3.new(1.17777681, 2.13758039, 1.17961144))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.298867464, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.19999909, 0.202614263, 2.47050714))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00555610657, 0, 0.167170286, 1, 0, 0, 0, 0, 1, 0, -0.999999642, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Really black","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.780077457, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))

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
local count = 1
local barra = false
local keafy = false
Love = function()
  attack = true
  barra = true
  if keafy == true then
    return 
  end
  keafy = true
  coroutine.resume(coroutine.create(function()
    while barra do
      wait(0.5)
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(math.random(-10, 10), -2, math.random(-10, 10)), 5, 1, 5, 0, 5, 0, 0.05)
    end
  end))
  coroutine.resume(coroutine.create(function()
    while count <= 2 do
      wait(1)
      count = count + 1
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame, 15, 15, 15, 2, 2, 2, 0.05)
    end
  end))
  coroutine.resume(coroutine.create(function()
    while barra do
      wait(0.1)
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, -3, 0) * angles(0, math.rad(math.random(0, 360)), 0), 5, 1, 3, 5, 0, 10, 0.05)
      BlockEffect(BrickColor.new("Black"), LeftArm.CFrame, 5, 5, 5, 0.5, 0.5, 0.5, 0.05, 1)
    end
  end))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-100), math.rad(100), math.rad(100)), 0.3)
  end
end

Hate = function()
  barra = false
  dd = math.random(-50, 50)
  dd2 = math.random(-50, 50)
  dd3 = math.random(-50, 50)
  if count == 1 then
    MagniDamage(RootPart, 17, 5, 10, 0, "Normal")
    CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.6)
    coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.03)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
  else
    if count == 2 then
      MagniDamage(RootPart, 17, 10, 15, 0, "Normal")
      CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.5)
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.05)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.05)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
    else
      if count == 3 then
        CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.2)
        MagniDamage(RootPart, 17, 20, 20, 0, "Normal")
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
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

Hate = function()
  barra = false
  dd = math.random(-50, 50)
  dd2 = math.random(-50, 50)
  dd3 = math.random(-50, 50)
  if count == 1 then
    MagniDamage(RootPart, 17, 5, 10, 0, "Normal")
    CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.6)
    coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.03)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
  else
    if count == 2 then
      MagniDamage(RootPart, 17, 10, 15, 0, "Normal")
      CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.5)
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.05)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.05)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
    else
      if count == 3 then
        CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.2)
        MagniDamage(RootPart, 17, 20, 20, 0, "Normal")
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Really red"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  ref = CreatePart(workspace, "SmoothPlastic", 0, 0, BrickColor.new("Black"), "ref", Vector3.new())
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
      BlockEffect(Character["Torso"].BrickColor, ref.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07, 1)
      SphereEffect(Character["Torso"].BrickColor, ref.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 2, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-95)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(-20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -25)
  MagniDamage(ref, 100, 30, 40, 10, "Knockdown")
  BlockEffect(Character["Torso"].BrickColor, ref.CFrame, 150, 150, 150, 15, 15, 15, 0.07, 1)
  SphereEffect(Character["Torso"].BrickColor, ref.CFrame, 150, 150, 150, 51, 51, 51, 0.07)
  SphereEffect(Character["Torso"].BrickColor, ref.CFrame, 20, 100, 20, 10, 100, 10, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  --CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4, -0.3) * angles(math.rad(-130), math.rad(-200), math.rad(-20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), 0.5)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), 0.5)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(3)), 0.5)
  end
  ref = CreatePart(workspace, "SmoothPlastic", 0, 0, BrickColor.new("Black"), "ref", Vector3.new())
  ref.Anchored = true
  ref.CanCollide = false
  ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -5)
  game.Debris:AddItem(ref, 1)
  for i = 0, 10, 0.5 do
    swait()
    --CreateSound("http://www.roblox.com/asset/?id=192410089", Handle, 1, 0.7)
    SphereEffect(Character["Torso"].BrickColor, ref.CFrame, 2, 10 * i * 2, 2, 0.5, 5, 0.5, 0.05)
    --BlockEffect(Character["Torso"].BrickColor, ref.CFrame * CFrame.new(0, -0.5, 0), 10, 10, 10, 0.5 * i, 0.5 * i, 0.5 * i, 0.05)
    MagniDamage(ref, 6, 5, 13, 0, "Normal")
    ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -5 * i)
  end
  if slashndash == true then
    RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -50)
    --BlockEffect(Character["Torso"].BrickColor, RootPart.CFrame, 10, 10, 10, 5, 5, 5, 0.05)
    for i = 0, 1, 0.13 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-140), math.rad(-90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
    end
    --CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1)
    for i = 0, 1, 0.13 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.3) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(10)), 0.3)
    end
  end
  do
    wait(1)
    Humanoid.WalkSpeed = 15
    slashndash = false
    attack = false
  end
end

function DIVIDE()
	attack = true
		Character.Humanoid.Jump = true
		for i = 0, 1, 0.05 do
			swait()
			Torso.Velocity = Vector3.new(0,100, 0)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
  end
  for i = 0, 3 do
    swait()
    MagniDamage(RootPart, 15, 10, 15, 0, "Normal")
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
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
    end
  end
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

Naildrive = function()
  attack = true
  Humanoid.WalkSpeed = 5
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 28, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(160), math.rad(0), math.rad(10)), 0.3)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(260), math.rad(0), math.rad(0)), 0.3)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(400), math.rad(0), math.rad(0)), 0.3)
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
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(260), math.rad(0), math.rad(0)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end

ob1u = function()
end




Laz0r = function()
  attack = true
Character.Humanoid.WalkSpeed = 0
la = Instance.new("Part",Character)
la.FormFactor = 3
la.TopSurface = 0
la.Transparency = 0.8
la.BottomSurface = 0
la.Material = "Neon"
la.Size = Vector3.new(0.3,0.3,0.3)
la.BrickColor = Character["Torso"].BrickColor
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
la1.BrickColor = BrickColor.new("Bright red")
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
rng.BrickColor = Character["Torso"].BrickColor
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
la2.BrickColor = Character["Torso"].BrickColor
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
Beam2.BrickColor = Character["Torso"].BrickColor
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
            Laz0r()--finale()
            if attack == false and k == "q" then
               --Naildrive()
          end
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
        RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(0), math.rad(115), math.rad(205)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.5, -0.4) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-30)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.8, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(20)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(-20), math.rad(0)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(0), math.rad(120), math.rad(205)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-60)), 0.3)
          RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(30)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1, -0.3) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-20)), 0.3)
          FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
        end
      else
        if (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos((sine) / 25)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos((sine) / 23)), math.rad(0), math.rad(20)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(180), math.rad(110 - 3 * math.cos((sine) / 23)), math.rad(205 + 3 * math.cos((sine) / 23))), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10 - 5 * math.cos((sine) / 23))), 0.3)
            RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * RHCF * angles(math.rad(-3 - 1 * math.cos((sine) / 25)), math.rad(20), math.rad(-7)), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(-3 - 1 * math.cos((sine) / 25)), math.rad(20), math.rad(5)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 10, 0) * angles(math.rad(20), math.rad(-20), math.rad(0)), 0.3)
          end
        else
          if 2 < (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(2 * math.cos((sine) / 7))), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos((sine) / 23)), math.rad(0), math.rad(-2 * math.cos((sine) / 7))), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(0), math.rad(110), math.rad(-200)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30 * math.cos((sine) / 10)), math.rad(0), math.rad(-5)), 0.3)
              RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos((sine) / 8) / 2, -0.03 + math.sin((sine) / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin((sine) / 8)), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos((sine) / 8) / 2, -0.03 - math.sin((sine) / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin((sine) / 8)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(23), math.rad(-20), math.rad(0)), 0.3)
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
