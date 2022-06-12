math.randomseed(tick())
plr = game:service("Players").LocalPlayer
ch, char = plr.Character, plr.Character
hum = ch.Humanoid
tor, torso, rootpart, rj = ch.Torso, ch.Torso, ch.HumanoidRootPart, ch.HumanoidRootPart.RootJoint
m, mouse = plr:GetMouse(), plr:GetMouse()
cfn, ang, mr, int = CFrame.new, CFrame.Angles, math.rad, Instance.new
bc = BrickColor.new
head = ch.Head
cam = workspace.CurrentCamera
debris = game.Debris
rj.C0 = cfn()
rj.C1 = cfn()
lib = {}
lib.cone = "1033714"
lib.ring = "3270017"
lib.yato = "579392805"
lib.diamond = "9756362"
lib.crown = "20329976"
lib.darkmagiccircle = "223123319"
rbx = "rbxassetid://"
for _, v in pairs(lib) do
  game:GetService("ContentProvider"):Preload("rbxassetid" .. v)
end
v3 = Vector3.new
cn = CFrame.new
ca2 = CFrame.Angles
mf = math.floor
mran = math.random
rn = mran
mrad = math.rad
rd = mrad
mdeg = math.deg
dg = mdeg
function ca(x, y, z)
  return ca2(mrad(x), mrad(y), mrad(z))
end
function mran2(a, b)
  return mran(a * 1000, b * 1000) / 1000
end
ud = UDim2.new
bn = BrickColor.new
c3 = Color3.new
function getSound(id)
  game:service("ContentProvider"):Preload("rbxassetid" .. tostring(id))
  local s = int("Sound", ch.Head)
  s.SoundId = "rbxassetid://" .. tostring(id - 1)
  s.Volume = 1
  return s
end
local combostring = ""
local attackstring = ""
blocksound = getSound(260433722)
blocksound.Pitch = 1
startsound = getSound(588738950)
startsound.Pitch = 1
endsound = getSound(588736246)
endsound.Pitch = 1
endsound.Volume = 1
swsound = getSound(588736970)
swexp = getSound(365002939)
swexp.Pitch = 1
spexp = getSound(365002939)
spexp.Pitch = 1.2
startsound2 = getSound(260433769)
startsound2.Pitch = 0.8
startsound3 = getSound(260433769)
startsound3.Pitch = 0.89
chargesound = getSound(181004944)
chargesound.Pitch = 1
basicsound = getSound(588736246)
basicsound.Pitch = 1.2
dodgesound = getSound(177162407)
dodgesound.Pitch = 1.4
landsound = getSound(315775190)
rushsound = getSound(134012323)
swoosh = getSound(231917988)
swoosh.Volume = 1
aerialcharge = getSound(265109959)
aerialcharge.Pitch = 1
curse = getSound(231917971)
glass = getSound(130779172)
magictone1 = getSound(588738950)
chargedupbeam = getSound(588735946)
chargedupbeam.Volume = 1
diamondproj = getSound(231917751)
diamondproj.PlaybackSpeed = 5
diamondbreak = getSound(130779172)
diamondbreak.Pitch = 2
magicriff = getSound(588735156)
bigmagic = getSound(231917773)
walksound = getSound(142665236)
apoc = getSound(235097615)
rise = getSound(231917834)
rise.Pitch = 1.4
ultdi = getSound(231917823)
giantexplosion = getSound(233091206)
local explodcharg = getSound(588697035)
explodcharg.Volume = 1
local magcd = rbx .. lib.darkmagiccircle
tweenTable = {}
altTweenTable = {}
local alljoints = {}
textTable = {}
local fx = {}
moves = {}
connectlist = {}
cooldowns = {}
movers = {}
local linetable = {}
moveDescriptions = {
  ["Dark Missile"] = {
    move = "Dark Missile",
    key = "Left Mouse Button",
    desc = "A basic, dark blast that is cheap on mana and easy to use. Deals low damage."
  },
  ["Normal Block"] = {
    move = "Normal Block",
    desc = "Blocks projectile attacks where you aim."
  },
  ["Rive Beam"] = {
    move = "Rive Beam",
    desc = "A beam of energy that deals heavy damage and knocks down foes."
  },
  ["Dark Spikes"] = {
    move = "Dark Spikes",
    desc = "A series of dark stakes that explode to push enemies back and deal medium damage."
  },
  ["Down Slam"] = {
    move = "Down Slam",
    key = "Space, Space, Q",
    desc = "An aerial attack that slams the character against the ground to create a shockwave that knocks down and deals low damage to enemies."
  },
  ["Aerial Sword"] = {
    move = "Aerial Sword",
    key = "Space, Space, Hold R",
    desc = "An aerial attack with huge power; creates a sphere of dark energy that flings spectral swords which explode and deal damage."
  },
  ["Curse"] = {
    move = "Curse",
    desc = "An attack that inflicts the Cursed debuff (5% maxhealth damage every second) and lifesteals half of damage dealt."
  },
  ["Dark Slash"] = {
    move = "Dark Slash",
    desc = "Summons a spectral sword that slashes to deal huge critical damage. Very high crit chance."
  },
  ["Diamond Storm"] = {
    move = "Diamond Storm",
    desc = "Charge up dark energy to release a flurry of diamonds that explode to deal damage with high crit chance. Heals twice damage dealt. High mana cost."
  },
  ["Origin Beam"] = {
    move = "Origin Beam",
    key = "LMB, LMB, E",
    desc = "Combo move: charges a beam that is held for a short time and deals rapid damage."
  },
  ["Nightmare Overture"] = {
    move = "Nightmare Overture",
    key = "Z",
    desc = "Ultimate move: Four pillars rise, charges a diamond levitates the user. Creates four diamonds than can be shot, dealing massive damage. Final diamond explodes, dealing massive damage and the Curse debuff to anyone inside the blast radius. "
  }
}
local run = false
idle = false
local animPlaying = false
local runLeg = false
canRunLeg = false
local deb = false
local basicswitch = false
local canExecuteMoves = true
local bg = false
local sprinting = false
ascension = false
local aright = false
local aleft = false
local aforward = false
local aback = false
local mult = 2
rcombostring = ""
maxmana = 900
mana = 900
chain = 0
regws = 16
bigws = 14
local managui = int("ScreenGui", plr.PlayerGui)
managui.Name = "Mana Gui"
local frame = int("Frame", managui)
frame.Size = UDim2.new(0.15, 0, 0.02, 0)
frame.Position = UDim2.new(0.83, 0, 0.7, 0)
frame.BackgroundColor3 = BrickColor.new("Black").Color
frame.BorderColor3 = BrickColor.new("Really black").Color
frame.BorderSizePixel = 6
local manabartext = int("TextLabel", frame)
manabartext.ZIndex = 2
manabartext.Size = UDim2.new(1, 0, 1, 0)
manabartext.TextColor3 = BrickColor.new("White").Color
manabartext.TextStrokeTransparency = 1
manabartext.Font = "SourceSansLight"
manabartext.Text = tostring(mana) .. "/" .. tostring(maxmana)
manabartext.FontSize = "Size18"
manabartext.BackgroundTransparency = 1
local manabar = int("Frame", frame)
manabar.Size = UDim2.new(1, 0, 1, 0)
manabar.BorderSizePixel = 0
manabar.BackgroundColor3 = BrickColor.new("Bright red").Color
manabar.Size = UDim2.new(mana / maxmana, 0, 1, 0)
local chainframe = int("Frame", managui)
chainframe.Size = frame.Size
chainframe.BackgroundTransparency = 1
chainframe.Position = frame.Position + UDim2.new(0.07, 0, -0.05, 0)
local chaintext = int("TextLabel", chainframe)
chaintext.BackgroundTransparency = 1
chaintext.TextStrokeColor3 = BrickColor.new("White").Color
chaintext.TextStrokeTransparency = 0
chaintext.Size = UDim2.new(1, 0, 1, 0)
chaintext.Font = "Antique"
chaintext.FontSize = "Size48"
chaintext.Text = "0x"
local r = int("TextLabel", chainframe)
r.BackgroundTransparency = 1
r.TextColor3 = BrickColor.new("White").Color
r.Size = UDim2.new(1, 0, 1, 0)
r.Font = "Antique"
r.FontSize = "Size24"
r.Text = string.reverse("neviR")
r.Position = UDim2.new(-0.9, 0, 0.5, 0)
local cooldownframe = int("Frame", managui)
cooldownframe.Size = UDim2.new(0.3, 0, 0.2, 0)
cooldownframe.BorderSizePixel = 0
cooldownframe.Transparency = 1
cooldownframe.Position = UDim2.new(0.7, 0, 0.8, 0)
local movebutton = int("TextButton", managui)
movebutton.Position = UDim2.new(0.93, 0, 0.73, 0)
movebutton.Text = "Moves"
movebutton.Font = "Antique"
movebutton.BackgroundColor3 = BrickColor.new("Really black").Color
movebutton.BorderSizePixel = 0
movebutton.TextColor3 = BrickColor.new("White").Color
movebutton.FontSize = "Size24"
movebutton.Size = UDim2.new(0.05, 0, 0.025, 0)
movesframe = int("Frame", managui)
movesframe.Size = UDim2.new(0.3, 0, 0.5, 0)
movesframe.BackgroundColor3 = BrickColor.new("Really black").Color
movesframe.BorderSizePixel = 6
movesframe.Position = UDim2.new(0.35, 0, 0.25, 0)
movesframe.BorderColor3 = BrickColor.new("Bright red").Color
movesframe.Visible = false
local scrollframe = int("ScrollingFrame", movesframe)
scrollframe.Size = UDim2.new(0.35, 0, 1, 0)
scrollframe.BackgroundColor3 = BrickColor.new("Really black").Color
scrollframe.ZIndex = 2
scrollframe.BorderColor3 = BrickColor.new("Bright red").Color
scrollframe.BorderSizePixel = 2
local descbox = int("Frame", movesframe)
descbox.Size = UDim2.new(0.65, 0, 1, 0)
descbox.Position = UDim2.new(0.35, 0, 0, 0)
descbox.ZIndex = 3
descbox.BackgroundTransparency = 1
descbox.BorderSizePixel = 0
local nam = int("TextLabel", descbox)
nam.Size = UDim2.new(1, 0, 0.05, 0)
nam.Position = UDim2.new(0, 0, 0.1, 0)
nam.ZIndex = 4
nam.Font = "Antique"
nam.FontSize = "Size24"
nam.BackgroundTransparency = 1
nam.TextColor3 = BrickColor.new("White").Color
nam.Text = "Select a move!"
local desc = int("TextLabel", descbox)
desc.BackgroundTransparency = 1
desc.TextWrapped = true
desc.Font = "Antique"
desc.FontSize = "Size32"
desc.Text = ""
desc.TextColor3 = BrickColor.new("White").Color
desc.TextXAlignment = "Center"
desc.TextYAlignment = "Top"
desc.Size = UDim2.new(1, 0, 0.6, 0)
desc.Position = UDim2.new(0, 0, 0.2, 0)
desc.ZIndex = 4
desc.TextScaled = true
local manacostg = int("TextLabel", desc)
manacostg.Size = UDim2.new(1, 0, 0.1, 0)
manacostg.Text = ""
manacostg.Font = "Antique"
manacostg.FontSize = "Size28"
manacostg.TextColor3 = BrickColor.new("White").Color
manacostg.Position = UDim2.new(0, 0, 1, 0)
manacostg.BackgroundTransparency = 1
local cmb = int("TextLabel", desc)
cmb.Size = UDim2.new(1, 0, 0.1, 0)
cmb.Text = ""
cmb.Font = "Antique"
cmb.FontSize = "Size28"
cmb.TextColor3 = BrickColor.new("White").Color
cmb.Position = UDim2.new(0, 0, 1.1, 0)
cmb.BackgroundTransparency = 1
local buttony = 0.002
for _, v in pairs(moveDescriptions) do
  do
    local button = int("TextButton", scrollframe)
    button.Size = UDim2.new(0.85, 0, 0.05, 0)
    button.BorderSizePixel = 0
    button.BackgroundColor3 = BrickColor.new("Bright red").Color
    button.Font = "Antique"
    button.FontSize = "Size24"
    button.TextColor3 = BrickColor.new("White").Color
    button.TextWrapped = true
    button.Text = v.move
    button.ZIndex = 3
    button.Position = UDim2.new(0.03, 0, buttony, 0)
    buttony = buttony + 0.052
    button.MouseButton1Down:connect(function()
      desc.Text = v.desc
      nam.Text = v.move
      if v.key then
        cmb.Text = "Keys: " .. v.key
      else
        cmb.Text = "Keys: " .. string.upper(moves[v.move].key)
      end
      manacostg.Text = "Mana Cost: " .. tostring(moves[v.move].manacost)
    end)
  end
end
movebutton.MouseButton1Down:connect(function()
  if movesframe.Visible == false then
    movesframe.Visible = true
  else
    movesframe.Visible = false
  end
end)
local cx = 0
local cy = 0
function addCoolDownGui(v)
  local thing = int("TextLabel", cooldownframe)
  thing.TextWrapped = true
  thing.Size = UDim2.new(0.19, 0, 0.5, 0)
  thing.Position = UDim2.new(cx, 0, cy, 0)
  thing.BackgroundColor3 = BrickColor.new("Really black").Color
  thing.Font = "Antique"
  thing.FontSize = "Size24"
  thing.TextColor3 = BrickColor.new("White").Color
  thing.BorderSizePixel = 0
  thing.Text = v.move .. " " .. tostring(v.timeleft)
  spawn(function()
    repeat
      wait(0.1)
      thing.Text = v.move .. " " .. tostring(v.timeleft)
    until 0.1 > v.timeleft
    thing:Destroy()
    updateCoolDowns()
  end)
  if cx < 0.8 then
    cx = cx + 0.2
  else
    cy = 0.5
    cx = 0
  end
end
function updateCoolDowns()
  cooldownframe:clearAllChildren()
  cx = 0
  cy = 0
  for _, v in pairs(cooldowns) do
    addCoolDownGui(v)
  end
end
ypcall(function()
  ch.Animate:Destroy()
  ch.Humanoid.Animator:Destroy()
end)
if ch:findFirstChild("Riven") then
  ch.Riven:Destroy()
end
local tube = int("Model", ch)
tube.Name = "Riven"
script.Parent = tube
function Weld(p0, p1, x, y, z, rx, ry, rz, par)
  p0.Position = p1.Position
  local w = Instance.new("Motor", par or p0)
  w.Part0 = p1
  w.Part1 = p0
  w.C0 = CFrame.new(x or 0, y or 0, z or 0) * CFrame.Angles(rx or 0, ry or 0, rz or 0)
  w.MaxVelocity = 0.1
  return w
end
function clerp(c1, c2, sp)
  local R1, R2, R3 = c1:toEulerAnglesXYZ()
  local R21, R22, R23 = c2:toEulerAnglesXYZ()
  return CFrame.new(c1.X + (c2.X - c1.X) * sp, c1.Y + (c2.Y - c1.Y) * sp, c1.Z + (c2.Z - c1.Z) * sp) * CFrame.Angles(R1 + (R21 - R1) * sp, R2 + (R22 - R2) * sp, R3 + (R23 - R3) * sp)
end
function Tween(Weld, Stop, Step, a)
  ypcall(function()
    local function func()
      local Start = Weld.C1
      local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
      local Stop = Stop
      local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
      if not Step then
        Step = 0.1
      end
      table.insert(tweenTable, {
        th = 0,
        Weld = Weld,
        Step = Step,
        Start = Start,
        X1 = X1,
        Y1 = Y1,
        Z1 = Z1,
        Stop = Stop,
        X2 = X2,
        Y2 = Y2,
        Z2 = Z2
      })
    end
    if a then
      coroutine.wrap(func)()
    else
      func()
    end
  end)
end
function altTween(Weld, Stop, Step, a)
  ypcall(function()
    local function func()
      local Start = Weld.C1
      local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
      local Stop = Stop
      local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
      if not Step then
        Step = 0.1
      end
      table.insert(altTweenTable, {
        th = 0,
        Weld = Weld,
        Step = Step,
        Start = Start,
        X1 = X1,
        Y1 = Y1,
        Z1 = Z1,
        Stop = Stop,
        X2 = X2,
        Y2 = Y2,
        Z2 = Z2
      })
    end
    if a then
      coroutine.wrap(func)()
    else
      func()
    end
  end)
end
function weld(p0, p1, c0)
  local w = Instance.new("Weld", p0)
  w.Part0 = p0
  w.Part1 = p1
  w.C0 = c0
  return w
end
function cp(parent, color, size, anchored, cancollide)
  local newp = Instance.new("Part", parent)
  newp.TopSurface = "SmoothNoOutlines"
  newp.BottomSurface = "SmoothNoOutlines"
  newp.FrontSurface = "SmoothNoOutlines"
  newp.BackSurface = "SmoothNoOutlines"
  newp.RightSurface = "SmoothNoOutlines"
  newp.LeftSurface = "SmoothNoOutlines"
  newp.FormFactor = "Custom"
  newp.BrickColor = bc(color)
  local rn = math.random(3)
  if rn == 1 then
  end
  newp.Size = size
  newp.Anchored = anchored
  newp.CanCollide = cancollide
  newp:BreakJoints()
  return newp
end
if ch:findFirstChild("Body Colors") then
  ch["Body Colors"].HeadColor = BrickColor.new("Really black")
  ch["Body Colors"].TorsoColor = BrickColor.new("Really black")
  ch["Body Colors"].LeftLegColor = BrickColor.new("Really black")
  ch["Body Colors"].RightLegColor = BrickColor.new("Bright red")
  ch["Body Colors"].RightArmColor = BrickColor.new("Really black")
  ch["Body Colors"].LeftArmColor = BrickColor.new("Really black")
end
for _, v in pairs(ch:GetChildren()) do
  if v.className == "Accessory" then
    v:Destroy()
  elseif v.className == "Part" then
    v.BrickColor = BrickColor.new("Really black")
  end
  if v.Name == "Right Leg" then
    v.BrickColor = BrickColor.new("Bright red")
  end
end
if ch:findFirstChild("Pants") then
  ch.Pants:Destroy()
end
if ch:findFirstChild("Shirt") then
  ch.Shirt:Destroy()
end
function destroyJoints()
  for i = 1, 5 do
    for _, v in pairs(alljoints) do
      ypcall(function()
        v:Destroy()
        table.remove(alljoints, _)
      end)
    end
  end
end
function initializeJoints()
  destroyJoints()
  rabr = cp(tube, "White", Vector3.new(1, 1, 1), false, false)
  rabr.Transparency = 1
  rabr.Name = "Locker"
  rabr.Position = torso.Position
  rw = Weld(rabr, torso, 1.5, 0.5, 0, 0, 0, 0)
  rw.Parent = tube
  rw.Name = "rw"
  w = Instance.new("Weld", tube)
  w.Part0, w.Part1 = ch["Right Arm"], rabr
  w.C1 = CFrame.new(0, -0.5, 0)
  labr = cp(tube, "White", Vector3.new(1, 1, 1), false, false)
  labr.Transparency = 1
  labr.Name = "Locker"
  labr.Position = torso.Position
  lw = Weld(labr, torso, -1.5, 0.5, 0, 0, 0, 0)
  lw.Parent = tube
  lw.Name = "lw"
  ww = Instance.new("Weld", tube)
  ww.Part0, ww.Part1 = ch["Left Arm"], labr
  ww.C1 = CFrame.new(0, -0.5, 0)
  rlabr = cp(tube, "White", Vector3.new(1, 1, 1), false, false)
  rlabr.Transparency = 1
  rlabr.Name = "Locker"
  rlabr.Position = torso.Position
  rlw = Weld(rlabr, torso, 0.5, -1.5, 0, 0, 0, 0)
  rlw.Parent = tube
  rlw.Name = "rlw"
  wl = Instance.new("Weld", tube)
  wl.Part0, wl.Part1 = ch["Right Leg"], rlabr
  wl.C1 = CFrame.new(0, -0.5, 0)
  llabr = cp(tube, "White", Vector3.new(1, 1, 1), false, false)
  llabr.Transparency = 1
  llabr.Name = "Locker"
  llabr.Position = torso.Position
  llw = Weld(llabr, torso, -0.5, -1.5, 0, 0, 0, 0)
  llw.Parent = tube
  llw.Name = "llw"
  wwl = Instance.new("Weld", tube)
  wwl.Part0, wwl.Part1 = ch["Left Leg"], llabr
  wwl.C1 = CFrame.new(0, -0.5, 0)
  nk = cp(tube, "White", Vector3.new(1, 1, 1), false, false)
  nk.Transparency = 1
  nk.Name = "Locker"
  nk.Position = torso.Position
  neck = Weld(nk, torso, 0, 2, 0, 0, 0, 0)
  neck.Parent = tube
  neck.Name = "neck"
  www = Instance.new("Weld", tube)
  www.Part0, www.Part1 = ch.Head, nk
  www.C1 = CFrame.new(0, -0.5, 0)
  table.insert(alljoints, rabr)
  table.insert(alljoints, labr)
  table.insert(alljoints, rw)
  table.insert(alljoints, lw)
  table.insert(alljoints, w)
  table.insert(alljoints, ww)
  table.insert(alljoints, rlabr)
  table.insert(alljoints, llabr)
  table.insert(alljoints, rlw)
  table.insert(alljoints, llw)
  table.insert(alljoints, wl)
  table.insert(alljoints, wwl)
  table.insert(alljoints, nk)
  table.insert(alljoints, neck)
  table.insert(alljoints, www)
end
function cyl(prt)
  local c = int("CylinderMesh", prt)
  c.Name = "mesh"
  return c
end
function blo(prt)
  local c = int("BlockMesh", prt)
  c.Name = "bmsh"
  return c
end
function sphere(prt)
  local c = int("SpecialMesh", prt)
  c.MeshType = "Sphere"
  return c
end
function newSpm(prt)
  local nspm = int("SpecialMesh", prt)
  nspm.MeshType = "FileMesh"
  return nspm
end
local hat = cp(tube, "Really black", Vector3.new(1, 1, 1))
local hatmesh = int("SpecialMesh", hat)
hatmesh.MeshId = rbx .. "24102243"
weld(ch.Head, hat, cfn(0, 0.6, 0))
local rarmdiamond = cp(tube, "Bright red", Vector3.new(1, 1, 1))
local dia = newSpm(rarmdiamond)
dia.MeshId = rbx .. lib.diamond
dia.Scale = Vector3.new(0.4, 0.8, 0.4)
weld(ch["Right Arm"], rarmdiamond, cfn(0.4, 0, 0))
local testshoulder = cp(tube, "Bright red", Vector3.new(1.1, 0.6, 1.1))
testshoulder.Material = "SmoothPlastic"
weld(ch["Right Arm"], testshoulder, cfn(0, 0.8, 0))
local testhalf = cp(tube, "Bright red", Vector3.new(1, 2, 1))
testhalf.Material = "SmoothPlastic"
blo(testhalf).Scale = Vector3.new(1.01, 1.01, 1.01)
weld(tor, testhalf, cfn(0.5, 0, 0))
blo(ch["Right Leg"])
ch["Right Leg"].Material = "SmoothPlastic"
ch["Right Leg"].TopSurface = "SmoothNoOutlines"
ch["Right Leg"].BottomSurface = "SmoothNoOutlines"
ch["Right Leg"].LeftSurface = "SmoothNoOutlines"
ch["Right Leg"].RightSurface = "SmoothNoOutlines"
ch["Right Leg"].FrontSurface = "SmoothNoOutlines"
ch["Right Leg"].BackSurface = "SmoothNoOutlines"
local cooldiamond = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
local dia = newSpm(cooldiamond)
dia.Scale = Vector3.new(0.4, 0.8, 0.45)
dia.MeshId = rbx .. lib.diamond
weld(testhalf, cooldiamond, cfn(0, 0.3, -0.3))
local cooldiamond2 = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
local dia = newSpm(cooldiamond2)
dia.Scale = Vector3.new(0.4, 0.8, 0.45)
dia.MeshId = rbx .. lib.diamond
weld(testhalf, cooldiamond2, cfn(0.2, -0.15, -0.3))
local cooldiamond3 = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
local dia = newSpm(cooldiamond3)
dia.Scale = Vector3.new(0.4, 0.8, 0.45)
dia.MeshId = rbx .. lib.diamond
weld(testhalf, cooldiamond3, cfn(-0.2, -0.15, -0.3))
local p1 = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
p1.Material = "SmoothPlastic"
local bm = blo(p1)
bm.Scale = Vector3.new(0.05, 0.15, 0.5)
weld(testshoulder, p1, cfn(0.55, 0.1, 0.225))
local p1 = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
p1.Material = "SmoothPlastic"
local bm = blo(p1)
bm.Scale = Vector3.new(0.05, 0.5, 0.15)
weld(testshoulder, p1, cfn(0.55, 0, 0.225))
local p1 = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
p1.Material = "SmoothPlastic"
local bm = blo(p1)
bm.Scale = Vector3.new(0.05, 0.525, 0.15)
weld(testshoulder, p1, cfn(0.55, 0.005, 0))
local p1 = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
p1.Material = "SmoothPlastic"
local bm = blo(p1)
bm.Scale = Vector3.new(0.05, 0.525, 0.15)
weld(testshoulder, p1, cfn(0.55, 0.005, -0.15))
local p1 = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
p1.Material = "SmoothPlastic"
local bm = blo(p1)
bm.Scale = Vector3.new(0.05, 0.525, 0.15)
weld(testshoulder, p1, cfn(0.55, 0.005, -0.23) * ang(mr(35), 0, 0))
local p1 = cp(tube, "Really black", Vector3.new(0.5, 0.5, 0.5))
p1.Material = "SmoothPlastic"
local bm = blo(p1)
bm.Scale = Vector3.new(0.05, 0.525, 0.15)
weld(testshoulder, p1, cfn(0.55, 0.005, -0.3))
initializeJoints()
function reset()
  if run == false and animPlaying == false then
    altTweenTable = {}
    Tween(llw, cfn(0, -0.08 * math.sin(tick() * 1.5), 0) * ang(0, 0, mr(5)))
    Tween(rlw, cfn(0, -0.08 * math.sin(tick() * 1.5), 0) * ang(0, 0, mr(-5)))
    Tween(rw, cfn(0, 0.03 * math.sin(tick() * 1.5), 0) * ang(0, 0, mr(-15) + mr(-5 * math.sin(tick() * 1.5))))
    Tween(lw, cfn(0, 0.03 * math.sin(tick() * 1.5), 0) * ang(0, 0, mr(15) + mr(5 * math.sin(tick() * 1.5))))
    Tween(neck, cfn())
    Tween(rj, cfn(0, 0.08 * math.sin(tick() * 1.5), 0), 0.3)
  end
end
function bigreset()
  if run == false and animPlaying == false then
    altTweenTable = {}
    Tween(llw, cfn(0, -0.08 * math.sin(tick() * 1.5 * mult), 0) * ang(0, 0, mr(5)))
    Tween(rlw, cfn(0, -0.08 * math.sin(tick() * 1.5 * mult), 0) * ang(0, 0, mr(-5)))
    Tween(rw, cfn(0, 0.03 * math.sin(tick() * 1.5 * mult), 0) * ang(0, 0, mr(-15) + mr(-5 * math.sin(tick() * 1.5))))
    Tween(lw, cfn(0, 0.03 * math.sin(tick() * 1.5 * mult), 0) * ang(0, 0, mr(15) + mr(5 * math.sin(tick() * 1.5))))
    Tween(neck, cfn())
    Tween(rj, cfn(0, 0.08 * math.sin(tick() * 1.5 * mult), 0), 0.3)
  end
end
function resetLegs()
  altTweenTable = {}
  Tween(llw, cfn())
  Tween(rlw, cfn())
end
function walkCycle()
  if run == true and animPlaying == false then
    tweenTable = {}
    Tween(neck, cfn())
    Tween(rj, cfn())
    Tween(llw, cfn(0, 0, -0.2 * math.sin(tick() * 8)) * ang(mr(10) + mr(40 * math.sin(tick() * 8)), 0, 0), 0.6)
    Tween(rlw, cfn(0, 0, 0.2 * math.sin(tick() * 8)) * ang(mr(10) + mr(-40 * math.sin(tick() * 8)), 0, 0), 0.6)
    Tween(rw, cfn() * ang(mr(-40), 0, mr(-30)), 0.07)
    Tween(lw, cfn() * ang(mr(20), 0, mr(20)), 0.07)
  end
end
function walkCycleBig()
  if run == true and animPlaying == false then
    tweenTable = {}
    Tween(neck, cfn())
    Tween(rj, cfn())
    Tween(llw, cfn(0, 0, -0.2 * math.sin(tick() * 8) * mult) * ang(mr(10) + mr(40 * math.sin(tick() * 8)), 0, 0), 0.6)
    Tween(rlw, cfn(0, 0, 0.2 * math.sin(tick() * 8) * mult) * ang(mr(10) + mr(-40 * math.sin(tick() * 8)), 0, 0), 0.6)
    Tween(rw, cfn() * ang(mr(-40), 0, mr(-30)), 0.07)
    Tween(lw, cfn() * ang(mr(20), 0, mr(20)), 0.07)
  end
end
function sprintCycle()
  if run == true and animPlaying == false then
    tweenTable = {}
    Tween(rj, cfn() * ang(mr(10), 0, 0))
    Tween(llw, cfn(0, 0, -0.2 * math.sin(tick() * 11)) * ang(mr(20) + mr(60 * math.sin(tick() * 11)), 0, 0), 0.25)
    Tween(rlw, cfn(0, 0, 0.2 * math.sin(tick() * 11)) * ang(mr(20) + mr(-60 * math.sin(tick() * 11)), 0, 0), 0.25)
    Tween(rw, cfn() * ang(mr(-20) + mr(60 * math.sin(tick() * 11)), 0, mr(-10)), 0.25)
    Tween(lw, cfn() * ang(mr(-20) + mr(-60 * math.sin(tick() * 11)), 0, mr(10)), 0.25)
  end
end
local jumping = false
function jump()
  if animPlaying == false then
    jumping = true
    run = false
    resetLegs()
    tweenTable = {}
    altTweenTable = {}
    Tween(neck, cfn(0, 0, -0.2) * ang(mr(-20), 0, 0), 0.1)
    Tween(rw, cfn() * ang(mr(15), 0, mr(-25)), 0.1)
    Tween(lw, cfn() * ang(mr(15), 0, mr(25)), 0.1)
    Tween(rlw, cfn() * ang(mr(15), 0, 0), 0.1)
    Tween(llw, cfn() * ang(mr(15), 0, 0), 0.1)
    wait(0.2)
    reset()
    wait(0.1)
    jumping = false
  end
end
function walkLegs()
  if runLeg == true then
    altTweenTable = {}
    altTween(llw, cfn(0, 0, -0.2 * math.sin(tick() * 8)) * ang(mr(20) + mr(50 * math.sin(tick() * 8)), 0, 0), 0.6)
    altTween(rlw, cfn(0, 0, 0.2 * math.sin(tick() * 8)) * ang(mr(20) + mr(-50 * math.sin(tick() * 8)), 0, 0), 0.6)
  end
end
function dealDamage(man, damage, crit, multi, lifesteal)
  if man and man:findFirstChild("Humanoid") and man:findFirstChild("Head") then
    local dm = damage
    local cr = false
    local hm = man.Humanoid
    if crit and crit > 0 then
      local c = math.random(crit)
      if c == 1 then
        cr = true
      end
    end
    if cr == true then
      if not multi then
        dm = dm * 1.5
      else
        dm = dm * multi
      end
    end
    hm:TakeDamage(dm)
    if lifesteal then
      local plife = lifesteal * dm
      if hum.Health < hum.MaxHealth then
        hum.Health = hum.Health + plife
        local bbg = int("BillboardGui", tube)
        bbg.Size = UDim2.new(1, 0, 1, 0)
        bbg.StudsOffset = Vector3.new(0, 2, 0)
        bbg.StudsOffset = bbg.StudsOffset + Vector3.new(math.random(-math.random(50) / 10, math.random(50) / 10), 0, math.random(-math.random(50) / 10, math.random(50) / 10))
        bbg.Adornee = ch.Head
        bbg.AlwaysOnTop = true
        local tlabl = int("TextLabel", bbg)
        tlabl.Size = UDim2.new(1, 0, 1, 0)
        tlabl.Text = tostring(plife)
        tlabl.BackgroundTransparency = 1
        tlabl.TextColor3 = BrickColor.new("Bright green").Color
        tlabl.TextStrokeColor3 = BrickColor.new("White").Color
        tlabl.TextStrokeTransparency = 0
        tlabl.Font = "Antique"
        tlabl.FontSize = "Size60"
        table.insert(textTable, bbg)
      end
    end
    chain = chain + 1
    if hm.MaxHealth >= 99999 then
      hm.Parent:BreakJoints()
    end
    local bbg = int("BillboardGui", tube)
    bbg.Size = UDim2.new(1, 0, 1, 0)
    bbg.StudsOffset = Vector3.new(0, 2, 0)
    bbg.StudsOffset = bbg.StudsOffset + Vector3.new(math.random(-math.random(50) / 10, math.random(50) / 10), 0, math.random(-math.random(50) / 10, math.random(50) / 10))
    bbg.Adornee = man.Head
    bbg.AlwaysOnTop = true
    local tlabl = int("TextLabel", bbg)
    tlabl.Size = UDim2.new(1, 0, 1, 0)
    tlabl.Text = tostring(dm)
    tlabl.BackgroundTransparency = 1
    tlabl.TextColor3 = BrickColor.new("Really black").Color
    tlabl.TextStrokeColor3 = BrickColor.new("White").Color
    if cr == true then
      tlabl.TextColor3 = BrickColor.new("Really red").Color
      tlabl.TextStrokeColor3 = BrickColor.new("Really black").Color
    end
    tlabl.TextStrokeTransparency = 0
    tlabl.Font = "Antique"
    tlabl.FontSize = "Size60"
    table.insert(textTable, bbg)
    return dm
  end
end
function displayText(thing, text, color)
  local bbg = int("BillboardGui", tube)
  bbg.Size = UDim2.new(1, 0, 1, 0)
  bbg.StudsOffset = Vector3.new(0, 3, 0)
  bbg.Adornee = thing
  bbg.AlwaysOnTop = true
  local tlabl = int("TextLabel", bbg)
  tlabl.Size = UDim2.new(1, 0, 1, 0)
  tlabl.Text = text
  tlabl.BackgroundTransparency = 1
  tlabl.TextColor3 = BrickColor.new("Really black").Color
  tlabl.TextStrokeColor3 = BrickColor.new("White").Color
  tlabl.TextStrokeTransparency = 0
  tlabl.Font = "Antique"
  tlabl.FontSize = "Size60"
  table.insert(textTable, bbg)
end
local tp = cp(tube, "White", Vector3.new(1, 1, 1))
tp.Transparency = 1
weld(ch["Right Arm"], tp, cfn(0, -1, 0))
function addFx(item, int, final, func)
  table.insert(fx, {
    item = item,
    int = int,
    func = func,
    final = final,
    stepval = 0
  })
end
function addMove(name, key, cooldown, func, manacost)
  moves[name] = {
    key = key,
    cooldown = cooldown,
    func = func,
    manacost = manacost
  }
end
function drawLine(point_a, point_b, bc_code, angle, mag, width)
  local dist = point_a - point_b.magnitude
  local num = 1
  if mag then
    num = mag
  end
  if dist > num then
    local rad = dist / 2
    local line = Instance.new("Part", tube)
    line.Anchored = true
    line.FormFactor = "Custom"
    line.BrickColor = BrickColor.new(bc_code)
    line.TopSurface = "SmoothNoOutlines"
    line.BottomSurface = "SmoothNoOutlines"
    line.LeftSurface = "SmoothNoOutlines"
    line.RightSurface = "SmoothNoOutlines"
    line.FrontSurface = "SmoothNoOutlines"
    line.BackSurface = "SmoothNoOutlines"
    line.Material = "Neon"
    line.CanCollide = false
    line.Size = Vector3.new(0.7, dist, 0.7)
    if width then
      line.Size = Vector3.new(width, dist, width)
    end
    cyl(line).Name = "blok"
    line.CFrame = CFrame.new(point_a, point_b) * CFrame.new(0, 0, -rad) * ang(mr(90), 0, 0)
    return line
  end
end
function depleteMana(amount)
  if mana > 0 then
    if mana - amount > 0 then
      mana = mana - amount
      return true
    else
      return false
    end
  end
end
function executeMove(name)
  if canExecuteMoves == true and ch and hum and hum.Health > 0 then
    local can = true
    for _, v in pairs(cooldowns) do
      if v.move == name then
        can = false
        break
      end
    end
    if name == "Nightmare Overture" and (Vector3.new(0, tor.Velocity.Y, 0).magnitude > 2 or 2 < Vector3.new(tor.Velocity.X, 0, tor.Velocity.Z).magnitude) then
      can = false
    end
    if can == true then
      local can2 = true
      if moves[name].manacost then
        local a = mana - moves[name].manacost
        local b = false
        if a > 0 then
          b = true
        end
        if not b then
          can2 = false
        end
      end
      if can2 then
        local c
        depleteMana(moves[name].manacost)
        moves[name].func()
      end
      return true
    else
      return false
    end
  end
end
function addToCList(what, key)
  local a = {
    what,
    key = key,
    up = false
  }
  table.insert(connectlist, a)
  return a
end
function waitForUp(what)
  repeat
    wait()
  until what.up == true
end
function addMover(what, step, func)
  table.insert(movers, {
    mover = what,
    step = step,
    lastpoint = what.CFrame,
    func = func
  })
end
local CreateRegion3FromLocAndSize = function(Position, Size)
  local SizeOffset = Size / 2
  local Point1 = Position - SizeOffset
  local Point2 = Position + SizeOffset
  return Region3.new(Point1, Point2)
end
local righthandle = cp(tube, "White", Vector3.new(1, 1, 1))
weld(ch["Right Arm"], righthandle, cfn(0, -1, 0))
righthandle.Transparency = 1
local lefthandle = cp(tube, "White", Vector3.new(1, 1, 1))
weld(ch["Left Arm"], lefthandle, cfn(0, -1, 0))
lefthandle.Transparency = 1
function addCoolDown(move)
  local a = {
    timeleft = moves[move].cooldown,
    move = move
  }
  addCoolDownGui(a)
  table.insert(cooldowns, a)
end
addMove("Normal Block", "f", 0.5, function()
  deb = true
  idle = false
  local ws = hum.WalkSpeed
  tor.CFrame = CFrame.new(tor.Position, Vector3.new(mouse.Hit.p.X, tor.Position.Y, mouse.Hit.p.Z))
  hum.WalkSpeed = 0
  tweenTable = {}
  animPlaying = true
  local pcf = tor.CFrame
  Tween(rj, cfn() * ang(0, mr(-45), 0), 0.2)
  Tween(rw, cfn() * ang(mr(-86), mr(-15), 0), 0.2)
  Tween(lw, cfn() * ang(0, mr(5), mr(20)), 0.2)
  blocksound:Play()
  local block = cp(workspace, "Really black", Vector3.new(8, 6, 1), true, true)
  block.CFrame = pcf * CFrame.new(0, 0, -5)
  block.Material = "Neon"
  local bm = blo(block)
  bm.Scale = Vector3.new(0, 0, 0.9)
  addFx(block, 0.05, nil, function()
    bm.Scale = bm.Scale + Vector3.new(0.05, 0.05, 0)
  end)
  local a = addToCList("block_connect", "f")
  waitForUp(a)
  addCoolDown("Normal Block")
  hum.WalkSpeed = ws
  deb = false
  addFx(block, 0.05, "destroy", function()
    block.Transparency = block.Transparency + 0.05
    block.bmsh.Scale = block.bmsh.Scale + Vector3.new(0.07, 0.07, 0)
  end)
  idle = true
  reset()
  animPlaying = false
end, 15)
addMove("Diamond Storm", "v", 10, function()
  animPlaying = true
  deb = true
  canExecuteMoves = false
  hum.WalkSpeed = 0
  tweenTable = {}
  altTweenTable = {}
  Tween(rw, cfn(0, 1, 0) * ang(mr(-70), mr(-45), 0))
  Tween(lw, cfn() * ang(mr(-70), mr(45), 0))
  magicriff:Play()
  game.Debris:AddItem(bgmc, 1)
  spawn(function()
    for i = 1, 20 do
      wait()
      do
        local fx = cp(tube, "Really black", Vector3.new(1.2, 1.2, 1.2), true)
        fx.CFrame = righthandle.CFrame * ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
        local bl = blo(fx)
        addFx(fx, 0.07, "destroy", function()
          bl.Scale = bl.Scale + Vector3.new(0.1, 0.1, 0.1)
          fx.Transparency = fx.Transparency + 0.07
        end)
      end
    end
  end)
  wait(1)
  bg = true
  local a = addToCList("diamond_connect", "v")
  Tween(rj, cfn() * ang(0, mr(-90), 0), 0.2)
  Tween(rw, cfn() * ang(0, 0, mr(-90)), 0.2)
  Tween(lw, cfn() * ang(0, mr(5), mr(20)), 0.2)
  repeat
    wait(0.1)
    local d = depleteMana(10)
    if d then
      do
        local bgmc = bigmagic:clone()
        bgmc.Parent = ch.Head
        bgmc.Volume = 1
        bgmc:Play()
        local crn = cp(tube, "Really black", Vector3.new(1, 1, 1), true)
        crn.CFrame = tor.CFrame * cfn(0, -2.5, 0)
        local ms = newSpm(crn)
        ms.TextureId = rbx .. "132155326"
        ms.MeshId = rbx .. lib.crown
        ms.VertexColor = Vector3.new(0, 0, 0)
        ms.Scale = Vector3.new(1.5, 1, 1.5)
        addFx(crn, 0.07, "destroy", function()
          crn.Transparency = crn.Transparency + 0.07
          ms.Scale = ms.Scale + Vector3.new(0.3, 0, 0.3)
        end)
        diamondproj:Play()
        local dia = cp(tube, "Really black", Vector3.new(1, 1, 1))
        local ran = math.random(2)
        if ran == 1 then
          dia.BrickColor = BrickColor.new("Bright red")
        end
        local dmm = newSpm(dia)
        dmm.Scale = Vector3.new(0.5, 1, 0.5)
        dmm.MeshId = rbx .. lib.diamond
        dia.CFrame = righthandle.CFrame
        local sw = dia
        local vel = int("BodyVelocity", dia)
        sw.CFrame = CFrame.new(righthandle.CFrame.p, Vector3.new(m.Hit.p.X, m.Hit.p.Y, m.Hit.p.Z)) * ang(mr(math.random(-math.random(3.4), math.random(3.4))), mr(math.random(-math.random(3.4), math.random(3.4))), mr(math.random(-math.random(3.4), math.random(3.4))))
        vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        vel.Velocity = sw.CFrame.lookVector * 152
        sw.CFrame = sw.CFrame * ang(mr(90), 0, 0)
        game.Debris:AddItem(sw, 2)
        local dmgdealt = false
        local nct = sw.Touched:connect(function(part)
          if part.Parent and part.Parent:findFirstChild("Humanoid") and not part:IsDescendantOf(ch) and not dmgdealt then
            dealDamage(part.Parent, 2.5, 5, 2, 2)
            dmgdealt = true
          end
          if part:IsDescendantOf(ch) == false then
            local snd = diamondbreak:clone()
            snd.Parent = sw
            snd:Play()
            vel:Destroy()
            sw.Anchored = true
            addFx(sw, 0.07, "destroy", function()
              dmm.Scale = dmm.Scale + Vector3.new(0.1, 0.1, 0.1)
              dia.Transparency = dia.Transparency + 0.07
            end)
          end
        end)
      end
    else
      a.up = true
    end
  until a.up == true
  animPlaying = false
  deb = false
  bg = false
  canExecuteMoves = true
  hum.WalkSpeed = regws
  reset()
end, 100)
addMove("Curse", "g", 60, function()
  deb = true
  idle = false
  animPlaying = true
  canRunLeg = true
  tweenTable = {}
  altTweenTable = {}
  Tween(rj, cfn() * ang(0, mr(-90), 0), 0.2)
  Tween(rw, cfn() * ang(0, 0, mr(-90)), 0.2)
  Tween(lw, cfn() * ang(0, mr(5), mr(20)), 0.2)
  tor.CFrame = CFrame.new(tor.Position, Vector3.new(mouse.Hit.p.X, tor.Position.Y, mouse.Hit.p.Z))
  wait(0.15)
  curse:Play()
  addCoolDown("Curse")
  local bullet = cp(tube, "Really black", Vector3.new(1, 1, 1))
  bullet.CFrame = CFrame.new(righthandle.CFrame.p, Vector3.new(m.Hit.p.X, m.Hit.p.Y, m.Hit.p.Z))
  bullet.Transparency = 1
  local bulletfx = bullet:clone()
  bulletfx.Transparency = 1
  bulletfx.Parent = bullet
  bulletfx.Anchored = true
  sphere(bulletfx)
  local angle = 0
  local lastpoint = bullet.CFrame
  spawn(function()
    while true do
      wait(0.06)
      do
        local cfx = cp(tube, "Really black", Vector3.new(0.4, 0.4, 0.4), true)
        cfx.Transparency = 1
        local rfx = cp(tube, "Really black", Vector3.new(0.4, 0.4, 0.4), true)
        rfx.Material = "Neon"
        local ran = math.random(2)
        if ran == 1 then
          rfx.BrickColor = BrickColor.new("Bright red")
        end
        local bm = int("SpecialMesh", rfx)
        bm.MeshType = "FileMesh"
        bm.MeshId = rbx .. "9756362"
        bm.Scale = Vector3.new(0.3, 0.7, 0.3)
        local angls = ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
        addFx(cfx, 0.02, "destroy", function()
          rfx.Transparency = rfx.Transparency + 0.02
          rfx.CFrame = cfx.CFrame * angls
          cfx.CFrame = cfx.CFrame * CFrame.new(0, 0, 0)
        end)
        cfx.CFrame = bullet.CFrame * CFrame.new(math.random(-math.random(2.5), math.random(25) / 10), 0, math.random(-math.random(25) / 10, math.random(25) / 10))
        rfx.CFrame = cfx.CFrame * angls * CFrame.Angles(math.rad(-90), 0, 0)
        game.Debris:AddItem(cfx, 1.1)
        game.Debris:AddItem(rfx, 1.1)
        if bullet.Parent == nil then
          break
        end
      end
    end
  end)
  addMover(bullet, 0.8, function()
    angle = angle + 1
    local angles = CFrame.Angles(0, 0, mr(angle))
    bulletfx.CFrame = bullet.CFrame
    local fxp = cp(tube, "Really black", Vector3.new(1, 1, 1), true)
    fxp.CFrame = bulletfx.CFrame
    local bmesh = int("SpecialMesh", fxp)
    bmesh.MeshType = "FileMesh"
    bmesh.MeshId = rbx .. lib.ring
    bmesh.Scale = Vector3.new(2, 2, 2)
    addFx(fxp, 0.07, "destroy", function()
      bulletfx.CFrame = bullet.CFrame
      bmesh.Scale = bmesh.Scale - Vector3.new(0.1, 0.1, 0)
      fxp.Transparency = fxp.Transparency + 0.07
    end)
  end)
  bullet.Touched:connect(function(p)
    if not p:isDescendantOf(ch) then
      do
        local thing
        local region = CreateRegion3FromLocAndSize(bullet.Position, bullet.Size * 2)
        for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 50)) do
          if v.Parent and v.Parent:findFirstChild("Humanoid") then
            thing = v
            break
          end
        end
        if thing and thing.Parent then
          if thing.Parent:findFirstChild("Head") then
            displayText(thing.Parent.Head, "Cursed", "Really black")
          else
            displayText(thing, "Cursed", "Really black")
          end
        end
        local mgp = cp(tube, "White", Vector3.new(1, 1, 1), true)
        mgp.Transparency = 1
        mgp.CFrame = bullet.CFrame
        game.Debris:AddItem(mgp, 3)
        local tsound = glass:clone()
        tsound.Volume = 2
        tsound.Parent = mgp
        tsound:Play()
        local position = bullet.CFrame
        if thing and thing.Parent then
          dealDamage(thing.Parent, 5, 5)
          do
            local humin = thing.Parent.Humanoid
            spawn(function()
              for i = 1, 10 do
                wait(1)
                if thing.Parent then
                  dealDamage(thing.Parent, 0.05 * humin.MaxHealth, 10, 1.5, 0.5)
                end
              end
            end)
          end
        end
        local blast = cp(tube, "Really black", Vector3.new(2, 2, 2), true, false)
        blast.Material = "Neon"
        local spm2 = blo(blast)
        spm2.Name = "mesh"
        blast.CFrame = CFrame.new(position.X, position.Y, position.Z) * ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
        if p.Name == "Torso" or p.Parent and p.Parent:findFirstChild("Torso") then
          blast.CFrame = p.Parent.Torso.CFrame * ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
        end
        for i = 1, 5 do
          do
            local fx = blast:clone()
            fx.Parent = tube
            fx.CFrame = blast.CFrame * ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
            addFx(fx, 0.05, "destroy", function()
              fx.mesh.Scale = fx.mesh.Scale + Vector3.new(0.1, 0.1, 0.1)
              fx.Transparency = fx.Transparency + 0.05
            end)
          end
        end
        addFx(blast, 0.05, "destroy", function()
          spm2.Scale = spm2.Scale + Vector3.new(0.1, 0.1, 0.1)
          blast.Transparency = blast.Transparency + 0.05
        end)
        bullet:Destroy()
        bulletfx:Destroy()
      end
    end
  end)
  game.Debris:AddItem(bullet, 3)
  local bv = int("BodyVelocity", bullet)
  bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  bv.Velocity = bullet.CFrame.lookVector * 150
  wait(0.5)
  reset()
  deb = false
  canRunLeg = false
  animPlaying = false
end, 100)
addMove("Rive Beam", "e", 5, function()
  tweenTable = {}
  altTweenTable = {}
  animPlaying = true
  idle = false
  deb = true
  local pcf = tor.CFrame
  canRunLeg = true
  startsound:Play()
  chargesound.Looped = true
  chargesound:Play()
  Tween(rj, cfn() * ang(0, mr(-90), 0), 0.2)
  Tween(rw, cfn() * ang(0, 0, mr(-90)), 0.2)
  Tween(lw, cfn() * ang(0, mr(5), mr(20)), 0.2)
  bg = true
  local a = addToCList("beam_connect", "e")
  local charge = cp(tube, "Really black", Vector3.new(1, 1, 1))
  charge.Material = "Neon"
  local spm = int("SpecialMesh", charge)
  spm.MeshType = "Sphere"
  spm.Name = "sphere"
  weld(ch["Right Arm"], charge, cfn(0, -2, 0))
  local up = false
  local multiplier = 1
  local cn = chargesound.DidLoop:connect(function()
    local fx = charge:clone()
    fx.Parent = tube
    fx.CFrame = charge.CFrame
    fx.BrickColor = BrickColor.new("Bright red")
    weld(charge, fx, cfn())
    addFx(fx, 0.07, "destroy", function()
      if fx and fx:findFirstChild("sphere") then
        fx.sphere.Scale = fx.sphere.Scale + Vector3.new(0.1, 0.1, 0.1)
        fx.Transparency = fx.Transparency + 0.07
      end
    end)
  end)
  spawn(function()
    repeat
      wait()
      if spm.Scale.X < 2 then
        spm.Scale = spm.Scale + Vector3.new(0.05, 0.05, 0.05)
        multiplier = multiplier + 0.1
      end
    until up == true
  end)
  waitForUp(a)
  cn:Disconnect()
  up = true
  addCoolDown("Rive Beam")
  chargesound:Stop()
  if multiplier < 3.1 then
    endsound:Play()
  else
    chargedupbeam:Play()
  end
  local ringFx = cp(tube, "Really black", Vector3.new(2, 2, 2), true, false)
  ringFx.CFrame = charge.CFrame * ang(mr(-90), 0, 0)
  ringFx.Material = "Neon"
  local spm = int("SpecialMesh", ringFx)
  spm.MeshId = rbx .. lib.ring
  spm.Scale = Vector3.new(2, 2, 2)
  addFx(ringFx, 0.08, "destroy", function()
    spm.Scale = spm.Scale + Vector3.new(0.2, 0.2, 0)
    ringFx.Transparency = ringFx.Transparency + 0.08
  end)
  print(multiplier)
  local beam = cp(tube, "Really black", Vector3.new(1, 1, 1), true, false)
  if multiplier >= 3.1 then
    beam.BrickColor = BrickColor.new("Bright red")
  end
  local ray = Ray.new(charge.CFrame.p, mouse.Hit.p - charge.CFrame.p.unit * 300)
  local part, position = workspace:FindPartOnRay(ray, ch, false, true)
  local distance = charge.CFrame.p - position.magnitude
  beam.Size = Vector3.new(1, 1, distance)
  beam.Material = "Neon"
  beam.CFrame = CFrame.new(charge.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
  local blast = cp(tube, "Really black", Vector3.new(2.6 * multiplier, 2.6 * multiplier, 2.6 * multiplier), true, false)
  blast.Material = "Neon"
  blast.CFrame = CFrame.new(position.X, position.Y, position.Z)
  if multiplier >= 3.1 then
    do
      local blast2 = blast:clone()
      blast2.CFrame = blast.CFrame
      blast2.Parent = blast
      blast2.BrickColor = BrickColor.new("Bright red")
      local spml = sphere(blast2)
      spml.Scale = Vector3.new(0.8, 0.8, 0.8)
      addFx(blast2, 0.008, "destroy", function()
        spml.Scale = spml.Scale + Vector3.new(0.05, 0.05, 0.05)
        blast2.Transparency = blast2.Transparency + 0.008
      end)
    end
  end
  local region = CreateRegion3FromLocAndSize(blast.Position, blast.Size * 2)
  local people = {}
  for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 100)) do
    if v and v.Parent and v.className == "Part" and v.Parent:findFirstChild("Humanoid") then
      local can = false
      if not v.Parent:findFirstChild("HitDeb") then
        can = true
      end
      if can == true then
        local db = Instance.new("StringValue", v.Parent)
        db.Name = "HitDeb"
        game.Debris:AddItem(db, 0.5)
        local humin = v.Parent.Humanoid
        if humin then
          local php = humin.Health
          dealDamage(humin.Parent, 10 * multiplier, 10, 1, 0.05)
          if php <= humin.Health and humin.MaxHealth ~= math.huge then
            print("equal")
            humin:TakeDamage(10 * multiplier)
          end
        end
      end
    end
  end
  local blastsound = getSound(262562443)
  blastsound.Parent = blast
  blastsound.Volume = 5
  blastsound:Play()
  blastsound:Stop()
  blastsound:Play()
  canRunLeg = false
  runLeg = false
  animPlaying = false
  tweenTable = {}
  local spm2 = int("SpecialMesh", blast)
  spm2.MeshType = "Sphere"
  addFx(blast, 0.008, "destroy", function()
    spm2.Scale = spm2.Scale + Vector3.new(0.05, 0.05, 0.05)
    blast.Transparency = blast.Transparency + 0.008
  end)
  addFx(beam, 0.1, "destroy", function()
    beam.Transparency = beam.Transparency + 0.1
  end)
  addFx(charge, 0.1, "destroy", function()
    charge.Transparency = charge.Transparency + 0.1
  end)
  bg = false
  run = false
  idle = true
  reset()
  deb = false
end, 60)
addMove("Down Slam", "q", 4, function()
  currentkey = key
  deb = true
  animPlaying = true
  altTweenTable = {}
  tweenTable = {}
  local rv = tor.CFrame.upVector
  local bv = int("BodyVelocity", tor)
  bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  bv.Velocity = rv * -150
  rushsound:Play()
  Tween(rj, cfn() * ang(mr(180), 0, 0))
  Tween(rw, cfn() * ang(mr(-180), 0, 0))
  Tween(lw, cfn() * ang(mr(-180), 0, 0))
  addCoolDown("Down Slam", 4)
  spawn(function()
    while true do
      wait()
      do
        local cfx = cp(tube, "Really black", Vector3.new(6, 6, 6), true, false)
        local ran = math.random(2)
        if ran == 1 then
          cfx.BrickColor = BrickColor.new("Bright red")
          cfx.Material = "Neon"
        end
        cfx.CFrame = tor.CFrame * CFrame.Angles(math.rad(math.random(90)), math.rad(math.random(90)), 0)
        local b = blo(cfx)
        addFx(cfx, 0.05, "destroy", function()
          cfx.Transparency = cfx.Transparency + 0.05
          b.Scale = b.Scale + Vector3.new(0.1, 0.1, 0.1)
        end)
        if 2 > Vector3.new(0, tor.Velocity.Y, 0).magnitude then
          break
        end
      end
    end
  end)
  wait()
  bv:Destroy()
  multiplier = 1
  repeat
    wait()
  until Vector3.new(0, tor.Velocity.Y, 0).magnitude < 2
  local bhit, pos = FindGround(cn(tor.CFrame.p), ch)
  local blast = cp(tube, "Really black", Vector3.new(10, 10, 10), true, false)
  blast.CFrame = pos
  local region = CreateRegion3FromLocAndSize(blast.Position, blast.Size * 3)
  local people = {}
  for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 100)) do
    if v and v.Parent and v.className == "Part" and v.Parent:findFirstChild("Humanoid") then
      local can = false
      if not v.Parent:findFirstChild("HitDeb") then
        can = true
      end
      if can == true then
        local db = Instance.new("StringValue", v.Parent)
        db.Name = "HitDeb"
        game.Debris:AddItem(db, 0.5)
        local humin = v.Parent.Humanoid
        if humin then
          local php = humin.Health
          dealDamage(humin.Parent, 20 * multiplier, 10)
          if php <= humin.Health and humin.MaxHealth ~= math.huge then
            print("equal")
            humin:TakeDamage(20 * multiplier)
          end
        end
      end
    end
  end
  local sp = sphere(blast)
  blast.Material = "Neon"
  landsound:Play()
  addFx(blast, 0.02, "destroy", function()
    sp.Scale = sp.Scale + Vector3.new(0.1, 0.1, 0.1)
    blast.Transparency = blast.Transparency + 0.02
  end)
  animPlaying = false
  deb = false
end, 40)
addMove("Aerial Sword", "r", 2, function()
  deb = true
  animPlaying = true
  tweenTable = {}
  altTweenTable = {}
  canExecuteMoves = false
  idle = false
  run = false
  aerialcharge:Play()
  Tween(rw, cfn() * ang(mr(-90), 0, 0))
  local bp, bgg
  local a = addToCList("Aerial Sword", "r")
  local still = true
  bp = int("BodyPosition", tor)
  bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  bp.Position = tor.Position
  local sphr = cp(tube, "Really black", Vector3.new(8, 8, 8), true)
  sphr.Transparency = 1
  sphr.Material = "Neon"
  local spho = sphere(sphr)
  spho.Name = "spho"
  spho.Scale = Vector3.new(0, 0, 0)
  sphr.CFrame = tor.CFrame
  addFx(sphr, 0.07, nil, function()
    spho.Scale = spho.Scale + Vector3.new(0.1, 0.1, 0.1)
    sphr.Transparency = sphr.Transparency - 0.07
  end)
  Delay(6, function()
    if not a.up then
      a.up = true
    end
  end)
  repeat
    wait(0.3)
    local b = depleteMana(35)
    if b then
      swsound:Play()
      do
        local fx = sphr:clone()
        fx.Parent = tube
        fx.CFrame = sphr.CFrame
        fx.BrickColor = BrickColor.new("Bright red")
        addFx(fx, 0.07, "destroy", function()
          fx.spho.Scale = fx.spho.Scale + Vector3.new(0.1, 0.1, 0.1)
          fx.Transparency = fx.Transparency + 0.07
        end)
        local sw = int("Part")
        game.Debris:AddItem(sw, 6)
        sw.CanCollide = false
        sw.Anchored = false
        sw.BrickColor = BrickColor.new("Really black")
        sw.Material = "Neon"
        sw.Size = Vector3.new(1, 1, 2)
        sw.CFrame = CFrame.new(righthandle.CFrame.p, Vector3.new(m.Hit.p.X, m.Hit.p.Y, m.Hit.p.Z))
        sw.Parent = tube
        sw.Transparency = 1
        addFx(sw, 0.1, nil, function()
          sw.Transparency = sw.Transparency - 0.1
        end)
        local spm = int("SpecialMesh", sw)
        spm.MeshType = "FileMesh"
        spm.MeshId = rbx .. lib.yato
        spm.Scale = Vector3.new(0.05, 0.05, 0.05)
        local vel = int("BodyVelocity", sw)
        vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        vel.Velocity = sw.CFrame.lookVector * 152
        sw.CFrame = sw.CFrame * ang(0, mr(180), 0)
        sw.Touched:connect(function(p)
          if p:IsDescendantOf(ch) == false then
            sw.Anchored = true
            do
              local mgp = cp(tube, "White", Vector3.new(1, 1, 1), true, false)
              mgp.CFrame = sw.CFrame
              mgp.Transparency = 1
              game.Debris:AddItem(mgp, 2)
              ssp = swexp:clone()
              ssp.Parent = mgp
              ssp.Volume = 2
              ssp:Play()
              local blast = cp(tube, "Bright red", Vector3.new(8, 8, 8), true)
              blast.Material = "Neon"
              blast.CFrame = sw.CFrame
              local sp = sphere(blast)
              addFx(sw, 0.05, "destroy", function()
                sw.Transparency = sw.Transparency + 0.05
                spm.Scale = spm.Scale + Vector3.new(0.01, 0.01, 0.01)
              end)
              addFx(blast, 0.07, "destroy", function()
                blast.Transparency = blast.Transparency + 0.07
                sp.Scale = sp.Scale + Vector3.new(0.1, 0.1, 0.1)
              end)
              local region = CreateRegion3FromLocAndSize(blast.Position, blast.Size * 2)
              local people = {}
              for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 100)) do
                if v and v.Parent and v.className == "Part" and v.Parent:findFirstChild("Humanoid") then
                  local can = false
                  if not v.Parent:findFirstChild("HitDeb") then
                    can = true
                  end
                  if can == true then
                    local db = Instance.new("StringValue", v.Parent)
                    db.Name = "HitDeb"
                    game.Debris:AddItem(db, 0.2)
                    local humin = v.Parent.Humanoid
                    if humin then
                      local php = humin.Health
                      dealDamage(humin.Parent, 10 + math.random(5), 5)
                      if php <= humin.Health and humin.MaxHealth ~= math.huge then
                        print("equal")
                        humin:TakeDamage(15)
                      end
                    end
                  end
                end
              end
            end
          end
        end)
      end
    else
      a.up = true
    end
  until a.up == true
  addCoolDown("Aerial Sword")
  addFx(sphr, 0.07, "destroy", function()
    sphr.Transparency = sphr.Transparency + 0.07
    spho.Scale = spho.Scale + Vector3.new(0.1, 0.1, 0.1)
  end)
  still = false
  spawn(function()
    wait(0.3)
    canExecuteMoves = true
  end)
  bp:Destroy()
  tor.Anchored = false
  deb = false
  animPlaying = false
  reset()
end, 200)
addMove("Dark Missile", "mb1", 0.2, function()
  tweenTable = {}
  animPlaying = true
  deb = true
  canRunLeg = true
  tor.CFrame = CFrame.new(tor.Position, Vector3.new(mouse.Hit.p.X, tor.Position.Y, mouse.Hit.p.Z))
  bg = true
  idle = false
  basicsound:Play()
  if basicswitch == false then
    Tween(rw, cfn() * ang(mr(-100), mr(45), 0), 0.2)
    Tween(rj, cfn() * ang(0, mr(-45), 0), 0.2)
  else
    Tween(lw, cfn() * ang(mr(-100), mr(-45), 0), 0.2)
    Tween(rj, cfn() * ang(0, mr(45), 0), 0.2)
  end
  wait(0.06)
  local bullet = cp(tube, "Really black", Vector3.new(1, 1, 1), false, false)
  bullet.Transparency = 1
  if basicswitch == false then
    bullet.CFrame = righthandle.CFrame
    bullet.CFrame = CFrame.new(righthandle.CFrame.p, Vector3.new(m.Hit.p.X, m.Hit.p.Y, m.Hit.p.Z))
    basicswitch = true
  else
    bullet.CFrame = lefthandle.CFrame
    bullet.CFrame = CFrame.new(lefthandle.CFrame.p, Vector3.new(m.Hit.p.X, m.Hit.p.Y, m.Hit.p.Z))
    basicswitch = false
  end
  local bv = int("BodyVelocity", bullet)
  bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  bv.Velocity = bullet.CFrame.lookVector * 150
  local bulletfx = cp(tube, "Bright red", Vector3.new(1, 1, 1), true, false)
  if basicswitch == false then
    bulletfx.BrickColor = BrickColor.new("Really black")
  end
  bulletfx.CFrame = bullet.CFrame
  bulletfx.Material = "Neon"
  sphere(bulletfx)
  local angle = 0
  local bfsd = basicswitch
  local lastpoint = bulletfx.CFrame
  addCoolDown("Dark Missile")
  addMover(bullet, 0.8, function()
    angle = angle + 1
    local angles = CFrame.Angles(math.rad(angle), mr(angle), 0)
    bulletfx.CFrame = bullet.CFrame
    bulletfx.CFrame = bulletfx.CFrame * angles
    if 1 < lastpoint.p - bulletfx.CFrame.p.magnitude then
      do
        local line = drawLine(lastpoint.p, bulletfx.CFrame.p, "Really black", angles)
        if bfsd == true then
          line.BrickColor = BrickColor.new("Bright red")
        end
        addFx(line, 0.05, "destroy", function()
          line.blok.Scale = line.blok.Scale + Vector3.new(0.05, 0, 0.05)
          line.Transparency = line.Transparency + 0.05
        end)
        lastpoint = bulletfx.CFrame
      end
    end
  end)
  bullet.Touched:connect(function(p)
    if not p:isDescendantOf(ch) then
      do
        local thing
        local region = CreateRegion3FromLocAndSize(bullet.Position, bullet.Size * 2)
        for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 50)) do
          if v.Parent and v.Parent:findFirstChild("Humanoid") then
            thing = v
            break
          end
        end
        local explosound = getSound(142070128)
        explosound.Volume = 0.8
        explosound.Pitch = 1.2
        explosound.Parent = p
        explosound:Play()
        local position = bullet.CFrame
        if thing and thing.Parent then
          dealDamage(thing.Parent, 10, 5)
        end
        local blast = cp(tube, "Really black", Vector3.new(2, 2, 2), true, false)
        if bfsd == false then
          blast.BrickColor = BrickColor.new("Bright red")
        end
        blast.Material = "Neon"
        local spm2 = sphere(blast)
        blast.CFrame = CFrame.new(position.X, position.Y, position.Z)
        addFx(blast, 0.05, "destroy", function()
          spm2.Scale = spm2.Scale + Vector3.new(0.1, 0.1, 0.1)
          blast.Transparency = blast.Transparency + 0.05
        end)
        bullet:Destroy()
        bulletfx:Destroy()
      end
    end
  end)
  game.Debris:AddItem(bullet, 2.5)
  game.Debris:AddItem(bulletfx, 2.5)
  wait(0.1)
  idle = true
  reset()
  deb = false
  animPlaying = false
  bg = false
end, 20)
local dumbbox, dhand
local darknum = 1
addMove("Dark Slash", "r", 2, function()
  local oldspeed = hum.WalkSpeed
  hum.WalkSpeed = 0
  local meshd = "http://www.roblox.com/asset/?id=12171188"
  tweenTable = {}
  altTweenTable = {}
  deb = true
  animPlaying = true
  canRunLeg = true
  startsound2:Play()
  local sp = cp(tube, "Really black", Vector3.new(10, 10, 10), false, false)
  sp.CFrame = tor.CFrame
  sp.Transparency = 0.5
  local sph = sphere(sp)
  addFx(sp, 0.07, "destroy", function()
    sph.Scale = sph.Scale - Vector3.new(0.05, 0.05, 0.05)
    sp.Transparency = sp.Transparency + 0.035
  end)
  spawn(function()
    for i = 1, 10 do
      wait()
      do
        local cool1 = cp(tube, "Really black", Vector3.new(1.5, 1.5, 1.5), true)
        local rnd = math.random(2)
        if rnd == 1 then
          cool1.BrickColor = BrickColor.new("Bright red")
          cool1.Material = "Neon"
        end
        local ms1 = blo(cool1)
        cool1.CFrame = righthandle.CFrame * ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
        addFx(cool1, 0.07, "destroy", function()
          ms1.Scale = ms1.Scale + Vector3.new(0.08, 0.08, 0.08)
          cool1.Transparency = cool1.Transparency + 0.07
        end)
      end
    end
  end)
  addCoolDown("Dark Slash")
  local allahsword = cp(tube, "White", Vector3.new(1, 1, 1))
  local critmultiplier = 2.4
  local spm = int("SpecialMesh", allahsword)
  spm.MeshType = "FileMesh"
  spm.MeshId = meshd
  allahsword.Transparency = 1
  tor.CFrame = CFrame.new(tor.Position, Vector3.new(mouse.Hit.p.X, tor.Position.Y, mouse.Hit.p.Z))
  local tv = Vector3.new(tor.CFrame.lookVector.X, 0, tor.CFrame.lookVector.Z)
  local col = BrickColor.new("Really black").Color
  spm.TextureId = rbx .. "132155326"
  spm.Name = "mesh"
  spm.VertexColor = Vector3.new(0, 0, 0)
  spm.Scale = Vector3.new(1, 1, 1)
  addFx(allahsword, 0.05, nil, function()
    allahsword.Transparency = allahsword.Transparency - 0.05
  end)
  weld(ch["Right Arm"], allahsword, cfn(0, -4, -0.5) * ang(mr(110), 0, mr(180)))
  Tween(rj, cfn() * ang(0, mr(-90), 0))
  Tween(rw, cfn(0.5, 0.5, 0.5) * ang(mr(-55), mr(-35), 0))
  Tween(lw, cfn(-0.5, 0.5, 0.5) * ang(mr(-55), mr(35), 0))
  Delay(0.08, function()
    local tstvel = int("BodyVelocity", tor)
    tstvel.MaxForce = Vector3.new(math.huge, 0, math.huge)
    tstvel.Velocity = tv * 35
    game.Debris:AddItem(tstvel, 0.24)
  end)
  wait(0.22)
  local hitbox = cp(tube, "White", Vector3.new(2, 12, 2))
  hitbox.Transparency = 1
  hitbox.CFrame = allahsword.CFrame
  dumbbox = hitbox
  dumbhand = allahsword
  swoosh:Play()
  spawn(function()
    for i = 1, 10 do
      wait()
      do
        local trl = allahsword:clone()
        trl.Parent = tube
        trl.CFrame = allahsword.CFrame
        if trl:findFirstChild("mesh") then
        end
        addFx(trl, 0.07, "destroy", function()
          trl.Transparency = trl.Transparency + 0.07
        end)
      end
    end
  end)
  addFx(allahsword, 0.05, "destroy", function()
    allahsword.Transparency = allahsword.Transparency + 0.05
    spm.Scale = spm.Scale + Vector3.new(0.1, 0.1, 0.1)
  end)
  hitbox.Touched:connect(function(v)
    if v and v.Parent and v.Parent:findFirstChild("Humanoid") and not v:IsDescendantOf(ch) then
      local can = false
      if not v.Parent:findFirstChild("HitDeb") then
        can = true
      end
      if can == true then
        local sls = getSound(220834020)
        sls.Pitch = 1 + math.random(3) / 10
        sls.Parent = v
        sls:Play()
        local db = Instance.new("StringValue", v.Parent)
        db.Name = "HitDeb"
        game.Debris:AddItem(db, 0.5)
        dealDamage(v.Parent, 15, 2, critmultiplier)
      end
    end
  end)
  Tween(rj, cfn(0, 0, 0) * ang(mr(0), mr(90), 0))
  Tween(rw, cfn(0.5, 0.8, 0) * ang(mr(-80), mr(-35), 0))
  Tween(lw, cfn(-0.5, 0.8, 0) * ang(mr(-90), mr(35), 0))
  wait(0.2)
  hitbox:Destroy()
  hum.WalkSpeed = oldspeed
  reset()
  animPlaying = false
  canRunLeg = false
  deb = false
end, 80)
addMove("Origin Beam", "mb1,mb1,e", 12, function()
  tweenTable = {}
  altTweenTable = {}
  animPlaying = true
  deb = true
  apoc:Play()
  spawn(function()
    for i = 1, 15 do
      wait()
      do
        local fx = cp(tube, "Really black", Vector3.new(1, 1, 1), true)
        fx.CFrame = righthandle.CFrame * ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
        local bl = blo(fx)
        local ran = math.random(2)
        if ran == 1 then
          fx.BrickColor = BrickColor.new("Bright red")
        end
        addFx(fx, 0.07, "destroy", function()
          bl.Scale = bl.Scale + Vector3.new(0.1, 0.1, 0.1)
          fx.Transparency = fx.Transparency + 0.07
        end)
        local fx = cp(tube, "Really black", Vector3.new(1, 1, 1), true)
        local ran = math.random(2)
        if ran == 1 then
          fx.BrickColor = BrickColor.new("Bright red")
        end
        fx.CFrame = lefthandle.CFrame * ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
        local bl = blo(fx)
        addFx(fx, 0.07, "destroy", function()
          bl.Scale = bl.Scale + Vector3.new(0.1, 0.1, 0.1)
          fx.Transparency = fx.Transparency + 0.07
        end)
      end
    end
  end)
  Tween(rw, cfn() * ang(mr(-90), mr(45), 0))
  Tween(lw, cfn() * ang(mr(-90), mr(-45), 0))
  wait(0.2)
  Tween(rw, cfn() * ang(mr(-90), mr(-45), 0))
  Tween(lw, cfn() * ang(mr(-90), mr(45), 0))
  wait(0.5)
  apoc.Volume = 2
  local beam = cp(tube, "Really black", Vector3.new(1, 1, 1), true, false)
  bg = true
  local ray = Ray.new(righthandle.CFrame.p, mouse.Hit.p - righthandle.CFrame.p.unit * 300)
  local part, position = workspace:FindPartOnRay(ray, ch, false, true)
  local distance = righthandle.CFrame.p - position.magnitude
  beam.Size = Vector3.new(2, distance, 2)
  beam.Material = "Neon"
  beam.CFrame = CFrame.new(righthandle.CFrame.p, position) * CFrame.new(0, 0, -distance / 2) * ang(mr(-90), 0, 0)
  if part then
    local region = CreateRegion3FromLocAndSize(m.Hit.p, Vector3.new(6, 6, 6))
    for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 50)) do
      if v.Parent and v.Parent:findFirstChild("Humanoid") then
        thing = v
        break
      end
    end
    if thing then
      dealDamage(thing.Parent, 5, 3, 2)
    end
  end
  local msh = cyl(beam)
  local up = false
  addFx(beam, 0.02, nil, function()
    ray = Ray.new(righthandle.CFrame.p, mouse.Hit.p - righthandle.CFrame.p.unit * 300)
    local part, position = workspace:FindPartOnRay(ray, ch, false, true)
    if part and part.Parent and part.Parent:findFirstChild("Humanoid") then
      dealDamage(part.Parent, 2, 3, 2)
    end
    local distance = righthandle.CFrame.p - position.magnitude
    beam.Size = Vector3.new(2, distance, 2)
    beam.CFrame = CFrame.new(righthandle.CFrame.p, position) * CFrame.new(0, 0, -distance / 2) * ang(mr(-90), 0, 0)
    local brck = cp(tube, "Really black", Vector3.new(3.5, 3.5, 3.5), true)
    brck.CFrame = m.Hit * ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
    brck.Material = "Neon"
    local ran = math.random(2)
    if ran == 1 then
      brck.BrickColor = BrickColor.new("Bright red")
    end
    local bm = blo(brck)
    addFx(brck, 0.07, "destroy", function()
      bm.Scale = bm.Scale + Vector3.new(0.1, 0.1, 0.1)
      brck.Transparency = brck.Transparency + 0.07
    end)
  end)
  wait(1)
  addCoolDown("Origin Beam")
  addFx(beam, 0.07, "destroy", function()
    beam.Transparency = beam.Transparency + 0.07
    msh.Scale = msh.Scale - Vector3.new(0.07, 0, 0.07)
  end)
  animPlaying = false
  deb = false
  bg = false
  apoc.Volume = 1
end, 180)
addMove("Nightmare Overture", "z", 140, function()
  if Vector3.new(0, tor.Velocity.Y, 0).magnitude < 2 and 2 > Vector3.new(tor.Velocity.X, 0, tor.Velocity.Z).magnitude then
    hum.WalkSpeed = 0
    animPlaying = true
    do
      local ev
      local tfn = tor.CFrame
      deb = true
      local done = false
      local done2 = false
      local stakes = {}
      local dmds = {}
      tweenTable = {}
      altTweenTable = {}
      Tween(rw, cfn() * ang(mr(-110), mr(25), 0), 0.05)
      Tween(lw, cfn() * ang(mr(-110), mr(-25), 0), 0.05)
      resetLegs()
      wait(0.5)
      local circ = cp(tube, "Really black", Vector3.new(34, 1, 34), true)
      circ.Transparency = 1
      circ.CFrame = tor.CFrame * CFrame.new(0, -3.3, 0)
      local d = int("Decal", circ)
      d.Face = "Top"
      d.Texture = magcd
      local stake1 = cp(tube, "Really black", Vector3.new(4, 14, 4), true)
      local cm = cyl(stake1)
      cm.Scale = Vector3.new(0, 0, 0)
      stake1.CFrame = tfn * cfn(9, 3, 0)
      stake1.Transparency = 1
      stake1.Material = "Neon"
      local snd = getSound(231917773)
      snd.Parent = stake1
      snd.Volume = 2
      snd:Play()
      addFx(stake1, 0.1, nil, function()
        stake1.Transparency = stake1.Transparency - 0.1
        cm.Scale = cm.Scale + Vector3.new(0.1, 0.1, 0.1)
      end)
      table.insert(stakes, stake1)
      local sdm1 = cp(tube, "Really black", Vector3.new(4, 6, 4), true)
      sdm1.CFrame = stake1.CFrame
      sdm1.Transparency = 1
      local sdm1m = newSpm(sdm1)
      sdm1m.MeshId = rbx .. lib.diamond
      sdm1m.Scale = Vector3.new(2, 3, 2)
      sdm1m.Scale = Vector3.new(0, 0, 0)
      addFx(sdm1, 0.05, nil, function()
        sdm1.CFrame = sdm1.CFrame * CFrame.new(0, 0.6, 0)
        sdm1m.Scale = sdm1m.Scale + Vector3.new(0.1, 0.15, 0.1)
        sdm1.Transparency = sdm1.Transparency - 0.05
      end)
      table.insert(dmds, sdm1)
      local angle = 0
      spawn(function()
        repeat
          wait()
          angle = angle + 1
          circ.CFrame = circ.CFrame * ang(0, mr(1), 0)
        until done == true
      end)
      spawn(function()
        while true do
          wait(0.1)
          do
            local crn = cp(tube, "Really black", Vector3.new(1, 1, 1), true)
            crn.CFrame = tor.CFrame * cfn(0, -5.5, 0)
            local ms = newSpm(crn)
            ms.TextureId = rbx .. "132155326"
            ms.MeshId = rbx .. lib.crown
            ms.VertexColor = Vector3.new(0, 0, 0)
            ms.Scale = Vector3.new(1.5, 1, 1.5)
            addFx(crn, 0.07, "destroy", function()
              crn.Transparency = crn.Transparency + 0.07
              ms.Scale = ms.Scale + Vector3.new(0.8, 0.05, 0.8)
            end)
            local bgmc = bigmagic:clone()
            bgmc.Parent = ch.Head
            bgmc.Volume = 0.3
            bgmc.Pitch = 0.8
            bgmc:Play()
            if done2 == true then
              break
            end
          end
        end
      end)
      spawn(function()
        wait(0.4)
        repeat
          wait()
          sdm1.CFrame = CFrame.new(sdm1.CFrame.p, tor.CFrame.p) * ang(mr(90), 0, 0)
        until done == true
      end)
      wait(0.1)
      local stake2 = cp(tube, "Really black", Vector3.new(4, 14, 4), true)
      local cm2 = cyl(stake2)
      cm2.Scale = Vector3.new(0, 0, 0)
      stake2.CFrame = tfn * cfn(-9, 3, 0)
      stake2.Transparency = 1
      stake2.Material = "Neon"
      local snd = getSound(231917773)
      snd.Parent = stake2
      snd.Volume = 2
      snd:Play()
      addFx(stake2, 0.1, nil, function()
        stake2.Transparency = stake2.Transparency - 0.1
        cm2.Scale = cm2.Scale + Vector3.new(0.1, 0.1, 0.1)
      end)
      table.insert(stakes, stake2)
      local sdm2 = cp(tube, "Really black", Vector3.new(4, 6, 4), true)
      sdm2.CFrame = stake2.CFrame
      sdm2.Transparency = 1
      local sdm2m = newSpm(sdm2)
      sdm2m.MeshId = rbx .. lib.diamond
      sdm2m.Scale = Vector3.new(2, 3, 2)
      sdm2m.Scale = Vector3.new(0, 0, 0)
      addFx(sdm2, 0.05, nil, function()
        sdm2.CFrame = sdm2.CFrame * CFrame.new(0, 0.6, 0)
        sdm2m.Scale = sdm2m.Scale + Vector3.new(0.1, 0.15, 0.1)
        sdm2.Transparency = sdm2.Transparency - 0.05
      end)
      spawn(function()
        wait(0.4)
        repeat
          wait()
          sdm2.CFrame = CFrame.new(sdm2.CFrame.p, tor.CFrame.p) * ang(mr(90), 0, 0)
        until done == true
      end)
      table.insert(dmds, sdm2)
      wait(0.1)
      local stake3 = cp(tube, "Really black", Vector3.new(4, 14, 4), true)
      local cm3 = cyl(stake3)
      cm3.Scale = Vector3.new(0, 0, 0)
      stake3.CFrame = tfn * cfn(0, 3, 9)
      stake3.Transparency = 1
      stake3.Material = "Neon"
      local snd = getSound(231917773)
      snd.Parent = stake3
      snd.Volume = 2
      snd:Play()
      addFx(stake3, 0.1, nil, function()
        stake3.Transparency = stake3.Transparency - 0.1
        cm3.Scale = cm3.Scale + Vector3.new(0.1, 0.1, 0.1)
      end)
      table.insert(stakes, stake3)
      local sdm3 = cp(tube, "Really black", Vector3.new(4, 6, 4), true)
      sdm3.CFrame = stake3.CFrame
      sdm3.Transparency = 1
      local sdm3m = newSpm(sdm3)
      sdm3m.MeshId = rbx .. lib.diamond
      sdm3m.Scale = Vector3.new(2, 3, 2)
      sdm3m.Scale = Vector3.new(0, 0, 0)
      addFx(sdm3, 0.05, nil, function()
        sdm3.CFrame = sdm3.CFrame * CFrame.new(0, 0.6, 0)
        sdm3m.Scale = sdm3m.Scale + Vector3.new(0.1, 0.15, 0.1)
        sdm3.Transparency = sdm3.Transparency - 0.05
      end)
      spawn(function()
        wait(0.4)
        repeat
          wait()
          sdm3.CFrame = CFrame.new(sdm3.CFrame.p, tor.CFrame.p) * ang(mr(90), 0, 0)
        until done == true
      end)
      table.insert(dmds, sdm3)
      wait(0.1)
      local stake4 = cp(tube, "Really black", Vector3.new(4, 14, 4), true)
      local cm4 = cyl(stake4)
      cm4.Scale = Vector3.new(0, 0, 0)
      stake4.CFrame = tfn * cfn(0, 3, -9)
      stake4.Transparency = 1
      stake4.Material = "Neon"
      local snd = getSound(231917773)
      snd.Parent = stake4
      snd.Volume = 2
      snd:Play()
      addFx(stake4, 0.1, nil, function()
        stake4.Transparency = stake4.Transparency - 0.1
        cm4.Scale = cm4.Scale + Vector3.new(0.1, 0.1, 0.1)
      end)
      table.insert(stakes, stake4)
      local sdm4 = cp(tube, "Really black", Vector3.new(4, 6, 4), true)
      sdm4.CFrame = stake4.CFrame
      sdm4.Transparency = 1
      local sdm4m = newSpm(sdm4)
      sdm4m.MeshId = rbx .. lib.diamond
      sdm4m.Scale = Vector3.new(2, 3, 2)
      sdm4m.Scale = Vector3.new(0, 0, 0)
      addFx(sdm4, 0.05, nil, function()
        sdm4.CFrame = sdm4.CFrame * CFrame.new(0, 0.6, 0)
        sdm4m.Scale = sdm4m.Scale + Vector3.new(0.1, 0.15, 0.1)
        sdm4.Transparency = sdm4.Transparency - 0.05
      end)
      spawn(function()
        wait(0.4)
        repeat
          wait()
          sdm4.CFrame = CFrame.new(sdm4.CFrame.p, tor.CFrame.p) * ang(mr(90), 0, 0)
        until done == true
      end)
      table.insert(dmds, sdm4)
      wait(0.1)
      local bv = int("BodyVelocity", tor)
      bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      bv.Velocity = Vector3.new(0, 7, 0)
      rise:Play()
      local tdia = cp(tube, "Really black", Vector3.new(6, 6, 6))
      tdia.Transparency = 1
      local tdiam = newSpm(tdia)
      tdiam.MeshId = rbx .. lib.diamond
      tdiam.Name = "mesh"
      tdiam.Scale = Vector3.new(6, 8, 6)
      tdiam.Scale = Vector3.new(0, 0, 0)
      addFx(tdiam, 0.05, nil, function()
        tdiam.Scale = tdiam.Scale + Vector3.new(0.36, 0.48, 0.38)
        tdia.Transparency = tdia.Transparency - 0.05
      end)
      weld(tor, tdia, cfn())
      wait(3)
      bv.Velocity = Vector3.new(0, 0, 0)
      done2 = true
      for _, v in pairs(stakes) do
        wait(0.1)
        do
          local nsnd = getSound(231917773)
          snd.Parent = v
          snd.Volume = 2
          snd.Pitch = 1.3
          snd:Play()
          addFx(v, 0.05, "destroy", function()
            v.mesh.Scale = v.mesh.Scale - Vector3.new(0.05, 0.05, 0.05)
            v.Transparency = v.Transparency + 0.05
          end)
        end
      end
      local dm = 1
      local lastd = false
      ev = m.Button1Down:connect(function()
        if dm ~= 5 then
          ultdi.Volume = 2.4
          ultdi:Play()
          do
            local pulse = tdia:clone()
            pulse.Anchored = true
            pulse.CFrame = tdia.CFrame
            pulse.Parent = tube
            pulse.BrickColor = BrickColor.new("Bright red")
            addFx(pulse, 0.1, "destroy", function()
              pulse.mesh.Scale = pulse.mesh.Scale + Vector3.new(0.4, 0.4, 0.4)
              pulse.Transparency = pulse.Transparency + 0.1
            end)
            local di = dmds[dm]:clone()
            debris:AddItem(di, 6)
            di.CFrame = dmds[dm].CFrame
            di.Parent = tube
            dmds[dm]:Destroy()
            di.Anchored = false
            di:BreakJoints(0)
            local nbv = int("BodyVelocity", di)
            nbv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            di.CFrame = CFrame.new(di.CFrame.p, Vector3.new(m.Hit.p.X, m.Hit.p.Y, m.Hit.p.Z))
            nbv.Velocity = di.CFrame.lookVector * 150
            di.CFrame = di.CFrame * ang(mr(-90), 0, 0)
            dm = dm + 1
            local bulletfx = di
            addMover(di, 0.8, function()
              local fxp = cp(tube, "Really black", Vector3.new(1, 1, 1), true)
              fxp.CFrame = bulletfx.CFrame * ang(mr(-90), 0, 0)
              local bmesh = int("SpecialMesh", fxp)
              bmesh.MeshType = "FileMesh"
              bmesh.MeshId = rbx .. lib.ring
              bmesh.Scale = Vector3.new(2.5, 2.5, 2.5)
              addFx(fxp, 0.07, "destroy", function()
                bmesh.Scale = bmesh.Scale + Vector3.new(0.2, 0.2, 0)
                fxp.Transparency = fxp.Transparency + 0.07
              end)
            end)
            di.Touched:connect(function(part)
              if part:IsDescendantOf(ch) == false then
                di:Destroy()
                do
                  local blast = cp(tube, "Really black", Vector3.new(20, 20, 20), true)
                  blast.CFrame = di.CFrame
                  local sp = sphere(blast)
                  blast.Material = "Neon"
                  sp.Scale = Vector3.new(0.05, 0.05, 0.05)
                  local bfx = blast:clone()
                  bfx.Parent = tube
                  bfx.CFrame = blast.CFrame
                  local region = CreateRegion3FromLocAndSize(blast.Position, blast.Size * 3)
                  local people = {}
                  for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 100)) do
                    if v and v.Parent and v.className == "Part" and v.Parent:findFirstChild("Humanoid") then
                      local can = false
                      if not v.Parent:findFirstChild("HitDeb") then
                        can = true
                      end
                      if can == true then
                        local db = Instance.new("StringValue", v.Parent)
                        db.Name = "HitDeb"
                        game.Debris:AddItem(db, 0.5)
                        local humin = v.Parent.Humanoid
                        if humin then
                          local php = humin.Health
                          dealDamage(humin.Parent, 25, 3, 2, 0.05)
                          if php <= humin.Health and humin.MaxHealth ~= math.huge then
                            print("equal")
                            humin:TakeDamage(40)
                          end
                        end
                      end
                    end
                  end
                  bfx.BrickColor = BrickColor.new("Bright red")
                  bfx:clearAllChildren()
                  local sp2 = sphere(bfx)
                  sp2.Scale = Vector3.new(0, 0, 0)
                  addFx(bfx, 0.007, "destroy", function()
                    sp2.Scale = sp2.Scale + Vector3.new(0.1, 0.1, 0.1)
                    bfx.Transparency = bfx.Transparency + 0.007
                  end)
                  addFx(blast, 0.007, "destroy", function()
                    sp.Scale = sp.Scale + Vector3.new(0.1, 0.1, 0.1)
                    blast.Transparency = blast.Transparency + 0.007
                  end)
                  local hg = giantexplosion:clone()
                  hg.Volume = 10
                  hg.Parent = blast
                  hg:Play()
                end
              end
            end)
          end
        else
          ev:Disconnect()
          explodcharg:Play()
          while true do
            wait()
            do
              local pulse = tdia:clone()
              pulse.Anchored = true
              pulse.CFrame = tdia.CFrame
              pulse.Parent = tube
              pulse.BrickColor = BrickColor.new("Bright red")
              pulse:clearAllChildren()
              local pm = tdiam:clone()
              pm.Parent = pulse
              addFx(pulse, 0.1, "destroy", function()
                pm.Scale = pm.Scale + Vector3.new(0.4, 0.4, 0.4)
                pulse.Transparency = pulse.Transparency + 0.1
              end)
              if explodcharg.IsPlaying == false then
                break
              end
            end
          end
          circ:Destroy()
          addFx(tdia, 0.07, "destroy", function()
            tdia.Transparency = tdia.Transparency + 0.07
          end)
          hum.WalkSpeed = regws
          deb = false
          animPlaying = false
          bv:Destroy()
          do
            local blast = cp(tube, "Really black", Vector3.new(60, 60, 60), true)
            blast.CFrame = tor.CFrame
            local sp = sphere(blast)
            blast.Material = "Neon"
            blast.Transparency = 0.1
            sp.Scale = Vector3.new(0.05, 0.05, 0.05)
            local bfx = blast:clone()
            bfx.Parent = tube
            bfx.CFrame = blast.CFrame
            bfx.Transparency = 0.1
            local rng = cp(tube, "Bright red", Vector3.new(60, 60, 60), true)
            rng.CFrame = blast.CFrame * ang(mr(-90), 0, 0)
            local rn = newSpm(rng)
            rn.MeshId = rbx .. lib.ring
            rn.Scale = Vector3.new(90, 40, 90)
            addFx(rng, 0.005, "destroy", function()
              rn.Scale = rn.Scale + Vector3.new(5, 5, 0)
              rng.Transparency = rng.Transparency + 0.005
            end)
            local region = CreateRegion3FromLocAndSize(blast.Position, blast.Size * 3)
            local people = {}
            for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 150)) do
              if v and v.Parent and v.className == "Part" and v.Parent:findFirstChild("Humanoid") then
                local can = false
                if not v.Parent:findFirstChild("HitDeb") then
                  can = true
                end
                if can == true then
                  do
                    local thing = v
                    local db = Instance.new("StringValue", v.Parent)
                    db.Name = "HitDeb"
                    game.Debris:AddItem(db, 0.5)
                    local humin = v.Parent.Humanoid
                    if humin then
                      local php = humin.Health
                      dealDamage(humin.Parent, 0.3 * humin.MaxHealth, 3, 2, 0.05)
                      if php <= humin.Health and humin.MaxHealth ~= math.huge then
                        print("equal")
                        humin:TakeDamage(30)
                      end
                    end
                    if thing and thing.Parent then
                      if thing.Parent:findFirstChild("Head") then
                        displayText(thing.Parent.Head, "Cursed", "Really black")
                      else
                        displayText(thing, "Cursed", "Really black")
                      end
                    end
                    if thing and thing.Parent then
                      dealDamage(thing.Parent, 5, 5)
                      do
                        local humin = thing.Parent.Humanoid
                        spawn(function()
                          for i = 1, 10 do
                            wait(1)
                            if thing.Parent then
                              dealDamage(thing.Parent, 0.05 * humin.MaxHealth, 10, 1.5, 0.5)
                            end
                          end
                        end)
                      end
                    end
                  end
                end
              end
            end
            bfx.BrickColor = BrickColor.new("Bright red")
            done = true
            bfx:clearAllChildren()
            local sp2 = sphere(bfx)
            sp2.Scale = Vector3.new(0, 0, 0)
            local mgp = cp(tube, "White", Vector3.new(1, 1, 1), true)
            mgp.Transparency = 1
            mgp.CFrame = blast.CFrame
            game.Debris:AddItem(mgp, 8)
            addFx(bfx, 0.004, "destroy", function()
              sp2.Scale = sp2.Scale + Vector3.new(0.09, 0.09, 0.09)
              bfx.Transparency = bfx.Transparency + 0.004
            end)
            addFx(blast, 0.004, "destroy", function()
              sp.Scale = sp.Scale + Vector3.new(0.09, 0.09, 0.09)
              blast.Transparency = blast.Transparency + 0.004
            end)
            local hg = getSound(221920822)
            hg.Pitch = 0.8
            hg.Volume = 10
            hg.Parent = mgp
            hg:Play()
            addCoolDown("Nightmare Overture")
          end
        end
      end)
    end
  else
    return false
  end
end, 800)
addMove("Dark Spikes", "t", 0.4, function()
  tor.CFrame = CFrame.new(tor.Position, Vector3.new(mouse.Hit.p.X, tor.Position.Y, mouse.Hit.p.Z))
  local lv = tor.CFrame
  tweenTable = {}
  animPlaying = true
  deb = true
  canRunLeg = true
  magictone1:Play()
  Tween(rj, cfn() * ang(0, mr(25), 0), 0.2)
  Tween(rw, cfn() * ang(mr(25), mr(-20), 0), 0.2)
  wait(0.2)
  Tween(rj, cfn() * ang(0, mr(-55), 0), 0.15)
  Tween(rw, cfn() * ang(mr(-115), mr(45), 0), 0.15)
  Tween(neck, cfn() * ang(0, mr(55), 0))
  local spot = 4
  addCoolDown("Dark Spikes")
  for i = 1, 10 do
    wait(0.1)
    do
      local v = lv.lookVector * spot
      spot = spot + 14
      local spike = cp(tube, "Really black", Vector3.new(10, 1, 10), true, false)
      spike.CFrame = lv * CFrame.new(0, 0, -spot)
      local dam = cp(tube, "Really black", Vector3.new(7, 14, 7), true, false)
      local dml = cyl(dam)
      local angls = CFrame.Angles(spike.CFrame:toEulerAnglesXYZ())
      local bhit, pos = FindGround(cn(spike.CFrame.p), ch)
      if bhit then
        spike.CFrame = pos * CFrame.new(0, 0, 0)
        do
          local mgp = cp(tube, "White", Vector3.new(1, 1, 1), true, false)
          mgp.Transparency = 1
          mgp.CFrame = spike.CFrame
          game.Debris:AddItem(mgp, 2)
          local sn = spexp:clone()
          sn.Parent = mgp
          sn.Volume = 2
          sn:Play()
          dam.CFrame = spike.CFrame * CFrame.new(0, 7, 0)
          local blast = dam
          local region = CreateRegion3FromLocAndSize(blast.Position, blast.Size * 2)
          local people = {}
          for _, v in pairs(workspace:findPartsInRegion3WithIgnoreList(region, {ch}, 100)) do
            if v and v.Parent and v.className == "Part" and v.Parent:findFirstChild("Humanoid") then
              local can = false
              if not v.Parent:findFirstChild("HitDeb") then
                can = true
              end
              if can == true then
                local db = Instance.new("StringValue", v.Parent)
                db.Name = "HitDeb"
                game.Debris:AddItem(db, 0.2)
                local humin = v.Parent.Humanoid
                if humin then
                  local php = humin.Health
                  dealDamage(humin.Parent, 10 + math.random(3), 2)
                  local testvel = int("BodyVelocity", v)
                  testvel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                  testvel.Velocity = lv.lookVector * 100
                  game.Debris:addItem(testvel, 1)
                  humin.Sit = true
                  if php <= humin.Health and humin.MaxHealth ~= math.huge then
                    print("equal")
                    humin:TakeDamage(20)
                  end
                end
              end
            end
          end
          local cl = cyl(spike)
          addFx(spike, 0.05, "destroy", function()
            cl.Scale = cl.Scale - Vector3.new(0.05, 0, 0.05)
            spike.Transparency = spike.Transparency + 0.05
          end)
          addFx(dml, 0.05, "destroy", function()
            dml.Scale = dml.Scale - Vector3.new(0.05, -0.05, 0.05)
            dam.Transparency = dam.Transparency + 0.05
          end)
        end
      else
        spike:Destroy()
      end
    end
  end
  wait(0.7)
  deb = false
  canRunLeg = false
  animPlaying = false
  reset()
end, 30)
mouse.Button1Down:connect(function()
  if not deb then
    rcombostring = rcombostring .. "mb1"
    executeMove("Dark Missile")
  end
end)
local vt
local dodgecool = false
function iPart(tab)
  local v = Instance.new(tab.type or "Part")
  if tab.type ~= "CornerWedgePart" then
    v.formFactor = "Custom"
  end
  v.CanCollide = false
  v.TopSurface = 0
  v.BottomSurface = 0
  v.Size = v3(tab[2], tab[3], tab[4])
  if tab.co then
    v.BrickColor = bn(tab.co)
  end
  if tab.tr then
    v.Transparency = tab.tr
  end
  if tab.rf then
    v.Reflectance = tab.rf
  end
  if tab.cf then
    v.CFrame = tab.cf
  end
  if tab.an then
    v.Anchored = tab.an
  end
  v.Parent = tab[1]
  LastMade = v
  return v
end
function iNew(tab)
  local v = Instance.new(tab[1])
  for Ind, Val in pairs(tab) do
    if Ind ~= 1 and Ind ~= 2 then
      v[Ind] = Val
    end
  end
  v.Parent = tab[2] == 0 and LastMade or tab[2]
  LastMade = v
  return v
end
local ppart = iPart({
  nil,
  0.2,
  0.2,
  0.2
})
ppart.Material = "SmoothPlastic"
ppart.TopSurface = "SmoothNoOutlines"
ppart.BottomSurface = "SmoothNoOutlines"
ppart.RightSurface = "SmoothNoOutlines"
ppart.LeftSurface = "SmoothNoOutlines"
ppart.Transparency = 0
ppart.Anchored = true
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function Triangle(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a, b = a, b
  elseif edg2 <= c - b.magnitude and edg2 >= 0 then
    a, b, c = b, c, a
  elseif edg3 <= a - c.magnitude and edg3 >= 0 then
    a, b, c = c, a, b
  else
    print("unreachable")
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    do
      local w1 = iNew({
        "WedgePart",
        Pack,
        FormFactor = "Custom",
        BrickColor = ppart.BrickColor,
        Transparency = ppart.Transparency,
        Reflectance = ppart.Reflectance,
        Material = ppart.Material,
        CanCollide = ppart.CanCollide
      })
      local sz = v3(0.2, width, len1)
      w1.Size = sz
      local sp = iNew({
        "SpecialMesh",
        w1,
        MeshType = "Wedge",
        Scale = v3(0, 1, 1) * sz / w1.Size
      })
      w1.Parent = tube
      w1:BreakJoints()
      w1.Anchored = true
      w1.Transparency = 0.7
      Spawn(function()
        for i = 0, 1, 0.1 do
          wait()
          w1.Transparency = w1.Transparency + 0.03
        end
      end)
      w1.CFrame = maincf * ca2(math.pi, 0, math.pi / 2) * cn(0, width / 2, len1 / 2)
      table.insert(list, w1)
    end
  end
  if len2 > 0.01 then
    do
      local w2 = iNew({
        "WedgePart",
        Pack,
        FormFactor = "Custom",
        BrickColor = ppart.BrickColor,
        Transparency = ppart.Transparency,
        Reflectance = ppart.Reflectance,
        Material = ppart.Material,
        CanCollide = ppart.CanCollide
      })
      local sz = v3(0.2, width, len2)
      w2.Size = sz
      local sp = iNew({
        "SpecialMesh",
        w2,
        MeshType = "Wedge",
        Scale = v3(0, 1, 1) * sz / w2.Size
      })
      w2.Parent = tube
      w2:BreakJoints()
      w2.Anchored = true
      w2.Transparency = 0.7
      Spawn(function()
        for i = 0, 1, 0.1 do
          wait()
          w2.Transparency = w2.Transparency + 0.03
        end
      end)
      w2.CFrame = maincf * ca2(math.pi, math.pi, -math.pi / 2) * cn(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
  end
  return unpack(list)
end
bclf = ch["Right Arm"].CFrame
scfr = bclf
ca = CFrame.Angles
cn = CFrame.new
v3 = Vector3.new
function Raycast(Pos, Dir, Ign)
  return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * 300), Ign)
end
function FindGround(cf, ig)
  local ax, ay, az = cf:toEulerAnglesXYZ()
  local bhit, bpos = Raycast(cf.p, cf.p - (cf.p + v3(0, 200, 0)), ig)
  if bhit and bpos then
    return bhit, cn(bpos) * ca(ax, ay, az)
  end
end
currentkey = ""
mouse.KeyDown:connect(function(key)
  if key == "q" and currentkey == "32" and Vector3.new(0, tor.Velocity.Y, 0).magnitude > 2 then
    executeMove("Down Slam")
  elseif key == "r" and currentkey == "32" and Vector3.new(0, tor.Velocity.Y, 0).magnitude > 2 then
    executeMove("Aerial Sword")
  end
  if key == "i" then
    print("movers:" .. #movers)
    print("fx:" .. #fx)
    print("tweens: " .. #tweenTable)
  end
  if string.byte(key) == 32 and canExecuteMoves == true and game.Players.LocalPlayer:FindFirstChild("Cooldown") == nil then
    combostring = combostring .. "."
    spawn(function()
      jump()
    end)
    if combostring:match("..") and dodgecool == false then
      d = Instance.new("StringValue", game.Players.LocalPlayer)
      d.Name = "Cooldown"
      game.Debris:AddItem(d, 4)
      currentkey = tostring(string.byte(key))
      animPlaying = true
      altTween(rj, cfn() * ang(mr(-15), 0, 0))
      altTween(rw, cfn() * ang(mr(10), 0, mr(-15)))
      altTween(lw, cfn() * ang(mr(10), 0, mr(15)))
      dodgecool = true
      combostring = ""
      local rv = tor.CFrame.upVector
      local bv = int("BodyVelocity", tor)
      dodgesound:Play()
      bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      bv.Velocity = rv * 150
      spawn(function()
        for i = 1, 14 do
          wait()
          do
            local cfx = cp(tube, "Really black", Vector3.new(6, 6, 6), true, false)
            local ran = math.random(2)
            if ran == 1 then
              cfx.BrickColor = BrickColor.new("Bright red")
              cfx.Material = "Neon"
            end
            cfx.CFrame = tor.CFrame * CFrame.Angles(math.rad(math.random(90)), math.rad(math.random(90)), 0)
            local b = blo(cfx)
            addFx(cfx, 0.05, "destroy", function()
              cfx.Transparency = cfx.Transparency + 0.05
              b.Scale = b.Scale + Vector3.new(0.1, 0.1, 0.1)
            end)
          end
        end
      end)
      wait()
      bv:Destroy()
      wait(0.4)
      reset()
      dodgecool = false
      wait(0.4)
      if currentkey == "32" then
        currentkey = ""
      end
      if not deb then
        animPlaying = false
      end
    end
  end
  if key == "d" and canExecuteMoves == true then
    combostring = combostring .. "d"
    if combostring:match("dd") and dodgecool == false and game.Players.LocalPlayer:FindFirstChild("Cooldown") == nil then
      d = Instance.new("StringValue", game.Players.LocalPlayer)
      d.Name = "Cooldown"
      game.Debris:AddItem(d, 4)
      dodgecool = true
      combostring = ""
      local rv = cam.CFrame.rightVector
      local bv = int("BodyVelocity", tor)
      dodgesound:Play()
      bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      bv.Velocity = rv * 150
      spawn(function()
        for i = 1, 16 do
          wait()
          do
            local cfx = cp(tube, "Really black", Vector3.new(6, 6, 6), true, false)
            local ran = math.random(2)
            if ran == 1 then
              cfx.BrickColor = BrickColor.new("Bright red")
              cfx.Material = "Neon"
            end
            cfx.CFrame = tor.CFrame * CFrame.Angles(math.rad(math.random(90)), math.rad(math.random(90)), 0)
            local b = blo(cfx)
            addFx(cfx, 0.05, "destroy", function()
              cfx.Transparency = cfx.Transparency + 0.05
              b.Scale = b.Scale + Vector3.new(0.1, 0.1, 0.1)
            end)
          end
        end
      end)
      wait()
      bv:Destroy()
      wait(0.4)
      dodgecool = false
    end
  elseif key == "w" and canExecuteMoves == true then
    combostring = combostring .. "w"
    if combostring:match("ww") and dodgecool == false and game.Players.LocalPlayer:FindFirstChild("Cooldown") == nil then
      d = Instance.new("StringValue", game.Players.LocalPlayer)
      d.Name = "Cooldown"
      game.Debris:AddItem(d, 4)
      dodgecool = true
      combostring = ""
      local rv = cam.CFrame:vectorToWorldSpace(Vector3.new(0, 0, -1))
      local bv = int("BodyVelocity", tor)
      dodgesound:Play()
      bv.MaxForce = Vector3.new(math.huge, 0, math.huge)
      bv.Velocity = rv * 150
      spawn(function()
        for i = 1, 16 do
          wait()
          do
            local cfx = cp(tube, "Really black", Vector3.new(6, 6, 6), true, false)
            local ran = math.random(2)
            if ran == 1 then
              cfx.BrickColor = BrickColor.new("Bright red")
              cfx.Material = "Neon"
            end
            cfx.CFrame = tor.CFrame * CFrame.Angles(math.rad(math.random(90)), math.rad(math.random(90)), 0)
            local b = blo(cfx)
            addFx(cfx, 0.05, "destroy", function()
              cfx.Transparency = cfx.Transparency + 0.05
              b.Scale = b.Scale + Vector3.new(0.1, 0.1, 0.1)
            end)
          end
        end
      end)
      wait()
      bv:Destroy()
      wait(0.4)
      dodgecool = false
    end
  elseif key == "s" and canExecuteMoves == true and game.Players.LocalPlayer:FindFirstChild("Cooldown") == nil then
    combostring = combostring .. "s"
    if combostring:match("ss") and dodgecool == false then
      d = Instance.new("StringValue", game.Players.LocalPlayer)
      d.Name = "Cooldown"
      game.Debris:AddItem(d, 4)
      dodgecool = true
      combostring = ""
      local rv = cam.CFrame:vectorToWorldSpace(Vector3.new(0, 0, 1))
      local bv = int("BodyVelocity", tor)
      dodgesound:Play()
      bv.MaxForce = Vector3.new(math.huge, 0, math.huge)
      bv.Velocity = rv * 150
      spawn(function()
        for i = 1, 16 do
          wait()
          do
            local cfx = cp(tube, "Really black", Vector3.new(6, 6, 6), true, false)
            local ran = math.random(2)
            if ran == 1 then
              cfx.BrickColor = BrickColor.new("Bright red")
              cfx.Material = "Neon"
            end
            cfx.CFrame = tor.CFrame * CFrame.Angles(math.rad(math.random(90)), math.rad(math.random(90)), 0)
            local b = blo(cfx)
            addFx(cfx, 0.05, "destroy", function()
              cfx.Transparency = cfx.Transparency + 0.05
              b.Scale = b.Scale + Vector3.new(0.1, 0.1, 0.1)
            end)
          end
        end
      end)
      wait()
      bv:Destroy()
      wait(0.4)
      dodgecool = false
    end
  elseif key == "a" and canExecuteMoves == true then
    combostring = combostring .. "a"
    if combostring:match("aa") and dodgecool == false then
      dodgecool = true
      combostring = ""
      local rv = cam.CFrame.rightVector
      local bv = int("BodyVelocity", tor)
      dodgesound:Play()
      bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      bv.Velocity = rv * -150
      spawn(function()
        for i = 1, 16 do
          wait()
          do
            local cfx = cp(tube, "Really black", Vector3.new(6, 6, 6), true, false)
            local ran = math.random(2)
            if ran == 1 then
              cfx.BrickColor = BrickColor.new("Bright red")
              cfx.Material = "Neon"
            end
            cfx.CFrame = tor.CFrame * CFrame.Angles(math.rad(math.random(90)), math.rad(math.random(90)), 0)
            local b = blo(cfx)
            addFx(cfx, 0.05, "destroy", function()
              cfx.Transparency = cfx.Transparency + 0.05
              b.Scale = b.Scale + Vector3.new(0.1, 0.1, 0.1)
            end)
          end
        end
      end)
      wait()
      bv:Destroy()
      wait(0.4)
      dodgecool = false
    end
  end
  if key == "f" then
    if deb == false then
      executeMove("Normal Block")
    end
  elseif key == "z" then
    if deb == false then
      executeMove("Nightmare Overture")
    end
  elseif key == "e" then
    if deb == false then
      rcombostring = rcombostring .. "e"
      local cmb = rcombostring
      if cmb:match("mb1mb1e") then
        rcombostring = ""
        local a = executeMove("Origin Beam")
        if not a then
          executeMove("Rive Beam")
        end
      else
        executeMove("Rive Beam")
      end
    end
  elseif key == "v" then
    if deb == false then
      executeMove("Diamond Storm")
    end
  elseif key == "t" then
    if deb == false and not sprinting then
      rcombostring = rcombostring .. "t"
      local cmb = rcombostring
      if cmb:match("mb1mb1t") then
        rcombostring = ""
        local a = executeMove("Dark Lock")
        if not a then
          executeMove("Dark Spikes")
        end
      else
        executeMove("Dark Spikes")
      end
    end
  elseif key == "g" then
    if deb == false then
      executeMove("Curse")
    end
  elseif key == "l" then
    if deb == false then
      executeMove("Ascend")
    end
  elseif key == "r" and deb == false and Vector3.new(0, tor.Velocity.Y, 0).magnitude < 2 and currentkey ~= "32" then
    executeMove("Dark Slash")
  end
end)
mouse.KeyUp:connect(function(key)
  for _, v in pairs(connectlist) do
    if v.up == false and v.key == key then
      v.up = true
      table.remove(connectlist, _)
    end
  end
  if string.byte(key) == 48 and canExecuteMoves == true then
    sprinting = false
    hum.WalkSpeed = regws
  end
end)
mouse.Button1Up:connect(function()
  for _, v in pairs(connectlist) do
    if v.up == false then
      v.up = true
      table.remove(connectlist, _)
    end
  end
end)
local oldsize = mana / maxmana
local oldchain = 0
spawn(function()
  while wait(1) do
    if deb == false then
      if chain == oldchain then
        chain = 0
      end
      oldchain = chain
    end
  end
end)
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.016666666666666666
tf = 0
allowframeloss = true
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
function swait(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end
Spawn(function()
  while true do
    swait()
    chaintext.Text = tostring(chain) .. "x"
    manabartext.Text = tostring(mana) .. "/" .. tostring(maxmana)
    if mana / maxmana ~= oldsize then
      manabar:TweenSize(UDim2.new(mana / maxmana, 0, 1, 0), "Out", "Sine", 1, true)
      oldsize = mana / maxmana
    end
    if dumbbox then
      dumbbox.CFrame = dumbhand.CFrame * cfn(0, 0, 4) * ang(mr(-90), 0, 0)
    end
    for _, v in pairs(textTable) do
      if 1 > v.TextLabel.TextTransparency then
        v.TextLabel.TextTransparency = v.TextLabel.TextTransparency + 0.02
        v.TextLabel.TextStrokeTransparency = v.TextLabel.TextStrokeTransparency + 0.02
        v.StudsOffset = v.StudsOffset + Vector3.new(0, 0.02, 0)
      else
        v:Destroy()
        table.remove(textTable, _)
      end
    end
    if Vector3.new(tor.Velocity.X, 0, tor.Velocity.Z).magnitude > 2 and jumping == false then
      run = true
    elseif Vector3.new(tor.Velocity.X, 0, tor.Velocity.Z).magnitude < 2 and jumping == false then
      run = false
      idle = true
    end
    if Vector3.new(tor.Velocity.X, 0, tor.Velocity.Z).magnitude > 2 and canRunLeg == true then
      runLeg = true
    elseif Vector3.new(tor.Velocity.X, 0, tor.Velocity.Z).magnitude < 2 and canRunLeg == true then
      runLeg = false
      resetLegs()
    end
    for _, v in pairs(movers) do
      if v.mover and v.mover:IsDescendantOf(tube) then
        v.func()
      else
        table.remove(movers, _)
      end
    end
    if bg and 0 < hum.Health then
      tor.CFrame = CFrame.new(tor.Position, Vector3.new(mouse.Hit.p.X, tor.Position.Y, mouse.Hit.p.Z))
    end
    for _, v in pairs(fx) do
      if 1 > v.stepval then
        v.func()
        v.stepval = v.stepval + v.int
      elseif v.final then
        if v.final == "destroy" then
          v.item:Destroy()
          table.remove(fx, _)
        end
      else
        table.remove(fx, _)
      end
    end
    for _, v in pairs(tweenTable) do
      if v.Weld.C1 == v.Stop then
        table.remove(tweenTable, _)
      elseif v.th < 1 - v.Step then
        v.th = v.th + v.Step
        i = v.th
        v.Weld.C1 = v.Weld.C1:lerp(CFrame.new(v.Start.p.X * (1 - i) + v.Stop.p.X * i, v.Start.p.Y * (1 - i) + v.Stop.p.Y * i, v.Start.p.Z * (1 - i) + v.Stop.p.Z * i) * CFrame.fromEulerAnglesXYZ(v.X1 * (1 - i) + v.X2 * i, v.Y1 * (1 - i) + v.Y2 * i, v.Z1 * (1 - i) + v.Z2 * i), 1)
      else
        v.Weld.C1 = v.Stop
      end
    end
    for _, v in pairs(altTweenTable) do
      if v.Weld.C1 == v.Stop then
        table.remove(tweenTable, _)
      elseif v.th < 1 - v.Step then
        v.th = v.th + v.Step
        i = v.th
        v.Weld.C1 = v.Weld.C1:lerp(CFrame.new(v.Start.p.X * (1 - i) + v.Stop.p.X * i, v.Start.p.Y * (1 - i) + v.Stop.p.Y * i, v.Start.p.Z * (1 - i) + v.Stop.p.Z * i) * CFrame.fromEulerAnglesXYZ(v.X1 * (1 - i) + v.X2 * i, v.Y1 * (1 - i) + v.Y2 * i, v.Z1 * (1 - i) + v.Z2 * i), 1)
      else
        v.Weld.C1 = v.Stop
      end
    end
  end
end)
local oldcombo
local thingz = false
local oldcombo2
local thingz2 = false
spawn(function()
  while wait(0.1) do
    for _, v in pairs(cooldowns) do
      if 0.1 > v.timeleft then
        table.remove(cooldowns, _)
      else
        v.timeleft = v.timeleft - 0.1
      end
    end
    if thingz == false then
      oldcombo = combostring
      thingz = true
    else
      if string.len(oldcombo) == string.len(combostring) then
        combostring = ""
        oldcombo = ""
      end
      thingz = false
    end
  end
end)
spawn(function()
  while wait(0.8) do
    if thingz2 == false then
      oldcombo2 = rcombostring
      thingz2 = true
    else
      if string.len(oldcombo2) == string.len(rcombostring) then
        rcombostring = ""
        oldcombo2 = ""
      end
      thingz2 = false
    end
  end
end)
spawn(function()
  while wait(0.3) do
    if run == false then
      do
        local cfx = cp(tube, "Really black", Vector3.new(0.4, 0.4, 0.4), true)
        cfx.Transparency = 1
        local rfx = cp(tube, "Really black", Vector3.new(0.4, 0.4, 0.4), true)
        rfx.Material = "Neon"
        local ran = math.random(2)
        if ran == 1 then
          rfx.BrickColor = BrickColor.new("Bright red")
        end
        local bm = int("SpecialMesh", rfx)
        bm.MeshType = "FileMesh"
        bm.MeshId = rbx .. "9756362"
        bm.Scale = Vector3.new(0.3, 0.7, 0.3)
        local angls = ang(mr(math.random(90)), mr(math.random(90)), mr(math.random(90)))
        addFx(cfx, 0.02, "destroy", function()
          rfx.Transparency = rfx.Transparency + 0.02
          rfx.CFrame = cfx.CFrame * angls
          cfx.CFrame = cfx.CFrame * CFrame.new(0, 0.1, 0)
        end)
        cfx.CFrame = tor.CFrame * CFrame.new(0, -2, 0) * CFrame.new(math.random(-math.random(4.5), math.random(45) / 10), 0, math.random(-math.random(45) / 10, math.random(45) / 10))
        rfx.CFrame = cfx.CFrame * angls * CFrame.Angles(math.rad(-90), 0, 0)
        game.Debris:AddItem(cfx, 1.1)
        game.Debris:AddItem(rfx, 1.1)
      end
    end
  end
end)
while wait() do
  if mana < maxmana and not deb and not animPlaying then
    mana = mana + 2
    if mana == maxmana + 1 then
      mana = maxmana
    end
  end
  if animPlaying == true and runLeg == true then
    walkLegs()
  end
  if run == true and animPlaying == false then
    altTweenTable = {}
    tweenTable = {}
    if not sprinting then
      if not ascension then
        walkCycle()
      else
        walkCycleBig()
      end
    else
      sprintCycle()
    end
  elseif idle == true and animPlaying == false and not jumping then
    tweenTable = {}
    if not ascension then
      reset()
    else
      bigreset()
    end
  end
end
