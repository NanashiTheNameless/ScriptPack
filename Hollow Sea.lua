--attempt to call global NS (a nil value )--

-Easy fix?--

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
      if v.part.Transparency >= 1 then
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
  return data
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
_G.add = function(time, amount)
  Stats.Speed:add(time, amount)
end
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
    partcount = math.ceil(p0 - p1.magnitude)
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
joinTables = function(...)
  local tabs = {...}
  local newtab = {}
  for i,tab in ipairs(tabs) do
    for i,v in ipairs(tab) do
      table.insert(newtab, v)
    end
  end
  return newtab
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
CFrameFromTopBack = function(at, top, back)
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
        warn("unreachable")
        return 
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart")
    game:GetService("Debris"):AddItem(w1, 5)
    w1.BrickColor = BrickColor.new("Sea green")
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "Neon"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = Character
    w1.Transparency = 0.5
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
    Effects:add(w1, sp, false, nil, 1, 1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart")
      game:GetService("Debris"):AddItem(w2, 5)
      w2.BrickColor = BrickColor.new("Sea green")
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "Neon"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = Character
      w2.Transparency = 0.5
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
      Effects:add(w2, sp, false, nil, 1, 1)
    end
    do
      return unpack(list)
    end
  end
end
local lp = {cf(), cf(), cf(), cf()}
local pop = false
local off1, off2 = cf(0, 0, -1), cf(0, 0, -9)
game:GetService("RunService").RenderStepped:connect(function(step)
  if not pop then
    return 
  end
  lp[1] = lp[3]
  lp[3] = Handle.CFrame * off1
  lp[4] = Handle.CFrame * off2
  Triangle(lp[1].p, lp[2].p, lp[3].p)
  Triangle(lp[3].p, lp[4].p, lp[2].p)
end)
resumeTrail = function()
  pop = true
  lp[3] = Handle.CFrame * off1
  lp[4] = Handle.CFrame * off2
end
stopTrail = function()
  pop = false
end
if not Player:FindFirstChild("HollowSea") or not Player:FindFirstChild("Assets") then
  if game:GetService("RunService"):IsStudio() == false and game.PlaceId ~= 340744170 then
    NS("    \t\tlocal assetId = 415309516\n    \t\tasset = require(assetId)()\n            print(asset.Name)\n    \t\tasset[1].Parent = script.Parent.Parent\n            asset[2].Parent = script.Parent.Parent\n    \t", Player.Backpack)
    HS = Player:WaitForChild("HollowSea"):Clone()
    Assets = Player:WaitForChild("Assets"):Clone()
  else
    asset = require(script:WaitForChild("MainModule"))()
    HS = asset[1]
    Assets = asset[2]
  end
else
  HS = Player:FindFirstChild("HollowSea"):Clone()
  Assets = Player:FindFirstChild("Assets"):Clone()
end
Handle = HS:WaitForChild("Handle")
WeldObjects(HS, Handle)
local W = Weld(RightArm, Handle)
W.C0 = cf()
W.C1 = cf()
Ring = Assets:WaitForChild("Ring")
Diamond = Assets:WaitForChild("Diamond")
HS.Parent = Character
time = 0
gstep = 0
game:GetService("RunService").RenderStepped:connect(function(step)
  gstep = step
  time = time + step
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velderp = RootPart.Velocity.y
  local hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if Anim == "Walk" and canwalk then
    RH.C1 = clerp(RH.C1, DRH1 * cf(sin(time * 7 + 1) / 2, sin(time * 7 + 1) / 3, 0) * euler(0, 0, sin(time * 7) * 1.2), Humanoid.WalkSpeed / 120)
    LH.C1 = clerp(LH.C1, DLH1 * cf(sin(time * 7 + 1) / 2, -sin(time * 7 + 1) / 3, 0) * euler(0, 0, sin(time * 7) * 1.2), Humanoid.WalkSpeed / 120)
    if not deb then
      local t = 0.1
      RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.5, -0.2, -0.6) * angles(0, 0, 0), t)
      LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.4, 0, 0.4) * angles(0, 0, 0), t)
      RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1), t)
      N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time * 7 + 1) / 25, 0.02, 1), t)
      RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time * 7) / 20) * angles(0.2, 0, 0), t)
      N.C0 = clerp(N.C0, DN0, t)
      LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time * 7) / 20, -0.2) * angles(0, 0, 0), t)
      RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time * 7) / 20, -0.2) * angles(0, 0, 0), t)
      W.C0 = W.C0:lerp(cf(0, -1, 0), t)
      W.C1 = W.C1:lerp(cf(0, 0.1, 0.5) * angles(0.5, -1.6, 0), t)
      LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.2, -sin(time * 7) / 20, 0) * angles(-0.16, -1, 0) * angles(0, 0, 0), t * 2)
      RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.2, -sin(time * 7) / 20, 0) * angles(0.16, -1, 0) * angles(0, 0, 0), t * 2)
    end
  else
    do
      if Anim == "Idle" then
        local t = 0.1
        local t2 = 0.02
        if deb == false then
          RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.5, -0.2, -0.6) * angles(0, 0, 0), t)
          LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.4, 0, 0.4) * angles(0, 0, 0), t)
          RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1), t)
          N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1), t)
          RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
          N.C0 = clerp(N.C0, DN0, t)
          LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
          RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
          W.C0 = W.C0:lerp(cf(0, -1, 0), t)
          W.C1 = W.C1:lerp(cf(0, 0.1, 0.5) * angles(0.5, -1.6, 0), t)
          LH.C0 = clerp(LH.C0, DLH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.05, 0.1, -0.2) * angles(0, 0, 0), t)
          RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.05, -0.1, 0) * angles(0, 0, 0), t)
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
            t = 0.1
            RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.5, -0.2, -1.2) * angles(0, 0, 0), t)
            LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.4, 0, 1) * angles(0, 0, 0), t)
            RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), t)
            N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0.1 + sin(time + 1) / 15, 0.02, 1), t)
            RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
            N.C0 = clerp(N.C0, DN0, t)
            LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
            RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
            W.C0 = W.C0:lerp(cf(0, -1, 0), t)
            W.C1 = W.C1:lerp(cf(0, 0.1, 0.5) * angles(0.5, -1.6, 0), t)
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
              t = 0.1
              RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.5, -0.2, -0.9) * angles(0, 0, 0), t)
              LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.4, 0, 0.7) * angles(0, 0, 0), t)
              RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1), t)
              N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0, 0.02, 1), t)
              RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
              N.C0 = clerp(N.C0, DN0, t)
              LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
              RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
              W.C0 = W.C0:lerp(cf(0, -1, 0), t)
              W.C1 = W.C1:lerp(cf(0, 0.1, 0.5) * angles(0.5, -1.6, 0), t)
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
MagHitInit = function(dmgmin, dmgmax, magargs, dmgargs, callback)
  if (not callback and magargs) or not dmgargs then
    local data = {
Hit = {}
, callback = function()
  end, min = dmgmin, max = dmgmax, 
magargs = {}
, 
dmgargs = {}
}
    data.check = function(self, pos, range, minrange)
    local Results = CheckHumanoid(pos, range, minrange or nil, self.magargs)
    for _,Result in ipairs(Results) do
      local go = true
      for _,v in ipairs(self.Hit) do
        if Result.Humanoid == v then
          go = false
          break
        end
      end
      do
        if go then
          table.insert(self.Hit, Result.Humanoid)
          local _, s = takeDamage(Result.Humanoid, self.min, self.max, self.dmgargs)
          if s then
            self.callback(Result)
          end
        end
        do
          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
    return data
  end
end
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
local cols = {"Black", "Pastel light blue", "Quill grey", "Light blue", "Pastel blue"}
DEBUG = false
local mouseEnabled = false
local mouseCombo = 0
local mouseMax = 2
alongblade = function(hit, range, minrange)
  local s = Handle.CFrame * cf(0, 0, -1)
  local e = Handle.CFrame * cf(0, 0, -9)
  for i = 0, 1, 0.25 do
    hit:check(s:lerp(e, i).p, range or 3, minrange or nil)
  end
end
mousecombo = function()
  deb = true
  while 1 do
    if mouseEnabled then
      if mouseMax < mouseCombo then
        mouseCombo = 0
      end
      if mouseCombo == 0 then
        local hit = MagHitInit(10, 15, nil, nil, function(Result)
    KnockBack(Result.Humanoid, 10, nil, Torso.Position)
  end)
        do
          loop(0.15, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.8, -0.2, -0.6) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.1, 0, 0.4) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.2), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0.1, 0.5) * angles(0.8, -1.6, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.2, -1.2, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.2, -1.2, 0) * angles(0, 0, 0), t)
  end)
          resumeTrail()
          loop(0.2, function(step, total)
    local t = 22 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.1, 0) * CFrame.Angles(-0.1, -0.2, -1.6) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.4, 0) * CFrame.Angles(-0.8, 0, 1.4) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, 1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, -1.2), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, -0.1, 0.6) * angles(0.5, -1.6, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0.2, -1.3, -0.2) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0.2, -1.5, 0) * angles(0, 0, 0), t)
    alongblade(hit)
  end)
          stopTrail()
        end
      else
        do
          if mouseCombo == 1 then
            local hit = MagHitInit(10, 15, nil, nil, function(Result)
    KnockBack(Result.Humanoid, 10, nil, Torso.Position)
  end)
            loop(0.3, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(-0.1, -0.2, -1.3) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.5, 0) * CFrame.Angles(-0.8, 0, 1.6) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, 1.7), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, -1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.6) * angles(-0.4, 2.1, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0.2, -1.3, -0.2) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0.2, -1.5, 0) * angles(0, 0, 0), t)
  end)
            resumeTrail()
            loop(0.2, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.4, 0) * CFrame.Angles(-0.1, -0.2, -1.55) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, -0.1, 0) * CFrame.Angles(-0.8, 0, 1.55) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 0.9), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.6) * angles(0.4, 1.8, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -0.9, 0) * angles(0, 0, 0), t)
    alongblade(hit)
  end)
            stopTrail()
          else
            do
              do
                if mouseCombo == 2 then
                  local hit = MagHitInit(10, 15, nil, nil, function(Result)
    KnockBack(Result.Humanoid, 10, nil, Torso.Position)
  end)
                  loop(0.2, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.8, -0.2, -1.55) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(-0.1, 0, 1.55) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.6) * angles(-0.7, 1.8, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.4, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.3, 0) * angles(0, 0, 0), t)
  end)
                  loop(0.15, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(0.1, -0.2, -1.5) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-1, 0, 1.5) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.5) * angles(0, 1.8, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.4, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.3, 0) * angles(0, 0, 0), t)
    Character.HumanoidRootPart.Velocity = vt(0, Character.HumanoidRootPart.Velocity.Y, 0) + Character.HumanoidRootPart.CFrame.lookVector * 30
    local n = CreatePart()
    n.CanCollide = false
    n.Anchored = true
    local m = n:WaitForChild("Mesh")
    m.MeshType = "Sphere"
    n.CFrame = Handle.CFrame * cf(0, 0, -5) * angles(1.55, 0, 0)
    n.BrickColor = BrickColor.new("Sea green")
    n.Material = "Neon"
    m.Scale = vt(2, 35, 2)
    Effects:add(n, m, false, vt(1, 5, 1), 2)
    n.Parent = Character
    if not jumping then
      local p1, m1 = CreatePart()
      p1.CFrame = LeftLeg.CFrame * cf(0, -1, 0) * RandomCFRot()
      p1.Transparency = 0.25
      p1.Anchored = true
      p1.BrickColor = BrickColor.new("Fossil")
      m1.Scale = vt(2, 2, 2)
      Effects:add(p1, m1, false, vt(5, 5, 5), 0.7, nil, cf(p1.Position + vt(0, math.random(0, 10) / 10, 0)) * RandomCFRot())
      p1.Parent = Character
      local p1, m1 = CreatePart()
      p1.CFrame = RightLeg.CFrame * cf(0, -1, 0) * RandomCFRot()
      p1.Transparency = 0.25
      p1.Anchored = true
      p1.BrickColor = BrickColor.new("Fossil")
      m1.Scale = vt(2, 2, 2)
      Effects:add(p1, m1, false, vt(5, 5, 5), 0.7, nil, cf(p1.Position + vt(0, math.random(0, 10) / 10, 0)) * RandomCFRot())
      p1.Parent = Character
    end
    do
      alongblade(hit)
    end
  end)
                end
                mouseCombo = mouseCombo + 1
                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
  end
  deb = false
end
shield = false
looping = false
keycombo = function(keys)
  if deb then
    return 
  end
  local reset = function()
    curkeys = ""
    curinactive = 0
  end
  if keys == "Z" then
    deb = true
    reset()
    local hit = MagHitInit(30, 35, nil, nil, function(Result)
    KnockBack(Result.Humanoid, 50, nil, Torso.Position)
  end)
    do
      canwalk = false
      local speed = Stats.Speed:add(0.5, -100)
      loop(0.5, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.8, -0.2, -0.6) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.1, 0, 0.4) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.5 + sin(time + 1) / 15, 0.02, 0.6), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, -1 + sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0.1, 0.5) * angles(0.8, -1.6, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.2, -0.2, 1) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.2, -0.8, 0) * angles(0, 0, 0), t)
    LH.C1 = clerp(LH.C1, DLH1 * cf(0, -1, 0), t)
    RH.C1 = clerp(RH.C1, DRH1 * cf(-0.2, -1, 0), t)
    local n = CreatePart()
    n.CanCollide = false
    n.Anchored = true
    local m = n:WaitForChild("Mesh")
    m.MeshType = "Sphere"
    n.CFrame = Handle.CFrame * cf(0, 0, -5) * angles(1.55, 0, 0)
    n.BrickColor = BrickColor.new("Sea green")
    n.Material = "Neon"
    m.Scale = vt(2, 40, 2)
    Effects:add(n, m, false, vt(1, 10, 1), 2, nil, n.CFrame * cf(math.random(-2, 2) / 10, 0, math.random(-2, 2) / 10))
    n.Parent = Character
    local p1, m1 = CreatePart()
    p1.CFrame = Handle.CFrame * cf(0, 0, math.random(-9, -1)) * RandomCFRot()
    p1.Transparency = 0.25
    p1.Anchored = true
    p1.BrickColor = BrickColor.new("Sea green")
    m1.Scale = vt(2, 2, 2)
    Effects:add(p1, m1, false, vt(5, 5, 5), 0.7, nil, cf(p1.Position + vt(0, math.random(0, 30) / 10, 0)) * RandomCFRot())
    p1.Parent = Character
  end)
      canwalk = true
      resumeTrail()
      loop(0.1, function(step, total)
    local t = 17 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.1, 0) * CFrame.Angles(1, 0, -1.6) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.2, 0) * CFrame.Angles(-1.2, 0, 1.6) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, 0.8), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.2 + sin(time + 1) / 15, 0.02, -0.8), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, -1.6, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0.2, 1, -0.2) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0.2, 1, 0) * angles(0, 0, 0), t)
    alongblade(hit)
    local p1, m1 = CreatePart()
    p1.CFrame = Handle.CFrame * cf(0, 0, math.random(-9, -1)) * RandomCFRot()
    p1.Transparency = 0.25
    p1.Anchored = true
    p1.BrickColor = BrickColor.new("Sea green")
    m1.Scale = vt(2, 2, 2)
    Effects:add(p1, m1, false, vt(5, 5, 5), 0.7, nil, cf(p1.Position + vt(0, math.random(0, 30) / 10, 0)) * RandomCFRot())
    p1.Parent = Character
  end)
      loop(0.1, function(step, total)
    local t = 15 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.1, 0) * CFrame.Angles(1, 0, -1.6) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-1.2, 0, 1.6) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, 1.9), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.2 + sin(time + 1) / 15, 0.02, -1.2), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, -0.1, 0.6) * angles(0.5, -1.6, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0.2, 1.3, -0.2) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0.2, 1.3, 0) * angles(0, 0, 0), t)
    alongblade(hit)
    local p1, m1 = CreatePart()
    p1.CFrame = Handle.CFrame * cf(0, 0, math.random(-9, -1)) * RandomCFRot()
    p1.Transparency = 0.25
    p1.Anchored = true
    p1.BrickColor = BrickColor.new("Sea green")
    m1.Scale = vt(2, 2, 2)
    Effects:add(p1, m1, false, vt(5, 5, 5), 0.7, nil, cf(p1.Position + vt(0, math.random(0, 30) / 10, 0)) * RandomCFRot())
    p1.Parent = Character
  end)
      stopTrail()
      deb = false
    end
  else
    do
      if keys == "X" then
        stabbing = true
        Mouse.KeyUp:connect(function(key)
    if key == "x" then
      stabbing = false
    end
  end)
        reset()
        deb = true
        local stabs = {function(step, total)
    local t = 25 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(0.1, -0.2, -1.5) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-1, 0, 1.5) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.5) * angles(0, 1.8, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.4, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.3, 0) * angles(0, 0, 0), t)
  end, function(step, total)
    local t = 25 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(0.3, -0.2, -1.5) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-0.8, 0, 1.5) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.5) * angles(0.4, 1.8, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.4, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.3, 0) * angles(0, 0, 0), t)
  end, function(step, total)
    local t = 25 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(-0.1, -0.2, -1.5) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-1.2, 0, 1.5) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.5) * angles(-0.4, 1.8, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.4, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.3, 0) * angles(0, 0, 0), t)
  end, function(step, total)
    local t = 25 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(0.1, -0.2, -1.4) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-1, 0, 1.6) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.5) * angles(0, 2, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.4, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.3, 0) * angles(0, 0, 0), t)
  end, function(step, total)
    local t = 25 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(0.1, -0.2, -1.6) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.1, 0) * CFrame.Angles(-1, 0, 1.4) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.5) * angles(0, 1.6, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.4, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.3, 0) * angles(0, 0, 0), t)
  end}
        local stabr = 1
        resumeTrail()
        while stabbing do
          loop(0.1, function(step, total)
    local t = 25 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.8, -0.2, -1.55) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, -0.2, 0) * CFrame.Angles(-0.1, 0, 1.55) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, -1.5), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.02 + sin(time + 1) / 15, 0.02, 1.4), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, -0.6) * angles(-0.7, 1.8, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.4, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(-0.3, -sin(time) / 20, -0.2) * angles(0, -1.3, 0) * angles(0, 0, 0), t)
  end)
          loop(0.05, stabs[stabr])
          stabr = stabr + 1
          if #stabs < stabr then
            stabr = 1
          end
          local hit = MagHitInit(10, 15, nil, nil, function(Result)
    KnockBack(Result.Humanoid, 10, nil, Torso.Position)
  end)
          alongblade(hit, 6)
          local n = CreatePart()
          n.CanCollide = false
          n.Anchored = true
          local m = n:WaitForChild("Mesh")
          m.MeshType = "Sphere"
          n.CFrame = Handle.CFrame * cf(0, 0, -5) * angles(1.55, 0, 0)
          n.BrickColor = BrickColor.new("Sea green")
          n.Material = "Neon"
          m.Scale = vt(2, 35, 2)
          Effects:add(n, m, false, vt(1, 5, 1), 2, nil, Handle.CFrame * cf(0, 0, -10) * angles(1.55, 0, 0))
          n.Parent = Character
        end
        do
          do
            stopTrail()
            deb = false
            if keys == "C" then
              firing = true
              Mouse.KeyUp:connect(function(key)
    if key == "c" then
      firing = false
    end
  end)
              reset()
              deb = true
              local steps = 0
              local speed = Stats.Speed:add(1, -0.5)
              loop(1, function(step, total)
    steps = steps + 1
    local t = 15 * step
    if t > 1 then
      t = 1
    end
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, -0.1, 0) * CFrame.Angles(1.2, 0, -1.2) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(-1.1, 0, 1.4) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, 1.9), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.2 + sin(time + 1) / 15, 0.02, -1.2), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
    W.C0 = W.C0:lerp(cf(0, -1, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, -1.4, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.3, -sin(time) / 20, -0.2) * angles(0.2, 1, -0.2) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0.3, -sin(time) / 20, -0.2) * angles(0.2, 1, 0) * angles(0, 0, 0), t)
    local p1, m1 = CreatePart()
    p1.CFrame = LeftArm.CFrame * cf(0, -1, 0) * RandomCFRot()
    p1.Transparency = 0.25
    p1.Anchored = true
    p1.BrickColor = BrickColor.new("Sea green")
    m1.Scale = vt(2, 2, 2)
    if math.random(1, 2) == 1 then
      p1.Material = "Neon"
    end
    if math.random(1, 2) == 1 then
      m1.MeshType = "Sphere"
    end
    Effects:add(p1, m1, false, vt(5, 5, 5), math.random(5, 10) / 10, nil, cf(p1.Position + vt(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * RandomCFRot())
    p1.Parent = Character
    if steps % 10 == 0 then
      local d = Ring:Clone()
      d.BrickColor = BrickColor.new("Black")
      d.CFrame = LeftArm.CFrame * cf(0, -1, 0) * RandomCFRot()
      d.Transparency = 0.1
      d.Anchored = true
      local m = d:WaitForChild("Mesh")
      m.Scale = vt(0, 0, 0.1)
      d.Parent = Character
      Effects:add(d, m, false, vt(5, 5, 0.1), 1, nil, cf(p1.Position) * RandomCFRot())
    end
  end)
              local amount = math.random(20, 30)
              local speed = Stats.Speed:add(nil, -0.5)
              local ti = 1
              spawn(function()
    while firing do
      spawn(function()
      local mp = Mouse.Hit
      local Hit = CheckHumanoid(mp.p, 10)
      if Hit[1] then
        local Hit = Hit[1]
        local HitP = Hit.HitPart
        local bez = Bezier.new(LeftArm.CFrame * cf(0, -1, 0).p, LeftArm.CFrame * cf(math.random(-30, 30), -30, math.random(-30, 30)).p, LeftArm.CFrame:lerp(HitP.CFrame, 0.25) * RandomCFRot() * cf(math.random(20, 50), 0, 0).p, LeftArm.CFrame:lerp(HitP.CFrame, 0.5) * RandomCFRot() * cf(math.random(20, 50), 0, 0).p, LeftArm.CFrame:lerp(HitP.CFrame, 0.75) * RandomCFRot() * cf(math.random(20, 50), 0, 0).p, HitP.CFrame.p)
        local lastraw = LeftArm.CFrame * cf(0, -1, 0).p
        for i = 0, 10, 0.5 do
          swait()
          local p = bez:Get(i / 10)
          local p1, m1 = CreatePart()
          p1.CFrame = cf(p) * RandomCFRot()
          p1.Transparency = 0.25
          p1.Anchored = true
          p1.BrickColor = BrickColor.new("Sea green")
          m1.Scale = vt(2, 2, 2)
          Effects:add(p1, m1, false, vt(5, 5, 5), math.random(5, 10) / 10, nil, cf(p1.Position + vt(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * RandomCFRot())
          p1.Parent = Character
          local dist = lastraw - p.magnitude
          local p1, m1 = CreatePart()
          m1.MeshType = "Cylinder"
          p1.CFrame = cf(p, lastraw) * angles(0, pi / 2, 0) * cf(dist / 2, 0, 0)
          p1.Transparency = 0.25
          p1.Anchored = true
          p1.BrickColor = BrickColor.new("Sea green")
          p1.Material = "Neon"
          m1.Scale = vt(dist * 5, 5, 5)
          Effects:add(p1, m1, false, vt(0, -10, -10), 1)
          p1.Parent = Character
          lastraw = p
        end
        if Hit.Humanoid then
          local _, s = takeDamage(Hit.Humanoid, 5, 10, {})
          if s then
            KnockBack(Hit.Humanoid, 5, nil, Torso.Position)
          end
        end
      end
    end)
      wait(ti)
      ti = ti - 0.1
      if ti < 0.1 then
        ti = 0.1
      end
    end
  end)
              while firing do
                rwait()
                steps = steps + 1
                local t = 15 * gstep
                if t > 1 then
                  t = 1
                end
                RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.2, 0) * CFrame.Angles(1, 0, -1.5) * angles(0, 0, 0), t)
                LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0.4, 0) * CFrame.Angles(1.2, 0, 1.4) * angles(0, 0, 0), t)
                RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.1, 0, 1.2), t)
                N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.2 + sin(time + 1) / 15, 0.02, -1.2), t)
                RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20), t)
                N.C0 = clerp(N.C0, DN0, t)
                LS.C0 = clerp(LS.C0, DLS0 * cf(-0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
                RS.C0 = clerp(RS.C0, DRS0 * cf(0.2, 0 + sin(time) / 20, -0.2) * angles(0, 0, 0), t)
                W.C0 = W.C0:lerp(cf(0, -1, 0), t)
                W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, -1.4, 0), t)
                LH.C0 = clerp(LH.C0, DLH0_ * cf(0.3, -sin(time) / 20, -0.2) * angles(0.2, 1, -0.2) * angles(0, 0, 0), t)
                RH.C0 = clerp(RH.C0, DRH0_ * cf(0.3, -sin(time) / 20, -0.2) * angles(0.2, 1, 0) * angles(0, 0, 0), t)
                local p1, m1 = CreatePart()
                p1.CFrame = LeftArm.CFrame * cf(0, -1, 0) * RandomCFRot()
                p1.Transparency = 0.25
                p1.Anchored = true
                p1.BrickColor = BrickColor.new("Sea green")
                m1.Scale = vt(2, 2, 2)
                if math.random(1, 2) == 1 then
                  p1.Material = "Neon"
                end
                if math.random(1, 2) == 1 then
                  m1.MeshType = "Sphere"
                end
                Effects:add(p1, m1, false, vt(5, 5, 5), math.random(5, 10) / 10, nil, cf(p1.Position + vt(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * RandomCFRot())
                p1.Parent = Character
                if (steps) % 10 == 0 then
                  local d = Ring:Clone()
                  d.BrickColor = BrickColor.new("Black")
                  d.CFrame = LeftArm.CFrame * cf(0, -1, 0) * RandomCFRot()
                  d.Transparency = 0.1
                  d.Anchored = true
                  local m = d:WaitForChild("Mesh")
                  m.Scale = vt(0, 0, 0.1)
                  d.Parent = Character
                  Effects:add(d, m, false, vt(5, 5, 0.1), 1, nil, cf(p1.Position) * RandomCFRot())
                end
              end
              do
                speed:remove()
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
    keycombo(curkeys)
  end
end)

