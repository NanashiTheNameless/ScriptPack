Player = game:GetService("Players").LocalPlayer
--FIXED WITH TRIGECTORY's CheatSheet
cheatsheetplr = game.Players.LocalPlayer
i = Instance.new("NumberValue", cheatsheetplr )
i.Name = "FPSCH"
Bin = Instance.new("HopperBin", cheatsheetplr .Backpack)
script.Parent = Bin
local cf = CFrame.new
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RW = Create("Weld")({Name = "Right Shoulder", Part0 = Tor, C0 = CFrame.new(1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = RA, Parent = Tor})
LW = Create("Weld")({Name = "Left Shoulder", Part0 = Tor, C0 = CFrame.new(-1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = LA, Parent = Tor})
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
cam = game.Workspace.CurrentCamera
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
Charge = 0
RightLeg = Character["Right Leg"]
mana = 100
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
xenabled = true
cenabled = true
venabled = true
zenabled = true
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
mana = 100
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
Camera = workspace.CurrentCamera
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
Humanoid.WalkSpeed = 30
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Motor6D")
LW = Instance.new("Motor6D")
RW.Name = "RS"
LW.Name = "LS"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CreatePart = function(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

CreateSound = function(id, par, vol, pit)
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

makegui = function(ador, text)
  local a = math.random(-10, 10) / 100
  local bg = Instance.new("BillboardGui", m)
  bg.Adornee = ador
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  tl.TextColor3 = Color3.new(255, 255, 255)
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    for i = 1, 50 do
      wait()
      bg.StudsOffset = bg.StudsOffset + Vector3.new(a, 0.1, a)
    end
    wait(1)
    for i = 1, 10 do
      wait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end
)()
end

damage = function(hit, mind, maxd, knock, type, prop)
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
  local D = math.random(mind, maxd)
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if type == "Normal Damage" then
      h.Health = h.Health - D
      makegui(h.Parent.Torso, tostring(D))
      CreateSound("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
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
        if type == "Drain Damage" then
          CreateSound("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
          h.Health = h.Health - D
          makegui(h.Parent.Torso, tostring(D))
        else
          if type == "Lifestealing Damage" then
            h.Health = h.Health - D
            Character.Humanoid.Health = Character.Humanoid.Health + D / 2
            CreateSound("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
            makegui(h.Parent.Torso, tostring(D))
          else
            if type == "Healing" then
              h.Health = h.Health + D
              CreateSound("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
              makegui(h.Parent.Torso, tostring(D))
            end
          end
        end
      end
    end
  end
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
local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe1 = it("TextLabel")
fenframe1.Parent = fengui
fenframe1.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe1.BackgroundTransparency = 0.3
fenframe1.BorderSizePixel = 5
fenframe1.BorderColor3 = Color3.new(1, 1, 1)
fenframe1.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe1.Position = UDim2.new(0.325, 0, 0.7, 0)
fenframe1.Text = "Z"
fenframe1.TextWrapped = true
fenframe1.FontSize = 7
fenframe1.TextColor3 = Color3.new(1, 1, 1)
local fenframe1a = it("TextLabel")
fenframe1a.Parent = fengui
fenframe1a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe1a.BackgroundTransparency = 0.3
fenframe1a.BorderSizePixel = 5
fenframe1a.BorderColor3 = Color3.new(1, 1, 1)
fenframe1a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe1a.Position = UDim2.new(0.325, 0, 0.7, 0)
fenframe1a.Text = ""
local fenframe2 = it("TextLabel")
fenframe2.Parent = fengui
fenframe2.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe2.BackgroundTransparency = 0.3
fenframe2.BorderSizePixel = 5
fenframe2.BorderColor3 = Color3.new(1, 1, 1)
fenframe2.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe2.Position = UDim2.new(0.425, 0, 0.7, 0)
fenframe2.Text = "X"
fenframe2.TextWrapped = true
fenframe2.FontSize = 7
fenframe2.TextColor3 = Color3.new(1, 1, 1)
local fenframe2a = it("TextLabel")
fenframe2a.Parent = fengui
fenframe2a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe2a.BackgroundTransparency = 0.3
fenframe2a.BorderSizePixel = 5
fenframe2a.BorderColor3 = Color3.new(1, 1, 1)
fenframe2a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe2a.Position = UDim2.new(0.425, 0, 0.7, 0)
fenframe2a.Text = ""
local fenframe3 = it("TextLabel")
fenframe3.Parent = fengui
fenframe3.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe3.BackgroundTransparency = 0.3
fenframe3.BorderSizePixel = 5
fenframe3.BorderColor3 = Color3.new(1, 1, 1)
fenframe3.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe3.Position = UDim2.new(0.525, 0, 0.7, 0)
fenframe3.Text = "C"
fenframe3.TextWrapped = true
fenframe3.FontSize = 7
fenframe3.TextColor3 = Color3.new(1, 1, 1)
local fenframe3a = it("TextLabel")
fenframe3a.Parent = fengui
fenframe3a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe3a.BackgroundTransparency = 0.3
fenframe3a.BorderSizePixel = 5
fenframe3a.BorderColor3 = Color3.new(1, 1, 1)
fenframe3a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe3a.Position = UDim2.new(0.525, 0, 0.7, 0)
fenframe3a.Text = ""
local fenframe4 = it("TextLabel")
fenframe4.Parent = fengui
fenframe4.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe4.BackgroundTransparency = 0.3
fenframe4.BorderSizePixel = 5
fenframe4.BorderColor3 = Color3.new(1, 1, 1)
fenframe4.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe4.Position = UDim2.new(0.625, 0, 0.7, 0)
fenframe4.Text = "V"
fenframe4.TextWrapped = true
fenframe4.FontSize = 7
fenframe4.TextColor3 = Color3.new(1, 1, 1)
local fenframe4a = it("TextLabel")
fenframe4a.Parent = fengui
fenframe4a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe4a.BackgroundTransparency = 0.3
fenframe4a.BorderSizePixel = 5
fenframe4a.BorderColor3 = Color3.new(1, 1, 1)
fenframe4a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe4a.Position = UDim2.new(0.625, 0, 0.7, 0)
fenframe4a.Text = ""
fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
local GetClosest = function(obj, MaxDistance)
  local Last, Lastx = MaxDistance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = (t.Position - obj.Position).magnitude
      if dist <= MaxDistance and dist < Last then
        Last = dist
        Lastx = v
      end
    end
  end
  return Lastx
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
  frame = 0.016666666666667
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

trail = function(color, part)
  trailling = true
  local lastPoint = part.Position
  coroutine.resume(coroutine.create(function()
    while trailling do
      wait()
      local mag = (lastPoint - part.Position).magnitude
      do
        local p = Instance.new("Part", m)
        p.Anchored = true
        p.CanCollide = false
        p.Transparency = 0.2
        p.BrickColor = BrickColor.new(color)
        p.Material = "Neon"
        p.FormFactor = "Custom"
        p.Size = Vector3.new(1, 1, 1)
        p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag / 2)
        local mesh = Instance.new("BlockMesh", p)
        mesh.Scale = Vector3.new(0.1, 0.1, mag + 0.2)
        lastPoint = part.Position
        coroutine.wrap(function()
      for x = 1, 10 do
        wait()
        mesh.Scale = mesh.Scale - Vector3.new(0.01, 0.01, 0)
      end
      p:remove()
    end
)()
      end
    end
  end
))
end

Handle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 1, "Dark stone grey", "Handle", Vector3.new(2.8874979, 0.553124726, 0.200000003))
Handleweld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0374832153, 1.11559677, -0.0300197601, -3.7658765e-013, 0, -0.999997616, 9.8749676e-013, 0.999997497, 0, 1, -9.87811937e-013, -3.7658765e-013))
CreateMesh("BlockMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
FakeHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 1, "Dark stone grey", "FakeHandle", Vector3.new(2.08749771, 0.553124726, 0.200000003))
FakeHandleweld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-005, 2.62260437e-006, -3.81469727e-006, 0.999990463, -7.43754529e-025, -1.78893358e-018, -7.43754726e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(3.68749809, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.400016785, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.5640564, 2.38418579e-007, 0, 0.999990463, -1.85938657e-024, -4.49943902e-018, 3.71877412e-025, 0.999990463, -1.56450373e-015, 9.21571847e-019, 3.12900747e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.19529533, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.01091957, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.82654381, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.64216995, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.3796711, -3.57627869e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.737499714, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.1812191, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(2.94999838, 0.200000003, 0.202812403))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.40001297, -1.31130219e-005, 0, 0.999987483, -3.71994139e-025, 3.76584723e-013, -3.64036234e-025, 0.999987483, -1.00893556e-012, -3.76586755e-013, 1.00767973e-012, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.921874583, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.737499595, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.35001373, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.368749827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.184376717, 2.42810059, -5.96035008e-008, 1.25160299e-015, -1, 9.17634938e-023, 0.999992847, 3.12900747e-016, 0.999992847, -1.82727023e-023, -5.96039271e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.921874642, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.368749857, 0.737499714))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.0921888351, 5.3155632, 2.22954721e-008, -5.9603785e-008, -1, -7.07253012e-009, -0.999985695, 5.96046377e-008, -0.999985695, 7.07252878e-009, -2.22957919e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.737499714, 0.368749827, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.61249161, 0.0921854973, 0, 0.999992847, -1.4875129e-024, -3.60497222e-018, 3.71878349e-025, 0.999992847, -1.25160299e-015, 9.21571847e-019, 3.12900747e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.368749827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.18437624, -2.79685974, 5.96040763e-008, -6.25801494e-016, 1, -7.43754529e-025, 0.999990463, -6.25801494e-016, -0.999990463, -3.65538643e-023, 5.96046448e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.921874642, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.202812403))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.96718216, -1.40666962e-005, 0, 0.999987125, -3.71994016e-025, 3.76584614e-013, -3.64036234e-025, 0.999987483, -1.00893556e-012, -3.7658662e-013, 1.0076794e-012, 0.999999642))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 2.21249914, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.202812403))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16716385, -1.40666962e-005, 0, 0.999987006, -3.71993967e-025, 3.7658456e-013, -3.64036234e-025, 0.999987483, -1.00893556e-012, -3.76586566e-013, 1.00767929e-012, 0.999999523))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 2.21249914, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(1.29062438, 0.368749827, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.3015213, -0.0921912193, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.543905973, 1.29062438))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.00460743904, 5.59212303, 2.22954721e-008, -5.9603785e-008, -1, -7.07253012e-009, -0.999985695, 5.96046377e-008, -0.999985695, 7.07252878e-009, -2.22957919e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29062438, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.30152702, 0.184371233, 0, 0.999991655, -7.43755219e-025, -1.35525272e-018, -7.43755022e-025, 0.999991655, -6.26994116e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.921874583, 0.294999897))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.368732214, 4.85466194, 2.2294989e-008, -5.96025203e-008, -1, -7.07257142e-009, -0.999991655, 5.96030176e-008, -0.999991655, 7.07257009e-009, -2.22951755e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.368737578, 4.67025185, 2.2295163e-008, -5.96029821e-008, -1, -7.07252479e-009, -0.999985099, 5.96038703e-008, -0.999985099, 7.07252346e-009, -2.2295497e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.36872232, 3.93280792, 2.22949676e-008, -5.96024705e-008, -1, -7.07252568e-009, -0.999985099, 5.96033587e-008, -0.999985099, 7.07252434e-009, -2.22953016e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.368722677, 4.11721611, 2.22950032e-008, -5.96025629e-008, -1, -7.07257186e-009, -0.999991655, 5.96030603e-008, -0.999991655, 7.07257053e-009, -2.22951897e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.368732214, 4.48592758, 2.22950742e-008, -5.96027476e-008, -1, -7.07257142e-009, -0.999991655, 5.9603245e-008, -0.999991655, 7.07257009e-009, -2.22952607e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.368749827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-006, -0.184342265, 5.37805176, -5.95993832e-008, -1.49017119e-008, -1, -3.55258387e-015, 0.999992847, -1.49018184e-008, 0.999992847, 2.66444441e-015, -5.95998095e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.921874642, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.368727446, 4.30156708, 2.22950387e-008, -5.96026553e-008, -1, -7.07257186e-009, -0.999991655, 5.96031526e-008, -0.999991655, 7.07257053e-009, -2.22952252e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.368721366, 3.7484436, 2.22949321e-008, -5.96023781e-008, -1, -7.07252612e-009, -0.999985099, 5.96032663e-008, -0.999985099, 7.07252479e-009, -2.22952661e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.17966843, -1.50203705e-005, 0, 0.999992847, -3.71996136e-025, 3.76586755e-013, -3.63978819e-025, 0.999992847, -1.00909862e-012, -3.76586755e-013, 1.00815276e-012, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.912655771, 0.737499714))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.188973784, 5.31552696, 2.22946976e-008, -5.96017244e-008, -1, -7.072535e-009, -0.999986887, 5.9602506e-008, -0.999986887, 7.07253367e-009, -2.22949907e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300531089, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81095505, 3.09944153e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754578e-025, 0.999990463, -9.41195906e-016, -1.78893358e-018, -3.10407082e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.54840088, 1.16825104e-005, -1.90734863e-006, 0.999992847, 3.73773774e-020, 2.85642083e-012, -1.22503937e-019, 0.999992847, 2.9801619e-008, -2.85640305e-012, -2.98014058e-008, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.99529266, -1.50203705e-005, 0, 0.999992847, -3.71996136e-025, 3.76586755e-013, -3.63978819e-025, 0.999992847, -1.00909862e-012, -3.76586755e-013, 1.00815276e-012, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.36404037, -1.50203705e-005, 0, 0.999992847, -3.71996136e-025, 3.76586755e-013, -3.63978819e-025, 0.999992847, -1.00909862e-012, -3.76586755e-013, 1.00815276e-012, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.553124726, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.9171524, 1.16825104e-005, -1.90734863e-006, 0.999992847, 2.14118859e-024, 2.87061802e-012, -4.27760783e-020, 0.999992847, 1.49003041e-008, -2.87060024e-012, -1.49001993e-008, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.368749827, 0.368749827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0921826363, 5.37806702, -2.24552696e-008, 1.23675636e-006, 1, 6.84464596e-010, -0.999992847, 1.23676523e-006, 0.999992847, 6.84492352e-010, 2.24554295e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.921874583, 1, 1))
Hitbox = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Dark stone grey", "Hitbox", Vector3.new(6.89062428, 0.968749881, 0.200000003))
Hitboxweld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.40151978, 0.207807541, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.921874583))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.368749827, 0.553124726, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.62808228, -7.15255737e-007, 0, 0.999990463, -1.85938657e-024, -4.49943902e-018, 3.71877412e-025, 0.999990463, -1.56450373e-015, 9.21571847e-019, 3.12900747e-016, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.876666665, 0.737499654))
attackone = function()
  attack = true
  so("http://roblox.com/asset/?id=161006221", Torso, 1, 1.1)
  for i = 0, 1, 0.2 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-40), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), 7 * i), 0.7)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 5, 10, math.random(5, 10), "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  so("http://roblox.com/asset/?id=234365573", Torso, 1, 1.2)
  for i = 0, 1, 0.07 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.1) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.2) * angles(math.rad(0), math.rad(50), math.rad(-80)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(-40)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(40)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
  end
  con:disconnect()
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.1) * angles(math.rad(0), math.rad(0), math.rad(130)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-130)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.2) * angles(math.rad(0), math.rad(50), math.rad(-80)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(-40)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(40)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, 0, "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  so("http://roblox.com/asset/?id=234365573", Torso, 1, 1.5)
  for i = 0, 1, 0.07 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.1) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-20)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.2) * angles(math.rad(0), math.rad(50), math.rad(-80)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(-40)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(40)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
  end
  con:disconnect()
  attack = false
end

AttackTrack = function()
  attack = true
  so("http://roblox.com/asset/?id=161006221", Torso, 1, 1)
  for i = 0, 1, 0.2 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-40), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), 7 * i), 0.7)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 1, 5, math.random(5, 10), "Charge", RootPart, 10, "Hit2", 1)
  end
)
  for i = 0, 1, 0.07 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.1) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.2) * angles(math.rad(0), math.rad(50), math.rad(-80)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(-40)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(40)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    Torso.Velocity = Head.CFrame.lookVector * 100
  end
  Humanoid.JumpPower = 70
  Humanoid.Jump = true
  RootPart.Velocity = RootPart.CFrame.lookVector * -100
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), 5 * i), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-50)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.3) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(30)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), 8 * i), 0.4)
  end
  con:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-40), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(80), math.rad(0), 10 * i), 0.4)
  end
  for i = 0, 1, 0.3 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.7) * angles(math.rad(130), math.rad(0), math.rad(-50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -0.7) * angles(math.rad(130), math.rad(0), math.rad(50)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(50)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.4)
  end
  so("http://roblox.com/asset/?id=234365573", Torso, 1, 0.4)
  Humanoid.JumpPower = 70
  Humanoid.Jump = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 10, 0, "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  RootPart.Velocity = RootPart.CFrame.lookVector * 50
  for i = 1, 2 do
    for i = 0, 1, 0.1 do
      wait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(6 * i, math.rad(0), math.rad(0)), 0.5)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.7) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -0.7) * angles(math.rad(30), math.rad(0), math.rad(50)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(50)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.4)
    end
  end
  con:disconnect()
  attack = false
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

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
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

Trap = function(brickcolor, cframe, delay)
  debounce = false
  local prt = CreatePart(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(2, 1, 2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(1, 0.1, 1))
  local con = prt.Touched:connect(function(hit)
    local ht = hit.Parent
    local hum1 = ht:FindFirstChild("Humanoid")
    local Tors = ht:FindFirstChild("Torso")
    if hum1 ~= nil and ht.Name ~= Character.Name and debounce == false then
      debounce = true
      Torso.CFrame = Tors.CFrame * cf(0, 0, 5)
      MagniDamage(Torso, 10, 10, 15, 0, "Knockdown")
      MagicBlock(BrickColor.new("White"), Torso.CFrame * angles(math.rad(0), math.rad(0), math.rad(0)), 5, 5, 5, 5, 5, 5, 0.07)
      prt.Parent = nil
    end
  end
)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 0.8, delay do
      swait()
      prt.Transparency = i
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

MagicBird = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=51226819", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
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

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  do
    for _,v in pairs(hit.Parent:children()) do
      if v:IsA("Humanoid") then
        h = v
      end
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("Debouncehit2") ~= nil and hit.Parent.Debouncehit2.Value == true then
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
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
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
        if Type == "Charge" then
          Charge = Charge + 1
          coroutine.resume(coroutine.create(function(Part, Hum)
    swait(30)
    for i = 1, 5 do
      swait(5)
      so("rbxasset://sounds\\unsheath.wav", hit, 1, 2)
      MagicCircle(BrickColor.new("White"), hit.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.2, 2, 0.1, 0.2, 8, 0.1, 0.05)
      newdam = math.random(1, 5)
      if blocked == false then
        Hum:TakeDamage(newdam)
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
      else
        Hum:TakeDamage(newdam / 2)
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Bright blue").Color)
      end
    end
  end
), hit, h)
        else
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
                          targ.Image = "rbxassetid://234376725"
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
                        debounce.Name = "Debouncehit2"
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
  local EffectPart = CreatePart("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
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

Trapper = function()
  attack = true
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * angles(math.rad(50), math.rad(0), math.rad(-70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(-20), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-60)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(30)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, 0, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(-50)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(0), -10), 0.4)
  end
  so("http://roblox.com/asset/?id=153092296", Torso, 1, 0.7)
  Trap(BrickColor.new("Black"), RootPart.CFrame + vt(0, -2.5, 0), 0.001)
  attack = false
end

Goodbye = function()
  attack = true
  so("http://roblox.com/asset/?id=161006221", Torso, 1, 0.8)
  for i = 0, 1, 0.1 do
    wait()
    MagicCircle(BrickColor.new("White"), RootPart.CFrame + vt(0, -3, 0), 13, 1, 13, 5, 0, 5, 0.07)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * angles(math.rad(50), math.rad(0), math.rad(-70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(-20), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-60)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(30)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, 0, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(-50)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(0), -10 * i), 0.4)
  end
  MagicCircle(BrickColor.new("White"), RootPart.CFrame + vt(0, -3, 0), 15, 15, 15, 5, 5, 5, 0.08)
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(-3, 0, -0.8) * angles(math.rad(50), math.rad(0), math.rad(-70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(-20), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(70)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-60)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(30)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, 0, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(-50)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(0), -10), 0.4)
  end
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 1
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 1
      end
      Head.face.Transparency = 1
    end
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 1
      end
    end
  end
))
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 0.7)
  MagicCircle(BrickColor.new("White"), RootPart.CFrame + vt(0, -3, 0), 25, 25, 25, 5, 5, 5, 0.06)
  for i = 0, 1, 0.05 do
    swait()
  end
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 1)
  MagicCircle(BrickColor.new("White"), RootPart.CFrame + vt(0, -3, 0), 15, 15, 15, 5, 5, 5, 0.08)
  MagniDamage(Torso, 10, 10, 15, 0, "Charge")
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 0
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 0
      end
      Head.face.Transparency = 0
    end
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 0
      end
    end
    Hitbox.Transparency = 1
    Handle.Transparency = 1
  end
))
  for i = 0, 1, 0.1 do
    wait()
    MagicCircle(BrickColor.new("White"), RootPart.CFrame + vt(0, -3, 0), 13, 1, 13, 5, 0, 5, 0.07)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * angles(math.rad(50), math.rad(0), math.rad(-70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(-20), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-60)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(30)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, 0, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(-50)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(0), -10 * i), 0.4)
  end
  attack = false
end

EagleStrike = function()
  attack = true
  so("http://roblox.com/asset/?id=161006221", Torso, 1, 1.1)
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * angles(math.rad(50), math.rad(0), math.rad(-70)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(-20), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-60)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(30)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, 0, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(-50)), 0.4)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(0), -10 * i), 0.4)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 10), "Knockdown", RootPart, 0.1, "Hit2", 1)
  end
)
  Humanoid.JumpPower = 80
  Humanoid.Jump = true
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.7) * angles(math.rad(130), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -0.7) * angles(math.rad(130), math.rad(0), math.rad(50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.5) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(30)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(30), -10 * i), 0.7)
  end
  so("http://roblox.com/asset/?id=191395766", Torso, 1, 1)
  MagicRing(BrickColor.new("White"), RootPart.CFrame * angles(math.rad(0), math.rad(0), math.rad(0)), 5, 5, 1, 5, 5, 0.5, 0.1)
  MagicBird(BrickColor.new("Bright red"), RootPart.CFrame * angles(math.rad(-90), math.rad(0), math.rad(0)), 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
  RootPart.Velocity = RootPart.CFrame.lookVector * 200
  for i = 1, 2 do
    for i = 0, 1, 0.1 do
      wait()
      MagniDamage(Torso, 10, 10, 15, 0, "Normal")
      MagicBlock(BrickColor.new("White"), Torso.CFrame * angles(math.rad(0), math.rad(0), math.rad(0)), 2, 2, 2, 3, 3, 3, 0.1)
      MagicBird(BrickColor.new("Bright red"), Torso.CFrame * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(120), math.rad(0), 10 * i), 0.65)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.7) * angles(math.rad(110), math.rad(0), math.rad(-50)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -0.7) * angles(math.rad(110), math.rad(0), math.rad(50)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(20)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.4)
    end
  end
  con:disconnect()
  attack = false
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
    else
      if attack == false and attacktype == 3 then
        attacktype = 1
        attackthree()
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == "z" and mana >= 15 and zenabled == true then
    zenabled = false
    mana = 100
    coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
    EagleStrike()
  else
    if attack == false and k == "x" and mana >= 20 and xenabled == true then
      xenabled = false
      mana = 100
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.005 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      AttackTrack()
    else
      if attack == false and k == "c" and mana >= 35 and cenabled == true then
        cenabled = false
        mana = 100
        coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.0025 do
      swait()
      fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    cenabled = true
    fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
        Trapper()
      else
        if attack == false and k == "v" and mana >= 45 and venabled == true then
          venabled = false
          mana = 100
          coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.005 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
          Goodbye()
        end
      end
    end
  end
end

Bin = Instance.new("HopperBin", Player.Backpack)
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
  while 1 do
    while 1 do
      pwait()
      sine = sine + change
      local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
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
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(5)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-5)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-20)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(3), math.rad(0), math.rad(20)), 0.3)
            FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(50)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.5) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(10)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(10)), 0.3)
              FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-55)), 0.3)
            end
          else
            if torvel.x < 1 or torvel.z < 1 and hit ~= nil then
              Anim = "Idle"
              if attack == false then
                change = 1
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0.1 + 0.1 * math.cos((sine) / 25), -0.1 + 0.1 * math.cos((sine) / 25)) * angles(math.rad(5), math.rad(0), math.rad(-40)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-4 * math.cos((sine) / 25)), math.rad(-4 * math.cos((sine) / 25)), math.rad(40)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40 - 1 * math.cos((sine) / 25)), math.rad(0), math.rad(20 - 1 * math.cos((sine) / 25))), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10 * math.cos((sine) / 25)), math.rad(0), math.rad(-10 + 1 * math.cos((sine) / 25))), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -0.9 - 0.1 * math.cos((sine) / 25), -0.3) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(-1 + 1 * math.cos((sine) / 25))), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.8 - 0.1 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(-2 - 1 * math.cos((sine) / 25))), 0.3)
                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-55 - 1 * math.cos((sine) / 25))), 0.3)
              end
            else
              if torvel.x < 2 or torvel.z < 2 and hit ~= nil then
                Anim = "Walk"
                if attack == false then
                  change = 3
                  if mana <= 5 then
                    Humanoid.WalkSpeed = 10
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(0 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-65 - 4 * math.cos((sine) / 9)), math.rad(0), math.rad(10)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -0.7) * angles(math.rad(110), math.rad(-10 - 4 * math.cos((sine) / 9)), math.rad(70)), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.2 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(20 * math.cos((sine) / 9))), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.2 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(20 * math.cos((sine) / 9))), 0.3)
                    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-5), math.rad(10), math.rad(-67 - 0.5 * math.cos((sine) / 9))), 0.3)
                  else
                    if mana <= 20 then
                      Humanoid.WalkSpeed = 16
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(5 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-65 - 4 * math.cos((sine) / 9)), math.rad(0), math.rad(10)), 0.3)
                      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -0.7) * angles(math.rad(110), math.rad(-10 - 4 * math.cos((sine) / 9)), math.rad(70)), 0.3)
                      RH.C0 = clerp(RH.C0, cf(1, -1 + 0.2 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(70 * math.cos((sine) / 9))), 0.3)
                      LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.2 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(70 * math.cos((sine) / 9))), 0.3)
                      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-5), math.rad(10), math.rad(-67 - 0.5 * math.cos((sine) / 9))), 0.3)
                    else
                      if mana <= 50 then
                        Humanoid.WalkSpeed = 20
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(10 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-65 - 4 * math.cos((sine) / 9)), math.rad(0), math.rad(10)), 0.3)
                        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -0.7) * angles(math.rad(110), math.rad(-10 - 4 * math.cos((sine) / 9)), math.rad(70)), 0.3)
                        RH.C0 = clerp(RH.C0, cf(1, -1 + 0.2 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(70 * math.cos((sine) / 9))), 0.3)
                        LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.2 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(70 * math.cos((sine) / 9))), 0.3)
                        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-5), math.rad(10), math.rad(-67 - 0.5 * math.cos((sine) / 9))), 0.3)
                      else
                        if mana <= 75 then
                          Humanoid.WalkSpeed = 25
                          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(20 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-15 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-65 - 4 * math.cos((sine) / 9)), math.rad(0), math.rad(10)), 0.3)
                          LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -0.7) * angles(math.rad(110), math.rad(-10 - 4 * math.cos((sine) / 9)), math.rad(70)), 0.3)
                          RH.C0 = clerp(RH.C0, cf(1, -1 + 0.2 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(70 * math.cos((sine) / 9))), 0.3)
                          LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.2 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(70 * math.cos((sine) / 9))), 0.3)
                          FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-5), math.rad(10), math.rad(-67 - 0.5 * math.cos((sine) / 9))), 0.3)
                        else
                          if mana <= 100 then
                            Humanoid.WalkSpeed = 30
                            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(30 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(0)), 0.3)
                            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-65 - 4 * math.cos((sine) / 9)), math.rad(0), math.rad(10)), 0.3)
                            LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -0.7) * angles(math.rad(110), math.rad(-10 - 4 * math.cos((sine) / 9)), math.rad(70)), 0.3)
                            RH.C0 = clerp(RH.C0, cf(1, -1 + 0.2 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(70 * math.cos((sine) / 9))), 0.3)
                            LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.2 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(70 * math.cos((sine) / 9))), 0.3)
                            FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-5), math.rad(10), math.rad(-67 - 0.5 * math.cos((sine) / 9))), 0.3)
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
      do
        fenbarmana2:TweenSize((UDim2.new(4 * mana / 100, 0, 0.2, 0)), nil, 1, 0.4, true)
        fenbarmana4.Text = "[Instinct]  <{[  " .. mana .. "  ]}> [Instinct]"
        if attack == false then
          if 100 <= mana then
            mana = 100
            -- DECOMPILER ERROR at PC6704: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC6704: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC6704: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC6704: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC6704: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
    end
    if mananum <= 8 then
      mananum = mananum + 1
      -- DECOMPILER ERROR at PC6710: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC6710: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  mananum = 100
  mana = 100
end

