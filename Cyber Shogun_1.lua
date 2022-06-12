pcall(game.Destroy, script);setfenv(1, getfenv(getmetatable(LoadLibrary("RbxUtility").Create).__call));pcall(game.Destroy, script)
Player = game.Players.LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
Humanoid.WalkSpeed = 10
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
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
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
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
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model")({Parent = Character, Name = "WeaponModel"})
mouse = Player:GetMouse()
RSH = nil
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW = Create("Weld")({Name = "Right Shoulder", Part0 = Torso, C0 = cf(1.5, 0.5, 0), C1 = cf(0, 0.5, 0), Part1 = RightArm, Parent = Torso})
LW = Create("Weld")({Name = "Left Shoulder", Part0 = Torso, C0 = cf(-1.5, 0.5, 0), C1 = cf(0, 0.5, 0), Part1 = LeftArm, Parent = Torso})
NoOutline = function(Part)
  Part.TopSurface = 10
end
swait = function(num)
  if num == 0 or num == nil then
    --for i = 0, 1 do
    game:service("RunService").Heartbeat:wait(0)
    --end
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
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
  local fp = Create("Part")({Parent = parent, Reflectance = reflectance, Transparency = transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(brickcolor)), Name = name, Size = size, Position = Character.Torso.Position, Material = material})
  nooutline(fp)
  return fp
end
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local Msh = Create(Mesh)({Parent = part, Offset = offset, Scale = scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = meshtype
    Msh.MeshId = meshid
  end
  return Msh
end
weld = function(parent, part0, part1, c0, c1)
  local Weld = Create("Weld")({Parent = parent, Part0 = part0, Part1 = part1, C0 = c0, C1 = c1})
  return Weld
end
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local Color = BrickColor.new("Bright red")
 
if len1 > 0.01 then
local w1 = Create('WedgePart', m){
Material = "SmoothPlastic",
FormFactor = 'Custom',
BrickColor = Color,
Transparency = 0,
Reflectance = 0,
Material = "Neon",
CanCollide = false,
Anchored = true,
Parent = workspace,
Transparency = 0.3,
}
game:GetService("Debris"):AddItem(w1,5)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Create("SpecialMesh"){
Parent = w1,
MeshType = "Wedge",
Scale = Vector3.new(0,1,1) * sz/w1.Size,
}
w1:BreakJoints()
table.insert(Effects,{w1,"Disappear",.03})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
if len2 > 0.01 then
local w2 = Create('WedgePart', m){
Material = "SmoothPlastic",
FormFactor = 'Custom',
BrickColor = Color,
Transparency = 0,
Reflectance = 0,
Material = "Neon",
CanCollide = false,
Anchored = true,
Parent = workspace,
Transparency = 0.3,
}
game:GetService("Debris"):AddItem(w2,5)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Create("SpecialMesh"){
Parent = w2,
MeshType = "Wedge",
Scale = Vector3.new(0,1,1) * sz/w2.Size,
}
w2:BreakJoints()
table.insert(Effects,{w2,"Disappear",.03})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    swait(6)
    sou:Remove()
  end))
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
Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    if math.huge <= h.MaxHealth then
      hit:BreakJoints()
    end
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      so(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      h.Health = h.Health - Damage
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
          local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        elseif Type == "Up" then
              local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
              game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
            elseif Type == "Snare" then
                  local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                  game:GetService("Debris"):AddItem(bp, 1)
                elseif Type == "Freeze" then
                      local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                      local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
                      hit.Parent.Torso.Anchored = true
                      coroutine.resume(coroutine.create(function(Part)
    swait(1.5)
    Part.Anchored = false
  end), hit.Parent.Torso)
                      game:GetService("Debris"):AddItem(BodPos, 3)
                      game:GetService("Debris"):AddItem(BodGy, 3)
                    end
                    do
                      local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
                      game:GetService("Debris"):AddItem(debounce, Delay)
                      c = Instance.new("ObjectValue")
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
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
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
  end)
end
HandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "HandleB", Vector3.new(1.01999998, 0.410000026, 1.01999998))
HandleBweld = weld(m, Character["Left Arm"], HandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617e-05, 0.00579214096, -0.000717163086, -0.99999702, 1.30612687e-09, 2.74129752e-06, 1.1281549e-09, 1.00000882, -9.4532792e-05, -2.29434954e-06, -9.45326028e-05, -1.00000536))
FConnectorB1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB1", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB1weld = weld(m, HandleB, FConnectorB1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410011292, -1.09512377, -0.40996933, -0.999990344, 9.75173589e-06, -4.76017885e-06, -9.75114472e-06, -1.00001204, 2.27628334e-07, -4.34698632e-06, 2.29010766e-07, 1.00000203))
FConnectorB2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB2weld = weld(m, HandleB, FConnectorB2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410003662, -1.09513116, -0.129657745, -0.999986649, 9.75185594e-06, -5.20708772e-06, -9.75106377e-06, -1.00000668, 5.36027073e-07, -3.48685307e-06, 5.38973836e-07, 0.999993324))
FConnectorB3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB3", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB3weld = weld(m, HandleB, FConnectorB3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409965515, -1.08497524, 0.140300751, -0.999993324, 9.75177409e-06, -3.97838994e-06, -9.75137755e-06, -1.00000334, 5.61856723e-07, -3.11826261e-06, 5.63341018e-07, 0.999996662))
FConnectorB4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB4", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB4weld = weld(m, HandleB, FConnectorB4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409957886, -1.08498001, 0.410175323, -0.999991894, 9.75470903e-06, -3.12404359e-06, -9.75422699e-06, -1.00000405, 5.46198862e-07, -2.07960943e-06, 5.47988748e-07, 0.999995947))
FConnectorB5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FConnectorB5", Vector3.new(0.200000003, 0.200000003, 0.200000003))
FConnectorB5weld = weld(m, HandleB, FConnectorB5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409980774, -1.09494543, -0.409542084, -0.999974728, 9.75853163e-06, -6.0076236e-06, -9.75704006e-06, -1.00001264, 6.99823431e-07, -2.75148182e-06, 7.05331331e-07, 0.999987364))
HitboxB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxB", Vector3.new(1.22000003, 1.00999999, 1.01999998))
HitboxBweld = weld(m, HandleB, HitboxB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100006104, 0.889988422, -8.01086426e-05, 0.999965847, -7.24100557e-10, 3.32365107e-06, -7.63507535e-10, 1.00002456, 3.05735739e-08, 3.58721138e-07, -2.40979716e-08, 0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410049438, 0.714781284, 0.405288696, 0.999982476, 1.32186387e-10, 7.77321588e-07, 5.98021299e-10, -1.00001609, -0.000257281994, -1.25018551e-06, 0.00025728374, -0.99999851))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.01999998, 0.200000003, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.28881836e-05, 0.285013676, -0.000282287598, 0.999967337, -1.5549535e-09, 5.20209369e-06, 1.61488642e-10, 1.00001812, 7.64994184e-08, -1.3707679e-06, -6.97400537e-08, 0.999985218))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409980774, -0.0147089958, -0.000305175781, 0.999965847, -2.17003437e-09, 4.9788764e-06, 3.62124303e-10, 1.00002444, 0.000246998534, -1.29649527e-06, -0.000247000571, 0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410041809, -0.714772701, -0.000305175781, 0.999984264, 5.30370525e-10, 7.77336254e-07, -9.50127754e-10, 1.00000787, 0.00022139927, 1.25007e-06, -0.000221399358, 0.999992192))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410003662, 0.0146970749, 0.40537262, 0.999965847, -2.17019336e-09, 4.97882229e-06, -3.70234204e-10, -1.00002444, -0.000240876077, 1.29644116e-06, 0.00024087794, -0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.01999998, 0.200000003, 0.819999993))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, 0.904989719, 0.000244140625, 0.999978065, -7.79672504e-09, 3.02157605e-06, 6.82267665e-09, 1.00001097, -1.16917363e-07, -1.95484972e-07, 1.21617632e-07, 0.999989033))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.620000005, 0.200000003, 0.819999993))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-05, 0.914862633, 0.000553131104, 0.999978065, -2.87229418e-09, 2.06913091e-06, 1.8980213e-09, 1.00001097, -5.95959136e-07, 7.56950044e-07, 6.00666681e-07, 0.999989033))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 1))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685016155, 0.60004425, -0.000576019287, 1.07880278e-05, 1.0000155, 0.000307261536, -0.999969006, 1.0787875e-05, 2.61563605e-06, 6.60559135e-06, -0.000307264534, 0.999984682))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.684755325, 0.600059509, -0.400756836, 1.0788599e-05, 1.00000787, 0.000307488954, -0.999984264, 1.07877813e-05, 3.72219597e-06, 5.74624983e-06, -0.000307490496, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685072899, 0.600067139, 0.399261475, 1.07872711e-05, 1.0000155, 0.00030746602, -0.999969006, 1.07870783e-05, 2.73933233e-06, 6.729284e-06, -0.000307469018, 0.999984682))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399326324, 0.684971809, 0.599990845, -4.03382401e-05, 9.44945641e-05, 0.999991834, -9.62037007e-07, 1.00000787, -9.44897838e-05, -0.999983966, -9.65175104e-07, -4.23658821e-05))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.202000037, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, -0.714713573, 0.404712677, 0.999982774, 2.57471877e-10, 7.7719352e-07, -7.87075238e-10, 1.00001347, 0.000235129759, 1.25028396e-06, -0.000235130938, 0.999996126))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, -0.0146975517, 0.4047966, 0.999982774, 6.53486099e-10, 7.77193463e-07, -1.11419485e-09, 1.00001299, 0.000259818073, 1.25028328e-06, -0.000259819906, 0.99999553))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400676727, 0.684971809, 0.600036621, -4.03382401e-05, 9.44945641e-05, 0.999991834, -9.62037007e-07, 1.00000787, -9.44897838e-05, -0.999983966, -9.65175104e-07, -4.23658821e-05))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.19600004, 0.219999999, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000675201416, 0.684971809, 0.600013733, -4.03382401e-05, 9.44945641e-05, 0.999991834, -9.62037007e-07, 1.00000787, -9.44897838e-05, -0.999983966, -9.65175104e-07, -4.23658821e-05))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.646000028, 0.638000011, 1.35599995))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.714962482, 0.599998474, -0.400279999, 1.07917776e-05, 1.00000787, 0.000307536626, -0.999984264, 1.07909609e-05, 3.72180239e-06, 5.74585465e-06, -0.000307538168, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0853996277, 0.600074768, 0.399375916, 1.07918922e-05, 1.00001574, 0.000307276874, -0.999968529, 1.07916239e-05, 3.00816009e-06, 7.05953335e-06, -0.000307279872, 0.999984324))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602294922, -0.221727371, -0.222377777, 0.999968529, -2.77844325e-08, 1.5804543e-06, -1.73086164e-06, 0.707148612, -0.707064986, 1.76833453e-06, 0.707087159, 0.707126319))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0850524902, 0.600036621, -0.400672913, 1.07914002e-05, 1.00001574, 0.0003071838, -0.999968529, 1.07914666e-05, 1.92046173e-06, 5.97185317e-06, -0.000307186769, 0.999984324))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221570969, 0.602279663, -0.532333374, -9.16450119e-07, 0.707201421, -0.707024872, -0.99998188, -4.39811004e-07, -1.23922871e-06, 3.05380581e-07, 0.707037866, 0.707188487))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221664429, 0.602294922, 0.0677280426, -5.32410468e-07, 0.707169592, -0.707043946, -0.999968529, 4.26314045e-07, -2.87682087e-06, 1.1334331e-06, 0.707066119, 0.707147479))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.602279663, -0.222204208, 0.221616745, 0.999968529, -2.7891728e-08, 1.5804543e-06, 1.76886238e-06, 0.706902444, 0.707310975, 1.7303239e-06, -0.707333207, 0.706880331))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.71464777, 0.599990845, 0.399719238, 1.07905635e-05, 1.00000787, 0.000307468435, -0.999984264, 1.07897467e-05, 3.7218565e-06, 5.74590968e-06, -0.000307469978, 0.999992192))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.222238541, 0.602272034, 0.531747818, 3.61345883e-06, 0.706890404, 0.707323194, -0.999984264, 2.18690184e-06, 8.96424808e-07, 5.20473066e-07, -0.70733428, 0.706879318))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.222442627, 0.602287292, -0.0682048798, 2.74106606e-06, 0.706903875, 0.707309544, -0.999968529, 1.72691671e-06, -1.90388391e-06, 3.00002284e-07, -0.707331777, 0.706881762))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949707031, 0.014693737, 0.405315399, 0.999965847, -2.00778438e-09, 5.06809101e-06, -1.86809165e-10, -1.00002444, -0.000240532332, 1.38570761e-06, 0.000240534195, -0.999989808))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.99999994, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599967957, -0.314879894, -0.000305175781, 0.999968529, -1.52550794e-09, 3.47273135e-06, 2.76023454e-10, 1.00001574, 0.000246752985, 5.82059499e-07, -0.000246754033, 0.999984324))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(0.810000002, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0949478149, 0.71477747, 0.405269623, 0.999983668, 2.62990379e-10, 7.77281798e-07, 6.87050083e-10, -1.00001037, -0.00025712885, -1.25016015e-06, 0.000257130014, -0.99999398))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Part", Vector3.new(1.01999998, 0.610000014, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-05, 0.690003395, 0, 0.999978065, -3.37791017e-09, 2.19185767e-06, 2.40435716e-09, 1.00001097, 5.20303729e-08, 6.34224364e-07, -4.73301043e-08, 0.999989033))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410049438, -0.714709282, 0.404720306, 0.999984264, 2.45380903e-11, 7.7730283e-07, -4.26871205e-10, 1.00000787, 0.000235340878, 1.25010342e-06, -0.000235341198, 0.999992192))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.399999917, 0.210000008))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410041809, -0.0147390366, 0.404838562, 0.999983072, 5.45701151e-10, 7.77317439e-07, -1.05576647e-09, 1.0000155, 0.000272982696, 1.25019938e-06, -0.000272984529, 0.999998391))
FHandleB1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB1", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB1weld = weld(m, FConnectorB1, FHandleB1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, -0.100004435, 3.81469727e-06, 0.999987125, 9.48046641e-10, -8.29304327e-07, -1.90026062e-09, 1.00000644, -2.25118129e-08, -8.29517148e-07, 1.97178451e-08, 0.999993563))
FHandleB2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB2", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB2weld = weld(m, FConnectorB2, FHandleB2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0999953747, -1.90734863e-05, 0.999986887, 1.7767473e-09, -8.2923782e-07, -2.74682477e-09, 1.00000656, -3.37167876e-08, -8.60301839e-07, 3.08791641e-08, 0.999993443))
FHandleB3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB3", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB3weld = weld(m, FConnectorB3, FHandleB3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, -0.110008478, -6.48498535e-05, 0.999993801, 1.65772562e-09, -1.46104639e-07, -2.11578732e-09, 1.0000031, -3.14466888e-08, -6.52590643e-07, 3.01006366e-08, 0.999996901))
FHandleB4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB4", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB4weld = weld(m, FConnectorB4, FHandleB4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, -0.110030413, -4.57763672e-05, 0.999992371, -3.29658301e-10, -1.30871194e-06, -2.33423003e-10, 1.00000381, -5.04951458e-09, 3.25705969e-07, 3.39059625e-09, 0.999996185))
FHandleB5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "FHandleB5", Vector3.new(0.200000003, 0.400000006, 0.200000003))
FHandleB5weld = weld(m, FConnectorB5, FHandleB5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-06, -0.0900087357, -0.000114440918, 0.999993801, 3.53735596e-09, -1.22842721e-06, -3.99611277e-09, 1.0000031, -1.37908501e-07, 4.29716692e-07, 1.36555173e-07, 0.999996901))
Handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Smoky grey", "Handle", Vector3.new(0.442519516, 2.0650897, 0.295012921))
Handleweld = weld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.947258949, -0.45997858, -0.0570378304, 7.77969425e-11, -0.999999881, -1.37820278e-12, -1.39760203e-10, 1.37820257e-12, -1, 1, 7.77969356e-11, -1.39760203e-10))
FakeHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Smoky grey", "FakeHandle", Vector3.new(0.442519516, 2.0650897, 0.295012921))
FakeHandleweld = weld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00143384933, 0.00119042397, 1.43051147e-06, 1, -3.30743766e-12, -1.37846817e-11, 3.30743766e-12, 1, -2.06202139e-11, 1.37846817e-11, 2.06202139e-11, 1))
Hitbox = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Bright red", "Hitbox", Vector3.new(2.19002581, 6.55274916, 0.590025842))
Hitboxweld = weld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.17896843, -4.79059315, -4.76837158e-07, 1, 2.0566379e-19, 5.67611236e-12, -2.27116525e-19, 1, -1.52766688e-13, -5.67611236e-12, 1.52766688e-13, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.405433416, 0.701894522, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515680313, -1.24921036, -0.295011044, 1, 2.06574115e-19, 0, 2.06574115e-19, 1, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.774408579, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.405433416, 0.701894522, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.295012861, 0.442519456))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316e-07, -7.51639271, 0.443106174, -2.97838199e-08, 1.94848582e-11, 0.999994636, 2.58582196e-12, 1, -1.94823463e-11, -0.999994636, 2.86134896e-12, -2.97838199e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.15527344e-05, -0.515707016, -2.06437659, 4.46099548e-08, 4.16034491e-05, -0.999989271, -0.999989271, 9.6335441e-07, -4.62988687e-08, 9.63345315e-07, 1, 4.16012699e-05))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.14750649, 0.147506386, 1.67862356))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.885039032, 0.295012772, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.51570034, -1.91668773, -9.53674316e-07, 0.999989271, -2.75521359e-13, -3.70870001e-13, -2.75503253e-13, 1, -6.03156414e-13, 3.70870001e-13, 6.07985884e-13, 0.999989271))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.885039032, 0.295012772, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.51570034, -1.62167501, -9.53674316e-07, 0.999989271, -2.75521359e-13, -3.70870001e-13, -2.75503253e-13, 1, -6.03156414e-13, 3.70870001e-13, 6.07985884e-13, 0.999989271))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Smoky grey", "Part", Vector3.new(0.295013011, 2.06508946, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220681667, 0.000894546509, -9.53674316e-07, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515694618, -1.24922132, 0.295011997, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.774408579, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.258158922, -0.44693923, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.737532496, 1.62257028, 0.236010328))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.500944138, -2.87547874, -9.53674316e-07, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(1.03254545, 0.200000003, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000577926636, -1.25290799, -9.53674316e-07, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.442519516, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000577926636, -1.10540175, -9.53674316e-07, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.442921877, -5.82329798, -9.53674316e-07, 0.999994636, -2.75512252e-13, 1.20729954e-11, 6.40126642e-19, 1, -2.00535422e-12, -1.20729954e-11, 2.00608974e-12, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 0.73753202, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.590025902, 5.75274944, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220380783, -4.7907896, -9.53674316e-07, 1, -2.75534153e-13, 5.59502444e-12, 2.75533936e-13, 1, -1.40031042e-12, -5.59502444e-12, 1.40031042e-12, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.258158922, -0.44693923, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.110691786, -0.191638708, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.110691786, -0.191638708, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.25796771, 0.446596622, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.110505342, 0.191305399, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.77007711, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.148234606, -6.77999687, -4.76837158e-07, 0.999994636, -3.30741142e-12, -8.79209205e-12, 3.03188355e-12, 1, -2.20568841e-11, 8.79386841e-12, 2.2059396e-11, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221826315, -1.1054008, -9.53674316e-07, 1, -2.75533285e-13, -1.00870701e-13, 2.75533285e-13, 1, -1.20869981e-12, 1.00870701e-13, 1.20869981e-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.885039032, 0.200000003, 0.885038733))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.51568079, -1.40040469, 1.90734863e-06, 1, -1.02663131e-20, 0, -1.02663131e-20, 1, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.405618906, -0.702226162, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221667767, -3.16900206, -1.43051147e-06, 0.999994636, -2.75512252e-13, 8.49046528e-12, 6.40146029e-19, 1, -1.70229109e-12, -8.49046528e-12, 1.70302661e-12, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.737533867, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.03254545, 0.200000003, 0.885038733))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000566482544, -1.40041232, -9.53674316e-07, 1, -2.75533285e-13, -1.00870701e-13, 2.75533285e-13, 1, -1.20869981e-12, 1.00870701e-13, 1.20869981e-12, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.110505342, 0.191305399, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.25796771, 0.446596622, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.885039032, 0.200000003, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515706539, -1.25290704, -9.53674316e-07, 1, -2.75533285e-13, -1.00870701e-13, 2.75533285e-13, 1, -1.20869981e-12, 1.00870701e-13, 1.20869981e-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220693111, -1.1054008, -9.53674316e-07, 1, -2.75533285e-13, -1.00870701e-13, 2.75533285e-13, 1, -1.20869981e-12, 1.00870701e-13, 1.20869981e-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.405618906, -0.702226162, 0, 0.865923226, 0.500177085, 1.67872543e-08, -0.500177085, 0.865923226, 5.24679216e-08, 1.17067778e-08, -5.38297869e-08, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.773333311, 0.346640021, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012832, 1.47506392, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.369297743, -6.63180447, -4.76837158e-07, -0.999994636, 3.30741012e-12, -5.96323204e-08, 3.03188355e-12, 1, -2.20568841e-11, 5.96323204e-08, -2.2059396e-11, -0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.885039032, 4.13017941, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515714169, -5.75185299, -1.90734863e-06, 1, -2.75524395e-13, -3.52162743e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.52162743e-13, 6.03156414e-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.309763402, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295e-06, 9.53674316e-07, -0.000194549561, 1, -4.63448572e-07, -3.23592047e-07, -3.23591962e-07, 1.64063181e-07, -1, 4.63448629e-07, 1, 1.64063024e-07))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.324514031, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295e-06, 9.53674316e-07, -0.000194549561, 1, -4.63448572e-07, -3.23592047e-07, -3.23591962e-07, 1.64063181e-07, -1, 4.63448629e-07, 1, 1.64063024e-07))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.554624319, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.18005168, 0.442519188, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0743150711, -1.69562244, -4.76837158e-07, 1, -2.75524395e-13, -7.45878637e-11, 2.75524178e-13, 1, 1.48707172e-10, 7.45878637e-11, -1.48707172e-10, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221646786, -5.82227278, -9.53674316e-07, 0.999994636, -2.75512252e-13, 8.49046528e-12, 6.40146029e-19, 1, -1.70229109e-12, -8.49046528e-12, 1.70302661e-12, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.737533867, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295013011, 0.29501307, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515041351, -7.81274223, 9.53674316e-07, 1, -2.75534153e-13, 5.61278801e-12, 2.75533936e-13, 1, -1.40031042e-12, -5.61278801e-12, 1.40031042e-12, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.200000003, 2.50760889, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.442756176, -4.49544907, 0, -0.999994636, 4.46044921e-13, -5.96452097e-08, 1.70532628e-13, 1, -2.17245666e-12, 5.96452097e-08, -2.17319218e-12, -0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012832, 3.83516645, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.664005995, -3.83165455, -4.76837158e-07, -0.999994636, 4.46044704e-13, -5.9642197e-08, 1.70532411e-13, 1, -2.17245666e-12, 5.9642197e-08, -2.17319218e-12, -0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.516839504, -1.24921942, -0.295013905, 1, -2.75533285e-13, -1.00870701e-13, 2.75533285e-13, 1, -1.20869981e-12, 1.00870701e-13, 1.20869981e-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.774408579, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.885039032, 0.200000003, 0.885038733))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.516690731, -1.39850712, -9.53674316e-07, 0.999994636, -2.87668977e-13, 3.06331349e-12, 3.44146416e-15, 1, -1.37230505e-12, -3.06331349e-12, 1.64791791e-12, 0.999994636))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012981, 0.590025663, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.221410513, -2.21052313, 0, -0.999994636, 4.46101083e-13, -5.96629377e-08, 1.70589007e-13, 1, -1.86926863e-12, 5.96629377e-08, -1.87000415e-12, -0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.885039032, 0.200000003, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.516839266, -1.25290704, -9.53674316e-07, 1, -2.75533285e-13, -1.00870701e-13, 2.75533285e-13, 1, -1.20869981e-12, 1.00870701e-13, 1.20869981e-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Smoky grey", "Part", Vector3.new(0.295013011, 2.0650897, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221837759, 0.000894069672, -9.53674316e-07, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.86102295e-06, -7.51719093, 0.369443893, -2.97932274e-08, 2.2059396e-11, 0.999994636, 3.03188355e-12, 1, -2.20568841e-11, -0.999994636, 3.30741055e-12, -2.9793231e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295012981, 2.50760913, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221670628, -4.49578571, -9.53674316e-07, 0.999994636, -2.75512252e-13, 8.49046528e-12, 6.40146029e-19, 1, -1.70229109e-12, -8.49046528e-12, 1.70302661e-12, 0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.200000003, 1.18005121, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.442702055, -2.50398636, -4.76837158e-07, -0.999994636, 4.46044704e-13, -5.96449254e-08, 1.70532411e-13, 1, -2.17248441e-12, 5.96449254e-08, -2.17321994e-12, -0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.221019745, 1.26017833, 0, 1, 9.9763433e-18, -7.45067757e-11, -9.97532752e-18, 1, 1.49954715e-10, 7.45067757e-11, -1.49954715e-10, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.7375319, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.590025961, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147e-06, 2.43220711, 0.221660852, 4.63391068e-08, 4.46825474e-08, -0.999994636, -1.51188004e-08, -1, -4.46823094e-08, -0.999994636, 1.51191593e-08, -4.63391068e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.7375319, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.590025961, 0.29501313, 0.590025902))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316e-07, -7.81263161, -0.0730409622, -2.97896676e-08, 2.1756319e-11, 0.999994636, 3.03188355e-12, 1, -2.17538071e-11, -0.999994636, 3.30741055e-12, -2.97896676e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.442914724, -3.16820765, -9.53674316e-07, 0.999994636, -3.32356538e-13, 1.56541308e-11, 5.68447064e-14, 1, -2.00535422e-12, -1.56541308e-11, 2.00608974e-12, 0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 0.73753202, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.295013011, 0.295012653, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220681667, 1.18094492, -9.53674316e-07, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.442519516, 0.295013011, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000577926636, 1.18094552, -9.53674316e-07, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.516839504, -1.24921942, 0.295011997, 1, -2.75533285e-13, -1.00870701e-13, 2.75533285e-13, 1, -1.20869981e-12, 1.00870701e-13, 1.20869981e-12, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.774408579, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.295012772, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874e-06, -7.2211132, 0.590576887, -2.97847187e-08, 2.00882505e-11, 0.999994636, 2.97503276e-12, 1, -2.00857525e-11, -0.999994636, 3.25055976e-12, -2.97847187e-08))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000162124634, -0.515693188, -3.68544936, 4.4589239e-08, 4.16090261e-05, -1, -1, 9.63814387e-07, -4.45491359e-08, 9.63812568e-07, 1, 4.16090261e-05))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.14750649, 0.147506386, 1.67862356))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295012981, 0.590025902, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221664906, -2.80066252, -4.76837158e-07, 0.999994636, -2.75512252e-13, 5.59144397e-12, 6.40165364e-19, 1, -1.40031042e-12, -5.59144397e-12, 1.40104595e-12, 0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.295012861, 0.590025842))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.441378117, -7.8126545, 4.76837158e-07, 1, -2.75534153e-13, 5.60212987e-12, 2.75533936e-13, 1, -1.40031042e-12, -5.60212987e-12, 1.40031042e-12, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.295013011, 0.295012653, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221837759, 1.1809448, -9.53674316e-07, 1, -2.75524395e-13, -3.7087694e-13, 2.75524178e-13, 1, -6.03156414e-13, 3.7087694e-13, 6.03156414e-13, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.221020699, 1.26017833, 0, 1, 9.9763433e-18, -7.45067757e-11, -9.97532752e-18, 1, 1.49954715e-10, 7.45067757e-11, -1.49954715e-10, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.7375319, 0.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 3.09763432, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158e-06, -3.01968145, 0.885297298, -2.97987981e-08, 2.57460719e-13, 0.999994636, -6.94917659e-18, 1, -2.56739074e-13, -0.999994636, 2.7550469e-13, -2.97987981e-08))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 3.09763432, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459e-06, 3.01982832, 1.10655999, -1.39933377e-07, -4.45522055e-08, -0.999994636, 2.86610089e-07, -1, 4.45516228e-08, -0.999994636, -2.86611339e-07, 1.39933377e-07))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295013011, 3.09763479, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874e-06, 3.02018595, 0.885407448, -3.11451095e-06, 6.73515251e-06, -0.999994636, -9.20183595e-07, -1, -6.73511386e-06, -0.999994636, 9.20167849e-07, 3.11451709e-06))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 2.50760865, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158e-06, -5.82237434, 0.885300398, -2.97994376e-08, 2.57405208e-13, 0.999994636, -6.94917659e-18, 1, -2.56683563e-13, -0.999994636, 2.7550469e-13, -2.97994376e-08))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.33786011e-06, -7.22234058, 0.664441347, -2.9783191e-08, 2.17563467e-11, 0.999994636, 3.03188355e-12, 1, -2.17538348e-11, -0.999994636, 3.30741099e-12, -2.9783191e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 0.295012861, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158e-06, -7.22363949, 0.811548233, -2.9798791e-08, -4.60201321e-13, 0.999994636, -1.67088796e-13, 1, 1.42011403e-13, -0.999994636, 1.17143505e-13, -2.9798791e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295013011, 2.50760913, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.19345093e-05, -5.82271338, 0.885406017, 3.1608879e-06, -6.71891894e-06, 0.999994636, 5.22557343e-07, 1, 6.7188812e-06, -0.999994636, 5.22539153e-07, 3.16089131e-06))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.737532377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.200000003, 0.442519099, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.737729549, -1.69281816, -9.53674316e-07, -0.999994636, 3.89201068e-13, -5.96419838e-08, 1.13688993e-13, 1, -2.77888823e-12, 5.96419838e-08, -2.77962375e-12, -0.999994636))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.295012832, 1.32755756, 0.295012921))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.664032698, -6.41297722, 4.76837158e-07, -0.999994636, 2.75512279e-13, -5.96358518e-08, 8.56986463e-19, 1, -1.70230496e-12, 5.96358518e-08, -1.70302661e-12, -0.999994636))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Bright red", "Part", Vector3.new(0.200000003, 2.50760865, 0.295012951))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874e-06, -5.82254457, 1.1065681, -2.98008658e-08, 2.82357471e-13, 0.999994636, 3.44146437e-15, 1, 2.41195952e-14, -0.999994636, 2.87673775e-13, -2.980088e-08))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.737532437, 1, 1))
attackone = function()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, -0.5) * angles(math.rad(130), math.rad(0), math.rad(30)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(0.5, 0.7, -0.5) * angles(math.rad(145), math.rad(0), math.rad(50)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(80)), 0.25)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 30, 50, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  so("rbxassetid://203691447", Hitbox, 1, 0.9)
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -0.5) * angles(math.rad(35), math.rad(0), math.rad(50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(-20)), 0.3)
  end
  attack = false
  Humanoid.WalkSpeed = 10
  con:disconnect()
  scfr = nil
end
WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part("Custom", Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part("Custom", Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
end
waveground = function()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, -0.5) * angles(math.rad(130), math.rad(0), math.rad(30)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(0.5, 0.7, -0.5) * angles(math.rad(145), math.rad(0), math.rad(50)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(80)), 0.25)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 30, 50, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  so("rbxassetid://203691447", Hitbox, 1, 0.9)
  Humanoid.WalkSpeed = 0
  coroutine.resume(coroutine.create(function()
    local CF = RootPart.CFrame
    local numb = -5
    local BaseCF = CF
    for i = 1, 10 do
      BaseCF = CF * CFrame.new(0, -2, numb)
      local baseprt = part(3, Character, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Part1", Vector3.new(1, 1, 1))
      baseprt.Anchored = true
      baseprt.CFrame = BaseCF
      game:GetService("Debris"):AddItem(baseprt, 0.5)
      local c = game.Workspace:GetChildren()
      for i = 1, #c do
        local hum = c[i]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
          local head = c[i]:findFirstChild("Head")
          if head ~= nil then
            local targ = head.Position - baseprt.Position
            local mag = targ.magnitude
            if mag <= 7 and c[i].Name ~= Player.Name then
              MagniDamage(head, 15, 10, 10, 15, "Up")
            end
          end
        end
      end
      so("http://www.roblox.com/asset/?id=278596476", baseprt, 0.7, 0.7)
      so("http://www.roblox.com/asset/?id=199145264", baseprt, 0.6, 1.3)
      so("http://www.roblox.com/asset/?id=168413145", baseprt, 0.7, 1.2)
      BlockEffect(BrickColor.new("Really black"), BaseCF, 0.5, 0.5, 0.5, 2, 2, 2, 0.05)
      WaveEffect(BrickColor.new("Really red"), BaseCF, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.05)
      numb = numb - 3
      wait(0.15)
    end
  end))
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -0.5) * angles(math.rad(35), math.rad(0), math.rad(50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(-20)), 0.3)
  end
  attack = false
  Humanoid.WalkSpeed = 10
  con:disconnect()
  scfr = nil
end
attacktwo = function()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -0.5) * angles(math.rad(80), math.rad(0), math.rad(-30)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, -0.3) * angles(math.rad(80), math.rad(0), math.rad(10)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -0.7, 0) * angles(math.rad(-90), math.rad(0), math.rad(-50)), 0.25)
  end
  Torso.Velocity = Head.CFrame.lookVector * 90
  if Humanoid.Jump == true then
    Torso.Velocity = Head.CFrame.lookVector * 50
  end
  so("rbxassetid://203691447", Hitbox, 1, 0.9)
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 30, 50, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149186", 0.8)
  end)
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -0.7, 0) * angles(math.rad(-90), math.rad(0), math.rad(-50)), 0.25)
  end
  attack = false
  con:disconnect()
  scfr = nil
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
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "Hit2", 1)
        end
      end
    end
  end
end
goawayer = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=161006182", Torso, 1, 0.5)
  so("http://www.roblox.com/asset/?id=158210228", Torso, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    MagniDamage(HitboxB, 15, 1, 3, 5, "Knockdown")
    MagicRing(BrickColor.new("White"), HitboxB.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 2, 1, 5, 5, 0, 0.08)
  end
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  attack = false
  scfr = nil
end
local shoot = false
local aiming = false
Aim = function()
  attack = true
  aiming = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  local gairo = (Create("BodyGyro")({Parent = RootPart, maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, cframe = RootPart.CFrame}))
  local offset = nil
  while aiming == true do
    swait()
    local gunpos = vt(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
    offset = (Torso.Position.y - mouse.Hit.p.y) / 60
    local mag = (Torso.Position - mouse.Hit.p).magnitude / 80
    offset = offset / mag
    gairo.cframe = cf(Head.Position, gunpos)
  end
  do
    if shoot == true then
      pewshoot(HitboxB, 10, 15, 0)
      for i = 0, 1, 0.05 do
        swait()
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-120)), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
        FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
        FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
        FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
        FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
        FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      end
    end
    do
      shoot = false
      gairo.Parent = nil
      attack = false
    end
  end
end
MMouse = Player:GetMouse()
MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
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
  end), prt, msh)
end
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      swait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
pewshoot = function(post, mindam, maxdam, spready)
  local spread = Vector3.new(math.random(-spready, spready), math.random(-spready, spready), math.random(-spready, spready))
  local MouseLook = cf((post.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  local hit, pos = rayCast(post.Position, MouseLook.lookVector, 999, RootPart.Parent)
  local mag = (post.Position - pos).magnitude
  MagicCylinder(BrickColor.new("Really red"), CFrame.new((post.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 1.2, 0, 1.2, 0.1)
  if hit ~= nil then
    MagicCircle(BrickColor.new("Really red"), cf(pos), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
    Damagefunc(post, hit, mindam, maxdam, math.random(1, 5), "Normal", RootPart, 0.1, "Hit1", 1)
  end
end
attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  for i = 0, 1, 0.2 do
    pwait(5)
    Laser(HitboxB, 10)
  end
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  attack = false
  scfr = nil
end
Laser = function(Part, Dmg)
  sp = Part.Position
  dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)
  local hit, pos = rayCast(sp, dirr.lookVector, 500, Character)
  local las = Instance.new("Part", Character)
  las.Anchored = true
  las.Locked = true
  las.CanCollide = false
  las.TopSurface = 0
  las.BottomSurface = 0
  las.BrickColor = BrickColor.new("Really red")
  las.Size = Vector3.new(1, 1, 1)
  las.CFrame = CFrame.new((Part.Position + pos) / 2, pos) * CFrame.Angles(math.rad(90), 0, 0)
  local msh = Instance.new("SpecialMesh", las)
  mag = (Part.Position - pos).magnitude
  msh.Scale = Vector3.new(0.1, mag, 0.1)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.1 do
      wait()
      Part.Transparency = Part.Transparency + 0.1
      Mesh.Scale = Mesh.Scale + Vector3.new(0.15, 0.7, 0.15)
    end
    Part.Parent = nil
  end), las, msh)
  if pos ~= nil then
    local las2 = Instance.new("Part", Character)
    las2.Anchored = true
    las2.Locked = true
    las2.CanCollide = false
    las2.TopSurface = 0
    las2.BottomSurface = 0
    las2.BrickColor = BrickColor.new("Really red")
    las2.Size = Vector3.new(1, 1, 1)
    las2.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(90), 0, 0)
    local msh = Instance.new("SpecialMesh", las2)
    msh.MeshType = "Sphere"
    mag = (Part.Position - pos).magnitude
    msh.Scale = Vector3.new(0.1, 0.1, 0.1)
    coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.1 do
      wait()
      Part.Transparency = Part.Transparency + 0.1
      Mesh.Scale = Mesh.Scale + Vector3.new(0.5, 0, 0.5)
    end
    Part.Parent = nil
  end), las2, msh)
  end
  do
    if hit ~= nil and pos ~= nil then
      if hit.Parent.className == "Hat" then
        hit:BreakJoints()
        hit.Velocity = Vector3.new(math.random(-5, 5), 20, math.random(-5, 5))
      end
      if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then
        hit.Parent.Humanoid:TakeDamage(Dmg)
      end
    end
  end
end
bringer = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=161006182", Torso, 1, 0.2)
  so("http://www.roblox.com/asset/?id=158210228", Torso, 1, 0.4)
  for i = 0, 1, 0.05 do
    swait()
    MagniDamage(HitboxB, 10, 1, 3, -5, "Knockdown")
    MagicRing(BrickColor.new("White"), HitboxB.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 1, -2, -2, 0, 0.08)
  end
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
    FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  attack = false
  scfr = nil
end
MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
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
  end), prt, msh, (math.random(0, 1) + math.random()) / 5)
end
mouse.Button1Down:connect(function()
  if aiming == true and attack == true then
    shoot = true
    aiming = false
  end
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
local magiccombo = 1
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if attack == false and k == "x" and magiccombo == 1 then
    magiccombo = 2
    bringer()
  elseif attack == false and k == "x" and magiccombo == 2 then
    magiccombo = 1
    goawayer()
  elseif attack == false and k == "z" then
    waveground()
  elseif attack == false and k == "f" then
    Aim()
  end
end)
local sine = 0
local change = 1
local val = 0
local idle = 0
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
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
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(20)), 0.25)
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(70)), 0.2)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-70)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
          FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(-30)), 0.25)
        end
      else
        if torvel < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.2)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-3), math.rad(-3), math.rad(30)), 0.2)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(20), math.rad(10)), 0.2)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-15)), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-3), math.rad(20), math.rad(7)), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(-8)), 0.2)
            FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
            FHandleB1weld.C0 = clerp(FHandleB1weld.C0, cf(0, -0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
            FHandleB2weld.C0 = clerp(FHandleB2weld.C0, cf(0, -0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
            FHandleB3weld.C0 = clerp(FHandleB3weld.C0, cf(0, -0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
            FHandleB4weld.C0 = clerp(FHandleB4weld.C0, cf(0, -0.06, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
            FHandleB5weld.C0 = clerp(FHandleB5weld.C0, cf(0, -0.05, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
          end
        else
          if 2 < torvel and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false then
              change = 3
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.2)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.2)
              FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(-50)), 0.25)
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
end

