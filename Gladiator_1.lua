
--Runs with no error. Still no actual script running--

script.Parent = nil
Character = game.Players.localPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
TagService = require(game:GetService("ReplicatedStorage"):WaitForChild("TagService"))
Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
hitsounds = {"199149137", "199149186", "199149221", "199149235", "199149269", "199149297"}
blocksounds = {"199148933", "199148947"}
armorsounds = {"199149321", "199149338", "199149367", "199149409", "199149452"}
woosh = {Heavy1 = "320557353", Heavy2 = "320557382", Heavy3 = "320557453", Heavy4 = "199144226", Heavy5 = "203691447", Heavy6 = "203691467", Heavy7 = "203691492", Light1 = "320557413", Light2 = "320557487", Light3 = "199145095", Light4 = "199145146", Light5 = "199145887", Light6 = "199145913", Light7 = "199145841", Medium1 = "320557518", Medium2 = "320557537", Medium3 = "320557563", Medium4 = "199145204"}
music = {Breaking = "179281636", FinalReckoning = "357375770", NotDeadYet = "346175829", Intense = "151514610", JumpP1 = "160536628", JumpP2 = "60536666", SonsOfWar = "158929777", WrathOfSea = "165520893", ProtectorsOfEarth = "160542922", SkyTitans = "179282324", ArchAngel = "144043274", Anticipation = "168614529", TheMartyred = "186849544", AwakeP1 = "335631255", AwakeP2 = "335631297", ReadyAimFireP1 = "342455387", ReadyAimFireP2 = "342455399", DarkLordP1 = "209567483", DarkLordP2 = "209567529", BloodDrainP1 = "162914123", BloodDrainP2 = "162914203", DanceOfSwords = "320473062", Opal = "286415112", Calamity = "190454307", Hypnotica = "155968128", Nemisis = "160453802", Breathe = "276963903", GateToTheRift = "270655227", InfernalBeserking = "244143404", Trust = "246184492", AwakeningTheProject = "245121821", BloodPain = "242545577", Chaos = "247241693", NightmareFictionHighStake = "248062278", TheWhiteWeapon = "247236446", Gale = "256851659", ImperialCode = "256848383", Blitzkrieg = "306431437", RhapsodyRage = "348690251", TheGodFist = "348541501", BattleForSoul = "321185592", TheDarkColossus = "305976780", EmpireOfAngels = "302580452", Kronos = "302205297", Exorcist = "299796054", CrimsonFlames = "297799220", UltimatePower = "295753229", DrivingInTheDark = "295753229", AscendToPower = "293860654", GodOfTheSun = "293612495", DarkRider = "293861765", Vengeance = "293375555", SoundOfWar = "293376196", HellsCrusaders = "293012202", Legend = "293011823", RisingSouls = "290524959"}
misc = {GroundSlam = "199145477", LaserSlash = "199145497", RailGunFire = "199145534", Charge1 = "199145659", Charge2 = "169380469", Charge3 = "169380479", EmptyGun = "203691822", GunShoot = "203691837", Stomp1 = "200632875", Stomp2 = "200632561", TelsaCannonCharge = "169445572", TelsaCannonShoot = "169445602", AncientHymm = "245313442"}
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 0
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local gun = false
local shoot = false
player = nil
mana = 0
Character:FindFirstChild("Animate"):Destroy()
Humanoid:findFirstChild("Animator"):Destroy()
Humanoid.WalkSpeed = 12
print("Gladiator loaded.")
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NoOutline = function(Part)
  Part.TopSurface = 10
end

player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
m.Name = "Gladiator\'s Greatsword"
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

it = Instance.new
nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

wep = game:service("ReplicatedStorage").Weapons[script.Name][Player.Stats.SkinValue.Value]:Clone()
wep.Parent = Character
for i,v in pairs(wep:children()) do
  if not v:isA("StringValue") and v.BrickColor == BrickColor.new("Bright blue") then
    v.BrickColor = Torso.BrickColor
  end
end
Handle = wep.Handle
Handleweld = weld(m, Character["Left Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00593662262, 0.999967575, -0.00341796875, 0.00495308638, -0.000796281383, 0.999987423, 5.21182892e-006, 0.999999464, 0.000796210894, -0.999987781, 1.26810494e-006, 0.00495308917))
Hitbox = wep.Hitbox
Hitbox2 = wep.Hitbox2
EffectReference = wep.EffectReference
EffectReference2 = wep.EffectReference2
EffectReference3 = wep.EffectReference3
weldScript = function(weldTo)
  local weldModel = Instance.new("Model", weldTo)
  weldModel.Name = "Welds"
  local makeWeld = function(part1, part0)
    local w = Instance.new("Weld", weldModel)
    w.Part0 = part0
    w.Part1 = part1
    local CFrameOrigin = CFrame.new(part0.Position)
    local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
    local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
    w.C0 = CFrame0
    w.C1 = CFrame1
  end

  for i,v in pairs(weldTo.Parent:children()) do
    if (v.ClassName == "Part" or v.Name == "Part" or v:isA("WedgePart")) and v ~= weldTo then
      makeWeld(v, weldTo)
      v.Anchored = false
      v.CanCollide = false
      v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
    end
  end
  weldTo.Anchored = false
  weldTo.CanCollide = false
  weldTo.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
end

weldScript(Handle)
for i,v in pairs(Character:GetChildren()) do
  if v:IsA("Model") then
    for _,c in pairs(v:GetChildren()) do
      if c:IsA("Part") then
        c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
      end
    end
  end
end
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 17.5
local co2 = 37.5
local co3 = 57.5
local co4 = 90
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 3
local critdamageaddmax = 6
local maxstamina = 100
local stamina = 0
local skill1stam = 15
local skill2stam = 30
local skill3stam = 45
local skill4stam = 75
local recovermana = 3
local defensevalue = 1.4
local speedvalue = 0.6
local mindamage = 5
local maxdamage = 10
local damagevalue = 0.9
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
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
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end

framesk1 = makeframe(scrn, 0.5, ud(0.23, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, ud(0.5, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, ud(0.5, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, ud(0.23, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[C] Tornado")
text2 = makelabel(framesk2, "[V] Aerial Smash")
text3 = makelabel(framesk3, "[X] Crack")
text4 = makelabel(framesk4, "[Z] Bash")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 0.61960784313725, 0))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 0))
staminatext = makelabel(staminabar, "Strength")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
healthtext = makelabel(healthbar, "Health")
local stats = Instance.new("Folder", Character)
stats.Name = "Stats"
local block = Instance.new("BoolValue", stats)
block.Name = "Block"
block.Value = false
local stun = Instance.new("BoolValue", stats)
stun.Name = "Stun"
stun.Value = false
local defense = Instance.new("NumberValue", stats)
defense.Name = "Defence"
defense.Value = defensevalue
local speed = Instance.new("NumberValue", stats)
speed.Name = "Speed"
speed.Value = speedvalue
local damagea = Instance.new("NumberValue", stats)
damagea.Name = "Damage"
damagea.Value = damagevalue
makeeffect = function(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.FormFactor = "Custom"
  nooutline(p)
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  if id ~= nil and type == nil then
    mesh.MeshId = "rbxassetid://" .. id
  else
    if id == nil and type ~= nil then
      mesh.MeshType = type
    else
      if id == nil and type == nil then
        mesh.MeshType = "Brick"
      end
    end
  end
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end
)()
  return p
end

clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end
)()
    end
  end
)()
end

circle = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("CylinderMesh", p)
  mesh.Scale = Vector3.new(0, 0, 0)
  coroutine.wrap(function()
    for i = 0, 5, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end
)()
end

firespaz1 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 15, 0.1 do
      wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end
)()
end

pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end

sound = function(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or Torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  wait()
  s:play()
  game.Debris:AddItem(s, last or 120)
end

clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end
)()
    end
  end
)()
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

getclosest = function(obj, dis, player)
  if player.Torso.CFrame.p - obj.magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= Character and v.Torso.Position - obj.magnitude <= dis then
          table.insert(list, v)
        end
      end
      do return list end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end

tag = function(hum, player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = player
  creator.Name = "creator"
end

untag = function(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end

tagplayer = function(h)
  coroutine.wrap(function()
    tag(h, player)
    wait(1)
    untag(h)
  end
)()
end

randomizer = function(percent)
  local randomized = math.random(0, 100)
  if randomized <= percent then
    return true
  else
    if percent <= randomized then
      return false
    end
  end
end

turncrit = function()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(0.25)
    crit = false
  end
))
end

subtractstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end

local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
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
nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  local TrailColor = "Dark grey"
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(TrailColor)
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new(TrailColor)
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.01})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    fat.Event:wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

clerp = function(a, b, t)
  local qa = {QuaternionFromCFrame(a)}
  local qb = {QuaternionFromCFrame(b)}
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

local clerp = CFrame.new().lerp
local clerp = CFrame.new().lerp
QuaternionFromCFrame = function(cf)
  local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  local trace = m00 + m11 + m22
  if trace > 0 then
    local s = math.sqrt(1 + trace)
    local recip = 0.5 / s
    return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
  else
    do
      local i = 0
      if m00 < m11 then
        i = 1
      end
      if i == 0 and m00 or m11 < m22 then
        i = 2
      end
      if i == 0 then
        local s = math.sqrt(m00 - m11 - m22 + 1)
        local recip = 0.5 / s
        return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
      else
        do
          if i == 1 then
            local s = math.sqrt(m11 - m22 - m00 + 1)
            local recip = 0.5 / s
            return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
          else
            do
              if i == 2 then
                local s = math.sqrt(m22 - m00 - m11 + 1)
                local recip = 0.5 / s
                return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
              end
            end
          end
        end
      end
    end
  end
end

QuaternionToCFrame = function(px, py, pz, x, y, z, w)
  local xs, ys, zs = x + x, y + y, z + z
  local wx, wy, wz = w * xs, w * ys, w * zs
  local xx = x * xs
  local xy = x * ys
  local xz = x * zs
  local yy = y * ys
  local yz = y * zs
  local zz = z * zs
  return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

QuaternionSlerp = function(a, b, t)
  local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
  local startInterp, finishInterp = nil, nil
  if cosTheta >= 0.0001 then
    if 1 - cosTheta > 0.0001 then
      local theta = math.acos(cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((1 - t) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      do
        startInterp = 1 - t
        finishInterp = t
        if 1 + cosTheta > 0.0001 then
          local theta = math.acos(-cosTheta)
          local invSinTheta = 1 / math.sin(theta)
          startInterp = math.sin((t - 1) * theta) * invSinTheta
          finishInterp = math.sin(t * theta) * invSinTheta
        else
          do
            startInterp = t - 1
            finishInterp = t
            return a[1] * (startInterp) + b[1] * finishInterp, a[2] * (startInterp) + b[2] * finishInterp, a[3] * (startInterp) + b[3] * finishInterp, a[4] * (startInterp) + b[4] * finishInterp
          end
        end
      end
    end
  end
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

local m = Instance.new("Model", Character)
makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", m)
  game:GetService("Debris"):AddItem(bg, 6.5)
  bg.Adornee = c
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  if crit == true then
    tl.TextColor3 = Color3.new(0.70588235294118, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.70588235294118, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      fat.Event:wait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end
)()
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    blocked = false
    block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    local D = math.random(minim, maxim) * damagea.Value
    TagService:NewTag(h.Parent, Player, "Gladiator", D)
    if blocked == false then
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
      if not h.Parent:FindFirstChild("Stats") then
        game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
        makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
        if h.Parent:FindFirstChild("Stats") then
          D = D / h.Parent:FindFirstChild("Stats").Defence.Value
        else
        end
        if not h.Parent:FindFirstChild("Stats") then
          game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D / 2, 1)
          makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
          if Type == "Knockdown" then
            humanoid = hit.Parent.Humanoid
            humanoid.PlatformStand = true
            coroutine.resume(coroutine.create(function(Humanoid)
    fat.Event:wait()
    Humanoid.PlatformStand = false
  end
), humanoid)
            local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
            local bodvol = Instance.new("BodyVelocity")
            bodvol.velocity = angle * knockback
            bodvol.P = 5000
            bodvol.maxForce = Vector3.new(8000, 8000, 8000)
            bodvol.Parent = hit
            rl = Instance.new("BodyAngularVelocity")
            rl.P = 3000
            rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
            rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
            rl.Parent = hit
            game:GetService("Debris"):AddItem(bodvol, 0.5)
            game:GetService("Debris"):AddItem(rl, 0.5)
          else
            do
              if Type == "Normal" then
                so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                if KnockbackType == 1 then
                  vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                else
                  if KnockbackType == 2 then
                    vp.velocity = Property.CFrame.lookVector * knockback
                  end
                end
                if knockback > 0 then
                  vp.Parent = hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp, 0.5)
              else
                if Type == "Up" then
                  local bodyVelocity = Instance.new("BodyVelocity")
                  bodyVelocity.velocity = vt(0, 60, 0)
                  bodyVelocity.P = 5000
                  bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
                  bodyVelocity.Parent = hit
                  game:GetService("Debris"):AddItem(bodyVelocity, 1)
                  rl = Instance.new("BodyAngularVelocity")
                  rl.P = 3000
                  rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                  rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                  rl.Parent = hit
                  game:GetService("Debris"):AddItem(rl, 0.5)
                else
                  do
                    if Type == "Snare" then
                      bp = Instance.new("BodyPosition")
                      bp.P = 2000
                      bp.D = 100
                      bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                      bp.position = hit.Parent.Torso.Position
                      bp.Parent = hit.Parent.Torso
                      game:GetService("Debris"):AddItem(bp, 1)
                    else
                      if Type == "Target" then
                        so("http://www.roblox.com/asset/?id=199144144", hit, 1, math.random(150, 200) / 100)
                        vp = Instance.new("BodyVelocity")
                        vp.P = 500
                        vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                        if KnockbackType == 1 then
                          vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                        else
                          if KnockbackType == 2 then
                            vp.velocity = Property.CFrame.lookVector * knockback
                          end
                        end
                        if knockback > 0 then
                          vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, 0.5)
                      end
                    end
                    debounce = Instance.new("BoolValue")
                    debounce.Name = "DebounceHit"
                    debounce.Parent = hit.Parent
                    debounce.Value = true
                    game:GetService("Debris"):AddItem(debounce, Delay)
                    c = Instance.new("ObjectValue")
                    c.Name = "creator"
                    c.Value = Player
                    c.Parent = h
                    game:GetService("Debris"):AddItem(c, 0.5)
                    CRIT = false
                    hitDeb = true
                    AttackPos = 6
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
          Damagefunc(head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3, 1)
        end
      end
    end
  end
end

Shockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "SmoothPlastic"
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 4)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Shockwave2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 4)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

BashEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(90), math.rad(0), math.rad(0))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
end

BashEffect2 = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(0), math.rad(0), math.rad(0))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 6)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Shockwave3 = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(90), math.rad(0), math.rad(0))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 6)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Shockwave4 = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-75, 75)), math.rad(math.random(-75, 75)), math.rad(math.random(-75, 75)))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 6)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
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
          Damagefunc(head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3, 1)
        end
      end
    end
  end
end

canwalk = true
canidle = true
ragemode = false
Rage = function()
  if ragemode == false and attack == false and stamina >= 50 then
    attack = true
    ragemode = true
    speed.Value = 0.4
    Humanoid.WalkSpeed = 16 * speed.Value
    for i = 0, 1, 0.08 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 20 * i), math.rad(0), math.rad(20)), 0.15)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10 - 30 * i), math.rad(0), math.rad(20)), 0.15)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(45 + 90 * i), math.rad(-45), math.rad(-10)), 0.15)
      Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 - 360 * i), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    speed.Value = 0.4
    Humanoid.WalkSpeed = 16 * speed.Value
    so("http://roblox.com/asset/?id=199145095", Handle, 0.25, math.random(80, 120) / 100)
    for i = 0, 1, 0.08 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.15)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.15)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.9, 0) * angles(math.rad(180), math.rad(-45), math.rad(-10)), 0.15)
      Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    damagea.Value = 1.1
    defense.Value = 0.8
    speed.Value = 0.9
    Humanoid.WalkSpeed = 16 * speed.Value
    attack = false
  else
    if ragemode == true and attack == false then
      for i = 0, 1, 0.4 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.9, 0) * angles(math.rad(180), math.rad(-45), math.rad(-10)), 0.15)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      attack = true
      ragemode = false
      damagea.Value = 1.1
      defense.Value = 0.8
      speed.Value = 0.4
      Humanoid.WalkSpeed = 16 * speed.Value
      for i = 0, 1, 0.08 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10 + 20 * i), math.rad(0), math.rad(20)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20 + 30 * i), math.rad(0), math.rad(20)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.9, 0) * angles(math.rad(180 - 135 * i), math.rad(-45), math.rad(-10)), 0.15)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      speed.Value = 0.4
      Humanoid.WalkSpeed = 16 * speed.Value
      so("http://roblox.com/asset/?id=199145095", Handle, 0.25, math.random(80, 120) / 100)
      for i = 0, 1, 0.08 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(45), math.rad(-45), math.rad(-10)), 0.15)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      damagea.Value = 0.8
      defense.Value = 1.4
      speed.Value = 0.6
      Humanoid.WalkSpeed = 16 * speed.Value
      attack = false
    end
  end
  while ragemode == true and stamina >= 0 do
    fat.Event:wait()
    stamina = stamina - 0.1
    speed.Value = 0.9
    defense.Value = 0.8
    damagea.Value = 1.1
    Humanoid.WalkSpeed = 16 * speed.Value
  end
  if stamina <= 0 then
    attack = true
    ragemode = false
    speed.Value = 0.4
    Humanoid.WalkSpeed = 16 * speed.Value
    for i = 0, 1, 0.08 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10 + 20 * i), math.rad(0), math.rad(20)), 0.15)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20 + 30 * i), math.rad(0), math.rad(20)), 0.15)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.9, 0) * angles(math.rad(180 - 135 * i), math.rad(-45), math.rad(-10)), 0.15)
      Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    speed.Value = 0.4
    Humanoid.WalkSpeed = 16 * speed.Value
    so("http://roblox.com/asset/?id=199145095", Handle, 0.5, math.random(80, 120) / 100)
    for i = 0, 1, 0.08 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.15)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.15)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(45), math.rad(-45), math.rad(-10)), 0.15)
      Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    damagea.Value = 0.9
    defense.Value = 1.4
    speed.Value = 0.6
    Humanoid.WalkSpeed = 16 * speed.Value
    attack = false
  end
end

attackone = function()
  attack = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(205), math.rad(30), math.rad(-10)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145146", Hitbox, 1, 1)
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(45), math.rad(-25)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(45), math.rad(-25)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(-35), math.rad(-45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-45), math.rad(-35), math.rad(-45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(35), math.rad(-45)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(5), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(165), math.rad(-60), math.rad(90)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-15), math.rad(15), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145204", Hitbox, 1, 1)
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(5), math.rad(-45)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(7.565), math.rad(-14.862), math.rad(-62.778)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, -0.25) * angles(math.rad(-45), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(7.565), math.rad(-14.862), math.rad(-62.778)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, -0.25) * angles(math.rad(-45), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1.1)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end

Bash = function()
  attack = true
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-5, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 4, 8, 5, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=2767090", Torso, 1, math.random(80, 120) / 100)
  BashEffect("Institutional white", RootPart.CFrame, 1, 0.25, 1, 0.25, 0.25, 0.25, 0.025)
  BashEffect2("Institutional white", RootPart.CFrame, 1, 1, 1, 0.25, 0.25, 0.25, 0.02)
  local body = Instance.new("BodyVelocity", Torso)
  body.MaxForce = Vector3.new(10000, 0, 10000)
  body.P = 0.01
  body.Velocity = RootPart.CFrame.lookVector * 40
  for i = 0, 1, 0.3 do
    fat.Event:wait()
    BashEffect2("Institutional white", RootPart.CFrame, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.05)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-5, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-5, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  body.Parent = nil
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.7) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-15)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0, -1.25, -1) * angles(math.rad(0), math.rad(-90), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  attack = false
end

Smash = function()
  attack = true
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 1.25, -0.5) * angles(math.rad(160), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(0), math.rad(0), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=199145095", Hitbox, 1, 1.1)
  for i = 0, 1, 0.3 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  local hit, pos = rayCast(Hitbox.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if hit ~= nil then
    local Color = hit.BrickColor
    refpart = part(3, workspace, "SmoothPlastic", 0, 1, "Really black", "Effect", vt())
    refpart.Anchored = true
    refpart.CFrame = cf(pos)
    game:GetService("Debris"):AddItem(refpart, 1)
    so("http://www.roblox.com/asset/?id=199145477", refpart, 1, 0.75)
    so("http://roblox.com/asset/?id=157878578", refpart, 1, 1)
    so("http://roblox.com/asset/?id=2760979", refpart, 1, 1)
    so("http://www.roblox.com/asset/?id=142070127", refpart, 1, 1)
    for i = 1, 10 do
      local Color = hit.BrickColor
      local Materials = hit.Material
      local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(50, 100) / 100, math.random(50, 100) / 100, math.random(50, 100) / 100))
      groundpart.Anchored = false
      groundpart.Material = Materials
      groundpart.CanCollide = true
      groundpart.Friction = 0.1
      groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
      groundpart.CFrame = cf(pos) * cf(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      game:GetService("Debris"):AddItem(groundpart, 10)
    end
    for i = 1, 20 do
      local Color = hit.BrickColor
      local Materials = hit.Material
      local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(25, 50) / 100, math.random(25, 50) / 100, math.random(25, 50) / 100))
      groundpart.Anchored = false
      groundpart.Material = Materials
      groundpart.CanCollide = true
      groundpart.Friction = 0.1
      groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
      groundpart.CFrame = cf(pos) * cf(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      game:GetService("Debris"):AddItem(groundpart, 10)
    end
    for i = 1, 10 do
      local Color = hit.BrickColor
      local Materials = hit.Material
      local actualgroundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
      actualgroundpart.Anchored = true
      actualgroundpart.Material = Materials
      actualgroundpart.CanCollide = true
      actualgroundpart.Friction = 1
      actualgroundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      game:GetService("Debris"):AddItem(actualgroundpart, 10)
    end
    local Color = hit.BrickColor
    Shockwave2(Color, cf(refpart.Position), 1, 0.25, 1, 0.5, 0.25, 0.5, 0.025)
    Shockwave3(Color, cf(refpart.Position), 1, 1, 0.25, 0.75, 0.75, 0.75, 0.02)
    MagniDamage(refpart, 8, 10, 15, 10, "Normal")
  end
  do
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-45)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(30), math.rad(0), math.rad(45)), 0.45)
      Handleweld.C0 = clerp(Handleweld.C0, cf(0.75, -0.25, 0) * angles(math.rad(-25), math.rad(20), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
    con1:disconnect()
    con2:disconnect()
    attack = false
  end
end

SpinSlash = function()
  attack = true
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(-10), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-1.25, -0.75, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  con2 = Hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "Normal", RootPart, 0.2, 1)
  end
)
  for i = 1, 5 do
    so("http://roblox.com/asset/?id=199145146", Hitbox, 1, math.random(80, 120) / 100)
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.3)
      Handleweld.C0 = clerp(Handleweld.C0, cf(-1.25, -0.75, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
  end
  so("http://roblox.com/asset/?id=199145146", Hitbox, 1, math.random(80, 120) / 100)
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(-10), math.rad(45)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-1.25, -0.75, 0) * angles(math.rad(-90), math.rad(45), math.rad(90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  con1:disconnect()
  con2:disconnect()
  attack = false
end

Earthquake = function()
  attack = true
  canwalk = false
  canidle = false
  Humanoid.Jump = true
  Humanoid.WalkSpeed = 32 * speed.Value
  for i = 1, 5 do
    so("http://roblox.com/asset/?id=199145146", Hitbox, 1, 2)
    for i = 0, 1, 0.2 do
      fat.Event:wait()
      Torso.Velocity = vt(0, 50, 0)
      Humanoid.WalkSpeed = 32 * speed.Value
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(10), math.rad(10)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 1.25, 0) * angles(math.rad(180), math.rad(0), math.rad(-10)), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
      Handleweld.C0 = clerp(Handleweld.C0, cf(1 - 1.5 * i, -1, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(-90)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
  end
  for i = 0, 1, 0.05 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 32 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-0.75, -0.25, 0) * angles(math.rad(0), math.rad(180), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  hitfloor = nil
  while hitfloor == nil do
    fat.Event:wait()
    hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  end
  local Color = hitfloor.BrickColor
  print("touched")
  refpart = part(3, workspace, "SmoothPlastic", 0, 1, "Really black", "Effect", vt())
  refpart.Anchored = true
  refpart.CFrame = cf(posfloor)
  game:GetService("Debris"):AddItem(refpart, 1)
  for i = 1, 20 do
    local Color = hitfloor.BrickColor
    local Materials = hitfloor.Material
    local actualgroundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(300, 600) / 100, math.random(300, 600) / 100, math.random(300, 600) / 100))
    actualgroundpart.Anchored = true
    actualgroundpart.Material = Materials
    actualgroundpart.CanCollide = true
    actualgroundpart.Friction = 1
    actualgroundpart.CFrame = cf(posfloor) * cf(math.random(-1500, 1500) / 100, 0, math.random(-1500, 1500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(actualgroundpart, 10)
  end
  for i = 1, 20 do
    local Color = hitfloor.BrickColor
    local Materials = hitfloor.Material
    local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
    groundpart.Anchored = false
    groundpart.Material = Materials
    groundpart.CanCollide = true
    groundpart.Friction = 0.1
    groundpart.Velocity = Vector3.new(math.random(-100, 100), math.random(100, 150), math.random(-100, 100))
    groundpart.CFrame = cf(posfloor) * cf(math.random(-250, 250) / 100, 5, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(groundpart, 10)
  end
  for i = 1, 40 do
    local Color = hitfloor.BrickColor
    local Materials = hitfloor.Material
    local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(50, 100) / 100, math.random(50, 100) / 100, math.random(50, 100) / 100))
    groundpart.Anchored = false
    groundpart.Material = Materials
    groundpart.CanCollide = true
    groundpart.Friction = 0.1
    groundpart.Velocity = Vector3.new(math.random(-100, 100), math.random(100, 150), math.random(-100, 100))
    groundpart.CFrame = cf(posfloor) * cf(math.random(-250, 250) / 100, 5, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(groundpart, 10)
  end
  local Color = hitfloor.BrickColor
  so("http://www.roblox.com/asset/?id=199145477", refpart, 1, 0.6)
  so("http://roblox.com/asset/?id=157878578", refpart, 1, 0.6)
  so("http://roblox.com/asset/?id=2760979", refpart, 1, 0.6)
  so("http://www.roblox.com/asset/?id=142070127", refpart, 1, 0.6)
  so("http://roblox.com/asset/?id=168586621", refpart, 1, 0.5)
  Shockwave2(Color, cf(refpart.Position), 1, 0.25, 1, 1, 0.5, 1, 0.01)
  Shockwave(Color, cf(refpart.Position), 3, 3, 3, 3, 3, 3, 0.01)
  Shockwave3(Color, cf(refpart.Position), 1, 1, 0.25, 1.5, 1.5, 0.25, 0.01)
  for i = 0, math.random(4, 8) do
    Humanoid.WalkSpeed = 0 * speed.Value
    Torso.Velocity = vt(0, 0, 0)
    Shockwave4(Color, cf(refpart.Position), 1, 1, 1, 2, 2, 2, 0.01)
  end
  for i = 0, math.random(4, 8) do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    Torso.Velocity = vt(0, 0, 0)
    MagniDamage(refpart, 30, 5, 10, 10, "Normal")
    Shockwave3(Color, cf(refpart.Position), 0.1, 0.1, 0.1, 2, 2, 1, 0.01)
  end
  for i = 0, 1, 0.04 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    MagniDamage(refpart, 30, 5, 10, 10, "Normal")
    Torso.Velocity = vt(0, 0, 0)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    Handleweld.C0 = clerp(Handleweld.C0, cf(-0.75, -0.25, 0) * angles(math.rad(0), math.rad(180), math.rad(-45)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  Humanoid.WalkSpeed = 16 * speed.Value
  canwalk = true
  canidle = true
  attack = false
end

mouse.Button1Down:connect(function()
  if attack == false and stamina >= 2.5 then
    if attacktype == 1 then
      attacktype = 2
      attackone()
    else
      if attacktype == 2 then
        attacktype = 3
        attacktwo()
      else
        if attacktype == 3 then
          attacktype = 4
          attackthree()
        else
          if attacktype == 4 then
            attacktype = 1
            attackfour()
          end
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        fat.Event:wait()
      end
    end
    if attack == false then
      attacktype = 1
    end
  end
))
end
)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "e" and attack == false then
    Rage()
  end
  if k == "z" and attack == false and stamina >= 2.5 and co1 <= cooldown1 and skill1stam <= stamina then
    cooldown1 = 0
    subtractstamina(skill1stam)
    Bash()
  end
  if k == "x" and attack == false and stamina >= 2.5 and co2 <= cooldown2 and skill2stam <= stamina then
    cooldown2 = 0
    subtractstamina(skill2stam)
    Smash()
  end
  if k == "c" and attack == false and stamina >= 2.5 and co3 <= cooldown3 and skill3stam <= stamina then
    cooldown3 = 0
    subtractstamina(skill3stam)
    SpinSlash()
  end
  if k == "v" and attack == false and stamina >= 2.5 and co4 <= cooldown4 and skill4stam <= stamina then
    cooldown4 = 0
    subtractstamina(skill4stam)
    Earthquake()
  end
end
)
mouse.KeyUp:connect(function(k)
  k = k:lower()
end
)
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
  if stamina <= skill1stam then
    bar4.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar4.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill2stam then
    bar3.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar3.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill3stam then
    bar1.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar1.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill4stam then
    bar2.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar2.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= maxstamina then
    stamina = stamina + recovermana / 30
  end
end

Character.Humanoid.Died:connect(function()
  for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Model") then
      v:Clone()
      v.Parent = workspace
      v.Children.CanCollide = true
    end
  end
end
)
game:GetService("RunService").Heartbeat:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
end
)
local sine = 0
local change = 1
local val = 0
fat.Event:connect(function()
  sine = sine + change
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velderp = RootPart.Velocity.y
  hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if ((idle >= 500 and attack ~= false) or RootPart.Velocity.y > 1) and hitfloor == nil then
      Anim = "Jump"
      if attack == false and ragemode == false then
        fat.Event:wait()
        Humanoid.WalkSpeed = 16 * speed.Value
        change = 2
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(0.25, 0.25, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(-5)), 0.15)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-157.5), math.rad(0), math.rad(180)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
      else
        if attack == false and ragemode == true then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.15)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-45), math.rad(-20)), 0.15)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
          Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        end
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false and ragemode == false then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
          RW.C0 = clerp(RW.C0, CFrame.new(0.25, 0.25, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.15)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(-5)), 0.15)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
          Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-157.5), math.rad(0), math.rad(180)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
        else
          if attack == false and ragemode == true then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.15)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(175), math.rad(-45), math.rad(0)), 0.15)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
            Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          end
        end
      else
        if torvel < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false and ragemode == false then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 15)) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.15)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5 + 1 * math.cos(sine / 15)) + -math.sin(sine / 15) / 15, math.rad(0), math.rad(-45)), 0.15)
            RW.C0 = clerp(RW.C0, CFrame.new(0.25, 0.25 + 0.05 * math.cos(sine / 15) + math.sin(sine / 15) / 15, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.15)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 15) + math.sin(sine / 15) / 15, 0) * angles(math.rad(-15), math.rad(-30), math.rad(-5)), 0.15)
            RH.C0 = clerp(RH.C0, cf(0.9, -0.9 - 0.1 * math.cos(sine / 15), 0.2) * angles(math.rad(0), math.rad(60), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            LH.C0 = clerp(LH.C0, cf(-0.9, -0.9 - 0.1 * math.cos(sine / 15), 0) * angles(math.rad(0), math.rad(-105), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(-157.5 + 1 * math.cos(sine / 15)), math.rad(0), math.rad(180)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
          else
            if attack == false and ragemode == true then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.15)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5 + 1 * math.cos(sine / 25)) + -math.sin(sine / 25) / 15, math.rad(0), math.rad(-15)), 0.15)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.05 * math.cos(sine / 25) + math.sin(sine / 25) / 15, 0) * angles(math.rad(10), math.rad(0), math.rad(15 + 5 * math.cos(sine / 25)) + math.sin(sine / 25) / 15), 0.15)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 25) + math.sin(sine / 25) / 15, 0) * angles(math.rad(175), math.rad(-45), math.rad(-10)), 0.15)
              RH.C0 = clerp(RH.C0, cf(1.05, -0.9 - 0.1 * math.cos(sine / 25), 0.1) * angles(math.rad(0), math.rad(75), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1.05, -0.9 - 0.1 * math.cos(sine / 25), 0.1) * angles(math.rad(0), math.rad(-75), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
            else
              if attack == true and ragemode == false then
                fat.Event:wait()
                change = 2
                Humanoid.WalkSpeed = 16 * speed.Value
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
              else
                if attack == true and ragemode == true then
                  fat.Event:wait()
                  change = 2
                  Humanoid.WalkSpeed = 16 * speed.Value
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                end
              end
            end
          end
        else
          if torvel > 2 and torvel < 22 and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false and ragemode == false then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.05 - 0.05 * math.cos(sine / 3.5)) * angles(math.rad(0), math.rad(0), math.rad(60 + 5 * math.cos(sine / 7))), 0.25)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60 - 5 * math.cos(sine / 7))), 0.25)
              RW.C0 = clerp(RW.C0, CFrame.new(0.25, 0.25, -0.5) * angles(math.rad(0), math.rad(0 + 5 * math.cos(sine / 7)), math.rad(-50)), 0.25)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(-45 - 5 * math.cos(sine / 7)), math.rad(-15)), 0.25)
              RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 3.5) / 2, 0.5 * math.cos(sine / 3.5) / 2) * angles(math.rad(-30 * math.cos(sine / 3.5)) + -math.sin(sine / 3.5) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 3.5) / 2, -0.5 * math.cos(sine / 3.5) / 2) * angles(math.rad(30 * math.cos(sine / 3.5)) + math.sin(sine / 3.5) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              Handleweld.C0 = clerp(Handleweld.C0, cf(-0.25, 0, 0) * angles(math.rad(-150 - 2.5 * math.cos(sine / 7)), math.rad(15), math.rad(180)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.25)
            else
              if attack == false and ragemode == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                change = 2
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.2 * math.cos(sine / 3)) * angles(math.rad(10), math.rad(0), math.rad(5 * math.cos(sine / 6))), 0.15)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-5 * math.cos(sine / 6))), 0.15)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45 * math.cos(sine / 6)), math.rad(0), math.rad(5)), 0.15)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.4 + 0.1 * math.cos(sine / 3) + math.sin(sine / 3) / 6, 0) * angles(math.rad(175), math.rad(-45), math.rad(-10)), 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 6) / 2, 0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-5 - 60 * math.cos(sine / 6)) + -math.sin(sine / 6) / 2.5, math.rad(90 - 5 * math.cos(sine / 6)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 6) / 2, -0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-5 + 60 * math.cos(sine / 6)) + math.sin(sine / 6) / 2.5, math.rad(-90 - 5 * math.cos(sine / 6)), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
              else
                if attack == true and canwalk == true and ragemode == true then
                  fat.Event:wait()
                  Humanoid.WalkSpeed = 16 * speed.Value
                  change = 2
                  RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 6) / 2, 0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-15 - 60 * math.cos(sine / 6)) + -math.sin(sine / 6) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 6) / 2, -0.5 * math.cos(sine / 6) / 2) * angles(math.rad(-15 + 60 * math.cos(sine / 6)) + math.sin(sine / 6) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                else
                  if attack == true and canwalk == true and ragemode == false then
                    fat.Event:wait()
                    Humanoid.WalkSpeed = 16 * speed.Value
                    change = 2
                    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 3.5) / 2, 0.5 * math.cos(sine / 3.5) / 2) * angles(math.rad(-30 * math.cos(sine / 3.5)) + -math.sin(sine / 3.5) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 3.5) / 2, -0.5 * math.cos(sine / 3.5) / 2) * angles(math.rad(30 * math.cos(sine / 3.5)) + math.sin(sine / 3.5) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
                  end
                end
              end
            end
          else
            if torvel >= 22 and hitfloor ~= nil then
              Anim = "Run"
            end
          end
        end
      end
    end
  end
end
)

