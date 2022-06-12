Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
Mouse = Player:GetMouse()
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
it = Instance.new
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
local Effects = {}
local gun = false
local shoot = false
player = nil
mana = 0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local Targetting = false
mouse = Player:GetMouse()
RSH = nil
LW = Instance.new("Weld")
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

pwait = function(num)
  
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end

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

local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe = it("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position = UDim2.new(0.4, 0, 0.1, 0)
local fenbarmana1 = it("TextLabel")
fenbarmana1.Parent = fenframe
fenbarmana1.Text = " "
fenbarmana1.BackgroundTransparency = 0
fenbarmana1.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana1.SizeConstraint = "RelativeXY"
fenbarmana1.TextXAlignment = "Center"
fenbarmana1.TextYAlignment = "Center"
fenbarmana1.Position = UDim2.new(0, 0, 0, 0)
fenbarmana1.Size = UDim2.new(4, 0, 0.2, 0)
local fenbarmana2 = it("TextLabel")
fenbarmana2.Parent = fenframe
fenbarmana2.Text = " "
fenbarmana2.BackgroundTransparency = 0
fenbarmana2.BackgroundColor3 = Torso.Color
fenbarmana2.SizeConstraint = "RelativeXY"
fenbarmana2.TextXAlignment = "Center"
fenbarmana2.TextYAlignment = "Center"
fenbarmana2.Position = UDim2.new(0, 0, 0, 0)
fenbarmana2.Size = UDim2.new(4 * mana / 100, 0, 0.2, 0)
local fenbarmana3 = it("TextLabel")
fenbarmana3.Parent = fenframe
fenbarmana3.Text = " "
fenbarmana3.BackgroundTransparency = 0
fenbarmana3.BackgroundColor3 = Color3.new(Col1, Col2, Col3)
fenbarmana3.SizeConstraint = "RelativeXY"
fenbarmana3.TextXAlignment = "Center"
fenbarmana3.TextYAlignment = "Center"
fenbarmana3.Position = UDim2.new(0, 0, 0, 0)
fenbarmana3.Size = UDim2.new(0, 0, 0.2, 0)
local fenbarmana4 = it("TextLabel")
fenbarmana4.Parent = fenframe
fenbarmana4.Text = "Energy(" .. mana .. ")"
fenbarmana4.BackgroundTransparency = 1
fenbarmana4.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana4.SizeConstraint = "RelativeXY"
fenbarmana4.TextXAlignment = "Center"
fenbarmana4.TextYAlignment = "Center"
fenbarmana4.Position = UDim2.new(0, 0, -0.3, 0)
fenbarmana4.Size = UDim2.new(4, 0, 0.2, 0)
fenbarmana4.FontSize = "Size9"
fenbarmana4.TextStrokeTransparency = 0
fenbarmana4.TextColor = BrickColor.new("White")
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
  if edg1 <= (b - a).magnitude and edg1 >= 0 then
    a = a
  else
    if edg2 <= (c - b).magnitude and edg2 >= 0 then
      a = b
    else
      if edg3 <= (a - c).magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = (b - a).magnitude - len1
  local width = (a + b - a.unit * len1 - c).magnitude
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
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

rayCast = function(Pos, Dir, Max, Ignore)
  
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
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
    local c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
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
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        --game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Bright blue").Color)
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
      local bodvol = Instance.new("BodyVelocity")
      bodvol.velocity = angle * knockback
      bodvol.P = 5000
      bodvol.maxForce = Vector3.new(8000, 8000, 8000)
      bodvol.Parent = hit
      local rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Instance.new("BodyVelocity")
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
          do
            if Type == "Up" then
              local bodyVelocity = Instance.new("BodyVelocity")
              bodyVelocity.velocity = vt(0, 60, 0)
              bodyVelocity.P = 5000
              bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
              bodyVelocity.Parent = hit
              game:GetService("Debris"):AddItem(bodyVelocity, 1)
              local rl = Instance.new("BodyAngularVelocity")
              rl.P = 3000
              rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
              rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
              rl.Parent = hit
              game:GetService("Debris"):AddItem(rl, 0.5)
            else
              do
                if Type == "Snare" then
                  local bp = Instance.new("BodyPosition")
                  bp.P = 2000
                  bp.D = 100
                  bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                  bp.position = hit.Parent.Torso.Position
                  bp.Parent = hit.Parent.Torso
                  game:GetService("Debris"):AddItem(bp, 1)
                else
                  do
                    if Type == "Target" then
                      local Targetting = false
                      if Targetting == false then
                        ZTarget = hit.Parent.Torso
                        coroutine.resume(coroutine.create(function(Part)
    
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
    swait(5)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
  end
), ZTarget)
                        local TargHum = ZTarget.Parent:findFirstChild("Humanoid")
                        local targetgui = Instance.new("BillboardGui")
                        targetgui.Parent = ZTarget
                        targetgui.Size = UDim2.new(10, 100, 10, 100)
                        local targ = Instance.new("ImageLabel")
                        targ.Parent = targetgui
                        targ.BackgroundTransparency = 1
                        targ.Image = "rbxassetid://4834067"
                        targ.Size = UDim2.new(1, 0, 1, 0)
                        cam.CameraType = "Scriptable"
                        cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                        local dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                        workspace.CurrentCamera.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                        Targetting = true
                        RocketTarget = ZTarget
                        for i = 1, Property do
                          if Humanoid.Health > 0 and Character.Parent ~= nil and TargHum.Health > 0 and TargHum.Parent ~= nil and Targetting == true then
                            swait()
                          end
                          cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                          dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                          cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position) * cf(0, 5, 10) * euler(-0.3, 0, 0)
                        end
                        Targetting = false
                        RocketTarget = nil
                        targetgui.Parent = nil
                        cam.CameraType = "Custom"
                      end
                    end
                    do
                      local debounce = Instance.new("BoolValue")
                      debounce.Name = "DebounceHit"
                      debounce.Parent = hit.Parent
                      debounce.Value = true
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

Damagefunc2 = function(Part, hit, Damage, Knockback)
  
  if attackdebounce == false then
    coroutine.resume(coroutine.create(function()
    
    wait(0.1)
    attackdebounce = false
  end
))
    if hit.Parent == nil then
      return 
    end
    local blocked = false
    local h = hit.Parent:FindFirstChild("Humanoid")
    if h ~= nil and hit.Parent:FindFirstChild("Torso") ~= nil then
      local c = it("ObjectValue")
      c.Name = "creator"
      c.Value = game.Players.LocalPlayer
      c.Parent = h
      game:GetService("Debris"):AddItem(c, 0.5)
      Damage = Damage + math.random(0, 10)
      blocked = false
      local block = hit.Parent:findFirstChild("Block")
      if block ~= nil then
        print("herp")
        if block.Value > 0 then
          blocked = true
          block.Value = block.Value - 3
          print(block.Value)
        end
      end
      if blocked == false then
        h.Health = h.Health - (Damage)
        HitHealth = h.Health
        if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
          print("gained spree")
          --game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
        end
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -(Damage), 1.5, BrickColor.new("New Yeller").Color)
      else
        h:TakeDamage(1)
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -(Damage), 1.5, BrickColor.new("New Yeller").Color)
      end
      local angle = hit.Position - (Torso.Position + Vector3.new(0, 0, 0)).unit
      print(angle)
      local rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      rl.Parent = hit
      coroutine.resume(coroutine.create(function(vel)
    
    wait(0.5)
    vel:Remove()
  end
), rl)
      local bodyVelocity = Instance.new("BodyVelocity")
      bodyVelocity.velocity = angle * 40 + Vector3.new(0, 0, 0)
      bodyVelocity.P = 5000
      bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
      bodyVelocity.Parent = hit
      coroutine.resume(coroutine.create(function(Vel)
    
    wait(0.2)
    Vel:Remove()
  end
), bodyVelocity)
      c = it("ObjectValue")
      c.Name = "creator"
      c.Value = Player
      c.Parent = h
      game:GetService("Debris"):AddItem(c, 0.5)
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
    local Color = Color3.new(1, 0, 0)
  end
  local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Instance.new("BillboardGui")
  BillboardGui.Size = UDim2.new(3, 0, 3, 0)
  BillboardGui.Adornee = EffectPart
  local TextLabel = Instance.new("TextLabel")
  TextLabel.BackgroundTransparency = 1
  TextLabel.Size = UDim2.new(1, 0, 1, 0)
  TextLabel.Text = Text
  TextLabel.TextColor3 = Color
  TextLabel.TextScaled = true
  TextLabel.Font = Enum.Font.ArialBold
  TextLabel.Parent = BillboardGui
  BillboardGui.Parent = EffectPart
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  Delay(0, function()
    
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

HandleA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HandleA", Vector3.new(1, 1, 0.800000072))
HandleAweld = weld(m, Character["Right Arm"], HandleA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-05, 0, -9.05990601e-06, -5.05673892e-10, -9.23196908e-10, 0.999993324, 0.999993324, -1.47900669e-08, 5.04537023e-10, 1.46751713e-08, 0.999992251, 9.21580978e-10))
Barrel1A = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel1A", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel1Aweld = weld(m, HandleA, Barrel1A, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699571609, -1.90000951, -0.2003479, 7.91768434e-06, 0.999986649, 1.00914167e-05, 5.66241306e-06, 1.00914676e-05, -1, -0.999986649, 7.91774346e-06, -5.66240578e-06))
Barrel2A = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel2A", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Barrel2Aweld = weld(m, HandleA, Barrel2A, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.69956398, -1.90001082, 0.0996513367, 7.91767434e-06, 0.999986649, 1.00916686e-05, 5.66189283e-06, 1.00917196e-05, -1, -0.999986649, 7.91773255e-06, -5.6618851e-06))
Barrel3A = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel3A", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel3Aweld = weld(m, HandleA, Barrel3A, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699560165, -1.90001285, 0.39963913, 7.91766342e-06, 0.999986649, 1.00919206e-05, 5.6613726e-06, 1.00919715e-05, -1, -0.999986649, 7.91772163e-06, -5.66136487e-06))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200450897, -2.29999614, 0.699605942, 0.999986649, 2.01113654e-10, 4.28733493e-10, -4.34172753e-10, -5.51018218e-08, 1, 2.03384726e-10, -0.999986649, -5.48661063e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 0.210000008, 0.800000012))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.099697113, 1.70499849, 0.699567795, 0.999986649, 3.20816929e-10, 7.34710071e-11, -7.69249109e-11, -5.26488186e-08, 1, 3.22863347e-10, -0.999986649, -5.24188479e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.74000001, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994491577, 0.699581146, 0.699999809, -0.999993324, -5.04537023e-10, -9.21580978e-10, 5.05673892e-10, -0.999993324, -1.46751713e-08, -9.23204069e-10, -1.47901815e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.599999964))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.699541092, -0.600000381, -0.199619293, 1.87184355e-06, -0.999986649, 1.07918208e-06, -3.12210403e-07, -1.078938e-06, -1, 0.999986649, 1.87184094e-06, -3.12219839e-07))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 0.400000006, 0.800000072))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100307465, -0.699611664, -0.599999905, 0.999986649, -5.68162184e-12, -1.03317355e-11, 3.40788509e-12, 0.999986649, -5.81779958e-10, 7.07311987e-12, 3.51557006e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399723053, 1.70499837, 0.699588776, 0.999979973, 3.28089528e-10, -3.71732811e-10, 3.66905506e-10, -5.37965974e-08, 1, 3.32864347e-10, -0.999979973, -5.34519344e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.74000001, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 1.39999986, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0995674133, 0.899999619, 0.699586868, 0.999986649, 1.66285097e-10, 3.84224985e-10, -3.87478327e-10, -5.54243442e-08, 1, 1.68558861e-10, -0.999986649, -5.51948673e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399646759, 1.6999985, 0.699571609, 0.999979973, 1.84390309e-10, 3.75398046e-11, -4.23643343e-11, -5.66705758e-08, 1, 1.88255633e-10, -0.999979973, -5.63259412e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399570465, 0.899999619, 0.699586868, 0.999986649, 1.90463506e-10, 4.11560452e-10, -4.14813461e-10, -5.52680746e-08, 1, 1.92737243e-10, -0.999986649, -5.50385977e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.400000006, 0.400000066))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0996818542, -0.699586868, 4.76837158e-07, 0.999986649, 1.94817495e-11, 5.78722625e-11, -2.17554863e-11, 0.999986649, -1.31851685e-09, -6.112999e-11, 1.08828324e-09, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410079956, -0.700000763, -0.000110626221, 0.999986649, 3.13225945e-10, 5.58399271e-10, -5.638357e-10, -5.12430809e-08, 1, 3.15497045e-10, -0.999986649, -5.1007305e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.99999988, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399532318, -1.19999957, 0.699613571, 0.999986649, 1.96598182e-10, 4.09048739e-10, -4.12301748e-10, -5.60532456e-08, 1, 1.98871919e-10, -0.999986649, -5.58237794e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000102996826, -0.700000763, -0.405073166, 0.999986649, 2.9397576e-10, 4.77100359e-10, -4.82539675e-10, -5.1360427e-08, 1, 2.9624686e-10, -0.999986649, -5.11246618e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994491577, 0.699581146, -1.69999957, -0.999993324, -5.04537023e-10, -9.21580978e-10, 5.05673892e-10, -0.999993324, -1.46751713e-08, -9.23204069e-10, -1.47901815e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.699573517, -0.900001526, 0.400360107, 2.85113401e-06, -0.999986649, 1.24874362e-06, -2.03818695e-06, -1.24850249e-06, -1, 0.999986649, 2.85112901e-06, -2.03822106e-06))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200325012, 1.69999766, 0.699609756, 0.999986649, 6.62784883e-10, -1.45084575e-08, 1.45049066e-08, -5.6450606e-08, 1, 6.65740574e-10, -0.999986649, -5.62205251e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200233459, 1.70499849, 0.69960022, 0.999986649, 3.14450521e-10, 3.71330522e-10, -3.74782427e-10, -5.33727729e-08, 1, 3.1649694e-10, -0.999986649, -5.31428022e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.74000001, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0996131897, 1.69999862, 0.699584961, 0.999986649, 1.77117737e-10, 1.78062898e-10, -1.8151608e-10, -5.61730893e-08, 1, 1.79164156e-10, -0.999986649, -5.59431363e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28881836e-05, -0.700000763, 0.404912949, 0.999986649, 2.92983943e-10, 4.96789276e-10, -5.02226261e-10, -5.34053335e-08, 1, 2.95255043e-10, -0.999986649, -5.31695932e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000316619873, 0.699999809, 0.404588699, 0.999986649, 1.1153159e-10, 2.77556311e-10, -2.80811041e-10, -4.94035142e-08, 1, 1.13805299e-10, -0.999986649, -4.91739556e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994491577, 0.699581146, 1.49999833, -0.999993324, -5.04537023e-10, -9.21580978e-10, 5.05673892e-10, -0.999993324, -1.46751713e-08, -9.23204069e-10, -1.47901815e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.400295258, -0.699577332, -0.0999999046, 0.999986649, 2.07385775e-11, 6.28357366e-11, -2.30123143e-11, 0.999986649, -7.07412795e-10, -6.60934085e-11, 4.77189843e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200366974, 0.900000572, 0.699565887, 0.999986649, 1.9678098e-10, 4.23990953e-10, -4.27243796e-10, -5.48795889e-08, 1, 1.99054717e-10, -0.999986649, -5.46501049e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994491577, 0.699581146, 1.09999835, -0.999993324, -5.04537023e-10, -9.21580978e-10, 5.05673892e-10, -0.999993324, -1.46751713e-08, -9.23204069e-10, -1.47901815e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 3.8599999))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.39957428, -2.29999614, 0.699617386, 0.999986649, 2.06792028e-10, 4.21613855e-10, -4.27053171e-10, -5.59482594e-08, 1, 2.09063072e-10, -0.999986649, -5.5712551e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409893036, -0.700000763, -9.53674316e-05, 0.999986649, 3.06400627e-10, 5.35766098e-10, -5.41204637e-10, -5.17249639e-08, 1, 3.08671699e-10, -0.999986649, -5.14891987e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000228881836, 0.69989109, -0.405414581, 0.999986649, 9.22598942e-11, 2.078413e-10, -2.13284224e-10, -5.09687972e-08, 1, 9.45309664e-11, -0.999986649, -5.07330284e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409645081, 0.699999809, -0.000415802002, 0.999986649, 1.09286219e-10, 2.74369194e-10, -2.77624035e-10, -4.96409172e-08, 1, 1.11559956e-10, -0.999986649, -4.94113586e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409934998, 0.70000124, -2.0980835e-05, 0.999986649, 3.69289765e-10, 6.34756692e-10, -6.37979558e-10, -4.70661625e-08, 1, 3.71549347e-10, -0.999986649, -4.68323584e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 1.59999967, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0994720459, -1.00000167, 0.699565887, 0.999986649, 1.63843272e-10, 3.70188213e-10, -3.73441722e-10, -5.61400029e-08, 1, 1.66117037e-10, -0.999986649, -5.59105366e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699556351, -2.19999361, 0.400417328, -1.13278213e-06, 0.999986649, -1.23997575e-06, 3.2160392e-07, 1.23972927e-06, 1, 0.999986649, 1.13277952e-06, -3.21612873e-07))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.400000006, 0.80000025))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.400325775, -0.699573517, -1.40000105, 0.999986649, 3.54179464e-11, 8.36694047e-11, -3.76917386e-11, 0.999986649, 3.27542438e-10, -8.69266326e-11, -5.57753843e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.69952774, -0.600001335, 0.299598694, 1.08607458e-06, -0.999986649, 1.22987899e-06, 2.51857699e-07, 1.22963252e-06, 1, -0.999986649, -1.08607196e-06, 2.51865629e-07))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994491577, 0.699581146, -1.10000062, -0.999993324, -5.04537023e-10, -9.21580978e-10, 5.05673892e-10, -0.999993324, -1.46751713e-08, -9.23204069e-10, -1.47901815e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.19999969, 0.400000006))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200454712, -1.59999967, 0.699554443, 0.999986649, 1.63983938e-10, 3.76599196e-10, -3.82038789e-10, -5.52081758e-08, 1, 1.6625501e-10, -0.999986649, -5.49724604e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.09948349, -1.89999557, 0.699590683, 0.999986649, 1.69683823e-10, 3.82608611e-10, -3.88048149e-10, -5.55553079e-08, 1, 1.71975129e-10, -0.999986649, -5.53195072e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HandleB", Vector3.new(1, 1, 0.800000072))
HandleBweld = weld(m, Character["Left Arm"], HandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617e-05, 0.000112533569, -8.82148743e-06, -5.13637077e-10, -9.34523126e-10, 0.999993324, 0.999993324, -1.55961271e-08, 5.12500209e-10, 1.54810991e-08, 0.999992251, 9.32938282e-10))
Barrel4A = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel4A", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel4Aweld = weld(m, HandleB, Barrel4A, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700273514, -1.89999568, -0.200382233, 7.9176798e-06, 0.999986649, 1.00922007e-05, 5.66249946e-06, 1.00922507e-05, -1, -0.999986649, 7.91774073e-06, -5.66249219e-06))
Barrel5A = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel5A", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Barrel5Aweld = weld(m, HandleB, Barrel5A, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700338364, -1.89999771, 0.0996551514, 7.91767525e-06, 0.999986649, 1.00922598e-05, 5.662278e-06, 1.00923098e-05, -1, -0.999986649, 7.91773527e-06, -5.66227072e-06))
Barrel6A = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel6A", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel6Aweld = weld(m, HandleB, Barrel6A, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700332642, -1.89999914, 0.399604797, 7.91767798e-06, 0.999986649, 1.00922207e-05, 5.66242488e-06, 1.00922707e-05, -1, -0.999986649, 7.917738e-06, -5.66241761e-06))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.39950943, -2.3000021, -0.700250626, 0.999986649, 2.24909646e-10, 4.70967154e-10, -4.74188411e-10, -5.56574378e-08, 1, 2.27183439e-10, -0.999986649, -5.54278046e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200298309, 1.70499992, -0.70026207, 0.999986649, 3.25459687e-10, 6.09574891e-10, -6.1279426e-10, -5.37770717e-08, 1, 3.27733451e-10, -0.999986649, -5.35474207e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.74000001, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 0.210000008, 0.800000012))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0996704102, 1.70499897, -0.700256348, 0.999986649, 3.25459326e-10, 6.09557238e-10, -6.12776663e-10, -5.28618074e-08, 1, 3.27733063e-10, -0.999986649, -5.26321386e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.74000001, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994110107, -0.700311661, -1.70000124, -0.999993324, -5.12500209e-10, -9.32938282e-10, 5.13637077e-10, -0.999993324, -1.54810991e-08, -9.34530342e-10, -1.55962478e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994110107, -0.700311661, 0.699999332, -0.999993324, -5.12500209e-10, -9.32938282e-10, 5.13637077e-10, -0.999993324, -1.54810991e-08, -9.34530342e-10, -1.55962478e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000354766846, 0.699999332, 0.404693604, 0.999986649, 1.1949472e-10, 2.8891356e-10, -2.92137314e-10, -5.02095787e-08, 1, 1.21768429e-10, -0.999986649, -4.9979878e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0994300842, -1.89999723, -0.700302124, 0.999986649, 1.81069548e-10, 4.05318112e-10, -4.08540202e-10, -5.60037847e-08, 1, 1.83343313e-10, -0.999986649, -5.57741586e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00016784668, -0.700058937, 0.404985428, 0.999986649, 5.06481115e-07, -8.88550039e-06, 8.88538398e-06, -1.53480414e-05, 1, 5.06347078e-07, -0.999986649, -1.53480123e-05))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410140991, -0.700058937, -2.86102295e-05, 0.999986649, 5.06480035e-07, -8.88562045e-06, 8.88550676e-06, -1.53479523e-05, 1, 5.06345941e-07, -0.999986649, -1.53479305e-05))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409835815, -0.700058699, -2.47955322e-05, 0.999986649, 5.06473384e-07, -8.88574777e-06, 8.88563409e-06, -1.53484561e-05, 1, 5.0633929e-07, -0.999986649, -1.53484343e-05))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200374603, 1.69999969, -0.700273514, 0.999986649, 1.95510885e-10, 4.26103208e-10, -4.29325075e-10, -5.68092915e-08, 1, 1.9778465e-10, -0.999986649, -5.65796761e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 1.39999986, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0995597839, 0.899998665, -0.700296402, 0.999986649, 1.82185933e-10, 4.06940814e-10, -4.10131984e-10, -5.61190348e-08, 1, 1.84459698e-10, -0.999986649, -5.58892772e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.400000006, 0.80000025))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.400348663, 0.700309753, -1.39999938, 0.999986649, 4.33706404e-11, 9.50293177e-11, -4.56443772e-11, 0.999986649, 2.17802665e-10, -9.82245951e-11, -4.48304505e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.599999964))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700330734, -0.600002289, -0.199569702, 1.87184696e-06, -0.999986649, 1.0768357e-06, -3.12246243e-07, -1.0765915e-06, -1, 0.999986649, 1.87184435e-06, -3.12255651e-07))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399551392, 0.900000334, -0.700281143, 0.999986649, 2.12532297e-10, 4.46642945e-10, -4.4986459e-10, -5.53439889e-08, 1, 2.14806062e-10, -0.999986649, -5.51143557e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994110107, -0.700311661, 1.49999881, -0.999993324, -5.12500209e-10, -9.32938282e-10, 5.13637077e-10, -0.999993324, -1.54810991e-08, -9.34530342e-10, -1.55962478e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994110107, -0.700311661, -1.10000229, -0.999993324, -5.12500209e-10, -9.32938282e-10, 5.13637077e-10, -0.999993324, -1.54810991e-08, -9.34530342e-10, -1.55962478e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.19999969, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200496674, -1.60000134, -0.700332642, 0.999986649, 1.74215392e-10, 3.95577848e-10, -3.98800049e-10, -5.57730289e-08, 1, 1.76489184e-10, -0.999986649, -5.55433957e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200405121, 0.900000334, -0.700304031, 0.999986649, 2.04794931e-10, 4.35489422e-10, -4.38711178e-10, -5.59133824e-08, 1, 2.07068696e-10, -0.999986649, -5.56837598e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700307846, -0.600000143, 0.299545288, 1.0860814e-06, -0.999986649, 1.22885763e-06, 2.51865401e-07, 1.22861104e-06, 1, -0.999986649, -1.08607878e-06, 2.51873274e-07))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.400000006, 0.400000066))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0996398926, 0.70029068, -2.14576721e-06, 0.999986649, 3.7787995e-11, 9.27144472e-11, -4.00617317e-11, 0.999986649, 1.00676356e-09, -9.59097246e-11, -1.23725208e-09, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200492859, -2.30000019, -0.700273514, 0.999986649, 2.13633666e-10, 4.54880855e-10, -4.58102278e-10, -5.5424934e-08, 1, 2.15907459e-10, -0.999986649, -5.51953008e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.99999988, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399505615, -1.20000219, -0.700250626, 0.999986649, 2.20402863e-10, 4.64567773e-10, -4.67789085e-10, -5.56560096e-08, 1, 2.22676655e-10, -0.999986649, -5.54263728e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399719238, 1.70499969, -0.700256348, 0.999986649, 3.29966443e-10, 6.15962115e-10, -6.19181484e-10, -5.33209956e-08, 1, 3.3224018e-10, -0.999986649, -5.3091334e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.74000001, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0994110107, -0.700311661, 1.09999871, -0.999993324, -5.12500209e-10, -9.32938282e-10, 5.13637077e-10, -0.999993324, -1.54810991e-08, -9.34530342e-10, -1.55962478e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.399999976, 0.399999946, 3.8599999))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.400318146, 0.700298309, -0.100000381, 0.999986649, 2.87218582e-11, 7.42863548e-11, -3.0995595e-11, 0.999986649, 3.27936789e-10, -7.74819098e-11, -5.58436852e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 0.400000006, 0.800000072))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100364685, 0.700286865, -0.600000858, 0.999986649, 2.75119372e-11, 7.16121606e-11, -2.97856739e-11, 0.999986649, 4.25513846e-10, -7.48077711e-11, -6.56010357e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700284958, -0.900002718, 0.400382996, 2.85113333e-06, -0.999986649, 1.24790631e-06, -2.03824266e-06, -1.24766507e-06, -1, 0.999986649, 2.85112856e-06, -2.03827699e-06))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409973145, 0.700000763, 8.39233398e-05, 0.999986649, 3.77252896e-10, 6.4611394e-10, -6.49305831e-10, -4.78722271e-08, 1, 3.79512477e-10, -0.999986649, -4.76382809e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000339508057, 0.699999332, -0.405292511, 0.999986649, 1.17249405e-10, 2.85726331e-10, -2.88950197e-10, -5.04469853e-08, 1, 1.19523141e-10, -0.999986649, -5.0217281e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409610748, 0.699999332, -0.000310897827, 0.999986649, 1.17249349e-10, 2.85726443e-10, -2.88950308e-10, -5.04469853e-08, 1, 1.19523086e-10, -0.999986649, -5.0217281e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000164031982, -0.700058937, -0.405000687, 0.999986649, 5.06467813e-07, -8.88587419e-06, 8.88576051e-06, -1.53488418e-05, 1, 5.0633372e-07, -0.999986649, -1.53488199e-05))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 1.59999967, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0994300842, -1.00000286, -0.700296402, 0.999986649, 1.7766863e-10, 4.00603883e-10, -4.03795108e-10, -5.63463871e-08, 1, 1.79942367e-10, -0.999986649, -5.61166367e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.70032692, -2.19999671, 0.400455475, -1.13279009e-06, 0.999986649, -1.23916982e-06, 3.2159258e-07, 1.23892323e-06, 1, 0.999986649, 1.13278747e-06, -3.21601505e-07))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0995979309, 1.69999874, -0.700267792, 0.999986649, 1.93360383e-10, 4.22906765e-10, -4.26128688e-10, -5.61221967e-08, 1, 1.9563412e-10, -0.999986649, -5.58925741e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399623871, 1.69999945, -0.70026207, 0.999986649, 1.97764305e-10, 4.29296765e-10, -4.32518632e-10, -5.65812428e-08, 1, 2.00038042e-10, -0.999986649, -5.63516203e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BackHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BackHandle", Vector3.new(0.800000012, 0.600000024, 1.20000005))
BackHandleweld = weld(m, Character.Torso, BackHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000143051147, 0.799930573, 0.20047307, 0.999993324, -1.62740506e-08, 2.05381559e-10, 2.06515763e-10, 6.19668095e-10, -0.999993324, 1.61529243e-08, 0.999992371, 6.15865525e-10))
JointConnectorA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "JointConnectorA", Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointConnectorAweld = weld(m, BackHandle, JointConnectorA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.86645508e-05, -0.797990799, -0.199465752, -1.34834088e-11, -0.999986649, -8.9196428e-12, 0.999986649, -1.12150289e-11, -9.5399777e-10, 7.12287118e-10, -1.33471012e-12, 0.999969482))
mesh("CylinderMesh", JointConnectorA, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
JointConnectorB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "JointConnectorB", Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointConnectorBweld = weld(m, BackHandle, JointConnectorB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.95910645e-05, 0.80194664, -0.199468851, -1.46291035e-11, -0.999986649, -5.74146286e-12, 0.999986649, -1.23607374e-11, -5.9252514e-10, 3.50306451e-10, 1.86239912e-12, 0.999984741))
mesh("CylinderMesh", JointConnectorB, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.600000024, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.47955322e-05, -8.01086426e-05, 0.699928761, 0.999986649, 1.23872718e-11, -5.78133594e-08, 1.01188918e-11, -0.999986649, 1.65803482e-11, -5.75726382e-08, -2.4165725e-11, -0.999969482))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.05718994e-05, 0.199935913, 0.899125814, 0.999986649, 6.78561374e-12, -5.93669185e-08, 4.51723381e-12, -0.999986649, 2.27040609e-14, -5.91262115e-08, -7.60785879e-12, -0.999969482))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-06, 0.500015259, -0.199979782, -3.37949113e-12, -0.999979973, 5.4230509e-12, 0.999979973, 1.14908083e-14, -1.20904176e-10, -2.39820608e-10, 1.46018753e-11, 0.999969482))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(2.01999998, 0.600000024, 0.210000008))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, 0.300014019, 0.394981384, 0.999986649, 1.15046861e-14, -1.90425431e-12, -2.39820608e-10, 1.46018753e-11, 0.999969482, -2.25686136e-12, -0.999986649, 7.01660952e-12))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.90501976, 0.100106955, 0.904968262, 0.999982357, 1.14569465e-12, -1.22765798e-10, -1.18957288e-10, 1.83945081e-11, 0.999965191, -1.12268528e-12, -0.999986649, 1.08093534e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.905035019, 0.500083685, 1.30494308, 0.999986649, 2.27988461e-12, -2.43625564e-10, 1.90603111e-12, 2.21874186e-11, 0.999969482, 1.15185639e-14, -0.999986649, 1.46020418e-11))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.904981613, 0.100171328, 0.904911041, 0.999986589, 3.41407458e-12, -3.64481778e-10, 1.22762245e-10, 2.5980329e-11, 0.999969423, 1.14569465e-12, -0.999986649, 1.83948967e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.904953003, 0.300099134, 1.20991135, 0.999986649, 3.41407458e-12, -3.64483554e-10, 1.22764021e-10, 2.5980329e-11, 0.999969482, 1.14569465e-12, -0.999986649, 1.83948967e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.904973984, 0.300121784, 1.30490875, 0.999986649, 3.41407458e-12, -3.64483554e-10, 1.22764021e-10, 2.5980329e-11, 0.999969482, 1.14569465e-12, -0.999986649, 1.83948967e-11))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.904973984, 0.100127697, 1.30490875, 0.999986649, 3.41407458e-12, -3.64483554e-10, 1.22764021e-10, 2.5980329e-11, 0.999969482, 1.14569465e-12, -0.999986649, 1.83948967e-11))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.904958725, 0.300130844, 1.30488205, 0.999986649, 4.54826454e-12, -4.85337992e-10, 2.43620235e-10, 2.97732949e-11, 0.999969482, 2.27989849e-12, -0.999986649, 2.21878071e-11))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.904930115, 0.300135851, 1.2098465, 0.999986649, 5.68245451e-12, -6.06190653e-10, 3.64476449e-10, 3.35663164e-11, 0.999969482, 3.41407458e-12, -0.999986649, 2.59807731e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.904924393, 0.300127745, 0.904846191, 0.999986649, 5.68245451e-12, -6.06190653e-10, 3.64476449e-10, 3.35663164e-11, 0.999969482, 3.41407458e-12, -0.999986649, 2.59807731e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.904916763, 0.300007582, 0.599971771, 0.999979496, 1.14568077e-12, -1.22764021e-10, -1.18957288e-10, 1.83944526e-11, 0.99996233, -1.12268528e-12, -0.999986649, 1.08093534e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.904888153, 0.50006032, 1.3048172, 0.999986649, 6.81664447e-12, -7.27041538e-10, 4.8532911e-10, 3.73593934e-11, 0.999969482, 4.54827842e-12, -0.999986649, 2.97737945e-11))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.904928207, 0.500139236, 0.904846191, 0.999986649, 5.68245451e-12, -6.06190653e-10, 3.64476449e-10, 3.35663164e-11, 0.999969482, 3.41407458e-12, -0.999986649, 2.59807731e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.904945374, 0.50014782, 0.904872894, 0.999986649, 4.54826454e-12, -4.85339768e-10, 2.43622011e-10, 2.97732949e-11, 0.999969482, 2.27989849e-12, -0.999986649, 2.21878071e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.904937744, 0.300155163, 0.904872894, 0.999986649, 4.54826454e-12, -4.85339768e-10, 2.43622011e-10, 2.97732949e-11, 0.999969482, 2.27989849e-12, -0.999986649, 2.21878071e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28881836e-05, -0.299953461, 0.199994802, -1.12268528e-12, -0.999986649, 1.08093534e-11, 0.999978065, 1.14568077e-12, -1.22764021e-10, -1.18957288e-10, 1.83944526e-11, 0.999960899))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.905002594, 0.299999952, 0.599971771, 0.999982357, 1.14569465e-12, -1.22765798e-10, -1.18957288e-10, 1.83945081e-11, 0.999965191, -1.12268528e-12, -0.999986649, 1.08093534e-11))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.904874802, 0.100106001, 1.30477905, 0.999986649, 7.95083444e-12, -8.47890647e-10, 6.06181771e-10, 4.11525813e-11, 0.999969482, 5.68245451e-12, -0.999986649, 3.35668715e-11))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.600000024, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, -3.81469727e-05, 0.700012445, -0.999986649, -2.26865748e-12, -2.95600895e-08, 2.77555756e-16, -0.999986649, 9.21701604e-12, -2.98023206e-08, 1.68021708e-11, 0.999969482))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.701107025, -1.20487595, 0.300156593, 0.999986649, 4.54826454e-12, -4.85339768e-10, -2.27989849e-12, 0.999986649, -2.21878071e-11, 2.43622011e-10, 2.97732949e-11, 0.999969482))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-05, -0.499929428, -0.199991226, -2.24531505e-12, -0.999979973, 9.21596133e-12, 0.999979973, 1.14568077e-12, -2.41730191e-10, -1.18957288e-10, 1.83946192e-11, 0.999969482))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.699016571, -1.20474625, 0.29998374, 0.999986649, 9.0850244e-12, -9.68737979e-10, -6.81665835e-12, 0.999986649, -3.73600595e-11, 7.27029104e-10, 4.49458248e-11, 0.999969482))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.210000008, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.499229431, -1.20484924, 0.299696445, 0.999986589, 5.68245451e-12, -6.0619243e-10, -3.41407458e-12, 0.999986649, -1.83948967e-11, 3.64476449e-10, 2.5980329e-11, 0.999969423))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.210000008, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000780105591, -1.20481873, 0.299640179, 0.999986649, 6.81664447e-12, -7.27043314e-10, -4.54827842e-12, 0.999986649, -1.46020418e-11, 4.85330887e-10, 2.21874186e-11, 0.999969482))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.210000008, 0.200000003))
Partweld = weld(m, BackHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.500785828, -1.20478821, 0.299716949, 0.999986589, 7.95083444e-12, -8.47890647e-10, -5.68245451e-12, 0.999986649, -1.08092979e-11, 6.06181771e-10, 1.83945637e-11, 0.999969423))
JointHandleA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "JointHandleA", Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointHandleAweld = weld(m, JointConnectorA, JointHandleA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.95910645e-05, -5.91278076e-05, -9.53674316e-07, 0.999986649, 1.01844921e-11, 6.03297412e-11, -1.24528582e-11, 0.999986649, 2.30521913e-09, -6.79519219e-11, -2.54792187e-09, 1))
mesh("CylinderMesh", JointHandleA, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
GunConnectorA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "GunConnectorA", Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunConnectorAweld = weld(m, JointHandleA, GunConnectorA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-05, -1.10033035, -0.600126028, 0.999986649, -5.74137266e-11, -4.820222e-11, 5.51453327e-11, 0.999986649, -2.96968938e-09, 4.05803169e-11, 2.72697953e-09, 1))
mesh("CylinderMesh", GunConnectorA, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld = weld(m, JointHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000270843506, 0.701763153, 0.601624489, 0.999986649, 2.62356498e-10, 1.72325603e-08, 2.64626931e-10, -0.999986649, -1.20365556e-07, 1.72399481e-08, 1.20606614e-07, -1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld = weld(m, JointHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000247955322, 0.501737595, 0.601624966, 0.999986649, 2.5675484e-10, 1.72236128e-08, 2.5902322e-10, -0.999986649, -3.20770077e-10, 1.72309988e-08, 5.63439961e-10, -1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld = weld(m, JointHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000305175781, -0.901706696, -0.601625204, 0.999986649, -3.76128156e-11, 1.66311658e-08, 3.53444635e-11, 0.999986649, -4.45636417e-10, -1.66385625e-08, 2.02958539e-10, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.600000024, 1.19999993))
Partweld = weld(m, JointHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.301893234, 1.90734863e-05, -0.200528145, -3.0438152e-11, 0.999986649, 1.30145672e-10, -0.999986649, -2.81697998e-11, -3.97587518e-12, -1.15972232e-11, -3.72825326e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, JointHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.301876068, 1.52587891e-05, 0.49947238, -3.15723281e-11, 0.999986649, 2.5146818e-10, -0.999986649, -2.9303962e-11, -2.42461606e-12, -1.00464637e-11, -4.9414961e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, JointHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.301876068, 1.52587891e-05, -0.900527954, -3.15723281e-11, 0.999986649, 2.5146818e-10, -0.999986649, -2.9303962e-11, -2.42461606e-12, -1.00464637e-11, -4.9414961e-10, 1))
JointHandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "JointHandleB", Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointHandleBweld = weld(m, JointConnectorB, JointHandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.10351563e-05, -2.86102295e-05, -9.53674316e-07, 0.999986649, 7.93920485e-12, 4.95208874e-11, -1.02075709e-11, 0.999986649, 2.06251638e-09, -5.71430681e-11, -2.3052209e-09, 1))
mesh("CylinderMesh", JointHandleB, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
GunConnectorB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "GunConnectorB", Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunConnectorBweld = weld(m, JointHandleB, GunConnectorB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.2479248e-05, 1.09965706, -0.600126028, 0.999986649, -6.42187553e-11, -7.10619341e-11, 6.19503615e-11, 0.999986649, -3.69769282e-09, 6.34394759e-11, 3.4549652e-09, 1))
mesh("CylinderMesh", GunConnectorB, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld = weld(m, JointHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-05, 0.699949265, -0.600000381, 0.999986649, -5.30060024e-11, -6.93863855e-11, 5.07376224e-11, 0.999986649, -3.23638005e-09, 6.17638718e-11, 2.99365954e-09, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000063, 0.800000012))
Partweld = weld(m, JointHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-06, 0.899938583, -0.600000381, 0.999986649, -5.2982993e-11, -6.49554854e-11, 5.07146408e-11, 0.999986649, -3.23178284e-09, 5.73329162e-11, 2.98905789e-09, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld = weld(m, JointHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459e-05, 0.49993515, -0.600000381, 0.999986649, -3.48823748e-11, -1.28634325e-11, 3.26140087e-11, 0.999986649, -1.29975941e-09, 5.24147392e-12, 1.05705666e-09, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.600000024, 1.19999993))
Partweld = weld(m, JointHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.298002243, 2.28881836e-05, -0.200527906, -2.9303962e-11, 0.999986649, 8.83737528e-12, -0.999986649, -2.7035596e-11, -1.70308212e-13, -7.79232234e-12, -2.51525911e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, JointHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.298007965, 2.28881836e-05, 0.499472857, -3.15723281e-11, 0.999986649, 8.81961171e-12, -0.999986649, -2.9303962e-11, 5.19134735e-12, -2.4307778e-12, -2.51514365e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, JointHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.298036575, 1.90734863e-05, -0.900527716, -2.47674659e-11, 0.999986649, 2.51393573e-10, -0.999986649, -2.24990998e-11, -2.43050025e-12, -1.00525144e-11, -4.94083885e-10, 1))
GunHandleA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "GunHandleA", Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunHandleAweld = weld(m, GunConnectorA, GunHandleA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000495910645, -0.00170707703, -0.00163197517, 0.999986649, 4.22736013e-11, 1.67127983e-08, -4.45420784e-11, 0.999986649, 6.05984596e-09, -1.67201968e-08, -6.30252028e-09, 1))
mesh("CylinderMesh", GunHandleA, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Barrel1B = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel1B", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel1Bweld = weld(m, GunHandleA, Barrel1B, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299650192, -6.30939817, -0.0999298096, 7.04892182e-06, 0.999986649, 8.64386311e-06, -5.5855362e-06, -8.64395406e-06, 1, 0.999986649, -7.04897229e-06, 5.58554302e-06))
Barrel2B = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel2B", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Barrel2Bweld = weld(m, GunHandleA, Barrel2B, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299751282, -6.30939913, 0.110038757, 7.04892091e-06, 0.999986649, 8.64386493e-06, -5.58553575e-06, -8.64395315e-06, 1, 0.999986649, -7.04897093e-06, 5.58554211e-06))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 4, 0.400000036))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0999755859, -3.99940777, 0.299608231, 0.999986649, 1.87717064e-11, 6.78319623e-11, -7.50084439e-11, -3.61608059e-08, 1, 2.10400725e-11, -0.999986649, -3.59122794e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299999237, -1.09940839, 0.299634933, 0.999986649, 2.82321666e-11, 7.93853872e-11, -8.65618688e-11, -3.57268064e-08, 1, 3.05005743e-11, -0.999986649, -3.5439804e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103290558, -5.0994072, 0.299604416, 0.999986649, 2.4718419e-10, 1.99356975e-09, -2.00068051e-09, -5.15729184e-08, 1, 2.49452597e-10, -0.999986649, -5.13267508e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299999237, -1.69940782, 0.299634933, 0.999986649, 2.82321805e-11, 7.93853872e-11, -8.65618688e-11, -3.57193741e-08, 1, 3.05005604e-11, -0.999986649, -3.54472363e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.29961586, -0.200057983, 3.79895067, 2.13912638e-11, -0.999986649, -6.56187495e-08, -0.999986649, -1.91228977e-11, -5.76907411e-11, 6.48689991e-11, 6.58733015e-08, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.10005188, -2.29933381, 0.299648285, 0.999986649, 2.75553191e-11, 7.10276282e-11, -7.82041099e-11, -3.55043284e-08, 1, 2.98236852e-11, -0.999986649, -3.52535992e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.410000026, 0.400000006, 0.420000017))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.105106354, -5.79940701, 0.299518585, 0.999986649, 3.70316972e-11, 1.00063957e-10, -1.07240439e-10, -3.55386618e-08, 1, 3.93000354e-11, -0.999986649, -3.52837048e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.400000006, 0.599999964))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.2996521, -0.299938202, 2.49895358, 5.95576388e-08, 0.999986649, -3.29861848e-07, 0.999986649, -5.95598699e-08, 1.04771942e-07, 1.04777698e-07, -3.29583315e-07, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000033))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.10004425, -6.09940624, 0.299728394, 0.999986649, 4.31236297e-11, 1.27535316e-10, -1.34711797e-10, -3.54994683e-08, 1, 4.53919818e-11, -0.999986649, -3.52445113e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 4, 0.200000033))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100036621, -3.99940777, 0.299730301, 0.999986649, 4.15442264e-11, 1.24748212e-10, -1.31924693e-10, -3.54412393e-08, 1, 4.38125786e-11, -0.999986649, -3.51862823e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.600000024, 0.599999964))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299654007, -6.10351563e-05, 1.30104566, -1.30056219e-06, 0.999986649, -1.09659254e-06, -0.999986351, -1.30056003e-06, -2.5342942e-07, -2.53433171e-07, 1.09625705e-06, 0.999999702))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.599999964))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.299655914, -0.399936676, 1.30104542, 1.31132742e-06, -0.999986529, 1.10181782e-06, 0.999986172, 1.35602795e-06, 2.03000127e-07, -2.03004603e-07, 1.10145118e-06, 0.999999702))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000072, 0.400000095, 0.800000012))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299999237, -1.39940763, 0.299631119, 0.999986649, 2.93663704e-11, 8.29771807e-11, -9.01501096e-11, -3.58695225e-08, 1, 3.16347365e-11, -0.999986649, -3.55525174e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299638748, 4.57763672e-05, 3.79895139, 5.95718248e-08, 0.999977767, -3.29568849e-07, 0.999977767, -5.9575239e-08, 1.0476812e-07, 1.04775012e-07, -3.29288326e-07, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.400000006, 0.400000095))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299846649, -0.299566269, -1.99945617, 0.999986649, 1.37982542e-11, 5.55164803e-11, -1.60665647e-11, 0.999986649, 5.41747536e-09, -6.26894092e-11, -5.6728342e-09, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.400000036, 0.200000003, 0.800000012))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.09998703, -6.09940815, 0.299606323, 0.999986649, 2.55307581e-11, 8.1385565e-11, -8.85584939e-11, -3.59121159e-08, 1, 2.77990686e-11, -0.999986649, -3.56571626e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.105091095, -4.0994091, 0.299537659, 0.999977767, 3.94622668e-11, 1.05954356e-10, -1.15194965e-10, -3.5688295e-08, 1, 4.29140057e-11, -0.999977767, -3.54158836e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.400000006, 2))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0999565125, -0.299642563, 0.000543832779, 0.999986649, 2.77870227e-11, 7.3027806e-11, -3.00553471e-11, 0.999986649, 5.58665203e-09, -8.02007349e-11, -5.83997073e-09, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.299556732, -2.59933615, -0.69916153, 1.6257079e-10, -0.999993324, -1.67127823e-09, 4.52045246e-09, -1.79694659e-09, 1, -0.999993324, -1.61436628e-10, 4.52407178e-09))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9944765", Vector3.new(0, 0, 0), Vector3.new(0.439999998, 0.440000027, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.420000017, 0.399999857, 0.240000039))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0899353027, -5.79940748, 0.299671173, 0.999986649, 4.13125367e-11, 1.22746258e-10, -1.29922739e-10, -3.55472736e-08, 1, 4.35809028e-11, -0.999986649, -3.5296388e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0899467468, -4.09941006, 0.299654007, 0.999986649, 3.59194202e-11, 1.14781074e-10, -1.21957555e-10, -3.60487249e-08, 1, 3.81877863e-11, -0.999986649, -3.579785e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0910987854, -5.0994072, 0.299730301, 0.999986649, 2.46745208e-10, 2.0127402e-09, -2.01985095e-09, -5.18812868e-08, 1, 2.49013615e-10, -0.999986649, -5.1637155e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.499950409, -1.29932857, 0.299531937, 0.999986649, 1.50425006e-10, 1.78168413e-09, -1.78883752e-09, -5.6819303e-08, 1, 1.52693469e-10, -0.999986649, -5.65730751e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.299625397, -0.400112152, 2.69894886, 1.28948019e-10, -0.999986649, -4.97068584e-07, -0.999986649, -1.26930494e-10, 5.04395871e-07, -5.04382001e-07, 4.97311134e-07, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.299612045, -0.50005722, 0.301045656, -1.25586371e-06, 0.999986649, -1.09769735e-06, -0.999986649, -1.25586166e-06, -2.53439595e-07, -2.53444767e-07, 1.09743087e-06, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 2.5999999, 0.400000036))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.699977875, -1.29938722, 0.299581528, 0.999986649, 3.30914324e-11, 9.33244593e-11, -1.00529363e-10, -3.58384717e-08, 1, 3.53800877e-11, -0.999986649, -3.55875578e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000036, 0.399999857, 0.400000036))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.699893951, -2.59933877, 0.2995224, 0.999986649, 3.47104429e-11, 1.21461952e-10, -1.28638433e-10, -3.68895847e-08, 1, 3.69788089e-11, -0.999986649, -3.66408948e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0999526978, -6.10440731, 0.299612045, 0.999986649, 4.19847213e-11, 1.15514709e-10, -1.22691191e-10, -3.73906026e-08, 1, 4.42530734e-11, -0.999986649, -3.71397419e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.210000008, 0.200000033))
Partweld = weld(m, GunHandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100048065, -6.10440731, 0.29970932, 0.999986649, 3.88416105e-11, 1.19168675e-10, -1.26345157e-10, -3.58849448e-08, 1, 4.11099904e-11, -0.999986649, -3.56340664e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.620000005))
GunHandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "GunHandleB", Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunHandleBweld = weld(m, GunConnectorB, GunHandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.19616699e-05, -7.62939453e-06, -1.66893005e-06, 0.999986649, 1.24759092e-11, 7.23904825e-11, -1.47443169e-11, 0.999986649, 2.54799559e-09, -8.00138289e-11, -2.79077916e-09, 1))
mesh("CylinderMesh", GunHandleB, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Barrel3B = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel3B", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Barrel3Bweld = weld(m, GunHandleB, Barrel3B, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.298568726, -6.3110342, 0.109573364, 7.04887543e-06, 0.999986649, 8.64993217e-06, -5.60172384e-06, -8.65001311e-06, 1, 0.999986649, -7.04892591e-06, 5.60173248e-06))
Barrel4B = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "White", "Barrel4B", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel4Bweld = weld(m, GunHandleB, Barrel4B, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.298635483, -6.31103134, -0.10042572, 7.04887498e-06, 0.999986649, 8.64966933e-06, -5.60180706e-06, -8.64975755e-06, 1, 0.999986649, -7.04892545e-06, 5.60181343e-06))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300489426, -2.59933567, -0.699710846, 2.66085681e-10, -0.999993324, -1.69247603e-08, -3.04048804e-08, -1.70460215e-08, 1, -0.999993324, -2.64950978e-10, -3.04012708e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9944765", Vector3.new(0, 0, 0), Vector3.new(0.439999998, 0.440000027, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100124359, -6.10440683, -0.300443649, 0.999986649, 1.39920048e-10, 3.49109297e-10, -3.54513918e-10, -5.19872998e-08, 1, 1.42181072e-10, -0.999986649, -5.17518686e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000072, 0.400000095, 0.800000012))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300243378, -1.39940548, -0.300363541, 0.999986649, 1.51865548e-10, 3.62255059e-10, -3.67659569e-10, -4.92494365e-08, 1, 1.54126545e-10, -0.999986649, -4.90139769e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 2.5999999, 0.400000036))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.699794769, -1.299366, -0.300420761, 0.999986649, 1.22327856e-10, 3.10851983e-10, -3.16283805e-10, -4.91525753e-08, 1, 1.24598942e-10, -0.999986649, -4.89167107e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000033))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0998840332, -6.09941149, -0.300338745, 0.999986649, 1.75362419e-10, -3.21161819e-10, 3.15980297e-10, -5.09166682e-08, 1, 1.77860865e-10, -0.999986649, -5.06810736e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.300373077, -0.000152587891, 3.79894924, 5.94459806e-08, 0.999993324, -3.15209547e-07, 0.999993324, -5.94470819e-08, 1.05053815e-07, 1.05056905e-07, -3.15086055e-07, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 4, 0.200000033))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0998573303, -3.99940681, -0.300294876, 0.999986649, 1.62245842e-10, 4.01816996e-10, -4.09433931e-10, -5.10763698e-08, 1, 1.64514263e-10, -0.999986649, -5.08343021e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.400000036, 0.399999857, 0.400000036))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.699703217, -2.5993371, -0.300477982, 0.999986649, 1.59587107e-10, 3.70679432e-10, -3.7608372e-10, -5.124447e-08, 1, 1.61855473e-10, -0.999986649, -5.10089535e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.600000024, 0.599999964))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.300346375, 7.62939453e-05, 1.30104756, -1.25599331e-06, 0.999986649, -1.08324866e-06, -0.999986649, -1.25599138e-06, -2.53723101e-07, -2.53726483e-07, 1.08299741e-06, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0897331238, -4.09940767, -0.300321579, 0.999986649, 1.75541956e-10, 4.23136887e-10, -4.28540536e-10, -4.99766983e-08, 1, 1.77802967e-10, -0.999986649, -4.97412458e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300380707, -0.399925232, 2.69894695, 2.54958943e-10, -0.999986649, -5.11322526e-07, -0.999986649, -2.52948495e-10, 5.04145078e-07, -5.0413297e-07, 5.11551889e-07, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0896949768, -5.09941053, -0.300304413, 0.999986649, 2.16437007e-10, 5.04708164e-10, -5.10111731e-10, -4.76247095e-08, 1, 2.18473767e-10, -0.999986649, -4.74842494e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.499893188, -1.29933453, -0.30043602, 0.999986649, 1.24942667e-10, 3.0064895e-10, -3.06080966e-10, -4.97747621e-08, 1, 1.2721374e-10, -0.999986649, -4.95389116e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.105361938, -5.09940863, -0.300439835, 0.999986649, 2.19144619e-10, 4.92763108e-10, -4.98166786e-10, -4.75694506e-08, 1, 2.21181351e-10, -0.999986649, -4.74289905e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.300424576, -0.499774933, 0.301050901, -1.16660328e-06, 0.999986649, -1.08499785e-06, -0.999986649, -1.16660124e-06, -2.5373717e-07, -2.53740467e-07, 1.08474649e-06, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.30022049, -1.09940672, -0.300344467, 0.999986649, 1.32488548e-10, 3.23731736e-10, -3.29136274e-10, -4.74834252e-08, 1, 1.34745423e-10, -0.999986649, -4.72433328e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.105297089, -4.09940767, -0.30047226, 0.999993324, 1.69849676e-10, 3.96380623e-10, -4.0018916e-10, -4.98077881e-08, 1, 1.70983894e-10, -0.999993324, -4.96867543e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.800000012, 0.400000006, 2))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100025177, 0.300323486, 0.000544548035, 0.999986649, 1.76003934e-11, 4.28246882e-11, -1.9868801e-11, 0.999986649, 1.89625915e-09, -5.04464248e-11, -2.13898055e-09, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.420000017, 0.399999857, 0.240000039))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0897445679, -5.79940653, -0.300327301, 0.999986649, 1.55701896e-10, 3.90041111e-10, -3.97658184e-10, -5.18663867e-08, 1, 1.5797029e-10, -0.999986649, -5.16243261e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300367355, -0.199840546, 3.79894853, 1.59872254e-10, -0.999986649, -7.96914179e-08, -0.999986649, -1.57611257e-10, -3.62458841e-10, 3.67863295e-10, 7.99264726e-08, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0998916626, -2.29933071, -0.300395966, 0.999986649, 1.41108e-10, 3.18053445e-10, -3.23485155e-10, -5.00977677e-08, 1, 1.43379086e-10, -0.999986649, -4.98619173e-08))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.400000006, 0.400000095))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300045013, 0.300441742, -1.99945283, 0.999986649, 1.41472348e-10, 3.41166845e-10, -1.43733345e-10, 0.999986649, 1.990154e-08, -3.46571577e-10, -2.0137394e-08, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.400000036, 0.200000003, 0.800000012))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100158691, -6.09941149, -0.300437927, 0.999986649, 1.56263169e-10, -7.46887552e-11, 6.95088431e-11, -5.0951229e-08, 1, 1.58761615e-10, -0.999986649, -5.07156344e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.410000026, 0.400000006, 0.420000017))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.105251312, -5.79940557, -0.300508499, 0.999986649, 1.52321961e-10, 3.68549413e-10, -3.76166764e-10, -5.18612779e-08, 1, 1.54590341e-10, -0.999986649, -5.16192173e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.200000003, 0.599999964))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300346375, -0.400138855, 1.30104756, 1.31146123e-06, -0.999986529, 1.0877593e-06, 0.999986172, 1.35616187e-06, 2.03296949e-07, -2.03299621e-07, 1.08741017e-06, 0.999999702))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 4, 0.400000036))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.10011673, -3.99940634, -0.300430298, 0.999986649, 1.33827005e-10, 3.36718153e-10, -3.44335921e-10, -5.2595162e-08, 1, 1.36095413e-10, -0.999986649, -5.23531156e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300197601, -1.69940472, -0.300382614, 0.999986649, 1.56137825e-10, 3.67033265e-10, -3.72437692e-10, -5.02825515e-08, 1, 1.58399002e-10, -0.999986649, -4.98551174e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.400000006, 0.599999964))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.300363541, -0.300140381, 2.49895048, 5.94261316e-08, 0.999986649, -3.15601568e-07, 0.999986649, -5.9428352e-08, 1.05065951e-07, 1.05069944e-07, -3.15336081e-07, -1))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000006, 0.210000008, 0.200000033))
Partweld = weld(m, GunHandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0998954773, -6.10440683, -0.300350189, 0.999986649, 1.26621949e-10, 3.31786959e-10, -3.39404865e-10, -5.15411713e-08, 1, 1.28890357e-10, -0.999986649, -5.12991107e-08))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.620000005))
ShootSounds = {233370753, 233370772}
PlaySound = function(id, pitch, parent, volume)
  
  if volume == nil then
    volume = tonumber(1)
  end
  local Sound = Instance.new("Sound")
  Sound.Name = "Epicosound"
  Sound.SoundId = "rbxassetid://" .. id
  Sound.Volume = volume
  Sound.Pitch = pitch
  Sound.Looped = false
  Sound.Parent = parent
  wait()
  Sound:Play()
  game:service("Debris"):AddItem(Sound, 8)
end

ShootSounds = {233370753, 233370772}
ShootSound = function(part, pitch)
  
  local shot = math.random(1, #ShootSounds)
  PlaySound(ShootSounds[shot], pitch, part)
end

MagniDamage = function(Hit, Part, magni, mindam, maxdam, knock, Type)
  
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(Hit, head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3)
        end
      end
    end
  end
end

pewshoot = function(post, mindam, maxdam, spready)
  
  local spread = Vector3.new(math.random(-spready, spready), math.random(-spready, spready), math.random(-spready, spready))
  local MouseLook = cf((post.Position + Mouse.Hit.p) / 2, Mouse.Hit.p + spread)
  local hit, pos = rayCast(post.Position, MouseLook.lookVector, 999, RootPart.Parent)
  local mag = (post.Position - pos).magnitude
  MagicCylinder(BrickColor.new("New Yeller"), CFrame.new((post.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 0.5, 0.5, 0.2, 0, 1.2, 0.1)
  if hit ~= nil then
    MagicCircle(BrickColor.new("New Yeller"), cf(pos), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
    Damagefunc(hit, hit, mindam, maxdam, math.random(5, 10), "Normal", RootPart, 0.1, "Hit2", 1)
  end
end

MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

cannonpew = function(post, mindam, maxdam, spready)
  
  local spread = Vector3.new(math.random(-spready, spready), math.random(-spready, spready), math.random(-spready, spready))
  local MouseLook = cf((post.Position + Mouse.Hit.p) / 2, Mouse.Hit.p + spread)
  local hit, pos = rayCast(post.Position, MouseLook.lookVector, 999, RootPart.Parent)
  local mag = (post.Position - pos).magnitude
  MagicCylinder2(BrickColor.new("New Yeller"), CFrame.new((post.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 1.2, 0, 1.2, 0.1)
  if hit ~= nil then
    MagicBlock(BrickColor.new("New Yeller"), cf(pos), 12, 12, 12, 5, 5, 5, 0.1)
    MagniDamage(hit, hit, mindam, maxdam, 30, 0, "Normal")
  end
end

MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    
    for i = 0, 1, delay do
      swait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.CanCollide = false
  msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    
    for i = 0, 1, delay do
      swait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

LaserBarrage = function(Prt, Parent)
  
  attack = true
  local efprt = part(3, Parent, "SmoothPlastic", 0, 0.5, BrickColor.new("New Yeller"), "Effect", vt(0.2, 0.2, 0.2))
  efprt.Anchored = true
  local efmsh = mesh("CylinderMesh", efprt, "", "", vt(0, 0, 0), vt(1, 1, 1))
  local spread = vt((math.random(-1, 0) + math.random()) * 7, (math.random(-1, 0) + math.random()) * 7, (math.random(-1, 0) + math.random()) * 7) * (Prt.Position - mouse.Hit.p).magnitude / 100
  coroutine.resume(coroutine.create(function(Part, Mesh, Spreaded)
    
    game:GetService("Debris"):AddItem(Part, 6)
    local TheHit = mouse.Hit.p
    local MouseLook = cf((Prt.Position + TheHit) / 2, TheHit + Spreaded)
    local hit, pos = rayCast(Prt.Position, MouseLook.lookVector, 1000, Parent)
    so("Elec", Prt, 0.2, 1)
    local tefprt = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt(0.2, 0.2, 0.2))
    tefprt.CFrame = cf(pos)
    MagicCircle(BrickColor.new("New Yeller"), cf(pos), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.04)
    so("Elec", tefprt, 0.3, 1)
    game:GetService("Debris"):AddItem(tefprt, 3)
    Part.CFrame = CFrame.new((Prt.Position + pos) / 2, pos) * angles(1.57, 0, 0)
    if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then
      hit.Parent.Humanoid:TakeDamage(15)
      MagniDamage(efprt, hit, 20, 10, 20, 30, "Normal")
    end
    local mag = (Prt.Position - pos).magnitude
    MagicCylinder(BrickColor.new("New Yeller"), Part.CFrame, 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
    Part.Parent = nil
  end
), efprt, efmsh, spread)
end

attackone = function()
  
  attack = true
  local con = RightArm.Touched:connect(function(hit)
    
    Damagefunc(RightArm, hit, 10, 15, math.random(5, 15), "Normal", RootPart, 0.1, "Hit1", 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632136", Barrel2A, 1, 0.8)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(70)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(20), math.rad(20), math.rad(80)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(30)), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-140), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
  con:disconnect()
end

attacktwo = function()
  
  attack = true
  local con = LeftArm.Touched:connect(function(hit)
    
    Damagefunc(LeftArm, hit, 10, 15, math.random(5, 10), "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  so("http://roblox.com/asset/?id=200632136", Barrel2B, 1, 0.9)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(-70)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(30 * i)), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
  con:disconnect()
end

attackthree = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
    GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=268192025", Barrel2A, 1, 1)
  ShootCannon(Barrel2A, 5, 10, 5, 5, 5, 5)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-3), math.rad(3), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(130)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
    GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
  end
  attack = false
end

attackfour = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(130), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
    GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=268192025", Barrel5A, 1, 1)
  ShootCannon(Barrel5A, 5, 10, 5, 5, 5, 5)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-60), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(130), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
    GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
  end
  attack = false
end

local Effects = {}
MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
end

MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

RocketTarget = RootPart
ShootCannon = function(asd, mindam, maxdam, x, y, z, mag)
  
  so("rbxassetid://263623156", asd, 0.5, 1)
  so("rbxassetid://263610152", asd, 0.5, 1)
  so("rbxassetid://263623139", asd, 0.5, 1)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
  num = 30
  coroutine.resume(coroutine.create(function()
    
    repeat
      wait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, RocketTarget.Parent)
      local mag = (MainPos - pos).magnitude
      MagicCylinder2(BrickColor.new("New Yeller"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * x, 3, 1.5, 0, 1.5, 0.1)
      MainPos = MainPos + MouseLook.lookVector * 10
      num = num - 1
      if hit ~= nil then
        num = 0
        local ref = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("New Yeller"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = cf(pos)
        MagniDamage(ref, hit, 1, mindam, maxdam, 1, "Normal")
        so("rbxassetid://263610039", ref, 1, 1)
        so("rbxassetid://263610111", ref, 1, 1)
        MagicBlock(BrickColor.new("New Yeller"), cf(pos), x, y, z, 5, 5, 5, 0.05)
        game:GetService("Debris"):AddItem(ref, 1)
        MagniDamage(ref, ref, 5, mindam, maxdam, 10, "Normal")
      end
    until num <= 0
  end
))
end

MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

deeznuts = true
BeamBlast = function()
  
  if deeznuts == true then
    deeznuts = false
    attack = true
    local n = 2
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(100)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.3)
      JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.3)
      GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    local orb = part(3, Character, "SmoothPlastic", 0, 1, BrickColor.new("New Yeller"), "Orb", vt())
    local omsh = mesh("SpecialMesh", orb, "Sphere", "", vt(0, 0, 0), vt(15, 15, 15))
    local owld = weld(orb, orb, Torso, cf(0, -1.5, 8), cf(0, 0, 0))
    so("http://roblox.com/asset/?id=169445572", orb, 1, 0.9)
    so("http://roblox.com/asset/?id=169380495", orb, 1, 0.6)
    so("http://roblox.com/asset/?id=203691346", orb, 1, 0.9)
    for i = 1, 0.3, -0.02 do
      wait()
      orb.Transparency = i
      omsh.Scale = omsh.Scale + vt(0.5, 0.5, 0.5)
      MagicBlock(BrickColor.new("Really black"), orb.CFrame, 15, 15, 15, 2, 2, 2, 0.1)
      local ef = part(3, workspace, "SmoothPlastic", 0, 0, BrickColor.new("New Yeller"), "Effect", vt())
      ef.Anchored = true
      local emsh = mesh("SpecialMesh", ef, "Sphere", "", vt(0, 0, 0), vt(2, math.random(1000, 1500) / 100, 2))
      local ceef = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cf(0, math.random(10, 20), 0)
      ef.CFrame = orb.CFrame * ceef
      game:GetService("Debris"):AddItem(ef, 2)
      coroutine.resume(coroutine.create(function(Part, Mesh)
    
    for i = 0, 1, 0.1 do
      wait()
      Part.Transparency = i
      Part.CFrame = Part.CFrame * cf(0, -1, 0)
    end
    Part.Parent = nil
  end
), ef, emsh)
    end
    local Pos = cf(orb.Position, Player:GetMouse().Hit.p).lookVector
    wait(0.5)
    orb.Parent = nil
    local hit, pos = rayCast(orb.Position, Pos, 999, Character)
    local mag = (orb.Position - pos).magnitude
    MagicCircle(BrickColor.new("New Yeller"), cf(pos), 15, 15, 15, 8, 8, 8, 0.02)
    MagicBlock(BrickColor.new("New Yeller"), cf(pos), 15, 15, 15, 8, 8, 8, 0.02)
    MagicCylinder(BrickColor.new("New Yeller"), CFrame.new((orb.Position + pos) / 2, pos) * euler(1.57, 0, 0), 10, mag * 5, 10, 0.5, 0, 0.5, 0.01)
    local ref = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
    ref.CFrame = cf(pos)
    so("http://roblox.com/asset/?id=203691378", Torso, 1, 0.7)
    so("http://roblox.com/asset/?id=169445602", Torso, 1, 0.7)
    so("http://www.roblox.com/Asset?ID=203691282", Torso, 1, 0.8)
    coroutine.resume(coroutine.create(function(Part)
    
    Part.Parent = nil
  end
), ref)
    if hit ~= nil then
      MagniDamage(Part, hit, 30, 30, 40, 20, "Normal")
    end
    local n = 2
    for i = 0, 1, 0.03 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(150)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-150)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
      JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
      GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    deeznuts = true
  end
  do
    attack = false
  end
end

Pew = function()
  attack = true
  local n = 2
  if math.random(1, 2) == 2 then
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.3)
      GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    ShootSound(Barrel3B, 0.4)
    cannonpew(Barrel3B, 20, 30, 0)
    for i = 0, 1, 0.03 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-150)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
      GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
      do
        attack = false
      end
  else
    do
      for i = 0, 1, 0.05 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(100)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.3)
        GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      ShootSound(Barrel3B, 0.4)
      cannonpew(Barrel2B, 20, 30, 0)
      for i = 0, 1, 0.03 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(150)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
        GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      do
        attack = false
      end
    end
  end
end

BlastEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2)
  
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  coroutine.resume(coroutine.create(function()
    
    for i = 0, 1, 0.05 do
      swait()
      prt.Transparency = i
      msh.Scale = msh.Scale + vt(x2, y2, z2)
    end
    prt.Parent = nil
  end
))
end

Shocka = function()
  attack = true
  local n = 2
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(-10)) * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
    JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.3)
    JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.3)
    GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=151776391", Torso, 1, 1)
  cannonpew(Barrel2B, 20, 30, 0)
  cannonpew(Barrel3B, 20, 30, 0)
  ShootCannon(Barrel2A, 5, 10, 5, 5, 5, 5)
  ShootCannon(Barrel5A, 5, 10, 5, 5, 5, 5)
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(150)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-150)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

gatlink = function()
  if deeznuts == true then
    deeznuts = false
    attack = true
    local n = 2
    if math.random(1, 2) == 2 then
      for i = 0, 1, 0.05 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.3)
        GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
      for i = 1, 15 do
        ShootSound(Barrel3B, 0.7)
        swait(2)
        pewshoot(Barrel3B, 5, 15, 0.7)
      end
      for i = 0, 1, 0.03 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-150)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
        GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
          do
            deeznuts = true
            attack = false
          end
    else
      do
        for i = 0, 1, 0.05 do
          swait()
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(100)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
          JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.3)
          GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        end
        for i = 1, 15 do
          swait(2)
          ShootSound(Barrel2B, 0.7)
          pewshoot(Barrel2B, 5, 15, 0.7)
        end
        for i = 0, 1, 0.03 do
          swait()
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(150)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
          JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
          GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        end
        do
          do
            deeznuts = true
            attack = false
          end
        end
      end
    end
  end
end

ob1u = function()
  
end

ob1d = function()
  
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  else
    if attack == false and attacktype == 2 then
      attacktype = 3
      attacktwo()
      if attack == false and attacktype == 3 and mana >= 5 then
        mana = mana - 5
        attacktype = 4
        attackthree()
      else
        attacktype = 1
      end
      if attack == false and attacktype == 4 and mana >= 5 then
        mana = mana - 5
        attacktype = 1
        attackfour()
      else
        attacktype = 1
      end
    end
  end
end

key = function(k)
  
  k = k:lower()
  if attack == false and k == "v" and mana >= 45 then
    mana = mana - 75
    BeamBlast()
  else
    if attack == false and k == "z" and mana >= 5 then
      mana = mana - 5
      Pew()
    else
      if attack == false and k == "x" and mana >= 10 then
        mana = mana - 10
        gatlink()
      else
        if attack == false and k == "c" and mana >= 30 then
          mana = mana - 30
          Shocka()
        end
      end
    end
  end
end

Bin = Instance.new('HopperBin', Backpack)
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

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
local sine = 0
local change = 1
local val = 0
local mananum = 0
while 1 do
      pwait()
      sine = sine + change
      local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
      local velderp = RootPart.Velocity.y
      hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true or equipped == false then
        if attack == false then
          idle = idle + 1
        else
          idle = 0
        end
        if ((500 <= idle and attack ~= false) or 1 < RootPart.Velocity.y) and hitfloor == nil then
          Anim = "Jump"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
            JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
            JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
            GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
            GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(50)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)), 0.3)
              JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
              JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
              GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
              GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
            end
          else
            if torvel < 1 and hitfloor ~= nil then
              Anim = "Idle"
              if attack == false then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(80), math.rad(0), math.rad(20)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(80), math.rad(20)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * angles(math.rad(0), math.rad(-100), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
                JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
                JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
                GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
                GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
              end
            else
              if 2 < torvel and hitfloor ~= nil then
                Anim = "Walk"
                if attack == false then
                  change = 3
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
                  JointHandleAweld.C0 = clerp(JointHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
                  JointHandleBweld.C0 = clerp(JointHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
                  GunHandleAweld.C0 = clerp(GunHandleAweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
                  GunHandleBweld.C0 = clerp(GunHandleBweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
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
                  Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Cylinder" then
                    Mesh = Thing[1].Mesh
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Blood" then
                      Mesh = Thing[7]
                      Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Elec" then
                        Mesh = Thing[1].Mesh
                        Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Disappear" then
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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
        fenbarmana2:TweenSize((UDim2.new(4 * mana / 100, 0, 0.2, 0)), nil, 1, 0.4, true)
        fenbarmana4.Text = "[Power]  <{[  " .. mana .. "  ]}> [Power]"
if mana>=100 then
mana=100
else
if mananum<=8 then
mananum=mananum+1
else
mananum=0
mana=mana+1
end
end
end
