Ply = game.Players.LocalPlayer
Char = Ply.Character
Tor = Char.Torso
He = Char.Head
Ne = Tor.Neck
Hu = Char.Humanoid
LA = Char["Left Arm"]
LL = Char["Left Leg"]
RA = Char["Right Arm"]
RL = Char["Right Leg"]
mana = 0
LS = Tor["Left Shoulder"]
RS = Tor["Right Shoulder"]
LH = Tor["Left Hip"]
it = Instance.new
RH = Tor["Right Hip"]
Combo = 1
Effects = {}
Outfit = true
NeckCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RP = Char.HumanoidRootPart
RJ = RP.RootJoint
RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
LHCF = CFrame.Angles(0, math.rad(-90), 0)
RHCF = CFrame.Angles(0, math.rad(90), 0)
attack = false
equipped = false
local Anim = "Idle"
cam = workspace.CurrentCamera
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model")({
  Parent = Char,
  Name = "WeaponModel"
})
RS.Parent = nil
LS.Parent = nil
RW = Create("Weld")({
  Name = "Right Shoulder",
  Part0 = Tor,
  C0 = CFrame.new(1.5, 0.5, 0),
  C1 = CFrame.new(0, 0.5, 0),
  Part1 = RA,
  Parent = Tor
})
LW = Create("Weld")({
  Name = "Left Shoulder",
  Part0 = Tor,
  C0 = CFrame.new(-1.5, 0.5, 0),
  C1 = CFrame.new(0, 0.5, 0),
  Part1 = LA,
  Parent = Tor
})
mouse = Ply:GetMouse()
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333333
if game.Players.LocalPlayer.FPSCH.Value == true then
  frame = 0.016666666666666666
else
  frame = 0.03333333333333333
end
tf = 0
allowframeloss = false
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
function pwait(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end
function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FF, Par, Mat, Ref, Tra, BC, Nam, Siz)
  local Part = Create("Part")({
    formFactor = FF,
    Parent = Par,
    Reflectance = Ref,
    Transparency = Tra,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BC)),
    Name = Nam,
    Size = Siz,
    Position = Tor.Position,
    Material = Mat
  })
  RemoveOutlines(Part)
  return Part
end
function CreateMesh(Ms, Par, MType, MId, OS, Sca)
  local Msh = Create(Ms)({
    Parent = Par,
    Offset = OS,
    Scale = Sca
  })
  if Ms == "SpecialMesh" then
    Msh.MeshType = MType
    Msh.MeshId = MId
  end
  return Msh
end
function CreateWeld(Par, PartA, PartB, CA, CB)
  local Weld = Create("Weld")({
    Parent = Par,
    Part0 = PartA,
    Part1 = PartB,
    C0 = CA,
    C1 = CB
  })
  return Weld
end
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
local fengui = it("GuiMain")
fengui.Parent = Ply.PlayerGui
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
fenbarmana2.BackgroundColor3 = Tor.Color
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
function Triangle(a, b, c)
  local edg1 = (c - a):Dot((b - a).unit)
  local edg2 = (a - b):Dot((c - b).unit)
  local edg3 = (b - c):Dot((a - c).unit)
  if edg1 <= (b - a).magnitude and edg1 >= 0 then
    a, b = a, b
  elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
    a, b, c = b, c, a
  elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
    a, b, c = c, a, b
  else
    assert(false, "unreachable")
  end
  local len1 = (c - a):Dot((b - a).unit)
  local len2 = (b - a).magnitude - len1
  local width = (a + (b - a).unit * len1 - c).magnitude
  local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
  local list = {}
  local Color = BrickColor.new("New Yeller")
  if len1 > 0.01 then
    local w1 = Create("WedgePart", m)({
      Material = "SmoothPlastic",
      FormFactor = "Custom",
      BrickColor = Color,
      Transparency = 0,
      Reflectance = 0,
      Material = "Neon",
      CanCollide = false,
      Anchored = true,
      Parent = workspace,
      Transparency = 0.3
    })
    game:GetService("Debris"):AddItem(w1, 5)
    RemoveOutlines(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Create("SpecialMesh")({
      Parent = w1,
      MeshType = "Wedge",
      Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    })
    w1:BreakJoints()
    table.insert(Effects, {
      w1,
      "Elec",
      0.05,
      0.03,
      0.03,
      0.03,
      sp
    })
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  if len2 > 0.01 then
    local w2 = Create("WedgePart", m)({
      Material = "SmoothPlastic",
      FormFactor = "Custom",
      BrickColor = Color,
      Transparency = 0,
      Reflectance = 0,
      Material = "Neon",
      CanCollide = false,
      Anchored = true,
      Parent = workspace,
      Transparency = 0.3
    })
    game:GetService("Debris"):AddItem(w2, 5)
    RemoveOutlines(w2)
    local sz = Vector3.new(0.2, width, len2)
    w2.Size = sz
    local sp = Create("SpecialMesh")({
      Parent = w2,
      MeshType = "Wedge",
      Scale = Vector3.new(0, 1, 1) * sz / w2.Size
    })
    w2:BreakJoints()
    table.insert(Effects, {
      w2,
      "Elec",
      0.05,
      0.03,
      0.03,
      0.03,
      sp
    })
    w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
    table.insert(list, w2)
  end
  return unpack(list)
end
function CreateSound(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Create("Sound")({
      Parent = par or workspace,
      Volume = vol,
      Pitch = pit or 1,
      SoundId = id
    })
    wait()
    sou:play()
    wait(6)
    sou:remove()
  end))
end
function clerp(a, b, t)
  return a:lerp(b, t)
end
function rayCast(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
  for i, v in pairs(hit:GetChildren()) do
    if v:IsA("Humanoid") and hit.Name ~= Char.Name then
      local find = v:FindFirstChild("Hitz")
      if not find then
        if v.Parent:findFirstChild("Head") then
          do
            local BillG = Create("BillboardGui")({
              Parent = v.Parent.Head,
              Size = UDim2.new(1, 0, 1, 0),
              Adornee = v.Parent.Head,
              StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3))
            })
            local TL = Create("TextLabel")({
              Parent = BillG,
              Size = UDim2.new(3, 3, 3, 3),
              BackgroundTransparency = 1,
              Text = tostring(damage) .. "-",
              TextColor3 = Color1.Color,
              TextStrokeColor3 = Color2.Color,
              TextStrokeTransparency = 0,
              TextXAlignment = Enum.TextXAlignment.Center,
              TextYAlignment = Enum.TextYAlignment.Center,
              FontSize = Enum.FontSize.Size18,
              Font = "ArialBold"
            })
            coroutine.resume(coroutine.create(function()
              wait(1)
              for i = 0, 1, 0.1 do
                wait(0.1)
                BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, 0.1, 0)
              end
              BillG:Destroy()
            end))
          end
        end
        HitHealth = v.Health
        v.Health = v.Health - damage
        if HitHealth ~= v.Health and HitHealth ~= 0 and 0 >= v.Health and h.Parent.Name ~= "Hologram" then
          print("gained spree")
          Ply:FindFirstChild("leaderstats").Spree.Value = Ply.leaderstats.Spree.Value + 1
        end
        local bool = Create("BoolValue")({Parent = v, Name = "Hitz"})
        if HSound ~= nil and HPitch ~= nil then
          CreateSound(HSound, Hitbox, 0.7, HPitch)
        end
        game:GetService("Debris"):AddItem(bool, cooldown)
      end
    end
  end
end
function MagnitudeDamage(Part, magni, mindam, maxdam)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Ply.Name then
          Damage(head.Parent, math.random(mindam, maxdam), 0, BrickColor.new("Really black"), BrickColor.new("New Yeller"), "rbxassetid://199149186", 1)
        end
      end
    end
  end
end
Handle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Handle", Vector3.new(0.320322663, 1.67788064, 0.320322633))
Handleweld = CreateWeld(m, Char["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.999474049, 0.0714797974, -0.0598907471, 2.08635171E-7, 0.999999642, 5.06639481E-7, 9.82107395E-7, 5.06639424E-7, -0.999999762, -1, 2.08635541E-7, -9.82107167E-7))
CreateMesh("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
FakeHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "FakeHandle", Vector3.new(0.320322663, 0.76267302, 0.320322633))
FakeHandleweld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316E-7, -0.0640640259, 0, 0.999999523, 2.27373675E-13, -1.56513745E-13, 2.27373675E-13, 0.999999523, -3.41060513E-13, -1.56513745E-13, -3.41060513E-13, 1))
CreateMesh("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Hitbox = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Institutional white", "Hitbox", Vector3.new(1.22027707, 5.03364182, 0.311295122))
Hitboxweld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.20093536E-4, -4.26976395, -9.15527344E-5, 0.999993086, 2.0861313E-7, 2.95250463E-10, -1.34110024E-7, 0.999999464, -6.10795155E-7, -2.95284353E-10, 6.10810616E-7, 0.999993324))
CreateMesh("BlockMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.539000034))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.22070313E-4, 1.21924973, 0.152131081, -3.86040366E-10, 8.94308414E-8, -0.999993324, -4.47037678E-8, -0.999999344, -8.94422101E-8, -0.999992967, 1.63915843E-7, 3.86170623E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.48999998, 0.980000138))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.23667526, -0.423137665, -9.15527344E-5, 0.258321792, -0.966057897, 1.15320972E-7, 0.966051817, 0.258323461, -4.03209441E-7, 3.59733548E-7, 2.15578552E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0833000019, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "New Yeller", "Part", Vector3.new(0.311295122, 3.96589971, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37329102E-4, 3.73589706, 0.533314228, 3.5017747E-6, -1.93722258E-7, -0.999993324, -4.47038246E-8, -0.999999344, 1.93708388E-7, -0.999992967, 1.6391931E-7, -3.50177561E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.144060016, 1, 0.48999998))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.457603842))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672E-5, -1.67745972, 0.532254219, -4.17616519E-7, -2.07146968E-6, 0.999993324, -9.98377686E-7, 0.999999285, 2.07146832E-6, -0.999992907, -1.14738555E-6, -4.17618963E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37329102E-4, 1.44800949, 0.609675884, 3.87875232E-10, 1.04333651E-7, -0.999993324, -4.47037678E-8, -0.999999344, -1.04344906E-7, -0.999992967, 1.63915843E-7, -3.87581994E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.979999959, 0.979999959))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.311295122, 0.320322663, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.457419395, 1.22070313E-4, -1.37178421, 0.999992847, 8.94037839E-8, 2.01299697E-13, 5.09102417E-13, 8.94365257E-8, -0.999993324, -1.3411011E-7, 0.999999285, 8.94478944E-8))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.980000138, 1, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Institutional white", "Part", Vector3.new(0.311295122, 0.76267302, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.22070313E-4, -6.10015106, 0.152092457, 3.50177106E-6, 3.57717454E-7, 0.999993324, -2.98022712E-7, 0.999999225, -3.57702561E-7, -0.999993086, -2.98023508E-7, 3.50177265E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.539000034, 1, 0.980000138))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.5, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.610138357, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.98364258E-4, -6.02388, 0.0757293701, 3.48687126E-6, 4.02472551E-7, 0.999993324, -2.98022712E-7, 0.999999225, -4.02457204E-7, -0.999993086, -2.98023508E-7, 3.4868724E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.588000059, 1, 0.48999998))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.915207684, 0.457603842))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.22070313E-4, -6.1764183, 0.228407383, 3.50177061E-6, 2.53364874E-7, 0.999993324, -2.98022741E-7, 0.999999225, -2.53350777E-7, -0.999993086, -2.98023508E-7, 3.50177265E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.48999998, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.610138535, 0.311295122, 0.457603782))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.457419395, 1.22070313E-4, -1.37178421, 0.999992847, 8.94037839E-8, 2.01299697E-13, 4.69571972E-13, 2.23559823E-7, -0.999993324, -1.34110138E-7, 0.999999285, 2.23570339E-7))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.979999959, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.610138357, 0.457603842, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.456438541, -1.37244415, 3.05175781E-5, -0.999999464, -1.042674E-7, -4.16111179E-5, -1.04307645E-7, 0.999999464, -9.59837166E-7, 4.16110997E-5, -9.59829663E-7, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.459129214, 0.436248958, 2.17361784))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "New Yeller", "Part", Vector3.new(0.311295122, 1.06774235, 0.610138357))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.22070313E-4, -6.25266266, 0.304620266, 3.50177197E-6, 2.53351118E-7, 0.999993324, -2.98022741E-7, 0.999999225, -2.53336339E-7, -0.999993086, -2.98023508E-7, 3.50177334E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.144060016, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.424539566, -1.38871384, -9.15527344E-5, 0.96578759, 0.259309262, -2.27494468E-8, -0.259307534, 0.965793788, -4.58008401E-7, -9.67946789E-8, 4.48255491E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.166600004, 0.979999959, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.24385071E-5, -1.14368057, -9.15527344E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.34110081E-7, 0.999999285, -8.92358685E-8, -3.87674892E-10, 8.92481467E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.979999959, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.457603842, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.609939575, -4.57763672E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.3411011E-7, 0.999999285, -1.48636445E-8, -3.87722465E-10, 1.48756953E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 1, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.999999523, 2.27373675E-13, -1.56513745E-13, 2.27373675E-13, 0.999999523, -3.41060513E-13, -1.56513745E-13, -3.41060513E-13, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.22070313E-4, 1.21924973, 0.152831078, -9.86952599E-13, 2.08606821E-7, 0.999993324, 2.98022769E-7, -0.999999225, 2.08594088E-7, 0.999993086, 2.98020097E-7, 6.90400319E-13))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.48999998, 0.980000138))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81209564, 0.00182151794, -0.0913543701, 4.06563195E-4, 0.999999523, -2.06946106E-6, 0.999999642, -4.06607898E-4, -1.196214E-5, -1.1962974E-5, -2.06459526E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.277613044, 0.219649822, 0.0854192749))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.41072845, -0.00551557541, -9.15527344E-5, 7.7485987E-7, -0.999999344, 1.19366177E-7, 0.999993086, 9.08967877E-7, -3.72535112E-7, 3.72534714E-7, 1.19379479E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.171499997, 0.342999965, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Institutional white", "Part", Vector3.new(0.610138357, 3.96589971, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.20093536E-4, -3.73590088, -9.15527344E-5, 0.999993086, 2.0861313E-7, 2.95250463E-10, -1.34110024E-7, 0.999999464, -6.10795155E-7, -2.95284353E-10, 6.10810616E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.539000034))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.23654175, -0.423635483, -9.15527344E-5, 0.258325994, 0.966056764, -1.42299825E-7, -0.966050863, 0.258327663, -4.10633703E-7, -3.59935655E-7, 2.43561431E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0833000019, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.425010681, -1.38858414, -9.15527344E-5, 0.965785801, -0.259315699, 2.35243647E-8, 0.25931409, 0.965792, -4.58000841E-7, 9.60470743E-8, 4.48448759E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.166600004, 0.979999959, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.5, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.610138357, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.83105469E-4, -6.02386475, 0.0767188072, -3.41193322E-6, 4.62101866E-7, -0.999993324, 4.4703711E-8, 0.999999344, 4.62110393E-7, 0.999992967, -1.63912489E-7, -3.41193504E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.588000059, 1, 0.48999998))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81209564, 0.00182151794, -0.0913543701, 4.06563195E-4, 0.999999523, -2.06946106E-6, 0.999999642, -4.06607898E-4, -1.196214E-5, -1.1962974E-5, -2.06459526E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.12812914, 0.219649822, 0.175414681))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Institutional white", "Part", Vector3.new(0.311295122, 0.76267302, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37329102E-4, -6.10015106, 0.152894497, -3.41193277E-6, 3.57729903E-7, -0.999993324, 4.4703711E-8, 0.999999344, 3.57739054E-7, 0.999992967, -1.63912489E-7, -3.41193413E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.539000034, 1, 0.980000138))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.915207684, 4.11843443, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.94208527E-4, -3.65963364, -1.22070313E-4, 0.999993086, 2.0861313E-7, 2.95605734E-10, -1.34110167E-7, 0.999999464, -1.49060497E-8, -2.9573563E-10, 1.49183279E-8, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.48999998))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.28746033E-5, -0.914936066, -4.57763672E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.3411011E-7, 0.999999285, -1.48636445E-8, -3.87722465E-10, 1.48756953E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 3.81336522, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.0374527E-4, -3.81218719, -9.15527344E-5, 0.999993086, 2.0861313E-7, 2.95932584E-10, -1.3411011E-7, 0.999999464, -2.3839732E-7, -2.96005193E-10, 2.38410735E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.980000138, 1, 0.58799994))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.457603961, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-6, 2.25067139E-4, -9.15527344E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.34110081E-7, 0.999999285, -4.46653985E-8, -3.87680721E-10, 4.4677563E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 1, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.23977661E-5, -0.304897308, -4.57763672E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.3411011E-7, 0.999999285, -1.48636445E-8, -3.87722465E-10, 1.48756953E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81209564, 0.00182342529, 0.091506958, 4.06563195E-4, 0.999999523, -2.06946106E-6, 0.999999642, -4.06607898E-4, -1.196214E-5, -1.1962974E-5, -2.06459526E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.600088, 0.155585289, 0.0854192749))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81209564, 0.00182342529, 0.091506958, 4.06563195E-4, 0.999999523, -2.06946106E-6, 0.999999642, -4.06607898E-4, -1.196214E-5, -1.1962974E-5, -2.06459526E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.600088, 0.0991474912, 0.151009142))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.457603842, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.610328674, -9.15527344E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.3411011E-7, 0.999999285, -2.97645784E-8, -3.87786858E-10, 2.97766292E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 1, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81209564, 0.00182151794, -0.0913543701, 4.06563195E-4, 0.999999523, -2.06946106E-6, 0.999999642, -4.06607898E-4, -1.196214E-5, -1.1962974E-5, -2.06459526E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.600088, 0.155585289, 0.0854192749))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "New Yeller", "Part", Vector3.new(0.311295122, 1.06774235, 0.610138357))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.22070313E-4, -6.25266266, 0.305475712, -3.53157384E-6, 2.53391647E-7, -0.999993324, 4.47037678E-8, 0.999999344, 2.53401481E-7, 0.999992967, -1.63912375E-7, -3.53157475E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.144060016, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.610138357, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.16825104E-4, -1.67740631, -4.57763672E-5, 0.999993086, 2.0861313E-7, 2.95605734E-10, -1.34110195E-7, 0.999999464, 2.08220342E-7, -2.95693636E-10, -2.08209428E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.49000001, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81209564, 0.00182342529, 0.091506958, 4.06563195E-4, 0.999999523, -2.06946106E-6, 0.999999642, -4.06607898E-4, -1.196214E-5, -1.1962974E-5, -2.06459526E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.277613044, 0.219649822, 0.0854192749))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81209564, 0.00182151794, -0.0913543701, 4.06563195E-4, 0.999999523, -2.06946106E-6, 0.999999642, -4.06607898E-4, -1.196214E-5, -1.1962974E-5, -2.06459526E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.600088, 0.0991474912, 0.151009142))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.610138357, 0.311295122, 0.457603782))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.457349777, 1.22070313E-4, -1.37178421, 0.999992847, 8.94037839E-8, -1.96604235E-13, 1.57148329E-14, 1.93753465E-7, -0.999993324, -1.34110138E-7, 0.999999285, 1.93764151E-7))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.979999959, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.610138357, 0.457603842, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.456629276, -1.37243652, 6.10351563E-5, -0.999999464, -1.042674E-7, -4.16111179E-5, -1.04307645E-7, 0.999999464, -9.59837166E-7, 4.16110997E-5, -9.59829663E-7, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.459129214, 0.436248958, 2.17361784))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "New Yeller", "Part", Vector3.new(0.311295122, 3.96589971, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.22070313E-4, 3.73587799, 0.534302235, -3.53157475E-6, -2.53369365E-7, 0.999993324, 2.98022826E-7, -0.999999225, -2.5337863E-7, 0.999993086, 2.9801663E-7, 3.53157589E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.144060016, 1, 0.48999998))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.915207684, 0.457603842))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.22070313E-4, -6.1764183, 0.229121208, -3.41193254E-6, 2.53392898E-7, -0.999993324, 4.47037678E-8, 0.999999344, 2.53402845E-7, 0.999992967, -1.63912489E-7, -3.4119339E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.48999998, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.04698944E-4, -1.82930374, -9.15527344E-5, 0.999993086, 2.0861313E-7, 2.95264674E-10, -1.34110081E-7, 0.999999464, -3.57568979E-7, -2.95355018E-10, 3.57583076E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.980000138, 0.48999998, 0.58799994))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.23977661E-5, 0.305324554, -9.15527344E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.3411011E-7, 0.999999285, -2.97645784E-8, -3.87786858E-10, 2.97766292E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.15527344E-5, 1.44799423, 0.610420704, 3.41184159E-6, -7.45392299E-8, 0.999993324, 2.98022826E-7, -0.999999225, -7.4551906E-8, 0.999993086, 2.98023451E-7, -3.41184318E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.979999959, 0.979999959))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81209564, 0.00182342529, 0.091506958, 4.06563195E-4, 0.999999523, -2.06946106E-6, 0.999999642, -4.06607898E-4, -1.196214E-5, -1.1962974E-5, -2.06459526E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.12812914, 0.219649822, 0.175414681))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.915207684, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.38759613E-4, -1.44802856, -1.22070313E-4, 0.999992847, 8.94037839E-8, 3.8724815E-10, -1.34110053E-7, 0.999999285, -1.93666892E-7, -3.87585686E-10, 1.9368008E-7, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.979999959, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.457603842))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.22070313E-4, -1.67734528, 0.532927036, -2.99408885E-6, 2.20594939E-6, -0.999993324, -6.10947552E-7, 0.999999166, 2.20594984E-6, 0.999993145, 6.85453131E-7, -2.99408862E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.915397644, -9.15527344E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.3411011E-7, 0.999999285, -2.97645784E-8, -3.87786858E-10, 2.97766292E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.48999998, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.311295122, 0.320322663, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.45767498, 1.22070313E-4, -1.37178421, 0.999992847, 8.94037839E-8, 2.01299697E-13, 4.17176927E-13, 7.45334887E-8, -0.999993324, -1.3411011E-7, 0.999999285, 7.45446869E-8))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.980000138, 1, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.14848328E-5, 1.06746292, -4.57763672E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.3411011E-7, 0.999999285, -1.48636445E-8, -3.87722465E-10, 1.48756953E-8, 0.999993324))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.48999998, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672E-5, 1.21999741, 0.228783607, 3.44213481E-6, 2.68377903E-7, 0.999993324, -2.98022741E-7, 0.999999225, -2.68363578E-7, -0.999993086, -2.98023451E-7, 3.44213686E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.48999998, 0.48999998))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.457603842, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.14848328E-5, 1.37253189, -4.57763672E-5, 0.999992847, 8.94037839E-8, 3.87475524E-10, -1.34110081E-7, 0.999999285, -7.44655608E-8, -3.8769582E-10, 7.44779527E-8, 0.999993324))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 1, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672E-5, 1.21999741, 0.228775501, -3.41191981E-6, 3.57804822E-7, -0.999993324, 4.4703711E-8, 0.999999344, 3.5781386E-7, 0.999992967, -1.63912489E-7, -3.41192117E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.48999998, 0.48999998))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.610138357, 0.457603842, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.15871429E-4, 1.37241745, 4.57763672E-5, -0.999999464, -1.042674E-7, -4.16111179E-5, -1.04307645E-7, 0.999999464, -9.59837166E-7, 4.16110997E-5, -9.59829663E-7, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.373709828, 0.364557743, 2.17361784))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.44883347, 0.228752613, -1.04306352E-7, 2.98211376E-8, -0.999993324, 1.3411011E-7, -0.999999285, -2.98328473E-8, -0.999992847, -8.94038408E-8, 1.04306622E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.979999959, 0.48999998))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.311295122, 0.320322663, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.8453598E-4, 7.62939453E-5, 1.37253189, 0.999992847, 8.94037839E-8, 2.58143116E-13, 4.50900385E-13, 3.726106E-7, -0.999993324, -1.34110195E-7, 0.999999285, 3.7262015E-7))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.980000138, 1, 0.9799999))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.44882584, 0.228737831, -6.13660078E-12, -8.94369236E-8, 0.999993324, 1.3411011E-7, -0.999999285, -8.94483492E-8, 0.999992847, 8.94037839E-8, 5.94248522E-12))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.979999959, 0.979999959, 0.48999998))
ShotgunHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "ShotgunHandle", Vector3.new(0.274405897, 0.205804482, 0.411608905))
ShotgunHandleweld = CreateWeld(m, Char["Left Arm"], ShotgunHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.935044765, -0.0157318115, 0.265125275, -2.65166643E-12, -0.999999523, -2.23517418E-7, 1, -2.65166556E-12, -6.50521303E-19, 5.41119453E-23, -2.23517389E-7, 0.999999642))
Barrel = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Barrel", Vector3.new(0.411608934, 0.200000003, 0.343007416))
Barrelweld = CreateWeld(m, ShotgunHandle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.54535675, -2.64179325, -2.28881836E-4, -7.04824706E-5, -1.86838183E-16, -0.999999464, 0.999999464, 2.65166535E-12, -7.04824706E-5, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("CylinderMesh", Barrel, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.360157818, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.205804482, 0.200000003, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.373851776, -2.6417737, -2.28881836E-4, -7.04824706E-5, -1.86838183E-16, -0.999999464, 0.999999464, 2.65166535E-12, -7.04824706E-5, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.360157818, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.36594534, -0.857486725, -2.74658203E-4, -0.999999642, -2.65166578E-12, 7.06910869E-5, -7.06910869E-5, -1.87391362E-16, -0.999999642, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.343007356, 0.343007445, 0.343007445))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.205804482, 0.200000003, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.648262024, -2.64179325, -2.28881836E-4, -7.04824706E-5, -1.86838183E-16, -0.999999464, 0.999999464, 2.65166535E-12, -7.04824706E-5, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.360157818, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.343007416, 2.05804467, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.377281189, -1.64534235, -2.28881836E-4, -7.04824706E-5, -1.86838183E-16, -0.999999464, 0.999999464, 2.65166535E-12, -7.04824706E-5, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.480210334, 0.686014831, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.651687622, -0.273382664, -1.98364258E-4, -7.04824706E-5, -1.86838183E-16, -0.999999464, 0.999999464, 2.65166535E-12, -7.04824706E-5, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.205804601, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.754508972, -2.16281223, -0.105438232, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.68601501, 1, 0.686014891))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.411603868, 0.200000003, 0.411603898))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.272898197, 0.205749512, 0.480178833, 0.999999642, 2.98028588E-8, -7.06910869E-5, -2.98028482E-8, 1, 2.10409446E-12, 7.06910869E-5, 1.07548546E-15, 0.999999642))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.343003303, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.205804601, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.754508972, -1.06519508, 0.100372314, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.68601501, 1, 0.686014891))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.411608875, 0.200000003, 0.274405926))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.272881031, 0.207458496, 0.480178833, 0.999999642, 2.98028588E-8, -7.06910869E-5, -2.98028482E-8, 1, 2.10409446E-12, 7.06910869E-5, 1.07562829E-15, 0.999999642))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.360157818, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.205804601, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.754508972, -1.06519508, -0.105438232, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.68601501, 1, 0.686014891))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.411608964, 0.205804601, 0.346437484))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.342899323, -1.06519222, -8.23974609E-4, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.205804601, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.754508972, -2.16281223, 0.100372314, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.68601501, 1, 0.686014891))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.346437484, 0.205804482))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.478748322, -0.00122070313, 0.102870941, 0.999999642, -1.08415606E-18, -7.06910869E-5, -8.67319759E-19, 1, -1.87299419E-16, 7.06910869E-5, 1.87391349E-16, 0.999999642))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.686014831, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.411608875, 0.205804482, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316E-7, 0, 0.171504974, 0.999999285, -1.51788294E-18, 0, -1.51788294E-18, 1, -5.77734993E-20, 0, -5.77734993E-20, 0.999999285))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.65212965, -0.85749054, -0.0690460205, -0.999999642, -2.65166578E-12, 7.06910869E-5, -7.06910869E-5, -1.87391362E-16, -0.999999642, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.343007356, 0.343007445, 0.343007445))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.343007416, 2.05804467, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.648254395, -1.64535713, -2.28881836E-4, -7.04824706E-5, -1.86838183E-16, -0.999999464, 0.999999464, 2.65166535E-12, -7.04824706E-5, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.686014771, 0.480210334, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.27342844, -0.445884705, -2.59399414E-4, -0.999999642, -2.65166578E-12, 7.06910869E-5, -7.06910869E-5, -1.87391362E-16, -0.999999642, 2.65166643E-12, -1, -5.41119453E-23))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.651693344, -0.85749054, 0.0681915283, -0.999999642, -2.65166578E-12, 7.06910869E-5, -7.06910869E-5, -1.87391362E-16, -0.999999642, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.343007356, 0.343007445, 0.343007445))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.891819119, 0.411608845, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.113838196, -0.423885345, 5.03540039E-4, -0.865529597, -2.29509619E-12, 0.50085628, -0.50085628, -1.32810386E-12, -0.865529597, 2.65166643E-12, -1, -5.41119453E-23))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.783638, 0.200000003, 0.205804422))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.50810814, -0.754581451, -1.37329102E-4, -0.999999642, -2.65166578E-12, 7.06910869E-5, -7.06910869E-5, -1.87391362E-16, -0.999999642, 2.65166643E-12, -1, -5.41138134E-23))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.68601495, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.411608875, 0.200000003, 0.274405926))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.273527622, -0.209014893, 0.480205536, 0.999999344, 2.98028588E-8, -1.41352371E-4, -2.98028411E-8, 1, 4.21351756E-12, 1.41352371E-4, 1.26303582E-15, 0.999999344))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.37730819, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.274405956, 0.891819477, 0.346437484))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.548706055, -1.61399889, -8.23974609E-4, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.411608934, 0.205804601, 0.346437484))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.548706055, -2.16281366, -8.23974609E-4, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.411602557, 0.200000003, 0.411602587))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.273536205, -0.205581665, 0.480205536, 0.999999344, 2.98028588E-8, -1.41352371E-4, -2.98028411E-8, 1, 4.21351756E-12, 1.41352371E-4, 1.26288293E-15, 0.999999344))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.3430022, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.411608934, 0.205804601, 0.346437484))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.548706055, -1.06519127, -8.23974609E-4, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 1.02902222, 0.205804482))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.229156494, -0.201507568, 0.480171204, -0.258818954, 0.965925455, -6.5301144E-8, -0.96592468, -0.258819073, -7.28488203E-9, -4.47033983E-8, 9.78950112E-8, 0.999998987))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 1.02902222, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.295913696, 0.0476303101, 0.119953156, -0.183012679, 0.965925515, 0.18301259, -0.683011949, -0.258819044, 0.683012009, 0.707105875, 1.14738882E-7, 0.707106292))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.30342817, 0.205804482, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.26771879, -0.171478271, -1.98364258E-4, -0.999999642, -2.65166578E-12, 7.06910869E-5, -7.06910869E-5, -1.87391362E-16, -0.999999642, 2.65166643E-12, -1, -5.41119453E-23))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 1.02902222, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.109359741, -0.655639648, 0.510620117, 0.183012411, 0.965925574, 0.183012441, -0.68301183, 0.258818775, -0.683012307, -0.707106233, 5.37700018E-8, 0.707106113))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.0517941117, 0.753450096, 0.148796618))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 1.02902222, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.297683716, 0.0471572876, 0.119953156, 0.183012515, 0.965925515, -0.183012411, -0.683012307, 0.258818865, 0.68301183, 0.707105637, 7.80294496E-9, 0.707106352))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.411608964, 0.205804601, 0.346437484))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.342903137, -2.16281414, -8.23974609E-4, 4.02331182E-7, 1.12467571E-18, -0.999999106, 0.99999702, 2.65165884E-12, 2.08615674E-7, 2.65166079E-12, -0.999997854, -5.41118318E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.343007386, 0.343007356, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0353784561, -0.651687622, 1.6784668E-4, -0.999999344, -2.65166491E-12, 7.00652381E-5, -7.00652381E-5, -1.85731826E-16, -0.999999344, 2.65166643E-12, -1, -5.4111939E-23))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.274405956, 0.205804482, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.478794575, -0.102890015, -1.98364258E-4, -0.999999642, -2.65166578E-12, 7.06910869E-5, -7.06910869E-5, -1.87391362E-16, -0.999999642, 2.65166643E-12, -1, -5.41119453E-23))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.82321763, 0.343007356, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0818824768, -0.459415436, -7.62939453E-5, -0.865718424, -2.29559687E-12, 0.500530124, -0.500530124, -1.32723899E-12, -0.865718424, 2.65166643E-12, -1, -5.41119453E-23))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 1.02902222, 0.200000003))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.10760498, -0.655174255, 0.510620117, -0.18301256, 0.965925455, -0.183012798, -0.683011591, -0.258819133, -0.683012605, -0.707106292, -2.35276794E-8, 0.707105815))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(0.200000003, 1.02902222, 0.205804482))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.230926514, -0.201982498, 0.480171204, 0.258818656, 0.965925574, 8.02022342E-8, -0.965924799, 0.258818835, -5.28825353E-7, -4.47034608E-7, 4.54816842E-8, 0.999999046))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.09762359, 0.343007356, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.10375023, -0.155986786, 0.00102233887, -0.999999166, -2.65155259E-12, 4.61965625E-4, -4.68551938E-4, 5.56010587E-14, -0.999994993, 2.65157514E-12, -0.999996066, -4.26325438E-14))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.617413342, 1.09762371, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.293060303, 1.10386992, 0.00102233887, -4.7101063E-4, 1.29604875E-14, -0.999999285, 0.999999285, 2.65161482E-12, -4.7101063E-4, 2.65160962E-12, -1, -1.42093589E-14))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.480210334, 0.823217809, 0.343007416))
Partweld = CreateWeld(m, ShotgunHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.594764709, 0.147701263, 0.00117492676, -0.499999762, -1.32583267E-12, -0.866024554, 0.866024554, 2.29640851E-12, -0.499999762, 2.65166643E-12, -1, -6.73411617E-23))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.343007326, 0.205804482, 0.343007416))
Wedgeweld = CreateWeld(m, ShotgunHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.6784668E-4, 0.171470642, 2.0906744, -1.553847E-12, -1, -5.96497784E-8, 7.06910869E-5, -5.96498282E-8, 0.999999642, -0.999999642, -2.65166578E-12, 7.06910869E-5))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.343007326, 0.274405897, 1.09762394))
Wedgeweld = CreateWeld(m, ShotgunHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00102233887, -0.153308868, -1.10388994, 2.34347741E-12, -0.999999285, -5.96529546E-8, 5.28991086E-6, -5.96529972E-8, 0.99999851, -0.999999583, -2.65160051E-12, 4.23192796E-6))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
local PE1 = Create("ParticleEmitter")({
  Parent = Hitbox,
  Color = ColorSequence.new(Color3.new(255, 255, 0), Color3.new(0, 0, 0)),
  Transparency = NumberSequence.new(0.5),
  Size = NumberSequence.new(0.3),
  Texture = "rbxassetid://263433152",
  Lifetime = NumberRange.new(1.8),
  Rate = 25,
  VelocitySpread = 180,
  Rotation = NumberRange.new(100),
  Speed = NumberRange.new(2),
  LightEmission = 0.5,
  LockedToPart = true
})
local PE1 = Create("ParticleEmitter")({
  Parent = Barrel,
  Color = ColorSequence.new(BrickColor.new("New Yeller").Color),
  Transparency = NumberSequence.new(0),
  Size = NumberSequence.new(0.5),
  Texture = "rbxassetid://257430870",
  Lifetime = NumberRange.new(0.1),
  Rate = 100,
  VelocitySpread = 180,
  Rotation = NumberRange.new(0),
  Speed = NumberRange.new(0),
  LightEmission = 0.6,
  LockedToPart = true,
  Enabled = false
})
local PE2 = PE1:Clone()
PE2.Size = NumberSequence.new(0.7)
PE2.LightEmission = 1
PE2.Texture = "rbxassetid://87729590"
local Lite = Create("PointLight")({
  Parent = Barrel,
  Color = BrickColor.new("New Yeller").Color,
  Shadows = true,
  Range = 10,
  Brightness = 0.5,
  Enabled = false
})
function FirstAttack()
  attack = true
  for i = 0, 1, 0.2 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(math.rad(170), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, -0.5) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(30), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-30)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  CreateSound("rbxassetid://154965962", Hitbox, 0.5, 1)
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(7, 11), 0.1, BrickColor.new("Really black"), BrickColor.new("New Yeller"), "rbxassetid://154965973", 1)
  end)
  for i = 0, 1, 0.1 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.3, -0.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-40)), 0.5)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-40), math.rad(0)), 0.5)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(35)), 0.4)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  attack = false
  HitDeb:disconnect()
end
function SecondAttack()
  attack = true
  for i = 0, 1, 0.2 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(130), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-80), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-80), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  CreateSound("rbxassetid://154965962", Hitbox, 0.5, 1.1)
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(7, 13), 0.1, BrickColor.new("Really black"), BrickColor.new("New Yeller"), "rbxassetid://154965973", 1)
  end)
  for i = 0, 1, 0.1 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(130)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(-70)), 0.4)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  attack = false
  HitDeb:disconnect()
end
function ThirdAttack()
  attack = true
  for i = 0, 1, 0.2 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(120), math.rad(-50), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0.7, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  CreateSound("rbxassetid://154965962", Hitbox, 0.5, 1)
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(7, 13), 0.1, BrickColor.new("Really black"), BrickColor.new("New Yeller"), "rbxassetid://154965973", 1)
  end)
  for i = 0, 1, 0.1 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -0.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  attack = false
  HitDeb:disconnect()
end
function FourthAttack()
  attack = true
  for i = 0, 1, 0.2 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(130), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -0.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  CreateSound("rbxassetid://154965962", Hitbox, 0.5, 0.9)
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(7, 13), 0.1, BrickColor.new("Really black"), BrickColor.new("New Yeller"), "rbxassetid://154965973", 1)
  end)
  for i = 0, 1, 0.1 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(50)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-80)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  attack = false
  HitDeb:disconnect()
end
function ContAttack()
  attack = true
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(7, 13), 0.1, BrickColor.new("Really black"), BrickColor.new("New Yeller"), "rbxassetid://154965973", 1)
  end)
  for i = 1, 4 do
    for i = 0, 1, 0.3 do
      wait()
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(80)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(120), math.rad(-50), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-70)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0.7, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), 0.3)
      ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
    end
    CreateSound("rbxassetid://154965962", Hitbox, 0.5, 1)
    for i = 0, 1, 0.2 do
      wait()
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -0.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
    end
    for i = 0, 1, 0.3 do
      wait()
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(130), math.rad(100)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -0.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
    end
    CreateSound("rbxassetid://154965962", Hitbox, 0.5, 0.9)
    for i = 0, 1, 0.2 do
      wait()
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(80)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(70)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-80)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
    end
  end
  attack = false
  HitDeb:disconnect()
end
function Spin()
  attack = true
  for i = 0, 1, 0.1 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(70)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(5), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(120), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-50), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -0.4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-50), math.rad(10)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(10, 13), 0, BrickColor.new("Really black"), BrickColor.new("New Yeller"), "rbxassetid://154965973", 1)
  end)
  for i = 1, 2 do
    CreateSound("rbxassetid://154965962", Hitbox, 0.5, 0.95)
    for i = 0, 1, 0.2 do
      wait()
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6), math.rad(0), -6 * i), 0.43)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-50), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -0.4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-50), math.rad(10)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
      ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
    end
  end
  for i = 0, 1, 0.1 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-70)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(-120), math.rad(-100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(-5)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  for i = 1, 2 do
    CreateSound("rbxassetid://154965962", Hitbox, 0.5, 1)
    for i = 0, 1, 0.2 do
      wait()
      RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6), math.rad(0), 6 * i), 0.43)
      Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-50)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.3)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(10)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
      ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
    end
  end
  attack = false
  HitDeb:disconnect()
end
function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, Char, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  Effects[#Effects + 1] = {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3
  }
end
function Shoot(asd, spread1, spread2)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
  local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2 + spread)
  num = 30
  coroutine.resume(coroutine.create(function(Spreaded)
    repeat
      wait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, RP.Parent)
      local TheHit = mouse.Hit.p
      local mag = (MainPos - pos).magnitude
      CylinderEffect(BrickColor.new("New Yeller"), CFrame.new((MainPos + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 3, mag * 5, 3, 0.5, 0, 1.5, 0.1)
      MainPos = MainPos + MouseLook.lookVector * 10
      num = num - 1
      if hit ~= nil then
        num = 0
        local ref = CreatePart(3, workspace, "Neon", 0, 1, BrickColor.new("New Yeller"), "Reference", Vector3.new())
        ref.Anchored = true
        ref.CFrame = CFrame.new(pos)
        MagnitudeDamage(ref, 5, 1, 3)
        game:GetService("Debris"):AddItem(ref, 1)
      end
    until 0 >= num
  end))
end
gyro = Instance.new("BodyGyro")
gyro.Parent = nil
gyro.P = 10000000
gyro.D = 1000
gyro.MaxTorque = Vector3.new(0, 10000000, 0)
local shoot = false
local gun = false
function Aim()
  attack = true
  gun = true
  gyro.Parent = RP
  for i = 0, 1, 0.2 do
    swait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), 0.5)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0.7, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), 0.3)
  end
  local offset
  while gun == true do
    wait()
    local gunpos = Vector3.new(mouse.Hit.p.x, He.Position.Y, mouse.Hit.p.z)
    offset = (Tor.Position.y - mouse.Hit.p.y) / 60
    local mag = (Tor.Position - mouse.Hit.p).magnitude / 80
    offset = offset / mag
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.fromEulerAnglesXYZ(0, 0, 1.57), 0.3)
    LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), 0.5)
  end
  if shoot == true then
    PE1.Enabled, PE2.Enabled = true, true
    Lite.Enabled = true
    for i = 1, 2 do
      for i = 1, 5 do
        Shoot(Barrel, 1, 3)
      end
      CreateSound("rbxassetid://212032538", Barrel, 0.5, 0.8)
      CreateSound("rbxassetid://168413145", Barrel, 0.7, 1)
      Shoot(Barrel, 0, 0)
      for i = 0, 1, 0.2 do
        swait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(85)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-50), math.rad(-90)), 0.5)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      end
      for i = 0, 1, 0.1 do
        swait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(85)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), 0.5)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      end
    end
    Lite.Enabled = false
    PE1.Enabled, PE2.Enabled = false, false
  end
  gyro.Parent = nil
  shoot = false
  attack = false
end
function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {
    prt,
    "Block1",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function GroundWave()
  attack = true
  for i = 0, 1, 0.1 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(50)), 0.3)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  Hu.WalkSpeed = 0
  coroutine.resume(coroutine.create(function()
    local CF = RP.CFrame
    local numb = -5
    local BaseCF = CF
    for i = 1, 10 do
      BaseCF = CF * CFrame.new(0, -2, numb)
      local baseprt = CreatePart(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Part1", Vector3.new(1, 1, 1))
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
            if mag <= 7 and c[i].Name ~= Ply.Name then
              MagnitudeDamage(head, 10, 5, 13)
            end
          end
        end
      end
      CreateSound("http://www.roblox.com/asset/?id=278596476", baseprt, 0.7, 0.7)
      CreateSound("http://www.roblox.com/asset/?id=199145264", baseprt, 0.6, 1.3)
      CreateSound("http://www.roblox.com/asset/?id=168413145", baseprt, 0.7, 1.2)
      BlockEffect(BrickColor.new("Really black"), BaseCF, 0.5, 0.5, 0.5, 2, 2, 2, 0.05)
      WaveEffect(BrickColor.new("New Yeller"), BaseCF, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.05)
      numb = numb - 3
      wait(0.15)
    end
  end))
  for i = 0, 1, 0.02 do
    wait()
    RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(-10), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(10), math.rad(90)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(5), math.rad(-30), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, -0.3) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(50)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(190)), 0.5)
    ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
  end
  attack = false
  Hu.WalkSpeed = 16
end
function ob1u()
end
function ob1d()
  if attack == false and Combo == 1 then
    Combo = 2
    FirstAttack()
  elseif attack == false and Combo == 2 then
    Combo = 3
    SecondAttack()
  elseif attack == false and Combo == 3 then
    Combo = 4
    ThirdAttack()
  elseif attack == false and Combo == 4 then
    Combo = 1
    FourthAttack()
  end
  if gun == true then
    shoot = true
    gun = false
  end
end
function key(k)
  k = k:lower()
  if k == "z" and attack == false and mana >= 10 then
    mana = mana - 10
    ContAttack()
  elseif k == "x" and attack == false and mana >= 15 then
    mana = mana - 15
    Spin()
  elseif attack == false and k == "f" and mana >= 0 then
    Aim()
  elseif attack == false and k == "c" and mana >= 30 then
    mana = mana - 30
    GroundWave()
  end
end
Bin = script.Parent
function ds(mouse)
end
function s(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
  mouse.KeyDown:connect(key)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
local sine = 0
local change = 1
local val = 0
local donum = 0
local mananum = 0
while true do
  pwait()
  for _, c in pairs(Char:children()) do
    if c.className == "Part" and c.Name ~= "Head" and c.Name ~= "HumanoidRootPart" then
      c.LocalTransparencyModifier = 0
    end
  end
  for _, c in pairs(m:children()) do
    if c.className == "Part" and c.Name ~= "Handle" and c.Name ~= "FakeHandle" then
      c.LocalTransparencyModifier = 0
    end
  end
  gyro.CFrame = CFrame.new(Vector3.new(), (mouse.Hit.p - RP.CFrame.p).unit * 100)
  sine = sine + change
  local torvel = (RP.Velocity * Vector3.new(1, 0, 1)).magnitude
  local velderp = RP.Velocity.y
  hitfloor, posfloor = rayCast(RP.Position, CFrame.new(RP.Position, RP.Position - Vector3.new(0, 1, 0)).lookVector, 4, Char)
  if equipped == true or equipped == false then
    if 1 < RP.Velocity.y and hitfloor == nil then
      Anim = "Jump"
      if attack == false then
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, -0.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(30)), 0.3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0.7, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), 0.3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.5)
      end
    elseif -1 > RP.Velocity.y and hitfloor == nil then
      Anim = "Fall"
      if attack == false then
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(150), math.rad(0), math.rad(10)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.7, -0.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(10)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(10)), 0.3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0.7, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), 0.3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.5)
      end
    elseif torvel < 1 and hitfloor ~= nil then
      Anim = "Idle"
      if attack == false then
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(30)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(30), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.2) * LHCF * CFrame.Angles(math.rad(-3), math.rad(30), math.rad(0)), 0.3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0.7, 0.6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), 0.3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.3)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.5)
      end
    elseif torvel > 2 and hitfloor ~= nil then
      Anim = "Walk"
      if attack == false then
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.4, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 0.3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.5)
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
          if 1 >= Thing[1].Transparency then
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Cylinder" then
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Blood" then
              Mesh = Thing[7]
              Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Elec" then
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Disappear" then
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            end
          else
            Part.Parent = nil
            table.remove(Effects, e)
          end
        end
      end
    end
  end
  fenbarmana2:TweenSize(UDim2.new(4 * mana / 100, 0, 0.2, 0), nil, 1, 0.4, true)
  fenbarmana4.Text = "[Purity]  <{[  " .. mana .. "  ]}> [Purity]"
  if mana >= 100 then
    mana = 100
  elseif mananum <= 8 then
    mananum = mananum + 1
  else
    mananum = 0
    mana = mana + 1
  end
end
