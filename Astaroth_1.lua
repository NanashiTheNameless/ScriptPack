local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("LocalScript")
o1.Name = "Astaroth"
o1.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
script.Parent = nil
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
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

wep = script["Astaroth"]
wep.Parent = Character
for i,v in pairs(wep:children()) do
  if not v:isA("StringValue") and v.BrickColor == BrickColor.new("Bright blue") then
    v.BrickColor = Character.Torso.BrickColor
  end
end
handle = wep.Handle
handleweld = weld(m, Character["Right Arm"], handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0200357437, 0.0800266266, -1.09997594, -1, 0, 0, 0, 0, -1, 0, -0.999999881, 0))
hitbox = wep.hitbox
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
weldScript(handle)
Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
hitsounds = {"199149137", "199149186", "199149221", "199149235", "199149269", "199149297"}
blocksounds = {"199148933", "199148947"}
armorsounds = {"199149321", "199149338", "199149367", "199149409", "199149452"}
woosh = {Heavy1 = "320557353", Heavy2 = "320557382", Heavy3 = "320557453", Heavy4 = "199144226", Heavy5 = "203691447", Heavy6 = "203691467", Heavy7 = "203691492", Light1 = "320557413", Light2 = "320557487", Light3 = "199145095", Light4 = "199145146", Light5 = "199145887", Light6 = "199145913", Light7 = "199145841", Medium1 = "320557518", Medium2 = "320557537", Medium3 = "320557563", Medium4 = "199145204"}
music = {Breaking = "179281636", FinalReckoning = "357375770", NotDeadYet = "346175829", Intense = "151514610", JumpP1 = "160536628", JumpP2 = "60536666", SonsOfWar = "158929777", WrathOfSea = "165520893", ProtectorsOfEarth = "160542922", SkyTitans = "179282324", ArchAngel = "144043274", Anticipation = "168614529", TheMartyred = "186849544", AwakeP1 = "335631255", AwakeP2 = "335631297", ReadyAimFireP1 = "342455387", ReadyAimFireP2 = "342455399", DarkLordP1 = "209567483", DarkLordP2 = "209567529", BloodDrainP1 = "162914123", BloodDrainP2 = "162914203", DanceOfSwords = "320473062", Opal = "286415112", Calamity = "190454307", Hypnotica = "155968128", Nemisis = "160453802", Breathe = "276963903", GateToTheRift = "270655227", InfernalBeserking = "244143404", Trust = "246184492", AwakeningTheProject = "245121821", BloodPain = "242545577", Chaos = "247241693", NightmareFictionHighStake = "248062278", TheWhiteWeapon = "247236446", Gale = "256851659", ImperialCode = "256848383", Blitzkrieg = "306431437", RhapsodyRage = "348690251", TheGodFist = "348541501", BattleForSoul = "321185592", TheDarkColossus = "305976780", EmpireOfAngels = "302580452", Kronos = "302205297", Exorcist = "299796054", CrimsonFlames = "297799220", UltimatePower = "295753229", DrivingInTheDark = "295753229", AscendToPower = "293860654", GodOfTheSun = "293612495", DarkRider = "293861765", Vengeance = "293375555", SoundOfWar = "293376196", HellsCrusaders = "293012202", Legend = "293011823", RisingSouls = "290524959"}
misc = {GroundSlam = "199145477", LaserSlash = "199145497", RailGunFire = "199145534", Charge1 = "199145659", Charge2 = "169380469", Charge3 = "169380479", EmptyGun = "203691822", GunShoot = "203691837", Stomp1 = "200632875", Stomp2 = "200632561", TelsaCannonCharge = "169445572", TelsaCannonShoot = "169445602", AncientHymm = "245313442"}
wait(0.016666666666667)
local player = game.Players.localPlayer
local char = player.Character
local mouse = player:GetMouse()
local m = Instance.new("Model", char)
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = char.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
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
local co2 = 20
local co3 = 30
local co4 = 50
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 4
local critdamageaddmax = 8
local maxstamina = 100
local stamina = 0
local skill1stam = 10
local skill2stam = 20
local skill3stam = 40
local skill4stam = 50
local recovermana = 7
local defensevalue = 1.2
local speedvalue = 0.9
local mindamage = 8
local maxdamage = 9
local damagevalue = 1
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
Character:FindFirstChild("Animate"):Destroy()
weld = function(part0, part1, c0)
  local wld = Instance.new("Motor", part1)
  wld.Name = "Weld"
  wld.Part0 = part0
  wld.Part1 = part1
  wld.C0 = c0
  return wld
end

Character = game.Players.localPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
weld(torso, larm, cn(-1.5, 0.5, 0))
larm.Weld.C1 = cn(0, 0.65, 0)
weld(torso, rarm, cn(1.5, 0.5, 0))
rarm.Weld.C1 = cn(0, 0.65, 0)
weld(torso, hed, cn(0, 1.5, 0))
weld(torso, lleg, cn(-0.5, -1, 0))
lleg.Weld.C1 = cn(0, 1, 0)
weld(torso, rleg, cn(0.5, -1, 0))
rleg.Weld.C1 = cn(0, 1, 0)
weld(RootPart, torso, cn(0, -1, 0))
torso.Weld.C1 = cn(0, -1, 0)
Humanoid = char.Humanoid
if Humanoid:FindFirstChild("Animator") then
  Humanoid:FindFirstChild("Animator"):Destroy()
end
local scrn = Instance.new("ScreenGui", player.PlayerGui)
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
text1 = makelabel(framesk1, "[C] Apocalypse Rush")
text2 = makelabel(framesk2, "[V] Titan Bomb")
text3 = makelabel(framesk3, "[X] Hades Stomp")
text4 = makelabel(framesk4, "[Z] Great Divide")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0.23921568627451, 0.67058823529412, 1))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.23921568627451, 0.67058823529412, 1))
staminatext = makelabel(staminabar, "Power")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
healthtext = makelabel(healthbar, "Health")
local stats = Instance.new("Folder", char)
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
atktype = function(s, e)
  coroutine.resume(coroutine.create(function()
    attacktype = e
    wait(1.5)
    attacktype = s
  end
))
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
Lerp = function(a, b, i)
  local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
  local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
  local calx = com1[1] + (com2[1] - com1[1]) * i
  local caly = com1[2] + (com2[2] - com1[2]) * i
  local calz = com1[3] + (com2[3] - com1[3]) * i
  local cala = com1[4] + (com2[4] - com1[4]) * i
  local calb = com1[5] + (com2[5] - com1[5]) * i
  local calc = com1[6] + (com2[6] - com1[6]) * i
  return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end

local Lerp = CFrame.new().lerp
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

begoneoutlines = function(part)
  part.BottomSurface = 10
end

rayCast = function(pos, dir, maxl, ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(pos, dir.unit * (maxl or 999.999)), ignore)
end

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
  begoneoutlines(p)
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
  game:GetService("Debris"):AddItem(p, delay1)
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
  local s = Instance.new("Sound", par or torso)
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
  if (player.Torso.CFrame.p - obj).magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char and (v.Torso.Position - obj).magnitude <= dis then
          table.insert(list, v)
        end
        if v:IsA("Part") and v.Name:lower() == "hitbox" and v.Parent.Parent ~= char and (v.Position - obj).magnitude <= dis then
          local pos = CFrame.new(0, 1, -1)
          do
            sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, torso, 6)
            coroutine.wrap(function()
    for i = 1, 4 do
      clangy(torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
    end
  end
)()
          end
        end
      end
      do return list end
    end
  end
end

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

damage = function(hit, mind, maxd, knock, type, prop)
  do
    if hit.Name:lower() == "hitbox" then
      local pos = CFrame.new(0, 1, -1)
      do
        sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, torso, 6)
        coroutine.wrap(function()
    for i = 1, 4 do
      clangy(torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
    end
  end
)()
      end
    end
    if hit.Parent == nil then
      return 
    end
    local h = hit.Parent:FindFirstChild("Humanoid")
    for i,v in pairs(hit.Parent:children()) do
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
    if h then
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
    end
    if h.Parent:FindFirstChild("Stats") or h and h.Parent.Head then
      makegui(h.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
    end
    TagService:NewTag(h.Parent, Player, "Astaroth", D)
    if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
      if type == 1 then
        tagplayer(h)
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
      else
        do
          if type == 2 then
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
            tagplayer(h)
          else
            do
              if type == 3 then
                tagplayer(h)
                local asd = randomizer(critchance)
                if asd == true then
                  turncrit()
                end
                if crit == false then
                  game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
                else
                  game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D + math.random(critdamageaddmin, critdamageaddmax), 1)
                end
                char.Humanoid.Health = char.Humanoid.Health + D / 2
                so("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
                for i = 1, 10 do
                  firespaz1("Bright red", hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
                end
              else
                do
                  if type == 4 then
                    h.Health = h.Health + D
                    so("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
                    circle("Dark green", h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
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

subtrackstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end

getclosest_angled = function(obj, dis, max_deg, player)
  if not max_deg then
    max_deg = 49.333
  end
  if (player.Torso.CFrame.p - obj).magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char then
          if (v.Torso.Position - obj).magnitude <= dis then
            local lv = -torso.CFrame.lookVector * Vector3.new(1, 0, 1).unit
            do
              local to = (torso.Position - v.Torso.Position) * Vector3.new(1, 0, 1).unit
              if math.deg(math.acos(lv:Dot(to))) <= max_deg then
                print("it worked")
                table.insert(list, v)
              else
                do
                  print("nope", math.deg(math.acos(lv:Dot(to))))
                end
              end
            end
          else
            print("no distance")
          end
        end
        if v:IsA("Part") and v.Name:lower() == "hitbox" and v.Parent.Parent ~= char and v.Position - obj.magnitude <= dis * 1.55 then
          local pos = CFrame.new(0, 1, -1)
          sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, torso, 6)
          coroutine.wrap(function()
    for i = 1, 4 do
      clangy(torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
    end
  end
)()
        end
      end
      do return list end
    end
  end
end

attackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, -0.8, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0.8, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(2.4, -0.5, -0.3), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-0.7, 0.65, -0.5) * angles(2, 0, 0.9), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 1.5) * angles(0, 0, 0), 0.3)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), 0.8, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), 0.8, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0.8, 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0.8, 0), 0.4)
      end
    end
  end
  so("http://roblox.com/asset/?id=" .. woosh.Heavy4, hitbox, 1, 1.1)
--[[
  for i,v in pairs(getclosest_angled(torso.CFrame.p, 8, 90)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, mindamage, maxdamage, 1, 1, RootPart)
    end
  end
]]
  for i = 0, 1.5, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0.5, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, -0.5, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(0.4, -0.5, -0.3), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, -0.5) * angles(0, 0, 0.9), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 1.5) * angles(-0.1, 0.2, 0), 0.3)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), -0.5, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), -0.5, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, -0.5, 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, -0.5, 0), 0.4)
      end
    end
  end
  attack = false
  atktype(1, 2)
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0.8, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, -0.8, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1.5, 1.5, -0.3), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(1.2, 0, -0.3), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(0, 0, 0), 0.3)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), -0.8, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), -0.8, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, -0.8, 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, -0.8, 0), 0.4)
      end
    end
  end
  so("http://roblox.com/asset/?id=" .. woosh.Heavy4, hitbox, 1, 1)
--[[
  for i,v in pairs(getclosest_angled(torso.CFrame.p, 8, 90)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, mindamage, maxdamage, 1, 1, RootPart)
    end
  end
]]
  for i = 0, 1.5, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, -0.8, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0.8, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1, 1.5, 0.3) * angles(-0.6, 0, 0), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-0.7, 0.65, -0.5) * angles(1.4, 0, 1), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(-0.2, 0, 0), 0.3)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), 0.8, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), 0.8, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0.8, 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0.8, 0), 0.4)
      end
    end
  end
  attack = false
  atktype(1, 3)
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, -0.8, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0.8, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1.5, -1.5, -0.3), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-0.7, 0.65, 0) * angles(1.34, 0, 0.3), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(0, 0, 0), 0.3)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), 0.8, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), 0.8, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0.8, 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0.8, 0), 0.4)
      end
    end
  end
  so("http://roblox.com/asset/?id=" .. woosh.Heavy4, hitbox, 1, 0.7)
--[[
  for i,v in pairs(getclosest_angled(torso.CFrame.p, 8, 90)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, mindamage, maxdamage, 1, 1, RootPart)
    end
  end
]]
  for i = 0, 1.5, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0.8, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, -0.8, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1, -1.5, -0.3) * angles(-0.6, 0, 0), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-0.7, 0.65, -0.5) * angles(1.4, 0, 1), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(-0.2, 0, 0), 0.3)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), -0.8, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), -0.8, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, -0.8, 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, -0.8, 0), 0.4)
      end
    end
  end
  attack = false
  atktype(1, 1)
end

greatdivide = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0.5, 0, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1, 0.65, -0.5) * angles(2.5, 0, -0.785), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1, 0.65, -0.5) * angles(2.2, 0, 0.785), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(-0.6, -0.3, 0.7) * angles(0, 0, 0.785), 0.3)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(-0.5 + math.rad(-40 * math.cos(sine / 10)), 0, 0), 0.3)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(-0.5 + math.rad(40 * math.cos(sine / 10)), 0, 0), 0.3)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(-0.5, 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(-0.5, 0, 0), 0.3)
      end
    end
  end
  so("http://roblox.com/asset/?id=" .. woosh.Heavy4, hitbox, 1, 1)
--[[
  for i,v in pairs(getclosest_angled(torso.CFrame.p, 8, 90)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, 10, 12, 1, 1, RootPart)
    end
  end
]]
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(-0.2, 0, 0), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0, 0), 0.4)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1, 0.5, -0.5) * angles(0.7, 0, -0.785), 0.4)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1, 0.5, -0.5) * angles(0.5, 0, 0.785), 0.4)
    handleweld.C0 = Lerp(handleweld.C0, cn(-0.6, -0.2, 0.7) * angles(0, 0, 0.785) * angles(-0.3, 0, 0), 0.4)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0.2 + math.rad(-40 * math.cos(sine / 10)), 0, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0.2 + math.rad(40 * math.cos(sine / 10)), 0, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0.2, 0, 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0.2, 0, 0), 0.4)
      end
    end
  end
  attack = false
end

hadesstomp = function()
  attack = true
  speed.Value = 0
  for i = 0, 2, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0.3, 0, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0.3, 0, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(2, 1.2, 0), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.7, -0.5) * angles(2.7, 0, 0.3), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 1) * angles(0, 0, 0), 0.3)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(-0.3, 0, -0.1), 0.3)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0, -1) * CFrame.Angles(-0.3, 0, 0), 0.3)
  end
  so("rbxassetid://" .. misc.GroundSlam, torso, 1, 0.9)
  local a = makeeffect(workspace, Vector3.new(1, 1, 1), RootPart.CFrame * cn(0, 0, 0), 0.35, 0.025, Vector3.new(1, 0.1, 1), 10, Meshes.Blast, nil)
  a.BrickColor = BrickColor.new("Bright green")
  local a = makeeffect(workspace, Vector3.new(1, 1, 1), RootPart.CFrame * cn(0, -3, 0) * angles(math.rad(90), 0, 0), 0.35, 0.025, Vector3.new(1, 1, 1), 10, Meshes.Ring, nil)
  a.BrickColor = BrickColor.new("Bright green")
--[[
  for i,v in pairs(getclosest(torso.CFrame.p, 10)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, 11, 13, 1, 1, RootPart)
    end
  end
]]
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(-0.3, 0, 0), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(-0.3, 0, 0), 0.3)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(-0.5, 0, 0.3), 0.3)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(-0.5, 0, -0.3), 0.3)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 1) * angles(0, 0, 0), 0.3)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0.3, 0, -0.1), 0.3)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(0.3, 0, 0), 0.3)
  end
  speed.Value = speedvalue
  attack = false
end

weld5 = function(part0, part1, c0, c1)
  local weeld = Instance.new("Weld", part0)
  weeld.Part0 = part0
  weeld.Part1 = part1
  weeld.C0 = c0
  weeld.C1 = c1
  return weeld
end

checkclose = function(Obj, Dist)
  for _,v in pairs(workspace:GetChildren()) do
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Torso") and v ~= char then
      local DistFromTorso = (v.Torso.Position - Obj.Position).magnitude
      if DistFromTorso < Dist then
        return v
      end
    end
  end
end

apocpound = function()
  attack = true
  so("http://roblox.com/asset/?id=200632211", larm, 1, 0.9)
  local target = checkclose(larm, 7)
  if grabbed == false then
    if target then
      target.Humanoid.PlatformStand = true
      if target ~= nil then
        grabbed = true
        subtractstamina(skill3stam)
        cooldown3 = 0
        local asd = weld5(larm, target:FindFirstChild("Torso"), CFrame.new(0, -1.7, 0), CFrame.new(0, 0, 0))
        asd.Parent = larm
        asd.Name = "asd"
        asd.C0 = asd.C0 * CFrame.Angles(math.rad(-90), 0, -1.57)
        so("http://roblox.com/asset/?id=200632821", torso, 1, 0.9)
        coroutine.wrap(function()
    wait(2)
    target.Humanoid.PlatformStand = false
  end
)()
      end
    else
      do
        if target == nil then
          subtractstamina(skill3stam / 2)
          cooldown3 = cooldown3 / 2
        end
        for i = 0, 1, 0.1 do
          fat.Event:wait()
          torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, -0.8, 0), 0.5)
          hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0.8, 0), 0.5)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1, 0, 0.2), 0.5)
          larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(1.2, 0, -0.3), 0.5)
          handleweld.C0 = Lerp(handleweld.C0, cn(0, -1, 0.8) * angles(1.5, 0.3, 0), 0.5)
          if torsovelocity > 2 and torsovelocity < 18 then
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), 0.8, 0), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), 0.8, 0), 0.4)
          else
            if torsovelocity < 1 then
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0.8, 0), 0.4)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0.8, 0), 0.4)
            end
          end
        end
        if grabbed == true then
          for i = 0, 1, 0.1 do
            fat.Event:wait()
            torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0.8, 0), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, -0.8, 0), 0.5)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1, 0, 0.5), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(2.3, 0, -0.3), 0.5)
            handleweld.C0 = Lerp(handleweld.C0, cn(0, -1, 0.8) * angles(1.5, 0.3, 0), 0.5)
            if torsovelocity > 2 and torsovelocity < 18 then
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), -0.8, 0), 0.4)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), -0.8, 0), 0.4)
            else
              if torsovelocity < 1 then
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, -0.8, 0), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, -0.8, 0), 0.4)
              end
            end
          end
          target.Torso.Velocity = RootPart.CFrame.lookVector * 50
          for i = 0, 0.4, 0.1 do
            fat.Event:wait()
            torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, -0.5, 0), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0.5, 0), 0.5)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(2, 0.5, 0.3), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(1, 0, 0.5), 0.5)
            handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(0, 0, 0), 0.5)
            if torsovelocity > 2 and torsovelocity < 18 then
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), 0.5, 0), 0.4)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), 0.5, 0), 0.4)
            else
              if torsovelocity < 1 then
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0.5, 0), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0.5, 0), 0.4)
              end
            end
          end
          for i,v in pairs(larm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
              v:destroy()
            end
          end
          so("http://roblox.com/asset/?id=200632211", larm, 1, 0.4)
          for i = 0, 1, 0.1 do
            fat.Event:wait()
            torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, -0.5, 0), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0.5, 0), 0.5)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(2, 0.5, 0.3), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(1, 0, 0.5), 0.5)
            handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(0, 0, 0), 0.5)
            if torsovelocity > 2 and torsovelocity < 18 then
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), 0.5, 0), 0.4)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), 0.5, 0), 0.4)
            else
              if torsovelocity < 1 then
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0.5, 0), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0.5, 0), 0.4)
              end
            end
          end
          RootPart.Velocity = RootPart.CFrame.lookVector * 30
          so("http://roblox.com/asset/?id=" .. woosh.Heavy4, hitbox, 1, 1)
--[[
          for i,v in pairs(getclosest(torso.CFrame.p, 10)) do
            if v:FindFirstChild("Humanoid") then
              damage(v.Torso, 16, 18, 1, 1, RootPart)
            end
          end
]]
          so("rbxassetid://" .. misc.GroundSlam, torso, 1, 0.9)
          local a = makeeffect(workspace, Vector3.new(1, 1, 1), RootPart.CFrame * cn(0, 0, -7), 0.35, 0.025, Vector3.new(1, 0.1, 1), 10, Meshes.Blast, nil)
          a.BrickColor = BrickColor.new("Bright green")
          local a = makeeffect(workspace, Vector3.new(1, 1, 1), RootPart.CFrame * cn(0, -3, -5) * angles(math.rad(90), 0, 0), 0.35, 0.025, Vector3.new(1, 1, 1), 10, Meshes.Ring, nil)
          a.BrickColor = BrickColor.new("Bright green")
          for i = 0, 1, 0.1 do
            fat.Event:wait()
            torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0.5, 0), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(-0.3, -0.5, 0), 0.5)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(0.5, 0, 0.3), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(1, 0, 0.5), 0.5)
            handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(-0.3, 0, 0), 0.5)
            if torsovelocity > 2 and torsovelocity < 18 then
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), -0.5, 0), 0.4)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), -0.5, 0), 0.4)
            else
              if torsovelocity < 1 then
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, -0.5, 0), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, -0.5, 0), 0.4)
              end
            end
          end
        end
        do
          grabbed = false
          attack = false
        end
      end
    end
  end
end

titanbomb = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0.3, 0), 0.5)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0.3, -0.5, 0), 0.5)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(2.5, 0, 0.2), 0.5)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(-0.2, 0, -0.3), 0.5)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 2) * angles(0, 0, 0), 0.5)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), -0.3, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), -0.3, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, -0.3, 0), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, -0.3, 0), 0.4)
      end
    end
  end
  so("rbxassetid://180204501", torso, 1, 1)
  so("rbxassetid://180199726", torso, 1, 1)
  local a = makeeffect(workspace, Vector3.new(1, 1, 1), RootPart.CFrame * cn(0, 0, -3), 0.35, 0.025, Vector3.new(1, 0.1, 1), 10, Meshes.Blast, nil)
  a.BrickColor = BrickColor.new("Bright green")
  local a = makeeffect(workspace, Vector3.new(3, 3, 3), RootPart.CFrame * cn(0, 0, 0), 0.35, 0.025, Vector3.new(1, 1, 1), 10, nil, "Sphere")
  a.BrickColor = BrickColor.new("Bright green")
  local a = makeeffect(workspace, Vector3.new(1, 1, 1), RootPart.CFrame * cn(0, -3, -1) * angles(math.rad(90), 0, 0), 0.35, 0.025, Vector3.new(1, 1, 1), 10, Meshes.Ring, nil)
  a.BrickColor = BrickColor.new("Bright green")
--[[
  for i,v in pairs(getclosest(torso.CFrame.p, 15)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, 18, 21, 1, 1, RootPart)
    end
  end
]]
  speed.Value = 0
  for i = 0, 2, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1.3, 0) * angles(-0.1, 0.5, 0), 0.5)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(-0.1, -0.5, 0), 0.5)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1.5, 0, 0.1), 0.5)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(-0.5, 0, -0.3), 0.5)
    handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 2) * angles(0, 0, 0), 0.5)
    if torsovelocity > 2 and torsovelocity < 18 then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0.1 + math.rad(-40 * math.cos(sine / 10)), -0.5, 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0.1 + math.rad(40 * math.cos(sine / 10)), -0.5, 0), 0.4)
    else
      if torsovelocity < 1 then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -0.8, 0) * CFrame.Angles(0.1, -0.5, -0.1), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.65, -0.8, -0.1) * CFrame.Angles(0.1, -0.5, 0.1), 0.4)
      end
    end
  end
  speed.Value = speedvalue
  attack = false
end

mouse.Button1Down:connect(function()
  if attack == false then
    if attacktype == 1 then
      attackone()
    else
      if attacktype == 2 then
        attacktwo()
      else
        if attacktype == 3 then
          attackthree()
        end
      end
    end
  end
end
)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.Z and attack == false and typing == false and co1 <= cooldown1 and skill1stam <= stamina then
    subtractstamina(skill1stam)
    cooldown1 = 0
    greatdivide()
  else
    if k.KeyCode == Enum.KeyCode.X and attack == false and typing == false and co2 <= cooldown2 and skill2stam <= stamina then
      subtractstamina(skill2stam)
      cooldown2 = 0
      hadesstomp()
    else
      if k.KeyCode == Enum.KeyCode.C and attack == false and typing == false and co3 <= cooldown3 and skill3stam <= stamina then
        apocpound()
      else
        if k.KeyCode == Enum.KeyCode.V and attack == false and typing == false and co4 <= cooldown4 and skill4stam <= stamina then
          subtractstamina(skill4stam)
          cooldown4 = 0
          titanbomb()
        end
      end
    end
  end
end
)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.Slash then
    local fin = nil
    do
      typing = true
      fin = inputserv.InputBegan:connect(function(k)
    if k.KeyCode == Enum.KeyCode.Return or k.UserInputType == Enum.UserInputType.MouseButton1 then
      typing = false
      fin:disconnect()
    end
  end
)
    end
  end
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
      v:destroy()
    end
  end
end
)
fat.Event:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (char.Humanoid.Health / char.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
  char.Humanoid.WalkSpeed = 16 * speed.Value
  if equipped == true or equipped == false then
    if RootPart.Velocity.y > 1 and hit == nil and stun.Value ~= true then
      Anim = "Jump"
      if attack == false then
        torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0.3, 0, 0), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0.3, 0, 0), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(0.7, 1.57, 0), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(0.7, -1.57, 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(-0.4, 0, -0.3), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(-0.4, 0, 0.3), 0.2)
        handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(0, 0, 0), 0.2)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then
        Anim = "Fall"
        if attack == false then
          torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(-0.1, 0, 0), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(-0.3, 0, 0), 0.2)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(3, 1.57, 0) * angles(-0.3, 0, 0), 0.2)
          larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(3, -1.57, 0) * angles(-0.3, 0, 0), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(0, 0, -0.1), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(0, 0, 0.1), 0.2)
          handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(0, 0, 0), 0.2)
        end
      else
        if torsovelocity < 1 and hit ~= nil and stun.Value ~= true then
          Anim = "Idle"
          if attack == false then
            change = 1
            torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1.1 + 0.1 * math.cos(sine / 50), 0) * angles(0, 0, 0), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0.1 * math.cos(sine / 50), 0, 0), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(0.7 - 0.1 * math.cos(sine / 50), 1.57, 0), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(0.7 - 0.1 * math.cos(sine / 50), -1.57, 0), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -0.9 - 0.1 * math.cos(sine / 50), 0) * angles(0, 0, -0.05), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -0.9 - 0.1 * math.cos(sine / 50), 0) * angles(0, 0, 0.05), 0.2)
            handleweld.C0 = Lerp(handleweld.C0, cn(0, 0, 0) * angles(0, 0, 0), 0.2)
          end
        else
          if torsovelocity > 2 and torsovelocity < 18 and hit ~= nil and stun.Value ~= true then
            Anim = "Walk"
            if attack == false then
              local asd = 5
              torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1 + 0.05 * math.cos(sine / 4), 0) * angles(-0.1, 0, 0), 0.2)
              hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, -0.2, 0), 0.2)
              rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1, 0, -0.3), 0.2)
              larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-0.8, 0.5, -0.5) * angles(1.3, 0, 1.2), 0.2)
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(1.5 * math.cos(sine / 3), 0, 0), 0.2)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(-1.5 * math.cos(sine / 3), 0, 0), 0.2)
              handleweld.C0 = Lerp(handleweld.C0, cn(0, -1, 0.8) * angles(1.1, 0.3, 0), 0.2)
            end
          else
            do
              if torsovelocity >= 18 and hit ~= nil and stun.Value ~= true then
                Anim = "Run"
                if attack == false then
                  local asd = 5
                  torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1 + 0.05 * math.cos(sine / 4), 0) * angles(-0.1, 0, 0), 0.2)
                  hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, -0.2, 0), 0.2)
                  rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(1, 0, -0.3), 0.2)
                  larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-0.8, 0.5, -0.5) * angles(1.3, 0, 1.2), 0.2)
                  rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1 - 0.5 * math.cos(sine / asd) / 2, 0.5 * math.cos(sine / asd) / 2) * angles(math.rad(-25 * math.cos(sine / asd)) + -math.sin(sine / asd) / 2.3, 0, 0) * angles(math.rad(-2.5), 0, 0), 0.15)
                  lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1 + 0.5 * math.cos(sine / asd) / 2, -0.5 * math.cos(sine / asd) / 2) * angles(math.rad(25 * math.cos(sine / asd)) + math.sin(sine / asd) / 2.3, 0, 0) * angles(math.rad(-2.5), 0, 0), 0.15)
                  handleweld.C0 = Lerp(handleweld.C0, cn(0, -1, 0.8) * angles(1.1, 0.3, 0), 0.2)
                end
              else
                do
                  if stun.Value == true and attack == false then
                    char.Humanoid.WalkSpeed = 0
                    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -3, 0) * angles(mr(40), 0, 0), 0.2)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(mr(-20), 0, 0), 0.2)
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.5, 0) * angles(mr(-50), 0, 0), 0.2)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.5, 0) * angles(mr(-50), 0, 0), 0.2)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -0.3, -0.7) * angles(mr(-10), 0, 0), 0.2)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(mr(50), 0, 0), 0.2)
                    handleweld.C0 = Lerp(handleweld.C0, cn() * angles(), 0.2)
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
)


end,o1)
end))
o2 = Instance.new("StringValue")
o2.Name = "Skin"
o2.Parent = o1
o2.Value = "Default"
o3 = Instance.new("Model")
o3.Name = "Astaroth"
o3.Parent = o1
o4 = Instance.new("Part")
o4.Parent = o3
o4.Material = Enum.Material.SmoothPlastic
o4.BrickColor = BrickColor.new("Smoky grey")
o4.Position = Vector3.new(23.1999817, 20.2000713, 79.3800354)
o4.Rotation = Vector3.new(-0, 0, -180)
o4.Anchored = true
o4.CFrame = CFrame.new(23.1999817, 20.2000713, 79.3800354, -1, 0, 0, 0, -1, 0, 0, 0, 1)
o4.CanCollide = false
o4.FormFactor = Enum.FormFactor.Symmetric
o4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.356863, 0.364706, 0.411765)
o5 = Instance.new("SpecialMesh")
o5.Parent = o4
o5.MeshType = Enum.MeshType.Wedge
o6 = Instance.new("Part")
o6.Parent = o3
o6.Material = Enum.Material.SmoothPlastic
o6.BrickColor = BrickColor.new("Smoky grey")
o6.Position = Vector3.new(23.1999817, 19.8000031, 79.9798889)
o6.Rotation = Vector3.new(-0.00174855511, -0.00174850179, -0.00174855511)
o6.Anchored = true
o6.CFrame = CFrame.new(23.1999817, 19.8000031, 79.9798889, 1, 3.05180438e-005, -3.05171125e-005, -3.05171125e-005, 1, 3.05180438e-005, 3.05180438e-005, -3.05171125e-005, 1)
o6.CanCollide = false
o6.FormFactor = Enum.FormFactor.Symmetric
o6.Size = Vector3.new(0.200000003, 0.200000003, 0.600000024)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.356863, 0.364706, 0.411765)
o7 = Instance.new("BlockMesh")
o7.Parent = o6
o8 = Instance.new("Part")
o8.Parent = o3
o8.Material = Enum.Material.Wood
o8.BrickColor = BrickColor.new("Reddish brown")
o8.Position = Vector3.new(23.1999817, 20.9009838, 78.980011)
o8.Anchored = true
o8.CFrame = CFrame.new(23.1999817, 20.9009838, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o8.CanCollide = false
o8.FormFactor = Enum.FormFactor.Symmetric
o8.Size = Vector3.new(0.200000003, 0.399999976, 0.200000003)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.411765, 0.25098, 0.156863)
o9 = Instance.new("CylinderMesh")
o9.Parent = o8
o9.Scale = Vector3.new(1.75, 1, 1.75)
o10 = Instance.new("Part")
o10.Parent = o3
o10.BrickColor = BrickColor.new("Brick yellow")
o10.Position = Vector3.new(23.1999817, 18.5009823, 78.980011)
o10.Anchored = true
o10.CFrame = CFrame.new(23.1999817, 18.5009823, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o10.CanCollide = false
o10.FormFactor = Enum.FormFactor.Symmetric
o10.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.843137, 0.772549, 0.603922)
o11 = Instance.new("CylinderMesh")
o11.Parent = o10
o11.Scale = Vector3.new(1.20000005, 1, 1.20000005)
o12 = Instance.new("Part")
o12.Parent = o3
o12.BrickColor = BrickColor.new("Brick yellow")
o12.Position = Vector3.new(23.1999817, 16.1009865, 78.980011)
o12.Anchored = true
o12.CFrame = CFrame.new(23.1999817, 16.1009865, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o12.CanCollide = false
o12.FormFactor = Enum.FormFactor.Symmetric
o12.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o12.Color = Color3.new(0.843137, 0.772549, 0.603922)
o13 = Instance.new("CylinderMesh")
o13.Parent = o12
o13.Scale = Vector3.new(1.20000005, 1, 1.20000005)
o14 = Instance.new("Part")
o14.Parent = o3
o14.Material = Enum.Material.Wood
o14.BrickColor = BrickColor.new("Reddish brown")
o14.Position = Vector3.new(23.1999817, 19.700983, 78.980011)
o14.Anchored = true
o14.CFrame = CFrame.new(23.1999817, 19.700983, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o14.CanCollide = false
o14.FormFactor = Enum.FormFactor.Symmetric
o14.Size = Vector3.new(0.200000003, 2, 0.200000003)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.411765, 0.25098, 0.156863)
o15 = Instance.new("CylinderMesh")
o15.Parent = o14
o15.Scale = Vector3.new(1.29999995, 1, 1.29999995)
o16 = Instance.new("Part")
o16.Parent = o3
o16.Material = Enum.Material.SmoothPlastic
o16.BrickColor = BrickColor.new("Smoky grey")
o16.Position = Vector3.new(23.1999817, 20.2000713, 78.1800537)
o16.Anchored = true
o16.CFrame = CFrame.new(23.1999817, 20.2000713, 78.1800537, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o16.CanCollide = false
o16.FormFactor = Enum.FormFactor.Symmetric
o16.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.356863, 0.364706, 0.411765)
o17 = Instance.new("BlockMesh")
o17.Parent = o16
o18 = Instance.new("Part")
o18.Parent = o3
o18.Material = Enum.Material.SmoothPlastic
o18.BrickColor = BrickColor.new("Smoky grey")
o18.Position = Vector3.new(23.1999817, 20.5009384, 78.980011)
o18.Anchored = true
o18.CFrame = CFrame.new(23.1999817, 20.5009384, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o18.CanCollide = false
o18.FormFactor = Enum.FormFactor.Symmetric
o18.Size = Vector3.new(0.200000003, 0.399999976, 1.80000031)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o18.Color = Color3.new(0.356863, 0.364706, 0.411765)
o19 = Instance.new("BlockMesh")
o19.Parent = o18
o20 = Instance.new("Part")
o20.Parent = o3
o20.Material = Enum.Material.SmoothPlastic
o20.BrickColor = BrickColor.new("Smoky grey")
o20.Position = Vector3.new(23.1999817, 20.8010635, 80.0798645)
o20.Rotation = Vector3.new(-0.00174855511, -0.00174850179, -0.00174855511)
o20.Anchored = true
o20.CFrame = CFrame.new(23.1999817, 20.8010635, 80.0798645, 1, 3.05180438e-005, -3.05171125e-005, -3.05171125e-005, 1, 3.05180438e-005, 3.05180438e-005, -3.05171125e-005, 1)
o20.CanCollide = false
o20.FormFactor = Enum.FormFactor.Symmetric
o20.Size = Vector3.new(0.200000003, 0.200000003, 1.20000005)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Color = Color3.new(0.356863, 0.364706, 0.411765)
o21 = Instance.new("SpecialMesh")
o21.Parent = o20
o21.MeshType = Enum.MeshType.Wedge
o22 = Instance.new("Part")
o22.Parent = o3
o22.Material = Enum.Material.SmoothPlastic
o22.BrickColor = BrickColor.new("Smoky grey")
o22.Position = Vector3.new(23.1999817, 19.8000031, 79.2799988)
o22.Rotation = Vector3.new(-0.00174850179, 0.00174855511, 179.99826)
o22.Anchored = true
o22.CFrame = CFrame.new(23.1999817, 19.8000031, 79.2799988, -1, -3.05171125e-005, 3.05180438e-005, 3.05180438e-005, -1, 3.05171125e-005, 3.05171125e-005, 3.05180438e-005, 1)
o22.CanCollide = false
o22.FormFactor = Enum.FormFactor.Symmetric
o22.Size = Vector3.new(0.200000003, 0.200000003, 0.800000012)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.356863, 0.364706, 0.411765)
o23 = Instance.new("SpecialMesh")
o23.Parent = o22
o23.MeshType = Enum.MeshType.Wedge
o24 = Instance.new("Part")
o24.Parent = o3
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Smoky grey")
o24.Position = Vector3.new(23.1999817, 19.5007191, 79.980011)
o24.Rotation = Vector3.new(-0.00174850179, 0.00174855511, 179.99826)
o24.Anchored = true
o24.CFrame = CFrame.new(23.1999817, 19.5007191, 79.980011, -1, -3.05171125e-005, 3.05180438e-005, 3.05180438e-005, -1, 3.05171125e-005, 3.05171125e-005, 3.05180438e-005, 1)
o24.CanCollide = false
o24.FormFactor = Enum.FormFactor.Symmetric
o24.Size = Vector3.new(0.200000003, 0.400000006, 0.600000024)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.356863, 0.364706, 0.411765)
o25 = Instance.new("SpecialMesh")
o25.Parent = o24
o25.MeshType = Enum.MeshType.Wedge
o26 = Instance.new("Part")
o26.Parent = o3
o26.Material = Enum.Material.SmoothPlastic
o26.BrickColor = BrickColor.new("Smoky grey")
o26.Position = Vector3.new(23.1999817, 20.0011787, 79.1800537)
o26.Rotation = Vector3.new(-0.00174855511, -0.00174850179, -0.00174855511)
o26.Anchored = true
o26.CFrame = CFrame.new(23.1999817, 20.0011787, 79.1800537, 1, 3.05180438e-005, -3.05171125e-005, -3.05171125e-005, 1, 3.05180438e-005, 3.05180438e-005, -3.05171125e-005, 1)
o26.CanCollide = false
o26.FormFactor = Enum.FormFactor.Symmetric
o26.Size = Vector3.new(0.200000003, 0.200000003, 0.600000024)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.356863, 0.364706, 0.411765)
o27 = Instance.new("SpecialMesh")
o27.Parent = o26
o27.MeshType = Enum.MeshType.Wedge
o28 = Instance.new("Part")
o28.Parent = o3
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Smoky grey")
o28.Position = Vector3.new(23.1999817, 20.2000713, 78.5800171)
o28.Rotation = Vector3.new(179.99826, 0.00174855511, -0.00174850179)
o28.Anchored = true
o28.CFrame = CFrame.new(23.1999817, 20.2000713, 78.5800171, 1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, -1, -3.05171125e-005, 3.05171125e-005, 3.05180438e-005, -1)
o28.CanCollide = false
o28.FormFactor = Enum.FormFactor.Symmetric
o28.Size = Vector3.new(0.200000003, 0.200000003, 0.600000024)
o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o28.Color = Color3.new(0.356863, 0.364706, 0.411765)
o29 = Instance.new("SpecialMesh")
o29.Parent = o28
o29.MeshType = Enum.MeshType.Wedge
o30 = Instance.new("Part")
o30.Parent = o3
o30.Material = Enum.Material.SmoothPlastic
o30.BrickColor = BrickColor.new("Smoky grey")
o30.Position = Vector3.new(23.1999817, 19.1006737, 80.480011)
o30.Rotation = Vector3.new(-0, 0, -180)
o30.Anchored = true
o30.CFrame = CFrame.new(23.1999817, 19.1006737, 80.480011, -1, 0, 0, 0, -1, 0, 0, 0, 1)
o30.CanCollide = false
o30.FormFactor = Enum.FormFactor.Symmetric
o30.Size = Vector3.new(0.200000003, 0.400000006, 0.400000036)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.356863, 0.364706, 0.411765)
o31 = Instance.new("SpecialMesh")
o31.Parent = o30
o31.MeshType = Enum.MeshType.Wedge
o32 = Instance.new("Part")
o32.Parent = o3
o32.BrickColor = BrickColor.new("Brick yellow")
o32.Position = Vector3.new(23.1999817, 13.8000059, 78.980011)
o32.Anchored = true
o32.CFrame = CFrame.new(23.1999817, 13.8000059, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o32.CanCollide = false
o32.FormFactor = Enum.FormFactor.Symmetric
o32.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32.Color = Color3.new(0.843137, 0.772549, 0.603922)
o33 = Instance.new("CylinderMesh")
o33.Parent = o32
o34 = Instance.new("Part")
o34.Parent = o3
o34.Material = Enum.Material.SmoothPlastic
o34.BrickColor = BrickColor.new("Black")
o34.Position = Vector3.new(23.1999817, 19.3996677, 78.980011)
o34.Anchored = true
o34.CFrame = CFrame.new(23.1999817, 19.3996677, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o34.CanCollide = false
o34.FormFactor = Enum.FormFactor.Symmetric
o34.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o34.Color = Color3.new(0.105882, 0.164706, 0.207843)
o35 = Instance.new("CylinderMesh")
o35.Parent = o34
o35.Scale = Vector3.new(1.30999994, 0.5, 1.30999994)
o36 = Instance.new("Part")
o36.Parent = o3
o36.Material = Enum.Material.SmoothPlastic
o36.BrickColor = BrickColor.new("Smoky grey")
o36.Position = Vector3.new(23.1999817, 20.0011787, 80.4798203)
o36.Rotation = Vector3.new(-0.00174850179, -0.00174844835, -0.00174850179)
o36.Anchored = true
o36.CFrame = CFrame.new(23.1999817, 20.0011787, 80.4798203, 1, 3.05171125e-005, -3.05161811e-005, -3.05161811e-005, 1, 3.05171125e-005, 3.05171125e-005, -3.05161811e-005, 1)
o36.CanCollide = false
o36.FormFactor = Enum.FormFactor.Symmetric
o36.Size = Vector3.new(0.200000003, 1.39999998, 0.400000006)
o36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o36.Color = Color3.new(0.356863, 0.364706, 0.411765)
o37 = Instance.new("BlockMesh")
o37.Parent = o36
o38 = Instance.new("Part")
o38.Parent = o3
o38.Material = Enum.Material.Wood
o38.BrickColor = BrickColor.new("Reddish brown")
o38.Position = Vector3.new(23.1999817, 14.9009857, 78.980011)
o38.Anchored = true
o38.CFrame = CFrame.new(23.1999817, 14.9009857, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o38.CanCollide = false
o38.FormFactor = Enum.FormFactor.Symmetric
o38.Size = Vector3.new(0.200000003, 2, 0.200000003)
o38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o38.Color = Color3.new(0.411765, 0.25098, 0.156863)
o39 = Instance.new("CylinderMesh")
o39.Parent = o38
o40 = Instance.new("Part")
o40.Parent = o3
o40.Material = Enum.Material.SmoothPlastic
o40.BrickColor = BrickColor.new("Black")
o40.Position = Vector3.new(23.1999817, 19.6010571, 78.980011)
o40.Anchored = true
o40.CFrame = CFrame.new(23.1999817, 19.6010571, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o40.CanCollide = false
o40.FormFactor = Enum.FormFactor.Symmetric
o40.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o40.Color = Color3.new(0.105882, 0.164706, 0.207843)
o41 = Instance.new("CylinderMesh")
o41.Parent = o40
o41.Scale = Vector3.new(1.30999994, 0.5, 1.30999994)
o42 = Instance.new("Part")
o42.Parent = o3
o42.Material = Enum.Material.SmoothPlastic
o42.BrickColor = BrickColor.new("Black")
o42.Position = Vector3.new(23.1999817, 19.7308331, 78.980011)
o42.Anchored = true
o42.CFrame = CFrame.new(23.1999817, 19.7308331, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o42.CanCollide = false
o42.FormFactor = Enum.FormFactor.Symmetric
o42.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o42.Color = Color3.new(0.105882, 0.164706, 0.207843)
o43 = Instance.new("CylinderMesh")
o43.Parent = o42
o43.Scale = Vector3.new(1.30999994, 0.5, 1.30999994)
o44 = Instance.new("Part")
o44.Parent = o3
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Smoky grey")
o44.Position = Vector3.new(23.1999817, 20.1009865, 79.8798828)
o44.Rotation = Vector3.new(-0.00174855511, -0.00174850179, -0.00174855511)
o44.Anchored = true
o44.CFrame = CFrame.new(23.1999817, 20.1009865, 79.8798828, 1, 3.05180438e-005, -3.05171125e-005, -3.05171125e-005, 1, 3.05180438e-005, 3.05180438e-005, -3.05171125e-005, 1)
o44.CanCollide = false
o44.FormFactor = Enum.FormFactor.Symmetric
o44.Size = Vector3.new(0.200000003, 0.400000006, 0.800000012)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.356863, 0.364706, 0.411765)
o45 = Instance.new("BlockMesh")
o45.Parent = o44
o46 = Instance.new("Part")
o46.Parent = o3
o46.Material = Enum.Material.Wood
o46.BrickColor = BrickColor.new("Reddish brown")
o46.Position = Vector3.new(23.1999817, 17.3009853, 78.980011)
o46.Anchored = true
o46.CFrame = CFrame.new(23.1999817, 17.3009853, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o46.CanCollide = false
o46.FormFactor = Enum.FormFactor.Symmetric
o46.Size = Vector3.new(0.200000003, 2, 0.200000003)
o46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Color = Color3.new(0.411765, 0.25098, 0.156863)
o47 = Instance.new("CylinderMesh")
o47.Parent = o46
o48 = Instance.new("Part")
o48.Parent = o3
o48.Material = Enum.Material.SmoothPlastic
o48.BrickColor = BrickColor.new("Smoky grey")
o48.Position = Vector3.new(23.1999817, 20.5009384, 80.0798645)
o48.Rotation = Vector3.new(-0.00174855511, -0.00174850179, -0.00174855511)
o48.Anchored = true
o48.CFrame = CFrame.new(23.1999817, 20.5009384, 80.0798645, 1, 3.05180438e-005, -3.05171125e-005, -3.05171125e-005, 1, 3.05180438e-005, 3.05180438e-005, -3.05171125e-005, 1)
o48.CanCollide = false
o48.FormFactor = Enum.FormFactor.Symmetric
o48.Size = Vector3.new(0.200000003, 0.399999976, 0.400000006)
o48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o48.Color = Color3.new(0.356863, 0.364706, 0.411765)
o49 = Instance.new("BlockMesh")
o49.Parent = o48
o50 = Instance.new("Part")
o50.Parent = o3
o50.Material = Enum.Material.SmoothPlastic
o50.BrickColor = BrickColor.new("Black")
o50.Position = Vector3.new(23.1999817, 19.27108, 78.980011)
o50.Anchored = true
o50.CFrame = CFrame.new(23.1999817, 19.27108, 78.980011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o50.CanCollide = false
o50.FormFactor = Enum.FormFactor.Symmetric
o50.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.105882, 0.164706, 0.207843)
o51 = Instance.new("CylinderMesh")
o51.Parent = o50
o51.Scale = Vector3.new(1.30999994, 0.5, 1.30999994)
o52 = Instance.new("Part")
o52.Parent = o3
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Smoky grey")
o52.Position = Vector3.new(23.1999817, 20.0011787, 78.1800537)
o52.Rotation = Vector3.new(179.99826, 0.00174855511, -0.00174850179)
o52.Anchored = true
o52.CFrame = CFrame.new(23.1999817, 20.0011787, 78.1800537, 1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, -1, -3.05171125e-005, 3.05171125e-005, 3.05180438e-005, -1)
o52.CanCollide = false
o52.FormFactor = Enum.FormFactor.Symmetric
o52.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.356863, 0.364706, 0.411765)
o53 = Instance.new("SpecialMesh")
o53.Parent = o52
o53.MeshType = Enum.MeshType.Wedge
o54 = Instance.new("Part")
o54.Parent = o3
o54.Material = Enum.Material.SmoothPlastic
o54.Reflectance = 0.5
o54.Position = Vector3.new(23.1999817, 19.9006577, 80.7799988)
o54.Rotation = Vector3.new(-90, 0, -180)
o54.Anchored = true
o54.CFrame = CFrame.new(23.1999817, 19.9006577, 80.7799988, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o54.CanCollide = false
o54.FormFactor = Enum.FormFactor.Symmetric
o54.Size = Vector3.new(0.200000003, 0.200000003, 2)
o54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o55 = Instance.new("SpecialMesh")
o55.Parent = o54
o55.MeshType = Enum.MeshType.Torso
o56 = Instance.new("Part")
o56.Name = "hitbox"
o56.Parent = o3
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Smoky grey")
o56.Transparency = 1
o56.Position = Vector3.new(23.20224, 19.9042187, 78.7798767)
o56.Rotation = Vector3.new(-179.99794, -0.645192325, -179.945786)
o56.Anchored = true
o56.CFrame = CFrame.new(23.20224, 19.9042187, 78.7798767, -0.999936104, 0.000946156448, -0.0112604918, 0.000945812673, 0.999999642, 3.5844052e-005, 0.0112605197, 2.51914498e-005, -0.999936581)
o56.CanCollide = false
o56.FormFactor = Enum.FormFactor.Symmetric
o56.Size = Vector3.new(0.200000003, 2, 3.4000001)
o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Color = Color3.new(0.356863, 0.364706, 0.411765)
o57 = Instance.new("Part")
o57.Name = "Handle"
o57.Parent = o3
o57.Material = Enum.Material.Wood
o57.BrickColor = BrickColor.new("Reddish brown")
o57.Transparency = 1
o57.Position = Vector3.new(23.2001648, 15.0041523, 78.9798889)
o57.Rotation = Vector3.new(-0.00144336268, 0.645215452, -0.0541963279)
o57.Anchored = true
o57.CFrame = CFrame.new(23.2001648, 15.0041523, 78.9798889, 0.999936163, 0.000945844222, 0.0112608951, -0.00094618788, 0.999999523, 2.51898346e-005, -0.0112608671, -3.5843459e-005, 0.999936581)
o57.CanCollide = false
o57.FormFactor = Enum.FormFactor.Symmetric
o57.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o57.Color = Color3.new(0.411765, 0.25098, 0.156863)
o58 = Instance.new("CylinderMesh")
o58.Parent = o57
o59 = Instance.new("StringValue")
o59.Name = "description"
o59.Parent = o3
o59.Value = "Your everyday axe for your everyday needs."
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = script 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
