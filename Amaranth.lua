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
local Camera = workspace.CurrentCamera
local Equipped = false
Anim = "Idle"
jumping = false
walkforw = false
idleforw = false
walk = 0
idle = 0
deb = false
deb2 = false
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
  if not Equipped then
    return 
  end
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
, 
Accuracy = {Value = 0, 
effects = {}
, add = function(self, time, amount)
  local data = {amount = amount, time = time}
  data.remove = function(self)
    self.time = 0
  end
  table.insert(self.effects, data)
  return data
end, update = function(self, step)
  if not Equipped then
    return 
  end
  local new = 0
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
  if new > 5 then
    new = 5
  end
  self.Value = lerp(self.Value, new, 0.25)
end, get = function(self)
  return self.Value
end}
}
_G.add = function(time, amount)
  Stats.Speed:add(time, amount)
end
game:GetService("RunService").RenderStepped:connect(function(step)
  Stats.Speed:update(step)
  Stats.Accuracy:update(step)
  Effects:update(step)
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
local RS, LS = RW, LW
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
local sounds = {}
newSound = function(id, parent, name)
  local s = Instance.new("Sound", parent or Head)
  s.SoundId = "http://www.roblox.com/asset/?id=" .. id
  s.Volume = 1
  sounds[name or id] = s
end
playSound = function(...)
  local ids = {...}
  local p = 1
  local play = function()
    local so = sounds[ids[p]]
    if so then
      so:Play()
      if p < #ids then
        p = p + 1
        so.Ended:connect(function()
      l_0_11_r2()
    end)
      end
    else
      warn("sound " .. ids[p] .. " does not exist")
    end
  end
  play()
end
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
  if not Equipped then
    return 
  end
  if canjump == false then
    Humanoid.Jump = false
  end
end)
rayCast = function(Pos, End, Max)
  local Dir = End - Pos.unit
  local ig = {Character}
  local get = function(o)
    for i,v in ipairs(o:GetChildren()) do
      if v:IsA("Model") and v:FindFirstChild("Humanoid") then
        table.insert(ig, v)
      else
        if v:IsA("BasePart") and v.CanCollide == false then
          table.insert(ig, v)
        end
      end
      l_0_17_r5(v)
    end
  end
  get(Workspace)
  return game:service("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Pos, Dir.unit * (Max or 999.999)), ig)
end
rayCast2 = function(Pos, Dir, Max, Ignore)
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
showDamage = function(Hum, Dealt, Type)
  if not DmgPart then
    warn("Dont have DmgPart loaded")
    return 
  end
  local color = nil
  local font = "SourceSans"
  if Type == "Damage" then
    if Dealt == "Blocked" then
      color = BrickColor.new("Bright blue").Color
    else
      if Dealt < 3 then
        color = BrickColor.new("White").Color
      else
        if Dealt >= 3 and Dealt < 20 then
          color = BrickColor.new("Bright yellow").Color
        else
          color = BrickColor.new("Really red").Color
          font = "SourceSansBold"
        end
      end
    end
  else
    if Type == "Heal" then
      color = BrickColor.new("Bright green").Color
    end
  end
  local p = DmgPart:Clone()
  local b = p:WaitForChild("Bill")
  local t = b:WaitForChild("Label")
  if Hum:findFirstChild("Head") ~= nil then
    p.CFrame = cf(Hum.Head.CFrame.p + vt(math.random(-100, 100) / 100, 2, math.random(-100, 100) / 100))
  else
    if Hum.Parent:findFirstChild("Head") ~= nil then
      p.CFrame = cf(Hum.Parent.Head.CFrame.p + vt(math.random(-100, 100) / 100, 2, math.random(-100, 100) / 100))
    end
  end
  t.Font = font
  t.TextColor3 = color
  t.Text = Dealt
  p.Parent = Character
  local lp = p.CFrame
  spawn(function()
    for i = 0, 10 do
      swait()
      p.CFrame = p.CFrame:lerp(lp * cf(0, 1, 0), 0.1)
      t.TextTransparency = lerp(1, 0, i / 10)
    end
    wait(1)
    local lp = p.CFrame
    for i = 0, 10 do
      swait()
      p.CFrame = p.CFrame:lerp(lp * cf(0, 5, 0), 0.1)
      t.TextTransparency = lerp(0, 1, i / 10)
    end
    game:GetService("Debris"):AddItem(p, 0.1)
  end)
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
          showDamage(Target, disp, col)
          return dmg, succes
        end
      end
    end
  end
end
lerp = function(a, b, k)
  return a + (b - a) * k
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
if not Player:FindFirstChild("Assets") or not Player:FindFirstChild("Amaranth") then
  if game:GetService("RunService"):IsStudio() == false and game.PlaceId ~= 340744170 then
    NS("    \t\tlocal assetId = 421784493\n    \t\tasset = require(assetId)()\n\n    \t\tasset[1].Parent = script.Parent.Parent\n            asset[2].Parent = script.Parent.Parent\n    \t", Player.Backpack)
    print("Getting models")
    Assets = Player:WaitForChild("Assets"):Clone()
    print("Got assets")
    Hammer = Player:WaitForChild("Amaranth"):Clone()
    print("Got tool")
  else
    asset = require(script:WaitForChild("MainModule"))()
    Assets = asset[1]
    Hammer = asset[2]
  end
else
  Assets = Player:FindFirstChild("Assets"):Clone()
  Hammer = Player:FindFirstChild("Amaranth"):Clone()
end
Ring = Assets:WaitForChild("Ring")
Diamond = Assets:WaitForChild("Diamond")
DmgPart = Assets:WaitForChild("DmgPart")
Wave = Assets:WaitForChild("Wave")
Handle = Hammer:WaitForChild("Handle")
WeldObjects(Hammer, Handle)
FakeHammer = Hammer:Clone()
local W = Weld(Torso, Handle)
W.C0 = cf(0, 0, 0.5)
W.C1 = cf(0, 0, 0) * angles(0, 0, 1)
local FakeW = Weld(Handle, FakeHammer:WaitForChild("Handle"))
FakeW.C0 = cf()
FakeW.C1 = cf()
MainOrb = {}
local p, m = CreatePart()
p.Transparency = 0.5
p.Anchored = false
p.Material = "Neon"
p.BrickColor = BrickColor.new("Navy blue")
p.Size = vt(0.8, 0.8, 0.8)
m.Scale = vt(1, 1, 1)
m.MeshType = "Sphere"
MainOrb[1] = {p = p, m = m}
local p, m = CreatePart()
p.Transparency = 0.5
p.Anchored = false
p.Material = "Neon"
p.BrickColor = BrickColor.new("Cyan")
p.Size = vt(0.6, 0.6, 0.6)
m.Scale = vt(1, 1, 1)
m.MeshType = "Sphere"
MainOrb[2] = {p = p, m = m}
local p, m = CreatePart()
p.Transparency = 0.5
p.Anchored = false
p.Material = "Neon"
p.BrickColor = BrickColor.new("Pastel light blue")
p.Size = vt(0.3, 0.3, 0.3)
m.Scale = vt(1, 1, 1)
m.MeshType = "Sphere"
MainOrb[3] = {p = p, m = m}
Weld(MainOrb[2].p, MainOrb[1].p, true)
Weld(MainOrb[3].p, MainOrb[1].p, true)
Weld(MainOrb[1].p, Hammer:WaitForChild("OrbPos"), true)
MainOrb[1].p.Parent = Character
MainOrb[2].p.Parent = Character
MainOrb[3].p.Parent = Character
Hammer.Parent = Character
time = 0
gstep = 0
local prevX, prevY = 0, 0
local LookMode = "Camera"
local cols = {"Black", "Pastel light blue", "Cyan", "Navy blue", "Light blue", "Pastel blue"}
lookAtTarget = function()
  local pos = N.Part0.CFrame * Vector3.new(0, 1.5, 0)
  local hit = nil
  if LookMode == "Camera" then
    _ = rayCast(Camera.CFrame.p, Camera.CFrame * cf(0, 0, -1).p)
  else
    -- DECOMPILER ERROR at PC36: Overwrote pending register: R1 in 'AssignReg'

  end
  -- DECOMPILER ERROR at PC49: Overwrote pending register: R1 in 'AssignReg'

  if LookMode ~= "Mouse" or LookMode == "AtCamera" then
    local diff = hit - pos.unit
    local lookVector = N.Part0.CFrame.lookVector
    local zAn = math.atan2(lookVector.Z, lookVector.X)
    local tAn = math.atan2(diff.Z, diff.X)
    local xDiff = zAn - tAn
    local yDiff = -math.asin(diff.Y)
    if math.pi < xDiff then
      xDiff = -math.pi * 2 + xDiff
    else
      if xDiff < -math.pi then
        xDiff = math.pi * 2 + (xDiff)
      end
    end
    xDiff = math.max(-1, math.min(1, xDiff))
    yDiff = math.max(-0.8, math.min(0.6, yDiff))
    prevX = prevX * 0.8 + xDiff * 0.2
    prevY = prevY * 0.8 + yDiff * 0.2
    prevX = prevX / 4 * 3
    prevY = prevY / 4 * 3
    N.C0 = clerp(N.C0, DN0 * angles(0, 0, prevX) * angles(prevY, 0, 0), 0.2)
  end
end
run = false
ticks = 0
game:GetService("RunService").RenderStepped:connect(function(step)
  ticks = ticks + 1
  gstep = step
  time = time + step
  if run and Anim == "Walk" then
    Camera.FieldOfView = lerp(Camera.FieldOfView, 85, 0.2)
  else
    Camera.FieldOfView = lerp(Camera.FieldOfView, 70, 0.05)
  end
  local cdist = Head.CFrame.p - Camera.CFrame.p.magnitude
  if cdist < 3 then
    FakeW = Weld(Handle, FakeHammer:WaitForChild("Handle"))
    FakeW.C0 = cf()
    FakeW.C1 = cf()
    FakeHammer.Parent = Camera
  else
    FakeHammer.Parent = nil
  end
  if ticks % 30 == 0 then
    local p, m = CreatePart()
    p.Transparency = 0
    p.Anchored = true
    p.Material = "Neon"
    p.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    p.Size = vt(0.2, 0.2, 0.2)
    m.Scale = vt(1, 1, 1)
    p.CFrame = Hammer.OrbPos.CFrame
    Effects:add(p, m, false, vt(0, 0, 0), 3, nil, p.CFrame * RandomCFRot() * cf(math.random(2, 3), 0, 0) * RandomCFRot(), 0.1)
    p.Parent = workspace
    local p, m = CreatePart()
    p.Transparency = 0
    p.Anchored = false
    p.Material = "Neon"
    p.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    p.Size = vt(1, 1, 1)
    m.Scale = vt(0, 0, 0)
    p.CFrame = Hammer.OrbPos.CFrame * RandomCFRot()
    Weld(p, Hammer.OrbPos)
    Effects:add(p, m, false, vt(1, 1, 1), 1)
    p.Parent = workspace
  end
  do
    if not Equipped then
      return 
    end
    local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
    local velderp = RootPart.Velocity.y
    local hitfloor, posfloor = rayCast2(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if Anim == "Walk" and canwalk then
      if run == false then
        local t = 10 * gstep
        local t2 = torvel / 120 * 100 * gstep
        if t > 0.9 then
          t = 0.9
        end
        if t2 > 0.9 then
          t2 = 0.9
        end
        RH.C1 = clerp(RH.C1, DRH1 * cf(sin(time * 8 + 1) / 2, sin(time * 8 + 1) / 3, 0) * euler(0, 0, sin(time * 8) * 0.9), t2)
        LH.C1 = clerp(LH.C1, DLH1 * cf(sin(time * 8 + 1) / 2, -sin(time * 8 + 1) / 3, 0) * euler(0, 0, sin(time * 8) * 0.9), t2)
        if not deb then
          W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(0.2, 0, 0), t)
          W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
          RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * angles(0.1, 0, -0.2 + sin(time * 8) / 2) * angles(0, 0, 0), t2)
          LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 0.4) * angles(0, 0, 0), t)
          RJ.C1 = clerp(RJ.C1, DRJ1 * cf(0, 0, 0) * angles(-0.1, 0, 0), t)
          N.C1 = clerp(N.C1, DN1 * cf() * angles(0.08 + sin(time * 4) / 25, 0, 0), t)
          RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time * 16) / 20) * angles(0, 0, 0), t)
          lookAtTarget()
          LS.C0 = clerp(LS.C0, DLS0 * cf(0, -0.05 + sin(time * 16) / 20, 0) * angles(0, 0, 0), t)
          RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time * 16) / 20, 0) * angles(0, 0, 0), t)
          LH.C0 = clerp(LH.C0, DLH0_ * cf(0, -sin(time * 16) / 20, 0) * angles(0, 0, 0), t)
          RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time * 16) / 20, 0) * angles(0, 0, 0), t)
        end
      else
        do
          local t = 10 * gstep
          local t2 = torvel / 120 * 100 * gstep
          if t > 1 then
            t = 1
          end
          if t2 > 1 then
            t2 = 1
          end
          RH.C1 = clerp(RH.C1, DRH1 * cf(sin(time * 9 + 1) / 2, sin(time * 9 + 1) / 3, 0) * euler(0, 0, sin(time * 9) * 1.2), t2)
          LH.C1 = clerp(LH.C1, DLH1 * cf(sin(time * 9 + 1) / 2, -sin(time * 9 + 1) / 3, 0) * euler(0, 0, sin(time * 9) * 1.2), t2)
          do
            if not deb then
              local t = 0.1
              W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(0.2, 0, 0), t)
              W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 4, 0), t)
              RS.C1 = clerp(RS.C1, DRS1 * cf(0, 0, 0) * angles(0.1, 0, -0.2 - sin(time * 9) * 1.4) * angles(0, 0, 0), t2)
              LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, -1) * angles(0, 0, 0), t)
              RJ.C1 = clerp(RJ.C1, DRJ1 * cf(0, 0, 0) * angles(-0.3, 0, 0), t)
              N.C1 = clerp(N.C1, DN1 * cf() * angles(0.1 + sin(time * 4) / 25, 0, 0), t)
              RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time * 18) / 10) * angles(0, 0, 0), t)
              N.C0 = clerp(N.C0, DN0, t)
              LS.C0 = clerp(LS.C0, DLS0 * cf(0, -0.05 + sin(time * 18) / 20, 0) * angles(0, 0, 0), t)
              RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time * 18) / 20, 0) * angles(0, 0, 0), t)
              LH.C0 = clerp(LH.C0, DLH0_ * cf(0, -sin(time * 18) / 10, 0) * angles(0, 0, 0), t)
              RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time * 18) / 10, 0) * angles(0, 0, 0), t)
            end
            do
              if Anim == "Idle" then
                local t = 10 * gstep
                if t > 1 then
                  t = 1
                end
                if deb == false then
                  W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(0.2, 0, 0), t)
                  W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
                  RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.15 + sin(time + 1) / 10, 0, 0) * angles(0, 0, 0), t)
                  LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 1.3) * angles(0, 0, 0), t)
                  RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), t)
                  N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.04 + sin(time + 1) / 15, 0, 0), t)
                  RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
                  lookAtTarget()
                  LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
                  RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
                  LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.05, 0.1, 0) * angles(0, 0, 0), t)
                  RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.05, -0.1, 0) * angles(0, 0, 0), t)
                end
                if canwalk then
                  RH.C1 = clerp(RH.C1, DRH1 * cf() * angles(0, 0, 0), t)
                  LH.C1 = clerp(LH.C1, DLH1 * cf() * angles(0, 0, 0), t)
                end
              end
              if RootPart.Velocity.y > 1 and hitfloor == nil then
                Anim = "Jump"
                jumping = true
                if deb == false then
                  t = 20 * gstep
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
                    t = 10 * gstep
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
                  else
                    if torvel > 2 and torvel < 100 and hitfloor ~= nil then
                      jumping = false
                      Anim = "Walk"
                    end
                  end
                end
              end
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
      end
    end
  end
end)
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
    data.refresh = function(self)
    self.Hit = {}
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
DEBUG = false
local mouseEnabled = false
local mouseCombo = 0
local mouseMax = 0
mousecombo = function()
  deb = true
  while mouseEnabled do
    if mouseMax < mouseCombo then
      mouseCombo = 0
    end
    if mouseCombo == 0 then
      wait()
    end
    mouseCombo = mouseCombo + 1
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
    local parts = {}
    do
      local sp = Stats.Speed:add(nil, -0.5)
      loop(1, function(step, total)
    local t = 5 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(-0.2, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.15 + sin(time + 1) / 10, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 2) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.4), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0.2 + sin(time + 1) / 15, 0, -0.3), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    local p, m = CreatePart()
    p.Transparency = 0.5
    p.Anchored = true
    p.Material = "Neon"
    p.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    p.Size = vt(0.2, 0.2, 0.2)
    m.Scale = vt(1, 1, 1)
    p.CFrame = Hammer.OrbPos.CFrame
    p.Parent = Character
    table.insert(parts, {p = p, m = m, r = math.random(0, pi * 2 * 100) / 100, s = math.random(1, 20) / 10})
    for i,v in ipairs(parts) do
      v.p.CFrame = v.p.CFrame:lerp(cf(Hammer.OrbPos.CFrame.p) * cf(sin(time * 5 + v.r) * (v.s + total), sin(time * 2 + v.r) / 3, cos(time * 5 + v.r) * (v.s + total)), 0.5) * RandomCFRot()
    end
  end)
      local etime = time
      local r = Ring:Clone()
      local rm = r:WaitForChild("Mesh")
      r.CanCollide = false
      r.Anchored = true
      r.BrickColor = BrickColor.new("Pastel light blue")
      r.CFrame = cf(Hammer.OrbPos.CFrame.p) * angles(pi / 2, 0, 0)
      Effects:add(r, rm, false, vt(20, 20, 2), 1)
      r.Parent = Character
      loop(0.2, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(0.2, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.15 + sin(time + 1) / 10, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 1.2) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.4), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0 + sin(time + 1) / 15, 0, -0.3), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    if r then
      r.CFrame = cf(Hammer.OrbPos.CFrame.p) * angles(pi / 2, 0, 0)
    end
    for i,v in ipairs(parts) do
      v.p.CFrame = v.p.CFrame:lerp(cf(Hammer.OrbPos.CFrame.p) * cf(sin(etime + v.r) * v.s * 4, 0, cos(etime + v.r) * v.s * 4), 0.5) * RandomCFRot()
    end
  end)
      local hit = MagHitInit(20, 30, nil, nil, function(Result)
    KnockBack(Result.Humanoid, 30, nil, Hammer.OrbPos.CFrame.p + vt(0, -5, 0), vt(0, 10, 0))
  end)
      hit:check(Hammer.OrbPos.CFrame.p, 30)
      for i,v in ipairs(parts) do
        local p, m = v.p, v.m
        Effects:add(p, m, false, vt(1, 1, 1), math.random(10, 20) / 100, 60)
      end
      sp:remove()
      deb = false
      reset()
    end
  else
    do
      if keys == "X" then
        deb = true
        local parts = {}
        local cp = function()
    local d = {}
    local p, m = CreatePart()
    p.Transparency = 0.5
    p.Anchored = true
    p.Material = "Neon"
    p.BrickColor = BrickColor.new("Pastel light blue")
    p.Size = vt(0.4, 0.4, 0.4)
    m.Scale = vt(1, 1, 1)
    m.MeshType = "Sphere"
    p.CFrame = Hammer.OrbPos.CFrame
    p.Parent = Character
    d[1] = {p = p, m = m}
    local p, m = CreatePart()
    p.Transparency = 0.5
    p.Anchored = true
    p.Material = "Neon"
    p.BrickColor = BrickColor.new("Cyan")
    p.Size = vt(0.2, 0.2, 0.2)
    m.Scale = vt(1, 1, 1)
    m.MeshType = "Sphere"
    p.CFrame = Hammer.OrbPos.CFrame
    p.Parent = Character
    d[2] = {p = p, m = m}
    local p, m = CreatePart()
    p.Transparency = 0.8
    p.Anchored = true
    p.Material = "Neon"
    p.BrickColor = BrickColor.new("Navy blue")
    p.Size = vt(0.6, 0.6, 0.6)
    m.Scale = vt(1, 1, 1)
    p.CFrame = Hammer.OrbPos.CFrame
    p.Parent = Character
    d[3] = {p = p, m = m}
    table.insert(parts, d)
    return parts[#parts]
  end
        for i = 1, 6 do
          cp()
        end
        loop(1, function(step, total)
    local t = 10 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(-0.3, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2 + total * 20, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.15 + sin(time + 1) / 10, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 2.5) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.4), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0.2 + sin(time + 1) / 15, 0, -0.3), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    for i,d in ipairs(parts) do
      d[1].p.CFrame = d[1].p.CFrame:lerp(LeftArm.CFrame * cf(0, -1, 0) * cf(sin(pi2 / #parts * i + time) * 6, 0, cos(pi2 / #parts * i + time) * 6), 0.1)
      d[2].p.CFrame = d[1].p.CFrame
      d[3].p.CFrame = d[1].p.CFrame * RandomCFRot()
    end
  end)
        loop(0.1, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(0, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.15 + sin(time + 1) / 10, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 1.2) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.4), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0 + sin(time + 1) / 15, 0, -0.3), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
  end)
        loop(0.1, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(0, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.3, 0, -pi / 2) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 1.2) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -0.4), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0 + sin(time + 1) / 15, 0, 0.3), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
  end)
        local rp = RootPart.CFrame
        spawn(function()
    local p = cf()
    local hit = MagHitInit(15, 20, nil, nil, function(Result)
      KnockBack(Result.Humanoid, 30, nil, p.p)
    end)
    local seed = math.random(0, 10) / 10
    loop(5, function(step, total)
      local t = 3 * step
      if t > 1 then
        t = 1
      end
      if ticks % 10 == 0 then
        hit:refresh()
      end
      local n = math.abs(math.noise(total / 10) * 10, seed) + 1
      p = rp * cf(0, 0, -total * 10 * 4)
      for i,d in ipairs(parts) do
        d[1].p.CFrame = d[1].p.CFrame:lerp(p * cf(sin(pi2 / #parts * i + time) * n, cos(pi2 / #parts * i + time) * n, 0), t)
        d[2].p.CFrame = d[1].p.CFrame
        d[3].p.CFrame = d[1].p.CFrame * RandomCFRot()
      end
      if ticks % 20 == 0 then
        zapp(parts[math.random(1, #parts)][1].p.CFrame.p, parts[math.random(1, #parts)][1].p.CFrame.p, 4, 1, cols[math.random(1, #cols)], 0.5, "Neon", 0.15, true, 1)
      end
      hit:check(p.p, 10)
    end)
    for i,v in ipairs(parts) do
      for _,d in ipairs(v) do
        local p, m = d.p, d.m
        Effects:add(p, m, false, vt(5, 5, 5), 1, 10)
      end
    end
  end)
        loop(0.2, function(step, total)
    local t = 20 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(0, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0.2, 0) * CFrame.Angles(0.3, 0, -pi / 2) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 1.2) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -0.4), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0 + sin(time + 1) / 15, 0, 0.3), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.2, 0) * angles(0, 0, 0), t)
  end)
        deb = false
        reset()
      else
        do
          if keys == "C" then
            deb = true
            loop(0.2, function(step, total)
    local t = 10 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(-0.9, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.15 + sin(time + 1) / 10, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 1) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.7), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.1 + sin(time + 1) / 15, 0, -0.6), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.7, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.7, 0) * angles(0, 0, 0), t)
  end)
            loop(1, function(step, total)
    local t = 10 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(-0.9, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.15 + sin(time + 1) / 10, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, 1) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.7), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(-0.1 + sin(time + 1) / 15, 0, -0.6), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.7, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.7, 0) * angles(0, 0, 0), t)
    local p, m = CreatePart()
    p.Transparency = 0
    p.Anchored = true
    p.Material = "Neon"
    p.BrickColor = BrickColor.new(cols[math.random(1, #cols)])
    p.Size = vt(1, 1, 1)
    m.Scale = vt(0, 0, 0)
    p.CFrame = Hammer.OrbPos.CFrame * RandomCFRot() * cf(math.random(3, 5), 0, 0) * RandomCFRot()
    Effects:add(p, m, false, vt(1, 1, 1), 1, 1, Hammer.OrbPos.CFrame * RandomCFRot())
    p.Parent = workspace
  end)
            local r = Ring:Clone()
            local rm = r:WaitForChild("Mesh")
            r.CanCollide = false
            r.Anchored = true
            r.BrickColor = BrickColor.new("Pastel light blue")
            r.CFrame = cf(Hammer.OrbPos.CFrame.p) * angles(pi / 2, 0, 0)
            Effects:add(r, rm, false, vt(5, 5, 1), 1, nil, r.CFrame * RandomCFRot(), 0.02)
            r.Parent = Character
            local r = Ring:Clone()
            local rm = r:WaitForChild("Mesh")
            r.CanCollide = false
            r.Anchored = true
            r.BrickColor = BrickColor.new("Pastel light blue")
            r.CFrame = cf(Hammer.OrbPos.CFrame.p) * angles(pi / 2, 0, 0)
            Effects:add(r, rm, false, vt(5, 5, 1), 1, nil, r.CFrame * RandomCFRot(), 0.02)
            r.Parent = Character
            local Orb = {}
            local p, m = CreatePart()
            p.Transparency = 0.7
            p.Anchored = false
            p.Material = "Neon"
            p.BrickColor = BrickColor.new("Navy blue")
            p.Size = vt(1.5, 1.5, 1.5)
            m.Scale = vt(1, 1, 1)
            m.MeshType = "Sphere"
            p.CFrame = Hammer.OrbPos.CFrame
            Orb[1] = {p = p, m = m}
            local p, m = CreatePart()
            p.Transparency = 0.7
            p.Anchored = false
            p.Material = "Neon"
            p.BrickColor = BrickColor.new("Cyan")
            p.Size = vt(1, 1, 1)
            m.Scale = vt(1, 1, 1)
            m.MeshType = "Sphere"
            p.CFrame = Hammer.OrbPos.CFrame
            Orb[2] = {p = p, m = m}
            local p, m = CreatePart()
            p.Transparency = 0.5
            p.Anchored = false
            p.Material = "Neon"
            p.BrickColor = BrickColor.new("Pastel light blue")
            p.Size = vt(0.5, 0.5, 0.5)
            m.Scale = vt(1, 1, 1)
            m.MeshType = "Sphere"
            p.CFrame = Hammer.OrbPos.CFrame
            Orb[3] = {p = p, m = m}
            Weld(Orb[2].p, Orb[1].p, true)
            Weld(Orb[3].p, Orb[1].p, true)
            local o = Weld(Orb[1].p, RootPart)
            Orb[1].p.Parent = Character
            Orb[2].p.Parent = Character
            Orb[3].p.Parent = Character
            loop(0.2, function(step, total)
    local t = 10 * step
    if t > 1 then
      t = 1
    end
    W.C0 = W.C0:lerp(cf(0, -1, 0) * angles(-0.3, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, pi / 2, 0), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.15 + sin(time + 1) / 10, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * CFrame.Angles(0.2, 0, 2) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0.8), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * CFrame.Angles(0.2 + sin(time + 1) / 15, 0, -0.7), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, 0, 0) * angles(0, 0, 0), t * 2)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t * 2)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0.1, -sin(time) / 20, 0) * angles(-0.1, 0.8, 0) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.1, 0.8, 0) * angles(0, 0, 0), t)
    o.C0 = o.C0:lerp(o.C0 * cf(0, -1, 0), 0.5)
  end)
            spawn(function()
    local hit = MagHitInit(5, 15, nil, nil, function(Result)
      KnockBack(Result.Humanoid, 30, nil, Orb[1].p.CFrame.p)
      zapp(Orb[1].p.CFrame.p, Result.HitPart.CFrame.p, 5, 4, cols[math.random(1, #cols)], 0.5, "Neon", 0.5, true, 1)
    end)
    local lastp = Orb[1].p.CFrame.p
    loop(30, function(step, time)
      local t = 5 * step
      if t > 1 then
        t = 1
      end
      hit:refresh()
      o.C0 = o.C0:lerp(cf(), t)
      o.C1 = o.C1:lerp(cf(sin(time) * math.abs(sin(time * 10) * 2 + 5), sin(time / 3) * 1.5, -cos(time) * math.abs(sin(time * 10) * 2 + 5)), t)
      if ticks % 2 == 0 then
        local dist = lastp - Orb[1].p.CFrame.p.magnitude
        local p1, m1 = CreatePart()
        m1.MeshType = "Cylinder"
        p1.CFrame = cf(lastp, Orb[1].p.CFrame.p) * angles(0, pi / 2, 0) * cf(dist / 2, 0, 0)
        p1.Transparency = 0.25
        p1.Anchored = true
        p1.BrickColor = BrickColor.new("Navy blue")
        p1.Material = "Neon"
        m1.Scale = vt(dist * 5, 3, 3)
        Effects:add(p1, m1, false, vt(0, -1, -1), 0.6)
        p1.Parent = Character
        lastp = Orb[1].p.CFrame.p
      end
      do
        if ticks % 60 == 0 then
          hit:check(Orb[1].p.CFrame.p, 100)
        end
      end
    end)
    for i,v in ipairs(Orb) do
      local p, m = v.p, v.m
      Effects:add(p, m, false, vt(-1, -1, -1), 1)
    end
  end)
            deb = false
            reset()
          end
        end
      end
    end
  end
end
allowedkeys = {Q = true, E = true, Z = true, X = true, C = true}
Mouse.KeyDown:connect(function(key)
  if not Equipped then
    return 
  end
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
Mouse.Button1Down:connect(function()
  if not Equipped then
    return 
  end
  if deb2 then
    return 
  end
  mouseEnabled = true
end)
Mouse.Button1Up:connect(function()
  if not Equipped then
    return 
  end
  if not deb2 then
    return 
  end
  mouseEnabled = false
end)
RunSpeed = nil
local UIS = game:GetService("UserInputService")
UIS.InputBegan:connect(function(input)
  if not Equipped then
    return 
  end
  local key = input.KeyCode
  local type = input.UserInputType
  if key == Enum.KeyCode.LeftShift then
    run = true
    RunSpeed = Stats.Speed:add(nil, 1)
  else
    if key == Enum.KeyCode.P then
      if LookMode == "Camera" then
        LookMode = "Mouse"
      else
        if LookMode == "Mouse" then
          LookMode = "AtCamera"
        else
          LookMode = "Camera"
        end
      end
    end
  end
end)
UIS.InputEnded:connect(function(input)
  if not Equipped then
    return 
  end
  local key = input.KeyCode
  local type = input.UserInputType
  if key == Enum.KeyCode.LeftShift then
    run = false
    if RunSpeed then
      RunSpeed:remove()
    end
  end
end)
Animator = Humanoid:WaitForChild("Animator")
AnimScript = Character:WaitForChild("Animate")
print("Generating fake arms")
local FakeRight, FakeLeft, FakePlayer = nil, nil, nil
FakePlayer = Instance.new("Model", Camera)
Instance.new("Humanoid", FakePlayer)
FakeRight = RightArm:Clone()
FakeRight:BreakJoints()
FakeRight.Transparency = 1
local FakeRightWeld = Weld(FakeRight, RightArm)
FakeRightWeld.C0 = cf()
FakeRightWeld.C1 = cf()
FakeLeft = LeftArm:Clone()
FakeLeft:BreakJoints()
FakeLeft.Transparency = 1
local FakeLeftWeld = Weld(FakeLeft, LeftArm)
FakeLeftWeld.C0 = cf()
FakeLeftWeld.C1 = cf()
FakeRight.Parent = FakePlayer
FakeLeft.Parent = FakePlayer
Character:WaitForChild("Body Colors"):Clone().Parent = FakePlayer
spawn(function()
  Character:WaitForChild("Shirt"):Clone().Parent = FakePlayer
end)
spawn(function()
  Character:WaitForChild("Pants"):Clone().Parent = FakePlayer
end)
Mouse.KeyDown:connect(function(key)
  if key == "f" then
    deb2 = true
    deb = true
    if Equipped == false then
      Equipped = true
      print("Hammer Equipped")
      FakeRight.Transparency = 0.5
      FakeLeft.Transparency = 0.5
      AnimScript.Disabled = true
      local anims = Humanoid:GetPlayingAnimationTracks()
      for i,v in ipairs(anims) do
        v:Stop()
      end
      loop(0.3, function(step, total)
    local t = 15 * step
    W.C0 = W.C0:lerp(cf(0, 1, -3) * angles(0, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, 0, pi / 2), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * angles(0, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * angles(-0.5, 0, 1.5) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * angles(-0.1, 0, 0), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * angles(-0.04 + sin(time + 1) / 15, 0, 0), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.05, 0.1, -0.2) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.05, -0.2, 0) * angles(0, 0, 0), t)
  end)
      W:Destroy()
      W = Weld(LeftArm, Handle)
    else
      do
        print("Hammer Unequipped")
        FakeRight.Transparency = 1
        FakeLeft.Transparency = 1
        Equipped = false
        if run then
          RunSpeed:remove()
        end
        run = false
        Humanoid.WalkSpeed = 16
        mouseEnabled = false
        AnimScript.Disabled = false
        W:Destroy()
        W = Weld(Torso, Handle)
        loop(0.3, function(step, total)
    local t = 15 * step
    W.C0 = W.C0:lerp(cf(0, 1, -3) * angles(0, 0, 0), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, 0, pi / 2), t)
    RS.C1 = clerp(RS.C1, DRS1 * CFrame.new(0, 0, 0) * angles(0, 0, 0) * angles(0, 0, 0), t)
    LS.C1 = clerp(LS.C1, DLS1 * CFrame.new(0, 0, 0) * angles(-0.5, 0, 1.5) * angles(0, 0, 0), t)
    RJ.C1 = clerp(RJ.C1, DRJ1 * CFrame.new(0, 0, 0) * angles(-0.1, 0, 0), t)
    N.C1 = clerp(N.C1, DN1 * CFrame.new() * angles(-0.04 + sin(time + 1) / 15, 0, 0), t)
    RJ.C0 = clerp(RJ.C0, DRJ0 * cf(0, 0, sin(time) / 20) * angles(0, 0, 0), t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t)
    RS.C0 = clerp(RS.C0, DRS0 * cf(0, -0.05 + sin(time) / 20, 0) * angles(0, 0, 0), t)
    LH.C0 = clerp(LH.C0, DLH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.05, 0.1, -0.2) * angles(0, 0, 0), t)
    RH.C0 = clerp(RH.C0, DRH0_ * cf(0, -sin(time) / 20, 0) * angles(-0.05, -0.2, 0) * angles(0, 0, 0), t)
  end)
        loop(0.2, function(step, total)
    local t = 20 * step
    W.C0 = W.C0:lerp(cf(0, 0, 0.5), t)
    W.C1 = W.C1:lerp(cf(0, 0, 0) * angles(0, 0, 1), t)
    RS.C1 = clerp(RS.C1, DRS1, t)
    LS.C1 = clerp(LS.C1, DLS1, t)
    RJ.C1 = clerp(RJ.C1, DRJ1, t)
    N.C1 = clerp(N.C1, DN1, t)
    RJ.C0 = clerp(RJ.C0, DRJ0, t)
    N.C0 = clerp(N.C0, DN0, t)
    LS.C0 = clerp(LS.C0, DLS0, t)
    RS.C0 = clerp(RS.C0, DRS0, t)
    LH.C0 = clerp(LH.C0, DLH0_, t)
    RH.C0 = clerp(RH.C0, DRH0_, t)
    RH.C1 = clerp(RH.C1, DRH1, t)
    LH.C1 = clerp(LH.C1, DLH1, t)
  end)
        W.C0 = cf(0, 0, 0.5)
        W.C1 = cf(0, 0, 0) * angles(0, 0, 1)
        deb2 = false
        deb = false
      end
    end
  end
end)
print("Amaranth loaded")

