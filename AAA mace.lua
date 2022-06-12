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


handle=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really red","Handle",Vector3.new(1.15430033, 0.475305647, 0.479803413))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100143433, -0.0490188599, -0.948987007, 1, 3.96515679e-005, -4.57561896e-007, 4.59127648e-007, -3.94877134e-005, 1, 3.96515534e-005, -0.999999881, -3.94877352e-005))
FakeHandle=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,1,1,"Really red","FakeHandle",Vector3.new(1.15430033, 0.475305647, 0.479803413))
FakeHandleWeld=weld(m,handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100143433, -0.0490188599, -0.948987007, 1, 3.96515679e-005, -4.57561896e-007, 4.59127648e-007, -3.94877134e-005, 1, 3.96515534e-005, -0.999999881, -3.94877352e-005))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(2.25627565, 0.448318511, 0.448318422))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.76341391, 3.4570694e-006, 0.00225067139, 1.00000012, 5.96046448e-008, 0, 5.96046448e-008, 0.99999994, -0, 0, -0, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really red","Part",Vector3.new(0.569578826, 0.587752163, 0.601245582))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.85963178, -0.00225001574, 0.00674438477, 1.00000012, 5.96046448e-008, 0, 5.96046448e-008, 0.99999994, -0, 0, -0, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Institutional white","Part",Vector3.new(0.677527368, 0.475305647, 0.479803413))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.33387661, -9.53674316e-007, 0, 1.00000012, 5.96046448e-008, 0, 5.96046448e-008, 0.99999994, -0, 0, -0, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Part",Vector3.new(2.3642242, 0.448318511, 0.448318422))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.368812561, 1.1920929e-006, 0.00224876404, 1.00000012, 5.96046448e-008, 0, 5.96046448e-008, 0.99999994, -0, 0, -0, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Institutional white","Part",Vector3.new(0.632548809, 0.475305647, 0.479803413))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.42258596, 4.05311584e-006, 0, 1.00000012, 5.96046448e-008, 0, 5.96046448e-008, 0.99999994, -0, 0, -0, 1))
MaceMain=part(Enum.FormFactor.Brick,m,Enum.Material.DiamondPlate,0,0,"Dark stone grey","MaceMain",Vector3.new(1.15087676, 1.150877, 1.15087676))
MaceMainweld=weld(m,handle,MaceMain,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.55993605, 0.000112533569, -0.00146746635, 1.00000012, 5.96046448e-008, 0, 0, -0, 1, -5.96046448e-008, -0.99999994, 0))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.98545361, -0.0201375484, -1.39920807, -0.918216169, 0.000813305378, 0.396079093, 0.00755946338, -0.999779701, 0.0195780117, 0.396007776, 0.02097103, 0.918007731))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.745593548, -3.54348421, -0.0124721527, -7.85887241e-005, 0.999999821, -0.000226000062, 1.00000024, 7.86930323e-005, -4.30000109e-005, -4.29822612e-005, -0.000226003409, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0199875832, -4.75584078, -1.16724396, 0.00753962994, -0.999777615, 0.0196900014, 0.91825968, -0.000873565674, -0.395978093, 0.395907283, 0.0210660994, 0.918048799))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.200000003, 0.100000001))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0200898647, 4.29450369, -1.2440033, -0.00753648579, 0.999777496, -0.0196930077, -0.91829282, 0.000875860453, 0.395901084, 0.395830363, 0.0210676976, 0.918081939))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.743968964, -3.59285784, -0.00571143627, -4.10810389e-005, -8.73776389e-006, -1, 1.00000012, 3.26037407e-005, -4.10813191e-005, 3.24696302e-005, -0.999999881, 8.73642603e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0202544928, -4.29438686, 1.39848709, -0.00757023692, 0.999777615, -0.0196760092, 0.918281317, -0.00083874166, -0.395927906, -0.39585644, -0.021065414, -0.918070734))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Wood,0,0,"Burnt Sienna","Part",Vector3.new(5.0074091, 0.407562345, 0.407562256))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.532723904, 0.00226020813, 2.2649765e-006, 1.00000012, 5.96046448e-008, 0, 0, -0, 1, -5.96046448e-008, -0.99999994, 0))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Lily white","Part",Vector3.new(0.822054565, 0.822054923, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.55997419, -0.0014642477, -0.657758713, 1.00000012, 5.96046448e-008, 0, -5.96046448e-008, -0.99999994, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.822054684))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 1.2359035, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.020015955, -1.35246849, -4.91236687, -0.00753669441, 0.999778569, -0.0196400099, 0.395909756, 0.0210190341, 0.918048859, 0.918258607, -0.000856518745, -0.395980477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.049999997, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.768596649, -3.5887723, -0.00570130348, -4.10810389e-005, -8.73776389e-006, -1, 1.00000012, 3.26037407e-005, -4.10813191e-005, 3.24696302e-005, -0.999999881, 8.73642603e-006))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Lily white","Part",Vector3.new(0.822054565, 0.822054923, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.55992079, 0.000112533569, 0.656182647, 1.00000012, 5.96046448e-008, 0, 0, -0, 1, -5.96046448e-008, -0.99999994, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.822054684))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.758790135, -3.54368925, -0.0121307373, -7.85887241e-005, 0.999999821, -0.000226000062, 1.00000024, 7.86930323e-005, -4.30000109e-005, -4.29822612e-005, -0.000226003409, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Lily white","Part",Vector3.new(0.822054565, 0.822054923, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00143408775, 0.000112533569, 2.90232563, -5.14090061e-006, -0.999999881, 0, 0, -0, 1, -1.00000012, 5.03659248e-006, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.822054684))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Lily white","Part",Vector3.new(0.822054565, 0.822054923, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00143909454, 0.000112533569, 4.21759701, -5.14090061e-006, -0.999999881, 0, 0, -0, 1, -1.00000012, 5.03659248e-006, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.822054684))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0200505257, 4.21717024, 1.08967781, 0.00752747059, -0.999777675, 0.0196889918, -0.918272138, 0.000883668661, 0.395949095, -0.395878524, -0.0210603811, -0.918061435))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.150000006, 0.0500000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.3162117, -0.0123119354, 0.00224018097, -1, -8.59498978e-005, 3.2999993e-005, -3.29967588e-005, -3.76652824e-005, -1, 8.58455896e-005, -0.999999762, 3.76624521e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.78853416, 0.00396347046, 0.00237500668, -1, -8.59498978e-005, 3.2999993e-005, -3.29967588e-005, -3.76652824e-005, -1, 8.58455896e-005, -0.999999762, 3.76624521e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Lily white","Part",Vector3.new(0.822054565, 0.822054923, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.55997419, -0.0014642477, 0.657506943, 1.00000012, 5.96046448e-008, 0, -5.96046448e-008, -0.99999994, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.822054684))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Lily white","Part",Vector3.new(0.822054565, 0.822054923, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.55994558, 0.000112533569, -0.65910697, 1.00000012, 5.96046448e-008, 0, 0, -0, 1, -5.96046448e-008, -0.99999994, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.822054684))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0452651978, -4.74662447, -1.16377926, 0.00749411061, -0.0196938086, -0.999777973, 0.91828078, 0.395928979, -0.00091585709, 0.395859092, -0.91806978, 0.0210515838))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.200000003, 0.100000001))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.025069952, -4.28060722, 1.41301537, -0.00755046308, -0.999777853, 0.0196720008, 0.91829586, 0.00085477531, 0.39589408, -0.395823002, 0.0210538507, 0.918085456))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.97179794, -0.0248149633, -1.413414, -0.918264568, -0.000869721174, -0.395966858, 0.00750482082, 0.999779642, -0.019599719, 0.395896673, -0.0209693387, -0.918055654))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0456352234, 4.2078476, 1.08658266, 0.00754505675, -0.0196737703, -0.999777973, -0.918260574, -0.395975828, 0.000862201734, -0.395904839, 0.918050051, -0.0210533142))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.150000006, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0250612497, 4.20329857, 1.10445595, 0.00755044818, 0.999777734, -0.0196749978, -0.918262005, -0.000857785344, -0.395972848, -0.395901829, 0.021056518, 0.918051541))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.150000006, 0.0500000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.745593548, -3.54348421, -0.0124721527, -7.85887241e-005, 0.999999821, -0.000226000062, 1.00000024, 7.86930323e-005, -4.30000109e-005, -4.29822612e-005, -0.000226003409, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 1.2359035, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0452003479, -1.34889364, -4.90318918, -0.00748195825, 0.0196943507, 0.999778092, 0.395841599, -0.91807735, 0.0210472848, 0.918288469, 0.395911306, -0.000926826906))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.049999997, 0.100000001))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0453929901, 4.28519869, -1.24084282, -0.00749307126, 0.019688921, 0.999778092, -0.918288469, -0.395911217, 0.000914467033, 0.3958413, -0.918077528, 0.0210467))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.745593548, -3.54348421, -0.0124721527, -7.85887241e-005, 0.999999821, -0.000226000062, 1.00000024, 7.86930323e-005, -4.30000109e-005, -4.29822612e-005, -0.000226003409, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0130615234, 4.28312206, -1.26356626, -0.00754380831, -0.0196943358, -0.999777615, -0.918291926, 0.395903111, -0.000869827869, 0.39583236, 0.918080807, -0.0210717656))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.97406673, -0.013092041, -1.41877007, -0.918215275, 0.396080911, -0.000812000129, 0.00756123429, 0.0195784699, 0.999779761, 0.396009743, 0.918006837, -0.0209721141))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0129547119, -4.74447346, -1.18677425, 0.00754387025, 0.0196892377, 0.999777734, 0.918260932, -0.395974874, 0.000869401032, 0.395904183, 0.918050051, -0.0210670438))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.200000003, 0.100000001))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 1.2359035, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0129947662, -1.37202382, -4.90099144, -0.00754274335, -0.0196368583, -0.999778748, 0.395909905, 0.918048739, -0.0210184921, 0.918258429, -0.395980597, 0.000849820091))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.049999997, 0.100000001))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0247044563, -4.7420845, -1.18166351, 0.00750142336, 0.999777853, -0.0196940023, 0.918281496, 0.000909253955, 0.395927191, 0.395857275, -0.0210546106, -0.918070734))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.200000003, 0.100000001))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0456390381, -4.2851491, 1.39511919, -0.0075444337, 0.0196708385, 0.999778092, 0.918296635, 0.395892441, -0.000859701599, -0.395821482, 0.918086052, -0.0210504513))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.97633743, -0.0453948975, -1.39552546, -0.918263912, -0.395968258, 0.000872000121, 0.00750196353, -0.0195990149, -0.999779761, 0.395898163, -0.918054879, 0.020967612))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0130367279, 4.20577812, 1.10923314, 0.00753646297, 0.0196856186, 0.999777853, -0.918271422, 0.395950437, -0.000874209742, -0.395879865, -0.91806066, 0.0210608095))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.150000006, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.024828434, 4.28065109, -1.25873947, -0.00749927759, -0.999777853, 0.0196889918, -0.918287694, -0.000908941031, -0.395913154, 0.395843178, -0.0210491717, -0.918076932))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 3.08975863, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0132369995, -4.28299618, 1.41806197, -0.00757891452, -0.0196782872, -0.999777615, 0.918279409, -0.395932138, 0.000831894635, -0.395860672, -0.918068707, 0.0210709032))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.0500000007))
Part=part(Enum.FormFactor.Plate,m,Enum.Material.Plastic,0.60000002384186,0,"Really red","Part",Vector3.new(3.08975935, 1.2359035, 3.0897584))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0246500969, -1.36680794, -4.89863014, -0.00749026239, -0.999777853, 0.01969501, 0.395847559, -0.0210511237, -0.918074906, 0.918285728, 0.000919699669, 0.395917386))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.049999997, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0,0,"Really red","Part",Vector3.new(1.08511221, 0.26305759, 0.2630575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.745593548, -3.54348421, -0.0124721527, -7.85887241e-005, 0.999999821, -0.000226000062, 1.00000024, 7.86930323e-005, -4.30000109e-005, -4.29822612e-005, -0.000226003409, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.08511221, 0.26305759, 0.2630575))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Wedge",Vector3.new(0.386815935, 2.0825088, 0.413803011))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000724434853, 1.95191002, 0.360801697, 5.14090061e-006, 0.999999881, -0, -1.00000012, 5.03659248e-006, 0, 0, -0, 1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Wedge",Vector3.new(0.386815935, 2.19045758, 0.413803011))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0127688646, 1.91367435, 0.345359802, -5.14090061e-006, -0.999999881, 0, -1.00000012, 5.03659248e-006, 0, 0, 0, -1))
Wedge=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Really black","Wedge",Vector3.new(0.386815935, 2.16796827, 0.413803011))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0144672394, 1.896492, 0.347070456, 0, 0, -1, -1.00000012, -5.96046448e-008, 0, 5.96046448e-008, 0.99999994, -0))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Marble,0,0,"Institutional white","Part",Vector3.new(0.677527368, 0.475305647, 0.479803413))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.21442938, 4.05311584e-006, 1.90734863e-006, 1.00000012, 5.96046448e-008, 0, 5.96046448e-008, 0.99999994, -0, 0, -0, 1))
Hitbox=part(Enum.FormFactor.Brick,m,Enum.Material.DiamondPlate,0,1,"Dark stone grey","Hitbox",Vector3.new(2.56087685, 2.97087693, 2.8608768))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.01957369, -0.169885635, 0.0917295218, 1.00000012, 5.96046448e-008, 0, 0, -0, 1, -5.96046448e-008, -0.99999994, 0))



main=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Really black","Handle",Vector3.new(1.18888795, 0.202614263, 1.19073999))
mainweld=weld(m,Character["Right Arm"],main,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000557899475, 0.292643309, 0.0299999714, 1, 0, 0, 0, 0.999999762, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Marble,0,0,"Institutional white","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.405221939, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.DiamondPlate,0,0,"Really black","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.780060053, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Marble,0,0,"Institutional white","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.354575872, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Marble,0,0,"Institutional white","Part",Vector3.new(1.18888795, 0.202614263, 1.19073999))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.20555973, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.17777681, 2.13758039, 1.17961144))
Partweld=weld(m,main,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.298867464, 0, 1, 0, 0, 0, 0.999999523, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Marble,0,0,"Institutional white","Part",Vector3.new(1.19999909, 0.202614263, 2.47050714))
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
la.Material = "Marble"
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
la1.Material = "Marble"
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
rng.Material = "Marble"
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
la2.Material = "Marble"
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
