-- Decompiled by Blyat
-- Fixed by ben

while not getmetatable(shared) do
  wait()
end
shared(script)
size = 6
p = game.Players.LocalPlayer
char = p.Character
pchar = char
as = 0.3
as_2 = 0.3
angle = 0
rift = true
canactivate = true
beamactive = true
laser = true
dorment = true
beam = true
hat = Instance.new("Part", char)
hat.Size = Vector3.new(1, 1, 1)
hatm = Instance.new("SpecialMesh", hat)
hatm.MeshType = "FileMesh"
hatm.MeshId = "http://www.roblox.com/asset/?id=96102993"
hatm.TextureId = "http://www.roblox.com/asset/?id=96103063"
hatw = Instance.new("Weld", hat)
hatw.Part0 = hat
hatw.Part1 = char.Head
Mouse = p:GetMouse()
mouse = p:GetMouse()
m = p:GetMouse()
char.Animate.Disabled = true
char.Head.Transparency = 1
anglespeed = 0
canstep = true
active = true
org = char.HumanoidRootPart.RootJoint.C0
char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 15, 0)
mus = Instance.new("Sound", char)
mus.SoundId = "rbxassetid://404897101"
mus.Looped = true
char.Humanoid.JumpPower = 0
mus:Play()
char.Humanoid.WalkSpeed = 0
step = Instance.new("Sound", char.Torso)
step.SoundId = "rbxassetid://198360378"
FootStep = function()
  
  local ray = Ray.new(char["Left Leg"].Position, Vector3.new(0, -6.5, 0))
  local part, endPoint, normal = Workspace:FindPartOnRay(ray)
  if part then
    step:Play()
  end
end

local t = tick()
local Smooth = 1
torso = char:findFirstChild("Torso")
z = Instance.new("Sound", torso)
z.SoundId = "rbxassetid://412874168" -- Put Music ID Here.
z.Looped = true
z.Pitch = 0.80
z.Volume = 1
wait(.1)
z:Play()
head = char.Head
ra = char:findFirstChild("Right Arm")
ra.CanCollide = true
la = char:findFirstChild("Left Arm")
la.CanCollide = true
rl = char:findFirstChild("Right Leg")
rl.CanCollide = true
ll = char:findFirstChild("Left Leg")
ll.CanCollide = true
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
scl = function(m)
  
  for i,v in pairs(m:GetChildren()) do
    if v:IsA("SpecialMesh") or v:IsA("DataModelMesh") then
      if v.MeshType == Enum.MeshType.FileMesh then
        v.Scale = v.Scale * size
      else
        v.Scale = v.Scale * size
      end
    else
    end
    if v:IsA("BasePart") then
      do
        scl(v)
        -- DECOMPILER ERROR at PC39: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC39: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end

scl(char)
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
  
  local wld = Instance.new("Weld", wp1)
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
  return wld
end

local mult = size
la.Size = la.Size * mult
ra.Size = ra.Size * mult
ll.Size = ll.Size * mult
rl.Size = rl.Size * mult
torso.Size = torso.Size * mult
rootpart.Size = rootpart.Size * mult
local LeftShoulder = newWeld(torso, la, -1.5 * mult, 0.5 * mult, 0)
LeftShoulder.C1 = CFrame.new(0, 0.5 * mult, 0)
local RightShoulder = newWeld(torso, ra, 1.5 * mult, 0.5 * mult, 0)
RightShoulder.C1 = CFrame.new(0, 0.5 * mult, 0)
local Neck = newWeld(torso, head, 0, mult, 0)
local LeftHip = newWeld(torso, ll, -0.5 * mult, -1 * mult, 0)
LeftHip.C1 = CFrame.new(0, mult, 0)
local RightHip = newWeld(torso, rl, 0.5 * mult, -1 * mult, 0)
RightHip.C1 = CFrame.new(0, mult, 0)
local Torso2 = rj:Clone()
Torso2.Part0 = rootpart
Torso2.Part1 = torso
Torso2.Parent = rootpart
Neck.C1 = CFrame.new(0, -(mult / 2), 0)
neckc0 = Neck.C0
rsc0 = RightShoulder.C0
lsc0 = LeftShoulder.C0
llc0 = LeftHip.C0
rlc0 = RightHip.C0
rootc0 = Torso2.C0
rootc1 = Torso2.C1
wait()
deg = math.deg
rad = math.rad
asin = math.asin
atan2 = math.atan2
cos = math.cos
sin = math.sin
rad = math.sin
getAngles = function(cf)
  
  local sx, sy, sz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  return atan2(-m12, m22), asin(m02), atan2(-m01, m00)
end

Lerp = {Number = function(C1, C2, inc)
  
  return C1 + (C2 - C1) * inc
end
, CFrame = function(a, b, m)
  
  local c, d = {a:components()}, {b:components()}
  table.foreach(c, function(a, b)
    
    c[a] = c[a] + (d[a] - c[a]) * m
  end
)
  return CFrame.new(unpack(c))
end
}
staff = Instance.new("Part", char)
staff.Size = Vector3.new(2, 2, 40)
staff.TopSurface = 0
staff.CanCollide = false
staff.BottomSurface = 0
staff.Material = "Slate"
staff.BrickColor = BrickColor.new("Really black")
staffw = Instance.new("Weld", staff)
staffw.Part0 = staff
staffw.Part1 = char["Left Arm"]
staffw.C0 = CFrame.new(0, 6, -5)
top = Instance.new("Part", char)
top.Size = Vector3.new(4, 4, 4)
top.BrickColor = BrickColor.new("Lime green")
top.TopSurface = 0
top.BottomSurface = 0
top.Material = "Neon"
topm = Instance.new("SpecialMesh", top)
topm.MeshType = "Sphere"
topw = Instance.new("Weld", top)
topw.Part0 = top
topw.Part1 = staff
topw.C0 = CFrame.new(0, 0, 23)
top1 = Instance.new("Part", char)
top1.BrickColor = BrickColor.new("Really black")
top1.Size = Vector3.new(5, 5, 2)
top1.TopSurface = 0
top1.Material = "Slate"
top1.BottomSurface = 0
topw1 = Instance.new("Weld", top1)
topw1.Part0 = top1
topw1.Part1 = staff
topw1.C0 = CFrame.new(0, 0, 20)
top2 = Instance.new("Part", char)
top2.BrickColor = BrickColor.new("Really black")
top2.Size = Vector3.new(2, 2, 4)
top2.TopSurface = 0
top2.Material = "Slate"
top2.BottomSurface = 0
topw2 = Instance.new("Weld", top2)
topw2.Part0 = top2
topw2.Part1 = top1
topw2.C0 = CFrame.new(2, 0, 2.4) * CFrame.Angles(rad(0), rad(10), 0)
top3 = Instance.new("Part", char)
top3.BrickColor = BrickColor.new("Really black")
top3.Size = Vector3.new(2, 2, 4)
top3.TopSurface = 0
top3.Material = "Slate"
top3.BottomSurface = 0
topw3 = Instance.new("Weld", top3)
topw3.Part0 = top3
topw3.Part1 = top1
topw3.C0 = CFrame.new(-2, 0, 2.4) * CFrame.Angles(0, rad(-10), 0)
LerpTo = {RightArm = CFrame.new(9, 3, 0), LeftArm = CFrame.new(-9, 3, 0), Staff = CFrame.new(0, 6, -5), LeftLeg = CFrame.new(-3, -6, 0), RightLeg = CFrame.new(3, -6, 0), Body = Torso2.C0 * CFrame.new(0, 0, 0), Head = CFrame.new(0, 6, 0), Crystal = CFrame.new(0, 0, 23)}
if dorment == true then
  fakela = Instance.new("Part", char)
  fakela.Material = "Slate"
  fakela.TopSurface = 0
  fakela.BottomSurface = 0
  fakela.BrickColor = char.Torso.BrickColor
  fakela.Size = char["Left Arm"].Size + Vector3.new(0.1, 0.1, 0.1)
  fakelaw = Instance.new("Weld", fakela)
  fakelaw.Part0 = fakela
  fakelaw.Part1 = char["Left Arm"]
  fakera = Instance.new("Part", char)
  fakera.Material = "Slate"
  fakera.TopSurface = 0
  fakera.BottomSurface = 0
  fakera.BrickColor = char.Torso.BrickColor
  fakera.Size = char["Right Arm"].Size + Vector3.new(0.1, 0.1, 0.1)
  fakeraw = Instance.new("Weld", fakera)
  fakeraw.Part0 = fakera
  fakeraw.Part1 = char["Right Arm"]
  fakell = Instance.new("Part", char)
  fakell.Material = "Slate"
  fakell.TopSurface = 0
  fakell.BottomSurface = 0
  fakell.BrickColor = char.Torso.BrickColor
  fakell.Size = char["Left Leg"].Size + Vector3.new(0.1, 0.1, 0.1)
  fakellw = Instance.new("Weld", fakell)
  fakellw.Part0 = fakell
  fakellw.Part1 = char["Left Leg"]
  fakerl = Instance.new("Part", char)
  fakerl.Material = "Slate"
  fakerl.TopSurface = 0
  fakerl.BottomSurface = 0
  fakerl.BrickColor = char.Torso.BrickColor
  fakerl.Size = char["Right Leg"].Size + Vector3.new(0.1, 0.1, 0.1)
  fakerlw = Instance.new("Weld", fakerl)
  fakerlw.Part0 = fakerl
  fakerlw.Part1 = char["Right Leg"]
  faket = Instance.new("Part", char)
  faket.Material = "Slate"
  faket.TopSurface = 0
  faket.BottomSurface = 0
  faket.BrickColor = char.Torso.BrickColor
  faket.Size = char.Torso.Size + Vector3.new(0.1, 0.1, 0.1)
  faketw = Instance.new("Weld", faket)
  faketw.Part0 = faket
  faketw.Part1 = char.Torso
  char.Humanoid.Health = math.huge
  LerpTo.Body = Torso2.C0 * CFrame.new(0, 0, -3) * CFrame.Angles(rad(0.1), 0, 0)
  LerpTo.LeftLeg = CFrame.new(-3, -5, -4) * CFrame.Angles(rad(0.1), 0, 0)
  LerpTo.LeftArm = CFrame.new(-9, 3, 0) * CFrame.Angles(7.9, 0, 0)
  LerpTo.Head = Neck.C0 * CFrame.Angles(rad(-0.1), 0, 0)
  LerpTo.RightArm = RightShoulder.C0 * CFrame.Angles(0, 0, rad(0.2))
  LerpTo.Staff = CFrame.new(0, 6, 0) * CFrame.Angles(rad(0), 0, 0)
  LerpTo.RightLeg = CFrame.new(3, -6, -2.3) * CFrame.Angles(rad(-69.75), 0, 0)
end
updateanims = function()
  
  if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
    anglespeed = 0.5
    if active == false then
      as_2 = 0.3
      LerpTo.RightArm = CFrame.new(9, 3, 0) * CFrame.Angles(sin(angle) * 0.1, 0, rad(0.1))
      LerpTo.Body = org
      LerpTo.LeftArm = CFrame.new(-8.5, 3, -1) * CFrame.Angles(sin(angle) * 0.02, rad(0), rad(0)) * CFrame.Angles(1.5, 0, -0.2)
      LerpTo.RightLeg = CFrame.new(3.2, -6, -0.7) * CFrame.Angles(math.rad(-1), math.rad(-10), 0)
      LerpTo.Staff = CFrame.new(0, 6, -5)
      LerpTo.LeftLeg = CFrame.new(-3, -6, 0.1) * CFrame.Angles(math.rad(-5), math.rad(4), 0)
    end
  else
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
      anglespeed = 1
      if active == false then
        LerpTo.Body = org
        LerpTo.RightLeg = CFrame.new(3, -6, 0) * CFrame.Angles(-sin(angle * 1) * 0.3, 0, 0)
        LerpTo.LeftLeg = CFrame.new(-3, -6, 0) * CFrame.Angles(sin(angle * 1) * 0.3, 0, 0)
        LerpTo.Staff = CFrame.new(0, 6, -5)
        LerpTo.Head = CFrame.new(0, 6, 0)
        LerpTo.RightArm = CFrame.new(9, 3, 0) * CFrame.Angles(-sin(angle) * 0.4, 0, rad(3))
        as_2 = 0.05
        LerpTo.LeftArm = CFrame.new(-8.5, 3, -1) * CFrame.Angles(sin(angle) * 0.02, rad(0), rad(0)) * CFrame.Angles(1.3, 0, -0.2)
      end
    end
  end
end

Spawn(function()
  
  while wait() do
    angle = angle % 100 + anglespeed / 10
    t = t + 0.25 * Smooth
  end
end
)
m.KeyDown:connect(function(k)
  
  if k == string.char(52) and canactivate == true then
    canactivate = false
    dorment = false
    ch = Instance.new("Sound", char)
    ch.SoundId = "rbxassetid://257001355"
    ch.Volume = 1
    ch:Play()
    spark = Instance.new("Part", char)
    spark.Size = Vector3.new(2, 2, 2)
    spark.BrickColor = BrickColor.new("Lime green")
    spark.Material = "Neon"
    spark.TopSurface = 0
    sparkw = Instance.new("Weld", spark)
    sparkw.Part0 = spark
    sparkw.Part1 = top
    spark.BottomSurface = 0
    sparkm = Instance.new("SpecialMesh", spark)
    sparkm.MeshType = "Sphere"
    for i = 2, 30, 0.5 do
      wait()
      sparkm.Scale = Vector3.new(i, i, i)
      spark.Transparency = i / 10
    end
    char.Humanoid.WalkSpeed = 6
    char.Humanoid.MaxHealth = 1000000
    wait()
    char.Humanoid.Health = 1000000
    active = false
    faket:Remove()
    fakela:Remove()
    fakera:Remove()
    fakerl:Remove()
    fakell:Remove()
    wait(0.6)
    mus.SoundId = "rbxassetid://151514610"
    mus.Volume = 1
  end
end
)
poos = top.Position + Vector3.new(0, 20, 0)
m.KeyDown:connect(function(k)
  
  if k == "q" and beama == true then
    beama = false
    active = true
    s1 = Instance.new("Sound", char)
    s1.SoundId = "rbxassetid://154230112"
    s1.Volume = 1
    s1.Pitch = 1
    s1:Play()
    local ray = Ray.new(poos, Mouse.Hit.p - poos.unit * 999)
    local part, position = workspace:FindPartOnRay(ray, p.Character, false, true)
    local part, position = workspace:FindPartOnRay(ray, top, false, true)
    local part, position = workspace:FindPartOnRay(ray, top2, false, true)
    local part, position = workspace:FindPartOnRay(ray, top1, false, true)
    local hit, pos, normal = Workspace:FindPartOnRay(ray, character)
    if hit then
      local beam = Instance.new("Part", workspace)
      beam.BrickColor = BrickColor.new("Lime green")
      beam.FormFactor = "Custom"
      beam.Material = "Neon"
      beam.Transparency = 0
      beam.Anchored = true
      beam.Locked = true
      beam.CanCollide = false
      local distance = top.CFrame.p
      beam.Size = Vector3.new(3, 3, distance)
      beam.CFrame = CFrame.new(top.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
      game:GetService("Debris"):AddItem(beam, 1)
      portal = Instance.new("Part", char)
      portal.Anchored = true
      portal.Material = "Neon"
      portal.CanCollide = false
      portal.Size = Vector3.new(3, 0.2, 3)
      portal.CFrame = CFrame.new(pos, pos + normal) * CFrame.Angles(math.pi / 2, 0, 0)
      portal.BrickColor = BrickColor.new("Lime green")
      local portalm = Instance.new("CylinderMesh", portal)
      for i = 1, 7, 0.3 do
        wait()
        portalm.Scale = Vector3.new(i, 0.2, i)
      end
      s = Instance.new("Sound", char)
      s.SoundId = "rbxassetid://228343271"
      s.Volume = 1
      s.Pitch = 1
      s:Play()
      do
        for i = 1, 20 do
          wait()
          local CreateRegion3FromLocAndSize = function(Position, Size)
    
    local SizeOffset = Size / 2
    local Point1 = Position - SizeOffset
    local Point2 = Position + SizeOffset
    return Region3.new(Point1, Point2)
  end

          local reg = CreateRegion3FromLocAndSize(portal.Position, portal.Size * 10)
          do
            for i,v in pairs(game:service("Workspace"):FindPartsInRegion3WithIgnoreList(reg, char:GetChildren(), 100)) do
              print(v)
              Spawn(function()
    
    ypcall(function()
      
      if not v.Parent:FindFirstChild("Humanoid") then
        local humanoid = v.Parent.Parent:FindFirstChild("Humanoid")
      end
      humanoid:TakeDamage(math.random(1, 4))
    end
)
  end
)
            end
            local rng1 = Instance.new("Part", char)
            rng1.Anchored = true
            rng1.BrickColor = BrickColor.new("Lime green")
            rng1.CanCollide = false
            rng1.FormFactor = 3
            rng1.Name = "Ring"
            rng1.Size = Vector3.new(1, 1, 1)
            rng1.Transparency = 0.35
            rng1.TopSurface = 0
            rng1.BottomSurface = 0
            rng1.Position = portal.Position
            rng1.CFrame = rng1.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
            local rngm1 = Instance.new("SpecialMesh", rng1)
            rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
            rngm1.Scale = Vector3.new(1, 1.3, 2)
            local rng = Instance.new("Part", char)
            rng.Anchored = true
            rng.BrickColor = BrickColor.new("Lime green")
            rng.CanCollide = false
            rng.FormFactor = 3
            rng.Name = "Ring"
            rng.Size = Vector3.new(1, 1, 1)
            rng.Transparency = 0
            rng.TopSurface = 0
            rng.BottomSurface = 0
            rng.Material = "Neon"
            rng.Position = portal.Position - Vector3.new(0, 0, 0)
            rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
            local rngm = Instance.new("SpecialMesh", rng)
            rngm.MeshType = "Sphere"
            rngm.Scale = Vector3.new(1, 1.3, 2)
            local rng3 = Instance.new("Part", char)
            rng3.Anchored = true
            rng3.BrickColor = BrickColor.new("Lime green")
            rng3.CanCollide = false
            rng3.FormFactor = 3
            rng3.Name = "Ring"
            rng3.Size = Vector3.new(1, 1, 1)
            rng3.Transparency = 0
            rng3.TopSurface = 0
            rng3.BottomSurface = 0
            rng3.Material = "Neon"
            rng3.Position = portal.Position - Vector3.new(0, 2, 0)
            rng3.CFrame = rng3.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
            local rngm3 = Instance.new("CylinderMesh", rng3)
            rngm3.Scale = Vector3.new(1, 1.3, 2)
            wait(0.1)
            coroutine.wrap(function()
    
    for i = 1, 7, 0.5 do
      rngm.Scale = Vector3.new(2 + i * 6, 2 + i * 6, 2 + i * 6)
      rng.Transparency = i / 7
      rngm3.Scale = Vector3.new(3 + i, 10 + i * 30, 3 + i)
      rng3.Transparency = i / 7
      rngm1.Scale = Vector3.new(2 + i * 12, 2 + i * 12, 1)
      rng1.Transparency = i / 7
      wait()
    end
    wait()
    rng:Destroy()
    rng1:Remove()
    rng3:Remove()
    wait()
  end
)()
          end
        end
      end
      active = false
      for i = 10, 0, -2 do
        wait()
        portalm.Scale = Vector3.new(i, i, i)
      end
    end
  end
  do
    wait(2)
    beama = true
  end
end
)
m.KeyDown:connect(function(k)
  
  if k == "x" and rift == true then
    rift = false
    active = true
    LerpTo.LeftArm = LeftShoulder.C0 * CFrame.Angles(math.rad(40), 0, 0)
    LerpTo.Head = Neck.C0 * CFrame.Angles(math.rad(20), 0, 0)
    LerpTo.Staff = staffw.C0 * CFrame.Angles(rad(0.6), 0, 0) * CFrame.new(0, 5, 10)
    wait()
    spark = Instance.new("Part", char)
    spark.Size = Vector3.new(2, 2, 2)
    spark.BrickColor = BrickColor.new("Lime green")
    spark.Material = "Neon"
    spark.TopSurface = 0
    sparkw = Instance.new("Weld", spark)
    sparkw.Part0 = spark
    sparkw.Part1 = staff
    sparkw.C0 = CFrame.new(0, 0, 20)
    spark.BottomSurface = 0
    sparkm = Instance.new("SpecialMesh", spark)
    sparkm.MeshType = "Sphere"
    for i = 2, 10, 0.5 do
      wait()
      sparkm.Scale = Vector3.new(i, i, i)
      spark.Transparency = i / 10
    end
    wait(2)
    m = p:GetMouse()
    LerpTo.LeftArm = LeftShoulder.C0 * CFrame.Angles(math.rad(40), math.rad(20), 0)
    LerpTo.RightArm = RightShoulder.C0 * CFrame.Angles(math.rad(40), math.rad(-20), 0)
    LerpTo.Head = Neck.C0 * CFrame.Angles(math.rad(20), 0, 0)
    LerpTo.Staff = staffw.C0 * CFrame.Angles(0, 0, 0)
    local rng = Instance.new("Part", char)
    rng.Anchored = true
    rng.BrickColor = BrickColor.new("Lime green")
    rng.CanCollide = false
    rng.FormFactor = 3
    rng.Name = "Ring"
    rng.Size = Vector3.new(1.5, 1.5, 1.1)
    rng.Transparency = 0
    rng.TopSurface = 0
    rng.BottomSurface = 0
    rng.Material = "Neon"
    rng.CFrame = char.Torso.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, -50)
    rng.CFrame = CFrame.new(rng.Position, Vector3.new(m.Hit.p.x, m.Hit.p.y, m.Hit.p.z)) * CFrame.Angles(math.rad(90), 0, 0)
    local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshType = "Sphere"
    do
      for i = 1, 20, 0.5 do
        wait()
        rngm.Scale = Vector3.new(60, 0.5, i)
      end
    end
    endpoint = Instance.new("Part", char)
    endpoint.Transparency = 1
    wait(0.5)
    LerpTo.LeftArm = CFrame.new(-9, 3, 0) * CFrame.Angles(math.rad(90), math.rad(0), 0)
    LerpTo.RightArm = CFrame.new(9, 3, 0) * CFrame.Angles(math.rad(0), math.rad(40), 0)
    LerpTo.Head = CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), 0, 0)
    LerpTo.Staff = CFrame.new(0, 5, -6) * CFrame.Angles(rad(-50), 0, 0)
    s1 = Instance.new("Sound", char)
    s1.SoundId = "rbxassetid://130792236"
    s1:Play()
    wait(0.4)
    s = Instance.new("Sound", char)
    s.SoundId = "rbxassetid://254847708"
    s.Volume = 1
    s.Pitch = 1
    s:Play()
    for i = 1, 85 do
      wait()
      local ray = Ray.new(rng.CFrame.p, rng.CFrame.p - rng.CFrame * CFrame.new(0, 20, 0).p.unit * 900)
      local part, position = workspace:FindPartOnRay(ray, p.Character, false, true)
      local beam = Instance.new("Part", workspace)
      beam.BrickColor = BrickColor.new("Lime green")
      beam.FormFactor = "Custom"
      beam.Material = "Neon"
      beam.Transparency = 0
      beam.Anchored = true
      beam.Locked = true
      beam.CanCollide = false
      local distance = rng.CFrame.p
      beam.Size = Vector3.new(30, 17, distance)
      beam.CFrame = CFrame.new(rng.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
      endpoint.Position = position
      game:GetService("Debris"):AddItem(beam, 0.5)
      local rng2 = Instance.new("Part", char)
      rng2.Anchored = true
      rng2.BrickColor = BrickColor.new("Lime green")
      rng2.CanCollide = false
      rng2.FormFactor = 3
      rng2.Name = "Ring"
      rng2.Size = Vector3.new(1, 1, 1)
      rng2.Transparency = 0
      rng2.TopSurface = 0
      rng2.BottomSurface = 0
      rng2.CFrame = rng.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, -3, 0)
      local rngm2 = Instance.new("SpecialMesh", rng2)
      rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
      rngm2.Scale = Vector3.new(1, 1.3, 2)
      local rng3 = Instance.new("Part", char)
      rng3.Anchored = true
      rng3.BrickColor = BrickColor.new("Lime green")
      rng3.CanCollide = false
      rng3.FormFactor = 3
      rng3.Name = "Ring"
      rng3.Size = Vector3.new(1, 1, 1)
      rng3.Transparency = 0
      rng3.TopSurface = 0
      rng3.BottomSurface = 0
      rng3.Material = "Neon"
      rng3.Position = endpoint.Position
      rng3.CFrame = rng3.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
      local rngm3 = Instance.new("SpecialMesh", rng3)
      rngm3.MeshType = "Sphere"
      rngm3.Scale = Vector3.new(1, 1.3, 2)
      local rng4 = Instance.new("Part", char)
      rng4.Anchored = true
      rng4.BrickColor = BrickColor.new("Lime green")
      rng4.CanCollide = false
      rng4.FormFactor = 3
      rng4.Name = "Ring"
      rng4.Size = Vector3.new(1, 1, 1)
      rng4.Transparency = 0
      rng4.TopSurface = 0
      rng4.BottomSurface = 0
      rng4.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, -3, 0)
      local rngm4 = Instance.new("SpecialMesh", rng4)
      do
        rngm4.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm4.Scale = Vector3.new(1, 1.3, 2)
        local rng5 = Instance.new("Part", char)
        rng5.Anchored = true
        rng5.BrickColor = BrickColor.new("Lime green")
        rng5.CanCollide = false
        rng5.FormFactor = 3
        rng5.Name = "Ring"
        rng5.Size = Vector3.new(1, 1, 1)
        rng5.Transparency = 0
        rng5.TopSurface = 0
        rng5.BottomSurface = 0
        rng5.CFrame = rng3.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, -15, 0)
        local rngm5 = Instance.new("SpecialMesh", rng5)
        rngm5.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm5.Scale = Vector3.new(1, 1.3, 2)
        wait(0.1)
        coroutine.wrap(function()
    
    for i = 1, 30, 3 do
      rngm2.Scale = Vector3.new(30 + i * 2, 30 + i, 30 + i * 2)
      rng2.Transparency = i / 30
      rngm4.Scale = Vector3.new(100 + i * 2, 100 + i, 2)
      rng4.Transparency = i / 30
      rngm5.Scale = Vector3.new(10 + i * 10, 10 + i * 10, 2)
      rng5.Transparency = i / 30
      rngm3.Scale = Vector3.new(50 + i, 50 + i, 50 + i)
      rng3.Transparency = i / 30
      wait()
    end
    wait()
    rng5:Remove()
    rng2:Remove()
    rng4:Remove()
    rng3:Remove()
    wait()
  end
)()
        local CreateRegion3FromLocAndSize = function(Position, Size)
    
    local SizeOffset = Size / 2
    local Point1 = Position - SizeOffset
    local Point2 = Position + SizeOffset
    return Region3.new(Point1, Point2)
  end

        local reg = CreateRegion3FromLocAndSize(endpoint.Position, endpoint.Size * 20)
        for i,v in pairs(game:service("Workspace"):FindPartsInRegion3WithIgnoreList(reg, char:GetChildren(), 100)) do
          print(v)
          Spawn(function()
    
    ypcall(function()
      
      if not v.Parent:FindFirstChild("Humanoid") then
        local humanoid = v.Parent.Parent:FindFirstChild("Humanoid")
      end
      humanoid:TakeDamage(math.random(1, 4))
    end
)
  end
)
        end
      end
    end
    active = false
    for i = 20, 0, -0.5 do
      wait()
      rngm.Scale = Vector3.new(49, 0.5, i)
    end
    rng:Remove()
    wait(0.5)
    rift = true
  end
end
)
RunService = game:service("RunService")
RunService.RenderStepped:connect(function()
  
  updateanims()
  if char.Humanoid.PlatformStand == true then
    char.Humanoid.PlatformStand = false
  end
  Torso2.C0 = Lerp.CFrame(Torso2.C0, LerpTo.Body, as)
  RightShoulder.C0 = Lerp.CFrame(RightShoulder.C0, LerpTo.RightArm, as)
  LeftShoulder.C0 = Lerp.CFrame(LeftShoulder.C0, LerpTo.LeftArm, as_2)
  RightHip.C0 = Lerp.CFrame(RightHip.C0, LerpTo.RightLeg, as)
  LeftHip.C0 = Lerp.CFrame(LeftHip.C0, LerpTo.LeftLeg, as)
  Neck.C0 = Lerp.CFrame(Neck.C0, LerpTo.Head, as)
  staffw.C0 = Lerp.CFrame(staffw.C0, LerpTo.Staff, as)
  topw.C0 = Lerp.CFrame(topw.C0, LerpTo.Crystal, as)
end
)
while 1 do
  if wait(1.1) and canstep ~= true or Vector3.new(char.Torso.Velocity.X, 0, char.Torso.Velocity.Z).magnitude <= 2 or Vector3.new(0, char.Torso.Velocity.Y, 0).magnitude < 2 then
    FootStep()
  end
end