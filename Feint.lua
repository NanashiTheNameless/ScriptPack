local Character = game.Players.localPlayer.Character
local Humanoid = Character.Humanoid
script.Parent = nil
wait()
if Character:FindFirstChild("Animate") then
  Character.Animate:Destroy()
end
Effects = {}
Meshes = {
  Blast = "20329976",
  Crown = "1323306",
  Ring = "3270017",
  Claw = "10681506",
  Crystal = "9756362",
  Coil = "9753878",
  Cloud = "1095708"
}
clangsounds = {
  "199149119",
  "199149109",
  "199149072",
  "199149025",
  "199148971"
}
hitsounds = {
  "199149137",
  "199149186",
  "199149221",
  "199149235",
  "199149269",
  "199149297"
}
blocksounds = {"199148933", "199148947"}
armorsounds = {
  "199149321",
  "199149338",
  "199149367",
  "199149409",
  "199149452"
}
woosh = {
  Heavy1 = "320557353",
  Heavy2 = "320557382",
  Heavy3 = "320557453",
  Heavy4 = "199144226",
  Heavy5 = "203691447",
  Heavy6 = "203691467",
  Heavy7 = "203691492",
  Light1 = "320557413",
  Light2 = "320557487",
  Light3 = "199145095",
  Light4 = "199145146",
  Light5 = "199145887",
  Light6 = "199145913",
  Light7 = "199145841",
  Medium1 = "320557518",
  Medium2 = "320557537",
  Medium3 = "320557563",
  Medium4 = "199145204"
}
music = {
  Breaking = "179281636",
  FinalReckoning = "357375770",
  NotDeadYet = "346175829",
  Intense = "151514610",
  JumpP1 = "160536628",
  JumpP2 = "60536666",
  SonsOfWar = "158929777",
  WrathOfSea = "165520893",
  ProtecTorsofEarth = "160542922",
  SkyTitans = "179282324",
  ArchAngel = "144043274",
  Anticipation = "168614529",
  TheMartyred = "186849544",
  AwakeP1 = "335631255",
  AwakeP2 = "335631297",
  ReadyAimFireP1 = "342455387",
  ReadyAimFireP2 = "342455399",
  DarkLordP1 = "209567483",
  DarkLordP2 = "209567529",
  BloodDrainP1 = "162914123",
  BloodDrainP2 = "162914203",
  DanceOfSwords = "320473062",
  Opal = "286415112",
  Calamity = "190454307",
  Hypnotica = "155968128",
  Nemisis = "160453802",
  Breathe = "276963903",
  GateToTheRift = "270655227",
  InfernalBeserking = "244143404",
  Trust = "246184492",
  AwakeningTheProject = "245121821",
  BloodPain = "242545577",
  Chaos = "247241693",
  NightmareFictionHighStake = "248062278",
  TheWhiteWeapon = "247236446",
  Gale = "256851659",
  ImperialCode = "256848383",
  Blitzkrieg = "306431437",
  RhapsodyRage = "348690251",
  TheGodFist = "348541501",
  BattleForSoul = "321185592",
  TheDarkColossus = "305976780",
  EmpireOfAngels = "302580452",
  Kronos = "302205297",
  Exorcist = "299796054",
  CrimsonFlames = "297799220",
  UltimatePower = "295753229",
  DrivingInTheDark = "295753229",
  AscendToPower = "293860654",
  GodOfTheSun = "293612495",
  DarkRider = "293861765",
  Vengeance = "293375555",
  SoundOfWar = "293376196",
  HellsCrusaders = "293012202",
  Legend = "293011823",
  RisingSouls = "290524959"
}
misc = {
  GroundSlam = "199145477",
  LaserSlash = "199145497",
  RailGunFire = "199145534",
  Charge1 = "199145659",
  Charge2 = "169380469",
  Charge3 = "169380479",
  EmptyGun = "203691822",
  GunShoot = "203691837",
  Stomp1 = "200632875",
  Stomp2 = "200632561",
  TelsaCannonCharge = "169445572",
  TelsaCannonShoot = "169445602",
  AncientHymm = "245313442"
}
TagService = require(game:GetService("ReplicatedStorage"):WaitForChild("TagService"))
wait(0.016666666666666666)
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
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
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
local co1 = 10
local co2 = 15
local co3 = 15
local co4 = 25
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 7
local critdamageaddmax = 8
local maxstamina = 100
local stamina = 0
local skill1stam = 10
local skill2stam = 10
local skill3stam = 20
local skill4stam = 30
local recoverStamina = 3
local defensevalue = 1
local speedvalue = 1
local mindamage = 7
local maxdamage = 13
local damagevalue = 1
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
if Humanoid:FindFirstChild("Animator") then
  Humanoid:FindFirstChild("Animator"):Destroy()
end
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
RSH, LSH = nil, nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
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
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end
function makelabel(par, text)
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
text1 = makelabel(framesk1, "[C] Crescent Kick")
text2 = makelabel(framesk2, "[V] King Hit")
text3 = makelabel(framesk3, "[X] Mach Punch")
text4 = makelabel(framesk4, "[Z] Flurry")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0.23921568627450981, 0.6705882352941176, 1))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), BrickColor.new("Deep orange").Color)
staminatext = makelabel(staminabar, "Stamina")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), BrickColor.new("Lime green").Color)
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
function atktype(s, e)
  coroutine.resume(coroutine.create(function()
    attacktype = e
    wait(1.5)
    attacktype = s
  end))
end
function turncrit()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(0.25)
    crit = false
  end))
end
function subtractstamina(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
function clerp(a, b, t)
  return a:lerp(b, t)
end
local clerp = CFrame.new().lerp
fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if tf >= frame then
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
end)
function randomizer(percent)
  local randomized = math.random(0, 100)
  if percent >= randomized then
    return true
  elseif percent <= randomized then
    return false
  end
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({
    formFactor = FormFactor,
    Parent = Parent,
    Reflectance = Reflectance,
    Transparency = Transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BColor)),
    Name = Name,
    Size = Size,
    Material = Material
  })
  RemoveOutlines(Part)
  return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({
    Parent = Part,
    Offset = OffSet,
    Scale = Scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({
    Parent = Parent,
    Part0 = Part0,
    Part1 = Part1,
    C0 = C0,
    C1 = C1
  })
  return Weld
end
function rayCast(pos, dir, maxl, ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(pos, dir.unit * (maxl or 999.999)), ignore)
end
function makeeffect(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "SmoothPlastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.FormFactor = "Custom"
  RemoveOutlines(p)
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  if id ~= nil and type == nil then
    mesh.MeshId = "rbxassetid://" .. id
  elseif id == nil and type ~= nil then
    mesh.MeshType = type
  elseif id == nil and type == nil then
    mesh.MeshType = "Brick"
  end
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666666666)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end)()
  return p
end
function clangy(cframe)
  wait(0.016666666666666666)
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
      wait(0.016666666666666666)
      dis = dis + 0.2
      local partc = part:clone()
      partc.Parent = workspace
      partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
      partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
      table.insert(clang, partc)
    end
    for i, v in pairs(clang) do
      coroutine.wrap(function()
        for i = 1, 10 do
          wait(0.01)
          v.Transparency = v.Transparency + 0.1
        end
        v:destroy()
      end)()
    end
  end)()
end
function circle(color, pos1)
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
      wait(0.016666666666666666)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
function firespaz1(color, pos1)
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
      wait(0.03333333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
function pickrandom(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end
function sound(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or Torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  wait()
  s:play()
  game.Debris:AddItem(s, last or 120)
end
function clangy(cframe)
  wait(0.016666666666666666)
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
      wait(0.016666666666666666)
      dis = dis + 0.2
      local partc = part:clone()
      partc.Parent = workspace
      partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
      partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
      table.insert(clang, partc)
    end
    for i, v in pairs(clang) do
      coroutine.wrap(function()
        for i = 1, 10 do
          wait(0.01)
          v.Transparency = v.Transparency + 0.1
        end
        v:destroy()
      end)()
    end
  end)()
end
function so(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
end
local function getclosest(obj, distance)
  local last, lastx = distance + 1, nil
  for i, v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:WaitForChild("Humanoid") and v:WaitForChild("Torso") and v:WaitForChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = (t.Position - obj.Position).magnitude
      if distance >= dist and last > dist then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end
function makegui(cframe, text)
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
  local bg = Instance.new("BillboardGui", m)
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
    tl.TextColor3 = Color3.new(0.7058823529411765, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.7058823529411765, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      wait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end)()
end
function tag(hum, Player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = Player
  creator.Name = "creator"
end
function untag(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end
function tagPlayer(h)
  coroutine.wrap(function()
    tag(h, Player)
    wait(1)
    untag(h)
  end)()
end
function damage(hit, mind, maxd, knock, type, prop)
  if hit.Name:lower() == "Hitbox" then
    do
      local pos = CFrame.new(0, 1, -1)
      sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, Torso, 6)
      coroutine.wrap(function()
        for i = 1, 4 do
          clangy(Torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
        end
      end)()
    end
  end
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for i, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent:IsA("Hat") then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  local D = math.random(mind, maxd) * damagea.Value
  if h.Parent:FindFirstChild("Stats") then
    D = D / h.Parent:FindFirstChild("Stats").Defence.Value
  elseif not h.Parent:FindFirstChild("Stats") then
  end
  TagService:NewTag(h.Parent, Player, "Feint", D)
  if h then
    makegui(h.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if type == 1 then
      tagPlayer(h)
      local asd = randomizer(critchance)
      if asd == true then
        turncrit()
      end
      if crit == false then
        game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
      else
        game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D + math.random(critdamageaddmin, critdamageaddmax), 1)
      end
      so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
      local vp = Instance.new("BodyVelocity")
      vp.P = 500
      vp.maxForce = Vector3.new(math.huge, 0, math.huge)
      vp.velocity = prop.CFrame.lookVector * knock + prop.Velocity / 1.05
      if knock > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif type == 2 then
      so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
      local asd = randomizer(critchance)
      if asd == true then
        turncrit()
      end
      if crit == false then
        game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
      else
        game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D + math.random(critdamageaddmin, critdamageaddmax), 1)
      end
      tagPlayer(h)
    elseif type == 3 then
      tagPlayer(h)
      local asd = randomizer(critchance)
      if asd == true then
        turncrit()
      end
      if crit == false then
        game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
      else
        game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D + math.random(critdamageaddmin, critdamageaddmax), 1)
      end
      Character.Humanoid.Health = Character.Humanoid.Health + D / 2
      so("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
      for i = 1, 10 do
        firespaz1("Bright red", hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
      end
    elseif type == 4 then
      h.Health = h.Health + D
      so("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
      circle("Dark green", h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
    end
  end
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          damage(head, mindam, maxdam, knock, Type, RootPart)
        end
      end
    end
  end
end
function subtrackstamina(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
HandleR = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 1, "Pastel brown", "HandleR", Vector3.new(1, 2, 1))
HandleRWeld = CreateWeld(m, Character["Right Arm"], HandleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43051147E-5, 0.00981497765, 0.00988006592, 1, -1.49374682E-6, -1.54998063E-12, 1.49374682E-6, 1, 5.68434189E-14, -1.77735257E-12, 0, 1))
HitboxR = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxR", Vector3.new(1.22000003, 1.82000005, 1.22000003))
HitboxRweld = CreateWeld(m, HandleR, HitboxR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100085258, 1.06811523E-4, 0.600012541, 1, 3.2848191E-5, -8.32955233E-12, -3.0448504E-12, -5.95883876E-8, -1, -3.2848191E-5, 1, -5.95883307E-8))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 1, 0.600000024))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599642754, 0.500111103, -2.89916992E-4, 1, -4.19706848E-5, 4.24335046E-13, 4.19706848E-5, 1, 3.62660249E-11, -7.07894464E-12, -3.61524213E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599673271, 0.500119686, -0.400039673, 1, -1.11804402E-5, -2.30415166E-12, 1.11804402E-5, 1, 5.62747592E-12, -4.35050607E-12, -5.57065939E-12, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-4, -0.500042677, -0.699640274, 2.90568805E-5, -3.88411921E-4, 0.999991655, -2.7397231E-5, -1.00000155, -3.88407265E-4, 0.999991715, -2.73862079E-5, -2.90963035E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.159999996, 0.219999999, 0.200000003))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599988937, 0.0996007919, -0.399993896, -1, 3.38821984E-21, 5.96079701E-8, -9.2388158E-20, -1, 5.9606009E-8, 5.96012271E-8, 5.96061582E-8, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.59998703, -0.899758577, -0.399993896, 1, -8.81061982E-26, -3.3273332E-12, -8.81061982E-26, 1, 5.68407626E-14, -3.3273332E-12, 5.68407626E-14, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.67164612E-4, -0.300412893, -0.600250244, -1, -4.2178297E-5, 1.19881577E-6, 4.2178297E-5, -1, -7.44886563E-7, 1.19884044E-6, -7.44835916E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.19999993, 0.400000006, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100003242, -0.599812269, -0.60005188, 1, 3.88205153E-5, -2.5382578E-11, -3.88205153E-5, 1, -1.19206959E-7, 1.40023756E-11, 1.19207016E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599972725, 0.500115633, -0.399749756, -1, 1.73773224E-5, -5.9603245E-8, 1.73773224E-5, 1, 2.54658187E-11, 5.96099028E-8, 2.43611797E-11, -1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.499610901, -0.500198841, -0.699650764, 2.90568805E-5, -3.88411921E-4, 0.999991655, -2.7397231E-5, -1.00000155, -3.88407265E-4, 0.999991715, -2.73862079E-5, -2.90963035E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.219999939, 0.219999969, 1.03999949))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.353855133, -0.353313446, -0.699645042, 1.32170089E-6, -0.707383096, 0.706830382, -3.94778399E-5, -0.706830382, -0.707383096, 1, -2.69691918E-5, -2.88601786E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.0999999493, 0.399999976, 0.0399994552))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.600000024, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.442344666, 0.59941864, -0.683185577, 6.20177525E-5, 0.499963373, 0.866046548, -1, 1.13593247E-4, 6.03349372E-6, -9.53605559E-5, -0.866046548, 0.499963403))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.499137878, 0.619600296, 0.500101566, -2.98727696E-6, 1.85703739E-5, -1, -1, 1.01788923E-4, 2.98917416E-6, 1.01788966E-4, 1, 1.85700683E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599681854, 0.300126076, -0.39994812, 1, 2.03925447E-6, -3.32733147E-12, -2.03925447E-6, 1, -2.44426614E-12, -3.32733689E-12, 2.50110783E-12, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-4, -0.500042677, -0.699640274, 2.90568805E-5, -3.88411921E-4, 0.999991655, -2.7397231E-5, -1.00000155, -3.88407265E-4, 0.999991715, -2.73862079E-5, -2.90963035E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.179999948, 0.519999981, 0.199999452))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.499351501, 0.609606743, 0.500109434, -2.9875016E-6, 1.8569237E-5, -1, -1, 8.08742989E-5, 2.98901023E-6, 8.08743571E-5, 1, 1.85689951E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 0.280000001))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599721909, -0.917217255, -0.354667664, 1, -5.59021828E-5, 1.65707388E-5, -5.12459046E-5, -0.707101464, 0.707112193, -2.78119114E-5, -0.707112193, -0.707101464))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 1.02999997))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409996033, -0.5998137, -0.00505065918, 1, 3.88205153E-5, -2.5382578E-11, -3.88205153E-5, 1, -1.19206959E-7, 1.40023756E-11, 1.19207016E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.420000017, 0.219999954, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100029945, 0.900012016, 0.310134888, 1, 2.98659634E-5, -5.94212873E-12, -2.9865967E-5, 1, -2.17709791E-11, -8.26255351E-13, 2.1884718E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599644661, 0.700093746, 0.399642944, 1, -6.58759673E-5, 3.03913145E-12, 6.58759673E-5, 1, 6.75298636E-11, -9.6936955E-12, -6.74731521E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599979401, 0.500121117, -0.399841309, -1, 8.41469955E-6, -5.96027974E-8, 8.41469955E-6, 1, 2.45563396E-11, 5.9609448E-8, 2.39632758E-11, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599987984, 0.0996193886, -0.399978638, 1, -8.81061982E-26, -3.3273332E-12, -3.23357774E-19, -1, 2.0862052E-7, 3.29789906E-12, -2.08620634E-7, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 1))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599987984, -0.39987731, 0, 1, -8.81061982E-26, -3.3273332E-12, -8.81061982E-26, 1, 5.68407626E-14, -3.3273332E-12, 5.68407626E-14, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.50038147, -0.499810457, -0.699622154, 2.90568805E-5, -3.88411921E-4, 0.999991655, -2.7397231E-5, -1.00000155, -3.88407265E-4, 0.999991715, -2.73862079E-5, -2.90963035E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.219999939, 0.219999969, 1.03999949))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.51905823E-4, -0.30041337, 0.599746704, -1, -4.21774821E-5, 1.19881565E-6, 4.21774821E-5, -1, -7.44904526E-7, 1.19884032E-6, -7.44853878E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.779999971, 1.02999997))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.41034317, -0.210378408, 0.0047454834, -1, -4.21774821E-5, 1.19881565E-6, 4.21774821E-5, -1, -7.44904526E-7, 1.19884032E-6, -7.44853878E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599664688, 0.300121784, -0.400024414, 1, -5.20506728E-6, -3.09995779E-12, 5.20506728E-6, 1, 5.34326966E-12, -3.66838591E-12, -5.28644099E-12, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.500862122, 0.619596481, 0.500080824, -2.98727696E-6, 1.85707395E-5, -1, -1, 1.0477841E-4, 2.98922964E-6, 1.04778454E-4, 1, 1.85704248E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599647522, -0.0998933315, -2.89916992E-4, 1, -4.49608415E-5, -3.04123046E-14, 4.49608415E-5, 1, 3.04111458E-11, -6.62420596E-12, -3.03543926E-11, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-4, -0.500042677, -0.699640274, 2.90568805E-5, -3.88411921E-4, 0.999991655, -2.7397231E-5, -1.00000155, -3.88407265E-4, 0.999991715, -2.73862079E-5, -2.90963035E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.0799999982, 0.5, 0.200000003))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.819999993, 0.219999954, 0.629999995))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999660492, 0.900015593, -0.204856873, 1, 2.98670111E-5, -5.94212873E-12, -2.98670147E-5, 1, -2.19983528E-11, -8.26255731E-13, 2.21120917E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.600000024, 0.200000003, 0.400000036))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.455169678, 0.599589348, 0.682567596, 4.86032659E-5, 0.500063539, -0.865988791, -1, 1.1637342E-4, 1.10750207E-5, 1.06316278E-4, 0.865988791, 0.500063539))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.280000001))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.59967804, 1.10010791, -2.44140625E-4, 1, -5.09402053E-5, 1.7328015E-5, 5.09402089E-5, 1, 1.19460424E-7, -1.73280259E-5, -1.18577681E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.50063324, 0.609606743, 0.50008893, -2.9875016E-6, 1.85696044E-5, -1, -1, 8.38633787E-5, 2.98906525E-6, 8.38634223E-5, 1, 1.85693534E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100021362, -0.599819422, 0.59992981, 1, 3.88205153E-5, -2.5382578E-11, -3.88205153E-5, 1, -1.19207641E-7, 1.41160608E-11, 1.19207755E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599684715, 0.500119925, -0.399963379, 1, -3.93570735E-6, -2.75889728E-12, 3.93570735E-6, 1, -2.50112019E-12, -4.00945813E-12, 2.61479358E-12, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.353313446, -0.353855133, -0.699645042, 3.95004536E-5, 0.706830442, 0.707383096, 1.3744334E-6, -0.707383096, 0.706830442, 1, -2.69478733E-5, -2.89134496E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.0999999493, 0.399999976, 0.0399994552))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599986076, -0.899719, -0.399993896, -1, -3.38804374E-21, -5.96013194E-8, -3.52424793E-25, 1, 2.27371019E-13, 5.96079701E-8, 8.9036905E-14, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599977493, 0.300119877, -0.39982605, -1, 8.41489964E-6, -5.96023426E-8, 8.41489964E-6, 1, 2.42721225E-11, 5.96089933E-8, 2.3679057E-11, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 0.280000001))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599697113, 0.919403076, -0.352443695, 1, -3.20638246E-5, 1.64810626E-5, 1.1021586E-5, 0.707166731, 0.707046926, -3.43254942E-5, -0.707046926, 0.707166731))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599649429, 0.700097561, -0.400314331, 1, -5.99005143E-5, 2.24332358E-12, 5.99005143E-5, 1, 5.91170446E-11, -9.12527345E-12, -5.90603261E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599982262, 0.300125122, -0.399902344, -1, -5.4721022E-7, -5.96017706E-8, -5.4721022E-7, 1, 2.28510526E-11, 5.96084249E-8, 2.27695623E-11, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 1.82000005, 1.01999998))
Partweld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.039505E-4, -0.0999879837, -1.06811523E-4, 1, 3.2848191E-5, -8.32955233E-12, -3.2848191E-5, 1, -5.95883307E-8, -3.46798436E-13, 5.95883876E-8, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599991798, -0.0996110439, 0.199920654, -1, -6.34190599E-7, 5.66247195E-7, -6.34194294E-7, 1, -5.2479038E-7, -5.66240203E-7, -5.24790835E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.600089073, -0.300405502, 0.600090027, 1, 2.82137116E-5, -4.80121059E-7, 2.82137116E-5, -1, 2.19559342E-6, -4.80052449E-7, -2.19560684E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.35693359E-4, -0.500409603, 0.599746704, -1, -3.91331341E-5, 1.19882213E-6, 3.91331341E-5, -1, -8.04506612E-7, 1.1988468E-6, -8.04459603E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599987984, 0.099660635, -0.199996948, 1, -8.81061982E-26, -3.3273332E-12, -9.23878931E-20, -1, 5.96058385E-8, 3.4163694E-12, -5.96059522E-8, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.00000012, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.04222107E-4, -0.500388145, 0.600059509, 1, -5.561531E-6, -4.17235071E-7, -5.561531E-6, -1, -2.9061207E-6, -4.17212249E-7, 2.90612275E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.59998703, -0.100438833, 0.399993896, 1, -1.94144377E-7, 5.96013194E-8, -1.94144377E-7, -1, 3.22516541E-7, 5.96079985E-8, -3.22516684E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100019455, -0.59992218, 0.899537802, -1, -3.84513696E-5, -2.08590762E-7, 2.08808771E-7, -5.49188235E-6, -1, 3.84513696E-5, -1, 5.49189008E-6))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.599999964, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599977493, -0.899738073, -0.200012207, 1, -5.97504913E-6, -2.64521044E-12, 5.97504913E-6, 1, 2.7853143E-12, -4.00944989E-12, -2.67164437E-12, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100024223, 0.29954052, 0.59992981, -1, -3.9111248E-5, -2.08590876E-7, 3.9111248E-5, -1, 7.13046688E-8, -2.08600355E-7, 7.12966255E-8, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.20000005, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999574661, 3.91721725E-4, 0.600296021, -1, -6.45358523E-6, 5.66263793E-7, -6.45358523E-6, 1, -6.43976421E-7, -5.66252879E-7, -6.43980115E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599987984, 0.0996084213, -0.199996948, -1, 3.38821984E-21, 5.96079701E-8, -3.23370983E-19, -1, 2.08629046E-7, 5.96012342E-8, 2.08629245E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.60008812, -0.100507259, 0.399887085, -1, -3.29193354E-5, -8.93986396E-8, 3.2919339E-5, -1, 7.3503719E-7, -8.94295837E-8, 7.35034348E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599696159, -0.800389051, 0.600074768, 1, -5.561531E-6, -4.17235071E-7, -5.561531E-6, -1, -2.9061207E-6, -4.17212249E-7, 2.90612275E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599662781, -0.0996143818, 0.199867249, 1, -1.45980448E-5, -5.06641811E-7, 1.45980448E-5, 1, 5.24764403E-7, 5.0662743E-7, -5.24771735E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100002289, -0.600028992, 0.899544001, 1, 3.8785678E-5, 8.55291944E-8, -8.57485531E-8, 5.48373191E-6, 1, 3.8785678E-5, -1, 5.48373464E-6))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599676132, 0.100384712, -0.400146484, 1, -1.79821109E-5, -8.04665206E-7, 1.79821218E-5, 1, 1.03162338E-5, 8.04473018E-7, -1.03162483E-5, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599985123, -0.100492477, 0.399993896, -1, -7.11515895E-8, -8.94036418E-8, 7.11515895E-8, -1, 6.7544886E-7, -8.9410392E-8, 6.7544903E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599990845, -1.2995863, 0.400001526, -1, 7.11479515E-8, 8.94102925E-8, 7.11443136E-8, 1, -6.70539578E-7, -8.94036702E-8, -6.70539691E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.20000005, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0996932983, 4.05788422E-4, 0.599769592, 1, 2.72100078E-5, -5.06646813E-7, -2.72100078E-5, 1, 4.65183348E-7, 5.06652782E-7, -4.6516945E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000036, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.600084305, 4.03404236E-4, 0.600097656, -1, -2.15366381E-5, 5.66250549E-7, -2.15366399E-5, 1, -5.84380189E-7, -5.66231222E-7, -5.84392524E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599989891, -1.29953194, 0.399993896, 1, 1.94140739E-7, -5.96080838E-8, -1.94140739E-7, 1, -4.32125432E-7, 5.96012377E-8, 4.32125518E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599696159, -0.800389051, 0.600074768, 1, -5.561531E-6, -4.17235071E-7, -5.561531E-6, -1, -2.9061207E-6, -4.17212249E-7, 2.90612275E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599691391, -0.800389767, 0.599868774, -1, 6.1999599E-6, 4.17232883E-7, -6.1999599E-6, -1, -2.13565386E-6, 4.17212846E-7, -2.13565636E-6, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599773407, -0.300402641, 0.599761963, -1, -2.3661305E-5, 4.17239278E-7, 2.3661305E-5, -1, -2.07628545E-6, 4.17281598E-7, -2.07627568E-6, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599681854, 0.100391626, -0.399917603, -1, 9.14937118E-6, 8.24212577E-7, 9.14937846E-6, 1, 1.14438672E-5, -8.24101051E-7, 1.14438762E-5, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.599999964, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599986076, -0.899734735, -0.199996948, -1, -3.38804374E-21, -5.96013194E-8, -3.52424793E-25, 1, 2.27371019E-13, 5.96079701E-8, 8.9036905E-14, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599755287, 3.95536423E-4, 0.599617004, 1, 9.2894843E-6, -5.06644767E-7, -9.2894843E-6, 1, 4.65217227E-7, 5.0664238E-7, -4.65212366E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.600078583, -0.300397873, 0.600151062, 1, 1.51494678E-5, -4.80119695E-7, 1.51494696E-5, -1, 2.19552658E-6, -4.80079734E-7, -2.19553408E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100008011, 0.29954052, 0.600021362, 1, 3.86263782E-5, 5.95791505E-8, 3.86263782E-5, -1, 4.41736631E-7, 5.96030638E-8, -4.41734272E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599773407, -0.300402641, 0.599761963, -1, -2.3661305E-5, 4.17239278E-7, 2.3661305E-5, -1, -2.07628545E-6, 4.17281598E-7, -2.07627568E-6, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HandleL = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 1, "Pastel brown", "HandleL", Vector3.new(1, 2, 1))
HandleLWeld = CreateWeld(m, Character["Left Arm"], HandleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.03334808E-4, 0.00981450081, -7.32421875E-4, -1, -1.49374682E-6, 5.96046448E-8, -1.49374682E-6, 1, 8.52651351E-14, -5.96046448E-8, -3.76911704E-15, -1))
HitboxL = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxL", Vector3.new(1.22000003, 1.82000005, 1.22000003))
HitboxLweld = CreateWeld(m, HandleL, HitboxL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100085258, 1.06811523E-4, 0.600012302, 1, 3.2848191E-5, 0, 1.95754524E-12, -5.95883343E-8, -1, -3.2848191E-5, 1, -5.95883343E-8))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.600000024, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.442344666, 0.599419594, -0.683189392, 6.20248538E-5, 0.499963373, 0.866046548, -1, 1.13601753E-4, 6.03679246E-6, -9.53662311E-5, -0.866046548, 0.499963373))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.499130249, 0.619600773, 0.500101089, -2.98025998E-6, 1.85703739E-5, -1, -1, 1.01788923E-4, 2.98215014E-6, 1.01788981E-4, 1, 1.85700683E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599680424, 0.300125837, -0.39994812, 1, 2.03925447E-6, 0, -2.03925447E-6, 1, -2.43791836E-12, 0, 2.43791836E-12, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.499351501, 0.609608173, 0.500109434, -2.98025998E-6, 1.8569237E-5, -1, -1, 8.08742989E-5, 2.98176178E-6, 8.08743571E-5, 1, 1.85689951E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.73840332E-4, -0.5000422, -0.699644566, 2.90876469E-5, -3.88415152E-4, 1, -2.73971655E-5, -1, -3.88414337E-4, 1, -2.73858641E-5, -2.90982844E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.179999948, 0.519999981, 0.199999452))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 0.280000001))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599721432, -0.91721344, -0.354671478, 1, -5.59021828E-5, 1.65700912E-5, -5.1245428E-5, -0.707101464, 0.707112134, -2.78123753E-5, -0.707112134, -0.707101405))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 1.02999997))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.40999794, -0.5998137, -0.00505065918, 1, 3.88205153E-5, 0, -3.88205153E-5, 1, -1.19209702E-7, -4.62563321E-12, 1.19209687E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.420000017, 0.219999954, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100028992, 0.900012016, -0.299850464, 1, 2.98659634E-5, 0, -2.98659634E-5, 1, -2.1703769E-11, 0, 2.1703769E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599644184, 0.700093985, 0.399650574, 1, -6.58759673E-5, 0, 6.58759673E-5, 1, 6.58574167E-11, -7.10542736E-15, -6.58574167E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599978924, 0.500121117, -0.399841309, -1, 8.41469955E-6, -5.96046448E-8, 8.41469955E-6, 1, 2.49158038E-11, 5.96046448E-8, 2.44142484E-11, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.59998703, 0.099619627, -0.399978638, 1, 5.08219809E-21, 0, -1.24347605E-14, -1, 2.08620577E-7, 0, -2.08620577E-7, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 1))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599986553, -0.39987731, 0, 1, 5.08219809E-21, 0, 5.08219809E-21, 1, -6.77626358E-21, 0, -6.77626358E-21, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599663258, 0.300121546, -0.400024414, 1, -5.20506728E-6, 0, 5.20506728E-6, 1, 5.39773217E-12, 0, -5.39773217E-12, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.779999971, 1.02999997))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.410343647, -0.21037817, 0.00475311279, -1, -4.21774857E-5, 1.1920929E-6, 4.21774857E-5, -1, -7.44901911E-7, 1.19212439E-6, -7.44851661E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.5238266E-4, -0.300413132, 0.599746704, -1, -4.21774857E-5, 1.1920929E-6, 4.21774857E-5, -1, -7.44901911E-7, 1.19212439E-6, -7.44851661E-7, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.50038147, -0.499809742, -0.699625015, 2.90876469E-5, -3.88415152E-4, 1, -2.73971655E-5, -1, -3.88414337E-4, 1, -2.73858641E-5, -2.90982844E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.219999939, 0.219999969, 1.03999949))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.500862122, 0.619595528, 0.500080824, -2.98025998E-6, 1.85707395E-5, -1, -1, 1.0477841E-4, 2.98220584E-6, 1.04778468E-4, 1, 1.85704248E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.819999993, 0.219999954, 0.620000005))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999674797, 0.900015593, 0.200126648, 1, 2.98670111E-5, 0, -2.98670111E-5, 1, -2.21585788E-11, 0, 2.21585788E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599646091, -0.0998933315, -2.89916992E-4, 1, -4.49608415E-5, 0, 4.49608415E-5, 1, 3.09594746E-11, 0, -3.0959478E-11, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.73840332E-4, -0.5000422, -0.699644566, 2.90876469E-5, -3.88415152E-4, 1, -2.73971655E-5, -1, -3.88414337E-4, 1, -2.73858641E-5, -2.90982844E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.0799999982, 0.5, 0.200000003))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.600000024, 0.200000003, 0.400000036))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.455184937, 0.599589348, 0.682571411, 4.85976961E-5, 0.500063539, -0.865988851, -1, 1.16375595E-4, 1.10827004E-5, 1.06322012E-4, 0.865988791, 0.500063539))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.280000001))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599677086, 1.10010803, -2.5177002E-4, 1, -5.09402053E-5, 1.73449498E-5, 5.09402016E-5, 1, 1.19460708E-7, -1.73449553E-5, -1.18577148E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.50063324, 0.609605789, 0.50008893, -2.98025998E-6, 1.85696044E-5, -1, -1, 8.38633787E-5, 2.98181726E-6, 8.38634369E-5, 1, 1.85693534E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100021839, -0.599819422, 0.59992981, 1, 3.88205153E-5, 0, -3.88205153E-5, 1, -1.19209702E-7, -4.62563321E-12, 1.19209687E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599683285, 0.500119925, -0.399963379, 1, -3.93570735E-6, 0, 3.93570735E-6, 1, -2.2949457E-12, 0, 2.2949457E-12, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.353317261, -0.353847504, -0.699644089, 3.94778726E-5, 0.706830442, 0.707383096, 1.35724986E-6, -0.707383037, 0.706830442, 1, -2.69440643E-5, -2.88853207E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.0999999493, 0.399999976, 0.0399994552))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599985123, -0.899719, -0.399993896, -1, 0, -5.96046448E-8, -8.47032947E-21, 1, 2.27373675E-13, 5.96046448E-8, 2.27373675E-13, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599976063, 0.300119877, -0.39982605, -1, 8.41489964E-6, -5.96046448E-8, 8.41489964E-6, 1, 2.40063212E-11, 5.96046448E-8, 2.35047537E-11, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 0.280000001))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599697113, 0.919406891, -0.352432251, 1, -3.20638246E-5, 1.65104866E-5, 1.10007823E-5, 0.707166731, 0.707046866, -3.43462925E-5, -0.707046866, 0.707166731))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 1, 0.600000024))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599642277, 0.500111341, -2.89916992E-4, 1, -4.19706848E-5, 0, 4.19706848E-5, 1, 3.7147712E-11, 0, -3.7147712E-11, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.73840332E-4, -0.5000422, -0.699644566, 2.90876469E-5, -3.88415152E-4, 1, -2.73971655E-5, -1, -3.88414337E-4, 1, -2.73858641E-5, -2.90982844E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.159999996, 0.219999999, 0.200000003))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599671364, 0.500119686, -0.400039673, 1, -1.11804402E-5, 0, 1.11804402E-5, 1, 5.75389215E-12, 0, -5.75389215E-12, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.59998703, 0.0996007919, -0.399993896, -1, -1.01643962E-20, 5.96046448E-8, -3.55280516E-15, -1, 5.96060943E-8, 5.96046377E-8, 5.96060943E-8, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599985123, -0.899758577, -0.399993896, 1, 5.08219809E-21, 0, 5.08219809E-21, 1, -6.77626358E-21, 0, -6.77626358E-21, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.67164612E-4, -0.300412655, -0.600250244, -1, -4.21783006E-5, 1.1920929E-6, 4.21783006E-5, -1, -7.44886449E-7, 1.19212439E-6, -7.448362E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.19999993, 0.400000006, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100004673, -0.599812269, -0.60005188, 1, 3.88205153E-5, 0, -3.88205153E-5, 1, -1.19209702E-7, -4.62563321E-12, 1.19209687E-7, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599970818, 0.500115633, -0.399749756, -1, 1.73773224E-5, -5.96046448E-8, 1.73773224E-5, 1, 2.56773908E-11, 5.96046448E-8, 2.46416221E-11, -1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.353851318, -0.353317261, -0.699644089, 1.29764294E-6, -0.707383096, 0.706830382, -3.94480703E-5, -0.706830382, -0.707383096, 1, -2.69651628E-5, -2.88221108E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.0999999493, 0.399999976, 0.0399994552))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.49961853, -0.500198126, -0.699653625, 2.90876469E-5, -3.88415152E-4, 1, -2.73971655E-5, -1, -3.88414337E-4, 1, -2.73858641E-5, -2.90982844E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.219999939, 0.219999969, 1.03999949))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599648952, 0.700097322, -0.400314331, 1, -5.99005143E-5, 0, 5.99005143E-5, 1, 5.82252996E-11, 0, -5.82252926E-11, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599983215, 0.300125122, -0.399902344, -1, -5.4721022E-7, -5.96046448E-8, -5.4721022E-7, 1, 2.28468598E-11, 5.96046448E-8, 2.28794761E-11, -1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 1.82000005, 1.01999998))
Partweld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.039505E-4, -0.0999879837, -1.06811523E-4, 1, 3.2848191E-5, 0, -3.2848191E-5, 1, -5.95892367E-8, -1.95754524E-12, 5.95892367E-8, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.20000005, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0996937752, 4.0602684E-4, 0.599769592, 1, 2.72100078E-5, -4.76837158E-7, -2.72100078E-5, 1, 4.65183632E-7, 4.76849777E-7, -4.65170672E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000036, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.600083828, 4.03404236E-4, 0.600097656, -1, -2.15366381E-5, 5.06639481E-7, -2.15366381E-5, 1, -5.84380189E-7, -5.06626918E-7, -5.84391103E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599692822, -0.800390244, 0.599868774, -1, 6.19996081E-6, 4.1723257E-7, -6.19996172E-6, -1, -2.13565363E-6, 4.17219326E-7, -2.13565613E-6, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599696636, -0.800389051, 0.600074768, 1, -5.56153191E-6, -4.1723257E-7, -5.56153327E-6, -1, -2.90612047E-6, -4.17216398E-7, 2.90612297E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599988461, -1.29953218, 0.399993896, 1, 1.94140739E-7, -5.96046448E-8, -1.94140711E-7, 1, -4.32125319E-7, 5.96045666E-8, 4.32125347E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599772453, -0.300402641, 0.599761963, -1, -2.36613068E-5, 4.1723257E-7, 2.3661305E-5, -1, -2.07628409E-6, 4.17281683E-7, -2.07627431E-6, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599679947, 0.100392103, -0.399917603, -1, 9.14937118E-6, 8.49366188E-7, 9.14938028E-6, 1, 1.1443869E-5, -8.49261482E-7, 1.14438772E-5, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.599999964, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599985123, -0.899734735, -0.199996948, -1, 0, -5.96046448E-8, -8.47032947E-21, 1, 2.27373675E-13, 5.96046448E-8, 2.27373675E-13, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599754333, 3.95774841E-4, 0.599624634, 1, 9.2894843E-6, -4.76837158E-7, -9.2894843E-6, 1, 4.65217454E-7, 4.76841478E-7, -4.6521302E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.60008049, -0.300397635, 0.600158691, 1, 1.51494678E-5, -4.76837158E-7, 1.51494687E-5, -1, 2.19552658E-6, -4.76803905E-7, -2.19553385E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599772453, -0.300402641, 0.599761963, -1, -2.36613068E-5, 4.1723257E-7, 2.3661305E-5, -1, -2.07628409E-6, 4.17281683E-7, -2.07627431E-6, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100007534, 0.299540281, 0.600013733, 1, 3.86263782E-5, 5.96046448E-8, 3.86263782E-5, -1, 4.41737427E-7, 5.96217049E-8, -4.41735125E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599989891, -0.0996108055, 0.199920654, -1, -6.34190599E-7, 5.06639481E-7, -6.34190826E-7, 1, -5.2479038E-7, -5.0663914E-7, -5.24790664E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.600090027, -0.300405502, 0.600090027, 1, 2.82137116E-5, -4.76837158E-7, 2.82137134E-5, -1, 2.19559365E-6, -4.76775199E-7, -2.19560729E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599986076, 0.099660635, -0.199996948, 1, 5.08219809E-21, 0, -3.5527933E-15, -1, 5.96058953E-8, 3.55271368E-15, -5.96058953E-8, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.34739685E-4, -0.500409603, 0.599746704, -1, -3.91331378E-5, 1.1920929E-6, 3.91331378E-5, -1, -8.04505817E-7, 1.19212439E-6, -8.04459205E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599986076, -0.100438595, 0.399993896, 1, -1.94144377E-7, 5.96046448E-8, -1.94144391E-7, -1, 3.22516541E-7, 5.96045808E-8, -3.22516541E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.00000012, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.06606293E-4, -0.500388145, 0.600059509, 1, -5.56153191E-6, -4.1723257E-7, -5.56153327E-6, -1, -2.90612047E-6, -4.17216398E-7, 2.90612297E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100019932, -0.59992218, 0.899537802, -1, -3.84513696E-5, -2.08616257E-7, 2.0882743E-7, -5.4918828E-6, -1, 3.84513696E-5, -1, 5.49189053E-6))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100025177, 0.29954052, 0.59992981, -1, -3.9111248E-5, -2.08616257E-7, 3.9111248E-5, -1, 7.13048109E-8, -2.08619042E-7, 7.12966539E-8, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.599999964, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599977016, -0.899738312, -0.200004578, 1, -5.97504913E-6, 0, 5.97504913E-6, 1, 2.94251624E-12, 0, -2.94251624E-12, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.20000005, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999584198, 3.91960144E-4, 0.600296021, -1, -6.45358523E-6, 5.06639481E-7, -6.45358568E-6, 1, -6.43976591E-7, -5.06635331E-7, -6.43979831E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599987984, 0.0996084213, -0.200004578, -1, -1.01643962E-20, 5.96046448E-8, -1.2435267E-14, -1, 2.08629075E-7, 5.96046448E-8, 2.08629075E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599696636, -0.800389051, 0.600074768, 1, -5.56153191E-6, -4.1723257E-7, -5.56153327E-6, -1, -2.90612047E-6, -4.17216398E-7, 2.90612297E-6, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.60008812, -0.100507021, 0.399887085, -1, -3.29193354E-5, -5.96046448E-8, 3.29193354E-5, -1, 7.35038668E-7, -5.96288388E-8, 7.35036679E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599660873, -0.0996146202, 0.199874878, 1, -1.45980448E-5, -4.76837158E-7, 1.45980448E-5, 1, 5.24764403E-7, 4.76829484E-7, -5.24771394E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.20000005, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100002289, -0.600021362, 0.899544001, 1, 3.8785678E-5, 5.96046448E-8, -5.98173315E-8, 5.48373191E-6, 1, 3.8785678E-5, -1, 5.48373418E-6))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599676609, 0.100384712, -0.400146484, 1, -1.79821127E-5, -7.74860382E-7, 1.79821218E-5, 1, 1.03162338E-5, 7.74674845E-7, -1.03162483E-5, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599990368, -1.29958582, 0.400001526, -1, 7.11479515E-8, 1.19209261E-7, 7.11478805E-8, 1, -6.70539634E-7, -1.19209304E-7, -6.70539634E-7, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.5999856, -0.100492239, 0.399993896, -1, -7.11515895E-8, -5.96046448E-8, 7.11515469E-8, -1, 6.75448973E-7, -5.96046945E-8, 6.75448916E-7, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
function MagicBlock(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {
      prt,
      "Block1",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  elseif Type == 2 then
    table.insert(Effects, {
      prt,
      "Block2",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  end
end
function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function MagicRing(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function MagicCylinder(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function MagicWave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function MagicSpecial(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function BreakEffect(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Shatter",
    num,
    prt.CFrame,
    math.random() - math.random(),
    0,
    math.random(50, 100) / 100
  })
end
function attackone()
  attack = true
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(90), math.rad(50), math.rad(-40)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(100), math.rad(-30), math.rad(-20)), 0.5)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
    end
  end
  con = HitboxR.Touched:connect(function(hit)
    damage(hit, mindamage, maxdamage, 1, 1, RootPart)
    con:disconnect()
  end)
  so("http://www.roblox.com/asset/?id=200632136", HitboxR, 1, 1.5)
  for i = 0, 1, 0.14 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-80)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(20), math.rad(20), math.rad(90)), 0.7)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.5)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
    end
  end
  attack = false
  con:disconnect()
end
function attacktwo()
  attack = true
  for i = 0, 1, 0.3 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.6)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.6)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(100), math.rad(30), math.rad(20)), 0.6)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(90), math.rad(-50), math.rad(40)), 0.6)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
    end
  end
  so("http://www.roblox.com/asset/?id=200632136", HitboxL, 1, 1.3)
  con = HitboxL.Touched:connect(function(hit)
    damage(hit, mindamage, maxdamage, 1, 1, RootPart)
    con:disconnect()
  end)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.55)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.55)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(90), math.rad(20), math.rad(-30)), 0.55)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(20), math.rad(-20), math.rad(-90)), 0.55)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
    end
  end
  attack = false
  con:disconnect()
end
function attackthree()
  attack = true
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(90), math.rad(50), math.rad(-40)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(100), math.rad(-30), math.rad(-20)), 0.5)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
    end
  end
  con = RightLeg.Touched:connect(function(hit)
    damage(hit, mindamage, maxdamage, 1, 1, RootPart)
    con:disconnect()
  end)
  so("http://www.roblox.com/asset/?id=200632211", RightLeg, 1, 1.1)
  for i = 0, 1, 0.13 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(40), math.rad(0), math.rad(-10)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.1, -0.5) * angles(math.rad(60), math.rad(0), math.rad(-40)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(70), math.rad(0), math.rad(40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(90)), 0.7)
    LH.C0 = clerp(LH.C0, cn(-1, -0.7, 0.3) * LHCF * angles(math.rad(0), math.rad(-20), math.rad(40)), 0.5)
  end
  con:disconnect()
  attack = false
end
function Flurry()
  attack = true
  for i = 0, 1, 0.2 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(90), math.rad(50), math.rad(-40)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(100), math.rad(-30), math.rad(-20)), 0.5)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
    end
  end
  for i = 1, 4 do
    con1 = HitboxR.Touched:connect(function(hit)
      damage(hit, mindamage - 4, maxdamage - 4, 1, 1, RootPart)
      con1:disconnect()
    end)
    for i = 0, 1, 0.2 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.5)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(5), math.rad(-80)), 0.5)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(20), math.rad(20), math.rad(90)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.5)
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
      elseif Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
      end
    end
    so("http://www.roblox.com/asset/?id=200632136", HitboxR, 1, 1.2)
    con2 = HitboxR.Touched:connect(function(hit)
      damage(hit, mindamage - 4, maxdamage - 4, 1, 1, RootPart)
      con2:disconnect()
    end)
    for i = 0, 1, 0.2 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(3), math.rad(90)), 0.5)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(90), math.rad(20), math.rad(-30)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(20), math.rad(-20), math.rad(-90)), 0.5)
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      elseif Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(40), math.rad(0)), 0.5)
      end
    end
    so("http://www.roblox.com/asset/?id=200632136", HitboxL, 1, 1.3)
    con1:disconnect()
    con2:disconnect()
  end
  attack = false
end
local Charge = -30
local Hold = false
local ChargeColor = BrickColor.new("Neon orange")
local ChargePhase = 0
function MachPunch()
  attack = true
  Hold = true
  speed.Value = 0.5
  while fat.Event:wait() do
    if Hold == true then
      print(Charge)
      Charge = Charge + 1
      if Charge == 1 then
        ChargePhase = 1
        MagicBlock(BrickColor.new("Deep orange"), HitboxL.CFrame, 0.8, 0.8, 0.8, 2, 2, 2, 0.05, 1)
        ChargeColor = BrickColor.new("Deep orange")
      elseif Charge == 80 then
        ChargePhase = 2
        MagicBlock(BrickColor.new("New Yeller"), HitboxL.CFrame, 0.8, 0.8, 0.8, 2.5, 2.5, 2.5, 0.05, 1)
        ChargeColor = BrickColor.new("New Yeller")
      elseif Charge == 160 then
        ChargePhase = 3
        MagicBlock(BrickColor.new("Crimson"), HitboxL.CFrame, 0.8, 0.8, 0.8, 3.5, 3.5, 3.5, 0.07, 1)
        ChargeColor = BrickColor.new("Crimson")
      end
      if ChargePhase == 2 then
        MagicRing(ChargeColor, HitboxL.CFrame * CFrame.Angles(math.random(2, 5), math.random(1, 3), math.random(6, 8)), 0.3, 0.3, 0.3, 0.5, 0.5, 0.5, 0.1)
      end
      if ChargePhase == 3 then
        BreakEffect(ChargeColor, HitboxL.CFrame, 0.5, 3, 0.5)
      end
      MagicBlock(ChargeColor, HitboxL.CFrame, 0.3, 0.3, 0.3, 0.8, 0.8, 0.8, 0.07, 1)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(3), math.rad(-3), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(120), math.rad(30), math.rad(-30)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(100), math.rad(0), math.rad(20)), 0.3)
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
      elseif Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
      end
    elseif Hold == false then
      break
    end
  end
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    MagicBlock(ChargeColor, HitboxL.CFrame, 0.3, 0.3, 0.3, 0.8, 0.8, 0.8, 0.07, 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(100), math.rad(30), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(90), math.rad(-50), math.rad(40)), 0.3)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(0)), 0.5)
    end
  end
  MagniDamage(HitboxL, 10, mindamage + ChargePhase + 3, maxdamage + ChargePhase + 3, 3 + ChargePhase, 1)
  RootPart.Velocity = RootPart.CFrame.lookVector * 55
  so("http://www.roblox.com/asset/?id=200632211", HitboxL, 1, 0.6)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    MagicBlock(ChargeColor, HitboxL.CFrame, 0.3, 0.3, 0.3, 0.8, 0.8, 0.8, 0.05, 1)
    MagicWave(ChargeColor, HitboxL.CFrame * CFrame.Angles(math.rad(90), 0, 0), 0.4, 0.4, 0.4, 0.25, 0.25, 0.25, 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.7)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.3) * angles(math.rad(100), math.rad(30), math.rad(-20)), 0.7)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.7)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.5)
    end
  end
  speed.Value = 1
  ChargeColor = BrickColor.new("Neon orange")
  ChargePhase = 0
  Charge = -30
  attack = false
end
function GetX(Part, Point)
  local x, y, z = Part.CFrame:toObjectSpace(CFrame.new(Part.Position, Point)):toEulerAnglesXYZ()
  return math.deg(x)
end
function GetY(Part, Point)
  local x, y, z = Part.CFrame:toObjectSpace(CFrame.new(Part.Position, Point)):toEulerAnglesXYZ()
  return math.deg(y)
end
LoopFunctions = {}
function DoLoop(times, func)
  LoopFunctions[#LoopFunctions + 1] = {
    times,
    0,
    func
  }
end
function Effect1(orig, adjj, radius, deg, parts, fade, wide, fadespeed)
  local orig = orig
  local adjj = adjj or CFrame.new(0, 0, 0)
  local radius = radius or 8
  local deg = deg or 65
  local parts = parts or 6
  local fade = fade or 1
  local wide = wide or 0.2
  local fadespeed = fadespeed or 0.05
  local part = {}
  local cos, sin, rad = math.cos, math.sin, math.rad
  local cf = CFrame.new
  local new = Instance.new("Part")
  new.Anchored = true
  new.TopSurface = 10
  new.BottomSurface = 10
  new.CanCollide = false
  new.Size = Vector3.new(0.2, 0.2, 0.2)
  new.BrickColor = BrickColor.new("New Yeller")
  new.Transparency = 0
  new.Material = "Neon"
  local PE1 = Create("ParticleEmitter")({
    Parent = new,
    Color = ColorSequence.new(BrickColor.new("New Yeller").Color),
    Transparency = NumberSequence.new(0.5),
    Size = NumberSequence.new(0.2),
    Texture = "rbxassetid://263433152",
    Lifetime = NumberRange.new(5),
    Rate = 100,
    VelocitySpread = 180,
    Rotation = NumberRange.new(100),
    Speed = NumberRange.new(3),
    LightEmission = 0.7
  })
  wait("")
  local function reframe(x, radius, wide, orig)
    local xa = x - deg / parts / 2
    local xb = x + deg / parts / 2
    local xxa = sin(rad(xa)) * radius * wide
    local zza = cos(rad(xa)) * radius
    local xxb = sin(rad(xb)) * radius * wide
    local zzb = cos(rad(xb)) * radius
    local xx = sin(rad(x)) * radius * wide
    local zz = cos(rad(x)) * radius
    local kek = cf(orig * cf(xxa, 0, zza).p, orig * cf(xxb, 0, zzb).p) * cf(0, 0, -(orig * cf(xxa, 0, zzb).p - orig * cf(xx, 0, zz).p).magnitude)
    local len = (orig * cf(xxa, 0, zza).p - orig * cf(xxb, 0, zzb).p).magnitude
    return kek, len
  end
  for x = -deg / 2, deg / 2, deg / parts do
    local kek, len = reframe(x, radius, wide, orig)
    local new = new:Clone()
    new.Parent = Character
    new.CFrame = kek
    wait("")
    canwavedamage = true
    local wavetouched = new.Touched:connect(function(hit)
      if hit.Parent:findFirstChild("Humanoid") and canwavedamage == true then
        damage(hit, mindamage, maxdamage, 1, 1, RootPart)
        canwavedamage = false
        coroutine.resume(coroutine.create(function()
          while true do
            wait()
            if canwavedamage == false then
              wait(0.1)
              canwavedamage = true
            end
          end
        end))
      end
    end)
    local newm = Instance.new("BlockMesh")
    newm.Parent = new
    newm.Scale = Vector3.new(0.5, 0.1, len) * 5
    part[#part + 1] = {
      new,
      newm,
      x,
      CFrame.new(fade * radius / (1 / fadespeed), 0, 0),
      reframe
    }
  end
  DoLoop(1 / fadespeed, function(i)
    orig = orig * adjj
    for x = 1, #part do
      local kek, len = part[x][5](part[x][3], radius + fade * radius * i, wide, orig)
      part[x][1].CFrame = kek
      part[x][2].Scale = Vector3.new(0.5, 0.1, 0.01 + len) * 5
      part[x][1].Transparency = 0 + 1 * i
      if i == 1 then
        part[x][1]:Remove()
      end
    end
  end)
end
function CA(a, b, c)
  return CFrame.Angles(math.rad(a), math.rad(b), math.rad(c))
end
function CrescentKick()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    Humanoid.Jump = false
    MagicBlock(BrickColor.new("New Yeller"), RightLeg.CFrame * CFrame.new(0, -1, 0), 0.3, 0.3, 0.3, 2, 2, 2, 0.13, 2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(90), math.rad(50), math.rad(-40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(100), math.rad(-30), math.rad(-20)), 0.3)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(-30)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(40), math.rad(-30)), 0.3)
    end
  end
  speed.Value = 0.8
  Humanoid.Jump = true
  so("http://www.roblox.com/asset/?id=200632211", RightLeg, 1, 0.6)
  for i = 0, 1, 0.06 do
    fat.Event:wait()
    MagicBlock(BrickColor.new("New Yeller"), RightLeg.CFrame * CFrame.new(0, -1, 0), 0.3, 0.3, 0.3, 1.3, 1.3, 1.3, 0.13, 2)
    MagicBlock(BrickColor.new("New Yeller"), RightLeg.CFrame * CFrame.new(0, -1, 0), 0.3, 0.3, 0.3, 1.3, 1.3, 1.3, 0.13, 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(-7 * i, math.rad(0), math.rad(0)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(0)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    LH.C0 = clerp(LH.C0, cn(-1, -0.5, -0.3) * LHCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.5)
  end
  so("http://roblox.com/asset/?id=228343249", Torso, 1, 1)
  Effect1(RootPart.CFrame * CFrame.Angles(0, 3.2, 1.5), CFrame.new(0, 0, 1.5), 10, 150, 10, 1, 0.85, 0.01)
  so("http://www.roblox.com/asset/?id=200632211", RightLeg, 1, 0.7)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    MagicBlock(BrickColor.new("New Yeller"), RightLeg.CFrame * CFrame.new(0, -1, 0), 0.3, 0.3, 0.3, 1.3, 1.3, 1.3, 0.13, 2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-70), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(70), math.rad(0), math.rad(-10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.1, -0.5) * angles(math.rad(60), math.rad(0), math.rad(-40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(70)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -0.7, 0.3) * LHCF * angles(math.rad(0), math.rad(-20), math.rad(70)), 0.3)
  end
  speed.Value = 1
  attack = false
end
function weld5(part0, part1, c0, c1)
  local weeld = Instance.new("Weld", part0)
  weeld.Part0 = part0
  weeld.Part1 = part1
  weeld.C0 = c0
  weeld.C1 = c1
  return weeld
end
function checkclose(Obj, Dist)
  for _, v in pairs(workspace:GetChildren()) do
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Torso") and v ~= Character then
      local DistFromTorso = (v.Torso.Position - Obj.Position).magnitude
      if Dist > DistFromTorso then
        return v
      end
    end
  end
end
function KingHit()
  attack = true
  Hold = true
  speed.Value = 1.5
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(100), math.rad(30), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(130), math.rad(-50), math.rad(40)), 0.3)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(0)), 0.5)
    end
  end
  local gp
  local target = checkclose(HitboxL, 7)
  if grabbed == false and target then
    target.Humanoid.PlatformStand = true
    if target ~= nil then
      grabbed = true
      local asd = weld5(LeftArm, target:FindFirstChild("Torso"), CFrame.new(0, -1.7, 0), CFrame.new(0, 0, 0))
      asd.Parent = LeftArm
      asd.Name = "asd"
      asd.C0 = asd.C0 * CFrame.Angles(math.rad(-90), 0, 0)
      so("http://roblox.com/asset/?id=200632821", Torso, 1, 0.9)
      coroutine.wrap(function()
        wait(2)
        target.Humanoid.PlatformStand = false
      end)()
    end
  end
  so("http://www.roblox.com/asset/?id=200632211", HitboxL, 1, 0.8)
  for i = 0, 1, 0.13 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(50)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.3) * angles(math.rad(70), math.rad(30), math.rad(-20)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.5)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
    elseif Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.5)
    end
  end
  if grabbed == true then
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-90)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.3) * angles(math.rad(100), math.rad(30), math.rad(20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(90), math.rad(-10), math.rad(-50)), 0.3)
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(60 * math.cos(sine / 4))), 0.3)
      elseif Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(0)), 0.5)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(0)), 0.5)
      end
    end
    so("http://www.roblox.com/asset/?id=200632211", HitboxL, 1, 0.5)
    for i, v in pairs(LeftArm:GetChildren()) do
      if v.Name == "asd" and v:IsA("Weld") then
        v:Remove()
      end
    end
    target.Torso.Velocity = RootPart.CFrame.lookVector * 100
    for i = 0, 1, 0.15 do
      fat.Event:wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.7)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(80)), 0.7)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.3) * angles(math.rad(70), math.rad(30), math.rad(-20)), 0.7)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.7)
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(60 * math.cos(sine / 4))), 0.3)
      elseif Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.7)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.7)
      end
    end
    MagicBlock(BrickColor.new("New Yeller"), target.Torso.CFrame * CFrame.new(0, -1, 0), 0.5, 0.5, 0.5, 1.3, 1.3, 1.3, 0.05, 1)
    target.Humanoid.PlatformStand = false
    damage(target:WaitForChild("Humanoid"), mindamage + 5, maxdamage + 5, 0, 1, RootPart)
  end
  speed.Value = 1
  grabbed = false
  attack = false
end
mouse.Button1Down:connect(function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    attackthree()
  end
end)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if attack == false and k == "z" and cooldown1 >= co1 and stamina >= skill1stam then
    Flurry()
    cooldown1 = 0
    subtractstamina(skill1stam)
  elseif attack == false and k == "x" and cooldown2 >= co2 and stamina >= skill2stam then
    MachPunch()
    cooldown2 = 0
    subtractstamina(skill2stam)
  elseif attack == false and k == "c" and cooldown3 >= co3 and stamina >= skill3stam then
    CrescentKick()
    cooldown3 = 0
    subtractstamina(skill3stam)
  elseif attack == false and k == "v" and cooldown4 >= co4 and stamina >= skill4stam then
    KingHit()
    cooldown4 = 0
    subtractstamina(skill4stam)
  end
end)
mouse.KeyUp:connect(function(k)
  k = k:lower()
  if k == "x" and Hold == true and attack == true then
    Hold = false
  end
end)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.One and typing == false and cooldown3 >= co1 and stamina >= skill1stam then
  elseif k.KeyCode == Enum.KeyCode.Two and typing == false and cooldown3 >= co2 and stamina >= skill2stam then
  elseif k.KeyCode == Enum.KeyCode.Three and typing == false and cooldown3 >= co3 and stamina >= skill3stam then
  elseif k.KeyCode ~= Enum.KeyCode.Four or typing ~= false or not (cooldown3 >= co4) or stamina >= skill4stam then
  end
end)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.Slash then
    do
      local fin
      typing = true
      fin = inputserv.InputBegan:connect(function(k)
        if k.KeyCode == Enum.KeyCode.Return or k.UserInputType == Enum.UserInputType.MouseButton1 then
          typing = false
          fin:disconnect()
        end
      end)
    end
  end
end)
function updateskills()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.03333333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.03333333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.03333333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.03333333333333333
  end
  if stamina <= maxstamina then
    stamina = stamina + recoverStamina / 30
  end
end
fat.Event:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  Character.Humanoid.WalkSpeed = 16 * speed.Value
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil and stun.Value ~= true then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(70)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-70)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -1, -0.3) * RHCF * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.8, 0) * LHCF * angles(math.rad(5), math.rad(0), math.rad(30)), 0.3)
      end
    elseif RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then
      Anim = "Fall"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-35), math.rad(0), math.rad(100)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-35), math.rad(0), math.rad(-100)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.8, -0.3) * RHCF * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.9, -0.2) * LHCF * angles(math.rad(5), math.rad(0), math.rad(30)), 0.3)
      end
    elseif Torsovelocity < 1 and hit ~= nil then
      Anim = "Idle"
      if attack == false then
        change = 1
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.sin(sine / 7)) * angles(math.rad(3), math.rad(0), math.rad(30)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(3 - 3 * math.sin(sine / 7)), math.rad(-3 - 3 * math.sin(sine / 10)), math.rad(-30)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, -0.3) * angles(math.rad(110 - 5 * math.sin(sine / 7)), math.rad(20 + 0.5 * math.sin(sine / 5)), math.rad(-30)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -0.4) * angles(math.rad(110 - 5 * math.sin(sine / 7)), math.rad(-30 + 0.5 * math.sin(sine / 5)), math.rad(30)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.sin(sine / 7), 0) * RHCF * angles(math.rad(-4 - 0.5 * math.sin(sine / 7)), math.rad(-30), math.rad(3)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.sin(sine / 7), 0) * LHCF * angles(math.rad(-4 - 0.5 * math.sin(sine / 7)), math.rad(-30), math.rad(-1)), 0.3)
      end
    elseif Torsovelocity > 2 and hit ~= nil then
      Anim = "Walk"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0) + RootPart.RotVelocity.Y / 50, math.rad(5 * math.sin(sine / 3))), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(-5 * math.sin(sine / 3)) + RootPart.RotVelocity.Y / 50), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.4 + 0.1 * math.cos(sine / 3), 0.5 + 0.1 * math.cos(sine / 3), 0 + 0.5 * math.cos(sine / 3)) * angles(math.rad(-90 * math.cos(sine / 3)), math.rad(0), math.rad(40 * math.cos(sine / 3) + RootPart.RotVelocity.Y / 15)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.4 + 0.1 * math.cos(sine / 3), 0.5 + 0.1 * math.cos(sine / 3), 0 - 0.5 * math.cos(sine / 3)) * angles(math.rad(90 * math.cos(sine / 3)), math.rad(0), math.rad(40 * math.cos(sine / 3) - RootPart.RotVelocity.Y / 15)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -1 + 0.01 * math.sin(sine / 5), 0 - 0.3 * math.sin(sine / 3)) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(60 * math.sin(sine / 3))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.01 * math.sin(sine / 5), 0 + 0.3 * math.sin(sine / 3)) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(60 * math.sin(sine / 3))), 0.3)
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
          if 1 >= Thing[1].Transparency then
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Block2" then
              Thing[1].CFrame = Thing[1].CFrame
              Mesh = Thing[7]
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Cylinder" then
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Blood" then
              Mesh = Thing[7]
              Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Elec" then
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Disappear" then
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Shatter" then
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
              Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
              Thing[6] = Thing[6] + Thing[5]
            end
          else
            Part.Parent = nil
            table.remove(Effects, e)
          end
        end
      end
    end
  end
  for i, v in pairs(Character:GetChildren()) do
    if v:IsA("Part") then
      v.Material = "SmoothPlastic"
    elseif v:IsA("Hat") then
      v:WaitForChild("Handle").Material = "SmoothPlastic"
    end
  end
  for i, v in pairs(LoopFunctions) do
    v[2] = v[2] + 1
    v[3](v[2] / v[1])
    if v[1] <= v[2] then
      LoopFunctions[i] = nil
    end
  end
end)
