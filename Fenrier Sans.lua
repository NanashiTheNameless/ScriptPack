  Player = game:GetService("Players").LocalPlayer
  Character = Player.Character
  PlayerGui = Player.PlayerGui
  Backpack = Player.Backpack
  Torso = Character.Torso
  Head = Character.Head
  Humanoid = Character.Humanoid
  Face = Head.face
  mainShirt = nil
  mainPants = nil
  mainBColors = nil
  if Character:findFirstChild("Shirt") ~= nil then
    mainShirt = Character.Shirt
  end
  if Character:findFirstChild("Pants") ~= nil then
    mainPants = Character.Pants
  end
  if Character:findFirstChild("Body Colors") ~= nil then
    mainBColors = Character["Body Colors"]
  end
  for _, c in pairs(Character:children()) do
    if c.className == "Accessory" then
      c.Parent = nil
    end
  end
  LeftArm = Character["Left Arm"]
  LeftLeg = Character["Left Leg"]
  RightArm = Character["Right Arm"]
  RightLeg = Character["Right Leg"]
  LS = Torso["Left Shoulder"]
  LH = Torso["Left Hip"]
  RS = Torso["Right Shoulder"]
  RH = Torso["Right Hip"]
  Neck = Torso.Neck
  it = Instance.new
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
  attackdebounce = false
  MMouse = nil
  combo = 0
  local hitfloor, posfloor
  local idle = 0
  local Anim = "Idle"
  local Effects = {}
  local Weapon = {}
  local Welds = {}
  local Bones = {}
  local stance = false
  local triangparent = workspace
  local prechit = false
  local MovePart
  local Fly = false
  local prop = Instance.new("RocketPropulsion")
  local move4atk = false
  local sapdef = false
  local cansound = false
  local decreaseatk = 0
  local decreasedef = 0
  local decreasemvmt = 0
  local move1 = [[
(Z)
Teleport]]
  local move2 = [[
(X)
Blue Heart]]
  local move3 = [[
(C)
Boneyard]]
  local move4 = [[
(V)
Havin' a Bad Time]]
  local cooldowns = {}
  local cooldown1 = 0
  table.insert(cooldowns, cooldown1)
  local cooldown2 = 0
  table.insert(cooldowns, cooldown2)
  local cooldown3 = 0
  table.insert(cooldowns, cooldown3)
  local cooldown4 = 0
  table.insert(cooldowns, cooldown4)
  local cooldownsadd = {}
  local cooldownadd1 = 0.3
  table.insert(cooldownsadd, cooldownadd1)
  local cooldownadd2 = 0.3
  table.insert(cooldownsadd, cooldownadd2)
  local cooldownadd3 = 0.3
  table.insert(cooldownsadd, cooldownadd3)
  local cooldownadd4 = 0.3
  table.insert(cooldownsadd, cooldownadd4)
  local cooldownmax = 100
  player = nil
  RSH, LSH = nil, nil
  RW, LW = Instance.new("Motor"), Instance.new("Motor")
  RW.Name = "Right Shoulder"
  LW.Name = "Left Shoulder"
  LH = Torso["Left Hip"]
  RH = Torso["Right Hip"]
  TorsoColor = Torso.BrickColor
  TorsoRed = TorsoColor.Color.r
  TorsoGreen = TorsoColor.Color.g
  TorsoBlue = TorsoColor.Color.b
  sansShirt = it("Shirt")
  sansShirt.Name = "Shirt"
  sansShirt.ShirtTemplate = "http://www.roblox.com/asset/?id=302011210"
  sansPants = it("Pants")
  sansPants.Name = "Pants"
  sansPants.PantsTemplate = "http://www.roblox.com/asset/?id=286482064"
  sansBodyColors = it("BodyColors")
  sansBodyColors.HeadColor = BrickColor.new("Really black")
  sansBodyColors.LeftArmColor = BrickColor.new("Institutional white")
  sansBodyColors.LeftLegColor = BrickColor.new("Institutional white")
  sansBodyColors.RightArmColor = BrickColor.new("Institutional white")
  sansBodyColors.RightLegColor = BrickColor.new("Institutional white")
  sansBodyColors.TorsoColor = BrickColor.new("Institutional white")
  local Animate = Character.Animate
  local animation = Instance.new("Animation")
  animation.AnimationId = "http://www.roblox.com/Asset?ID=180435571"
  local animTrack = Humanoid:LoadAnimation(animation)
  local canjump = true
  function removeControl()
    canjump = false
  end
  function resumeControl()
    canjump = true
  end
  Player.Character.Humanoid.Changed:connect(function()
    if canjump == false then
      Player.Character.Humanoid.Jump = false
    end
  end)
  function swait(num)
    if num == 0 or num == nil then
      wait()
    else
      for i = 0, num do
        wait()
      end
    end
  end
  if Character:findFirstChild("Sans", true) ~= nil then
    Character:findFirstChild("Sans", true).Parent = nil
  end
  if Player.PlayerGui:findFirstChild("WeaponGUI", true) ~= nil then
    Player.PlayerGui:findFirstChild("WeaponGUI", true).Parent = nil
  end
  if Character:findFirstChild("Stats", true) ~= nil then
    Character:findFirstChild("Stats", true).Parent = nil
  end
  local Stats = Instance.new("BoolValue")
  Stats.Name = "Stats"
  Stats.Parent = Character
  local Atk = Instance.new("NumberValue")
  Atk.Name = "Damage"
  Atk.Parent = Stats
  Atk.Value = 1
  local Def = Instance.new("NumberValue")
  Def.Name = "Defense"
  Def.Parent = Stats
  Def.Value = 1
  local Mvmt = Instance.new("NumberValue")
  Mvmt.Name = "Movement"
  Mvmt.Parent = Stats
  Mvmt.Value = 1
  local Block = Instance.new("BoolValue")
  Block.Name = "Block"
  Block.Parent = Stats
  Block.Value = false
  local Stun = Instance.new("NumberValue")
  Stun.Name = "Stun"
  Stun.Parent = Stats
  Stun.Value = 0
  local Stunned = Instance.new("BoolValue")
  Stunned.Name = "Stunned"
  Stunned.Parent = Stats
  Stunned.Value = false
  local Stagger = Instance.new("BoolValue")
  Stagger.Name = "Stagger"
  Stagger.Parent = Stats
  Stagger.Value = false
  local StaggerHit = Instance.new("BoolValue")
  StaggerHit.Name = "StaggerHit"
  StaggerHit.Parent = Stats
  StaggerHit.Value = false
  local RecentEnemy = Instance.new("ObjectValue")
  RecentEnemy.Name = "RecentEnemy"
  RecentEnemy.Parent = Stats
  RecentEnemy.Value = nil
  local Decrease = Instance.new("BoolValue")
  Decrease.Name = "Decrease"
  Decrease.Parent = Stats
  Decrease.Value = false
  local mana = Instance.new("NumberValue")
  mana.Name = "Mana"
  mana.Parent = Stats
  mana.Value = 0
  local passive1 = Instance.new("NumberValue", Decrease)
  passive1.Name = "DecreaseAtk"
  passive1.Value = 0.4
  local passive2 = Instance.new("NumberValue", Decrease)
  passive2.Name = "DecreaseDef"
  passive2.Value = 0.8
  local passive3 = Instance.new("NumberValue", Decrease)
  passive3.Name = "DecreaseMvmt"
  passive3.Value = 0.6
  local sans = it("BoolValue", Stats)
  sans.Name = "Sans"
  sans.Value = true
  function NoOutline(Part)
    Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
  end
  function part(formfactor, parent, reflectance, transparency, brickcolor, name, size)
    local fp = it("Part")
    fp.formFactor = formfactor
    fp.Parent = parent
    fp.Reflectance = reflectance
    fp.Transparency = transparency
    fp.CanCollide = false
    fp.Locked = true
    fp.BrickColor = brickcolor
    fp.Name = name
    fp.Size = size
    fp.Position = Torso.Position
    NoOutline(fp)
    fp.Material = "SmoothPlastic"
    fp:BreakJoints()
    return fp
  end
  function mesh(Mesh, part, meshtype, meshid, offset, scale)
    local mesh = it(Mesh)
    mesh.Parent = part
    if Mesh == "SpecialMesh" then
      mesh.MeshType = meshtype
      if meshid ~= "nil" then
        mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
      end
    end
    mesh.Offset = offset
    mesh.Scale = scale
    return mesh
  end
  function weld(parent, part0, part1, c0)
    local weld = it("Motor")
    weld.Parent = parent
    weld.Part0 = part0
    weld.Part1 = part1
    weld.C0 = c0
    return weld
  end
  function bone(bParent, bp1l, bp1w, bp2s, bhwy, bside)
    bpart1 = part(3, bParent, 0, 0, BrickColor.new("Institutional white"), "Bone", vt())
    bmsh1 = mesh("CylinderMesh", bpart1, "nil", "nil", vt(0, 0, 0), vt(bp1w, bp1l, bp1w))
    for d = 1, bside do
      nan = -1
      if d == 2 then
        nan = 1
      end
      for i = 1, 2 do
        nen = 1
        if i == 2 then
          nen = -1
        elseif i == 3 then
          nen = 0
        end
        da = bp2s / 1.5
        da2 = bp2s
        if i == 3 then
          da2 = bp1w
          da = da2
        end
        bpart2 = part(3, bpart1, 0, 0, BrickColor.new("Institutional white"), "Bone2", vt())
        bmsh2 = mesh("SpecialMesh", bpart2, "Sphere", "nil", vt(0, 0, 0), vt(da2, da2, da))
        bwld2 = weld(bpart2, bpart2, bpart1, cf(bp1l / 100 * nen, bp1l / 10 * nan, 0))
      end
    end
    bhitbox = part(3, bpart1, 0, 1, BrickColor.new("Black"), "BoneHitbox", vt())
    bh = mesh("BlockMesh", bhitbox, "nil", "nil", vt(0, 0, 0), vt(5, 5, 5))
    bhwld = weld(bhitbox, bhitbox, bpart1, cf(0, bhwy, 0))
    return bpart1, bhitbox
  end
  function GBlaster(gParent, gp1s1, gp1s2, gp1s3)
    gprt1 = part(3, gParent, 0, 0, BrickColor.new("Institutional white"), "Gaster Blaster", vt())
    gmsh1 = mesh("SpecialMesh", gprt1, "FileMesh", "14028428", vt(0, 0, 0), vt(gp1s1, gp1s2, gp1s3))
    gprt2 = part(3, gprt1, 0, 0, BrickColor.new("Institutional white"), "GBPart 2", vt())
    gmsh2 = mesh("SpecialMesh", gprt2, "FileMesh", "14028428", vt(0, 0, 0), vt(gp1s1, gp1s2 / 5, gp1s3))
    gbwld2 = weld(gprt2, gprt2, gprt1, euler(0, 0, 3.14) * cf(0, gp1s2, 0))
    return gprt1
  end
  function gui(GuiType, parent, text, backtrans, backcol, pos, size)
    local gui = it(GuiType)
    gui.Parent = parent
    gui.Text = text
    gui.BackgroundTransparency = backtrans
    gui.BackgroundColor3 = backcol
    gui.SizeConstraint = "RelativeXY"
    gui.TextXAlignment = "Center"
    gui.TextYAlignment = "Center"
    gui.Position = pos
    gui.Size = size
    gui.Font = "SourceSans"
    gui.FontSize = "Size14"
    gui.TextWrapped = false
    gui.TextStrokeTransparency = 0
    gui.TextColor = BrickColor.new("White")
    return gui
  end
  local Color1 = Torso.BrickColor
  local fengui = it("GuiMain")
  fengui.Parent = Player.PlayerGui
  fengui.Name = "WeaponGUI"
  local fenframe = it("Frame")
  fenframe.Parent = fengui
  fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe.BackgroundTransparency = 1
  fenframe.BorderColor3 = Color3.new(17, 17, 17)
  fenframe.Size = UDim2.new(0.1, 0, 0.1, 0)
  fenframe.Position = UDim2.new(0.95, 0, 0.7, 0)
  local fenframe2 = it("Frame")
  fenframe2.Parent = fengui
  fenframe2.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe2.BackgroundTransparency = 1
  fenframe2.BorderColor3 = Color3.new(17, 17, 17)
  fenframe2.Size = UDim2.new(0.2, 0, 0.1, 0)
  fenframe2.Position = UDim2.new(0.4, 0, 0.85, 0)
  local fenframe3 = it("Frame")
  fenframe3.Parent = fengui
  fenframe3.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe3.BackgroundTransparency = 1
  fenframe3.BorderColor3 = Color3.new(17, 17, 17)
  fenframe3.Size = UDim2.new(0.2, 0, 0.2, 0)
  fenframe3.Position = UDim2.new(0.8, 0, 0.8, 0)
  fenframe3.Name = "MoveFrame"
  local fenframe4 = it("Frame")
  fenframe4.Parent = fengui
  fenframe4.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe4.BackgroundTransparency = 1
  fenframe4.BorderColor3 = Color3.new(17, 17, 17)
  fenframe4.Size = UDim2.new(0.1, 0, 0.1, 0)
  fenframe4.Position = UDim2.new(0, 0, 0.7, 0)
  local pressedf = false
  local fenframe5 = it("Frame")
  fenframe5.Parent = fengui
  fenframe5.Parent = nil
  fenframe5.BackgroundColor3 = Color3.new(0, 0, 0)
  fenframe5.BackgroundTransparency = 1
  fenframe5.BorderColor3 = Color3.new(0, 0, 0)
  fenframe5.Size = UDim2.new(1, 0, 1, 0)
  fenframe5.Position = UDim2.new(0, 0, 0, 0)
  fenframe5.ZIndex = 2
  local tellbar = gui("TextLabel", fenframe5, "Press 'F' to equip your weapon.", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
  tellbar.Font = "Arial"
  tellbar.TextScaled = true
  tellbar.TextTransparency = 1
  tellbar.TextStrokeTransparency = 1
  tellbar.ZIndex = 2
  local fnumb = 0
  local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
  local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new("White").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
  local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
  local fenbardamage = gui("TextLabel", fenframe2, "Damage", 0.55, Color3.new(0.6078431372549019, 0, 0), UDim2.new(-0.23, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbardef = gui("TextLabel", fenframe2, "Defense", 0.55, Color3.new(0, 0, 0.6078431372549019), UDim2.new(-0.46, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbarmove = gui("TextLabel", fenframe2, "Walkspeed", 0.55, Color3.new(0, 0.6078431372549019, 0), UDim2.new(1.03, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbarhp1 = gui("TextLabel", fenframe2, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.46, 0, 1, 0), UDim2.new(1.92, 0, 0.4, 0))
  local fenbarhp2 = gui("TextLabel", fenbarhp1, "", 0, Color3.new(1, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarhp3 = gui("TextLabel", fenbarhp1, "(100)", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
  local fenbarstun1 = gui("TextLabel", fenframe4, "", 0, Color3.new(0, 0, 0), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
  local fenbarstun2 = gui("TextLabel", fenframe4, "", 0, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
  local fenbarstun3 = gui("TextLabel", fenframe4, "Stun(" .. Stun.Value .. ")", 1, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
  local fenbarmove1 = gui("TextButton", fenframe3, move1, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove1.ZIndex = 2
  local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new("Black").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove2.ZIndex = 2
  local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new("Black").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove3.ZIndex = 2
  local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new("Black").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove4.ZIndex = 2
  local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new("Black").Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local modelzorz = Instance.new("Model")
  modelzorz.Parent = Character
  modelzorz.Name = "Sans"
  local hprt1 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Head Part01", vt())
  local hprt2 = part(3, modelzorz, 0, 0, BrickColor.new("Institutional white"), "Head Part02", vt())
  local hprt3 = part(3, modelzorz, 0, 1, BrickColor.new("Institutional white"), "Head Part03", vt())
  local hprt4 = part(3, modelzorz, 0, 1, BrickColor.new("Institutional white"), "Head Part04", vt())
  local hprt5 = part(3, modelzorz, 1, 0, BrickColor.new("Pink"), "Head Part05", vt())
  hprt5.Material = "Neon"
  hmsh1 = mesh("SpecialMesh", hprt1, "Head", "nil", vt(0, 0, 0), vt(6.25, 6.25, 6.25))
  hmsh2 = mesh("SpecialMesh", hprt2, "FileMesh", "4770583", vt(0, 0, 0), vt(3.2, 3.2, 3.2))
  hmsh3 = mesh("SpecialMesh", hprt3, "Sphere", "nil", vt(0, 0, 0), vt(1, 1, 1))
  hmsh4 = mesh("SpecialMesh", hprt4, "Sphere", "nil", vt(0, 0, 0), vt(1, 1, 1))
  hmsh5 = mesh("SpecialMesh", hprt5, "Sphere", "nil", vt(0, 0, 0), vt(1.5, 1.5, 1.5))
  local hwld1 = weld(hprt1, hprt1, Head, cf(0, 0, 0))
  local hwld2 = weld(hprt1, hprt2, hprt1, cf(0, -0.2, 0))
  local hwld3 = weld(hprt1, hprt3, hprt2, euler(0, 0, 0) * cf(0.25, -0.05, 0.47))
  local hwld4 = weld(hprt1, hprt4, hprt2, euler(0, 0, 0) * cf(-0.25, -0.05, 0.47))
  local hwld5 = weld(hprt1, hprt5, hprt2, euler(0, 0, 0) * cf(0.25, -0.05, 0.47))
  local nr = NumberRange.new
  local ns = NumberSequence.new
  local cs = ColorSequence.new
  local parti = it("ParticleEmitter")
  parti.Color = cs(BrickColor.new("White").Color, BrickColor.new("White").Color)
  parti.LightEmission = 1
  parti.Texture = "rbxasset://textures/particles/sparkles_main.dds"
  sizeseq = ns({
    NumberSequenceKeypoint.new(0, 2),
    NumberSequenceKeypoint.new(1, 0)
  })
  transseq = ns({
    NumberSequenceKeypoint.new(0, 0.8),
    NumberSequenceKeypoint.new(1, 1)
  })
  parti.Transparency = transseq
  parti.Size = sizeseq
  parti.Acceleration = vt(0, 0, 0)
  parti.Lifetime = nr(0.5, 0.5)
  parti.Rate = 60
  parti.Rotation = nr(0, 360)
  parti.RotSpeed = nr(-100, 100)
  parti.Speed = nr(0)
  parti.VelocitySpread = 0
  parti.Parent = hprt5
  parti.Enabled = true
  parti.LockedToPart = true
  parti.ZOffset = 1
  for _, c in pairs(modelzorz:children()) do
    table.insert(Weapon, c)
  end
  for _, c in pairs(hprt1:children()) do
    if c.className == "Motor" then
      table.insert(Welds, c)
    end
  end
  local hitbox = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Hitbox2", vt())
  hitbox.Anchored = false
  local hbwld = weld(hitbox, hitbox, RootPart, euler(0, 0, 0) * cf(0, 0, 0))
  local hitbox2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt(1, 1, 1))
  hitbox2.Anchored = true
  local hitboxCF = cf(0, 0, 0)
  hboxpos = Instance.new("BodyPosition", nil)
  hboxpos.P = 2000
  hboxpos.D = 100
  hboxpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  function hitboxweld()
    hbwld.Parent = modelzorz
    hbwld.Part0 = hitbox
    hbwld.Part1 = prt6
  end
  if script.Parent.className ~= "HopperBin" then
    Tool = Instance.new("HopperBin")
    Tool.Parent = Backpack
    Tool.Name = ""
    script.Parent = Tool
  end
  Bin = script.Parent
  if Bin.Name == "Calvar" then
    Bin.Name = ""
  end
  local bodvel = Instance.new("BodyVelocity")
  local bg = Instance.new("BodyGyro")
  function so(id, par, vol, pit)
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
  function so2(id, par, vol, pit)
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
  function clerp(a, b, t)
    local qa = {
      QuaternionFromCFrame(a)
    }
    local qb = {
      QuaternionFromCFrame(b)
    }
    local ax, ay, az = a.x, a.y, a.z
    local bx, by, bz = b.x, b.y, b.z
    local _t = 1 - t
    return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
  end
  function QuaternionFromCFrame(cf)
    local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
    local trace = m00 + m11 + m22
    if trace > 0 then
      local s = math.sqrt(1 + trace)
      local recip = 0.5 / s
      return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
    else
      local i = 0
      if m00 < m11 then
        i = 1
      end
      if m22 > (i == 0 and m00 or m11) then
        i = 2
      end
      if i == 0 then
        local s = math.sqrt(m00 - m11 - m22 + 1)
        local recip = 0.5 / s
        return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
      elseif i == 1 then
        local s = math.sqrt(m11 - m22 - m00 + 1)
        local recip = 0.5 / s
        return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
      elseif i == 2 then
        local s = math.sqrt(m22 - m00 - m11 + 1)
        local recip = 0.5 / s
        return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
      end
    end
  end
  function QuaternionToCFrame(px, py, pz, x, y, z, w)
    local xs, ys, zs = x + x, y + y, z + z
    local wx, wy, wz = w * xs, w * ys, w * zs
    local xx = x * xs
    local xy = x * ys
    local xz = x * zs
    local yy = y * ys
    local yz = y * zs
    local zz = z * zs
    return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
  end
  function QuaternionSlerp(a, b, t)
    local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
    local startInterp, finishInterp
    if cosTheta >= 1.0E-4 then
      if 1 - cosTheta > 1.0E-4 then
        local theta = math.acos(cosTheta)
        local invSinTheta = 1 / math.sin(theta)
        startInterp = math.sin((1 - t) * theta) * invSinTheta
        finishInterp = math.sin(t * theta) * invSinTheta
      else
        startInterp = 1 - t
        finishInterp = t
      end
    elseif 1 + cosTheta > 1.0E-4 then
      local theta = math.acos(-cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((t - 1) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      startInterp = t - 1
      finishInterp = t
    end
    return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
  end
  function turntoSans()
    if Face ~= nil then
      Face.Transparency = 1
    end
    if mainShirt ~= nil then
      mainShirt.Parent = nil
    end
    if mainPants ~= nil then
      mainPants.Parent = nil
    end
    if mainBColors ~= nil then
      mainBColors.Parent = nil
    end
    sansShirt.Parent = Character
    sansPants.Parent = Character
    sansBodyColors.Parent = Character
    for _, c in pairs(modelzorz:children()) do
      if c.className == "Part" then
        c.Transparency = 0
      end
    end
    for _, c in pairs(Character:children()) do
      Head.Transparency = 1
      if c.className == "Hat" then
        c.Handle.Transparency = 1
      end
    end
  end
  function turnNormal()
    if Face ~= nil then
      Face.Transparency = 0
    end
    if mainShirt ~= nil then
      mainShirt.Parent = Character
    end
    if mainPants ~= nil then
      mainPants.Parent = Character
    end
    if mainBColors ~= nil then
      mainBColors.Parent = Character
    end
    sansShirt.Parent = nil
    sansPants.Parent = nil
    sansBodyColors.Parent = nil
    for _, c in pairs(modelzorz:children()) do
      if c.className == "Part" then
        c.Transparency = 1
      end
    end
    for _, c in pairs(Character:children()) do
      Head.Transparency = 0
      if c.className == "Hat" then
        c.Handle.Transparency = 0
      end
    end
  end
  function normalEyes()
    hprt3.Transparency = 0
    hprt4.Transparency = 0
    hprt5.Transparency = 1
  end
  function glowingEye()
    hprt3.Transparency = 1
    hprt4.Transparency = 1
    hprt5.Transparency = 0
  end
  function noEyes()
    hprt3.Transparency = 1
    hprt4.Transparency = 1
    hprt5.Transparency = 1
  end
  turntoSans()
  hprt3.Transparency = 0
  hprt4.Transparency = 0
  hprt5.Transparency = 1
  function hideanim()
    equipped = false
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, RHC0, 0.4)
      LH.C0 = clerp(LH.C0, LHC0, 0.4)
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 1)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 1)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 1)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 1)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 1)
    RH.C0 = clerp(RH.C0, RHC0, 1)
    LH.C0 = clerp(LH.C0, LHC0, 1)
  end
  function equipanim()
    equipped = true
  end
  function Clone(duration)
    for _, v in pairs(Torso.Parent:children()) do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        local c = part(3, workspace, 0, 0.4, BrickColor.new("White"), "Effect", v.Size)
        c.Anchored = true
        c.CFrame = v.CFrame
        game:GetService("Debris"):AddItem(c, 5)
        if v.Name == "Head" then
          cmsh = mesh("SpecialMesh", c, "Head", "nil", vt(0, 0, 0), v.Mesh.Scale)
        end
        table.insert(Effects, {
          c,
          "Disappear",
          duration
        })
      end
    end
    for _, v in pairs(modelzorz:children()) do
      if v.className == "Part" and v.Name ~= "Hitbox" and v.Name ~= "Hitbox2" and v.Name ~= "Head Part03" and v.Name ~= "Head Part04" and v.Name ~= "Head Part05" then
        n = v:clone()
        for _, b in pairs(n:children()) do
          if b.className == "Motor" then
            b.Parent = nil
          end
        end
        n.archivable = true
        n.Anchored = true
        n.CanCollide = false
        n.Name = "Effect"
        n.BrickColor = BrickColor.new("White")
        n.Parent = workspace
        n.CFrame = v.CFrame
        n.Transparency = 0.4
        n:BreakJoints()
        table.insert(Effects, {
          n,
          "Disappear",
          duration
        })
      end
    end
  end
  function StaggerAnim()
    glowingEye()
    attack = true
    local canfloor, telepos, oldpos
    local dnum = 5
    repeat
      dnum = dnum - 1
      CF = cf(RootPart.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
      tpos = RootPart.Position + vt(math.random(-5000, 5000) / 100, 20, math.random(-5000, 5000) / 100)
      hitfloor3, posfloor3 = rayCast(tpos, CFrame.new(tpos, tpos - Vector3.new(0, 1, 0)).lookVector, 400, Character)
      if hitfloor3 ~= nil then
        canfloor = true
        telepos = cf(posfloor3) * cf(0, 3, 0)
      end
    until canfloor ~= nil or dnum < 0
    Clone(0.01)
    if dnum >= 0 then
      oldpos = RootPart.Position
      RootPart.CFrame = telepos
      pos4 = vt(oldpos.X, RootPart.Position.Y, oldpos.Z)
      RootPart.CFrame = cf(RootPart.Position, pos4)
    else
      oldpos = RootPart.Position
      RootPart.CFrame = cf(RootPart.Position) * cf(0, 10, 0)
    end
    for _, c in pairs(workspace:children()) do
      if c.Name == "Effect" and c.className == "Model" and c:findFirstChild("Head") ~= nil then
        local targ = c.Head.Position - oldpos
        local mag = targ.magnitude
        if mag <= 10 then
          c.Parent = nil
        end
      end
    end
    Neck.C0 = necko * euler(0.3, 0, 0) * euler(0, 0, 0)
    RootJoint.C0 = RootCF * cf(0, 0, -0.1) * euler(-0.05, 0, 0)
    RW.C0 = cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4)
    RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
    LW.C0 = cf(-1.1, 0.45, 0.3) * euler(-0.2, 0, 0.4)
    LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
    RH.C0 = cf(1, -0.9, -0.05) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, -0.05)
    LH.C0 = cf(-1, -0.9, -0.05) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0.05)
    doanim = math.random(1, 2)
    if doanim == 1 then
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0) * euler(0, 0, -0.2), 0.6)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.6)
        RW.C0 = clerp(RW.C0, cf(1.2, 0.4, 0.1) * euler(0, 0, 1.8) * euler(0.5, 0, 0) * euler(0, 3.14, 0), 0.6)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
        LW.C0 = clerp(LW.C0, cf(-1.2, 0.4, 0.1) * euler(0, 0, -1.8) * euler(0.5, 0, 0) * euler(0, 3.14, 0), 0.6)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.6)
        RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.05) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, 0), 0.6)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.05) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0), 0.6)
      end
      normalEyes()
    elseif doanim == 2 then
      for i = 1, 2 do
        if i == 2 then
        end
        for i = 0, 2, 0.2 do
          swait()
          Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, 0) * euler(0, 0, 0), 0.15)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(-0.05, 0, 0), 0.4)
          if i <= 1 then
            RW.C0 = clerp(RW.C0, cf(1, 0.65, 0.3) * euler(-0.2, 0, -0.5), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1, 0.65, 0.3) * euler(-0.2, 0, 0.5), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          else
            RW.C0 = clerp(RW.C0, cf(1, 0.45, 0.3) * euler(-0.2, 0, -0.5), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1, 0.45, 0.3) * euler(-0.2, 0, 0.5), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          end
          RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.05) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, -0.05), 0.4)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.05) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0.05), 0.4)
        end
      end
      normalEyes()
    end
    attack = false
  end
  function StaggerHitt()
  end
  function StunAnim()
  end
  function attackone()
    attack = true
    cansound = true
    AtkBones = {}
    atktype = math.random(1, 2)
    if atktype == 1 then
      CF = RootPart.CFrame * cf(0, 0, -18)
      refe = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      refe.Anchored = true
      refe.CFrame = CF
      game:GetService("Debris"):AddItem(refe, 5)
      so("306247739", refe, 1, 1)
      for i = -12, 12, 12 do
        refe.CFrame = CF * euler(0, 1.57, 0) * cf(0, 0, -8 - i)
        for d = -16, 16, 8 do
          ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref.Anchored = true
          ref.CFrame = refe.CFrame * cf(d, 0, 8)
          game:GetService("Debris"):AddItem(ref, 5)
          bhitfloor, bposfloor = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
          local bone1, bhb1 = bone(workspace, 30, 3, 5, -1, 1)
          bone1.CFrame = cf(bposfloor) * cf(0, -2, 0) * euler(0, math.random(-50, 50), 0)
          bpos = Instance.new("BodyPosition")
          bpos.P = 8000
          bpos.D = 800
          bpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
          bpos.Parent = bone1
          bpos.position = bposfloor + vt(0, -2, 0)
          table.insert(AtkBones, {
            bone1,
            bhb1,
            bpos,
            bposfloor
          })
          ref.Parent = nil
        end
      end
    elseif atktype == 2 then
      CF = RootPart.CFrame * cf(0, 0, -15)
      refe = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      refe.Anchored = true
      refe.CFrame = CF
      game:GetService("Debris"):AddItem(refe, 5)
      so("306247739", refe, 1, 1)
      dul = math.random(-50, 50)
      for i = 0.785, 2.355, 1.57 do
        refe.CFrame = CF * euler(0, dul + i, 0)
        for d = -21, 21, 7 do
          ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref.Anchored = true
          ref.CFrame = refe.CFrame * cf(0, 0, d)
          game:GetService("Debris"):AddItem(ref, 5)
          bhitfloor, bposfloor = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
          local bone1, bhb1 = bone(workspace, 30, 3, 5, -1, 1)
          bone1.CFrame = cf(bposfloor) * cf(0, -2, 0) * euler(0, math.random(-50, 50), 0)
          bpos = Instance.new("BodyPosition")
          bpos.P = 8000
          bpos.D = 800
          bpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
          bpos.Parent = bone1
          bpos.position = bposfloor + vt(0, -2, 0)
          table.insert(AtkBones, {
            bone1,
            bhb1,
            bpos,
            bposfloor
          })
          ref.Parent = nil
        end
      end
    end
    for i = 0, 1, 0.3 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(-0.05, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.3, 0.4, 0.1) * euler(0.4, 0, 0.1) * euler(0, -1.57, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.05) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, -0.05), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.05) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0.05), 0.5)
      if Stagger.Value == true then
        break
      end
    end
    CF = RootPart.CFrame * cf(0, 0, -18)
    refe = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    refe.Anchored = true
    refe.CFrame = CF
    game:GetService("Debris"):AddItem(refe, 5)
    so("306247749", refe, 1, 1)
    for i = 0, 2, 0.1 do
      swait()
      for i = 1, #AtkBones do
        MagniDamage(AtkBones[i][2], 2, 1, 1, 0, "Normal", AtkBones[i][2], 0.01, 1, math.random(2, 4), nil, nil, true)
        AtkBones[i][3].position = AtkBones[i][4] + vt(0, 2, 0)
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(-0.05, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.6, 0.05) * euler(2.5, 0, 0) * euler(0, -1.57, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.05) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, -0.05), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -1, -0.05) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0.05), 0.5)
      if Stagger.Value == true then
        break
      end
    end
    for i = 1, #AtkBones do
      AtkBones[i][1].Parent = nil
    end
    for i = 1, #AtkBones do
      table.remove(AtkBones, 1)
    end
    cansound = false
    attack = false
  end
  function attacktwo()
    attack = true
    cansound = true
    local btprt = part(3, modelzorz, 1, 1, BrickColor.new("White"), "Bone TorsPart", vt())
    local btwld1 = weld(btprt, btprt, Torso, cf(0, -2, 2))
    so("306247739", btprt, 1, 1)
    AtkBones = {}
    na = 0
    for i = 0.628, 6.28, 0.628 do
      swait()
      na = na + 0.4
      btwld1.C0 = euler(0, 0, na) * cf(0, -4, -2)
      local bone1, bhb1 = bone(modelzorz, 20, 3, 5, -1, 2)
      local bwld1 = weld(bone1, bone1, btprt, euler(0, 0, 0) * cf(0, -4, 0) * euler(0, 0, i))
      randnum = math.random(-1000, 1000) / 100
      ran = math.random(0, 500) / 100
      table.insert(AtkBones, {
        bone1,
        bhb1,
        bwld1,
        i,
        randnum,
        ran
      })
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0.1, -0.1) * euler(-0.05, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.1, 0.5, 0.4) * euler(1.4, 0, 0.1) * euler(0, -1.57, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.15) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, -0.05), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.15) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0.05), 0.4)
      if Stagger.Value == true then
        break
      end
    end
    so("306247749", btprt, 1, 1)
    for i = 0, 1.1, 0.1 do
      swait()
      na = na + 0.4
      for i = 1, #AtkBones do
        MagniDamage(AtkBones[i][2], 4, 1, 1, 0, "Normal", AtkBones[i][2], 0.01, 1, math.random(2, 4), nil, nil, true)
        if i <= 0.7 then
          btwld1.C0 = clerp(btwld1.C0, euler(0, 0, na) * cf(0, -2, 5), 0.05)
          AtkBones[i][3].C0 = clerp(AtkBones[i][3].C0, euler(1.57, 0, 0) * cf(0, -3, AtkBones[i][5]) * euler(0, 0, AtkBones[i][4]), 0.3)
        else
          btwld1.C0 = clerp(btwld1.C0, euler(0, 0, na) * cf(0, -2, 60), 0.02)
          AtkBones[i][3].C0 = clerp(AtkBones[i][3].C0, euler(1.57, 0, 0) * cf(0, -4 - AtkBones[i][6], AtkBones[i][5]) * euler(0, 0, AtkBones[i][4]), 0.2)
        end
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.1, -0.1) * euler(-0.05, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.1) * euler(1.57, 0, 0) * euler(0, -1.57, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.05) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, -0.05), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.05) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0.05), 0.4)
      if Stagger.Value == true then
        break
      end
    end
    for i = 1, #AtkBones do
      AtkBones[i][1].Parent = nil
    end
    for i = 1, #AtkBones do
      table.remove(AtkBones, 1)
    end
    btprt.Parent = nil
    cansound = false
    attack = false
  end
  function attackthree()
    attack = true
    attack = false
  end
  function attackfour()
    attack = true
    attack = false
  end
  function do1()
    if attack == true then
      return
    end
    if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
      return
    end
    attack = true
    d = MMouse.Hit.p + vt(0, 2, 0)
    if d ~= nil then
      thitfloor, tposfloor = rayCast(d, CFrame.new(d, d - Vector3.new(0, 1, 0)).lookVector, 300, Character)
      if thitfloor ~= nil then
        oldpos = RootPart.Position
        game:GetService("Lighting").OutdoorAmbient = Color3.new(0, 0, 0)
        game:GetService("Lighting").Brightness = 0
        ltime = game:GetService("Lighting").TimeOfDay
        game:GetService("Lighting").TimeOfDay = 0
        ski = it("Sky", game:GetService("Lighting"))
        ski.StarCount = 0
        swait(10)
        RootPart.CFrame = cf(tposfloor) * cf(0, 3, 0)
        pos4 = vt(oldpos.X, RootPart.Position.Y, oldpos.Z)
        RootPart.CFrame = cf(RootPart.Position, pos4)
        game:GetService("Lighting").OutdoorAmbient = Color3.new(0.4980392156862745, 0.4980392156862745, 0.4980392156862745)
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").TimeOfDay = ltime
        ski.Parent = nil
      end
    end
    attack = false
  end
  function do2()
    if attack == true then
      return
    end
    if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
      return
    end
    attack = true
    attack = false
  end
  function do3()
    if attack == true then
      return
    end
    if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
      return
    end
    attack = true
    attack = false
  end
  function do4()
    if attack == true then
      return
    end
    if Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
      return
    end
    attack = true
    cooldowns[4] = 0
    attack = false
  end
  function DecreaseStat(Model, Stat, Amount, Duration)
    if Model:findFirstChild("Stats") ~= nil and Model.Stats[Stat] ~= nil then
      Model.Stats[Stat].Value = Model.Stats[Stat].Value - Amount
      d = Instance.new("NumberValue", Model.Stats.Decrease)
      dur = Instance.new("NumberValue", d)
      dur.Name = "Duration"
      dur.Value = Duration
      game:GetService("Debris"):AddItem(d, 20)
      if Stat == "Damage" then
        d.Name = "DecreaseAtk"
      elseif Stat == "Defense" then
        d.Name = "DecreaseDef"
      elseif Stat == "Movement" then
        d.Name = "DecreaseMvmt"
      end
      if Model:findFirstChild("Torso") ~= nil then
        display = ""
        if Stat == "Damage" then
          if Amount > 0 then
            display = "-Damage"
          else
            display = "+Damage"
          end
        elseif Stat == "Defense" then
          if Amount > 0 then
            display = "-Defense"
          else
            display = "+Defense"
          end
        elseif Stat == "Movement" then
          if Amount > 0 then
            display = "-Movement"
          else
            display = "+Movement"
          end
        end
        showDamage(Model, display, "Debuff")
      end
      d.Value = Amount
    end
  end
  function GetDist(Part1, Part2, magni)
    local targ = Part1.Position - Part2.Position
    local mag = targ.magnitude
    if magni >= mag then
      return true
    else
      return false
    end
  end
  function MagniDamage(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
    for _, c in pairs(workspace:children()) do
      local hum = c:findFirstChild("Humanoid")
      if hum ~= nil then
        local head
        for _, d in pairs(c:children()) do
          if d.className == "Model" and ranged ~= true then
            head = d:findFirstChild("Hitbox")
            if d.Parent == Character then
              break
            end
            if head ~= nil then
              local targ = head.Position - Part.Position
              local mag = targ.magnitude
              if magni >= mag and c.Name ~= Player.Name then
                ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
                ref.Anchored = true
                ref.CFrame = cf(head.Position)
                game:GetService("Debris"):AddItem(ref, 1)
                hitnum = math.random(1, 5)
                if hitnum == 1 then
                  so("199148971", ref, 1, 1)
                elseif hitnum == 2 then
                  so("199149025", ref, 1, 1)
                elseif hitnum == 3 then
                  so("199149072", ref, 1, 1)
                elseif hitnum == 4 then
                  so("199149109", ref, 1, 1)
                elseif hitnum == 5 then
                  so("199149119", ref, 1, 1)
                end
                StaggerHit.Value = true
              end
            end
          end
          if d.className == "Part" then
            head = d
            if head ~= nil then
              local targ = head.Position - Part.Position
              local mag = targ.magnitude
              if magni >= mag and c.Name ~= Player.Name then
                if stun == nil then
                  stun = math.random(5, 10)
                end
                local Rang
                if Ranged == false then
                  Rang = true
                end
                local stag
                if shbash == true then
                  stag = true
                end
                Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
              end
            end
          end
        end
      end
    end
  end
  function rayCast(Pos, Dir, Max, Ignore)
    return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
  end
  function findNearestTorso(pos)
    local list = game.Workspace:children()
    local torso
    local dist = 1000
    local temp, human, temp2
    for x = 1, #list do
      temp2 = list[x]
      if temp2.className == "Model" and temp2.Name ~= Character.Name then
        temp = temp2:findFirstChild("Torso")
        human = temp2:findFirstChild("Humanoid")
        if temp ~= nil and human ~= nil and human.Health > 0 and dist > (temp.Position - pos).magnitude then
          local dohit = true
          if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
            dohit = false
          end
          if dohit == true then
            torso = temp
            dist = (temp.Position - pos).magnitude
          end
        end
      end
    end
    return torso, dist
  end
  local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
  LastPoint = Point
  function effect(Color, Ref, LP, P1, returnn)
    if LP == nil or P1 == nil then
      return
    end
    local effectsmsh = Instance.new("CylinderMesh")
    effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
    effectsmsh.Name = "Mesh"
    local effectsg = Instance.new("Part")
    NoOutline(effectsg)
    effectsg.formFactor = 3
    effectsg.CanCollide = false
    effectsg.Name = "Eff"
    effectsg.Locked = true
    effectsg.Anchored = true
    effectsg.Size = Vector3.new(0.5, 1, 0.5)
    effectsg.Parent = workspace
    effectsmsh.Parent = effectsg
    effectsg.BrickColor = BrickColor.new(Color)
    effectsg.Reflectance = Ref
    local point1 = P1
    local mg = (LP.p - point1.p).magnitude
    effectsg.Size = Vector3.new(0.5, mg, 0.5)
    effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
    effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
    game:GetService("Debris"):AddItem(effectsg, 2)
    if returnn then
      return effectsg
    end
    if not returnn then
      table.insert(Effects, {
        effectsg,
        "Cylinder",
        0.2,
        0.01,
        0,
        0.01,
        effectsmsh
      })
    end
  end
  function MagicBlock(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent, prt2)
    local prt = part(3, parent, 0, 0, brickcolor, "Effect", vt())
    local wld
    prt.CFrame = cframe
    prt.Anchored = true
    msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    if Type == 1 or Type == nil then
      table.insert(Effects, {
        prt,
        "Block1",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    elseif Type == 2 then
      table.insert(Effects, {
        prt,
        "Block2",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    elseif Type == 3 then
      table.insert(Effects, {
        prt,
        "Block3",
        delay,
        x3,
        y3,
        z3,
        msh,
        cframe,
        prt2
      })
    end
  end
  function MagicSkull(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, goe)
    local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
    prt.Anchored = true
    prt.CFrame = cframe
    msh = mesh("SpecialMesh", prt, "FileMesh", "4770583", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {
      prt,
      "Skull",
      delay,
      x3,
      y3,
      z3,
      msh,
      goe
    })
  end
  function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
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
  function MagicCylinder(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
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
  function MagicCylinder3(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = part(3, modelzorz, 0, 0, brickcolor, "Effect", vt())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
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
  function MagicCylinder2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, goe)
    local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {
      prt,
      "Cylinder2",
      delay,
      x3,
      y3,
      z3,
      msh,
      goe
    })
  end
  function MagicHead(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
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
  function ClangEffect(brickcolor, cframe, duration, decrease, size, power)
    local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {
      prt,
      "CylinderClang",
      duration,
      decrease,
      size,
      power,
      prt.CFrame,
      nil
    })
  end
  function MagicWave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
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
  function MagicRing(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
    prt.Anchored = true
    prt.CFrame = cframe * cf(x2, y2, z2)
    local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
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
  function MagicRing2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, prt2)
    local prt = part(3, modelzorz, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
    prt.Anchored = true
    local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {
      prt,
      "Block3",
      delay,
      x3,
      y3,
      z3,
      msh,
      cframe,
      prt2
    })
  end
  function ElecEffect(cff, x, y, z)
    local prt = part(3, workspace, 0, 0, BrickColor.new("Bright red"), "Part", vt(1, 1, 1))
    prt.Anchored = true
    prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
    prt.CFrame = cf(prt.Position)
    game:GetService("Debris"):AddItem(prt, 10)
    xval = math.random() / 3
    yval = math.random() / 3
    zval = math.random() / 3
    msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
    Effects[#Effects + 1] = {
      prt,
      "Elec",
      0.2,
      x,
      y,
      z,
      xval,
      yval,
      zval,
      msh
    }
  end
  function Damagefunc(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
    if hit.Parent == nil then
      return
    end
    if hit == MovePart then
      Fly = false
    end
    if hit.Name == "Hitbox" and hit.Parent ~= modelzorz and ranged ~= true then
      ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
      ref.Anchored = true
      ref.CFrame = cf(hit.Position)
      game:GetService("Debris"):AddItem(ref, 1)
      hitnum = math.random(1, 5)
      if hitnum == 1 then
        so("199148971", ref, 1, 1)
      elseif hitnum == 2 then
        so("199149025", ref, 1, 1)
      elseif hitnum == 3 then
        so("199149072", ref, 1, 1)
      elseif hitnum == 4 then
        so("199149109", ref, 1, 1)
      elseif hitnum == 5 then
        so("199149119", ref, 1, 1)
      end
      StaggerHit.Value = true
    end
    h = hit.Parent:FindFirstChild("Humanoid")
    for _, v in pairs(hit.Parent:children()) do
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
      if Player.Neutral == false and game.Players:GetPlayerFromCharacter(hit.Parent) ~= nil and game.Players:GetPlayerFromCharacter(hit.Parent).TeamColor == Player.TeamColor then
        return
      end
      c = Instance.new("ObjectValue")
      c.Name = "creator"
      c.Value = game:service("Players").LocalPlayer
      c.Parent = h
      RecentEnemy.Value = hit.Parent
      game:GetService("Debris"):AddItem(c, 0.5)
      minim = minim * Atk.Value
      maxim = maxim * Atk.Value
      Damage = 0
      if minim == maxim then
        Damage = maxim
      else
        Damage = math.random(minim, maxim)
      end
      blocked = false
      enblock = nil
      Stats = hit.Parent:findFirstChild("Stats")
      if Stats ~= nil then
        enblock = Stats:findFirstChild("Block")
        if enblock ~= nil and enblock.Value == true then
          blocked = true
        end
        if Stats:findFirstChild("Defense") ~= nil then
          if prechit == false then
            Damage = Damage / Stats.Defense.Value
          else
            Val = Stats.Defense.Value
            if 2 <= Val then
              Val = 2
            end
            print(Val)
            Damage = Damage * Val
            --do break end
            hitnum = math.random(1, 5)
            if hitnum == 1 then
              so("199149321", hit, 1, 1)
            elseif hitnum == 2 then
              so("199149338", hit, 1, 1)
            elseif hitnum == 3 then
              so("199149367", hit, 1, 1)
            elseif hitnum == 4 then
              so("199149409", hit, 1, 1)
            elseif hitnum == 5 then
              so("199149452", hit, 1, 1)
              --do break end
              if cansound == true then
                hitnum = math.random(1, 6)
                if hitnum == 1 then
                  so("199149137", hit, 1, 1)
                elseif hitnum == 2 then
                  so("199149186", hit, 1, 1)
                elseif hitnum == 3 then
                  so("199149221", hit, 1, 1)
                elseif hitnum == 4 then
                  so("199149235", hit, 1, 1)
                elseif hitnum == 5 then
                  so("199149269", hit, 1, 1)
                elseif hitnum == 6 then
                  so("199149297", hit, 1, 1)
                end
              end
            end
          end
          if 3 >= Damage and staghit == true and ranged ~= true then
            StaggerHit.Value = true
          end
        end
        if Stats:findFirstChild("Stun") ~= nil then
          if blocked == true then
            incstun = incstun / 2
          end
          if Stats.Stun.Value < 100 then
            Stats.Stun.Value = Stats.Stun.Value + incstun
          end
        end
        if Stats:findFirstChild("Stagger") ~= nil and stagger == true then
          Stats.Stagger.Value = true
        end
      end
      if blocked == true then
        showDamage(hit.Parent, "Block", "Damage")
        if ranged ~= true then
          enblock.Value = false
          Stagger.Value = true
          hitnum = math.random(1, 2)
          if hitnum == 1 then
            so("199148933", hit, 1, 1)
          elseif hitnum == 2 then
            so("199148947", hit, 1, 1)
          end
        end
      else
        Damage = 1
        coroutine.resume(coroutine.create(function(Hum, Dam)
          Hum:takeDamage(Dam)
        end), h, Damage)
        if move4atk == true then
          sapdef = true
        end
        showDamage(hit.Parent, Damage, "Damage")
        if prechit == true then
          eul = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
          MagicCircle(BrickColor.new("White"), cf(hit.Position) * eul, 5, 5, 5, -0.1, 5, -0.1, 0.02)
          MagicCircle(BrickColor.new("White"), cf(hit.Position) * eul * euler(1.57, 0, 0), 5, 5, 5, -0.1, 5, -0.1, 0.02)
        end
        if DecreaseState ~= nil then
          DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount, Duration)
        end
        if Type == "Knockdown" then
          hum = hit.Parent.Humanoid
          hum.PlatformStand = true
          coroutine.resume(coroutine.create(function(HHumanoid)
            swait(1)
            HHumanoid.PlatformStand = false
          end), hum)
          local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
          local bodvol = Instance.new("BodyVelocity")
          bodvol.velocity = angle * knockback
          bodvol.P = 5000
          bodvol.maxForce = Vector3.new(8000, 8000, 8000)
          bodvol.Parent = hit
          rl = Instance.new("BodyAngularVelocity")
          rl.P = 3000
          rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
          rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
          rl.Parent = hit
          game:GetService("Debris"):AddItem(bodvol, 0.5)
          game:GetService("Debris"):AddItem(rl, 0.5)
        elseif Type == "Knockdown2" then
          hum = hit.Parent.Humanoid
          local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
          local bodvol = Instance.new("BodyVelocity")
          bodvol.velocity = angle * knockback
          bodvol.P = 5000
          bodvol.maxForce = Vector3.new(8000, 8000, 8000)
          bodvol.Parent = hit
          game:GetService("Debris"):AddItem(bodvol, 0.5)
        elseif Type == "Normal" or Type == "NormalDecreaseMvmt1" then
          vp = Instance.new("BodyVelocity")
          vp.P = 500
          vp.maxForce = Vector3.new(math.huge, 0, math.huge)
          if KnockbackType == 1 then
            vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
          elseif KnockbackType == 2 then
            vp.velocity = Property.CFrame.lookVector * knockback
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
        end
      end
      debounce = Instance.new("BoolValue")
      debounce.Name = "DebounceHit"
      debounce.Parent = hit.Parent
      debounce.Value = true
      game:GetService("Debris"):AddItem(debounce, Delay)
      c = Instance.new("ObjectValue")
      c.Name = "creator"
      c.Value = Player
      c.Parent = h
      game:GetService("Debris"):AddItem(c, 0.5)
      CRIT = false
    end
  end
  function showDamage(Char, Dealt, Type)
    m = Instance.new("Model")
    m.Name = "Effect"
    c = Instance.new("Part")
    c.Transparency = 1
    c.Name = "Head"
    c.TopSurface = 0
    c.BottomSurface = 0
    c.formFactor = "Plate"
    c.Size = Vector3.new(1, 0.4, 1)
    b = Instance.new("BillboardGui", c)
    b.Size = UDim2.new(5, 0, 5, 0)
    b.AlwaysOnTop = true
    damgui = gui("TextLabel", b, tostring(Dealt), 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
    if Type == "Damage" then
      damgui.Font = "SourceSans"
      if Dealt == "Block" then
        damgui.TextColor3 = BrickColor.new("Bright blue").Color
      elseif Dealt < 3 then
        damgui.TextColor3 = BrickColor.new("White").Color
      elseif Dealt >= 3 and Dealt < 20 then
        damgui.TextColor3 = BrickColor.new("Bright yellow").Color
      else
        damgui.TextColor3 = BrickColor.new("Really red").Color
        damgui.Font = "SourceSansBold"
      end
    elseif Type == "Debuff" then
      damgui.TextColor3 = BrickColor.new("White").Color
    elseif Type == "Interrupt" then
      damgui.TextColor3 = BrickColor.new("New Yeller").Color
    end
    damgui.TextScaled = true
    ms = Instance.new("CylinderMesh")
    ms.Scale = Vector3.new(0.8, 0.8, 0.8)
    ms.Parent = c
    c.Reflectance = 0
    Instance.new("BodyGyro").Parent = c
    c.Parent = m
    if Char:findFirstChild("Head") ~= nil then
      c.CFrame = cf(Char.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
    elseif Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = cf(Char.Parent.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
    end
    f = Instance.new("BodyPosition")
    f.P = 2000
    f.D = 100
    f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    if Type == "Damage" then
      f.position = c.Position + Vector3.new(0, 3, 0)
    elseif Type == "Debuff" or Type == "Interrupt" then
      f.position = c.Position + Vector3.new(0, 5, 0)
    end
    f.Parent = c
    game:GetService("Debris"):AddItem(m, 5)
    table.insert(Effects, {
      m,
      "showDamage",
      damgui,
      f,
      10,
      1,
      15,
      50,
      100
    })
    c.CanCollide = false
    m.Parent = workspace
    c.CanCollide = false
  end
  combo = 0
  function ob1d(mouse)
    if attack == true or equipped == false then
      return
    end
    hold = true
    if combo == 0 then
      combo = 1
      attackone()
    elseif combo == 1 then
      combo = 0
      attacktwo()
    elseif combo == 2 then
      combo = 0
      attackthree()
    elseif combo == 3 then
      combo = 0
      attackfour()
    end
    coroutine.resume(coroutine.create(function()
      for i = 1, 50 do
        if attack == false then
          swait()
        end
      end
      if attack == false then
        combo = 0
      end
    end))
  end
  function ob1u(mouse)
    hold = false
  end
  buttonhold = false
  fenbarmove1.MouseButton1Click:connect(do1)
  fenbarmove2.MouseButton1Click:connect(do2)
  fenbarmove3.MouseButton1Click:connect(do3)
  fenbarmove4.MouseButton1Click:connect(do4)
  eul = 0
  equipped = false
  function key(key)
    if key == "q" then
      Stagger.Value = true
    end
    if attack == true then
      return
    end
    if key == "f" then
      pressedf = true
      fnumb = 0
      attack = true
      if equipped == false then
        equipped = true
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
        Animate.Parent = nil
        animTrack:Play()
        equipanim()
      else
        equipped = false
        hideanim()
        LH.C1 = LHC1
        RH.C1 = RHC1
        animTrack:Stop()
        Animate.Parent = Character
        swait(0)
        RW.Parent = nil
        LW.Parent = nil
        RSH.Parent = player.Character.Torso
        LSH.Parent = player.Character.Torso
      end
      attack = false
    end
    if equipped == false then
      return
    end
    if key == "e" then
      print(#Bones)
    end
    if key == "g" then
      hprt3.Transparency = 0
      hprt4.Transparency = 0
      hprt5.Transparency = 1
    end
    if key == "h" then
      hprt3.Transparency = 1
      hprt4.Transparency = 1
      hprt5.Transparency = 0
    end
    if key == "j" then
      hprt3.Transparency = 1
      hprt4.Transparency = 1
      hprt5.Transparency = 1
    end
    if key == "z" then
      do1()
    end
    if key == "x" then
      do2()
    end
    if key == "c" then
      do3()
    end
    if key == "v" then
      do4()
    end
  end
  function key2(key)
  end
  function s(mouse)
    mouse.Button1Down:connect(function()
      ob1d(mouse)
    end)
    mouse.Button1Up:connect(function()
      ob1u(mouse)
    end)
    mouse.KeyDown:connect(key)
    mouse.KeyUp:connect(key2)
    player = Player
    ch = Character
    MMouse = mouse
  end
  function ds(mouse)
  end
  Bin.Selected:connect(s)
  Bin.Deselected:connect(ds)
  print("Calvar loaded.")
  local mananum = 0
  local donum = 0
  local stunnum = 0
  local staggeranim = false
  local stunanim = false
  local Point, LastPoint
  local handef = 0
  local walk = 0
  local walkforw = true
  while true do
    swait()
    for _, c in pairs(Character:children()) do
      for _, v in pairs(c:children()) do
        if (v.className == "BodyGyro" or v.className == "BodyPosition" or v.className == "BodyVelocity" or v.className == "BodyAngularVelocity") and v.Name ~= "MyGyro" and v.Name ~= "MyPos" then
          print("dai")
          v.Parent = nil
        end
      end
    end
    if hprt5.Transparency == 0 then
      parti.Enabled = true
    elseif hprt5.Transparency == 1 then
      parti.Enabled = false
    end
    col = math.random()
    col2 = 1 - col
    hprt5.BrickColor = BrickColor.new(Color3.new(col, math.random(50, 100) / 100, col2))
    parti.Color = cs(hprt5.BrickColor.Color, hprt5.BrickColor.Color)
    if Humanoid.Health <= 0 then
      attack = true
      resumeControl()
      modelzorz.Parent = workspace
      modelzorz.Name = "Weapon Model"
      game:GetService("Debris"):AddItem(modelzorz, 30)
      for i = 1, #Weapon do
        Weapon[i].Parent = modelzorz
        Weapon[i].CanCollide = true
      end
      for i = 1, #Welds do
        if Welds[i].Part0.Parent == Character or Welds[i].Part1.Parent == Character then
          Welds[i].Parent = nil
        else
          Welds[i].Parent = prt1
        end
      end
    end
    if fnumb < 21 then
      fnumb = fnumb + 1
      if pressedf == false then
        fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency - 0.025
        tellbar.TextTransparency = tellbar.TextTransparency - 0.05
        tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency - 0.05
      else
        if fnumb == 20 then
          fenframe5.Parent = nil
          print("daigui")
        end
        fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency + 0.025
        tellbar.TextTransparency = tellbar.TextTransparency + 0.05
        tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency + 0.05
      end
    end
    hitbox2.Parent = hitbox.Parent
    hitbox2.Size = hitbox.Size
    hitbox2.CFrame = hitboxCF
    hboxpos.position = hitbox2.Position + vt(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100)
    if Stagger.Value == true and staggeranim == false then
      coroutine.resume(coroutine.create(function()
        staggeranim = true
        while attack == true do
          swait()
        end
        StaggerAnim()
        StaggerHit.Value = false
        Stagger.Value = false
        staggeranim = false
      end))
    end
    if StaggerHit.Value == true and staggeranim == false then
      coroutine.resume(coroutine.create(function()
        staggeranim = true
        while attack == true do
          swait()
        end
        StaggerHitt()
        StaggerHit.Value = false
        Stagger.Value = false
        staggeranim = false
      end))
    end
    if Mvmt.Value < 0 or Stagger.Value == true or Stun.Value >= 100 or StaggerHit.Value == true then
      Humanoid.WalkSpeed = 0
    else
      Humanoid.WalkSpeed = 16 * Mvmt.Value
    end
    if Stun.Value >= 100 and stunanim == false then
      coroutine.resume(coroutine.create(function()
        stunanim = true
        while attack == true do
          swait()
        end
        StunAnim()
        Stun.Value = 0
        stunanim = false
      end))
    end
    local stunnum2 = 30
    if stunnum >= stunnum2 then
      if Stun.Value > 0 then
        Stun.Value = Stun.Value - 1
      end
      stunnum = 0
    end
    stunnum = stunnum + 1
    if donum >= 0.5 then
      handidle = true
    elseif donum <= 0 then
      handidle = false
    end
    if handidle == false then
      donum = donum + 0.003
    else
      donum = donum - 0.003
    end
    local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local velderp = RootPart.Velocity.y
    hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if equipped == true then
      if attack == false then
        idle = idle + 1
      else
        idle = 0
      end
      if not (idle >= 500) or attack == false then
      end
      if Anim == "Walk" then
        if walkforw == true then
          RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
        else
          RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
        end
      else
        RH.C1 = clerp(RH.C1, RHC1, 0.2)
        LH.C1 = clerp(LH.C1, LHC1, 0.2)
      end
      if RootPart.Velocity.y > 1 and hitfloor == nil then
        Anim = "Jump"
        if attack == false then
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.1, 0.45, 0.3) * euler(-0.2, 0, 0.4), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        end
      elseif RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false then
          Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.1, 0.45, 0.3) * euler(-0.2, 0, 0.4), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
        end
      elseif torvel < 1 and hitfloor ~= nil then
        Anim = "Idle"
        if attack == false then
          Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0) * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(-0.05, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.1, 0.45, 0.3) * euler(-0.2, 0, 0.4), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.05) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, -0.05), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.05) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0.05), 0.2)
        end
      elseif torvel > 2 and torvel < 30 and hitfloor ~= nil then
        Anim = "Walk"
        walk = walk + 1
        if walk >= 10 then
          walk = 0
          if walkforw == true then
            walkforw = false
          elseif walkforw == false then
            walkforw = true
          end
        end
        if attack == false then
          Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.2), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.1, 0.45, 0.3) * euler(-0.2, 0, 0.2), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.05) * euler(0, 1.57, 0) * euler(0, -0.1, 0) * euler(-0.05, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.05) * euler(0, -1.57, 0) * euler(0, 0.1, 0) * euler(-0.05, 0, 0), 0.2)
        end
      elseif torvel >= 30 and hitfloor ~= nil then
        Anim = "Run"
        if attack == false then
          Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0) * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(-0.05, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.1, 0.45, 0.3) * euler(-0.2, 0, -0.4), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.1, 0.45, 0.3) * euler(-0.2, 0, 0.4), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, -0.2, 0) * euler(-0.1, 0, -0.05), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0.2, 0) * euler(-0.1, 0, 0.05), 0.2)
        end
      end
    end
    if #Effects > 0 then
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
            if Thing[2] == "CylinderClang" then
              if Thing[3] <= 1 then
                Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 2.5 * Thing[5], 0) * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                Thing[7] = Thing[1].CFrame
                effect("New Yeller", 0, Thing[8], Thing[7])
                Thing[8] = Thing[7]
                Thing[3] = Thing[3] + Thing[4]
              else
                Part.Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "showDamage" then
              if Thing[6] < Thing[5] then
                Thing[6] = Thing[6] + 1
              elseif Thing[6] < Thing[7] then
                Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
                Thing[6] = Thing[6] + 1
              elseif Thing[6] < Thing[8] then
                Thing[6] = Thing[6] + 1
              elseif Thing[6] < Thing[9] then
                Thing[6] = Thing[6] + 1
                Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
                Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
                Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
              else
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" then
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Block2" then
                  Thing[1].CFrame = Thing[1].CFrame
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Block3" then
                  Thing[1].CFrame = Thing[9].CFrame * Thing[8] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Cylinder" then
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Cylinder2" then
                  Thing[1].CFrame = Thing[1].CFrame * cf(0, Thing[8], 0)
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Blood" then
                  Mesh = Thing[7]
                  Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Elec" then
                  Mesh = Thing[10]
                  Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
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
    end
    fenbarmana2:TweenSize(UDim2.new(0.4, 0, -4 * mana.Value / 100, 0), nil, 1, 0.4, true)
    fenbarmana4.Text = "Mana(" .. mana.Value .. ")"
    fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
    fenbarhp2:TweenSize(UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0), nil, 1, 0.4, true)
    fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
    fenbarmove1b:TweenSize(UDim2.new(1 * cooldowns[1] / cooldownmax, 0, 1, 0), nil, 1, 0.4, true)
    fenbarmove2b:TweenSize(UDim2.new(1 * cooldowns[2] / cooldownmax, 0, 1, 0), nil, 1, 0.4, true)
    fenbarmove3b:TweenSize(UDim2.new(1 * cooldowns[3] / cooldownmax, 0, 1, 0), nil, 1, 0.4, true)
    fenbarmove4b:TweenSize(UDim2.new(1 * cooldowns[4] / cooldownmax, 0, 1, 0), nil, 1, 0.4, true)
    for _, c in pairs(Decrease:children()) do
      if c:findFirstChild("Duration") ~= nil then
        c.Duration.Value = c.Duration.Value - 1
        c.Parent = nil
      end
      if c.Name == "DecreaseAtk" then
        decreaseatk = decreaseatk + c.Value
      elseif c.Name == "DecreaseDef" then
        decreasedef = decreasedef + c.Value
      elseif c.Name == "DecreaseMvmt" then
        decreasemvmt = decreasemvmt + c.Value
      end
    end
    Atk.Value = 1 - decreaseatk
    if Atk.Value <= 0 then
      Atk.Value = 0
    end
    Def.Value = 1 - decreasedef
    if Def.Value <= 0 then
      Def.Value = 0.01
    end
    Mvmt.Value = 1 - decreasemvmt
    if Mvmt.Value <= 0 then
      Mvmt.Value = 0
    end
    decreaseatk = 0
    decreasedef = 0
    decreasemvmt = 0
    AtkVal = Atk.Value * 100
    AtkVal = math.floor(AtkVal)
    AtkVal = AtkVal / 100
    fenbardamage.Text = [[
Damage
(]] .. AtkVal .. ")"
    DefVal = Def.Value * 100
    DefVal = math.floor(DefVal)
    DefVal = DefVal / 100
    fenbardef.Text = [[
Defense
(]] .. DefVal .. ")"
    MvmtVal = Mvmt.Value * 100
    MvmtVal = math.floor(MvmtVal)
    MvmtVal = MvmtVal / 100
    fenbarmove.Text = [[
Walkspeed
(]] .. MvmtVal .. ")"
    if Stun.Value >= 100 then
      fenbarstun2:TweenSize(UDim2.new(0.4, 0, -4, 0), nil, 1, 0.4, true)
    else
      fenbarstun2:TweenSize(UDim2.new(0.4, 0, -4 * Stun.Value / 100, 0), nil, 1, 0.4, true)
    end
    fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
    if mana.Value >= 100 then
      mana.Value = 100
    elseif mananum <= 9 then
      mananum = mananum + 1
    else
      mananum = 0
      mana.Value = mana.Value + 1
    end
    for i = 1, #cooldowns do
      if cooldownmax <= cooldowns[i] then
        cooldowns[i] = cooldownmax
      else
        cooldowns[i] = cooldowns[i] + cooldownsadd[i]
      end
    end
  end