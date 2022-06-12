local wfc = function(m, n)
  return m:WaitForChild(n)
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
repeat
  wait()
until Player.Character ~= nil
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")
Anim = "Idle"
jumping = false
walkforw = false
idleforw = false
walk = 0
idle = 0
deb = false
safehum = true
canwalk = true
Effects = {
buffer = {}
, add = function(self, part, mesh, rotate, size, transparency, time, toPoint, speed)
  local data = {part = part, mesh = mesh or nil, rotate = rotate or false, size = vt(), transparency = not size and transparency or 0, toPoint = toPoint or nil, speed = speed or 0.1}
  table.insert(self.buffer, data)
  game:GetService("Debris"):AddItem(part, time or 5)
end, update = function(self, step)
  for i,v in ipairs(self.buffer) do
    if v.part == nil or v.part.Parent == nil then
      table.remove(self.buffer, i)
    else
      if v.part.Transparency == 0 then
        game:GetService("Debris"):AddItem(v.part, 1)
        table.remove(self.buffer, i)
      else
        if v.mesh then
          v.mesh.Scale = v.mesh.Scale + vt(v.size.X * step, v.size.Y * step, v.size.Z * step)
        else
          v.part.Size = v.part.Size + vt(v.size.X * step, v.size.Y * step, v.size.Z * step)
        end
        v.part.Transparency = v.part.Transparency + v.transparency * step
        if v.toPoint then
          v.part.CFrame = v.part.CFrame:lerp(v.toPoint, v.speed)
        end
        if v.rotate then
          v.part.CFrame = v.part.CFrame * RandomCFRot()
        end
      end
    end
  end
end}
curkeys = ""
curinactive = 0
curmaxinactive = 0.2
Stats = {
Speed = {
effects = {}
, add = function(self, time, amount)
  local data = {amount = amount, time = time}
  data.remove = function(self)
    self.time = 0
  end
  table.insert(self.effects, data)
end, update = function(self, step)
  local new = 1
  for i,v in ipairs(self.effects) do
    new = new + v.amount
    if v.time ~= nil then
      v.time = v.time - step
      if v.time <= 0 then
        table.remove(self.effects, i)
      end
    end
  end
  if new < 0 then
    new = 0
  end
  Humanoid.WalkSpeed = 16 * new
end}
}
game:GetService("RunService").RenderStepped:connect(function(step)
  Stats.Speed:update(step)
end)
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
PlayerGui = Player:WaitForChild("PlayerGui")
Backpack = Player:WaitForChild("Backpack")
Torso = Character:WaitForChild("Torso")
Head = Character:WaitForChild("Head")
LeftArm = Character:WaitForChild("Left Arm")
LeftLeg = Character:WaitForChild("Left Leg")
RightArm = Character:WaitForChild("Right Arm")
RightLeg = Character:WaitForChild("Right Leg")
Neck = Torso:WaitForChild("Neck")
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character:WaitForChild("HumanoidRootPart")
RootJoint = RootPart:WaitForChild("RootJoint")
RootCF = euler(-1.57, 0, 3.14)
pi = math.pi
pi2 = pi * 2
sin = math.sin
cos = math.cos
local N = wfc(wfc(Character, "Torso"), "Neck")
local RW = wfc(Character.Torso, "Right Shoulder")
local LW = wfc(Character.Torso, "Left Shoulder")
local RH = wfc(Character.Torso, "Right Hip")
local LH = wfc(Character.Torso, "Left Hip")
local RJ = wfc(wfc(Character, "HumanoidRootPart"), "RootJoint")
local RS, LS = Instance.new("Motor"), Instance.new("Motor")
RS.Part0 = RW.Part0
LS.Part0 = LW.Part0
RW.Parent = nil
RS.Parent = Torso
RS.C0 = RW.C0
LS.C0 = LW.C0
local RootPart = Character.HumanoidRootPart
local DN1 = N.C1
local DRS1 = RS.C1
local DLS1 = LS.C1
local DRH1 = RH.C1
local DLH1 = LH.C1
local DRJ1 = RJ.C1
local RootJoint = RJ
local Neck = N
local RootCF = euler(-1.57, 0, 3.14)
local necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local DN1 = N.C1
local DRS1 = RS.C1
local DLS1 = LS.C1
local DRH1 = RH.C1
local DLH1 = LH.C1
local DRJ1 = RJ.C1
local DN0 = N.C0
local DRS0 = RS.C0
local DLS0 = LS.C0
local DRH0 = RH.C0
local DLH0 = LH.C0
local DRJ0 = RJ.C0
DLH0_ = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
DRH0_ = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
  do
    return true
  end
end
rwait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").RenderStepped:wait(0)
  else
    for i = 0, num do
      game:service("RunService").RenderStepped:wait(0)
    end
  end
  do
    return true
  end
end
removeControl = function()
  canjump = false
end
resumeControl = function()
  canjump = true
end
Humanoid.Changed:connect(function()
  if canjump == false then
    Humanoid.Jump = false
  end
end)
rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
clerp = function(a, b, t)
  return a:lerp(b, t)
end
Weld = function(X, Y, Zero)
  local CJ = CFrame.new(X.Position)
  local C0 = X.CFrame:inverse() * CJ
  local C1 = Y.CFrame:inverse() * CJ
  if Zero then
    C0 = CFrame.new()
  end
  local W = Create("Weld")({Name = "Weld", Parent = X, Part0 = X, Part1 = Y, C0 = C0, C1 = C1})
  return W
end
local WeldObjects = function(parent, h)
  for i,obj in pairs(parent:GetChildren()) do
    if not h and not parent:FindFirstChild("Handle") then
      do
        Weld(not obj:IsA("BasePart") and not obj:IsA("UnionOperation") or Handle, obj)
        obj.Anchored = false
        -- DECOMPILER ERROR at PC27: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC27: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
local Bezier = {}
Bezier.__index = Bezier
Bezier.new = function(...)
  local points = {...}
  assert(#points >= 3, "Must have at least 3 points")
  local bezier = {}
  local V3 = Vector3.new
  local lerpV3 = V3().lerp
  local lines = {}
  local numLines = 0
  local finalLine = nil
  local CreatePoint = function(v3)
    local point = {v3.X, v3.Y, v3.Z}
    point.ToVector3 = function(self)
      return V3(self[1], self[2], self[3])
    end
    point.lerp = function(self, other, ratio)
      return lerpV3(self:ToVector3(), other:ToVector3(), ratio)
    end
    return point
  end
  for i = 1, #points - 1 do
    local p1 = CreatePoint(points[i])
    local p2 = CreatePoint(points[i + 1])
    local line = {p1, p2, CreatePoint(p1)}
    lines[#lines + 1] = line
  end
  do
    do
      local relativeLines = lines
      for n = #lines, 2, -1 do
        local newLines = {}
        for i = 1, n - 1 do
          local l1, l2 = relativeLines[i], relativeLines[i + 1]
          local line = {l1[3], l2[3], CreatePoint(l1[3])}
          newLines[i] = line
          lines[#lines + 1] = line
        end
        relativeLines = newLines
      end
      finalLine = relativeLines[1]
      numLines = #lines
      bezier.Get = function(self, ratio, clampRatio)
    -- DECOMPILER ERROR at PC15: Unhandled construct in 'MakeBoolean' P3

    -- DECOMPILER ERROR at PC15: Unhandled construct in 'MakeBoolean' P3

    if not clampRatio or ((ratio >= 0 or not 0)) then
      for i = 1, numLines do
        local line = lines[i]
        local mid = line[1]:lerp(line[2], ratio)
        local pt = line[3]
        pt[1] = mid.X
      end
      return finalLine[3]:ToVector3()
    end
  end
      bezier.GetPath = function(self, step)
    assert(type(step) == "number", "Must provide a step increment")
    assert(step > 0 and step < 1, "Step out of domain; should be between 0 and 1 (exclusive)")
    local path = {}
    local lastI = 0
    for i = 0, 1, step do
      lastI = i
      path[#path + 1] = self:Get(i)
    end
    if 1 - lastI >= step * 0.5 then
      do
        do
          local overrideLast = lastI >= 1
          path[#path + (overrideLast and 0 or 1)] = bezier:Get(1)
          do return path end
          -- DECOMPILER ERROR: 7 unprocessed JMP targets
        end
      end
    end
  end
      bezier.GetPoints = function(self)
    return points
  end
      do return setmetatable(bezier, Bezier) end
      -- DECOMPILER ERROR: 1 unprocessed JMP targets
    end
  end
end
Color = function(r, g, b)
  return Color3.new(r / 255, g / 255, b / 255)
end
lerp = function(a, b, k)
  return a + (b - a) * k
end
SineInOut = function(step)
  return 0.5 + math.cos(step * math.pi) * -0.5
end
normalize = function(value, min, max)
  return (value - min) / (max - min)
end
RandomCFRot = function()
  return CFrame.Angles(math.rad(math.random(360)), math.rad(math.random(360)), math.rad(math.random(360)))
end
NoOutline = function(Part)
  Part.TopSurface = 10
end
CreatePart = function()
  local part = Instance.new("Part")
  part.Size = vt(0.2, 0.2, 0.2)
  NoOutline(part)
  part.Anchored = true
  part.CanCollide = false
  local mesh = Instance.new("SpecialMesh", part)
  mesh.MeshType = "Brick"
  mesh.Scale = vt(5, 5, 5)
  return part, mesh
end
zapp = function(p0, p1, partcount, offset, color, transparency, material, size, fade, fadetrans, delay)
  if not partcount then
    partcount = math.ceil(p0 - p1.magnitude / 10)
  end
  if not offset then
    offset = 2
  end
  if not color then
    color = BrickColor.new("Bright yellow")
  end
  if type(color) == "string" then
    color = BrickColor.new(color)
  end
  if not transparency then
    transparency = 0.5
  end
  if not material then
    material = "Neon"
  end
  if not size then
    size = 0.2
  end
  if fade == nil then
    fade = true
  end
  if not fadetrans then
    fadetrans = 1
  end
  print(partcount)
  local parts = {}
  local lastpos = p0
  local lastranpos = p0
  for i = 1, partcount do
    local curpos = p0:lerp(p1, i / partcount)
    local curranpos = cf(curpos, lastpos) * cf(math.random(-offset * 10, offset * 10) / 10, math.random(-offset * 10, offset * 10) / 10, 0).p
    local p, m = CreatePart()
    p.BrickColor = color
    p.Transparency = transparency
    p.Material = material
    if i == partcount then
      curranpos = curpos
    end
    local range = lastranpos - curranpos.magnitude
    m.Scale = vt(size * 5, size * 5, range * 5)
    p.CFrame = cf(lastranpos, curranpos) * cf(0, 0, -range / 2)
    p.Parent = Character
    if fade then
      Effects:add(p, m, fase, nil, fadetrans)
    end
    table.insert(parts, {part = p, mesh = m})
    if delay ~= nil then
      if type(delay) == "function" then
        delay(curpos, curranpos, lastpos, curranpos, p, m)
      else
        wait(delay)
      end
    end
    lastpos = curpos
    lastranpos = curranpos
  end
  return parts
end
CheckHumanoidOfPart = function(part)
  local h = nil
  local h1, h2 = part.Parent:FindFirstChild("Humanoid"), part.Parent.Parent:FindFirstChild("Humanoid")
  if h1 then
    h = h1
  else
    if h2 then
      h = h2
    else
      return false
    end
  end
  return h, h.Parent
end
CheckHumanoidOfModel = function(Model)
  for i,v in ipairs(Model:GetChildren()) do
    if v:IsA("Humanoid") then
      return true, v
    end
  end
end
CheckHumanoid = function(Pos, Rad, MinRad, args)
  if not args then
    args = {}
  end
  if not MinRad then
    MinRad = 0
  end
  if DEBUG then
    local n = Instance.new("Part")
    n.Anchored = true
    n.CanCollide = false
    n.Transparency = 0.8
    n.TopSurface = "Smooth"
    n.BottomSurface = "Smooth"
    n.FormFactor = "Custom"
    n.Size = Vector3.new(Rad, Rad, Rad)
    n.CFrame = CFrame.new(Pos)
    local m = Instance.new("SpecialMesh")
    m.MeshType = "Sphere"
    m.Parent = n
    n.Parent = Character
    game:GetService("Debris"):AddItem(n, 0.2)
  end
  do
    local Results = {}
    for i,v in ipairs(workspace:GetChildren()) do
      if v:IsA("Model") then
        local go = false
        if args.ignoreSelf == true then
          go = true
        else
          if v ~= Character then
            go = true
          end
        end
        if go then
          local succes, humanoid = CheckHumanoidOfModel(v)
          if succes and humanoid.Health > 0 then
            for _,b in ipairs(v:GetChildren()) do
              if b:IsA("BasePart") then
                local Dist = Pos - b.CFrame.p.magnitude
                if Dist <= Rad / 2 and MinRad / 2 <= Dist then
                  table.insert(Results, {Model = v, Humanoid = humanoid, Distance = Dist, HitPart = b})
                  break
                end
              end
            end
          end
        end
      end
    end
    table.sort(Results, function(a, b)
    do return a.Distance < b.Distance end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end)
    return Results
  end
end
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  sou:play()
  game:GetService("Debris"):AddItem(sou, 6)
end
KnockBack = function(Target, Amount, Dir, Position, Extra, args)
  if not args then
    args = {}
  end
  local Torso = Target.Parent:FindFirstChild("Torso")
  if not Torso then
    return 
  end
  local Vel = nil
  if not Extra then
    Extra = Vector3.new(0, 0, 0)
  end
  if Dir then
    Vel = Dir * Amount + Extra
  else
    Dir = Torso.Position - Position.unit
    Vel = Dir * Amount + Extra
  end
  local bf = it("BodyVelocity")
  bf.Velocity = Vel
  bf.MaxForce = vt(math.huge, math.huge, math.huge)
  bf.Parent = Torso
  game:GetService("Debris"):AddItem(bf, args.time or 0.2)
end
takeDamage = function(Target, Min, Max, args)
  if not args then
    args = {}
  end
  local h = Target
  local hit = Target.Parent:FindFirstChild("Torso")
  if not hit then
    return 0
  end
  local succes = true
  local blocked = false
  local enblock = false
  local staggering = false
  if DEBUG then
    local nrargs = 0
    for i,v in pairs(args) do
      nrargs = nrargs + 1
    end
    if nrargs > 0 then
      print("Damage - Arguments")
      for i,v in pairs(args) do
        print("\t" .. tostring(i) .. " = " .. tostring(v))
      end
    end
  end
  do
    local dmg = math.random(Min, Max)
    if args.maxDamage and args.maxDamage < dmg then
      dmg = args.maxDamage
    end
    if dmg <= 3 and dmg > 0 and blocked ~= true and not args.noSound then
      local hitnum = math.random(1, 5)
      if hitnum == 1 then
        so("199149321", hit, 1, 1)
      else
        if hitnum == 2 then
          so("199149338", hit, 1, 1)
        else
          if hitnum == 3 then
            so("199149367", hit, 1, 1)
          else
            if hitnum == 4 then
              so("199149409", hit, 1, 1)
            else
              if hitnum == 5 then
                so("199149452", hit, 1, 1)
              end
            end
          end
        end
      end
    else
      do
        do
          if blocked ~= true and dmg > 0 and not args.noSound then
            local hitnum = math.random(1, 6)
            if hitnum == 1 then
              so("199149137", hit, 1, 1)
            else
              if hitnum == 2 then
                so("199149186", hit, 1, 1)
              else
                if hitnum == 3 then
                  so("199149221", hit, 1, 1)
                else
                  if hitnum == 4 then
                    so("199149235", hit, 1, 1)
                  else
                    if hitnum == 5 then
                      so("199149269", hit, 1, 1)
                    else
                      if hitnum == 6 then
                        so("199149297", hit, 1, 1)
                      end
                    end
                  end
                end
              end
            end
          end
          dmg = math.floor(dmg)
          coroutine.resume(coroutine.create(function(Hum, Dam)
    Hum.Health = Hum.Health - Dam
  end), h, dmg)
          local col = "Damage"
          if dmg < 0 then
            dmg = dmg * -1
            col = "Heal"
          end
          args.TextColor = col
          local disp = dmg
          if not DEBUG then
            disp = math.floor(dmg + 0.5)
          end
          return dmg, succes
        end
      end
    end
  end
end
if not Player:FindFirstChild("ShardDagger") then
  asset = require(script:WaitForChild("MainModule"))()
else
  asset = Player:FindFirstChild("ShardDagger"):Clone()
end
local Handle = asset:WaitForChild("Handle")
local Crystal = asset:WaitForChild("Crystal")
local Part1 = asset:WaitForChild("Part1")
local Part2 = asset:WaitForChild("Part2")
local Union = asset:WaitForChild("Union")
Weld(Handle, Crystal)
Weld(Handle, Part1)
Weld(Handle, Part2)
Weld(Handle, Union)
local rDag = asset:Clone()
local rHandle = rDag:WaitForChild("Handle")
local rCrystal = rDag:WaitForChild("Crystal")
local rPart1 = rDag:WaitForChild("Part1")
local rPart2 = rDag:WaitForChild("Part2")
local rUnion = rDag:WaitForChild("Union")
local lDag = asset:Clone()
local lHandle = lDag:WaitForChild("Handle")
local lCrystal = lDag:WaitForChild("Crystal")
local lPart1 = lDag:WaitForChild("Part1")
local lPart2 = lDag:WaitForChild("Part2")
local lUnion = lDag:WaitForChild("Union")
RW = Weld(RightArm, rHandle)
RW.C0 = cf(-1, 0, 0) * angles(-pi / 2, 0, pi / 2)
RW.C1 = cf()
LW = Weld(LeftArm, lHandle)
LW.C0 = cf(-1, 0, 0) * angles(pi / 2, 0, pi / 2)
LW.C1 = cf()
rDag.Parent = Character
lDag.Parent = Character
time = 0
game:GetService("RunService").RenderStepped:connect(function(step)
  time = time + step
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velderp = RootPart.Velocity.y
  local hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if Anim == "Walk" and canwalk then
    if walkforw == true then
      RH.C1 = clerp(RH.C1, DRH1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Humanoid.WalkSpeed / 120)
      LH.C1 = clerp(LH.C1, DLH1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Humanoid.WalkSpeed / 120)
    else
      RH.C1 = clerp(RH.C1, DRH1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Humanoid.WalkSpeed / 120)
      LH.C1 = clerp(LH.C1, DLH1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Humanoid.WalkSpeed / 120)
    end
    if not deb then
      local t = 0.1
      RJ.C0 = clerp(RJ.C0, DRJ0, t)
      N.C0 = clerp(N.C0, DN0, t)
      N.C1 = clerp(N.C1, DN1 * angles(0.15, 0, -0.2), t)
      LS.C0 = clerp(LS.C0, DLS0, t)
      RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
      LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0.2, 0), t)
      RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0.2, 0), t)
      RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.3, 0) * CFrame.Angles(0.3, 0.5, 0.5), t)
      LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.4, 0, 0.9) * cf(0, 0, 0.2), t)
      RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, -0.05, 0.2), t)
      RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
      RW.C1 = RW.C1:lerp(angles(-pi / 2 - 1, 0, pi / 2), t)
      LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
      LW.C1 = LW.C1:lerp(angles(pi / 2 - 1, 0, pi / 2), t)
    end
  else
    do
      if Anim == "Idle" then
        local t = 0.1
        local t2 = 0.02
        if deb == false then
          RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.3, 0) * CFrame.Angles(0.3, 0.5, 0.5) * angles(0, 0, sin(time) / 10), t)
          LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.4, 0, 0.9) * cf(0, 0, 0.2) * angles(0, 0, sin(time + 1) / 10), t)
          RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.25, 0, 0.2) * angles(sin(time) / 20, 0, 0), t)
          N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0.1, 0, -0.2) * angles(-sin(time) / 15, 0, 0), t)
          RJ.C0 = clerp(RJ.C0, DRJ0, t)
          N.C0 = clerp(N.C0, DN0, t)
          LS.C0 = clerp(LS.C0, DLS0 * angles(0, 0, 0), t)
          RS.C0 = clerp(RS.C0, DRS0, t)
          LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0.2, -0.4) * angles(0, 0, sin(time) / 20), t)
          RH.C0 = clerp(RH.C0, DRH0_ * angles(-0.05, -0.1, 0) * angles(0, 0, -sin(time) / 20), t)
          RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
          RW.C1 = RW.C1:lerp(angles(-pi / 2 - 1, 0, pi / 2), t)
          LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
          LW.C1 = LW.C1:lerp(angles(pi / 2 - 1, 0, pi / 2), t)
        end
        if canwalk then
          RH.C1 = clerp(RH.C1, DRH1 * cf() * angles(0, 0, 0), t)
          LH.C1 = clerp(LH.C1, DLH1 * cf() * angles(0, 0, 0), t)
        end
      end
      do
        if RootPart.Velocity.y > 1 and hitfloor == nil then
          Anim = "Jump"
          jumping = true
          if deb == false then
            N.C0 = clerp(N.C0, necko * euler(-0.2, 0, 0), 0.1)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.1)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.1)
            RS.C0 = clerp(RS.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.2), 0.1)
            RS.C1 = clerp(RS.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
            LS.C0 = clerp(LS.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.2), 0.1)
            LS.C1 = clerp(LS.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
            RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.1)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.1)
          end
          if canwalk then
            LH.C1 = clerp(LH.C1, DLH1, 0.1)
            RH.C1 = clerp(RH.C1, DRH1, 0.1)
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            jumping = true
            if deb == false then
              Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.1)
              Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.1)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, 0), 0.15)
              RS.C0 = clerp(RS.C0, cf(1.5, 0.5, 0) * euler(0.1, 0, 1), 0.1)
              RS.C1 = clerp(RS.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
              LS.C0 = clerp(LS.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -1), 0.1)
              LS.C1 = clerp(LS.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.1)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.1)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.1)
            end
            if canwalk then
              LH.C1 = clerp(LH.C1, DLH1, 0.1)
              RH.C1 = clerp(RH.C1, DRH1, 0.1)
            end
          else
            if torvel < 1 and hitfloor ~= nil then
              jumping = false
              Anim = "Idle"
              idle = idle + 0.5
              if idle >= 10 then
                idle = 0
                if idleforw == true then
                  idleforw = false
                else
                  if idleforw == false then
                    idleforw = true
                  end
                end
              end
            else
              if torvel > 2 and torvel < 100 and hitfloor ~= nil then
                jumping = false
                Anim = "Walk"
                walk = walk + 0.5
                if walk >= 10 then
                  walk = 0
                  if walkforw == true then
                    walkforw = false
                  else
                    if walkforw == false then
                      walkforw = true
                    end
                  end
                end
              end
            end
          end
        end
        Effects:update(step)
        if curkeys ~= "" then
          curinactive = curinactive + step
        end
        if curmaxinactive <= curinactive then
          curinactive = 0
          curkeys = ""
        end
        if safehum then
          Humanoid.PlatformStand = false
          Humanoid.Sit = false
        end
      end
    end
  end
end)
Humanoid:WaitForChild("Animator"):Destroy()
Character:WaitForChild("Animate").Disabled = true
genBody = function()
  local n = Create("BodyPosition")({MaxForce = vt(math.huge, math.huge, math.huge), D = 500})
  return n
end
local body, body2 = nil, nil
lasthit = nil
local mouseEnabled = false
local mouseCombo = 0
local mouseMax = 3
DEBUG = false
loop = function(time, func)
  local loopev, ended = nil, nil
  local total = 0
  loopev = game:GetService("RunService").RenderStepped:connect(function(step)
    total = total + step
    func(step, total)
    if time <= total then
      loopev:disconnect()
      ended = true
    end
  end)
  repeat
    wait()
  until ended
end
local cols = {"Really black", "Dark indigo"}
mousecombo = function()
  deb = true
  while 1 do
    if mouseEnabled then
      if mouseMax < mouseCombo then
        mouseCombo = 0
      end
      if mouseCombo == 0 then
        local Hit = {}
        do
          loop(0.13, function(step, total)
    local t = 10 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.15, 0, -0.3), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0.9, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0.9, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.3, 0) * CFrame.Angles(0.3, 0.5, 0.5), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-1.2, 0, 1.2) * cf(0, 0, 0.2), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, 0, 1), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2 - 1, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2 - 1, 0, pi / 2), t)
  end)
          loop(0.2, function(step, total)
    local t = 12 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.15, 0, 0.3), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.5, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.5, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.3, 0) * CFrame.Angles(0.3, 0.5, 0.5), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(1.5, 0, 1.2) * cf(0, 0, 0.2), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, 0, -0.6), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2 - 1, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2 - 1, 0, pi / 2 + 0.5), t)
    local curdmg = {10, 15}
    local Results = CheckHumanoid(lPart2.CFrame.p, 3)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 10, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC259: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end)
        end
      else
        do
          if mouseCombo == 1 then
            local Hit = {}
            loop(0.0833, function(step, total)
    local t = 10 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.15, 0, 0.3), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.4, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.4, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, 0.3) * cf(0, 0, 0.2), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, 0, -0.4), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2 - 1, 0, pi / 2), t)
  end)
            canwalk = false
            Stats.Speed:add(0.2, -100)
            loop(0.2, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.2, 0, -0.3), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0.3, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0.3, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * angles(0, 0, 1.5), t)
    RH.C1 = clerp(RH.C1, DRH1 * angles(0, 0, 0.4), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.1), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.5), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.2, 0, 0.3), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2, 0, pi / 2), t)
    Character.HumanoidRootPart.Velocity = Character.HumanoidRootPart.CFrame.lookVector * 10
    local curdmg = {10, 15}
    local Results = CheckHumanoid(LeftLeg.CFrame * cf(0, -1.5, 0).p, 3)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 20, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC292: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end)
            canwalk = true
          else
            do
              if mouseCombo == 2 then
                local Hit = {}
                loop(0.14, function(step, total)
    local t = 20 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.15, 0, -0.9), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.5, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.5, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.3, 0) * CFrame.Angles(0.3, 0, -0.5), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.2, 0, 0.2) * cf(0, 0, 0.2), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, 0, 1), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2, 0, pi / 2), t)
  end)
                loop(0.25, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.05, 0, 0.7), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.5, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.5, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.3, 0) * CFrame.Angles(-1, 0, -1.6), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.2, 0, 0.2) * cf(0, 0, 0.2), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -0.8), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(0, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2, 0, pi / 2), t)
    local curdmg = {10, 15}
    local Results = CheckHumanoid(rPart2.CFrame.p, 3)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 10, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC254: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end)
              else
                do
                  if mouseCombo == 3 then
                    Hit = {}
                    loop(0.2, function(step, total)
    local t = 20 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.05, 0, 0), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.3, 0, 0.5), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.3, 0, -0.5) * cf(0, 0, 0.2), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, 0), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(pi / 2, -0.5, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2, -0.5, pi / 2), t)
  end)
                    loop(0.3, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.05, 0, 0), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.4, 0, -0.8), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.4, 0, 0.8) * cf(0, 0, 0.2), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.05, 0, 0), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(pi / 2 + 0.1, 0.2, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2 - 0.1, 0.2, pi / 2), t)
    Character.HumanoidRootPart.Velocity = Character.HumanoidRootPart.CFrame.lookVector * 15
    local curdmg = {10, 15}
    local Results = CheckHumanoid(rPart2.CFrame.p, 3)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 10, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC265: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    local curdmg = {10, 15}
    local Results = CheckHumanoid(lPart2.CFrame.p, 3)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            KnockBack(Result.Humanoid, 10, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end)
                  end
                  mouseCombo = mouseCombo + 1
                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC218: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
      end
    end
  end
  mouseCombo = 0
  deb = false
end
keycombo = function(keys)
  if deb then
    return 
  end
  local reset = function()
    curkeys = ""
    curinactive = 0
  end
  if keys == "SAC" then
    deb = true
    reset()
    canwalk = false
    local Hit = {}
    do
      Stats.Speed:add(0.65, -100)
      loop(0.25, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.2, 0, -0.3), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf() * angles(0.1, 0, 0), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(0, 0, 0) * angles(0.1, 0, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.5), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.5), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, pi / 4), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
  end)
      loop(0.35, function(step, total)
    local t = 20 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.2, 0, -0.5), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf() * angles(1.2, 0, 0), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(0, -0.25, 0) * angles(1, 0, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.5), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.5), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 1, pi / 2), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    local curdmg = {35, 50}
    local Results = CheckHumanoid(LeftLeg.CFrame * cf(0, -1.5, 0).p, 3)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            Result.Humanoid.Jump = true
            KnockBack(Result.Humanoid, 100, nil, Torso.Position, vt(0, 50, 0))
          end
        end
        do
          -- DECOMPILER ERROR at PC302: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end)
      canwalk = true
      deb = false
    end
  else
    do
      if keys == "SSADQ" then
        reset()
        deb = true
        loop(1, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.1, 0, 0.7), t / 2)
    LS.C0 = clerp(LS.C0, DLS0 * cf(), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf() * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.8, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.8, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, pi + 0.5), t / 4)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.3), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, total * 40, -pi / 5), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2 + 1, 0, pi / 2), t)
    local p1, m1 = CreatePart()
    p1.CFrame = rPart2.CFrame * cf(0, math.random(-10, 10) / 10, 0)
    p1.Transparency = 0.5
    p1.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    m1.Scale = vt(1, 1, 1)
    Effects:add(p1, m1, true, vt(5, 5, 5), 1, 10, p1.CFrame * cf(0, math.random(10, 50) / 10, 0))
    p1.Parent = Character
  end)
        canwalk = false
        Stats.Speed:add(0.3, -100)
        loop(0.1, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.3, 0, 0.1), t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf() * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.1, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.1, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0.5, 0, 0) * angles(0, 0.3, -0.5), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(-0.5, -0.5, 0) * angles(0, 0, -0.6), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, 0, pi + 0.1), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.3), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 1, 0) * CFrame.Angles(-0.6, 0, -0.1), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2 + 0.5, 0, -pi / 5), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2 + 1, 0, pi / 2), t)
  end)
        spawn(function()
    local dir = Character.HumanoidRootPart.CFrame.lookVector
    local cpos = Character.HumanoidRootPart.CFrame.p
    local height = 300
    local range = 60
    for i = 1, range, 0.3 do
      local pos = cpos + dir * (i * 5)
      local Hit = {}
      local RStart, REnd = pos + vt(0, height / 2, 0), pos + Vector3.new(math.random(-40, 40) / 10, 0, math.random(-40, 40) / 10)
      local ray = Ray.new(RStart, REnd - RStart.unit * height)
      local ig = {Character}
      for i,v in ipairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") then
          table.insert(ig, v)
        end
      end
      local _, HitP = workspace:FindPartOnRayWithIgnoreList(ray, ig)
      pos = HitP + vt(0, 3, 0)
      local p1, m1 = CreatePart()
      p1.CFrame = cf(HitP, pos) * angles(math.rad(math.random(-20, 20)), math.rad(math.random(-20, 20)), math.rad(math.random(-20, 20)))
      p1.Transparency = 0.5
      p1.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
      m1.Scale = vt(30 + math.random(-10, 1), 30 + math.random(-10, 1), 0)
      Effects:add(p1, m1, false, vt(0, 0, 400), 1, 10)
      p1.Parent = Character
      local curdmg = {5, 10}
      local Results = CheckHumanoid(pos, 10)
      for _,Result in ipairs(Results) do
        local go = true
        if go then
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 20, nil, HitP)
          end
        end
      end
      swait()
    end
  end)
        loop(0.2, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.3, 0, 0.1), t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf() * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.1, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.1, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0.5, 0, 0) * angles(0, 0.3, -0.5), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(-0.5, -0.5, 0) * angles(0, 0, -0.6), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, 0, -1.4), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.5, 0, -0.3), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 1, 0) * CFrame.Angles(-0.6, 0, -0.1), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2 - 0.5, 0, -pi / 5), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2 + 1, 0, pi / 2), t)
  end)
        canwalk = true
        deb = false
      else
        if keys == "WWE" then
          deb = true
          reset()
          canwalk = false
          Hit = {}
          Stats.Speed:add(0.5, -100)
          loop(0.2, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.1, 0, 0.1), t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf() * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.1, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.1, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0.5, -0.3, 0) * angles(0, 0.1, -0.6), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(-0.5, -0.3, 0) * angles(0, 0, -0.3), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.3, 0, 0.3), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.3, 0, -0.3), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 1, 0) * CFrame.Angles(-0.3, 0, -0.1), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
  end)
          Humanoid.Jump = true
          loop(0.3, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(0.1, 0, 0.1), t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf() * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, -0.1, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, -0.1, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0.1, -0.1, 0) * angles(0, 0, -0.2), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(-0.5, -0.3, 0) * angles(0, 0, -0.1), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.05, 0, -2.5), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.05, 0, 2.5), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 1, 0) * CFrame.Angles(-0.1, 0, -0.1), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    local p1, m1 = CreatePart()
    p1.CFrame = lPart2.CFrame * cf(0, math.random(-10, 10) / 10, 0)
    p1.Transparency = 0.5
    p1.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    m1.Scale = vt(1, 1, 1)
    local p2, m2 = CreatePart()
    p2.CFrame = rPart2.CFrame * cf(0, math.random(-10, 10) / 10, 0)
    p2.Transparency = 0.5
    p2.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    m2.Scale = vt(1, 1, 1)
    Effects:add(p1, m1, true, vt(20, 20, 20), 1, 10, p1.CFrame * cf(0, math.random(10, 20) / 10, 0))
    p1.Parent = Character
    Effects:add(p2, m2, true, vt(20, 20, 20), 1, 10, p2.CFrame * cf(0, math.random(10, 20) / 10, 0))
    p2.Parent = Character
    Character.HumanoidRootPart.Velocity = Character.HumanoidRootPart.CFrame.lookVector * 100 + vt(0, total * 150, 0)
    local curdmg = {30, 45}
    local Results = CheckHumanoid(rPart2.CFrame.p, 3)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 50, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC435: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    local curdmg = {30, 45}
    local Results = CheckHumanoid(lPart2.CFrame.p, 3)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 50, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC487: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end)
          canwalk = true
          deb = false
        else
          if keys == "SSE" and jumping then
            deb = true
            reset()
            canwalk = false
            safehum = false
            Hit = {}
            Humanoid.PlatformStand = true
            local bp = genBody()
            bp.Position = RootPart.Position
            bp.Parent = RootPart
            local bg = it("BodyGyro")
            bg.MaxTorque = vt(math.huge, math.huge, math.huge)
            bg.CFrame = workspace.CurrentCamera.CoordinateFrame
            bg.Parent = RootPart
            loop(0.3, function(step, total)
    local t = 30 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.1, 0, 0.1), t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf() * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0, 0, 0) * angles(0.1, 0, -0.1), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(0, 0, 0) * angles(0.1, 0, 0.1), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.5, 0.3) * CFrame.Angles(-0.4, 0, -1.5), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.5, 0.3) * CFrame.Angles(-0.4, 0, 1), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(pi / 2 + 1.5, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2 - 1.5, 0, pi / 2), t)
    bg.CFrame = workspace.CurrentCamera.CoordinateFrame
  end)
            loop(0.3, function(step, total)
    local t = 20 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.1, 0, 0.1), t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf() * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0, 0, 0) * angles(0.1, 0, -0.1), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(0, 0, 0) * angles(0.1, 0, 0.1), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.5, 0.3) * CFrame.Angles(1.7, 0, -1.2), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.5, 0.3) * CFrame.Angles(1.7, 0, 1.2), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(pi / 2 + 1.5, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(pi / 2 - 1.5, 0, pi / 2), t)
    bg.CFrame = workspace.CurrentCamera.CoordinateFrame
    local RStart, REnd = RootPart.Position, RootPart.Position + RootPart.CFrame.lookVector * 12
    local ray = Ray.new(RStart, REnd - RStart.unit * 15)
    local ig = {Character}
    for i,v in ipairs(workspace:GetChildren()) do
      if v:IsA("Model") and v:FindFirstChild("Humanoid") then
        table.insert(ig, v)
      end
    end
    local HitPart, HitP = workspace:FindPartOnRayWithIgnoreList(ray, ig)
    if HitPart == nil then
      bp.Position = RootPart.Position + RootPart.CFrame.lookVector * 12
    end
    local p1, m1 = CreatePart()
    p1.CFrame = lPart2.CFrame * cf(0, math.random(-20, 20) / 10, 0)
    p1.Transparency = 0.5
    p1.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    m1.Scale = vt(1, 1, 1)
    local p2, m2 = CreatePart()
    p2.CFrame = rPart2.CFrame * cf(0, math.random(-20, 20) / 10, 0)
    p2.Transparency = 0.5
    p2.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    m2.Scale = vt(1, 1, 1)
    Effects:add(p1, m1, true, vt(40, 40, 40), 1, 10, p1.CFrame * cf(0, math.random(10, 20) / 10, 0))
    p1.Parent = Character
    Effects:add(p2, m2, true, vt(40, 40, 40), 1, 10, p2.CFrame * cf(0, math.random(10, 20) / 10, 0))
    p2.Parent = Character
    local curdmg = {30, 45}
    local Results = CheckHumanoid(rPart2.CFrame.p, 4)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 20, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC484: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    local curdmg = {30, 45}
    local Results = CheckHumanoid(lPart2.CFrame.p, 4)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, curdmg[1], curdmg[2], {})
          if s then
            lasthit = Result.Model
            KnockBack(Result.Humanoid, 20, nil, Torso.Position)
          end
        end
        do
          -- DECOMPILER ERROR at PC536: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end)
            Torso.Velocity = vt()
            Humanoid.Jump = true
            bp:Destroy()
            bg:Destroy()
            canwalk = true
            safehum = true
            deb = false
          else
            do
              if keys == "SSQ" and lasthit and lasthit:FindFirstChild("Humanoid") and lasthit:FindFirstChild("Torso") and lasthit.Parent ~= nil then
                deb = true
                reset()
                canwalk = false
                Stats.Speed:add(0.3, -100)
                loop(0.1, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.2, 0, 0), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * angles(0, 0, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0, 0, 0) * angles(0.1, 0, 0.1), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(0, 0, 0) * angles(0.1, 0, 0.1), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.5, 0, -2.3), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.5, 0, 2.3), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, 0), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
  end)
                loop(0.2, function(step, total)
    local t = 15 * step
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    N.C1 = clerp(N.C1, DN1 * angles(-0.2, 0, 0), t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0 * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0, 0, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, 0, 0) * angles(0, 0, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0.5, -1, 0) * angles(0.1, 0, 0.1), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(0, 0, 0) * angles(0.1, 0, 1), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.5, 0, -1.6), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.5, 0, 1.6), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 1) * CFrame.Angles(-0.3, 0, 0), t)
    RW.C0 = RW.C0:lerp(cf(0, -1, 0), t)
    RW.C1 = RW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
    LW.C0 = LW.C0:lerp(cf(0, -1, 0), t)
    LW.C1 = LW.C1:lerp(angles(-pi / 2, 0, pi / 2), t)
  end)
                zapp(lasthit.Torso.Position, Torso.Position, nil, 3, nil, nil, nil, math.random(15, 20) / 10, nil, nil, function(curpos, curranpos, lastpos, curranpos, p, m)
    pcall(function()
      lasthit.Torso.CFrame = p.CFrame
      local _, s = takeDamage(lasthit.Humanoid, 1, 3, {})
      if s then
        Humanoid.Health = Humanoid.Health + 1
        if Humanoid.MaxHealth < Humanoid.Health then
          Humanoid.Health = Humanoid.MaxHealth
        end
      end
    end)
    rwait()
  end)
                canwalk = true
                deb = false
              end
            end
          end
        end
      end
    end
  end
end
allowedkeys = {A = true, S = true, D = true, W = true, Q = true, E = true, Z = true, X = true, C = true}
Mouse.Button1Down:connect(function()
  if deb then
    return 
  end
  mouseEnabled = true
  mousecombo()
end)
Mouse.Button1Up:connect(function()
  if not deb then
    return 
  end
  mouseEnabled = false
end)
Mouse.KeyDown:connect(function(key)
  if Humanoid.Health == 0 then
    return 
  end
  key = key:upper()
  if allowedkeys[key] then
    curinactive = 0
    curkeys = curkeys .. key
    print(curkeys)
    keycombo(curkeys)
  end
end)

