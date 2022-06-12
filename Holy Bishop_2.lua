wait(0.003)
local startLoad = tick()
script.Name = "Holy Bishop"
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = plr.Character
local bp = plr.Backpack
local hum = char.Humanoid
local T = char.Torso
local Character = char
local torso = char.Torso
local str, hst, damage = 6, 0.16, 0
local stats, Parts, Cooldowns, Damage, recountData, parts, Damaged, Enemy, Buffs = {}, {}, {}, {}, {}, {}, {}, {}, {}
local shadowform, Ctrl, Cam, lastclick, btimer, Stealthed = false, false, game.Workspace:FindFirstChild("currentCamera"), tick(), 0, false
local lastdps, OrbModel, currentTarget, candamage = nil, nil, nil, nil
local shielding = false
local dot = {}
local combocounter, PGui, channeling, Mode = 0, plr.PlayerGui, false, ""
local new = Instance.new
local iAmDarkusScript = Instance.new("Model")
iAmDarkusScript.Parent = hum
iAmDarkusScript.Name = "Property of Darkus_Theory"
head = char.Head
local ohp = hum.Health
local otheranims = false
mouse = plr:GetMouse()
count = 0
Mode = "Idling"
local tMesh, asset = "rbxasset://fonts/torso.mesh", "rbxassetid://"
local meshes, sounds = {blast = 20329976, ring = 3270017, spike = 1033714, cone = 1082802, crown = 20329976, cloud = 1095708, diamond = 9756362}, {laser = 166196553, gun = 131070686, falling = 138206037, hit = 146163493, twirl = 46299547, explosion = 142070127}
prmColor = "ReEnemy black"
secColor = "Toothpaste"
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
prmColor = "ReEnemy black"
secColor = "Toothpaste"
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
camera = workspace.CurrentCamera
plr.CameraMaxZoomDistance = math.huge
for _,x in pairs(char:children()) do
  if x:IsA("Shirt") then
    x:remove()
  end
  if x:IsA("Pants") then
    x:remove()
  end
  if x:IsA("Hat") then
    x:remove()
  end
end
pcall(function()
  anim:Destroy()
end
)
pcall(function()
  char.Health:Destroy()
end
)
pcall(function()
  humanoid.Animator:Destroy()
end
)
local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
local rlegm = Instance.new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
neckc0 = neck.C0
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
rootc1 = rj.C1
wait()
local h = Instance.new("Part", char)
h.Name = "DK Hood"
h.TopSurface = 0
h.Size = Vector3.new(2.3, 2.3, 2.3)
h.CFrame = torso.CFrame
h.CanCollide = false
h:BreakJoints()
local m = Instance.new("SpecialMesh", h)
m.Name = "Wild Gladiator\'s Felweave Cowl"
m.MeshType = "FileMesh"
m.Scale = Vector3.new(1, 1, 1)
m.MeshId = "http://www.roblox.com/asset/?id=85855767"
m.VertexColor = Vector3.new(1, 1, 1)
local Weld = Instance.new("Weld")
Weld.Part0 = char.Head
Weld.Part1 = h
Weld.Parent = char.Head
Weld.C0 = CFrame.new(0, -0.2, 0)
New = function(Object, Parent, Name, Data)
  local Object = Instance.new(Object)
  if not Data then
    for Index,Value in pairs({}) do
      Object[Index] = Value
    end
    Object.Parent = Parent
    Object.Name = Name
    return Object
  end
end

Staff = New("Model", Character, "Staff", {})
Handle = New("Part", Staff, "Handle", {BrickColor = BrickColor.new("Toothpaste"), Material = Enum.Material.Wood, FormFactor = Enum.FormFactor.Symmetric, Shape = Enum.PartType.Cylinder, Size = Vector3.new(4.69999981, 0.200000003, 0.300000042), CFrame = CFrame.new(0.57149899, 1.88927495, -0.898910999, -0.944701791, 0.319970548, -0.0718207732, -0.327606022, -0.930582702, 0.163368165, -0.0145623889, 0.177864254, 0.983946562), CanCollide = false, BottomSurface = Enum.SurfaceType.Smooth, TopSurface = Enum.SurfaceType.Smooth, Color = Color3.new(0.454902, 0.52549, 0.615686)})
Part1 = New("Part", Staff, "Part1", {BrickColor = BrickColor.new("Toothpaste"), Material = Enum.Material.Wood, FormFactor = Enum.FormFactor.Symmetric, Shape = Enum.PartType.Cylinder, Size = Vector3.new(1.38, 0.200000003, 0.300000042), CFrame = CFrame.new(2.87910843, 2.26322985, -0.792562008, -0.952355325, -0.29641813, -0.0718205795, 0.281945944, -0.945417762, 0.163367048, -0.116327964, 0.135336339, 0.983944893), CanCollide = false, BottomSurface = Enum.SurfaceType.Smooth, TopSurface = Enum.SurfaceType.Smooth, Color = Color3.new(0.454902, 0.52549, 0.615686)})
mot = New("Motor", Part1, "mot", {Part0 = Part1, Part1 = Handle, C0 = CFrame.new(0, 0, 0, -0.952353716, 0.281943917, -0.116327204, -0.296420157, -0.945419192, 0.135335654, -0.0718207732, 0.163368165, 0.983946562), C1 = CFrame.new(-2.30406189, 0.409280896, -1.1920929e-007, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562)})
Part2 = New("Part", Staff, "Part2", {BrickColor = BrickColor.new("Toothpaste"), Material = Enum.Material.Wood, FormFactor = Enum.FormFactor.Symmetric, Shape = Enum.PartType.Cylinder, Size = Vector3.new(0.699999809, 0.200000003, 0.300000042), CFrame = CFrame.new(3.80125666, 2.18647099, -0.712507248, -0.94470191, 0.319973052, -0.0718205795, -0.327603519, -0.930582702, 0.163367048, -0.014562604, 0.177865237, 0.983944893), CanCollide = false, BottomSurface = Enum.SurfaceType.Smooth, TopSurface = Enum.SurfaceType.Smooth, Color = Color3.new(0.454902, 0.52549, 0.615686)})
mot = New("Motor", Part2, "mot", {Part0 = Part2, Part1 = Handle, C0 = CFrame.new(0, 0, 0, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562), C1 = CFrame.new(-3.15123606, 0.790008068, 0, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562)})
Part3 = New("Part", Staff, "Part3", {BrickColor = BrickColor.new("Toothpaste"), Material = Enum.Material.Wood, FormFactor = Enum.FormFactor.Symmetric, Shape = Enum.PartType.Cylinder, Size = Vector3.new(0.899999797, 0.200000003, 0.300000042), CFrame = CFrame.new(4.27721882, 2.67641687, -0.759113848, -0.426075667, 0.901833594, -0.0718205795, -0.896977842, -0.41077888, 0.163367048, 0.117829539, 0.134031072, 0.983944893), CanCollide = false, BottomSurface = Enum.SurfaceType.Smooth, TopSurface = Enum.SurfaceType.Smooth, Color = Color3.new(0.454902, 0.52549, 0.615686)})
mot = New("Motor", Part3, "mot", {Part0 = Part3, Part1 = Handle, C0 = CFrame.new(0, 0, 0, -0.426077485, -0.896979511, 0.117828958, 0.901831865, -0.410777032, 0.134030208, -0.0718207732, 0.163368165, 0.983946562), C1 = CFrame.new(-3.76071024, 0.4780761, -4.17232513e-007, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562)})
Part4 = New("Part", Staff, "Part4", {BrickColor = BrickColor.new("Toothpaste"), Material = Enum.Material.Wood, FormFactor = Enum.FormFactor.Symmetric, Shape = Enum.PartType.Cylinder, Size = Vector3.new(0.899999797, 0.200000003, 0.300000042), CFrame = CFrame.new(4.18060207, 3.31991601, -0.873009622, 0.663661063, 0.744579256, -0.0718205795, -0.728600919, 0.665168226, 0.163367048, 0.169415876, -0.0560925454, 0.983944893), CanCollide = false, BottomSurface = Enum.SurfaceType.Smooth, TopSurface = Enum.SurfaceType.Smooth, Color = Color3.new(0.454902, 0.52549, 0.615686)})
mot = New("Motor", Part4, "mot", {Part0 = Part4, Part1 = Handle, C0 = CFrame.new(0, 0, 0, 0.663658738, -0.728599966, 0.169414878, 0.74458015, 0.665170491, -0.0560923368, -0.0718207732, 0.163368165, 0.983946562), C1 = CFrame.new(-3.87859344, -0.171925187, -8.94069672e-007, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562)})
Snowball = New("Part", Staff, "Snowball", {BrickColor = BrickColor.new("Toothpaste"), Material = Enum.Material.Neon, FormFactor = Enum.FormFactor.Symmetric, Shape = Enum.PartType.Ball, Size = Vector3.new(0.400000006, 0.400000006, 0.400000006), CFrame = CFrame.new(3.51262951, 2.90919495, -0.85357672, 0.319973052, 0.94470191, -0.0718205795, -0.930582702, 0.327603519, 0.163367048, 0.177865237, 0.014562604, 0.983944893), CanCollide = false, BottomSurface = Enum.SurfaceType.Smooth, TopSurface = Enum.SurfaceType.Smooth, Color = Color3.new(0.686275, 0.866667, 1)})
mot = New("Motor", Snowball, "mot", {Part0 = Snowball, Part1 = Handle, C0 = CFrame.new(0, 0, 0, 0.319970548, -0.930582702, 0.177864254, 0.944701791, 0.327606022, 0.0145623889, -0.0718207732, 0.163368165, 0.983946562), C1 = CFrame.new(-3.11328602, 1.10864639e-005, -4.64916229e-006, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562)})
coroutine.resume(coroutine.create(function()
  while 1 do
    if Snowball then
      local p = Snowball
      local asd = p:Clone()
      asd.Parent = p.Parent
      local w = Instance.new("Weld", asd)
      local m = Instance.new("SpecialMesh", asd)
      m.MeshType = "Sphere"
      m.Scale = Vector3.new(1.2, 1.2, 1.2)
      w.Part0 = p
      w.Part1 = asd
      asd.Material = "Neon"
      for i = 0, 1, 0.1 do
        if not asd and asd.Mesh and asd.Mesh.Parent then
          break
        end
        asd.Mesh.Scale = asd.Mesh.Scale + Vector3.new(0.05, 0.05, 0.05)
        asd.Transparency = i
        game:service("RunService").Stepped:wait()
      end
      do
        do
          asd:Destroy()
          wait(math.random(1, 3))
          -- DECOMPILER ERROR at PC72: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC72: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC72: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
))
local Wld = Instance.new("Weld", Staff)
Wld.Name = "Weldy"
Wld.Part0 = ra
Wld.Part1 = Handle
Wld.C0 = CFrame.new(0, -1, 1.1) * CFrame.Angles(0, -math.rad(90), 0)
char["Body Colors"].HeadColor = BrickColor.new("Institutional white")
char["Body Colors"].TorsoColor = BrickColor.new("Really black")
char["Body Colors"].LeftArmColor = BrickColor.new("Institutional white")
char["Body Colors"].RightArmColor = BrickColor.new("Institutional white")
char["Body Colors"].LeftLegColor = BrickColor.new("Institutional white")
char["Body Colors"].RightLegColor = BrickColor.new("Institutional white")
cn = CFrame.new
deg = math.deg
local part = function(prnt, cfr, siz, col, anc, canc, tra, mat, typ)
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
  p.TopSurface = 0
  p:BreakJoints()
  return p
end

local mesh = function(typ, prnt, scal, mtyp, mid, mtx)
  local m = ins(typ or "SpecialMesh")
  if mtyp then
    m.MeshType = mtyp
  end
  if mid then
    m.MeshId = mid
  end
  if mtx then
    m.TextureId = mtx
  end
  if scal then
    m.Scale = scal
  end
  m.Parent = prnt
  return m
end

local weldy = function(prt1, prt2, c0, c1)
  local w = ins("Weld", prt1)
  w.Part0 = prt1
  w.Part1 = prt2
  if c0 or not c1 then
    w.C0 = cn()
    return w
  end
end

crownExplode = function(cf, col, scl)
  local p = part(char, cf, v3(1, 1, 1), col, true, false, 0.1, "SmoothPlastic")
  local pm = mesh("FileMesh", p, nil, nil, asset .. meshes.crown)
  Spawn(function()
    for i = 0.1, 1.1, 0.025 do
      p.Transparency = i
      pm.Scale = pm.Scale + v3(scl, scl, scl)
      wait()
    end
    p:Destroy()
  end
)
end

crater = function(cf, dist, siz, col, mat)
  local num = math.random(7, 13)
  for i = 1, num do
    game:service("Debris"):AddItem(part(char, cf * ca(0, pi * 2 / num * i, 0) * cn(0, 0, dist) * ca(r(2), r(2), r(2)), v3(ma(r(siz)), ma(r(siz)), ma(r(siz))), col, true, true, 0, mat), 7)
  end
end

quickSound = function(id, par, pi)
  local s = Instance.new("Sound")
  s.Pitch = pi or 1
  s.SoundId = asset .. id
  s.Parent = par
  wait()
  s:Play()
  return s
end

newSound = function(id, par, pi)
  local s = Instance.new("Sound", par)
  s.Pitch = pi or 1
  s.Volume = 0.3
  s.SoundId = asset .. id
  s:Play()
  return s
end

cylinderOpen = function(cf, col, col2)
  local p = part(char, cf, v3(0, 1000, 0), col, true, false, 0.1, "SmoothPlastic")
  local pm = mesh("CylinderMesh", p)
  local p2 = part(char, cf, v3(0, 1000, 0), col2, true, false, 0.1, "SmoothPlastic")
  local p2m = mesh("CylinderMesh", p2)
  Spawn(function()
    for i = 0.1, 1.1, 0.0125 do
      p.Transparency = i
      p2.Transparency = i
      pm.Scale = pm.Scale + v3(0.8, 0, 0.8)
      p2m.Scale = p2m.Scale + v3(0.5, 0, 0.5)
      wait()
    end
    p:Destroy()
    p2:Destroy()
  end
)
end

cylinderOpen2 = function(cf, col, col2)
  local p = part(workspace, cf, v3(0, 1000, 0), col, true, false, 0.1, "SmoothPlastic")
  local pm = mesh("CylinderMesh", p)
  local p2 = part(workspace, cf, v3(0, 1000, 0), col2, true, false, 0.1, "SmoothPlastic")
  local p2m = mesh("CylinderMesh", p2)
  Spawn(function()
    for i = 0.1, 1.1, 0.05 do
      p.Transparency = i
      p2.Transparency = i
      pm.Scale = pm.Scale + v3(0.7, 0, 0.7)
      p2m.Scale = p2m.Scale + v3(0.6, 0, 0.6)
      wait()
    end
    wait(10)
    p:Destroy()
    p2:Destroy()
  end
)
end

healingStreamTotem = function()
  local pos = mouse.Hit * CFrame.new(0, 4, 0)
  local Totem = Instance.new("Model")
  Totem.Name = "HealingStream_Totem"
  Totem.Parent = char
  local Body = Instance.new("Part", Totem)
  Body.Name = "Body"
  Body.Size = Vector3.new(1, 2.5, 1)
  Body.Locked = true
  Body.CanCollide = false
  local BMesh = Instance.new("CylinderMesh", Body)
  BMesh.Scale = Vector3.new(0.3, 1, 0.3)
  local bp = ins("BodyPosition", Body)
  bp.maxForce = v3(math.huge, math.huge, math.huge) * math.huge
  bp.P = 19047.232239882
  bp.position = pos.p
  local Stick = Instance.new("Part", Totem)
  Stick.Name = "Stick"
  Stick.Size = Vector3.new(1.5, 1, 1)
  Stick.CanCollide = false
  Stick.Locked = true
  local SMesh = Instance.new("BlockMesh", Stick)
  SMesh.Scale = Vector3.new(0.85, 0.3, 0.1)
  local Stick2 = Instance.new("Part", Totem)
  Stick2.Name = "Stick2"
  Stick2.Size = Vector3.new(1.5, 1, 1)
  Stick2.CanCollide = false
  Stick2.Locked = true
  local SMesh2 = Instance.new("BlockMesh", Stick2)
  SMesh2.Scale = Vector3.new(0.55, 0.3, 0.1)
  local Ball = Instance.new("Part", Totem)
  Ball.Name = "Ball"
  Ball.Size = Vector3.new(1.2, 1.2, 1.2)
  Ball.BrickColor = BrickColor.new("Toothpaste")
  Ball.CanCollide = false
  Ball.TopSurface = 0
  Ball.Locked = true
  local BMesh2 = Instance.new("SpecialMesh", Ball)
  BMesh2.MeshType = "Sphere"
  BMesh2.Scale = Vector3.new(0.6, 0.6, 0.6)
  local B2 = Ball:Clone()
  B2.Parent = Totem
  local Weld = Instance.new("Weld", Totem)
  Weld.Name = "StickWeld"
  Weld.Part0 = Body
  Weld.Part1 = Stick
  Weld.C0 = CFrame.new(0, 0.3, 0) * CFrame.Angles(math.rad(10), math.rad(20), 0)
  local Weld2 = Instance.new("Weld", Totem)
  Weld2.Name = "Stick2Weld"
  Weld2.Part0 = Body
  Weld2.Part1 = Stick2
  Weld2.C0 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(10), -math.rad(20), 0)
  local Weld3 = Instance.new("Weld", Totem)
  Weld3.Name = "BallWeld"
  Weld3.Part0 = Body
  Weld3.Part1 = Ball
  Weld3.C0 = CFrame.new(0, 1, 0)
  local Weld4 = Instance.new("Weld", Totem)
  Weld4.Name = "Ball2Weld"
  Weld4.Part0 = Body
  Weld4.Part1 = B2
  Weld4.C0 = CFrame.new(0, -1, 0)
  local needaloop = true
  local coro = coroutine.resume(coroutine.create(function()
    while needaloop do
      wait()
      local c = char
      local radius = 10
      local pos = Body.CFrame
      local clrz = {"Toothpaste", "Institutional white"}
      for i = 1, 1 do
        local clr = clrz[math.random(1, #clrz)]
        do
          pos = Body.CFrame
          local p = Instance.new("Part", c)
          local mafa = math.random(-360, 360)
          p.CanCollide = false
          p.Size = Vector3.new(1, 1, 1)
          local m = Instance.new("SpecialMesh", p)
          m.MeshType = "Sphere"
          spawn(function()
      for i = 0, 50 do
        local int, int2 = 0.05, 0.05
        m.Scale = m.Scale - Vector3.new(int, int, int)
        p.Transparency = p.Transparency + int2
        game:service("RunService").RenderStepped:wait()
      end
      pcall(function()
        p:Destroy()
      end
)
    end
)
          p.BrickColor = BrickColor.new(clr)
          p.Material = "Neon"
          p.CFrame = pos * CFrame.new(math.random(-radius, radius), math.random(-radius, radius), math.random(-radius, radius)) * CFrame.Angles(mafa, mafa, mafa)
          local bp = Instance.new("BodyPosition", p)
          bp.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
          bp.D = 100
          bp.P = 100
          bp.Position = pos.p
          game.Debris:AddItem(p, 10)
        end
      end
    end
  end
))
  coroutine.wrap(function()
    while Body do
      pos = pos * CFrame.Angles(math.rad(math.sin(tick()) * 0.2), math.rad(math.sin(tick()) * 0.2), math.rad(math.sin(tick()) * 0.2))
      Weld.C0 = Weld.C0 * CFrame.Angles(-math.rad(math.sin(tick()) * 0.6), 0, math.rad(math.sin(tick()) * 0.6))
      Weld2.C0 = Weld2.C0 * CFrame.Angles(math.rad(math.sin(tick()) * 0.6), 0, -math.rad(math.sin(tick()) * 0.6))
      Body.CFrame = pos
      game:service("RunService").RenderStepped:wait()
    end
  end
)()
  coroutine.wrap(function()
    for i = 0, 15 do
      local Orbi = Instance.new("Part")
      do
        Orbi.Size = Vector3.new(3, 3, 3)
        Orbi.CanCollide = false
        Orbi.Locked = true
        Orbi.Shape = "Ball"
        Orbi.Anchored = true
        Orbi.Transparency = 0.6
        Orbi.CFrame = CFrame.new(1000, 1000, 1000)
        Orbi.TopSurface = 0
        Orbi.Name = "Expand Dong"
        Orbi.BrickColor = BrickColor.new("Toothpaste")
        local OrbiMesh = Instance.new("SpecialMesh", Orbi)
        OrbiMesh.Name = "Dxpand Eong"
        OrbiMesh.Scale = Vector3.new(2, 2, 2)
        OrbiMesh.MeshType = "Sphere"
        coroutine.wrap(function()
      for i,v in pairs(IsNear(Body.Position, 20, nil, true)) do
        do
          if Damaged[v:FindFirstChild("Humanoid")] and tick() - Damaged[v:FindFirstChild("Humanoid")] < 1 then
            return 
          end
          pcall(function()
        local calc = getDPS() * 1.6
        healHuman(v:FindFirstChild("Humanoid"), calc)
        logDamage("Healing Totem", calc)
        Damaged[v:FindFirstChild("Humanoid")] = tick()
      end
)
        end
      end
    end
)()
        Orbi.Parent = char
        ypcall(function()
      for i = 0.6, 1, 0.02 do
        wait(0.05)
        OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(0.3, 0.3, 0.3)
        Orbi.Transparency = i
        Orbi.CFrame = Body.CFrame
      end
      Orbi:Destroy()
    end
)
        wait(1)
      end
    end
    needaloop = false
    Totem:Destroy()
  end
)()
end

Effect = function(Pos, x1, y1, z1, x2, y2, z2, color, ref)
  local S = Instance.new("Part", Character)
  S.FormFactor = 0
  S.Size = Vector3.new(1, 1, 1)
  S.BrickColor = color
  S.Reflectance = ref or 0
  S.TopSurface = 0
  S.BottomSurface = 0
  S.Transparency = 0.5
  S.Anchored = true
  S.CanCollide = false
  S.CFrame = CFrame.new(Pos) * CFrame.new(x2, y2, z2) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh2 = Instance.new("BlockMesh", S)
  msh2.Scale = Vector3.new(x1, y1, z1)
  coroutine.wrap(function()
    for i = 1, 9 do
      msh2.Scale = msh2.Scale + Vector3.new(0.1, 0.1, 0.1)
      S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      S.Transparency = i * 0.1
      Wait()
    end
    S:Destroy()
  end
)()
end

Effect2 = function(part, x1, y1, z1, x2, y2, z2, color, ref)
  if part:IsDescendantOf(Workspace) then
    local S = Instance.new("Part", Character)
    do
      S.FormFactor = 0
      S.Size = Vector3.new(1, 1, 1)
      S.BrickColor = color
      S.Reflectance = ref or 0
      S.TopSurface = 0
      S.BottomSurface = 0
      S.Transparency = 0.5
      S.Anchored = true
      S.CanCollide = false
      S.CFrame = part.CFrame * CFrame.new(x2, y2, z2) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      local msh2 = Instance.new("BlockMesh", S)
      msh2.Scale = Vector3.new(x1, y1, z1)
      coroutine.wrap(function()
    for i = 1, 9 do
      msh2.Scale = msh2.Scale + Vector3.new(0.1, 0.1, 0.1)
      S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      S.Transparency = i * 0.1
      Wait()
    end
    S:Destroy()
  end
)()
    end
  end
end

local EmberWave = function(CF, Color)
  local p = Instance.new("Part", Character)
  p.Anchored = true
  p.Locked = true
  p.CanCollide = false
  p.CFrame = CF
  p.Transparency = 1
  coroutine.wrap(function()
    local x = CFrame.new(math.random(-6, 6), math.abs(math.random(-6, 6)), math.random(-6, 6))
    for i = 1, 30 do
      p.CFrame = p.CFrame * x
      x = CFrame.new(math.random(-6, 6), math.abs(math.random(-6, 6)), math.random(-6, 6))
      Effect2(p, 2.6, 2.6, 2.6, 0, 0, 0, Color, 0.3)
      Wait(0.1)
    end
    p:Destroy()
  end
)()
end

MediumParticleEmit = function(Object, Color)
  coroutine.wrap(function()
    while Wait(1.1) do
      if not Object then
        break
      end
      local p = Instance.new("Part", Object.Parent)
      do
        p.Name = "Trail"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Anchored = true
        p.CanCollide = false
        p.FormFactor = "Custom"
        p.Size = Vector3.new(0.01, 0.01, 0.01)
        if type(Color) ~= "userdata" or not Color then
          p.BrickColor = BrickColor.new(Color)
          p.CFrame = Object.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1) - 3, math.random(-1, 1))
          do
            local m = Instance.new("BlockMesh", p)
            m.Scale = Vector3.new(2, 2, 2)
            coroutine.wrap(function()
      for i = 1, 15 do
        p.Transparency = i / 15
        m.Scale = m.Scale + Vector3.new(0.1, 0.1, 0.1)
        p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5, 5) / 20, 0.5, math.random(-5, 5) / 20)) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / i, math.random(-10, 10) / i, 0.5)
        Wait()
      end
      p:Destroy()
    end
)()
            -- DECOMPILER ERROR at PC83: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC83: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)()
end

if head:FindFirstChild("Mesh") and head:FindFirstChild("Mesh"):IsA("BlockMesh") then
  head:FindFirstChild("Mesh"):remove()
  wait()
  local nm = Instance.new("SpecialMesh", head)
  nm.MeshType = "Head"
  nm.Scale = Vector3.new(1.25, 1.25, 1.25)
end
do
  if head:FindFirstChild("face") then
    head:FindFirstChild("face"):Destroy()
  end
  newStat = function(stat, type, value)
  if stats[stat] then
    return 
  end
  stats[stat] = value
  return stats[stat]
end

  Shadowmeld = function()
  if Stealthed then
    Stealthed = false
    for i,v in pairs(char:children()) do
      if v:isA("BasePart") then
        v.Transparency = 0
      end
    end
    rootpart.Transparency = 1
    char.Parent = workspace
    hum.WalkSpeed = 20
    quickSound(167199184, head)
  else
    local c = CloneCharacter()
    c.HumanoidRootPart.Transparency = 1
    for i,v in pairs(head:children("")) do
      if v.Name == "3DGUI" then
        v:Destroy("")
      end
    end
    for i,v in pairs(char:children()) do
      if v:isA("BasePart") then
        v.Transparency = 0.25
      end
    end
    rootpart.Transparency = 1
    wait()
    char.Parent = game:service("Workspace").CurrentCamera
    char.Humanoid.WalkSpeed = 40
    Stealthed = true
    quickSound(167199184, head)
    coroutine.wrap(function()
    wait(15)
    if Stealthed then
      Shadowmeld()
    end
  end
)()
  end
end

  local Implode = function(CF, Color)
  local cf = CF
  local f = Instance.new("Part", Character)
  f.BrickColor = Color
  f.Size = Vector3.new(1, 1, 1)
  f.Anchored = true
  f.Locked = true
  f.CanCollide = false
  f.TopSurface = 0
  f.Transparency = 1
  f.BottomSurface = 0
  f.CFrame = cf
  local sm = Instance.new("SpecialMesh", f)
  sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
  sm.Scale = Vector3.new(30, 30, 30)
  coroutine.wrap(function()
    for i = 1, 10 do
      f.Transparency = f.Transparency - 0.1
      sm.Scale = sm.Scale - Vector3.new(3, 3, 3)
      Wait()
    end
    f:Destroy()
  end
)()
  local ax = Instance.new("Part", Character)
  ax.Size = Vector3.new(30, 30, 30)
  ax.TopSurface = 0
  ax.BottomSurface = 0
  ax.Transparency = 0
  ax.Locked = true
  ax.BrickColor = Color
  ax.Shape = "Ball"
  ax.CanCollide = false
  ax.CFrame = cf
  ax.Anchored = true
  ax.Transparency = 1
  coroutine.wrap(function()
    for i = 1, 10 do
      ax.Size = ax.Size - Vector3.new(math.random(1, 3) + 1, math.random(1, 3) + 1, math.random(1, 3) + 1)
      ax.Transparency = ax.Transparency - 0.1
      ax.CFrame = cf
      Wait()
    end
    ax:Destroy()
  end
)()
end

  local Explode = function(CF, Color, SMM, BBoom)
  local cf = CF
  local f = Instance.new("Part", Character)
  f.BrickColor = Color
  f.Size = Vector3.new(5, 1, 5)
  f.Anchored = true
  f.Locked = true
  f.CanCollide = false
  f.TopSurface = 0
  f.BottomSurface = 0
  f.CFrame = cf
  local sm = Instance.new("SpecialMesh", f)
  sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
  sm.Scale = Vector3.new(5, 5, 5)
  coroutine.wrap(function()
    for i = 1, 20 do
      f.Transparency = f.Transparency + 0.05
      sm.Scale = sm.Scale + Vector3.new(10, 10, 10)
      Wait()
    end
    f:Destroy()
  end
)()
  if BBoom then
    local zs = BBoom
    do
      local ax = Instance.new("Part", Character)
      ax.Size = Vector3.new(1, 1, 1)
      ax.TopSurface = 0
      ax.BottomSurface = 0
      ax.Transparency = 0
      ax.Locked = true
      ax.BrickColor = Color
      ax.Shape = "Ball"
      ax.CanCollide = false
      ax.CFrame = zs
      ax.Anchored = true
      local SMMx = Instance.new("SpecialMesh", ax)
      SMMx.MeshId = "http://www.roblox.com/asset/?id=1323306"
      SMMx.Scale = Vector3.new(1, 1, 1)
      coroutine.wrap(function()
    for i = 1, 20 do
      SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1, 3) + 1, math.random(1, 3) + 1, math.random(1, 3) + 1)
      ax.Transparency = ax.Transparency + 0.05
      ax.CFrame = zs
      Wait()
    end
    ax:Destroy()
  end
)()
    end
  end
  do
    local ax = Instance.new("Part", Character)
    ax.Size = Vector3.new(1, 1, 1)
    ax.TopSurface = 0
    ax.BottomSurface = 0
    ax.Transparency = 0
    ax.Locked = true
    ax.BrickColor = Color
    ax.Shape = "Ball"
    ax.CanCollide = false
    ax.CFrame = cf
    ax.Anchored = true
    local SMMx = nil
    if SMM then
      SMMx = Instance.new("SpecialMesh", ax)
      SMMx.MeshId = SMM
      SMMx.Scale = Vector3.new(1, 1, 1)
    end
    coroutine.wrap(function()
    for i = 1, 20 do
      if SMM then
        SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1, 3) + 2, math.random(1, 3) + 2, math.random(1, 3) + 2)
      else
        ax.Size = ax.Size + Vector3.new(math.random(1, 3) + 1, math.random(1, 3) + 1, math.random(1, 3) + 1)
      end
      ax.Transparency = ax.Transparency + 0.05
      ax.CFrame = cf
      Wait()
    end
    ax:Destroy()
  end
)()
  end
end

  ParticleEmit = function(Object, Color, Duration)
  local Counter = 0
  coroutine.wrap(function()
    while Wait(0.3) do
      if Counter == Duration then
        break
      end
      local p = Instance.new("Part", Object.Parent)
      do
        p.Name = "Trail"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Anchored = true
        p.CanCollide = false
        p.FormFactor = "Custom"
        p.Size = Vector3.new(0.01, 0.01, 0.01)
        if Color and (type(Color) ~= "userdata" or not Color) then
          p.BrickColor = BrickColor.new(Color)
          p.CFrame = Object.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1) - 3, math.random(-1, 1))
          do
            local m = Instance.new("BlockMesh", p)
            m.Scale = Vector3.new(2, 2, 2)
            coroutine.wrap(function()
      for i = 1, 15 do
        p.Transparency = i / 15
        m.Scale = m.Scale + Vector3.new(0.1, 0.1, 0.1)
        p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5, 5) / 20, 0.5, math.random(-5, 5) / 20)) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / i, math.random(-10, 10) / i, 0.5)
        Wait()
      end
      p:Destroy()
    end
)()
            -- DECOMPILER ERROR at PC87: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC87: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)()
  if Duration == math.huge then
    return 
  end
  coroutine.wrap(function()
    while 1 do
      if Wait(1) then
        Counter = Counter + 1
      end
      if Counter == Duration then
        break
      end
    end
  end
)()
end

  SlowParticleEmit = function(Object)
  coroutine.wrap(function()
    while Wait(3.2) do
      if not Object then
        break
      end
      local p = Instance.new("Part", Object.Parent)
      do
        p.Name = "Trail"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Anchored = true
        p.CanCollide = false
        p.FormFactor = "Custom"
        p.Size = Vector3.new(0.01, 0.01, 0.01)
        p.BrickColor = BrickColor.new("Toothpaste")
        p.CFrame = Object.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1) - 3, math.random(-1, 1))
        local m = Instance.new("BlockMesh", p)
        m.Scale = Vector3.new(2, 2, 2)
        coroutine.wrap(function()
      for i = 1, 15 do
        p.Transparency = i / 15
        m.Scale = m.Scale + Vector3.new(0.1, 0.1, 0.1)
        p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5, 5) / 20, 0.5, math.random(-5, 5) / 20)) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / i, math.random(-10, 10) / i, 0.5)
        Wait()
      end
      p:Destroy()
    end
)()
      end
    end
  end
)()
end

  checkRange = function()
  local range = torso.Position - OrbModel.PurplePart.Position.magnitude
  local cftos = torso.CFrame:pointToObjectSpace(OrbModel.PurplePart.Position)
  if range < 100 and cftos.Z <= 0 then
    return false
  end
  return true
end

  expandDong = function(ctarg)
  if not ctarg or not ctarg then
    local nTarg = OrbModel.PurplePart
  end
  local Orbi = Instance.new("Part")
  Orbi.Size = Vector3.new(3, 3, 3)
  Orbi.CanCollide = false
  Orbi.Locked = true
  Orbi.Shape = "Ball"
  Orbi.Anchored = true
  Orbi.Transparency = 0.6
  Orbi.TopSurface = 0
  Orbi.Name = "Expand Dong"
  Orbi.BrickColor = BrickColor.new("Toothpaste")
  local OrbiMesh = Instance.new("SpecialMesh", Orbi)
  OrbiMesh.Name = "Dxpand Eong"
  OrbiMesh.Scale = Vector3.new(2, 2, 2)
  OrbiMesh.MeshType = "Sphere"
  coroutine.wrap(function()
    for i,v in pairs(IsNear(nTarg.Position, 15, nil, true)) do
      if Damaged[v:FindFirstChild("Humanoid")] and tick() - Damaged[v:FindFirstChild("Humanoid")] < 1 then
        return 
      end
      local calc = getDPS() * 1.4
      healHuman(v:FindFirstChild("Humanoid"), calc)
      logDamage("Holy Burst", calc)
      Damaged[v:FindFirstChild("Humanoid")] = tick()
    end
  end
)()
  Orbi.Parent = char
  ypcall(function()
    for i = 3, 0, -1 do
      wait(0.05)
      OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(0.6, 0.6, 0.6)
      Orbi.CFrame = nTarg.CFrame
    end
    for i = 0.6, 1, 0.05 do
      wait(0.04)
      Orbi.Transparency = i
    end
    Orbi:Destroy()
  end
)
end

  useMana = function(amount)
  local precalc = stats.Mana - amount
  if stats.Mana < 0 then
    return false
  end
  if precalc < 0 then
    return false
  end
  stats.Mana = precalc
  return true
end

  recount = function()
  local totl = {}
  local addUp = function(tbl)
    local total = 0
    for i,v in next do
      total = total + v
    end
    return total
  end

  local avg = function(tbl)
    local num = #tbl
    local nom = addUp(tbl)
    return nom / num
  end

  warn("RECOUNT - All Data")
  for i,v in pairs(recountData) do
    local qq = addUp(v)
    print(i .. ": " .. qq .. " (" .. math.ceil(avg(v)) .. ")")
    table.insert(totl, qq)
  end
  warn("TOTAL: " .. addUp(totl))
end

  logDamage = function(skill, damage)
  if not recountData[skill] then
    recountData[skill] = {}
  end
  local tbl = recountData[skill]
  table.insert(tbl, damage)
end

  getDPS = function()
  local crit = math.random(1, 15)
  do
    local DPS = stats.Intellect * (crit > 11 and stats.CriticalStrikeBonus or 1.5)
    DPS = math.ceil(DPS)
    lastdps = tick()
    do return DPS, (crit > 13 and false) end
    -- DECOMPILER ERROR: 2 unprocessed JMP targets
  end
end

  healHuman = function(hum, d)
  if not hum then
    return 
  end
  if hum.Health <= 0 then
    return 
  end
  pcall(function()
    hum.Parent.Health.Disabled = true
  end
)
  if not Enemy[hum] then
    local abs = hum.Health - hum.MaxHealth + d
    if hum.MaxHealth * 1.5 <= abs then
      return 
    end
    hum:TakeDamage(-math.ceil(d))
    logDamage("Healing done", math.ceil(d))
  else
    do
      if hum:findFirstChild("Shielding") then
        return 
      end
      do
        local twenty = hum.MaxHealth * 0.25
        if hum.Health <= twenty then
          d = d * 1.6
        end
        hum.Health = hum.Health - math.ceil(d / 2)
        logDamage("Damage done", math.ceil(d) / 2)
        if math.random(0, 100) > 75 and not shadowform then
          stats.Shards = stats.Shards + 1
        end
      end
    end
  end
end

  damageHuman = function(hum, d, hit)
  if hum.Health <= 0 then
    return 
  end
  if hum:findFirstChild("Shielding") then
    return 
  end
  pcall(function()
    hum.Parent.Health.Disabled = true
  end
)
  Title("-" .. math.ceil(d), hit.Parent and ((hit.Parent == "Workspace" or not hit.Parent:findFirstChild("Head")) and Instance.new("Model")), Color3.new(1, 0, 0), true, false)
  hum.Health = hum.Health - math.ceil(d)
  if hum.Health <= 0 then
    logDamage("Kills", 1)
  end
  -- DECOMPILER ERROR: 3 unprocessed JMP targets
end

  dot.VoidDrain = function(self)
  if not currentTarget then
    return 
  end
  if not shadowform then
    return 
  end
  if currentTarget == hum then
    return 
  end
  local ct = currentTarget
  if ct:findFirstChild(plr.Name .. "void") then
    return 
  end
  local Object = currentTarget.Parent.Torso
  local Voided = Instance.new("Model", ct)
  Voided.Name = plr.Name .. "void"
  local debouncing = true
  for i = 1, 6 do
    do
      coroutine.wrap(function()
    while debouncing do
      if not Object then
        break
      end
      local p = Instance.new("Part", Object)
      do
        p.Name = "Trail"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Anchored = true
        p.CanCollide = false
        p.Size = Vector3.new(0.01, 0.01, 0.01)
        p.BrickColor = BrickColor.new(i < 4 and "Toothpaste" or "Black")
        p.CFrame = Object.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1) - 3, math.random(-1, 1))
        local m = Instance.new("BlockMesh", p)
        m.Scale = Vector3.new(2, 2, 2)
        coroutine.wrap(function()
      for i = 1, 15 do
        p.Transparency = i / 15
        m.Scale = m.Scale + Vector3.new(0.1, 0.1, 0.1)
        p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5, 5) / 20, 0.5, math.random(-5, 5) / 20)) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / i, math.random(-10, 10) / i, 0.5)
        Wait()
      end
      p:Destroy()
    end
)()
        wait(0.3)
      end
    end
  end
)()
    end
  end
  for i = 40, 0, -1 do
    damageHuman(ct, getDPS() * 0.25, Object)
    wait(0.2)
  end
  debouncing = false
  Voided:Destroy()
end

  dot.ShadowWordPain = function(self)
  if not currentTarget then
    return 
  end
  if not shadowform then
    return 
  end
  if currentTarget == hum then
    return 
  end
  local ct = currentTarget
  if ct:findFirstChild(plr.Name .. "pain") then
    return 
  end
  local Object = currentTarget.Parent.Torso
  local InPain = Instance.new("Model", ct)
  InPain.Name = plr.Name .. "pain"
  for i = 10, 0, -1 do
    damageHuman(ct, getDPS() * 2, Object)
    wait(3)
  end
  InPain:Destroy()
end

  Tag = function(Humanoid)
  local c = Instance.new("ObjectValue", Humanoid)
  c.Value = plr
  c.Name = "creator"
end

  CloneCharacter = function()
  Character.Archivable = true
  local Clone = Character:Clone()
  for i,v in pairs(Clone:GetChildren()) do
    if v:IsA("BasePart") then
      v.Transparency = 0.1
      v.Reflectance = 0.1
    end
  end
  Character.Archivable = false
  Clone.Parent = game:service("Workspace")
  Clone.Archivable = false
  game:service("Debris"):AddItem(Clone, 9)
  return Clone
end

  searchForHumanoid = function(thing)
  for _,v in pairs(thing:children()) do
    if v:IsA("Humanoid") then
      return v
    end
  end
  return false
end

  CreateUI = function(Player)
  local this = {
Debounces = {HelpOpen = false, CoolDownOpen = false, NameShowing = true}
}
  local Create = function(ty)
    return function(data)
      local obj = Instance.new(ty)
      for k,v in pairs(data) do
        if type(k) == "number" then
          v.Parent = obj
        else
          obj[k] = v
        end
      end
      return obj
    end

  end

  local Thread = function(f)
    assert(type(f) == "function", "bad argument #1 \'function\' expected got " .. type(f))
    do return coroutine.resume(coroutine.create(f)) end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end

  local Bishop = Create("ScreenGui")({Parent = Player.PlayerGui, Name = "Bishop", Archivable = true})
  local Background = Create("Frame")({Visible = true, Active = false, Parent = Bishop, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(0, 305, 0, 300), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.DropShadow, BackgroundTransparency = 0, Position = UDim2.new(1, -305, 0.5, -50), BorderSizePixel = 1, Name = "Background", BackgroundColor3 = Color3.new(1, 1, 1)})
  local mTitle = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = Background, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 20), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 0), Name = "Title", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local BreakLine = Create("Frame")({Visible = true, Active = false, Parent = mTitle, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 0, 1), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.Custom, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 1, 6), BorderSizePixel = 0, Name = "BreakLine", BackgroundColor3 = Color3.new(1, 1, 1)})
  local Stats = Create("Frame")({Visible = true, Active = false, Parent = Background, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 1, -30), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.Custom, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 1, -250), BorderSizePixel = 1, Name = "Stats", BackgroundColor3 = Color3.new(1, 1, 1)})
  local Health = Create("Frame")({Visible = true, Active = false, Parent = Stats, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.Custom, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 0, 0), BorderSizePixel = 0, Name = "Health", BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059)})
  local hText = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = Health, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, -8, 1, -8), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Health: 100/100", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 4, 0, 4), Name = "hText", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 0.207843, 0.211765), ZIndex = 2})
  local hStatus = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = Health, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, -8, 1, -8), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 4, 0, 4), Name = "hStatus", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 0.207843, 0.211765)})
  local Mana = Create("Frame")({Visible = true, Active = false, Parent = Stats, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.Custom, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 0, 35), BorderSizePixel = 0, Name = "Mana", BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059)})
  local fText = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = Mana, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, -8, 1, -8), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Mana: 100/100", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 4, 0, 4), Name = "fText", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 0.976471, 0.278431), ZIndex = 2})
  local fStatus = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = Mana, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, -8, 1, -8), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 4, 0, 4), Name = "fStatus", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.66666666666667)})
  local CP = Create("Frame")({Visible = true, Active = false, Parent = Stats, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.Custom, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 0, 70), BorderSizePixel = 0, Name = "CP", BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059)})
  local cText = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = CP, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, -8, 1, -8), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Shards: 0/0", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 4, 0, 4), Name = "cText", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(0.298039, 1, 0.25098), ZIndex = 2})
  local cStatus = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = CP, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, -8, 1, -8), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 4, 0, 4), Name = "cStatus", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Target = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = Stats, BorderSizePixel = 1, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Target: Darkus_Theory", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 105), Name = "Target", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local TargetHp = Create("Frame")({Visible = true, Active = false, Parent = Stats, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.Custom, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 0, 140), BorderSizePixel = 0, Name = "TargetHp", BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059)})
  local tText = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = TargetHp, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, -8, 1, -8), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Target Health: 100/100", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 4, 0, 4), Name = "tText", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 0.207843, 0.211765), ZIndex = 2})
  local tStatus = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size28, Active = false, Parent = TargetHp, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, -8, 1, -8), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 4, 0, 4), Name = "tStatus", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 0.207843, 0.211765)})
  local Anim = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size24, Active = false, Parent = Stats, BorderSizePixel = 1, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 20), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Animation: Idle", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 175), Name = "Anim", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Buttons = Create("Frame")({Visible = true, Active = false, Parent = Stats, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 0, 60), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.Custom, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 1, -60), BorderSizePixel = 1, Name = "Buttons", BackgroundColor3 = Color3.new(1, 1, 1)})
  local HideName = Create("TextButton")({Visible = true, TextWrapped = false, Active = true, TextStrokeTransparency = 1, SizeConstraint = Enum.SizeConstraint.RelativeXY, BorderSizePixel = 1, Draggable = false, Modal = false, AutoButtonColor = true, TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1), TextStrokeColor3 = Color3.new(0, 0, 0), Selected = false, Archivable = true, Size = UDim2.new(0, 90, 0, 30), TextXAlignment = Enum.TextXAlignment.Center, FontSize = Enum.FontSize.Size18, Parent = Buttons, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Hide Name", TextWrap = false, TextTransparency = 0, Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 4, 1, -35), TextColor3 = Color3.new(1, 1, 1), Style = Enum.ButtonStyle.RobloxRoundDefaultButton, Name = "HideName"})
  local Controls = Create("TextButton")({Visible = true, TextWrapped = false, Active = true, TextStrokeTransparency = 1, SizeConstraint = Enum.SizeConstraint.RelativeXY, BorderSizePixel = 1, Draggable = false, Modal = false, AutoButtonColor = true, TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1), TextStrokeColor3 = Color3.new(0, 0, 0), Selected = false, Archivable = true, Size = UDim2.new(0, 90, 0, 30), TextXAlignment = Enum.TextXAlignment.Center, FontSize = Enum.FontSize.Size18, Parent = Buttons, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Controls", TextWrap = false, TextTransparency = 0, Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(1, -94, 1, -35), TextColor3 = Color3.new(1, 1, 1), Style = Enum.ButtonStyle.RobloxRoundDefaultButton, Name = "Controls"})
  local CoolDownsButton = Create("TextButton")({Visible = true, TextWrapped = false, Active = true, TextStrokeTransparency = 1, SizeConstraint = Enum.SizeConstraint.RelativeXY, BorderSizePixel = 1, Draggable = false, Modal = false, AutoButtonColor = true, TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1), TextStrokeColor3 = Color3.new(0, 0, 0), Selected = false, Archivable = true, Size = UDim2.new(0, 90, 0, 30), TextXAlignment = Enum.TextXAlignment.Center, FontSize = Enum.FontSize.Size18, Parent = Buttons, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Cooldowns", TextWrap = false, TextTransparency = 0, Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 99, 1, -35), TextColor3 = Color3.new(1, 1, 1), Style = Enum.ButtonStyle.RobloxRoundDefaultButton, Name = "CoolDowns"})
  local Status = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size24, Active = false, Parent = Stats, BorderSizePixel = 1, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 20), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Status: Normal", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 195), Name = "Status", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local CoolDowns = Create("Frame")({Visible = true, Active = false, Parent = Background, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 20, 0, 100), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.DropShadow, BackgroundTransparency = 0, Position = UDim2.new(1, 10, 0, -105), BorderSizePixel = 1, Name = "CoolDowns", BackgroundColor3 = Color3.new(1, 1, 1)})
  local Flashheal = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size14, Active = false, Parent = CoolDowns, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(0, 90, 0, 35), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Flashheal", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 0, 0), Name = "Flashheal", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 0.376471, 0.439216)})
  local Burst = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size14, Active = false, Parent = CoolDowns, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(0, 90, 0, 35), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Burst", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 100, 0, 0), Name = "Burst", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(0.329412, 0.898039, 0.282353)})
  local Totem = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size14, Active = false, Parent = CoolDowns, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(0, 90, 0, 35), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Totem", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(1, -90, 0, 0), Name = "Totem", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(0.270588, 0.85098, 1)})
  local HealingTouch = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size14, Active = false, Parent = CoolDowns, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(0, 110, 0, 35), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Healing Touch", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 0, 45), Name = "Healing Touch", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(0.694118, 0.298039, 0.701961)})
  local Shadowmeld = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size14, Active = false, Parent = CoolDowns, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(0, 70, 0, 35), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Shadowmeld", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(0, 120, 0, 45), Name = "Shadowmeld", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(0.839216, 0.854902, 0.32549)})
  local Shield = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size14, Active = false, Parent = CoolDowns, BorderSizePixel = 0, TextStrokeTransparency = 0.69999998807907, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(0, 90, 0, 35), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Shield", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 0, Position = UDim2.new(1, -90, 0, 45), Name = "Shield", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(0.466667, 0.466667, 0.466667)})
  local Help = Create("Frame")({Visible = true, Active = false, Parent = Bishop, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(0, 500, 0, 300), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.DropShadow, BackgroundTransparency = 0, Position = UDim2.new(1, 0, 0.5, -150), BorderSizePixel = 1, Name = "Help", BackgroundColor3 = Color3.new(1, 1, 1)})
  local Title = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size24, Active = false, Parent = Help, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "Bishop Controls", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 0), Name = "Title", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Border = Create("Frame")({Visible = true, Active = false, Parent = Title, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 0, 1), Draggable = false, ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Style = Enum.FrameStyle.Custom, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 1, 0), BorderSizePixel = 0, Name = "Border", BackgroundColor3 = Color3.new(1, 1, 1)})
  local Content = Create("ScrollingFrame")({Visible = true, Active = false, Parent = Help, SizeConstraint = Enum.SizeConstraint.RelativeXY, Archivable = true, Size = UDim2.new(1, 0, 1, -65), Draggable = false, ClipsDescendants = true, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), ScrollBarThickness = 7, BackgroundTransparency = 0, Position = UDim2.new(0, 0, 0, 35), BorderSizePixel = 0, Name = "Content", BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549), CanvasSize = UDim2.new(1, 0, 1.45, 0)})
  local Line7 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[V]  -  [Totem]: Places a Healing Stream Totem", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 190), Name = "Line7", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line6 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[E  -  [Healing Touch]: Instant heal on current target.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 160), Name = "Line6", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line5 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[Q]  -  [Flash Heal]: Heals target over time.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 130), Name = "Line5", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line4 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[G]  -  [Target Toggle]: Toggles enemy/ally on your current target.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 95), Name = "Line4", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line3 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 40), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[Y]  -  [Retreat]: Brings your target back to yourself.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 60), Name = "Line3", TextYAlignment = Enum.TextYAlignment.Top, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line2 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[T]  -  [Target]: Sets the targeted player.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 30), Name = "Line2", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line1 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = false, TextWrap = false, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[Ctrl+Jump]: Teleportation forward", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 0), Name = "Line1", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line8 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[Z]  -  [Shadowmeld]: Hides your character.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 220), Name = "Line8", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line9 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[X]  -  [Shield]: Shields you from damage and heals/damages nearby players.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 250), Name = "Line9", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line10 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[R]  -  [ShadowSight]: Monitor your target", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 280), Name = "Line10", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line11 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[Q]  -  [Shadow Word:Pain]: Deals large amount of damage over time. (Requires Shadow Form)", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 310), Name = "Line11", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line12 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[E]  -  [Void Drain]: Deals immense damage in a quick period of time. (Requires Shadow Form)", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 340), Name = "Line12", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line13 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "[ALT]  -  [Shadowform]: Allows for a wider range of shadow attacks in place of holy.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 370), Name = "Line13", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  local Line14 = Create("TextLabel")({Visible = true, FontSize = Enum.FontSize.Size18, Active = false, Parent = Content, BorderSizePixel = 1, TextStrokeTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, TextWrap = true, SizeConstraint = Enum.SizeConstraint.RelativeXY, TextTransparency = 0, Archivable = true, Size = UDim2.new(1, 0, 0, 30), Draggable = false, TextStrokeColor3 = Color3.new(0, 0, 0), ClipsDescendants = false, BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843), Text = "This class will provide a passive 60% damage boost to any melee or caster.", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.SourceSans, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 400), Name = "Line14", TextYAlignment = Enum.TextYAlignment.Center, TextScaled = false, BackgroundColor3 = Color3.new(1, 1, 1)})
  this.Skills = {FlashHeal = Flashheal, Burst = Burst, Totem = Totem, HealingTouch = HealingTouch, Shadowmeld = Shadowmeld, Shield = Shield}
  this.SetHealth = function(self, newHealth, MaxHealth)
    local OldSize = hStatus.Size
    hStatus.Size = UDim2.new(0, newHealth / MaxHealth * 281, 0, 22)
    hText.Text = "Health: " .. tostring(newHealth) .. "/" .. tostring(MaxHealth) .. " (" .. math.floor(newHealth / MaxHealth * 100) .. "%)"
  end

  HideName.MouseButton1Down:connect(function()
  end
)
  this.SetMana = function(self, int)
    local OldSize = fStatus.Size
    fStatus.Size = UDim2.new(0, int / 500 * 281, 0, 22)
    fText.Text = "Mana: " .. tostring(int) .. "/500" .. " (" .. math.floor(int / 500 * 100) .. "%)"
  end

  this.SetCT = function(self, int)
    local OldSize = cStatus.Size
    cStatus.Size = UDim2.new(0, int / 6 * 281, 0, 22)
    cText.Text = "Shards: " .. tostring(int) .. "/6"
  end

  this.SetTarget = function(self, targ)
    if targ == "No Target" then
      Target.Text = "No Target"
    else
      Target.Text = (isEnemy() and "Enemy" or "Ally") .. ": " .. targ
    end
  end

  this.SetTH = function(self, newHealth, MaxHealth)
    if not type(newHealth) == "number" then
      newHealth = 0
    end
    if not type(MaxHealth) == "number" then
      MaxHealth = 0
    end
    local OldSize = tStatus.Size
    tStatus.Size = UDim2.new(0, newHealth / MaxHealth * 281, 0, 22)
    tText.Text = "Health: " .. tostring(newHealth) .. "/" .. tostring(MaxHealth) .. (newHealth > 0 and " (" .. math.floor(newHealth / MaxHealth * 100) .. "%)" or "")
  end

  this.SetTitle = function(self)
    mTitle.Text = "~~~~ %s ~~~~":format(script.Name)
  end

  this.ToggleHelp = function(self)
    Thread(function()
      if this.Debounces.HelpOpen == true then
        Help:TweenPosition(UDim2.new(1, 0, 0.5, -150), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1)
        this.Debounces.HelpOpen = false
      else
        if this.Debounces.HelpOpen == false then
          Help:TweenPosition(UDim2.new(0.5, -320, 0.5, -150), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1)
          this.Debounces.HelpOpen = true
        end
      end
    end
)
  end

  this.ToggleCD = function(self)
    Thread(function()
      if this.Debounces.CoolDownOpen == true then
        CoolDowns:TweenPosition(UDim2.new(1, 10, 0, -105), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1)
        this.Debounces.CoolDownOpen = false
      else
        if this.Debounces.CoolDownOpen == false then
          CoolDowns:TweenPosition(UDim2.new(0, -10, 0, -105), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1)
          this.Debounces.CoolDownOpen = true
        end
      end
    end
)
  end

  this.SetCD = function(self, skill, int)
    assert(this.Skills[skill] ~= nil, "not a valid skill")
    do
      local Skill = this.Skills[skill]
      if int > 0 then
        Skill.Text = skill .. ": " .. tostring(int) .. "s"
      else
        Skill.Text = skill
      end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end

  this.SetAnim = function(self, s)
    Anim.Text = "Animation: " .. tostring(s)
  end

  this.SetStatus = function(self, s)
    Status.Text = "Status: " .. tostring(s)
  end

  Controls.MouseButton1Down:connect(function()
    this:ToggleHelp()
  end
)
  CoolDownsButton.MouseButton1Down:connect(function()
    this:ToggleCD()
  end
)
  return this
end

  local UI = CreateUI(game.Players.LocalPlayer)
  Title = function(txt, part, color, rise, spell)
  local col = color
  local Gui = Instance.new("BillboardGui", part)
  Gui.Name = "3DGUI"
  Gui.ExtentsOffset = Vector3.new(0, 2, 0)
  Gui.Size = UDim2.new(8, 0, 2, 0)
  local Tit = Instance.new("TextLabel", Gui)
  Tit.Name = "Gooey"
  Tit.TextColor3 = col
  Tit.TextTransparency = 0.25
  Tit.TextStrokeColor3 = col
  Tit.TextStrokeTransparency = 1
  Tit.Size = UDim2.new(1, 0, 1, 0)
  Tit.BackgroundTransparency = 1
  Tit.Font = "Arial"
  Tit.TextScaled = true
  Tit.Text = txt
  if rise then
    if not tonumber(rise) then
      rise = 6
    end
    coroutine.wrap(function()
    if not spell or not 0 then
      local randvar = math.random(-4, 4)
    end
    while Tit.Parent and Gui.Parent and wait() do
      Gui.ExtentsOffset = Gui.ExtentsOffset + Vector3.new(0.025 * randvar, 0.025 * rise, 0.025)
    end
  end
)()
  end
  game:service("Debris"):AddItem(Gui, 2)
  return Tit
end

  DamageNear = function(Pos, Mag, Dmg, x)
  local Targets, HitAlready = {}, {}
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") then
      for _,x in pairs(v:GetChildren()) do
        if x:IsA("BasePart") and Pos - x.Position.magnitude <= Mag then
          table.insert(Targets, v)
        end
      end
    end
  end
  for i,v in pairs(Targets) do
    if not HitAlready[v.Name] then
      ypcall(function()
  end
)
      HitAlready[v.Name] = true
    end
  end
end

  weld = function(thing1, thing2)
  local a = Instance.new("Weld")
  pcall(function()
    a.Parent = thing1
    a.Part0 = thing1
    a.Part1 = thing2
    a.C0 = thing1.CFrame:inverse() * thing2.CFrame
  end
)
  return a
end

  IsNear = function(Position, Distance, SinglePlayer, db)
  if SinglePlayer.Torso.CFrame.p - Position.magnitude >= Distance then
    do return not SinglePlayer end
    do
      local List = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v.Torso.CFrame.p - Position.magnitude < Distance then
          table.insert(List, v)
        end
      end
      do return List end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end

  shadowForm = function()
  if checkCooldown("Shadowform") then
    return 
  end
  setCooldown("Shadowform", 5)
  if not shadowform then
    if stats.Shards < 6 then
      return 
    end
    shadowform = true
    stats.Shards = 0
    local cParts = {}
    do
      getAllParts = function(q)
    for i,v in pairs(q:children()) do
      if v:IsA("BasePart") then
        table.insert(cParts, v)
      end
      getAllParts(v)
    end
  end

      getAllParts(char)
      for no,prt in next do
        if prt ~= rootpart then
          prt.Transparency = 0.1
        end
      end
      for asd,dsa in next do
        if dsa:IsA("BasePart") then
          dsa.BrickColor = BrickColor.new("Really black")
        end
      end
      coroutine.wrap(function()
    btimer = 15
    while btimer > 0 do
      wait(1)
      btimer = btimer - 1
    end
    if shadowform then
      shadowForm()
    end
  end
)()
    end
  else
    do
      shadowform = false
      btimer = 0
      local cParts = {}
      getAllParts = function(q)
    for i,v in pairs(q:children()) do
      if v:IsA("BasePart") then
        table.insert(cParts, v)
      end
      getAllParts(v)
    end
  end

      getAllParts(char)
      for no,prt in next do
        if prt ~= rootpart then
          prt.Transparency = 0
        end
      end
      local prts = {Head = true, ["Right Arm"] = true, ["Left Arm"] = true, ["DK Hood"] = true}
      for asd,dsa in next do
        if prts[dsa.Name] then
          dsa.BrickColor = BrickColor.new("White")
        end
      end
    end
  end
end

  createOrb = function()
  local Orb = Instance.new("Model")
  Orb.Name = "OrbModel"
  local PurplePart = Instance.new("Part", Orb)
  PurplePart.BrickColor = BrickColor.new("White")
  PurplePart.Anchored = true
  PurplePart.Locked = true
  PurplePart.CanCollide = false
  PurplePart.Name = "PurplePart"
  PurplePart.Material = "Plastic"
  PurplePart.Size = Vector3.new(1, 1, 1)
  PurplePart.BottomSurface = Enum.SurfaceType.Smooth
  PurplePart.TopSurface = Enum.SurfaceType.Smooth
  PurpleMesh = Instance.new("SpecialMesh", PurplePart)
  PurpleMesh.MeshType = Enum.MeshType.Sphere
  PurpleMesh.Name = "Mesh"
  PurpleMesh.VertexColor = Vector3.new(1, 0, 1)
  PurpleMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
  local Ring = Instance.new("Part", PurplePart)
  Ring.Name = "BlastRing"
  Ring.TopSurface = 0
  Ring.BottomSurface = 0
  Ring.CanCollide = false
  Ring.Anchored = true
  Ring.Locked = true
  Ring.Material = "Neon"
  Ring.BrickColor = BrickColor.new("Toothpaste")
  Ring.Size = Vector3.new(1, 1, 1)
  local RingMesh = Instance.new("SpecialMesh", Ring)
  RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
  RingMesh.Name = "BlastMesh"
  RingMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
  local target = Instance.new("Model")
  target.Parent = PurplePart
  target.Name = "nil"
  Orb.Parent = char
  OrbModel = Orb
  local Light = Instance.new("PointLight", PurplePart)
  Light.Name = "HeadLight"
  Light.Color = Color3.new(0, 0, 0.7843137254902)
  Light.Range = 6
  Light.Brightness = 20
  local con = game:GetService("RunService").RenderStepped:connect(function()
    local Targ = nil
    if not currentTarget then
      Targ = hum
    else
      Targ = currentTarget
    end
    local c = math.abs(math.cos(tick()))
    if c <= 0.6 then
      c = 0.6
    end
    PurpleMesh.Scale = Vector3.new(c * 1.1, c * 1.1, c * 1.1)
    RingMesh.Scale = Vector3.new(c * 1.1, c * 1.1, c * 1.1)
    if isEnemy() then
      target.Name = "Enemy"
    else
      target.Name = "Ally"
    end
    pcall(function()
      if isEnemy() then
        Targ.NMH:Destroy()
        Targ.MaxHealth = Targ.MaxHealth - 100
      else
        Targ.MaxHealth = Targ.NMH.Value + 75
      end
    end
)
    target.Parent = Targ
    if Targ:FindFirstChild("FlashHeal") then
      ms = "Toothpaste"
      ss = "White"
    else
      if Targ:FindFirstChild("HealingTouch") then
        ms = "Bright violet"
        ss = "Lime green"
      else
        ms = "Institutional white"
        ss = "Toothpaste"
      end
    end
    PurplePart.BrickColor = BrickColor.new(ms)
    Ring.BrickColor = BrickColor.new(ss)
    pcall(function()
      PurplePart.CFrame = PurplePart.CFrame:lerp(Targ.Parent and Targ.Parent or char.Head.CFrame * CFrame.new(0, 3, 0), 0.5)
      Ring.CFrame = CFrame.new(PurplePart.Position) * CFrame.fromEulerAnglesXYZ(-math.rad(80 + math.sin(tick()) * 8), 0, math.rad(80 + math.sin(tick()) * 15))
    end
)
  end
)
  local chnge = function(a)
    if a == "Name" then
      Orb:Destroy()
      con:disconnect()
      createOrb()
    else
      if a == "Parent" then
        Orb:Destroy()
        con:disconnect()
        createOrb()
      else
        if a == "Anchored" then
          Orb:Destroy()
          con:disconnect()
          createOrb()
        else
          if a == "Locked" then
            Orb:Destroy()
            con:disconnect()
            createOrb()
          end
        end
      end
    end
  end

  Orb.Changed:connect(chnge)
  Ring.Changed:connect(chnge)
  PurplePart.Changed:connect(chnge)
  return Orb
end

  isEnemy = function()
  if currentTarget == hum then
    return 
  end
  if Enemy[currentTarget] then
    return true
  end
  return false
end

  toggleEnemy = function()
  if currentTarget == hum then
    return 
  end
  pcall(function()
    if Enemy[currentTarget] then
      Enemy[currentTarget] = nil
    else
      Enemy[currentTarget] = true
    end
  end
)
end

  Ringz = function(part, col)
  for i = 1, 6 do
    do
      local p = Instance.new("Part", Character)
      do
        p.Name = "BlastRing"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.CanCollide = false
        p.Anchored = true
        p.BrickColor = BrickColor.new(col)
        p.Size = Vector3.new(1, 1, 1)
        p.CFrame = CFrame.new(part.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50) / 30)
        local rm = Instance.new("SpecialMesh", p)
        rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rm.Name = "BlastMesh"
        rm.Scale = Vector3.new(1, 1, 1)
        coroutine.wrap(function()
    for n = 1, 15 do
      rm.Scale = rm.Scale + Vector3.new(3.2 + i / 5, 3.2 + i / 5, 0.1) * 0.8
      if 2 + i / 5 == 1.2 then
        rm.Scale = rm.Scale + Vector3.new(0, 0.9, 0)
      end
      p.Transparency = n / 15
      p.CFrame = p.CFrame * CFrame.new(0, 0.01, 0) * CFrame.fromEulerAnglesXYZ(math.random(-20, 20) / 50, math.random(-20, 20) / 70, 0)
      Wait()
    end
    p:Destroy()
  end
)()
      end
    end
  end
end

  hum.JumpPower = 10
  Character.Humanoid.Jumping:connect(function()
  if Jumping then
    return 
  end
  if hum.WalkSpeed < 8 then
    return 
  end
  if Ctrl and useMana(5) then
    rootpart.CFrame = rootpart.CFrame * CFrame.new(0, 0, -10)
    return 
  end
  Mode = "Jumping"
  Jumping = true
  local vu = Instance.new("BodyVelocity", torso)
  vu.P = 500
  vu.maxForce = Vector3.new(10000000000, 5e+021, 100000000000)
  vu.velocity = Vector3.new(head.CFrame.lookVector.X * 10, 40, head.CFrame.lookVector.Z * 10)
  game:GetService("Debris"):AddItem(vu, 0.267)
  wait(0.6)
  Jumping = false
end
)
  hum.Died:connect(function()
  plr.CameraMaxZoomDistance = math.huge
  recount()
end
)
  Search = false
  farSight = function()
  if Search == false then
    Search = true
    for i,v in pairs(game.Players:getPlayers()) do
      if v.Name ~= char.Name and v.Character then
        for j,k in pairs(v.Character:GetChildren()) do
          if k:IsA("BasePart") and k.Transparency >= 1 then
            bawx = Instance.new("SelectionBox", camera)
            bawx.Color = BrickColor.new("Bright red")
            bawx.Transparency = 0.5
            bawx.Adornee = k
          end
        end
      end
    end
    camera.CameraSubject = OrbModel.PurplePart
  else
    if Search == true then
      Search = false
      for i,v in pairs(camera:GetChildren()) do
        if v:IsA("SelectionBox") then
          v:Destroy()
        end
      end
      camera.CameraSubject = hum
    end
  end
end

  updateCooldowns = function()
  local Skills = {FlashHeal = true, Burst = true, Totem = true, HealingTouch = true, Shadowmeld = true, Shield = true}
  for i,v in pairs(Skills) do
    if Cooldowns[i] then
      local data = math.ceil(Cooldowns[i].timeRequired - (tick() - Cooldowns[i].startTime))
      if not data then
        data = -1
      end
      UI:SetCD(tostring(i), data)
    end
  end
end

  lerp = function(weld, beglerp, endlerp, speed)
  weld.C0 = beglerp:lerp(endlerp, speed)
  return weld.C0
end

  Alert = function(txt, color, font, fontsize)
  local Colorz = {Red = Color3.new(1, 0, 0), Green = Color3.new(0, 1, 0), Blue = Color3.new(0, 0, 1), Purple = Color3.new(1, 1, 0), Black = Color3.new(0, 0, 0), White = Color3.new(1, 1, 1), Orange = Color3.new(1, 0.5, 0), Yellow = Color3.new(1, 1, 0)}
  game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {Text = txt and txt or "nil", Color = Color3.new(0.8, 0, 0), Font = ((color and Colorz[color]) or font) and font or "SourceSansLight", FontSize = fontsize and fontsize or "Size14"})
end

  giveBuff = function(buffName, stat, duration, addition, targ)
  local nTarg = nil
  nTarg = targ or currentTarget
  if not nTarg then
    nTarg = hum
  end
  local pckt = Instance.new("Model")
  pckt.Name = "BUFF:" .. buffName
  pckt.Parent = workspace.Terrain
  local Stat = Instance.new("StringValue")
  Stat.Name = "Stat"
  Stat.Value = stat
  Stat.Parent = pckt
  local Duration = Instance.new("StringValue")
  Duration.Name = "Duration"
  Duration.Value = duration
  Duration.Parent = pckt
  local Addition = Instance.new("StringValue")
  Addition.Name = "Addition"
  Addition.Value = addition
  Addition.Parent = pckt
  wait()
  pckt.Parent = nTarg
end

  hum.ChildAdded:connect(function(obj)
  if obj.Name:sub(1, 5) == "BUFF:" then
    if Buffs[obj.Name] then
      return 
    end
    Buffs[obj.Name] = obj
    local stat, dura, bnam, addi = nil, nil, nil, nil
    do
      stat = obj:WaitForChild("Stat").Value
      dura = obj:WaitForChild("Duration").Value
      bnam = obj.Name:sub(6)
      addi = obj:WaitForChild("Addition").Value
      if not stat then
        stat = "MainStat"
      end
      if not dura then
        dura = 10
      end
      if not addi then
        addi = 0
      end
      obj:Destroy()
      coroutine.wrap(function()
    Alert("Buff " .. bnam .. " received.", "White")
    if stat == "MainStat" then
      stat = "Agility"
    end
    if stat == "Health" then
      hum.MaxHealth = hum.MaxHealth + addi
      return 
    end
    if not stats[stat] then
      stats[stat] = 0
    end
    stats[stat] = stats[stat] + addi
    for i = 0, dura do
      wait(1)
    end
    Buffs[bnam] = nil
    Alert("Buff " .. bnam .. " faded.", "White")
    stats[stat] = stats[stat] - addi
  end
)()
    end
  end
end
)
  newStat("Mana", "NumberValue", 500)
  newStat("Shards", "NumberValue", 0)
  newStat("Intellect", "NumberValue", str)
  newStat("Haste", "NumberValue", hst)
  newStat("CriticalStrikeBonus", "NumberValue", 2)
  hum.WalkSpeed = 20
  hum.MaxHealth = 250
  wait()
  hum.Health = 250
  lastenrage = tick()
  hum.Changed:connect(function(val)
  if val == "MaxHealth" then
    hum.MaxHealth = 250
  else
    if val == "PlatformStand" then
      hum.PlatformStand = false
    else
      if val == "Health" then
        if hum.Health < ohp then
          lastdps = tick()
        end
        ohp = hum.Health
      else
        if val == "Sit" then
          Kneeling = true
        else
          if val == "WalkSpeed" and changing then
            hum.WalkSpeed = 0
            return 
          end
        end
      end
    end
  end
end
)
  regening = false
  lastdps = tick()
  regenHealth = function()
  if regening then
    return 
  end
  if tick() - lastdps < 10 then
    return 
  end
  regening = true
  local s = wait(1)
  local health = hum.Health
  do
    if health > 0 and health < hum.MaxHealth then
      local newHealthDelta = hum.MaxHealth * 0.03
      health = health + newHealthDelta
      hum.Health = math.min(health, hum.MaxHealth)
    end
    if hum.MaxHealth < hum.Health then
      hum.Health = hum.MaxHealth
    end
    regening = false
  end
end

  checkCooldown = function(ability)
  if not Cooldowns[ability] then
    return false
  end
  local trem = tick() - Cooldowns[ability].startTime
  if trem <= Cooldowns[ability].timeRequired then
    return true
  end
  return false
end

  setCooldown = function(ability, req)
  Cooldowns[ability] = {startTime = tick(), timeRequired = req}
end

  getRandomPlayer = function()
  local players = game:service("Players"):GetPlayers()
  if #players > 0 then
    local plrz = players[math.random(#players)]
    repeat
      if plrz.Name == plr.Name then
        wait()
        plrz = players[math.random(#players)]
      end
    until plrz.Name ~= plr.Name
    currentTarget = plrz
    Target(plrz)
    return plrz
  end
end

  getTarget = function()
  return currentTarget
end

  local mouse = plr:GetMouse()
  mouse.Button1Down:connect(function()
  lastclick = tick()
  if otheranims then
    return 
  end
  otheranims = true
  Mode = "Swipe"
  wait(0.5 + stats.Haste)
  otheranims = false
end
)
  randomCastSound = function()
  local ids = {182765513, 178452217, 331666004, 160867437, 331888685}
  quickSound(ids[math.random(1, #ids)], head, 0.8)
end

  lastpress = tick()
  KeyDown = function(key)
  local tar = getTarget()
  lastpress = tick()
  local cTarg = currentTarget and currentTarget or hum
  local healCalc = getDPS()
  if key ~= "t" and key ~= "r" and key ~= "g" and key ~= "x" and shielding and otheranims then
    return 
  end
  if (key == "q" or key == "e" or key == "f" or key == "x" or key == "b" or key:byte() == 52) and Stealthed then
    Shadowmeld()
  end
  do
    if key == "t" and mouse.Target and searchForHumanoid(mouse.Target.Parent) then
      local currTar = searchForHumanoid(mouse.Target.Parent)
      do
        currentTarget = currTar
      end
    end
    if key:byte() == 52 then
      shadowForm()
    else
      if key == "z" then
        if checkCooldown("Shadowmeld") then
          return 
        end
        if not useMana(35) then
          return 
        end
        setCooldown("Shadowmeld", 15)
        Shadowmeld()
        randomCastSound()
      else
        if key == "b" then
          if checkCooldown("Totem") then
            return 
          end
          if not useMana(45) then
            return 
          end
          setCooldown("Totem", 15)
          otheranims = true
          Mode = "Casting2"
          healingStreamTotem()
          randomCastSound()
          wait(0.3)
          otheranims = false
        else
          if key == "e" and shadowform then
            if checkCooldown("VoidDrain") then
              return 
            end
            setCooldown("VoidDrain", 2)
            otheranims = true
            Mode = "Casting2"
            coroutine.wrap(function()
    dot:VoidDrain()
    randomCastSound()
  end
)()
            wait(0.3)
            otheranims = false
          else
            if key == "q" and shadowform then
              if checkCooldown("SWP") then
                return 
              end
              setCooldown("SWP", 2)
              otheranims = true
              Mode = "Casting2"
              coroutine.wrap(function()
    dot:ShadowWordPain()
    randomCastSound()
  end
)()
              wait(0.3)
              otheranims = false
            else
              if key == "x" then
                if shielding then
                  shielding = false
                  return 
                end
                if checkCooldown("Shield") then
                  return 
                end
                setCooldown("Shield", 15)
                shielding = true
                otheranims = true
                Mode = "Swipe"
                wait(0.2)
                T.Anchored = true
                randomCastSound()
                local Rot, Clr = 45, nil
                Clr = BrickColor.new("Toothpaste")
                local s = Instance.new("Part", Character)
                s.BrickColor = Clr
                s.Size = Vector3.new(1, 1, 1)
                s.Anchored = true
                s.Locked = true
                s.CanCollide = false
                s.TopSurface = 0
                s.BottomSurface = 0
                s.CFrame = T.CFrame * CFrame.new(0, -2, 0)
                local sm = Instance.new("SpecialMesh", s)
                do
                  sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
                  sm.Scale = Vector3.new(10, 2, 10)
                  while 1 do
                    if wait() then
                      if not useMana(5) then
                        break
                      end
                    end
                    if not shielding then
                      break
                    end
                    s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0, 6, 0)
                    local f = Instance.new("Part", Character)
                    if math.random(1, 10) >= 6 or not BrickColor.new("Toothpaste") then
                      f.BrickColor = BrickColor.new("White")
                      f.Size = Vector3.new(5, 1, 5)
                      f.Anchored = true
                      f.Locked = true
                      f.CanCollide = false
                      f.TopSurface = 0
                      f.BottomSurface = 0
                      f.CFrame = T.CFrame * CFrame.new(0, -2, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
                      local sm = Instance.new("SpecialMesh", f)
                      do
                        sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
                        sm.Scale = Vector3.new(20, 20, 20)
                        coroutine.wrap(function()
    for i = 1, 13 do
      f.Transparency = i / 13
      sm.Scale = sm.Scale + Vector3.new(1, 1, 1)
      Wait()
    end
    f:Destroy()
  end
)()
                        local Wind = Instance.new("Part", Character)
                        Wind.Anchored = true
                        Wind.CanCollide = true
                        Wind.Locked = true
                        if math.random(1, 10) >= 6 or not BrickColor.new("Toothpaste") then
                          do
                            Wind.BrickColor = BrickColor.new("White")
                            Wind.Transparency = 0.5
                            Wind.Shape = "Ball"
                            Wind.TopSurface = 0
                            Wind.BottomSurface = 0
                            Wind.Size = Vector3.new(math.random(10, 15), 1, math.random(10, 15))
                            Wind.CFrame = T.CFrame
                            for i,v in pairs(IsNear(Wind.Position, 20)) do
                              if not Damaged[v] then
                                Damaged[v] = tick()
                              end
                              if tick() - Damaged[v] >= 0.3 then
                                Damaged[v] = tick()
                                Clr = BrickColor.new("Really red")
                                local tdps = getDPS() * 2
                                healHuman(v.Humanoid, tdps)
                                logDamage("Shield", tdps)
                                delay(0.02, function()
    Clr = BrickColor.new("Toothpaste")
  end
)
                              end
                            end
                            coroutine.wrap(function()
    for i = 0.6, 1, 0.1 do
      Wait()
      Wind.Transparency = i
    end
    Wind:Destroy()
  end
)()
                            -- DECOMPILER ERROR at PC469: LeaveBlock: unexpected jumping out IF_THEN_STMT

                            -- DECOMPILER ERROR at PC469: LeaveBlock: unexpected jumping out IF_STMT

                          end
                        end
                      end
                      -- DECOMPILER ERROR at PC470: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC470: LeaveBlock: unexpected jumping out IF_STMT

                    end
                  end
                  shielding = false
                  s:Destroy()
                  T.Anchored = false
                  otheranims = false
                end
              else
                do
                  if key == "g" then
                    toggleEnemy()
                  else
                    if key == "v" then
                      otheranims = true
                      Mode = "Swipe"
                      if not isEnemy() then
                        giveBuff("Power Word:Fortitude", "MainStat", "60", "3")
                      end
                      wait(0.5)
                      otheranims = false
                    else
                      if key == "y" then
                        currentTarget = hum
                      else
                      end
                    end
                  end
                  if (key ~= "k" or key == "e") and not shadowform then
                    if checkCooldown("HealingTouch") then
                      return 
                    end
                    if checkRange() then
                      return 
                    end
                    if not useMana(25) then
                      return 
                    end
                    setCooldown("HealingTouch", 2)
                    local HT = Instance.new("Model", cTarg)
                    HT.Name = "HealingTouch"
                    otheranims = true
                    Mode = "Casting2"
                    healHuman(cTarg, getDPS() * 4)
                    randomCastSound()
                    do
                      do
                        if not cTarg:findFirstChild("NMH") and not isEnemy() then
                          local nMH = Instance.new("IntValue", cTarg)
                          nMH.Name = "NMH"
                          nMH.Value = cTarg.MaxHealth
                        end
                        wait(0.5)
                        otheranims = false
                        logDamage("Healing Touch", getDPS() * 4)
                        game:service("Debris"):AddItem(HT, 3)
                        if key == "f" then
                          if checkCooldown("Burst") then
                            return 
                          end
                          if checkRange() then
                            return 
                          end
                          if not useMana(15) then
                            return 
                          end
                          setCooldown("Burst", 3)
                          otheranims = true
                          Mode = "Casting2"
                          expandDong()
                          randomCastSound()
                          wait(0.5)
                          otheranims = false
                        else
                          if key == "q" and not shadowform then
                            if checkCooldown("FlashHeal") then
                              return 
                            end
                            if cTarg:FindFirstChild("FlashHeal") then
                              return 
                            end
                            if checkRange() then
                              return 
                            end
                            if not useMana(20) then
                              return 
                            end
                            setCooldown("FlashHeal", 3)
                            local Object = nil
                            if not cTarg then
                              Object = torso
                            else
                              Object = cTarg.Parent.Torso
                            end
                            otheranims = true
                            Mode = "Casting2"
                            if cTarg:findFirstChild("FlashHeal") then
                              return 
                            end
                            local FlashHeal = Instance.new("Model", cTarg)
                            FlashHeal.Name = "FlashHeal"
                            randomCastSound()
                            local debouncing = true
                            for i = 1, 6 do
                              coroutine.wrap(function()
    while debouncing do
      if not Object then
        break
      end
      local p = Instance.new("Part", Object)
      do
        p.Name = "Trail"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Anchored = true
        p.CanCollide = false
        p.Size = Vector3.new(0.01, 0.01, 0.01)
        p.BrickColor = BrickColor.new(i < 4 and "Institutional white" or "Toothpaste")
        p.CFrame = Object.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1) - 3, math.random(-1, 1))
        local m = Instance.new("BlockMesh", p)
        m.Scale = Vector3.new(2, 2, 2)
        coroutine.wrap(function()
      for i = 1, 15 do
        p.Transparency = i / 15
        m.Scale = m.Scale + Vector3.new(0.1, 0.1, 0.1)
        p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5, 5) / 20, 0.5, math.random(-5, 5) / 20)) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / i, math.random(-10, 10) / i, 0.5)
        Wait()
      end
      p:Destroy()
    end
)()
        wait(0.8)
      end
    end
  end
)()
                            end
                            coroutine.wrap(function()
    for i = 25, 0, -1 do
      healHuman(cTarg or hum, healCalc * 0.4)
      logDamage("FlashHeal", healCalc * 0.4)
      wait(0.4)
    end
    FlashHeal:Destroy()
    debouncing = false
  end
)()
                            wait(0.5)
                            otheranims = false
                          else
                            do
                              if key:byte() == 48 and hum.WalkSpeed > 8 then
                                hum.WalkSpeed = 30
                                hum.JumpPower = 50
                              else
                                if key == "r" then
                                  farSight()
                                else
                                  if key:byte() == 50 then
                                    Ctrl = true
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
        end
      end
    end
  end
end

  mouse.KeyDown:connect(KeyDown)
  mouse.KeyUp:connect(function(key)
  lastpress = tick()
  if key:byte() == 48 and hum.WalkSpeed > 8 then
    hum.WalkSpeed = 20
  else
    if key == "k" then
      otheranims = false
    else
      if key:byte() == 50 then
        Ctrl = false
      end
    end
  end
end
)
  plr.Chatted:connect(function(m)
  if m:sub(1, 5) == "stat/" and (plr.Name == "Darkus_Theory" or plr.Name == "worthystone" or plr.Name == "coty645" or plr.Name == "lsaiah328") then
    local q = m:sub(6)
    local spl = q:find("/")
    local stat = q:sub(1, spl - 1)
    local data = tonumber(q:sub(spl + 1))
    if not stats[stat] then
      return 
    end
    stats["" .. stat .. ""] = data
  else
    do
      if m == "recount" then
        recount()
      else
        if m == "debugmode" and (plr.Name == "Darkus_Theory" or plr.Name == "worthystone" or plr.Name == "coty645" or plr.Name == "lsaiah328") then
          if cheating then
            cheating = false
            stats.Haste = hst
            stats.Intellect = str
          else
            cheating = true
          end
        end
      end
    end
  end
end
)
  local t = tick()
  local Smooth = 1
  local sine = 0
  local change = 1
  coroutine.wrap(function()
  game:service("RunService").Heartbeat:connect(function()
    regenHealth()
    if stats.Shards > 6 then
      stats.Shards = 6
    end
    if stats.Shards < 0 then
      stats.Shards = 0
    end
    if stats.Mana > 500 then
      stats.Mana = 500
    end
    if stats.Mana < 0 then
      stats.Mana = 0
    end
    if stats.Mana < 500 and stats.Mana > 200 then
      stats.Mana = stats.Mana + 0.25
    else
      if stats.Mana < 200 then
        stats.Mana = stats.Mana + 0.4
      end
    end
    UI:SetHealth(math.ceil(hum.Health), hum.MaxHealth)
    UI:SetMana(math.ceil(stats.Mana))
    UI:SetCT(stats.Shards)
    UI:SetTarget(currentTarget and currentTarget.Parent and currentTarget.Parent.Name or "No Target")
    UI:SetTH(not currentTarget or not currentTarget:isA("Humanoid") or not currentTarget.Health or 0, ((currentTarget and tonumber(math.floor(currentTarget.Health))) or currentTarget) and tonumber(math.floor(currentTarget.MaxHealth)) or 0)
    UI:SetTH(0, 0)
    UI:SetTitle()
    if not btimer or btimer <= 0 then
      if hum.WalkSpeed == 0 then
        UI:SetStatus("Stunned")
      else
        if hum.WalkSpeed < 10 then
          UI:SetStatus("Slowed")
        else
          UI:SetStatus("Normal")
        end
      end
    else
      UI:SetStatus("Shadowform [" .. btimer .. "]")
      hum.WalkSpeed = 30
    end
    if cheating then
      Cooldowns = {}
      stats.Mana = 500
      stats.Haste = 0
    end
    if currentTarget and currentTarget.Health <= 0 then
      currentTarget = nil
    end
    if not stats.Haste then
      stats.Haste = Haste
    end
    if stats.Haste and stats.Haste < 0 then
      stats.Haste = 0
    end
    updateCooldowns()
    local mg = Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude
    if not otheranims then
      if mg < 3 and not Jumping then
        Mode = "Idling"
      else
        if mg > 3 and mg < 21 and not Jumping then
          Mode = "Walking"
        else
          if mg > 21 and not Jumping then
            Mode = "Running"
          else
            if Jumping and Vector3.new(0, torso.Velocity.y, 0).magnitude > 2 and mg > 1 then
              Mode = "Jumping"
            end
          end
        end
      end
    end
    count = count % 100 + 1 * hum.WalkSpeed / 6.5
    torso = char:FindFirstChild("Torso")
    angle = math.pi * math.sin(math.pi * 2 / 100 * count)
    t = t + 0.2 * Smooth
    sine = sine + change
    UI:SetAnim(Mode)
    if Mode == "Jumping" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.6, -0.6) * CFrame.Angles(0, -math.rad(10), 0), 0.4)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.4, -0.3), 0.4)
      lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(40), 0, 0), 0.4)
      lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(30)), 0.4)
      lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(20), 0, math.rad(30)), 0.4)
      lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(30), 0, 0), 0.4)
    else
      if hum.PlatformStand then
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(math.rad(50), 0, math.rad(10)), 0.4)
        lerp(llegm, llegm.C0, llc0 * CFrame.Angles(math.rad(50), 0, -math.rad(10)), 0.4)
        lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(20), 0, 0), 0.4)
        lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(25), 0, -math.rad(15)), 0.4)
        lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(45), 0, math.rad(15)), 0.4)
        lerp(rj, rj.C1, rootc1 * CFrame.Angles(-math.rad(40), 0, 0), 0.4)
      else
        if Mode == "Idling" then
          lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, 0, math.rad(5)), 0.3)
          lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(5)), 0.3)
          lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(5), 0, 0), 0.3)
          lerp(lm, lm.C0, lsc0 * CFrame.Angles(0, 0, -math.rad(10) + angle * 0.02), 0.1)
          lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(90), 0, math.rad(90)), 0.3)
          lerp(rj, rj.C0, rootc0 * CFrame.Angles(0, 0, 0), 0.3)
        else
          if Mode == "Walking" then
            lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.1 + math.cos(t) / 2.5 * 0.35, -0.1 + -math.sin(t) / 1.5 * 0.45) * CFrame.Angles(math.rad(-10) + math.sin(count / 14) / 2, 0, 0), 0.3)
            lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.1 + -math.cos(t) / 2.5 * 0.35, -0.1 + math.sin(t) / 1.5 * 0.45) * CFrame.Angles(math.rad(-10) + -math.sin(count / 14) / 2, 0, 0), 0.3)
            lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(15), 0, 0), 0.3)
            lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(0.1 + math.cos(t) * 10), 0, -math.rad(5)), 0.3)
            lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(0.1 + math.cos(t) * 10), 0, math.rad(5)), 0.3)
            lerp(rj, rj.C0, rootc0 * CFrame.new(0, -0.18, 0) * CFrame.Angles(math.rad(15), -math.cos(t / 6) / 30 + math.sin(rootpart.RotVelocity.y / 2) / 6, 0), 0.3)
          else
            if Mode == "Running" then
              lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.1 + math.cos(t) / 2.5 * 0.35, -0.1 + -math.sin(t) / 1.5 * 0.45) * CFrame.Angles(math.rad(-10) + math.sin(count / 14) / 2, 0, 0), 0.3)
              lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.1 + -math.cos(t) / 2.5 * 0.35, -0.1 + math.sin(t) / 1.5 * 0.45) * CFrame.Angles(math.rad(-10) + -math.sin(count / 14) / 2, 0, 0), 0.3)
              lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(25), 0, 0), 0.3)
              lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(0.1 + math.cos(t) * 15), 0, math.rad(-15 - angle * 0.03)), 0.3)
              lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(0.1 + math.cos(t) * 15), 0, math.rad(15 + angle * 0.03)), 0.3)
              lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(25), -math.cos(t / 6) / 30 + math.sin(rootpart.RotVelocity.y / 2) / 6, 0), 0.3)
            else
              if Mode == "Casting1" then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, -math.rad(20), math.rad(3)), 0.3)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(3)), 0.3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(40)), 0.3)
                lerp(lm, lm.C0, lsc0 * CFrame.new(0.2, 0, 0) * CFrame.Angles(math.rad(45), math.rad(35), math.rad(60)), 0.3)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(45), math.rad(35), math.rad(70)), 0.3)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(0, 0, math.rad(40)), 0.3)
              else
                if Mode == "Casting2" then
                  lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, -math.rad(20), math.rad(3)), 0.3)
                  lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(3)), 0.3)
                  lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(30)), 0.3)
                  lerp(lm, lm.C0, lsc0 * CFrame.Angles(0, 0, -math.rad(25)), 0.3)
                  lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(20), math.rad(55), math.rad(80)), 0.3)
                  lerp(rj, rj.C0, rootc0 * CFrame.Angles(0, 0, math.rad(40)), 0.3)
                else
                  if Mode == "Swipe" then
                    lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(0, -math.rad(30), math.rad(3)), 0.3)
                    lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(20), -math.rad(3)), 0.3)
                    lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(20)), 0.3)
                    lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(10) + angle * 0.02), 0.3)
                    lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(50), 0, math.rad(10) + -angle * 0.02), 0.3)
                    lerp(rj, rj.C0, rootc0 * CFrame.Angles(0, 0, math.rad(40)), 0.3)
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
end
)()
  createOrb()
  print("Bishop loaded")
  print("Created by Darkus_Theory")
end

