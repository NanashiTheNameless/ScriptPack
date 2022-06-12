  wait(math.randomseed(tick()))
  local plr = game.Players.LocalPlayer
  ch = plr.Character
  local tor = ch.Torso
  local head = ch.Head
  local ra = ch["Right Arm"]
  local la = ch["Left Arm"]
  local rl = ch["Right Leg"]
  local ll = ch["Left Leg"]
  local rj = ch.HumanoidRootPart.RootJoint
  local neck = tor.Neck
  local rm = Instance.new("Weld", tor)
  rm.C1 = CFrame.new(0, 0.5, 0)
  rm.C0 = CFrame.new(1.5, 0.5, 0)
  rm.Part0 = tor
  rm.Part1 = ra
  local lm = Instance.new("Weld", tor)
  lm.C1 = CFrame.new(0, 0.5, 0)
  lm.C0 = CFrame.new(-1.5, 0.5, 0)
  lm.Part0 = tor
  lm.Part1 = la
  local rlm = Instance.new("Weld", tor)
  rlm.C1 = CFrame.new(0, 1, 0)
  rlm.C0 = CFrame.new(0.5, -1, 0)
  rlm.Part0 = tor
  rlm.Part1 = rl
  local llm = Instance.new("Weld", tor)
  llm.C1 = CFrame.new(0, 1, 0)
  llm.C0 = CFrame.new(-0.5, -1, 0)
  llm.Part0 = tor
  llm.Part1 = ll
  local hum = ch.Humanoid
  for i, v in pairs(head:GetChildren()) do
    if v.ClassName == "Sound" then
      v:Destroy()
    end
  end
  rj.C0 = CFrame.new()
  rj.C1 = CFrame.new()
  tor["Right Shoulder"]:Destroy()
  tor["Left Shoulder"]:Destroy()
  tor["Right Hip"]:Destroy()
  tor["Left Hip"]:Destroy()
  neck.C0 = CFrame.new(0, 1, 0)
  neck.C1 = CFrame.new(0, -0.5, 0)
  rmC0 = rm.C0
  rmC1 = rm.C1
  lmC0 = lm.C0
  lmC1 = lm.C1
  nC0 = neck.C0
  nC1 = neck.C1
  rjC0 = rj.C0
  rjC1 = rj.C1
  rlmC0 = rlm.C0
  rlmC1 = rlm.C1
  llmC0 = llm.C0
  llmC1 = llm.C1
  local defWS = 25
  local defJP = 75
  hum.WalkSpeed = defWS
  hum.JumpPower = defJP
  ch:WaitForChild("Animate"):Destroy()
  hum:WaitForChild("Animator"):Destroy()
  local mo = plr:GetMouse()
  local cam = workspace.CurrentCamera
  head.BrickColor = BrickColor.new("Pastel brown")
  local hood = Instance.new("Part", ch)
  hood.Anchored = false
  hood.CanCollide = false
  hood.Size = Vector3.new(2, 2, 2)
  local hoodM = Instance.new("SpecialMesh", hood)
  hoodM.MeshId = "http://www.roblox.com/asset/?id=16952952"
  hoodM.TextureId = "http://www.roblox.com/asset/?id=17388648"
  local hoodScale = hoodM.Scale
  local hoodW = Instance.new("Weld", ch)
  hoodW.Part0 = tor
  hoodW.Part1 = hood
  hoodW.C0 = CFrame.Angles(math.rad(100), 0, 0)
  hoodW.C1 = CFrame.new(0, -1, 1)
  local hoodC0 = hoodW.C0
  local hoodC1 = hoodW.C1
  local shirtid = 179641921
  local pantsid = 215261448
  if ch:findFirstChild("Shirt") ~= nil then
    ch.Shirt:Destroy()
  end
  if ch:findFirstChild("Pants") ~= nil then
    ch.Pants:Destroy()
  end
  local shirt = Instance.new("Shirt", ch)
  shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=" .. shirtid .. ""
  local pants = Instance.new("Pants", ch)
  pants.PantsTemplate = "http://www.roblox.com/asset/?id=" .. pantsid .. ""
  local daggerModel = Instance.new("Model", ch)
  local daggerHandle
  o1 = daggerModel
  o2 = Instance.new("Part")
  o3 = Instance.new("SpecialMesh")
  o4 = Instance.new("Part")
  o5 = Instance.new("SpecialMesh")
  o6 = Instance.new("Part")
  o7 = Instance.new("SpecialMesh")
  o8 = Instance.new("Part")
  o9 = Instance.new("SpecialMesh")
  o10 = Instance.new("Part")
  o11 = Instance.new("SpecialMesh")
  o12 = Instance.new("Part")
  o13 = Instance.new("SpecialMesh")
  o14 = Instance.new("WedgePart")
  o15 = Instance.new("SpecialMesh")
  o16 = Instance.new("WedgePart")
  o17 = Instance.new("SpecialMesh")
  o18 = Instance.new("Part")
  o19 = Instance.new("SpecialMesh")
  o20 = Instance.new("Part")
  o21 = Instance.new("SpecialMesh")
  o22 = Instance.new("Part")
  o23 = Instance.new("SpecialMesh")
  o24 = Instance.new("Part")
  o25 = Instance.new("SpecialMesh")
  o26 = Instance.new("Part")
  o27 = Instance.new("SpecialMesh")
  o28 = Instance.new("Part")
  o29 = Instance.new("SpecialMesh")
  o30 = Instance.new("Part")
  o31 = Instance.new("SpecialMesh")
  o32 = Instance.new("Part")
  o33 = Instance.new("SpecialMesh")
  o34 = Instance.new("Part")
  o35 = Instance.new("SpecialMesh")
  o36 = Instance.new("Part")
  o37 = Instance.new("SpecialMesh")
  o38 = Instance.new("Part")
  o39 = Instance.new("SpecialMesh")
  o40 = Instance.new("Part")
  o41 = Instance.new("SpecialMesh")
  o42 = Instance.new("Part")
  o43 = Instance.new("SpecialMesh")
  o44 = Instance.new("Part")
  o45 = Instance.new("SpecialMesh")
  o46 = Instance.new("Part")
  o47 = Instance.new("SpecialMesh")
  o48 = Instance.new("Part")
  o49 = Instance.new("SpecialMesh")
  o50 = Instance.new("Part")
  o51 = Instance.new("SpecialMesh")
  o52 = Instance.new("Part")
  o53 = Instance.new("SpecialMesh")
  o54 = Instance.new("Part")
  o55 = Instance.new("SpecialMesh")
  o56 = Instance.new("Part")
  o57 = Instance.new("SpecialMesh")
  o58 = Instance.new("Part")
  o59 = Instance.new("SpecialMesh")
  o60 = Instance.new("Part")
  o61 = Instance.new("SpecialMesh")
  o62 = Instance.new("Part")
  o63 = Instance.new("SpecialMesh")
  o64 = Instance.new("Part")
  o65 = Instance.new("SpecialMesh")
  o66 = Instance.new("Part")
  o67 = Instance.new("SpecialMesh")
  o68 = Instance.new("Part")
  o69 = Instance.new("SpecialMesh")
  o70 = Instance.new("WedgePart")
  o71 = Instance.new("SpecialMesh")
  o72 = Instance.new("WedgePart")
  o73 = Instance.new("SpecialMesh")
  o74 = Instance.new("WedgePart")
  o75 = Instance.new("SpecialMesh")
  o76 = Instance.new("WedgePart")
  o77 = Instance.new("SpecialMesh")
  o78 = Instance.new("WedgePart")
  o79 = Instance.new("SpecialMesh")
  o80 = Instance.new("WedgePart")
  o81 = Instance.new("SpecialMesh")
  o82 = Instance.new("Part")
  o83 = Instance.new("SpecialMesh")
  o84 = Instance.new("Part")
  o85 = Instance.new("SpecialMesh")
  o86 = Instance.new("Part")
  o87 = Instance.new("SpecialMesh")
  o88 = Instance.new("Part")
  o89 = Instance.new("SpecialMesh")
  o90 = Instance.new("Part")
  o91 = Instance.new("SpecialMesh")
  o92 = Instance.new("Part")
  o93 = Instance.new("SpecialMesh")
  o94 = Instance.new("Part")
  o95 = Instance.new("SpecialMesh")
  o96 = Instance.new("Part")
  o97 = Instance.new("SpecialMesh")
  o98 = Instance.new("Part")
  o99 = Instance.new("SpecialMesh")
  o100 = Instance.new("Part")
  o101 = Instance.new("SpecialMesh")
  o102 = Instance.new("Part")
  o103 = Instance.new("SpecialMesh")
  o104 = Instance.new("Part")
  o105 = Instance.new("SpecialMesh")
  o106 = Instance.new("Part")
  o107 = Instance.new("SpecialMesh")
  o108 = Instance.new("Part")
  o109 = Instance.new("SpecialMesh")
  o110 = Instance.new("Part")
  o111 = Instance.new("SpecialMesh")
  o112 = Instance.new("Part")
  o113 = Instance.new("SpecialMesh")
  daggerHandle = Instance.new("Part")
  o115 = Instance.new("SpecialMesh")
  o116 = Instance.new("Part")
  o117 = Instance.new("SpecialMesh")
  o118 = Instance.new("WedgePart")
  o119 = Instance.new("SpecialMesh")
  o120 = Instance.new("WedgePart")
  o121 = Instance.new("SpecialMesh")
  o122 = Instance.new("WedgePart")
  o123 = Instance.new("SpecialMesh")
  o124 = Instance.new("WedgePart")
  o125 = Instance.new("SpecialMesh")
  o2.Parent = o1
  o2.Material = Enum.Material.Metal
  o2.BrickColor = BrickColor.new("Fossil")
  o2.Position = Vector3.new(9.27460861, 10.1175337, 10.5000019)
  o2.Rotation = Vector3.new(0, 0, 89.9999008)
  o2.Anchored = true
  o2.CanCollide = false
  o2.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o2.CFrame = CFrame.new(9.27460861, 10.1175337, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o2.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o2.Position = Vector3.new(9.27460861, 10.1175337, 10.5000019)
  o3.Parent = o2
  o3.Scale = Vector3.new(0.291840583, 0.486401021, 0.39999944)
  o3.MeshType = Enum.MeshType.Brick
  o4.Parent = o1
  o4.Material = Enum.Material.Sand
  o4.BrickColor = BrickColor.new("Sunrise")
  o4.Position = Vector3.new(9.5, 9.1558609, 10.5000019)
  o4.Rotation = Vector3.new(0, 0, 89.9999008)
  o4.Anchored = true
  o4.CanCollide = false
  o4.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o4.CFrame = CFrame.new(9.5, 9.1558609, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o4.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o4.Position = Vector3.new(9.5, 9.1558609, 10.5000019)
  o5.Parent = o4
  o5.Scale = Vector3.new(0.194560394, 0.972802103, 0.999998569)
  o5.MeshType = Enum.MeshType.Cylinder
  o6.Parent = o1
  o6.Material = Enum.Material.Sand
  o6.BrickColor = BrickColor.new("Sunrise")
  o6.Position = Vector3.new(9.57513332, 9.3737402, 10.4227705)
  o6.Rotation = Vector3.new(0, 0, 89.9999008)
  o6.Anchored = true
  o6.CanCollide = false
  o6.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o6.CFrame = CFrame.new(9.57513332, 9.3737402, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o6.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o6.Position = Vector3.new(9.57513332, 9.3737402, 10.4227705)
  o7.Parent = o6
  o7.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o7.MeshType = Enum.MeshType.Cylinder
  o8.Parent = o1
  o8.Material = Enum.Material.Sand
  o8.BrickColor = BrickColor.new("Lilac")
  o8.Position = Vector3.new(9.57513332, 9.2610445, 10.4227705)
  o8.Rotation = Vector3.new(0, 0, 89.9999008)
  o8.Anchored = true
  o8.CanCollide = false
  o8.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o8.CFrame = CFrame.new(9.57513332, 9.2610445, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o8.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o8.Position = Vector3.new(9.57513332, 9.2610445, 10.4227705)
  o9.Parent = o8
  o9.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o9.MeshType = Enum.MeshType.Cylinder
  o10.Parent = o1
  o10.Material = Enum.Material.Metal
  o10.BrickColor = BrickColor.new("Fossil")
  o10.Position = Vector3.new(9.5, 10.1175337, 10.5000019)
  o10.Rotation = Vector3.new(0, 0, 89.9999008)
  o10.Anchored = true
  o10.CanCollide = false
  o10.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o10.CFrame = CFrame.new(9.5, 10.1175337, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o10.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o10.Position = Vector3.new(9.5, 10.1175337, 10.5000019)
  o11.Parent = o10
  o11.Scale = Vector3.new(0.291840583, 0.972802103, 0.999998569)
  o11.MeshType = Enum.MeshType.Brick
  o12.Parent = o1
  o12.Material = Enum.Material.Metal
  o12.BrickColor = BrickColor.new("Fossil")
  o12.Position = Vector3.new(8.97408676, 10.1175337, 10.5772333)
  o12.Rotation = Vector3.new(-179.999954, -8.61036686E-10, 90.0001297)
  o12.Anchored = true
  o12.CanCollide = false
  o12.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o12.CFrame = CFrame.new(8.97408676, 10.1175337, 10.5772333, -2.29477882E-6, -1.00000107, -1.50279251E-11, -1.00000107, 2.29477882E-6, 9.23854657E-7, -9.23857328E-7, 1.72093451E-11, -1)
  o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o12.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o12.Position = Vector3.new(8.97408676, 10.1175337, 10.5772333)
  o13.Parent = o12
  o13.Scale = Vector3.new(0.291840583, 0.486401021, 0.299999535)
  o13.MeshType = Enum.MeshType.Wedge
  o14.Parent = o1
  o14.Material = Enum.Material.Metal
  o14.BrickColor = BrickColor.new("Pearl")
  o14.Position = Vector3.new(9.4248724, 11.4241877, 10.4690952)
  o14.Rotation = Vector3.new(2.3858726, 90, 0)
  o14.Anchored = true
  o14.CanCollide = false
  o14.Size = Vector3.new(0.308925033, 0.721885383, 0.308925003)
  o14.CFrame = CFrame.new(9.4248724, 11.4241877, 10.4690952, 1.66824151E-7, 1.90568983E-6, 1, 0.0416292995, 0.99913317, -1.91098252E-6, -0.99913317, 0.0416292995, 8.73469972E-8)
  o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o14.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o14.Position = Vector3.new(9.4248724, 11.4241877, 10.4690952)
  o15.Parent = o14
  o15.Scale = Vector3.new(0.0972801968, 1, 0.499999493)
  o15.MeshType = Enum.MeshType.Wedge
  o16.Parent = o1
  o16.Material = Enum.Material.Metal
  o16.BrickColor = BrickColor.new("Pearl")
  o16.Position = Vector3.new(9.57513428, 11.4241877, 10.4690952)
  o16.Rotation = Vector3.new(2.3858726, -90, 0)
  o16.Anchored = true
  o16.CanCollide = false
  o16.Size = Vector3.new(0.308925033, 0.721885383, 0.308925003)
  o16.CFrame = CFrame.new(9.57513428, 11.4241877, 10.4690952, -1.66824151E-7, 1.99311262E-6, -1, -0.0416292995, 0.99913317, 1.99832948E-6, 0.99913317, 0.0416292995, -8.37076541E-8)
  o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o16.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o16.Position = Vector3.new(9.57513428, 11.4241877, 10.4690952)
  o17.Parent = o16
  o17.Scale = Vector3.new(0.0972801968, 1, 0.500001907)
  o17.MeshType = Enum.MeshType.Wedge
  o18.Parent = o1
  o18.Material = Enum.Material.Metal
  o18.BrickColor = BrickColor.new("Fossil")
  o18.Position = Vector3.new(9.7253933, 10.1175337, 10.5000019)
  o18.Rotation = Vector3.new(0, 0, 89.9999008)
  o18.Anchored = true
  o18.CanCollide = false
  o18.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o18.CFrame = CFrame.new(9.7253933, 10.1175337, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o18.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o18.Position = Vector3.new(9.7253933, 10.1175337, 10.5000019)
  o19.Parent = o18
  o19.Scale = Vector3.new(0.291840583, 0.486401021, 0.39999944)
  o19.MeshType = Enum.MeshType.Brick
  o20.Parent = o1
  o20.Material = Enum.Material.Metal
  o20.BrickColor = BrickColor.new("Fossil")
  o20.Position = Vector3.new(9.7253933, 10.1175337, 10.6081247)
  o20.Rotation = Vector3.new(-179.999954, -2.68632783E-10, -89.9999161)
  o20.Anchored = true
  o20.CanCollide = false
  o20.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o20.CFrame = CFrame.new(9.7253933, 10.1175337, 10.6081247, 1.46029845E-6, 1, -4.68852648E-12, 1, -1.46029845E-6, 9.23857442E-7, 9.23857442E-7, -6.0376335E-12, -1)
  o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o20.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o20.Position = Vector3.new(9.7253933, 10.1175337, 10.6081247)
  o21.Parent = o20
  o21.Scale = Vector3.new(0.291840583, 0.486401021, 0.299999535)
  o21.MeshType = Enum.MeshType.Wedge
  o22.Parent = o1
  o22.Material = Enum.Material.Sand
  o22.BrickColor = BrickColor.new("Sunrise")
  o22.Position = Vector3.new(9.57513332, 9.59913445, 10.4227705)
  o22.Rotation = Vector3.new(0, 0, 89.9999008)
  o22.Anchored = true
  o22.CanCollide = false
  o22.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o22.CFrame = CFrame.new(9.57513332, 9.59913445, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o22.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o22.Position = Vector3.new(9.57513332, 9.59913445, 10.4227705)
  o23.Parent = o22
  o23.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o23.MeshType = Enum.MeshType.Cylinder
  o24.Parent = o1
  o24.Material = Enum.Material.Sand
  o24.BrickColor = BrickColor.new("Lilac")
  o24.Position = Vector3.new(9.57513332, 9.48643684, 10.4227705)
  o24.Rotation = Vector3.new(0, 0, 89.9999008)
  o24.Anchored = true
  o24.CanCollide = false
  o24.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o24.CFrame = CFrame.new(9.57513332, 9.48643684, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o24.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o24.Position = Vector3.new(9.57513332, 9.48643684, 10.4227705)
  o25.Parent = o24
  o25.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o25.MeshType = Enum.MeshType.Cylinder
  o26.Parent = o1
  o26.Material = Enum.Material.Sand
  o26.BrickColor = BrickColor.new("Sunrise")
  o26.Position = Vector3.new(9.42487049, 9.3737402, 10.4227705)
  o26.Rotation = Vector3.new(0, 0, 89.9999008)
  o26.Anchored = true
  o26.CanCollide = false
  o26.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o26.CFrame = CFrame.new(9.42487049, 9.3737402, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o26.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o26.Position = Vector3.new(9.42487049, 9.3737402, 10.4227705)
  o27.Parent = o26
  o27.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o27.MeshType = Enum.MeshType.Cylinder
  o28.Parent = o1
  o28.Material = Enum.Material.Sand
  o28.BrickColor = BrickColor.new("Lilac")
  o28.Position = Vector3.new(9.42487049, 9.2610445, 10.4227705)
  o28.Rotation = Vector3.new(0, 0, 89.9999008)
  o28.Anchored = true
  o28.CanCollide = false
  o28.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o28.CFrame = CFrame.new(9.42487049, 9.2610445, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o28.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o28.Position = Vector3.new(9.42487049, 9.2610445, 10.4227705)
  o29.Parent = o28
  o29.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o29.MeshType = Enum.MeshType.Cylinder
  o30.Parent = o1
  o30.Material = Enum.Material.Sand
  o30.BrickColor = BrickColor.new("Sunrise")
  o30.Position = Vector3.new(9.42487049, 9.82452583, 10.4227705)
  o30.Rotation = Vector3.new(0, 0, 89.9999008)
  o30.Anchored = true
  o30.CanCollide = false
  o30.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o30.CFrame = CFrame.new(9.42487049, 9.82452583, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o30.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o30.Position = Vector3.new(9.42487049, 9.82452583, 10.4227705)
  o31.Parent = o30
  o31.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o31.MeshType = Enum.MeshType.Cylinder
  o32.Parent = o1
  o32.Material = Enum.Material.Sand
  o32.BrickColor = BrickColor.new("Lilac")
  o32.Position = Vector3.new(9.42487049, 9.48643684, 10.4227705)
  o32.Rotation = Vector3.new(0, 0, 89.9999008)
  o32.Anchored = true
  o32.CanCollide = false
  o32.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o32.CFrame = CFrame.new(9.42487049, 9.48643684, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o32.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o32.Position = Vector3.new(9.42487049, 9.48643684, 10.4227705)
  o33.Parent = o32
  o33.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o33.MeshType = Enum.MeshType.Cylinder
  o34.Parent = o1
  o34.Material = Enum.Material.Sand
  o34.BrickColor = BrickColor.new("Lilac")
  o34.Position = Vector3.new(9.42487049, 9.71183014, 10.4227705)
  o34.Rotation = Vector3.new(0, 0, 89.9999008)
  o34.Anchored = true
  o34.CanCollide = false
  o34.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o34.CFrame = CFrame.new(9.42487049, 9.71183014, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o34.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o34.Position = Vector3.new(9.42487049, 9.71183014, 10.4227705)
  o35.Parent = o34
  o35.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o35.MeshType = Enum.MeshType.Cylinder
  o36.Parent = o1
  o36.Material = Enum.Material.Sand
  o36.BrickColor = BrickColor.new("Sunrise")
  o36.Position = Vector3.new(9.42487049, 9.59913445, 10.4227705)
  o36.Rotation = Vector3.new(0, 0, 89.9999008)
  o36.Anchored = true
  o36.CanCollide = false
  o36.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o36.CFrame = CFrame.new(9.42487049, 9.59913445, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o36.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o36.Position = Vector3.new(9.42487049, 9.59913445, 10.4227705)
  o37.Parent = o36
  o37.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o37.MeshType = Enum.MeshType.Cylinder
  o38.Parent = o1
  o38.Material = Enum.Material.Sand
  o38.BrickColor = BrickColor.new("Lilac")
  o38.Position = Vector3.new(9.42487049, 9.48643684, 10.5772333)
  o38.Rotation = Vector3.new(0, 0, 89.9999008)
  o38.Anchored = true
  o38.CanCollide = false
  o38.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o38.CFrame = CFrame.new(9.42487049, 9.48643684, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o38.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o38.Position = Vector3.new(9.42487049, 9.48643684, 10.5772333)
  o39.Parent = o38
  o39.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o39.MeshType = Enum.MeshType.Cylinder
  o40.Parent = o1
  o40.Material = Enum.Material.Sand
  o40.BrickColor = BrickColor.new("Lilac")
  o40.Position = Vector3.new(9.42487049, 9.93722153, 10.4227705)
  o40.Rotation = Vector3.new(0, 0, 89.9999008)
  o40.Anchored = true
  o40.CanCollide = false
  o40.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o40.CFrame = CFrame.new(9.42487049, 9.93722153, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o40.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o40.Position = Vector3.new(9.42487049, 9.93722153, 10.4227705)
  o41.Parent = o40
  o41.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o41.MeshType = Enum.MeshType.Cylinder
  o42.Parent = o1
  o42.Material = Enum.Material.Sand
  o42.BrickColor = BrickColor.new("Lilac")
  o42.Position = Vector3.new(9.42487049, 9.2610445, 10.5772333)
  o42.Rotation = Vector3.new(0, 0, 89.9999008)
  o42.Anchored = true
  o42.CanCollide = false
  o42.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o42.CFrame = CFrame.new(9.42487049, 9.2610445, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o42.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o42.Position = Vector3.new(9.42487049, 9.2610445, 10.5772333)
  o43.Parent = o42
  o43.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o43.MeshType = Enum.MeshType.Cylinder
  o44.Parent = o1
  o44.Material = Enum.Material.Sand
  o44.BrickColor = BrickColor.new("Sunrise")
  o44.Position = Vector3.new(9.42487049, 9.3737402, 10.5772333)
  o44.Rotation = Vector3.new(0, 0, 89.9999008)
  o44.Anchored = true
  o44.CanCollide = false
  o44.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o44.CFrame = CFrame.new(9.42487049, 9.3737402, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o44.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o44.Position = Vector3.new(9.42487049, 9.3737402, 10.5772333)
  o45.Parent = o44
  o45.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o45.MeshType = Enum.MeshType.Cylinder
  o46.Parent = o1
  o46.Material = Enum.Material.Sand
  o46.BrickColor = BrickColor.new("Sunrise")
  o46.Position = Vector3.new(9.42487049, 9.59913445, 10.5772333)
  o46.Rotation = Vector3.new(0, 0, 89.9999008)
  o46.Anchored = true
  o46.CanCollide = false
  o46.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o46.CFrame = CFrame.new(9.42487049, 9.59913445, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o46.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o46.Position = Vector3.new(9.42487049, 9.59913445, 10.5772333)
  o47.Parent = o46
  o47.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o47.MeshType = Enum.MeshType.Cylinder
  o48.Parent = o1
  o48.Material = Enum.Material.Sand
  o48.BrickColor = BrickColor.new("Sunrise")
  o48.Position = Vector3.new(9.42487049, 9.82452583, 10.5772333)
  o48.Rotation = Vector3.new(0, 0, 89.9999008)
  o48.Anchored = true
  o48.CanCollide = false
  o48.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o48.CFrame = CFrame.new(9.42487049, 9.82452583, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o48.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o48.Position = Vector3.new(9.42487049, 9.82452583, 10.5772333)
  o49.Parent = o48
  o49.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o49.MeshType = Enum.MeshType.Cylinder
  o50.Parent = o1
  o50.Material = Enum.Material.Sand
  o50.BrickColor = BrickColor.new("Lilac")
  o50.Position = Vector3.new(9.42487049, 9.71183014, 10.5772333)
  o50.Rotation = Vector3.new(0, 0, 89.9999008)
  o50.Anchored = true
  o50.CanCollide = false
  o50.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o50.CFrame = CFrame.new(9.42487049, 9.71183014, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o50.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o50.Position = Vector3.new(9.42487049, 9.71183014, 10.5772333)
  o51.Parent = o50
  o51.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o51.MeshType = Enum.MeshType.Cylinder
  o52.Parent = o1
  o52.Material = Enum.Material.Sand
  o52.BrickColor = BrickColor.new("Lilac")
  o52.Position = Vector3.new(9.42487049, 9.93722153, 10.5772333)
  o52.Rotation = Vector3.new(0, 0, 89.9999008)
  o52.Anchored = true
  o52.CanCollide = false
  o52.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o52.CFrame = CFrame.new(9.42487049, 9.93722153, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o52.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o52.Position = Vector3.new(9.42487049, 9.93722153, 10.5772333)
  o53.Parent = o52
  o53.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o53.MeshType = Enum.MeshType.Cylinder
  o54.Parent = o1
  o54.Material = Enum.Material.Metal
  o54.BrickColor = BrickColor.new("Fossil")
  o54.Position = Vector3.new(9.87565517, 10.1175337, 10.5000019)
  o54.Rotation = Vector3.new(0, 0, 89.9999008)
  o54.Anchored = true
  o54.CanCollide = false
  o54.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o54.CFrame = CFrame.new(9.87565517, 10.1175337, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o54.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o54.Position = Vector3.new(9.87565517, 10.1175337, 10.5000019)
  o55.Parent = o54
  o55.Scale = Vector3.new(0.291840583, 0.486401021, 0.39999944)
  o55.MeshType = Enum.MeshType.Brick
  o56.Parent = o1
  o56.Material = Enum.Material.Metal
  o56.BrickColor = BrickColor.new("Pearl")
  o56.Position = Vector3.new(9.50000191, 10.6133986, 10.5000019)
  o56.Rotation = Vector3.new(0, 0, 89.9999008)
  o56.Anchored = true
  o56.CanCollide = false
  o56.Size = Vector3.new(0.90156883, 0.308925033, 0.308925003)
  o56.CFrame = CFrame.new(9.50000191, 10.6133986, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o56.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o56.Position = Vector3.new(9.50000191, 10.6133986, 10.5000019)
  o57.Parent = o56
  o57.Scale = Vector3.new(1, 0.972802103, 0.39999944)
  o57.MeshType = Enum.MeshType.Brick
  o58.Parent = o1
  o58.Material = Enum.Material.Metal
  o58.BrickColor = BrickColor.new("Pearl")
  o58.Position = Vector3.new(9.7253952, 10.6133986, 10.5000019)
  o58.Rotation = Vector3.new(0, 0, 89.9999008)
  o58.Anchored = true
  o58.CanCollide = false
  o58.Size = Vector3.new(0.901568711, 0.308925033, 0.308925003)
  o58.CFrame = CFrame.new(9.7253952, 10.6133986, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o58.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o58.Position = Vector3.new(9.7253952, 10.6133986, 10.5000019)
  o59.Parent = o58
  o59.Scale = Vector3.new(1, 0.486401021, 0.199999735)
  o59.MeshType = Enum.MeshType.Brick
  o60.Parent = o1
  o60.Material = Enum.Material.Metal
  o60.BrickColor = BrickColor.new("Pearl")
  o60.Position = Vector3.new(9.27461052, 10.6133986, 10.5000019)
  o60.Rotation = Vector3.new(0, 0, 89.9999008)
  o60.Anchored = true
  o60.CanCollide = false
  o60.Size = Vector3.new(0.901568711, 0.308925033, 0.308925003)
  o60.CFrame = CFrame.new(9.27461052, 10.6133986, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o60.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o60.Position = Vector3.new(9.27461052, 10.6133986, 10.5000019)
  o61.Parent = o60
  o61.Scale = Vector3.new(1, 0.486401021, 0.19999972)
  o61.MeshType = Enum.MeshType.Brick
  o62.Parent = o1
  o62.Material = Enum.Material.Metal
  o62.BrickColor = BrickColor.new("Pearl")
  o62.Position = Vector3.new(9.7253952, 10.6133976, 10.54634)
  o62.Rotation = Vector3.new(-179.999954, -2.68632783E-10, -89.9999161)
  o62.Anchored = true
  o62.CanCollide = false
  o62.Size = Vector3.new(0.901568711, 0.308925033, 0.308925003)
  o62.CFrame = CFrame.new(9.7253952, 10.6133976, 10.54634, 1.46029845E-6, 1, -4.68852648E-12, 1, -1.46029845E-6, 9.23857442E-7, 9.23857442E-7, -6.0376335E-12, -1)
  o62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o62.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o62.Position = Vector3.new(9.7253952, 10.6133976, 10.54634)
  o63.Parent = o62
  o63.Scale = Vector3.new(1, 0.486401021, 0.0999998599)
  o63.MeshType = Enum.MeshType.Wedge
  o64.Parent = o1
  o64.Material = Enum.Material.Metal
  o64.BrickColor = BrickColor.new("Pearl")
  o64.Position = Vector3.new(9.27460861, 10.6133976, 10.4536638)
  o64.Rotation = Vector3.new(0, 0, 90)
  o64.Anchored = true
  o64.CanCollide = false
  o64.Size = Vector3.new(0.901568711, 0.308925033, 0.308925003)
  o64.CFrame = CFrame.new(9.27460861, 10.6133976, 10.4536638, 0, -1, 0, 1, 0, 0, 0, 0, 1)
  o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o64.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o64.Position = Vector3.new(9.27460861, 10.6133976, 10.4536638)
  o65.Parent = o64
  o65.Scale = Vector3.new(1, 0.486401021, 0.0999998599)
  o65.MeshType = Enum.MeshType.Wedge
  o66.Parent = o1
  o66.Material = Enum.Material.Metal
  o66.BrickColor = BrickColor.new("Pearl")
  o66.Position = Vector3.new(9.7253933, 10.6133976, 10.4536638)
  o66.Rotation = Vector3.new(0, 0, -90)
  o66.Anchored = true
  o66.CanCollide = false
  o66.Size = Vector3.new(0.901568711, 0.308925033, 0.308925003)
  o66.CFrame = CFrame.new(9.7253933, 10.6133976, 10.4536638, 0, 1, 0, -1, 0, 0, 0, 0, 1)
  o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o66.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o66.Position = Vector3.new(9.7253933, 10.6133976, 10.4536638)
  o67.Parent = o66
  o67.Scale = Vector3.new(1, 0.486401021, 0.0999998599)
  o67.MeshType = Enum.MeshType.Wedge
  o68.Parent = o1
  o68.Material = Enum.Material.Metal
  o68.BrickColor = BrickColor.new("Fossil")
  o68.Position = Vector3.new(9.12434864, 10.1175337, 10.5000019)
  o68.Rotation = Vector3.new(0, 0, 89.9999008)
  o68.Anchored = true
  o68.CanCollide = false
  o68.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o68.CFrame = CFrame.new(9.12434864, 10.1175337, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o68.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o68.Position = Vector3.new(9.12434864, 10.1175337, 10.5000019)
  o69.Parent = o68
  o69.Scale = Vector3.new(0.291840583, 0.486401021, 0.39999944)
  o69.MeshType = Enum.MeshType.Brick
  o70.Parent = o1
  o70.Material = Enum.Material.Metal
  o70.BrickColor = BrickColor.new("Pearl")
  o70.Position = Vector3.new(9.57513142, 11.4241877, 10.5302076)
  o70.Rotation = Vector3.new(-2.38585591, -90, 0)
  o70.Anchored = true
  o70.CanCollide = false
  o70.Size = Vector3.new(0.308925033, 0.721885383, 0.308925003)
  o70.CFrame = CFrame.new(9.57513142, 11.4241877, 10.5302076, 0, 0, -1, 0.0416290127, 0.999133229, 0, 0.999133229, -0.0416290127, 0)
  o70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o70.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o70.Position = Vector3.new(9.57513142, 11.4241877, 10.5302076)
  o71.Parent = o70
  o71.Scale = Vector3.new(0.0972801968, 1, 0.499999493)
  o71.MeshType = Enum.MeshType.Wedge
  o72.Parent = o1
  o72.Material = Enum.Material.Metal
  o72.BrickColor = BrickColor.new("Pearl")
  o72.Position = Vector3.new(9.5721941, 11.4235878, 10.5305443)
  o72.Rotation = Vector3.new(90.0000687, 22.6198883, 77.7747879)
  o72.Anchored = true
  o72.CanCollide = false
  o72.Size = Vector3.new(0.308925033, 0.308925033, 0.743802428)
  o72.CFrame = CFrame.new(9.5721941, 11.4235878, 10.5305443, 0.195465967, -0.902144015, 0.384615749, 0.0814429894, -0.37589401, -0.923076808, 0.977322876, 0.211754352, -1.18399169E-6)
  o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o72.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o72.Position = Vector3.new(9.5721941, 11.4235878, 10.5305443)
  o73.Parent = o72
  o73.Scale = Vector3.new(0.0972801968, 0.459406942, 1)
  o73.MeshType = Enum.MeshType.Wedge
  o74.Parent = o1
  o74.Material = Enum.Material.Metal
  o74.BrickColor = BrickColor.new("Pearl")
  o74.Position = Vector3.new(9.42780685, 11.4235897, 10.5305443)
  o74.Rotation = Vector3.new(90.000061, -22.6196823, -77.7748642)
  o74.Anchored = true
  o74.CanCollide = false
  o74.Size = Vector3.new(0.308925033, 0.308925033, 0.743801713)
  o74.CFrame = CFrame.new(9.42780685, 11.4235897, 10.5305443, 0.195465043, 0.902145624, -0.384612441, -0.0814420208, -0.375890821, -0.923078239, -0.977323234, 0.211753115, -9.59232921E-7)
  o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o74.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o74.Position = Vector3.new(9.42780685, 11.4235897, 10.5305443)
  o75.Parent = o74
  o75.Scale = Vector3.new(0.0972801968, 0.459412366, 1)
  o75.MeshType = Enum.MeshType.Wedge
  o76.Parent = o1
  o76.Material = Enum.Material.Metal
  o76.BrickColor = BrickColor.new("Pearl")
  o76.Position = Vector3.new(9.27754593, 11.0629578, 10.5305433)
  o76.Rotation = Vector3.new(-89.999939, 22.6196823, -102.225136)
  o76.Anchored = true
  o76.CanCollide = false
  o76.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o76.CFrame = CFrame.new(9.27754593, 11.0629578, 10.5305433, -0.195465043, 0.902145624, 0.384612441, 0.0814420208, -0.375890821, 0.923078239, 0.977323234, 0.211753115, 9.59232921E-7)
  o76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o76.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o76.Position = Vector3.new(9.27754593, 11.0629578, 10.5305433)
  o77.Parent = o76
  o77.Scale = Vector3.new(0.0972801968, 0.459412366, 0.192309767)
  o77.MeshType = Enum.MeshType.Wedge
  o78.Parent = o1
  o78.Material = Enum.Material.Metal
  o78.BrickColor = BrickColor.new("Pearl")
  o78.Position = Vector3.new(9.72245789, 11.0629578, 10.5305433)
  o78.Rotation = Vector3.new(-89.9999313, -22.6198883, 102.225212)
  o78.Anchored = true
  o78.CanCollide = false
  o78.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o78.CFrame = CFrame.new(9.72245789, 11.0629578, 10.5305433, -0.195465967, -0.902144015, -0.384615749, -0.0814429894, -0.37589401, 0.923076808, -0.977322876, 0.211754352, 1.18399169E-6)
  o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o78.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o78.Position = Vector3.new(9.72245789, 11.0629578, 10.5305433)
  o79.Parent = o78
  o79.Scale = Vector3.new(0.0972801968, 0.459406942, 0.19230932)
  o79.MeshType = Enum.MeshType.Wedge
  o80.Parent = o1
  o80.Material = Enum.Material.Metal
  o80.BrickColor = BrickColor.new("Pearl")
  o80.Position = Vector3.new(9.42486763, 11.4241877, 10.5302076)
  o80.Rotation = Vector3.new(-2.38585591, 90, 0)
  o80.Anchored = true
  o80.CanCollide = false
  o80.Size = Vector3.new(0.308925033, 0.721885383, 0.308925003)
  o80.CFrame = CFrame.new(9.42486763, 11.4241877, 10.5302076, 0, 0, 1, -0.0416290127, 0.999133229, 0, -0.999133229, -0.0416290127, 0)
  o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o80.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o80.Position = Vector3.new(9.42486763, 11.4241877, 10.5302076)
  o81.Parent = o80
  o81.Scale = Vector3.new(0.0972801968, 1, 0.500001907)
  o81.MeshType = Enum.MeshType.Wedge
  o82.Parent = o1
  o82.Material = Enum.Material.Sand
  o82.BrickColor = BrickColor.new("Sunrise")
  o82.Position = Vector3.new(9.57513332, 9.82452583, 10.4227705)
  o82.Rotation = Vector3.new(0, 0, 89.9999008)
  o82.Anchored = true
  o82.CanCollide = false
  o82.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o82.CFrame = CFrame.new(9.57513332, 9.82452583, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o82.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o82.Position = Vector3.new(9.57513332, 9.82452583, 10.4227705)
  o83.Parent = o82
  o83.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o83.MeshType = Enum.MeshType.Cylinder
  o84.Parent = o1
  o84.Material = Enum.Material.Sand
  o84.BrickColor = BrickColor.new("Lilac")
  o84.Position = Vector3.new(9.57513332, 9.71183014, 10.4227705)
  o84.Rotation = Vector3.new(0, 0, 89.9999008)
  o84.Anchored = true
  o84.CanCollide = false
  o84.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o84.CFrame = CFrame.new(9.57513332, 9.71183014, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o84.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o84.Position = Vector3.new(9.57513332, 9.71183014, 10.4227705)
  o85.Parent = o84
  o85.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o85.MeshType = Enum.MeshType.Cylinder
  o86.Parent = o1
  o86.Material = Enum.Material.Metal
  o86.BrickColor = BrickColor.new("Fossil")
  o86.Position = Vector3.new(8.97408676, 10.1175337, 10.4227705)
  o86.Rotation = Vector3.new(9.75009287E-4, -1.38743428E-9, 89.9998703)
  o86.Anchored = true
  o86.CanCollide = false
  o86.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o86.CFrame = CFrame.new(8.97408676, 10.1175337, 10.4227705, 2.29477951E-6, -1, -2.42152964E-11, 1.00000262, 2.29477314E-6, -1.70171261E-5, 1.6450882E-5, 1.16878295E-11, 1.00000024)
  o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o86.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o86.Position = Vector3.new(8.97408676, 10.1175337, 10.4227705)
  o87.Parent = o86
  o87.Scale = Vector3.new(0.291840583, 0.486401021, 0.299999535)
  o87.MeshType = Enum.MeshType.Wedge
  o88.Parent = o1
  o88.Material = Enum.Material.Metal
  o88.BrickColor = BrickColor.new("Pearl")
  o88.Position = Vector3.new(9.27461052, 10.6133976, 10.54634)
  o88.Rotation = Vector3.new(-179.999954, -8.61036686E-10, 90.0001297)
  o88.Anchored = true
  o88.CanCollide = false
  o88.Size = Vector3.new(0.901568711, 0.308925033, 0.308925003)
  o88.CFrame = CFrame.new(9.27461052, 10.6133976, 10.54634, -2.29477882E-6, -1.00000107, -1.50279251E-11, -1.00000107, 2.29477882E-6, 9.23854657E-7, -9.23857328E-7, 1.72093451E-11, -1)
  o88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o88.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o88.Position = Vector3.new(9.27461052, 10.6133976, 10.54634)
  o89.Parent = o88
  o89.Scale = Vector3.new(1, 0.486401021, 0.0999998599)
  o89.MeshType = Enum.MeshType.Wedge
  o90.Parent = o1
  o90.Material = Enum.Material.Sand
  o90.BrickColor = BrickColor.new("Lilac")
  o90.Position = Vector3.new(9.57513332, 9.93722153, 10.4227705)
  o90.Rotation = Vector3.new(0, 0, 89.9999008)
  o90.Anchored = true
  o90.CanCollide = false
  o90.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o90.CFrame = CFrame.new(9.57513332, 9.93722153, 10.4227705, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o90.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o90.Position = Vector3.new(9.57513332, 9.93722153, 10.4227705)
  o91.Parent = o90
  o91.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o91.MeshType = Enum.MeshType.Cylinder
  o92.Parent = o1
  o92.Material = Enum.Material.Sand
  o92.BrickColor = BrickColor.new("Lilac")
  o92.Position = Vector3.new(9.57513332, 9.2610445, 10.5772333)
  o92.Rotation = Vector3.new(0, 0, 89.9999008)
  o92.Anchored = true
  o92.CanCollide = false
  o92.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o92.CFrame = CFrame.new(9.57513332, 9.2610445, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o92.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o92.Position = Vector3.new(9.57513332, 9.2610445, 10.5772333)
  o93.Parent = o92
  o93.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o93.MeshType = Enum.MeshType.Cylinder
  o94.Parent = o1
  o94.Material = Enum.Material.Sand
  o94.BrickColor = BrickColor.new("Sunrise")
  o94.Position = Vector3.new(9.57513332, 9.3737402, 10.5772333)
  o94.Rotation = Vector3.new(0, 0, 89.9999008)
  o94.Anchored = true
  o94.CanCollide = false
  o94.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o94.CFrame = CFrame.new(9.57513332, 9.3737402, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o94.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o94.Position = Vector3.new(9.57513332, 9.3737402, 10.5772333)
  o95.Parent = o94
  o95.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o95.MeshType = Enum.MeshType.Cylinder
  o96.Parent = o1
  o96.Material = Enum.Material.Sand
  o96.BrickColor = BrickColor.new("Sunrise")
  o96.Position = Vector3.new(9.57513332, 9.59913445, 10.5772333)
  o96.Rotation = Vector3.new(0, 0, 89.9999008)
  o96.Anchored = true
  o96.CanCollide = false
  o96.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o96.CFrame = CFrame.new(9.57513332, 9.59913445, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o96.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o96.Position = Vector3.new(9.57513332, 9.59913445, 10.5772333)
  o97.Parent = o96
  o97.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o97.MeshType = Enum.MeshType.Cylinder
  o98.Parent = o1
  o98.Material = Enum.Material.Sand
  o98.BrickColor = BrickColor.new("Lilac")
  o98.Position = Vector3.new(9.57513332, 9.48643684, 10.5772333)
  o98.Rotation = Vector3.new(0, 0, 89.9999008)
  o98.Anchored = true
  o98.CanCollide = false
  o98.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o98.CFrame = CFrame.new(9.57513332, 9.48643684, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o98.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o98.Position = Vector3.new(9.57513332, 9.48643684, 10.5772333)
  o99.Parent = o98
  o99.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o99.MeshType = Enum.MeshType.Cylinder
  o100.Parent = o1
  o100.Material = Enum.Material.Sand
  o100.BrickColor = BrickColor.new("Lilac")
  o100.Position = Vector3.new(9.57513332, 9.71183014, 10.5772333)
  o100.Rotation = Vector3.new(0, 0, 89.9999008)
  o100.Anchored = true
  o100.CanCollide = false
  o100.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o100.CFrame = CFrame.new(9.57513332, 9.71183014, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o100.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o100.Position = Vector3.new(9.57513332, 9.71183014, 10.5772333)
  o101.Parent = o100
  o101.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o101.MeshType = Enum.MeshType.Cylinder
  o102.Parent = o1
  o102.Material = Enum.Material.Sand
  o102.BrickColor = BrickColor.new("Sunrise")
  o102.Position = Vector3.new(9.57513332, 9.82452583, 10.5772333)
  o102.Rotation = Vector3.new(0, 0, 89.9999008)
  o102.Anchored = true
  o102.CanCollide = false
  o102.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o102.CFrame = CFrame.new(9.57513332, 9.82452583, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o102.Color = Color3.new(0.831373, 0.564706, 0.741176)
  o102.Position = Vector3.new(9.57513332, 9.82452583, 10.5772333)
  o103.Parent = o102
  o103.Scale = Vector3.new(0.243200496, 0.486401081, 0.39999944)
  o103.MeshType = Enum.MeshType.Cylinder
  o104.Parent = o1
  o104.Material = Enum.Material.Sand
  o104.BrickColor = BrickColor.new("Lilac")
  o104.Position = Vector3.new(9.57513332, 9.93722153, 10.5772333)
  o104.Rotation = Vector3.new(0, 0, 89.9999008)
  o104.Anchored = true
  o104.CanCollide = false
  o104.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o104.CFrame = CFrame.new(9.57513332, 9.93722153, 10.5772333, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o104.Color = Color3.new(0.654902, 0.368627, 0.607843)
  o104.Position = Vector3.new(9.57513332, 9.93722153, 10.5772333)
  o105.Parent = o104
  o105.Scale = Vector3.new(0.486400992, 0.486401081, 0.499999285)
  o105.MeshType = Enum.MeshType.Cylinder
  o106.Parent = o1
  o106.Material = Enum.Material.Metal
  o106.BrickColor = BrickColor.new("Fossil")
  o106.Position = Vector3.new(9.27460861, 10.1175337, 10.3918791)
  o106.Rotation = Vector3.new(0, 0, 90)
  o106.Anchored = true
  o106.CanCollide = false
  o106.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o106.CFrame = CFrame.new(9.27460861, 10.1175337, 10.3918791, 0, -1, 0, 1, 0, 0, 0, 0, 1)
  o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o106.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o106.Position = Vector3.new(9.27460861, 10.1175337, 10.3918791)
  o107.Parent = o106
  o107.Scale = Vector3.new(0.291840583, 0.486401021, 0.299999535)
  o107.MeshType = Enum.MeshType.Wedge
  o108.Parent = o1
  o108.Material = Enum.Material.Metal
  o108.BrickColor = BrickColor.new("Fossil")
  o108.Position = Vector3.new(9.7253933, 10.1175337, 10.3918791)
  o108.Rotation = Vector3.new(0, 0, -90)
  o108.Anchored = true
  o108.CanCollide = false
  o108.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o108.CFrame = CFrame.new(9.7253933, 10.1175337, 10.3918791, 0, 1, 0, -1, 0, 0, 0, 0, 1)
  o108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o108.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o108.Position = Vector3.new(9.7253933, 10.1175337, 10.3918791)
  o109.Parent = o108
  o109.Scale = Vector3.new(0.291840583, 0.486401021, 0.299999535)
  o109.MeshType = Enum.MeshType.Wedge
  o110.Parent = o1
  o110.Material = Enum.Material.Metal
  o110.BrickColor = BrickColor.new("Fossil")
  o110.Position = Vector3.new(10.0259171, 10.1175337, 10.4227705)
  o110.Rotation = Vector3.new(-9.16732475E-4, 0, -90)
  o110.Anchored = true
  o110.CanCollide = false
  o110.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o110.CFrame = CFrame.new(10.0259171, 10.1175337, 10.4227705, 0, 1, 0, -1, 0, 1.6E-5, 1.6E-5, 0, 1)
  o110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o110.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o110.Position = Vector3.new(10.0259171, 10.1175337, 10.4227705)
  o111.Parent = o110
  o111.Scale = Vector3.new(0.291840583, 0.486401021, 0.299999535)
  o111.MeshType = Enum.MeshType.Wedge
  o112.Parent = o1
  o112.Material = Enum.Material.Metal
  o112.BrickColor = BrickColor.new("Fossil")
  o112.Position = Vector3.new(10.0259171, 10.1175337, 10.5772333)
  o112.Rotation = Vector3.new(-180, 0, -90)
  o112.Anchored = true
  o112.CanCollide = false
  o112.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o112.CFrame = CFrame.new(10.0259171, 10.1175337, 10.5772333, 0, 1, 0, 1, 0, 0, 0, 0, -1)
  o112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o112.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o112.Position = Vector3.new(10.0259171, 10.1175337, 10.5772333)
  o113.Parent = o112
  o113.Scale = Vector3.new(0.291840583, 0.486401021, 0.299999535)
  o113.MeshType = Enum.MeshType.Wedge
  daggerHandle.Name = "Handle"
  daggerHandle.Parent = o1
  daggerHandle.Material = Enum.Material.Sand
  daggerHandle.BrickColor = BrickColor.new("Sunrise")
  daggerHandle.Position = Vector3.new(9.5, 10.0424032, 10.5000019)
  daggerHandle.Rotation = Vector3.new(0, 0, 89.9999008)
  daggerHandle.Anchored = true
  daggerHandle.CanCollide = false
  daggerHandle.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  daggerHandle.CFrame = CFrame.new(9.5, 10.0424032, 10.5000019, 1.77323818E-6, -1.0000025, 0, 1.0000025, 1.77323818E-6, 0, 0, 0, 1)
  daggerHandle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  daggerHandle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  daggerHandle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  daggerHandle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  daggerHandle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  daggerHandle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  daggerHandle.Color = Color3.new(0.831373, 0.564706, 0.741176)
  daggerHandle.Position = Vector3.new(9.5, 10.0424032, 10.5000019)
  o115.Parent = daggerHandle
  o115.Scale = Vector3.new(0.194560394, 0.972802103, 0.999998569)
  o115.MeshType = Enum.MeshType.Cylinder
  o116.Parent = o1
  o116.Material = Enum.Material.Metal
  o116.BrickColor = BrickColor.new("Fossil")
  o116.Position = Vector3.new(9.27460861, 10.1175337, 10.6081247)
  o116.Rotation = Vector3.new(-179.999954, -8.61036686E-10, 90.0001297)
  o116.Anchored = true
  o116.CanCollide = false
  o116.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o116.CFrame = CFrame.new(9.27460861, 10.1175337, 10.6081247, -2.29477882E-6, -1.00000107, -1.50279251E-11, -1.00000107, 2.29477882E-6, 9.23854657E-7, -9.23857328E-7, 1.72093451E-11, -1)
  o116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o116.Color = Color3.new(0.623529, 0.631373, 0.67451)
  o116.Position = Vector3.new(9.27460861, 10.1175337, 10.6081247)
  o117.Parent = o116
  o117.Scale = Vector3.new(0.291840583, 0.486401021, 0.299999535)
  o117.MeshType = Enum.MeshType.Wedge
  o118.Parent = o1
  o118.Material = Enum.Material.Metal
  o118.BrickColor = BrickColor.new("Pearl")
  o118.Position = Vector3.new(9.27754593, 11.0629578, 10.4687595)
  o118.Rotation = Vector3.new(-90.0000839, 22.6199036, -77.7748032)
  o118.Anchored = true
  o118.CanCollide = false
  o118.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o118.CFrame = CFrame.new(9.27754593, 11.0629578, 10.4687595, 0.195465684, 0.902143955, 0.384615988, -0.0814427212, -0.375894308, 0.923076749, 0.977322996, -0.211754009, -1.38773248E-6)
  o118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o118.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o118.Position = Vector3.new(9.27754593, 11.0629578, 10.4687595)
  o119.Parent = o118
  o119.Scale = Vector3.new(0.0972801968, 0.459406942, 0.19230932)
  o119.MeshType = Enum.MeshType.Wedge
  o120.Parent = o1
  o120.Material = Enum.Material.Metal
  o120.BrickColor = BrickColor.new("Pearl")
  o120.Position = Vector3.new(9.42780972, 11.4235878, 10.4687595)
  o120.Rotation = Vector3.new(89.9999161, -22.6198959, -102.225197)
  o120.Anchored = true
  o120.CanCollide = false
  o120.Size = Vector3.new(0.308925033, 0.308925033, 0.743802428)
  o120.CFrame = CFrame.new(9.42780972, 11.4235878, 10.4687595, -0.195465684, 0.902144015, -0.384615898, 0.0814427212, -0.375894219, -0.923076749, -0.977322996, -0.211754009, 1.3692204E-6)
  o120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o120.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o120.Position = Vector3.new(9.42780972, 11.4235878, 10.4687595)
  o121.Parent = o120
  o121.Scale = Vector3.new(0.0972801968, 0.459406942, 1)
  o121.MeshType = Enum.MeshType.Wedge
  o122.Parent = o1
  o122.Material = Enum.Material.Metal
  o122.BrickColor = BrickColor.new("Pearl")
  o122.Position = Vector3.new(9.57219601, 11.4235897, 10.4687595)
  o122.Rotation = Vector3.new(89.9999313, 22.6196995, 102.225166)
  o122.Anchored = true
  o122.CanCollide = false
  o122.Size = Vector3.new(0.308925033, 0.308925033, 0.743801713)
  o122.CFrame = CFrame.new(9.57219601, 11.4235897, 10.4687595, -0.195465595, -0.902145445, 0.384612709, -0.0814420581, -0.375891119, -0.92307806, 0.977323174, -0.211753651, 1.19834056E-6)
  o122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o122.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o122.Position = Vector3.new(9.57219601, 11.4235897, 10.4687595)
  o123.Parent = o122
  o123.Scale = Vector3.new(0.0972801968, 0.459412366, 1)
  o123.MeshType = Enum.MeshType.Wedge
  o124.Parent = o1
  o124.Material = Enum.Material.Metal
  o124.BrickColor = BrickColor.new("Pearl")
  o124.Position = Vector3.new(9.72245789, 11.0629578, 10.4687595)
  o124.Rotation = Vector3.new(-90.0000763, -22.6197033, 77.7748337)
  o124.Anchored = true
  o124.CanCollide = false
  o124.Size = Vector3.new(0.308925033, 0.308925033, 0.308925003)
  o124.CFrame = CFrame.new(9.72245789, 11.0629578, 10.4687595, 0.195465595, -0.902145386, -0.384612769, 0.0814420581, -0.375891209, 0.923078001, -0.977323174, -0.211753651, -1.21685264E-6)
  o124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
  o124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
  o124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
  o124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
  o124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
  o124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
  o124.Color = Color3.new(0.905882, 0.905882, 0.92549)
  o124.Position = Vector3.new(9.72245789, 11.0629578, 10.4687595)
  o125.Parent = o124
  o125.Scale = Vector3.new(0.0972801968, 0.459412366, 0.192309767)
  o125.MeshType = Enum.MeshType.Wedge
  local daggerWeld = Instance.new("Weld", ch)
  local DWC0, DWC1
  for i, v in pairs(daggerModel:GetChildren()) do
    if v:IsA("BasePart") then
      local w = Instance.new("Weld", daggerModel)
      w.Part0 = daggerHandle
      w.Part1 = v
      w.C0 = daggerHandle.CFrame:inverse()
      w.C1 = v.CFrame:inverse()
      v.Anchored = false
    end
  end
  function daggertotorso()
    daggerWeld.Part0 = tor
    daggerWeld.Part1 = daggerHandle
    daggerWeld.C1 = CFrame.new(0, -0.75, -0.65)
    daggerWeld.C0 = CFrame.Angles(0, 0, math.rad(210))
    DWC0 = daggerWeld.C0
    DWC1 = daggerWeld.C1
  end
  function daggertoRA()
    daggerWeld.Part0 = ra
    daggerWeld.Part1 = daggerHandle
    daggerWeld.C1 = CFrame.new(0, -1, 0)
    daggerWeld.C0 = CFrame.Angles(0, math.rad(90), 0)
    DWC0 = daggerWeld.C0
    DWC1 = daggerWeld.C1
  end
  daggertotorso()
  local mainGui = Instance.new("ScreenGui", plr.PlayerGui)
  mainGui.Name = "OptionsGui"
  local VanishLabel = Instance.new("TextLabel", mainGui)
  VanishLabel.Name = "fly1"
  VanishLabel.BackgroundTransparency = 0.45
  VanishLabel.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
  VanishLabel.BorderSizePixel = 0
  VanishLabel.Size = UDim2.new(0, 145, 0, 40)
  VanishLabel.Position = UDim2.new(0, -144, 0.5, -41)
  VanishLabel.Text = "F - Shadow walk"
  VanishLabel.Font = Enum.Font.SourceSansLight
  VanishLabel.FontSize = Enum.FontSize.Size24
  VanishLabel.TextColor3 = Color3.new(1, 1, 1)
  VanishLabel.TextStrokeTransparency = 0
  VanishLabel:TweenPosition(UDim2.new(0, 1, 0.5, -41), "Out", "Bounce", 1, false, nil)
  local anim = {
    idle = {priority = 1},
    walk = {priority = 1},
    descend = {priority = 2},
    jump = {priority = 3},
    hoodon = {priority = 4},
    hoodoff = {priority = 4}
  }
  local lastAnim
  local lastPriority = 0
  local speed
  local doingMove = false
  local hoodison = false
  function swait(num)
    if num == 0 or num == nil then
      game:service("RunService").RenderStepped:wait()
    else
      for i = 0, num do
        game:service("RunService").RenderStepped:wait()
      end
    end
  end
  function sound(id, vol, pitch, parent)
    local s = Instance.new("Sound", parent)
    s.SoundId = "http://www.roblox.com/asset/?id=" .. id .. ""
    s.Volume = vol
    s.Pitch = pitch
    game.Debris:AddItem(s, 10)
    s:play()
    return s
  end
  function randomFootstep()
    local x = math.random(855, 1155)
    sound(157174024, 2, x / 1000, tor)
  end
  function removeDecals(p)
    for i, v in pairs(p:GetChildren()) do
      if v.ClassName == "Decal" then
        v:Destroy()
      end
    end
  end
  local EP = Instance.new("Model", ch)
  EP.Name = "ExtraParts"
  function vignette(parent, col, mat, loop)
    for i, v in pairs(parent:GetChildren()) do
      if v:IsA("BasePart") and v ~= hood then
        do
          local c = v:clone()
          c.Parent = EP
          c.Anchored = true
          c.CanCollide = false
          c.Material = mat
          c.BrickColor = col
          c:BreakJoints()
          removeDecals(c)
          coroutine.resume(coroutine.create(function()
            for i = 1, loop do
              c.Transparency = i / loop
              swait()
            end
            c:Destroy()
          end))
        end
      end
    end
  end
  function doBrick(parent, pos, cf, size, colour, material, transparency, a, cc, bs, bts, fs, ls, rs, ts)
    local p = Instance.new("Part", parent)
    p.BrickColor = colour
    p.Material = material
    p.Transparency = transparency
    p.Anchored = a
    p.CanCollide = cc
    p.FormFactor = "Custom"
    p.Size = size
    p.BackSurface = bs
    p.BottomSurface = bts
    p.FrontSurface = fs
    p.LeftSurface = ls
    p.RightSurface = rs
    p.TopSurface = ts
    p.Position = pos
    p.CFrame = p.CFrame * cf
    return p
  end
  function doMesh(parent, meshType, meshId, scale)
    local m = Instance.new("SpecialMesh", parent)
    m.MeshType = meshType
    m.MeshId = meshId
    m.Scale = scale
    return m
  end
  function magicBrick(pos, cf, size, colour, material, transparency, a, cc, bs, bts, fs, ls, rs, ts, meshType, meshId, scale, scaleAdd, loop, loopTransparency, repeatloop, repeatLoopWait, loopCFrame)
    local cw1 = coroutine.wrap(function()
      for i = 1, repeatloop do
        do
          local x = doBrick(EP, pos, cf, size, colour, material, transparency, a, cc, bs, bts, fs, ls, rs, ts)
          local z = doMesh(x, meshType, meshId, scale)
          local cw2 = coroutine.wrap(function()
            for i = 1, loop do
              if loopTransparency then
                x.Transparency = i / loop
                z.Scale = z.Scale + scaleAdd
                x.CFrame = x.CFrame * loopCFrame
                wait()
              else
                z.Scale = z.Scale + scaleAdd
                x.CFrame = x.CFrame * loopCFrame
              end
            end
            x:Destroy()
          end)
          coroutine.resume(coroutine.create(function()
            for i = 1, repeatloop do
              cw2()
              swait(repeatLoopWait)
            end
          end))
        end
      end
    end)
    cw1()
  end
  function animate(x)
    local calledAnim = anim[x]
    if calledAnim == lastAnim then
      return
    end
    if calledAnim.priority >= lastPriority and calledAnim ~= lastAnim then
      lastAnim = calledAnim
      lastPriority = lastAnim.priority
      if calledAnim == anim.idle then
        local thisAnim = calledAnim
        speed = 0.25
        for i = 0, 0.25, 0.1 * speed do
          if lastAnim ~= thisAnim then
            break
          end
          rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(12), math.rad(13), math.rad(15)), speed)
          lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(14), math.rad(-13), math.rad(-15)), speed)
          rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(-13), math.rad(-45), math.rad(0)), speed)
          llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(13), math.rad(-45), math.rad(0)), speed)
          rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(0), math.rad(45), math.rad(0)), speed)
          neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(-13), math.rad(-45), math.rad(0)), speed)
          rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0, 0.15), speed)
          lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0.15), speed)
          rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(-0.05, -0.4, 0.2), speed)
          llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0.15, -0.35, 0.2), speed)
          rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0.4, 0), speed)
          neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), speed)
          if hoodison then
            hoodW.C0 = hoodW.C0:lerp(hoodC0 * CFrame.Angles(math.rad(-80), 0, 0), speed)
            hoodW.C1 = hoodW.C1:lerp(hoodC1 * CFrame.new(0, -0.67, -0.45), speed)
          end
          swait()
        end
        while true do
          if lastAnim ~= thisAnim then
            break
          end
          for i = 0, 0.8, 0.1 * speed do
            if lastAnim ~= thisAnim then
              break
            end
            rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(12), math.rad(13), math.rad(8)), i * speed)
            lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(14), math.rad(-13), math.rad(-8)), i * speed)
            rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(-13), math.rad(-45), math.rad(0)), i * speed)
            llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(13), math.rad(-45), math.rad(0)), i * speed)
            rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(0), math.rad(45), math.rad(0)), i * speed)
            neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(0), math.rad(-45), math.rad(0)), i * speed)
            rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0, 0.15), i * speed)
            lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0.15), i * speed)
            rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(-0.05, -0.2, 0.2), i * speed)
            llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0.15, -0.2, 0.2), i * speed)
            rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0.2, 0), i * speed)
            neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), i * speed)
            if hoodison then
              hoodW.C0 = hoodW.C0:lerp(hoodC0 * CFrame.Angles(math.rad(-80), 0, 0), speed)
              hoodW.C1 = hoodW.C1:lerp(hoodC1 * CFrame.new(0, -0.67, -0.45), speed)
            end
            swait()
          end
          for i = 0, 0.8, 0.1 * speed do
            if lastAnim ~= thisAnim then
              break
            end
            rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(12), math.rad(13), math.rad(15)), i * speed)
            lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(14), math.rad(-13), math.rad(-15)), i * speed)
            rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(-13), math.rad(-45), math.rad(0)), i * speed)
            llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(13), math.rad(-45), math.rad(0)), i * speed)
            rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(0), math.rad(45), math.rad(0)), i * speed)
            neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(-13), math.rad(-45), math.rad(0)), i * speed)
            rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0, 0.15), i * speed)
            lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0.15), i * speed)
            rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(-0.05, -0.4, 0.2), i * speed)
            llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0.15, -0.35, 0.2), i * speed)
            rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0.4, 0), i * speed)
            neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), i * speed)
            if hoodison then
              hoodW.C0 = hoodW.C0:lerp(hoodC0 * CFrame.Angles(math.rad(-80), 0, 0), speed)
              hoodW.C1 = hoodW.C1:lerp(hoodC1 * CFrame.new(0, -0.67, -0.45), speed)
            end
            swait()
          end
        end
      end
      if calledAnim == anim.walk then
        local thisAnim = calledAnim
        speed = 0.45
        while true do
          if lastAnim ~= thisAnim then
            break
          end
          for i = 0, 0.8, 0.1 * speed do
            if lastAnim ~= thisAnim then
              break
            end
            rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(-24), math.rad(13), math.rad(8)), 0.2)
            lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(-24), math.rad(-13), math.rad(-8)), 0.2)
            rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(65 + tor.RotVelocity.Y / 20), math.rad(0), -tor.RotVelocity.Y / 10), i * speed)
            llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(-45), math.rad(0), -tor.RotVelocity.Y / 10), i * speed)
            rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(-45), -tor.RotVelocity.Y / 10, math.rad(0)), i * speed)
            neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(35), math.rad(0), -tor.RotVelocity.Y / 20), i * speed)
            rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0, 0), i * speed)
            lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0), i * speed)
            rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(-0.05, 0.4, 0), i * speed)
            llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0.05, 0, 0), i * speed)
            rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0, 0), i * speed)
            neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), i * speed)
            if hoodison then
              hoodW.C0 = hoodW.C0:lerp(hoodC0 * CFrame.Angles(math.rad(-65), 0, 0), speed)
              hoodW.C1 = hoodW.C1:lerp(hoodC1 * CFrame.new(0, -0.67, -0.3), speed)
            end
            swait()
          end
          randomFootstep()
          for i = 0, 0.8, 0.1 * speed do
            if lastAnim ~= thisAnim then
              break
            end
            rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(-24), math.rad(13), math.rad(8)), 0.2)
            lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(-24), math.rad(-13), math.rad(-8)), 0.2)
            rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(-45), math.rad(0), -tor.RotVelocity.Y / 10), i * speed)
            llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(65 + tor.RotVelocity.Y / 20), math.rad(0), -tor.RotVelocity.Y / 10), i * speed)
            rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(-45), -tor.RotVelocity.Y / 10, math.rad(0)), i * speed)
            neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(35), math.rad(0), -tor.RotVelocity.Y / 20), i * speed)
            rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0, 0), i * speed)
            lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0), i * speed)
            rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(-0.05, 0, 0), i * speed)
            llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0.05, 0.4, 0), i * speed)
            rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0, 0), i * speed)
            neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), i * speed)
            if hoodison then
              hoodW.C0 = hoodW.C0:lerp(hoodC0 * CFrame.Angles(math.rad(-65), 0, 0), speed)
              hoodW.C1 = hoodW.C1:lerp(hoodC1 * CFrame.new(0, -0.67, -0.3), speed)
            end
            swait()
          end
          randomFootstep()
        end
      end
      if calledAnim == anim.jump then
        local thisAnim = calledAnim
        speed = 0.15
        for i = 0, 0.25, 0.1 * speed do
          if lastAnim ~= thisAnim then
            break
          end
          rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(24), math.rad(13), math.rad(15)), speed)
          lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(24), math.rad(-13), math.rad(-15)), speed)
          rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), speed)
          llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), speed)
          rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(-13), math.rad(0), math.rad(0)), speed)
          rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0, 0.25), speed)
          lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0.25), speed)
          rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(-0.05, -0.4, 0.2), speed)
          llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0.05, -0.4, 0.2), speed)
          rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0, 0), speed)
          neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), speed)
          swait()
        end
        lastAnim = nil
        lastPriority = 0
      end
      if calledAnim == anim.descend then
        local thisAnim = calledAnim
        speed = 0.15
        for i = 0, 0.25, 0.1 * speed do
          if lastAnim ~= thisAnim then
            break
          end
          rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(45), math.rad(13), math.rad(15)), speed)
          lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(45), math.rad(-13), math.rad(-15)), speed)
          rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), speed)
          llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), speed)
          rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(25), math.rad(0), math.rad(0)), speed)
          neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(-24), math.rad(0), math.rad(0)), speed)
          rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0, 0.25), speed)
          lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0.25), speed)
          rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(-0.05, -0.4, 0.2), speed)
          llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0.05, -0.4, 0.2), speed)
          rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0, 0), speed)
          neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), speed)
          swait()
        end
        lastAnim = nil
        lastPriority = 0
      end
      if calledAnim == anim.hoodon then
        local thisAnim = calledAnim
        speed = 0.15
        for i = 0, 0.25, 0.1 * speed do
          if lastAnim ~= thisAnim then
            break
          end
          rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(-110), math.rad(0), math.rad(-45)), speed)
          lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-8)), speed)
          rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0.2, 0), speed)
          lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0), speed)
          rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(0, 0, 0), speed)
          llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0, 0, 0), speed)
          rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0, 0), speed)
          neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), speed)
          swait()
        end
        sound(152206206, 1, 1, hood)
        sound(588735155, 1, 1, hood)
        magicBrick(Vector3.new(0, 0, 0), tor.CFrame, Vector3.new(1, 1, 1), BrickColor.new("Really black"), "Neon", 0, true, false, 10, 10, 10, 10, 10, 10, "Sphere", "", Vector3.new(2, 2, 2), Vector3.new(0.25, 0.8, 0.25), 14, true, 1, 0, CFrame.new(0, 0, 0))
        magicBrick(Vector3.new(0, 0, 0), tor.CFrame, Vector3.new(1, 1, 1), BrickColor.new("Black"), "Neon", 0, true, false, 10, 10, 10, 10, 10, 10, "Sphere", "", Vector3.new(2, 1, 2), Vector3.new(1, 2, 1), 14, true, 1, 0, CFrame.new(0, 0, 0))
        for i = 0, 0.25, 0.1 * speed do
          if lastAnim ~= thisAnim then
            break
          end
          rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-25)), speed)
          lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(-12), math.rad(0), math.rad(-16)), speed)
          rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0.2, 0), speed)
          lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0), speed)
          rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(0, 0, 0), speed)
          llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0, 0, 0), speed)
          rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0, 0), speed)
          neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), speed)
          hoodW.C0 = hoodW.C0:lerp(hoodC0 * CFrame.Angles(math.rad(-80), 0, 0), speed)
          hoodW.C1 = hoodW.C1:lerp(hoodC1 * CFrame.new(0, -0.67, -0.45), speed)
          hoodM.Scale = hoodM.Scale:lerp(hoodScale + Vector3.new(0.15, 0, 0), speed)
          swait()
        end
        lastAnim = nil
        lastPriority = 0
      end
      if calledAnim == anim.hoodoff then
        local thisAnim = calledAnim
        speed = 0.15
        for i = 0, 0.25, 0.1 * speed do
          if lastAnim ~= thisAnim then
            break
          end
          rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(190), math.rad(0), math.rad(-45)), speed)
          lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-8)), speed)
          rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0.2, 0), speed)
          lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0), speed)
          rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(0, 0, 0), speed)
          llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0, 0, 0), speed)
          rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0, 0), speed)
          neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), speed)
          swait()
        end
        sound(152206246, 1, 1, hood)
        for i = 0, 0.25, 0.1 * speed do
          if lastAnim ~= thisAnim then
            break
          end
          rm.C0 = rm.C0:lerp(rmC0 * CFrame.Angles(math.rad(-12), math.rad(0), math.rad(-25)), speed)
          lm.C0 = lm.C0:lerp(lmC0 * CFrame.Angles(math.rad(-12), math.rad(0), math.rad(-16)), speed)
          rlm.C0 = rlm.C0:lerp(rlmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          llm.C0 = llm.C0:lerp(llmC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          rj.C0 = rj.C0:lerp(rjC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          neck.C0 = neck.C0:lerp(nC0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), speed)
          rm.C1 = rm.C1:lerp(rmC1 * CFrame.new(0, 0.2, 0), speed)
          lm.C1 = lm.C1:lerp(lmC1 * CFrame.new(0, 0, 0), speed)
          rlm.C1 = rlm.C1:lerp(rlmC1 * CFrame.new(0, 0, 0), speed)
          llm.C1 = llm.C1:lerp(llmC1 * CFrame.new(0, 0, 0), speed)
          rj.C1 = rj.C1:lerp(rjC1 * CFrame.new(0, 0, 0), speed)
          neck.C1 = neck.C1:lerp(nC1 * CFrame.new(0, 0, 0), speed)
          hoodW.C0 = hoodW.C0:lerp(hoodC0 * CFrame.Angles(0, 0, 0), speed)
          hoodW.C1 = hoodW.C1:lerp(hoodC1 * CFrame.new(0, 0, 0), speed)
          hoodM.Scale = hoodM.Scale:lerp(hoodScale + Vector3.new(0, 0, 0), speed)
          swait()
        end
        lastAnim = nil
        lastPriority = 0
      end
    end
  end
  local vanished = false
  function vanish()
    head.face.Texture = ""
    hum.WalkSpeed = defWS * 2
    for i, v in pairs(ch:GetChildren()) do
      if v:IsA("BasePart") then
        coroutine.resume(coroutine.create(function()
          for i = 1, 40 do
            v.Transparency = v.Transparency + 0.025
            swait()
          end
        end))
      end
    end
    for i, v in pairs(daggerModel:GetChildren()) do
      if v:IsA("BasePart") then
        coroutine.resume(coroutine.create(function()
          for i = 1, 40 do
            v.Transparency = v.Transparency + 0.025
            swait()
          end
        end))
      end
    end
  end
  function unvanish()
    head.face.Texture = "http://www.roblox.com/asset/?id=144080495"
    hum.WalkSpeed = defWS
    for i, v in pairs(ch:GetChildren()) do
      if v:IsA("BasePart") then
        coroutine.resume(coroutine.create(function()
          for i = 1, 40 do
            v.Transparency = v.Transparency - 0.025
            swait()
          end
        end))
      end
    end
    for i, v in pairs(daggerModel:GetChildren()) do
      if v:IsA("BasePart") then
        coroutine.resume(coroutine.create(function()
          for i = 1, 40 do
            v.Transparency = v.Transparency - 0.025
            swait()
          end
        end))
      end
    end
  end
  local daggerEquipped = false
  function hoodOn()
    if not doingMove then
      doingMove = true
      hoodison = true
      animate("hoodon")
      doingMove = false
    end
  end
  function hoodOff()
    if not doingMove then
      doingMove = true
      hoodison = false
      animate("hoodoff")
      doingMove = false
    end
  end
  mo.KeyDown:connect(function(key)
    if key == "f" then
      if hoodison then
        if vanished then
          vanished = false
          unvanish()
        end
        hoodOff()
      elseif not hoodison then
        if not vanished then
          vanished = true
          vanish()
        end
        hoodOn()
      end
    end
    if key == "g" then
      if not daggerEquipped then
        daggerEquipped = true
        daggertoRA()
      elseif daggerEquipped then
        daggerEquipped = false
        daggertotorso()
      end
    end
  end)
  coroutine.resume(coroutine.create(function()
    game:GetService("RunService").RenderStepped:connect(function()
      if hum.Jump then
        animate("jump")
      end
      if Vector3.new(tor.Velocity.X, 0, tor.Velocity.Z).magnitude < 2.5 and hum:GetState() ~= Enum.HumanoidStateType.Freefall then
        animate("idle")
      end
      if Vector3.new(tor.Velocity.X, 0, tor.Velocity.Z).magnitude >= 2.5 and hum:GetState() ~= Enum.HumanoidStateType.Freefall then
        animate("walk")
      end
      if Vector3.new(0, tor.Velocity.Y, 0).magnitude >= 5 and hum:GetState() == Enum.HumanoidStateType.Freefall then
        animate("descend")
      end
    end)
  end))
  coroutine.resume(coroutine.create(function()
    while swait(10) do
      if hoodison then
        vignette(ch, BrickColor.new("Black"), "Neon", 15)
      end
    end
  end))