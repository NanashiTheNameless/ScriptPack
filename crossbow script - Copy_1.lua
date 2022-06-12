:ls --MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go down to line 3 and put your name where it says "YOUR NAME HERE"

User = game.Players.luxulux 
--lego
Ammo = 0
Pullback = false
Loaded = false
CageOpen = false
Char = User.Character
Char.Humanoid.MaxHealth = 100000000
Char.Humanoid.Health = 9001
cen = Instance.new("Part", User.Character)
cen.BottomSurface = "Smooth"
cen.TopSurface = "Smooth"
cen.CanCollide = false
cen.formFactor = "Symmetric"
cen.Size = Vector3.new(1,1,1)
cen.BrickColor = BrickColor.new("Really black")
cen.Transparency = 1
cen2 = Instance.new("Part", User.Character)
cen2.BottomSurface = "Smooth"
cen2.TopSurface = "Smooth"
cen2.CanCollide = false
cen2.formFactor = "Symmetric"
cen2.Size = Vector3.new(1,1,1)
cen2.BrickColor = BrickColor.new("Really black")
cen2.Transparency = 1

cenw = Instance.new("Weld", cen)
cenw.Part0 = Char["Torso"]
cenw.Part1 = cen
cenw.C1 = CFrame.new(-1.5,-0.5,0)

cenw2 = Instance.new("Weld", cen2)
cenw2.Part0 = Char["Torso"]
cenw2.Part1 = cen2
cenw2.C1 = CFrame.new(1.5,-0.5,0)



haw = Instance.new("Weld", cen)
haw.Part0 = cen
haw.Part1 = Char["Right Arm"]
haw.C1 = CFrame.new(0,0.5,0)

haw2 = Instance.new("Weld", cen2)
haw2.Part0 = cen2
haw2.Part1 = Char["Left Arm"]
haw2.C1 = CFrame.new(0,0.5,0)

haw.C0 = CFrame.Angles(math.rad(90),0,math.rad(-15))
haw.C1 = CFrame.new(0.5,1,0)

haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)

haw2.Part1 = nil
haw.Part1 = nil

prt1 = Instance.new("Part", Char)
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new("Really black")
prt1.TopSurface = "Smooth"
prt1.Transparency = 0
prt1.BottomSurface = "Smooth"
prtM = Instance.new("BlockMesh", prt1)
prtM.Scale = Vector3.new(0.4,1,0.5)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,0.65)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt2 = Instance.new("Part", Char)
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Black")
prt2.TopSurface = "Smooth"
prt2.Transparency = 0
prt2.BottomSurface = "Smooth"
prtM2 = Instance.new("CylinderMesh", prt2)
prtM2.Scale = Vector3.new(0.4,1,0.4)
prt2:BreakJoints()
prtW2 = Instance.new("Weld", prt2)
prtW2.Part0 = prt1
prtW2.Part1 = prt2
prtW2.C1 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt7 = Instance.new("Part", Char)
prt7.Size = Vector3.new(1,1,1)
prt7.CanCollide = false
prt7.BrickColor = BrickColor.new("Really black")
prt7.TopSurface = "Smooth"
prt7.Transparency = 0
prt7.BottomSurface = "Smooth"
prtM7 = Instance.new("BlockMesh", prt7)
prtM7.Scale = Vector3.new(0.4,1,0.5)
prt7:BreakJoints()
prtW7 = Instance.new("Weld", prt7)
prtW7.Part0 = prt1
prtW7.Part1 = prt7
prtW7.C1 = CFrame.new(0,-1.09,0.14)*CFrame.Angles(math.rad(-15),0,math.rad(0))

prt3 = Instance.new("Part", Char)
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new("Really black")
prt3.TopSurface = "Smooth"
prt3.Transparency = 0
prt3.BottomSurface = "Smooth"
prtM3 = Instance.new("BlockMesh", prt3)
prtM3.Scale = Vector3.new(0.4,1.5,0.5)
prt3:BreakJoints()
prtW3 = Instance.new("Weld", prt3)
prtW3.Part0 = prt2
prtW3.Part1 = prt3
prtW3.C1 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt4 = Instance.new("Part", Char)
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new("Black")
prt4.TopSurface = "Smooth"
prt4.Transparency = 1
prt4.BottomSurface = "Smooth"
prtM4 = Instance.new("BlockMesh", prt4)
prtM4.Scale = Vector3.new(1,1,1)
prt4:BreakJoints()
prtW4 = Instance.new("Weld", prt4)
prtW4.Part0 = prt3
prtW4.Part1 = prt4
prtW4.C1 = CFrame.new(0,1.5/2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

ma = Instance.new("Part", Char)
ma.Size = Vector3.new(1,1,1)
ma.CanCollide = false
ma.BrickColor = BrickColor.new("Black")
ma.TopSurface = "Smooth"
ma.Transparency = 0
ma.BottomSurface = "Smooth"
maM = Instance.new("BlockMesh", ma)
maM.Scale = Vector3.new(0.5,0.1,0.2)
ma:BreakJoints()
maW = Instance.new("Weld", ma)
maW.Part0 = prt4
maW.Part1 = ma
maW.C1 = CFrame.new(0.4,0,0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))

ma2 = Instance.new("Part", Char)
ma2.Size = Vector3.new(1,1,1)
ma2.CanCollide = false
ma2.BrickColor = BrickColor.new("Black")
ma2.TopSurface = "Smooth"
ma2.Transparency = 0
ma2.BottomSurface = "Smooth"
maM2 = Instance.new("BlockMesh", ma2)
maM2.Scale = Vector3.new(0.5,0.1,0.2)
ma2:BreakJoints()
maW2 = Instance.new("Weld", ma2)
maW2.Part0 = ma
maW2.Part1 = ma2
maW2.C1 = CFrame.new(0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(15))
--benningtonguy created this.
ma3 = Instance.new("Part", Char)
ma3.Size = Vector3.new(1,1,1)
ma3.CanCollide = false
ma3.BrickColor = BrickColor.new("Black")
ma3.TopSurface = "Smooth"
ma3.Transparency = 0
ma3.BottomSurface = "Smooth"
maM3 = Instance.new("BlockMesh", ma3)
maM3.Scale = Vector3.new(0.5,0.1,0.2)
ma3:BreakJoints()
maW3 = Instance.new("Weld", ma3)
maW3.Part0 = ma2
maW3.Part1 = ma3
maW3.C1 = CFrame.new(0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(15))

ma4 = Instance.new("Part", Char)
ma4.Size = Vector3.new(1,1,1)
ma4.CanCollide = false
ma4.BrickColor = BrickColor.new("Black")
ma4.TopSurface = "Smooth"
ma4.Transparency = 0
ma4.BottomSurface = "Smooth"
maM4 = Instance.new("BlockMesh", ma4)
maM4.Scale = Vector3.new(0.5,0.1,0.2)
ma4:BreakJoints()
maW4 = Instance.new("Weld", ma4)
maW4.Part0 = ma3
maW4.Part1 = ma4
maW4.C1 = CFrame.new(0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(15))
--benningtonguy created this.
ma5 = Instance.new("Part", Char)
ma5.Size = Vector3.new(1,1,1)
ma5.CanCollide = false
ma5.BrickColor = BrickColor.new("Black")
ma5.TopSurface = "Smooth"
ma5.Transparency = 0
ma5.BottomSurface = "Smooth"
maM5 = Instance.new("BlockMesh", ma5)
maM5.Scale = Vector3.new(0.5,0.1,0.2)
ma5:BreakJoints()
maW5 = Instance.new("Weld", ma5)
maW5.Part0 = ma4
maW5.Part1 = ma5
maW5.C1 = CFrame.new(0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(15))

ma12 = Instance.new("Part", Char)
ma12.Size = Vector3.new(1,1,1)
ma12.CanCollide = false
ma12.BrickColor = BrickColor.new("Black")
ma12.TopSurface = "Smooth"
ma12.Transparency = 0
ma12.BottomSurface = "Smooth"
maM12 = Instance.new("BlockMesh", ma12)
maM12.Scale = Vector3.new(0.5,0.1,0.2)
ma12:BreakJoints()
maW12 = Instance.new("Weld", ma12)
maW12.Part0 = prt4
maW12.Part1 = ma12
maW12.C1 = CFrame.new(0.4,0,-0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))

ma22 = Instance.new("Part", Char)
ma22.Size = Vector3.new(1,1,1)
ma22.CanCollide = false
ma22.BrickColor = BrickColor.new("Black")
ma22.TopSurface = "Smooth"
ma22.Transparency = 0
ma22.BottomSurface = "Smooth"
maM22 = Instance.new("BlockMesh", ma22)
maM22.Scale = Vector3.new(0.5,0.1,0.2)
ma22:BreakJoints()
maW22 = Instance.new("Weld", ma22)
maW22.Part0 = ma12
maW22.Part1 = ma22
maW22.C1 = CFrame.new(0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(15))

ma32 = Instance.new("Part", Char)
ma32.Size = Vector3.new(1,1,1)
ma32.CanCollide = false
ma32.BrickColor = BrickColor.new("Black")
ma32.TopSurface = "Smooth"
ma32.Transparency = 0
ma32.BottomSurface = "Smooth"
maM32 = Instance.new("BlockMesh", ma32)
maM32.Scale = Vector3.new(0.5,0.1,0.2)
ma32:BreakJoints()
maW32 = Instance.new("Weld", ma32)
maW32.Part0 = ma22
maW32.Part1 = ma32
maW32.C1 = CFrame.new(0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(15))

ma42 = Instance.new("Part", Char)
ma42.Size = Vector3.new(1,1,1)
ma42.CanCollide = false
ma42.BrickColor = BrickColor.new("Black")
ma42.TopSurface = "Smooth"
ma42.Transparency = 0
ma42.BottomSurface = "Smooth"
maM42 = Instance.new("BlockMesh", ma42)
maM42.Scale = Vector3.new(0.5,0.1,0.2)
ma42:BreakJoints()
maW42 = Instance.new("Weld", ma42)
maW42.Part0 = ma32
maW42.Part1 = ma42
maW42.C1 = CFrame.new(0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(15))

ma52 = Instance.new("Part", Char)
ma52.Size = Vector3.new(1,1,1)
ma52.CanCollide = false
ma52.BrickColor = BrickColor.new("Black")
ma52.TopSurface = "Smooth"
ma52.Transparency = 0
ma52.BottomSurface = "Smooth"
maM52 = Instance.new("BlockMesh", ma52)
maM52.Scale = Vector3.new(0.5,0.1,0.2)
ma52:BreakJoints()
maW52 = Instance.new("Weld", ma52)
maW52.Part0 = ma42
maW52.Part1 = ma52
maW52.C1 = CFrame.new(0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(15))

ma122 = Instance.new("Part", Char)
ma122.Size = Vector3.new(1,1,1)
ma122.CanCollide = false
ma122.BrickColor = BrickColor.new("Black")
ma122.TopSurface = "Smooth"
ma122.Transparency = 0
ma122.BottomSurface = "Smooth"
maM122 = Instance.new("BlockMesh", ma122)
maM122.Scale = Vector3.new(0.5,0.1,0.2)
ma122:BreakJoints()
maW122 = Instance.new("Weld", ma122)
maW122.Part0 = prt4
maW122.Part1 = ma122
maW122.C1 = CFrame.new(-0.4,0,0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))

ma222 = Instance.new("Part", Char)
ma222.Size = Vector3.new(1,1,1)
ma222.CanCollide = false
ma222.BrickColor = BrickColor.new("Black")
ma222.TopSurface = "Smooth"
ma222.Transparency = 0
ma222.BottomSurface = "Smooth"
maM222 = Instance.new("BlockMesh", ma222)
maM222.Scale = Vector3.new(0.5,0.1,0.2)
ma222:BreakJoints()
maW222 = Instance.new("Weld", ma222)
maW222.Part0 = ma122
maW222.Part1 = ma222
maW222.C1 = CFrame.new(-0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))

ma322 = Instance.new("Part", Char)
ma322.Size = Vector3.new(1,1,1)
ma322.CanCollide = false
ma322.BrickColor = BrickColor.new("Black")
ma322.TopSurface = "Smooth"
ma322.Transparency = 0
ma322.BottomSurface = "Smooth"
maM322 = Instance.new("BlockMesh", ma322)
maM322.Scale = Vector3.new(0.5,0.1,0.2)
ma322:BreakJoints()
maW322 = Instance.new("Weld", ma322)
maW322.Part0 = ma222
maW322.Part1 = ma322
maW322.C1 = CFrame.new(-0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))

ma422 = Instance.new("Part", Char)
ma422.Size = Vector3.new(1,1,1)
ma422.CanCollide = false
ma422.BrickColor = BrickColor.new("Black")
ma422.TopSurface = "Smooth"
ma422.Transparency = 0
ma422.BottomSurface = "Smooth"
maM422 = Instance.new("BlockMesh", ma422)
maM422.Scale = Vector3.new(0.5,0.1,0.2)
ma422:BreakJoints()
maW422 = Instance.new("Weld", ma422)
maW422.Part0 = ma322
maW422.Part1 = ma422
maW422.C1 = CFrame.new(-0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))

ma522 = Instance.new("Part", Char)
ma522.Size = Vector3.new(1,1,1)
ma522.CanCollide = false
ma522.BrickColor = BrickColor.new("Black")
ma522.TopSurface = "Smooth"
ma522.Transparency = 0
ma522.BottomSurface = "Smooth"
maM522 = Instance.new("BlockMesh", ma522)
maM522.Scale = Vector3.new(0.5,0.1,0.2)
ma522:BreakJoints()
maW522 = Instance.new("Weld", ma522)
maW522.Part0 = ma422
maW522.Part1 = ma522
maW522.C1 = CFrame.new(-0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))

ma123 = Instance.new("Part", Char)
ma123.Size = Vector3.new(1,1,1)
ma123.CanCollide = false
ma123.BrickColor = BrickColor.new("Black")
ma123.TopSurface = "Smooth"
ma123.Transparency = 0
ma123.BottomSurface = "Smooth"
maM123 = Instance.new("BlockMesh", ma123)
maM123.Scale = Vector3.new(0.5,0.1,0.2)
ma123:BreakJoints()
maW123 = Instance.new("Weld", ma123)
maW123.Part0 = prt4
maW123.Part1 = ma123
maW123.C1 = CFrame.new(-0.4,0,-0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))

ma223 = Instance.new("Part", Char)
ma223.Size = Vector3.new(1,1,1)
ma223.CanCollide = false
ma223.BrickColor = BrickColor.new("Black")
ma223.TopSurface = "Smooth"
ma223.Transparency = 0
ma223.BottomSurface = "Smooth"
maM223 = Instance.new("BlockMesh", ma223)
maM223.Scale = Vector3.new(0.5,0.1,0.2)
ma223:BreakJoints()
maW223 = Instance.new("Weld", ma223)
maW223.Part0 = ma123
maW223.Part1 = ma223
maW223.C1 = CFrame.new(-0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))

ma323 = Instance.new("Part", Char)
ma323.Size = Vector3.new(1,1,1)
ma323.CanCollide = false
ma323.BrickColor = BrickColor.new("Black")
ma323.TopSurface = "Smooth"
ma323.Transparency = 0
ma323.BottomSurface = "Smooth"
maM323 = Instance.new("BlockMesh", ma323)
maM323.Scale = Vector3.new(0.5,0.1,0.2)
ma323:BreakJoints()
maW323 = Instance.new("Weld", ma323)
maW323.Part0 = ma223
maW323.Part1 = ma323
maW323.C1 = CFrame.new(-0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))

ma423 = Instance.new("Part", Char)
ma423.Size = Vector3.new(1,1,1)
ma423.CanCollide = false
ma423.BrickColor = BrickColor.new("Black")
ma423.TopSurface = "Smooth"
ma423.Transparency = 0
ma423.BottomSurface = "Smooth"
maM423 = Instance.new("BlockMesh", ma423)
maM423.Scale = Vector3.new(0.5,0.1,0.2)
ma423:BreakJoints()
maW423 = Instance.new("Weld", ma423)
maW423.Part0 = ma323
maW423.Part1 = ma423
maW423.C1 = CFrame.new(-0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))

ma523 = Instance.new("Part", Char)
ma523.Size = Vector3.new(1,1,1)
ma523.CanCollide = false
ma523.BrickColor = BrickColor.new("Black")
ma523.TopSurface = "Smooth"
ma523.Transparency = 0
ma523.BottomSurface = "Smooth"
maM523 = Instance.new("BlockMesh", ma523)
maM523.Scale = Vector3.new(0.5,0.1,0.2)
ma523:BreakJoints()
maW523 = Instance.new("Weld", ma523)
maW523.Part0 = ma423
maW523.Part1 = ma523
maW523.C1 = CFrame.new(-0.48,0.06,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))

scope = Instance.new("Part", Char)
scope.Size = Vector3.new(1,1,1)
scope.CanCollide = false
scope.BrickColor = BrickColor.new("Dark stone grey")
scope.TopSurface = "Smooth"
scope.Transparency = 0
scope.BottomSurface = "Smooth"
scopeM = Instance.new("BlockMesh", scope)
scopeM.Scale = Vector3.new(0.1,0.1,0.1)
scope:BreakJoints()
scopeW = Instance.new("Weld", scope)
scopeW.Part0 = prt3
scopeW.Part1 = scope
scopeW.C1 = CFrame.new(0,-2,0.25)*CFrame.Angles(math.rad(0),0,math.rad(0))

scope2 = Instance.new("Part", Char)
scope2.Size = Vector3.new(1,1,1)
scope2.CanCollide = false
scope2.BrickColor = BrickColor.new("Black")
scope2.TopSurface = "Smooth"
scope2.Transparency = 0
scope2.BottomSurface = "Smooth"
scopeM2 = Instance.new("CylinderMesh", scope2)
scopeM2.Scale = Vector3.new(0.3,1,0.3)
scope2:BreakJoints()
scopeW2 = Instance.new("Weld", scope2)
scopeW2.Part0 = scope
scopeW2.Part1 = scope2
scopeW2.C1 = CFrame.new(0,0,0.16)*CFrame.Angles(math.rad(0),0,math.rad(0))

scope3 = Instance.new("Part", Char)
scope3.Size = Vector3.new(1,1,1)
scope3.CanCollide = false
scope3.BrickColor = BrickColor.new("Really black")
scope3.TopSurface = "Smooth"
scope3.Transparency = 0
scope3.BottomSurface = "Smooth"
scopeM3 = Instance.new("CylinderMesh", scope3)
scopeM3.Scale = Vector3.new(0.35,0.1,0.35)
scope3:BreakJoints()
scopeW3 = Instance.new("Weld", scope3)
scopeW3.Part0 = scope2
scopeW3.Part1 = scope3
scopeW3.C1 = CFrame.new(0,0.6,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

scope4 = Instance.new("Part", Char)
scope4.Size = Vector3.new(1,1,1)
scope4.CanCollide = false
scope4.BrickColor = BrickColor.new("Black")
scope4.TopSurface = "Smooth"
scope4.Transparency = 0
scope4.BottomSurface = "Smooth"
scopeM4 = Instance.new("CylinderMesh", scope4)
scopeM4.Scale = Vector3.new(0.35,0.05,0.35)
scope4:BreakJoints()
scopeW4 = Instance.new("Weld", scope4)
scopeW4.Part0 = scope3
scopeW4.Part1 = scope4
scopeW4.C1 = CFrame.new(0,0.04,0.34)*CFrame.Angles(math.rad(0),0,math.rad(0))

scope5 = Instance.new("Part", Char)
scope5.Size = Vector3.new(1,1,1)
scope5.CanCollide = false
scope5.BrickColor = BrickColor.new("Really black")
scope5.TopSurface = "Smooth"
scope5.Transparency = 0
scope5.BottomSurface = "Smooth"
scopeM5 = Instance.new("CylinderMesh", scope5)
scopeM5.Scale = Vector3.new(0.35,0.1,0.35)
scope5:BreakJoints()
scopeW5 = Instance.new("Weld", scope5)
scopeW5.Part0 = scope2
scopeW5.Part1 = scope5
scopeW5.C1 = CFrame.new(0,-0.6,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt5 = Instance.new("Part", Char)
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new("Really black")
prt5.TopSurface = "Smooth"
prt5.Transparency = 0
prt5.BottomSurface = "Smooth"
prtM5 = Instance.new("BlockMesh", prt5)
prtM5.Scale = Vector3.new(4.1,0.1,0.1)
prt5:BreakJoints()
prtW5 = Instance.new("Weld", prt5)
prtW5.Part0 = prt3
prtW5.Part1 = prt5
prtW5.C1 = CFrame.new(0,-0.3,-0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt6 = Instance.new("Part", Char)
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new("Institutional white")
prt6.TopSurface = "Smooth"
prt6.Transparency = 0
prt6.BottomSurface = "Smooth"
prtM6 = Instance.new("BlockMesh", prt6)
prtM6.Scale = Vector3.new(2.12,0.0125,0.0125)
prt6:BreakJoints()
prtW6 = Instance.new("Weld", prt6)
prtW6.Part0 = ma5
prtW6.Part1 = prt6
prtW6.C1 = CFrame.new(-1,0,0.05)*CFrame.Angles(math.rad(0),0,math.rad(-45))

prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Institutional white")
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prtM8 = Instance.new("BlockMesh", prt8)
prtM8.Scale = Vector3.new(2.12,0.0125,0.0125)
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt8)
prtW8.Part0 = ma522
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(1,0,0.05)*CFrame.Angles(math.rad(0),0,math.rad(45))

trig = Instance.new("Part", Char)
trig.Size = Vector3.new(1,1,1)
trig.CanCollide = false
trig.BrickColor = BrickColor.new("Dark stone grey")
trig.Transparency = 0
trig.BottomSurface = "Smooth"
trigM = Instance.new("SpecialMesh", trig)
trigM.MeshType = "FileMesh"
trigM.MeshId = "http://www.roblox.com/asset/?id=3270017"
trigM.Scale = Vector3.new(0.5,0.5,0.1)
trig:BreakJoints()
trigW = Instance.new("Weld", trig)
trigW.Part0 = prt2
trigW.Part1 = trig
trigW.C1 = CFrame.new(-0.2,0.2,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))

trig2 = Instance.new("Part", Char)
trig2.Size = Vector3.new(1,1,1)
trig2.CanCollide = false
trig2.BrickColor = BrickColor.new("Dark stone grey")
trig2.Transparency = 0
trig2.BottomSurface = "Smooth"
trigM2 = Instance.new("BlockMesh", trig2)
trigM2.Scale = Vector3.new(0.3,0.05,0.05)
trig2:BreakJoints()
trigW2 = Instance.new("Weld", trig2)
trigW2.Part0 = trig
trigW2.Part1 = trig2
trigW2.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

arrowh = Instance.new("Part", User.Character)
arrowh.formFactor = "Symmetric"
arrowh.Size = Vector3.new(1,1,1)
arrowh.BrickColor = BrickColor.new("Really black")
arrowh.TopSurface = "Smooth"
arrowh.Transparency = 1
arrowh.BottomSurface = "Smooth"
arrowm = Instance.new("SpecialMesh", arrowh)
arrowm.MeshType = "FileMesh"
arrowm.Scale = Vector3.new(0.4,1,0.7)
arrowm.MeshId = "http://www.roblox.com/asset/?id=15887356"
arrowm.TextureId = "http://www.roblox.com/asset/?id=15886781"
arrowh:BreakJoints()
knifeprt12wld = Instance.new("Weld") 
knifeprt12wld.Parent = arrowh 
knifeprt12wld.Part0 = Char["Left Arm"] 
knifeprt12wld.Part1 = arrowh
knifeprt12wld.C1 = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(180),0,0)



pack = Instance.new("Part", Char)
pack.Size = Vector3.new(1,1,1)
pack.TopSurface = "Smooth"
pack.BottomSurface = "Smooth"
pack.BrickColor = BrickColor.new("Brown")
packm = Instance.new("SpecialMesh", pack)
packm.MeshType = "FileMesh"
packm.MeshId = "http://www.roblox.com/asset/?id=19380188"
packm.Scale = Vector3.new(0.8,4,0.3)
pack:BreakJoints()
packw = Instance.new("Weld", pack)
packw.Part0 = Char["Torso"]
packw.Part1 = pack
packw.C1 = CFrame.new(0,0,0.7)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(20))

arrowh3 = Instance.new("Part", User.Character)
arrowh3.formFactor = "Symmetric"
arrowh3.Size = Vector3.new(1,1,1)
arrowh3.BrickColor = BrickColor.new("Really black")
arrowh3.TopSurface = "Smooth"
arrowh3.Transparency = 0
arrowh3.BottomSurface = "Smooth"
arrowm3 = Instance.new("SpecialMesh", arrowh3)
arrowm3.MeshType = "FileMesh"
arrowm3.Scale = Vector3.new(0.4,1,0.7)
arrowm3.MeshId = "http://www.roblox.com/asset/?id=15887356"
arrowm3.TextureId = "http://www.roblox.com/asset/?id=15886781"
arrowh3:BreakJoints()
knifeprt12wld2 = Instance.new("Weld") 
knifeprt12wld2.Parent = arrowh3
knifeprt12wld2.Part0 = pack
knifeprt12wld2.Part1 = arrowh3
knifeprt12wld2.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))

arrowh4 = Instance.new("Part", User.Character)
arrowh4.formFactor = "Symmetric"
arrowh4.Size = Vector3.new(1,1,1)
arrowh4.BrickColor = BrickColor.new("Really black")
arrowh4.TopSurface = "Smooth"
arrowh4.Transparency = 0
arrowh4.BottomSurface = "Smooth"
arrowm4 = Instance.new("SpecialMesh", arrowh4)
arrowm4.MeshType = "FileMesh"
arrowm4.Scale = Vector3.new(0.4,1,0.7)
arrowm4.MeshId = "http://www.roblox.com/asset/?id=15887356"
arrowm4.TextureId = "http://www.roblox.com/asset/?id=15886781"
arrowh4:BreakJoints()
knifeprt12wld2 = Instance.new("Weld") 
knifeprt12wld2.Parent = arrowh4
knifeprt12wld2.Part0 = pack
knifeprt12wld2.Part1 = arrowh4
knifeprt12wld2.C1 = CFrame.new(0.15,0,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))

arrowh5 = Instance.new("Part", User.Character)
arrowh5.formFactor = "Symmetric"
arrowh5.Size = Vector3.new(1,1,1)
arrowh5.BrickColor = BrickColor.new("Really black")
arrowh5.TopSurface = "Smooth"
arrowh5.Transparency = 0
arrowh5.BottomSurface = "Smooth"
arrowm5 = Instance.new("SpecialMesh", arrowh5)
arrowm5.MeshType = "FileMesh"
arrowm5.Scale = Vector3.new(0.4,1,0.7)
arrowm5.MeshId = "http://www.roblox.com/asset/?id=15887356"
arrowm5.TextureId = "http://www.roblox.com/asset/?id=15886781"
arrowh5:BreakJoints()
knifeprt12wld2 = Instance.new("Weld") 
knifeprt12wld2.Parent = arrowh5
knifeprt12wld2.Part0 = pack
knifeprt12wld2.Part1 = arrowh5
knifeprt12wld2.C1 = CFrame.new(-0.15,0,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))

arrowh6 = Instance.new("Part", User.Character)
arrowh6.formFactor = "Symmetric"
arrowh6.Size = Vector3.new(1,1,1)
arrowh6.BrickColor = BrickColor.new("Really black")
arrowh6.TopSurface = "Smooth"
arrowh6.Transparency = 0
arrowh6.BottomSurface = "Smooth"
arrowm6 = Instance.new("SpecialMesh", arrowh6)
arrowm6.MeshType = "FileMesh"
arrowm6.Scale = Vector3.new(0.4,1,0.7)
arrowm6.MeshId = "http://www.roblox.com/asset/?id=15887356"
arrowm6.TextureId = "http://www.roblox.com/asset/?id=15886781"
arrowh6:BreakJoints()
knifeprt12wld2 = Instance.new("Weld") 
knifeprt12wld2.Parent = arrowh6
knifeprt12wld2.Part0 = pack
knifeprt12wld2.Part1 = arrowh6
knifeprt12wld2.C1 = CFrame.new(-0.3,0,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))

arrowh7 = Instance.new("Part", User.Character)
arrowh7.formFactor = "Symmetric"
arrowh7.Size = Vector3.new(1,1,1)
arrowh7.BrickColor = BrickColor.new("Really black")
arrowh7.TopSurface = "Smooth"
arrowh7.Transparency = 0
arrowh7.BottomSurface = "Smooth"
arrowm7 = Instance.new("SpecialMesh", arrowh7)
arrowm7.MeshType = "FileMesh"
arrowm7.Scale = Vector3.new(0.4,1,0.7)
arrowm7.MeshId = "http://www.roblox.com/asset/?id=15887356"
arrowm7.TextureId = "http://www.roblox.com/asset/?id=15886781"
arrowh7:BreakJoints()
knifeprt12wld2 = Instance.new("Weld") 
knifeprt12wld2.Parent = arrowh7
knifeprt12wld2.Part0 = pack
knifeprt12wld2.Part1 = arrowh7
knifeprt12wld2.C1 = CFrame.new(0.3,0,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
------------------------------------------------------------------------

p = Instance.new("Part", Char)
p.Size = Vector3.new(1,1,1)
p.CanCollide = false
p.BrickColor = BrickColor.new("Dark stone grey")
p.TopSurface = "Smooth"
p.Transparency = 0
p.BottomSurface = "Smooth"
pM = Instance.new("BlockMesh", p)
pM.Scale = Vector3.new(0.1,0.2,0.1)
p:BreakJoints()
pW = Instance.new("Weld", p)
pW.Part0 = prt3
pW.Part1 = p
pW.C1 = CFrame.new(0,0.5,0.25)*CFrame.Angles(math.rad(0),0,math.rad(0))

arrowh2 = Instance.new("Part", User.Character)
arrowh2.formFactor = "Symmetric"
arrowh2.Size = Vector3.new(1,1,1)
arrowh2.BrickColor = BrickColor.new("Really black")
arrowh2.TopSurface = "Smooth"
arrowh2.Transparency = 1
arrowh2.BottomSurface = "Smooth"
arrowm2 = Instance.new("SpecialMesh", arrowh2)
arrowm2.MeshType = "FileMesh"
arrowm2.Scale = Vector3.new(0.4,1,0.7)
arrowm2.MeshId = "http://www.roblox.com/asset/?id=15887356"
arrowm2.TextureId = "http://www.roblox.com/asset/?id=15886781"
arrowh2:BreakJoints()
knifeprt12wld2 = Instance.new("Weld") 
knifeprt12wld2.Parent = arrowh2
knifeprt12wld2.Part0 = p 
knifeprt12wld2.Part1 = arrowh2
knifeprt12wld2.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0))


------------------------------------------------------

Torso = Instance.new("Part", Char)
Torso.formFactor = "Symmetric"
Torso.Size = Char["Torso"].Size
Torso.Transparency = 1
Torso.BrickColor = Char["Torso"].BrickColor
Torso:BreakJoints()
Torsow = Instance.new("Weld", Torso)
Torsow.Part0 = Char["Torso"]
Torsow.Part1 = Torso
Torsow.C1 = CFrame.Angles(0,math.rad(45),0)

------------------------------------------------------
function PullBack()
for i = 1,10 do
pW.C1 = CFrame.new(0,0.5-i/10,0.25)*CFrame.Angles(math.rad(0),0,math.rad(0))

prtW6.C1 = CFrame.new(-1,0,0.05)*CFrame.Angles(math.rad(0),0,math.rad(-45-i*2.1))

prtW8.C1 = CFrame.new(1,0,0.05)*CFrame.Angles(math.rad(0),0,math.rad(45+i*2.1))
wait(0.1)
end
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)
end

function Open()
for i = 1,10,0.5 do
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35-i))
haw2.C1 = CFrame.new(0,1.2+i/10,0)
wait()
end
end

function Shoot()
arrowh2.Transparency = 1


for i = 1,10,2.5 do
pW.C1 = CFrame.new(0,-0.5+i/10,0.25)*CFrame.Angles(math.rad(0),0,math.rad(0))
prtW6.C1 = CFrame.new(-1,0,0.05)*CFrame.Angles(math.rad(0),0,math.rad(-65+i*2.1))

prtW8.C1 = CFrame.new(1,0,0.05)*CFrame.Angles(math.rad(0),0,math.rad(65-i*2.1))
wait()
end
pW.C1 = CFrame.new(0,0.5,0.25)*CFrame.Angles(math.rad(0),0,math.rad(0))
prtW6.C1 = CFrame.new(-1,0,0.05)*CFrame.Angles(math.rad(0),0,math.rad(-45))
prtW8.C1 = CFrame.new(1,0,0.05)*CFrame.Angles(math.rad(0),0,math.rad(45))
end

function Load()
for i = 1,180,10 do
haw2.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(35))
wait()
end
arrowh.Transparency = 0
for i = 1,180,10 do
haw2.C0 = CFrame.Angles(math.rad(-90+i),0,math.rad(35))
wait()
end
arrowh.Transparency = 1
arrowh2.Transparency = 0
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35))
end


-------------------------------------------------------


if not script.Parent:IsA("HopperBin") then
h = Instance.new("HopperBin", User.Backpack)
h.Name = "Crossbow"
script.Parent = h
end

script.Parent.Selected:connect(function(mouse)
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
packw.Part0 = Torso
Char.Torso["Right Shoulder"].Part0 = Torso
Char.Torso["Left Shoulder"].Part0 = Torso
Char.Torso["Right Hip"].Part0 = Torso
Char.Torso["Left Hip"].Part0 = Torso
Torso.Transparency = 0
Char["Torso"].Transparency = 1
mouse.Button1Down:connect(function()
if Loaded == true and Pullback == true then
Loaded = false
Pullback = false

if mouse.Target.Parent:FindFirstChild("Humanoid") then
mouse.Target.Parent:BreakJoints()
end

sound = Instance.new("Sound", workspace[Char.Name].Torso)
sound.SoundId = "http://www.roblox.com/asset/?id=16211041"
sound.Pitch = 1.2
sound.PlayOnRemove = true
wait()
sound.Parent = nil

local P = Instance.new("Part") 
P.Name = "P"
local Place0 = p
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.Position + mouse.Hit.p)/2,Place0.Position) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new("Institutional white")
P.Transparency = 0.3
P.Reflectance = 0 
P.Anchored = true 
P.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P


delay(0, function()
for i = 1,7 do
P.Transparency = P.Transparency + 0.1
wait(0.1)
end
P:Remove()
end)

Shoot()
end
end)
mouse.KeyDown:connect(function(key)
if key == "r" and Loaded == false and Pullback == true then
Loaded = true
Pullback = true
Load()
elseif key == "q" and Pullback == false then
Pullback = true
Open()
PullBack()
end
end)

end)

script.Parent.Deselected:connect(function()
haw.Part1 = nil
haw2.Part1 = nil
packw.Part0 = Char["Torso"]
Char.Torso["Right Shoulder"].Part0 = Char.Torso
Char.Torso["Left Shoulder"].Part0 = Char.Torso
Char.Torso["Right Hip"].Part0 = Char.Torso
Char.Torso["Left Hip"].Part0 = Char.Torso
Torso.Transparency = 1
Char["Torso"].Transparency = 0
end)
