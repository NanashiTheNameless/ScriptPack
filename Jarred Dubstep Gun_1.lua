pl=game.Players.kash5
mouse=pl:GetMouse()
mouse.Button1Down:connect(function() onClicked(mouse) end)
mouse.Button1Up:connect(function() onUP(mouse) end)
ch=pl.Character
ch.Humanoid.Name="desfrunse"
ArmWeldL = Instance.new("Weld") 
ArmWeldL.Parent = ch.Torso
ArmWeldL.Part0 = ch.Torso
ArmWeldL.Part1 = ch["Right Arm"]
ArmWeldL.C0 = CFrame.new(1.5,.5,-.5) * CFrame.fromEulerAnglesXYZ(89.5,0,0)
was=Instance.new("Model",ch)
base = Instance.new("Part",was) 
base.Name = "waf" 
base.CanCollide = false 
base.Size=Vector3.new(1,1,1)
base.Transparency = 1
base:BreakJoints() 
baseWeld = Instance.new("Weld") 
baseWeld.Parent =base
baseWeld.Part0 = ch["Right Arm"]
baseWeld.Part1 = base
baseWeld.C0 = CFrame.new(0, -1.2, 0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
ha.Size = Vector3.new(.1, .1, 1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,0, 0) * CFrame.Angles(-44.75, 0, 0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.formFactor = "Custom" 
ha.BrickColor=BrickColor.new("Institutional white")
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(1.5,.5,1.5)
ha.Size = Vector3.new(1, 1, 1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,0,-1) * CFrame.Angles(0, 0, math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(1.2,.6,1.2)
ha.Size = Vector3.new(1, 1, 1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,0,-1) * CFrame.Angles(0, 0, math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Institutional white")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(.75,.75,.75)
ha.Size = Vector3.new(1, 1, 1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,0,-1) * CFrame.Angles(0, 0, math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(.6,.8,.6)
ha.Size = Vector3.new(1, 1, 1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,0,-1) * CFrame.Angles(0, 0, math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Really red")
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1,1.5,.5)
ha.formFactor = "Custom" 
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.31,0,-1.05) * CFrame.Angles(44.65,0,0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Bright blue")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1,.5,.5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.31,0,-.8) * CFrame.Angles(0,0,0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Bright blue")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1,.5,.5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.31,-.13,-.83) * CFrame.Angles(0,0,0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Bright blue")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1,.5,.5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.31,.13,-.83) * CFrame.Angles(0,0,0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Institutional white")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(2.5,10,6)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1,-1.15) * CFrame.Angles(0,0,0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Institutional white")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(4,2,4)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-.6,-.6) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Really black")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(3,2.6,3)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-.8,-1) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Bright blue")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(2.5,2.7,2.5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-.8,-1) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Institutional white")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(1.5,3,1.5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-.8,-1) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Really red")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(1,3,1)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1,-1.5) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(.9,3.1,.9)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1,-1.5) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1,3.1,.7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-.93,-1.5) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Really blue")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(1,3,1)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1.3,-1.5) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(.9,3.1,.9)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1.3,-1.5) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(.7,3.1,.7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1.3,-1.4) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Bright green")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(1,3,1)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1.6,-1.5) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(.9,3.1,.9)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1.6,-1.5) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(.7,3.1,.7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1.6,-1.6) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Institutional white")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(.7,8,7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.2,-2,-1) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(.7,8,7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.2,-2.13,-1) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Institutional white")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1.5,8,7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.2,-2.33,-1) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Institutional white")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(.7,5.5,7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(-.05,-2,-2) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(.7,5.5,7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(-.05,-2.13,-2) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Institutional white")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1.5,5.5,7)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(-.05,-2.33,-2) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(.75,4,5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(-.05,-2.5,-2) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(.75,6.5,5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.2,-2.5,-1) * CFrame.Angles(0,0,math.pi/2)
has = Instance.new("Part",was) 
has.Name = "waf" 
has.CanCollide = false 
has.BrickColor=BrickColor.new("Really black")
has.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",has)
mes.Scale=Vector3.new(4.5,1,4.5)
has.Size = Vector3.new(.1, .1, .1) 
has.TopSurface = 0 
has.BottomSurface = 0 
has.Transparency = 0 
has:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =has
sWeld.Part0 = base
sWeld.Part1 = has
sWeld.C0 = CFrame.new(.05,-2.5,-1) * CFrame.Angles(0,0,0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Really black")
ha.formFactor = "Custom" 
mes=Instance.new("CylinderMesh",ha)
mes.Scale=Vector3.new(3,1,3)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
asWeld = Instance.new("Weld") 
asWeld.Parent =ha
asWeld.Part0 = base
asWeld.Part1 = ha
asWeld.C0 = CFrame.new(-0.05,-2.5,-2.1) * CFrame.Angles(0,0,0)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1.03,4.5,.5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.05,-2.5,-1.1) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1.03,4.5,.5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(.05,-2.5,-.9) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(3,3,1)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(0,-1.44,-1) * CFrame.Angles(0,0,math.pi/2)
ha = Instance.new("Part",was) 
ha.Name = "waf" 
ha.CanCollide = false 
ha.BrickColor=BrickColor.new("Dark stone grey")
ha.formFactor = "Custom" 
mes=Instance.new("BlockMesh",ha)
mes.Scale=Vector3.new(1,3,5)
ha.Size = Vector3.new(.1, .1, .1) 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.Transparency = 0 
ha:BreakJoints() 
sWeld = Instance.new("Weld") 
sWeld.Parent =ha
sWeld.Part0 = base
sWeld.Part1 = ha
sWeld.C0 = CFrame.new(1,-2.2,-1) * CFrame.Angles(0,0,math.pi/2)


Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
        local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
        function touch(hit) 
		if hit.Parent:findFirstChild("Humanoid") ~= nil then 
		hit.Parent:BreakJoints()
		end end li.Touched:connect(touch)
		local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
    end
end





s = Instance.new("Sound")
s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset/?id=144834276"
s.Volume = 1
s.Pitch = 1
s.Looped = true
s.PlayOnRemove = false
s.archivable = false
s.Parent = has








function onClicked(mouse)
loop =false
s:play()
wait(2)
coroutine.resume(coroutine.create(function(c)
while true do
wait()
if loop == true then break end
for i = 1,2 do
p = Instance.new("Part",ch)
p.FormFactor="Custom"
p.Size=Vector3.new(math.random(1,2),math.random(1,2),math.random(1,2))
p.TopSurface = 0 
p.BottomSurface = 0 
p.BrickColor= BrickColor.new("Royal purple")
p.Transparency=.3
p.CanCollide=false
p.Anchored=true
p.CFrame = (has.CFrame*CFrame.new(0,-1,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
game.Debris:AddItem(p,.2)
wait()
end 
end end))
coroutine.resume(coroutine.create(function(c)
while true do
wait()
if loop == true then break end
for i = 1,2 do
local f = Instance.new("Part",ch)
f.FormFactor="Custom"
f.Size=Vector3.new(.1,.1,.1)
f.TopSurface = 0 
f.BottomSurface = 0 
f.BrickColor= BrickColor.new("Really black")
f.Transparency=.3
f.CanCollide=false
f.Anchored=true
local fm = Instance.new("SpecialMesh",f)
fm.Scale=Vector3.new(10,10,10)
fm.MeshId="http://www.roblox.com/asset/?id=3270017"
coroutine.resume(coroutine.create(function(c)
for i=2,10 do 
f.CFrame = (has.CFrame*CFrame.new(0,-1*i,0))*CFrame.Angles(math.pi/2,0,0)
scale=math.random(1,3)
fm.Scale=fm.Scale+Vector3.new(scale,scale,scale)
wait()
end game.Debris:AddItem(f,.000001) end))
wait()
end 
end end))
coroutine.resume(coroutine.create(function(c)
while true do 
if loop == true then break end                  
Lightning(has.Position,mouse.Hit.p,math.random(5,10),math.random(-2.5,2.5),"Royal purple",0.05,0.35)
wait()
end end))
coroutine.resume(coroutine.create(function(c)
while true do 
if loop == true then break end                  
wait(.1)
local f = Instance.new("Part",ch)
f.FormFactor="Custom"
f.Size=Vector3.new(.1,.1,.1)
f.TopSurface = 0 
f.BottomSurface = 0 
f.BrickColor= BrickColor.new("Really black")
f.Transparency=.3
f.CanCollide=false
f.Anchored=true
local fm = Instance.new("SpecialMesh",f)
fm.Scale=Vector3.new(10,10,10)
fm.MeshId="http://www.roblox.com/asset/?id=1185246"
f.Position = mouse.Hit.p
coroutine.resume(coroutine.create(function(c)
for i=1,10 do wait()
local z = Instance.new("Part",ch)
z.FormFactor="Custom"
z.Size=Vector3.new(.1,6,.1)
z.TopSurface = 0 
z.BottomSurface = 0 
z.BrickColor= BrickColor.random()
z.Transparency=.3
z.CanCollide=false
z.Anchored=true
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent:BreakJoints()
end end z.Touched:connect(touch)
z.CFrame = (f.CFrame*CFrame.new(math.random(-7,7),5,math.random(-7,7)))
coroutine.resume(coroutine.create(function(c)
for i=1,10 do wait()
z.CFrame = (z.CFrame*CFrame.new(0,-1,0))end z:remove() end))end end))
coroutine.resume(coroutine.create(function(c)
for i=2,10 do 
scale=1
fm.Scale=fm.Scale+Vector3.new(scale,scale,scale)
wait()
end game.Debris:AddItem(f,.000001) end))
wait()
end 
end))
end
function onUP(mouse)
loop=true
s:stop()
end
