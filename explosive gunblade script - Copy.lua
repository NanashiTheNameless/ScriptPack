
--dont even have a hooperbin yet lol
--Gun Blade

plyr = game.Players.LocalPlayer

char = plyr.Character

tol=Instance.new("HopperBin",plyr.Backpack)
tol.Name="Gun_blade"

hum = char.Humanoid

torso = char.Torso


limb = {char:findFirstChild("Right Arm")}


handle = Instance.new("Part", workspace)

handle.CanCollide = false

handle.Anchored = false

handle.TopSurface = 0

handle.BottomSurface = 0

handle.formFactor = "Custom"

handle.Size = Vector3.new(.2, .2, .2)

handle.BrickColor = BrickColor.new("Medium stone grey")

handle:BreakJoints()


mesh = Instance.new("BlockMesh", handle)

mesh.Scale = Vector3.new(1, 5.5, 1.5)


motor = Instance.new("Motor", limb[1])

motor.Part0 = limb[1]

motor.Part1 = handle

motor.C0 = motor.C0 * CFrame.new(0, -1.1, 0) * CFrame.Angles(math.pi/2, 0, 0) 


handle2 = Instance.new("Part", workspace)

handle2.CanCollide = false

handle2.Anchored = false

handle2.TopSurface = 0

handle2.BottomSurface = 0

handle2.formFactor = "Custom"

handle2.Size = Vector3.new(.2, .2, .2)

handle2.BrickColor = BrickColor.new("Medium stone grey")

handle2:BreakJoints()


mesh2 = Instance.new("BlockMesh", handle2)

mesh2.Scale = Vector3.new(1, 2, 1.5)


motor2 = Instance.new("Motor", handle)

motor2.Part0 = handle

motor2.Part1 = handle2

motor2.C0 = motor2.C0 * CFrame.new(0, -.5, 0) * CFrame.Angles(.2, 0, 0) + Vector3.new(0, -.2, -.03)


handle3 = Instance.new("Part", workspace)

handle3.CanCollide = false

handle3.Anchored = false

handle3.TopSurface = 0

handle3.BottomSurface = 0

handle3.formFactor = "Custom"

handle3.Size = Vector3.new(.2, .2, .2)

handle3.BrickColor = BrickColor.new("Medium stone grey")

handle3:BreakJoints()


mesh3 = Instance.new("BlockMesh", handle3)

mesh3.Scale = Vector3.new(1.3, 2.3, 1.8)


motor3 = Instance.new("Motor", handle)

motor3.Part0 = handle

motor3.Part1 = handle3

motor3.C0 = motor3.C0 * CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 0, -.15)


base = Instance.new("Part", workspace)

base.CanCollide = false

base.Anchored = false

base.TopSurface = 0

base.BottomSurface = 0

base.formFactor = "Custom"

base.Size = Vector3.new(.2, .2, .2)

base.BrickColor = BrickColor.new("Really black")

base:BreakJoints()


mesh4 = Instance.new("BlockMesh", base)

mesh4.Scale = Vector3.new(2.5, 1, 1)


motor4 = Instance.new("Motor", handle3)

motor4.Part0 = handle3

motor4.Part1 = base

motor4.C0 = motor4.C0 * CFrame.new(0, -.3, 0)


base2 = Instance.new("Part", workspace)

base2.CanCollide = false

base2.Anchored = false

base2.TopSurface = 0

base2.BottomSurface = 0

base2.formFactor = "Custom"

base2.Size = Vector3.new(.2, .2, .2)

base2.BrickColor = BrickColor.new("Institutional white")

base2:BreakJoints()


mesh5 = Instance.new("BlockMesh", base2)

mesh5.Scale = Vector3.new(1, 2, 1)


motor5 = Instance.new("Motor", base)

motor5.Part0 = base

motor5.Part1 = base2

motor5.C0 = motor5.C0 * CFrame.new(0, -.3, 0) * CFrame.Angles(.7, 0, 0) + Vector3.new(0, 0, -0.15)


base3 = Instance.new("Part", workspace)

base3.CanCollide = false

base3.Anchored = false

base3.TopSurface = 0

base3.BottomSurface = 0

base3.formFactor = "Custom"

base3.Size = Vector3.new(.2, .2, .2)

base3.BrickColor = BrickColor.new("Institutional white")

base3:BreakJoints()


mesh6 = Instance.new("BlockMesh", base3)

mesh6.Scale = Vector3.new(1, 2, 1)


motor6 = Instance.new("Motor", base)

motor6.Part0 = base

motor6.Part1 = base3

motor6.C0 = motor6.C0 * CFrame.new(0, -.3, 0) * CFrame.Angles(-.7, 0, 0) + Vector3.new(0, 0, 0.15)


base4 = Instance.new("Part", workspace)

base4.CanCollide = false

base4.Anchored = false

base4.TopSurface = 0

base4.BottomSurface = 0

base4.formFactor = "Custom"

base4.Size = Vector3.new(.2, .2, .2)

base4.BrickColor = BrickColor.new("Institutional white")

base4:BreakJoints()


mesh7 = Instance.new("BlockMesh", base4)

mesh7.Scale = Vector3.new(1, 3.7, .5)


motor7 = Instance.new("Motor", base)

motor7.Part0 = base

motor7.Part1 = base4

motor7.C0 = motor7.C0 * CFrame.new(0, -.5, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, -.15, -.28)


base5 = Instance.new("Part", workspace)

base5.CanCollide = false

base5.Anchored = false

base5.TopSurface = 0

base5.BottomSurface = 0

base5.formFactor = "Custom"

base5.Size = Vector3.new(.2, .2, .2)

base5.BrickColor = BrickColor.new("Institutional white")

base5:BreakJoints()


mesh8 = Instance.new("BlockMesh", base5)

mesh8.Scale = Vector3.new(1, 3.2, .5)


motor8 = Instance.new("Motor", base)

motor8.Part0 = base

motor8.Part1 = base5

motor8.C0 = motor8.C0 * CFrame.new(0, -.7, 0) * CFrame.Angles(0, 0, 0) + Vector3.new(0, .15, .28)


inside = Instance.new("Part", workspace)

inside.CanCollide = false

inside.Anchored = false

inside.TopSurface = 0

inside.BottomSurface = 0

inside.formFactor = "Custom"

inside.Size = Vector3.new(.2, .5, .2)

inside.BrickColor = BrickColor.new("Institutional white")

inside:BreakJoints()


new = Instance.new("CylinderMesh", inside)

new.Scale = Vector3.new(.35, 3, .35)


mot = Instance.new("Motor", base)

mot.Part0 = base

mot.Part1 = inside

mot.C0 = mot.C0 * CFrame.new(0, -.5, 0)


inside2 = Instance.new("Part", workspace)

inside2.CanCollide = false

inside2.Anchored = false

inside2.TopSurface = 0

inside2.BottomSurface = 0

inside2.formFactor = "Custom"

inside2.Size = Vector3.new(.5, .5, .5)

inside2.BrickColor = BrickColor.new("Dark stone grey")

inside2:BreakJoints()


new2 = Instance.new("CylinderMesh", inside2)

new2.Scale = Vector3.new(1, 1.2, 1)


mot2 = Instance.new("Motor", inside)

mot2.Part0 = inside

mot2.Part1 = inside2

mot2.C0 = mot2.C0 * CFrame.new(0, -.2, 0)


inside3 = Instance.new("Part", workspace)

inside3.CanCollide = false

inside3.Anchored = false

inside3.TopSurface = 0

inside3.BottomSurface = 0

inside3.formFactor = "Custom"

inside3.Size = Vector3.new(.2, .2, .2)

inside3.BrickColor = BrickColor.new("Institutional white")

inside3:BreakJoints()


new3 = Instance.new("CylinderMesh", inside3)

new3.Scale = Vector3.new(.8, .6, .8)


mot3 = Instance.new("Motor", inside2)

mot3.Part0 = inside2

mot3.Part1 = inside3

mot3.C0 = mot3.C0 * CFrame.new(0, -.35, -.2) 


inside4 = Instance.new("Part", workspace)

inside4.CanCollide = false

inside4.Anchored = false

inside4.TopSurface = 0

inside4.BottomSurface = 0

inside4.formFactor = "Custom"

inside4.Size = Vector3.new(.2, .2, .2)

inside4.BrickColor = BrickColor.new("Institutional white")

inside4:BreakJoints()


new4 = Instance.new("CylinderMesh", inside4)

new4.Scale = Vector3.new(.8, .55, .8)


mot4 = Instance.new("Motor", inside2)

mot4.Part0 = inside2

mot4.Part1 = inside4

mot4.C0 = mot4.C0 * CFrame.new(0, -.35, -.05) 


in5 = Instance.new("Part", workspace)

in5.CanCollide = false

in5.Anchored = false

in5.TopSurface = 0

in5.BottomSurface = 0

in5.formFactor = "Custom"

in5.Size = Vector3.new(.2, .2, .2)

in5.BrickColor = BrickColor.new("Really black")

in5:BreakJoints()


new5 = Instance.new("BlockMesh", in5)

new5.Scale = Vector3.new(.4, .3, 2)


mot5 = Instance.new("Motor", inside2)

mot5.Part0 = inside2

mot5.Part1 = in5

mot5.C0 = mot5.C0 * CFrame.new(0, -.34, 0) 


out = Instance.new("Part", workspace)

out.CanCollide = false

out.Anchored = false

out.TopSurface = 0

out.BottomSurface = 0

out.formFactor = "Custom"

out.Size = Vector3.new(.2, .2, .2)

out.BrickColor = BrickColor.new("Institutional white")

out:BreakJoints()


new6 = Instance.new("CylinderMesh", out)

new6.Scale =Vector3.new(.7, .5, .7)


mot6 = Instance.new("Motor", inside2)

mot6.Part0 = inside2

mot6.Part1 = out

mot6.C0 = mot6.C0 * CFrame.new(0, -.35, .15)


out2 = Instance.new("Part", workspace)

out2.CanCollide = false

out2.Anchored = false

out2.TopSurface = 0

out2.BottomSurface = 0

out2.formFactor = "Custom"

out2.Size = Vector3.new(.2, .2, .2)

out2.BrickColor = BrickColor.new("Really black")

out2:BreakJoints()


new7 = Instance.new("BlockMesh", out2)

new7.Scale = Vector3.new(1, .4, 3.5)


mot7 = Instance.new("Motor", inside2)

mot7.Part0 = inside2

mot7.Part1 = out2

mot7.C0 = mot7.C0 * CFrame.new(0, -.41, -.02)


blade = Instance.new("Part", workspace)

blade.CanCollide = false

blade.Anchored = false

blade.TopSurface = 0

blade.BottomSurface = 0

blade.formFactor = "Custom"

blade.Reflectance = 0.1

blade.Size = Vector3.new(.2, .7, .2)

blade.BrickColor = BrickColor.new("Mid gray")

blade:BreakJoints()


nu = Instance.new("BlockMesh", blade)

nu.Scale = Vector3.new(.3, 6, 2)


mo = Instance.new("Motor", out2)

mo.Part0 = out2

mo.Part1 = blade

mo.C0 = mo.C0 * CFrame.new(0, -2.05, -.1)


blade1 = Instance.new("Part", workspace)

blade1.CanCollide = false

blade1.Anchored = false

blade1.TopSurface = 0

blade1.BottomSurface = 0

blade1.formFactor = "Custom"

blade1.Size = Vector3.new(.2, .2, .2)

blade1.Reflectance = 0.1

blade1.BrickColor = BrickColor.new("Mid gray")

blade1:BreakJoints()


nu1 = Instance.new("BlockMesh", blade1)

nu1.Scale = Vector3.new(.3, 7, 1.2)


mo1 = Instance.new("Motor", out2)

mo1.Part0 = out2

mo1.Part1 = blade1

mo1.C0 = mo1.C0 * CFrame.new(0, -1, .1) * CFrame.Angles(0, 0, 0)


blade2 = Instance.new("Part", workspace)

blade2.CanCollide = false

blade2.Anchored = false

blade2.TopSurface = 0

blade2.BottomSurface = 0

blade2.formFactor = "Custom"

blade2.Size = Vector3.new(.2, .2, .2)

blade2.Reflectance = 0.1

blade2.BrickColor = BrickColor.new("Mid gray")

blade2:BreakJoints()


nu2 = Instance.new("BlockMesh", blade2)

nu2.Scale = Vector3.new(.3, 3.4, 1.2)


mo2 = Instance.new("Motor", blade1)

mo2.Part0 = blade1

mo2.Part1 = blade2

mo2.C0 = mo2.C0 * CFrame.new(0, -.15, -.02) * CFrame.Angles(-.5, 0, 0)


blade3 = Instance.new("Part", workspace)

blade3.CanCollide = false

blade3.Anchored = false

blade3.TopSurface = 0

blade3.BottomSurface = 0

blade3.formFactor = "Custom"

blade3.Size = Vector3.new(.2, .2, .2)

blade3.Reflectance = 0.1

blade3.BrickColor = BrickColor.new("Mid gray")

blade3:BreakJoints()


nu3 = Instance.new("BlockMesh", blade3)

nu3.Scale = Vector3.new(.3, 13.8, 1.5)


mo3 = Instance.new("Motor", blade1)

mo3.Part0 = blade1

mo3.Part1 = blade3

mo3.C0 = mo3.C0 * CFrame.new(0, -1.77, .1) 


blade4 = Instance.new("Part", workspace)

blade4.CanCollide = false

blade4.Anchored = false

blade4.TopSurface = 0

blade4.BottomSurface = 0

blade4.formFactor = "Custom"

blade4.Size = Vector3.new(.2, .2, .2)

blade4.Reflectance = 0.1

blade4.BrickColor = BrickColor.new("Mid gray")

blade4:BreakJoints()


nu4 = Instance.new("SpecialMesh", blade4)

nu4.MeshType = "Wedge"

nu4.Scale = Vector3.new(.3, 4, 3.2)


mo4 = Instance.new("Motor", blade)

mo4.Part0 = blade

mo4.Part1 = blade4

mo4.C0 = mo4.C0 * CFrame.new(0, -2.5, .12) * CFrame.Angles(math.pi/1, 0, 0)


detail = Instance.new("Part", workspace)

detail.CanCollide = false

detail.Anchored = false

detail.TopSurface = 0

detail.BottomSurface = 0

detail.formFactor = "Custom"

detail.Size = Vector3.new(.2, .2, .2)

detail.BrickColor = BrickColor.new("Really black")

detail:BreakJoints()


dme = Instance.new("BlockMesh", detail)

dme.Scale = Vector3.new(1.3, 5.2, 1.3)


dmo = Instance.new("Motor", handle)

dmo.Part0 = handle

dmo.Part1 = detail

dmo.C0 = dmo.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/1, 0, 0)


detail2 = Instance.new("Part", workspace)

detail2.CanCollide = false

detail2.Anchored = false

detail2.TopSurface = 0

detail2.BottomSurface = 0

detail2.formFactor = "Custom"

detail2.Size = Vector3.new(.2, .2, .2)

detail2.BrickColor = BrickColor.new("Really black")

detail2:BreakJoints()


dme2 = Instance.new("BlockMesh", detail2)

dme2.Scale = Vector3.new(1.2, 2.2, 1.2) -- X, Z +2 - 3


dmo2 = Instance.new("Motor", handle2)

dmo2.Part0 = handle2

dmo2.Part1 = detail2

dmo2.C0 = dmo2.C0 * CFrame.new(0, .1, -.03) * CFrame.Angles(.15, 0, 0) 


detail3 = Instance.new("Part", workspace)

detail3.CanCollide = false

detail3.Anchored = false

detail3.TopSurface = 0

detail3.BottomSurface = 0

detail3.formFactor = "Custom"

detail3.Size = Vector3.new(.2, .2, .2)

detail3.BrickColor = BrickColor.new("Really black")

detail3:BreakJoints()


dme3 = Instance.new("BlockMesh", detail3)

dme3.Scale = Vector3.new(1.5, 2, 1.6)


dmo3 = Instance.new("Motor", handle3)

dmo3.Part0 = handle3

dmo3.Part1 = detail3

dmo3.C0 = dmo3.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)


bas = Instance.new("Part", workspace)

bas.CanCollide = false

bas.Anchored = false

bas.TopSurface = 0

bas.BottomSurface = 0

bas.formFactor = "Custom"

bas.Size = Vector3.new(.2, .2, .2)

bas.BrickColor = BrickColor.new("Really black")

bas:BreakJoints()


dmo4 = Instance.new("BlockMesh", bas)

dmo4.Scale = Vector3.new(2.5, 1, 1)


dme4 = Instance.new("Motor", base)

dme4.Part0 = base

dme4.Part1 = bas

dme4.C0 = dme4.C0 * CFrame.new(0, 0, 0)


bas2 = Instance.new("Part", workspace)

bas2.CanCollide = false

bas2.Anchored = false

bas2.TopSurface = 0

bas2.BottomSurface = 0

bas2.formFactor = "Custom"

bas2.Size = Vector3.new(.2, .2, .2)

bas2:BreakJoints()


dme5 = Instance.new("BlockMesh", bas2)

dme5.Scale = Vector3.new(1.2, 1.7, 0.8)


dmo5 = Instance.new("Motor", base2)

dmo5.Part0 = base2

dmo5.Part1 = bas2

dmo5.C0 = dmo5.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)


bas3 = Instance.new("Part", workspace)

bas3.CanCollide = false

bas3.Anchored = false

bas3.TopSurface = 0

bas3.BottomSurface = 0

bas3.formFactor = "Custom"

bas3.Size = Vector3.new(.2, .2, .2)

bas3:BreakJoints()


dme6 = Instance.new("BlockMesh", bas3)

dme6.Scale = Vector3.new(1.2, 1.7, 0.8)


dmo6 = Instance.new("Motor", base3)

dmo6.Part0 = base3

dmo6.Part1 = bas3

dmo6.C0 = dmo6.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 


line = Instance.new("Part", workspace)

line.CanCollide = false

line.Anchored = false

line.TopSurface = 0

line.BottomSurface = 0

line.formFactor = "Custom"

line.Size = Vector3.new(.5, .5, .5)

line.BrickColor = BrickColor.new("Dark stone grey")

line:BreakJoints()


msh = Instance.new("CylinderMesh", line)

msh.Scale = Vector3.new(.2, 1.2, .2)


li = Instance.new("Motor", line)

li.Part0 = line

li.Part1 = inside2

li.C0 = li.C0 * CFrame.new(.18, 0, -.15)


line1 = Instance.new("Part", workspace)

line1.CanCollide = false

line1.Anchored = false

line1.TopSurface = 0

line1.BottomSurface = 0

line1.formFactor = "Custom"

line1.Size = Vector3.new(.5, .5, .5)

line1.BrickColor = BrickColor.new("Dark stone grey")

line1:BreakJoints()


msh1 = Instance.new("CylinderMesh", line1)

msh1.Scale = Vector3.new(.2, 1.2, .2)


li1 = Instance.new("Motor", line1)

li1.Part0 = line1

li1.Part1 = inside2

li1.C0 = li1.C0 * CFrame.new(-.18, 0, -.15)


line2 = Instance.new("Part", workspace)

line2.CanCollide = false

line2.Anchored = false

line2.TopSurface = 0

line2.BottomSurface = 0

line2.formFactor = "Custom"

line2.Size = Vector3.new(.5, .5, .5)

line2.BrickColor = BrickColor.new("Dark stone grey")

line2:BreakJoints()


msh2 = Instance.new("CylinderMesh", line2)

msh2.Scale = Vector3.new(.2, 1.2, .2)


li2 = Instance.new("Motor", line2)

li2.Part0 = line2

li2.Part1 = inside2

li2.C0 = li2.C0 * CFrame.new(-.18, 0, .15)


line3 = Instance.new("Part", workspace)

line3.CanCollide = false

line3.Anchored = false

line3.TopSurface = 0

line3.BottomSurface = 0

line3.formFactor = "Custom"

line3.Size = Vector3.new(.5, .5, .5)

line3.BrickColor = BrickColor.new("Dark stone grey")

line3:BreakJoints()


msh3 = Instance.new("CylinderMesh", line3)

msh3.Scale = Vector3.new(.2, 1.2, .2)


li3 = Instance.new("Motor", line3)

li3.Part0 = line3

li3.Part1 = inside2

li3.C0 = li3.C0 * CFrame.new(.18, 0, .15)


line4 = Instance.new("Part", workspace)

line4.CanCollide = false

line4.Anchored = false

line4.TopSurface = 0

line4.BottomSurface = 0

line4.formFactor = "Custom"

line4.Size = Vector3.new(.5, .5, .5)

line4.BrickColor = BrickColor.new("Dark stone grey")

line4:BreakJoints()


msh4 = Instance.new("CylinderMesh", line4)

msh4.Scale = Vector3.new(.2, 1.2, .2)


li4 = Instance.new("Motor", line4)

li4.Part0 = line4

li4.Part1 = inside2

li4.C0 = li4.C0 * CFrame.new(.24, 0, 0)


line5 = Instance.new("Part", workspace)

line5.CanCollide = false

line5.Anchored = false

line5.TopSurface = 0

line5.BottomSurface = 0

line5.formFactor = "Custom"

line5.Size = Vector3.new(.5, .5, .5)

line5.BrickColor = BrickColor.new("Dark stone grey")

line5:BreakJoints()


msh5 = Instance.new("CylinderMesh", line5)

msh5.Scale = Vector3.new(.2, 1.2, .2)


li5 = Instance.new("Motor", line5)

li5.Part0 = line5

li5.Part1 = inside2

li5.C0 = li5.C0 * CFrame.new(-.24, 0, 0)


dot = Instance.new("Part", workspace)

dot.CanCollide = false

dot.Anchored = false

dot.TopSurface = 0

dot.BottomSurface = 0

dot.formFactor = "Custom"

dot.Size = Vector3.new(.5, .5, .5)

dot.BrickColor = BrickColor.new("Really black")

dot:BreakJoints()


mh = Instance.new("CylinderMesh", dot)

mh.Scale = Vector3.new(.2, .5, .2)


mt = Instance.new("Motor", dot)

mt.Part0 = dot

mt.Part1 = inside2

mt.C0 = mt.C0 * CFrame.new(.15, -.18, .12)


dot1 = Instance.new("Part", workspace)

dot1.CanCollide = false

dot1.Anchored = false

dot1.TopSurface = 0

dot1.BottomSurface = 0

dot1.formFactor = "Custom"

dot1.Size = Vector3.new(.5, .5, .5)

dot1.BrickColor = BrickColor.new("Really black")

dot1:BreakJoints()


mh1 = Instance.new("CylinderMesh", dot1)

mh1.Scale = Vector3.new(.2, .5, .2)


mt1 = Instance.new("Motor", dot1)

mt1.Part0 = dot1

mt1.Part1 = inside2

mt1.C0 = mt1.C0 * CFrame.new(-.15, -.18, -.12)


dot2 = Instance.new("Part", workspace)

dot2.CanCollide = false

dot2.Anchored = false

dot2.TopSurface = 0

dot2.BottomSurface = 0

dot2.formFactor = "Custom"

dot2.Size = Vector3.new(.5, .5, .5)

dot2.BrickColor = BrickColor.new("Really black")

dot2:BreakJoints()


mh2 = Instance.new("CylinderMesh", dot2)

mh2.Scale = Vector3.new(.2, .5, .2)


mt2 = Instance.new("Motor", dot2)

mt2.Part0 = dot2

mt2.Part1 = inside2

mt2.C0 = mt2.C0 * CFrame.new(-.15, -.18, .12)


dot3 = Instance.new("Part", workspace)

dot3.CanCollide = false

dot3.Anchored = false

dot3.TopSurface = 0

dot3.BottomSurface = 0

dot3.formFactor = "Custom"

dot3.Size = Vector3.new(.5, .5, .5)

dot3.BrickColor = BrickColor.new("Really black")

dot3:BreakJoints()


mh3 = Instance.new("CylinderMesh", dot3)

mh3.Scale = Vector3.new(.2, .5, .2)


mt3 = Instance.new("Motor", dot3)

mt3.Part0 = dot3

mt3.Part1 = inside2

mt3.C0 = mt3.C0 * CFrame.new(.15, -.18, -.12)


dot4 = Instance.new("Part", workspace)

dot4.CanCollide = false

dot4.Anchored = false

dot4.TopSurface = 0

dot4.BottomSurface = 0

dot4.formFactor = "Custom"

dot4.Size = Vector3.new(.5, .5, .5)

dot4.BrickColor = BrickColor.new("Really black")

dot4:BreakJoints()


mh4 = Instance.new("CylinderMesh", dot4)

mh4.Scale = Vector3.new(.2, .5, .2)


mt4 = Instance.new("Motor", dot4)

mt4.Part0 = dot4

mt4.Part1 = inside2

mt4.C0 = mt4.C0 * CFrame.new(0, -.18, -.2)


dot5 = Instance.new("Part", workspace)

dot5.CanCollide = false

dot5.Anchored = false

dot5.TopSurface = 0

dot5.BottomSurface = 0

dot5.formFactor = "Custom"

dot5.Size = Vector3.new(.5, .5, .5)

dot5.BrickColor = BrickColor.new("Really black")

dot5:BreakJoints()


mh5 = Instance.new("CylinderMesh", dot5)

mh5.Scale = Vector3.new(.2, .5, .2)


mt5 = Instance.new("Motor", dot5)

mt5.Part0 = dot5

mt5.Part1 = inside2

mt5.C0 = mt5.C0 * CFrame.new(0, -.18, .2)


h = Instance.new("Part", workspace)

h.CanCollide = false

h.Anchored = false

h.TopSurface = 0

h.BottomSurface = 0

h.formFactor = "Custom"

h.Size = Vector3.new(.2, .2, .2)

h:BreakJoints()


m = Instance.new("SpecialMesh", h)

m.MeshType = "FileMesh"

m.MeshId = "http://www.roblox.com/asset/?id=3270017"

m.Scale = Vector3.new(.3, .3, .3)


mr = Instance.new("Motor", handle)

mr.Part0 = handle

mr.Part1 = h

mr.C0 = mr.C0 * CFrame.new(0, -1, .03) * CFrame.Angles(math.pi/2, 1.5, 0)



fin = Instance.new("Part", workspace)

fin.CanCollide = false

fin.Anchored = false

fin.TopSurface = 0

fin.BottomSurface = 0

fin.formFactor = "Custom"

fin.Size = Vector3.new(.2, .7, .2)

fin.BrickColor = BrickColor.new("Really black")

fin:BreakJoints()


la = Instance.new("BlockMesh", fin)

la.Scale = Vector3.new(.35, 7, .25)


lo = Instance.new("Motor", blade)

lo.Part0 = blade

lo.Part1 = fin

lo.C0 = lo.C0 * CFrame.new(0, -.45, -.2)


Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
return p
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return w
end
Mesh = function(par,num,x,y,z)
local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
end
msh.Scale = Vector3.new(x,y,z)
return msh
end
function TweenCFrame(part,cframe,q)
	local c0 = part.CFrame
	for i = -90,90,q do
		local r = ((math.sin(math.rad(i))+1)/2)
		part.CFrame = CFrame.new(c0.p:lerp(cframe.p,r))
		wait()
	end
end
function fire()
mouse=plyr:GetMouse()
local bul= Part(1,1,1,'',0,false,true,gun)
m=Mesh(bul,'http://www.roblox.com/asset/?id=9982590',.1,.1,.1)
bul.CFrame=blade.CFrame
TweenCFrame(bul,CFrame.new(mouse.Hit.p),50)
for i=1,5 do wait() m.Scale=m.Scale+Vector3.new(1,1,1)end
ex=Instance.new("Explosion",workspace) ex.Position=bul.Position
bul:remove()
end
function gune()cant=true
motor.C0 =CFrame.new(0, -1.5, 0) * CFrame.Angles(0, 0, math.pi/4) 
for angle = 45, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), 0,math.rad(-angle/2))wait()end
gun=Instance.new("Model",char)
bas2 = Part(1,1,1,'',1,false,false,gun)
bas2:BreakJoints()
fakel2 = Instance.new("Weld",gun)
fakel2.Part0 = char.Torso
fakel2.Part1 = bas2
welditbro2 = Instance.new("Weld", gun)
welditbro2.C0 = CFrame.new(0, 0.5, 0)
welditbro2.Part0 = char['Left Arm']
welditbro2.Part1 = bas2  
for angle = 45, 95, 10 do fakel2.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), 0,math.rad(angle/2))wait()end
cl=Part(.1,.1,.1,'White',0,false,false,gun)
wl=Weld(cl,blade,0,-.5,0,0,0,0,cl)
cly=Mesh(cl,1,1,1,1)
for i=1,10 do wait()cly.Scale=cly.Scale+Vector3.new(0,2.5,0)end
function onClicked(mouse)fire()end
end
function gund()cant=false
for i=1,10 do wait()cly.Scale=cly.Scale-Vector3.new(0,2.5,0)end
motor.C0 =CFrame.new(0, -1.1, 0) * CFrame.Angles(math.pi/2, 0, 0) 
gun:remove()
function onClicked(mouse)anim()end
for angle = 95, 5, -20 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle), 0)wait()end
for angle = 5, 45, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))wait()end
end
---swing
function swing() if cant==true then return end
for angle = 45, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle), 0)wait()end
for angle = 95, 5, -20 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle), 0)wait()end
for angle = 5, 45, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))wait()end
end
---testmove
function Test() if cant==true then return end
for angle = 45, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle), 0)wait()end
for angle = 95, 5, -20 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle), 1)wait()end
for angle = 5, 45, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))wait()end
end
---slash
function anim() if cant==true then return end
for angle = 45, 95, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), 0)wait()end
for angle = 95, 5, -20 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), 0)wait()end
for angle = 5, 45, 10 do fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))wait()end
end
tol.Selected:connect(function(mouse)mouse.KeyDown:connect(onKeyDown)
mouse.Button1Down:connect(function()onClicked(mouse)end)
function onClicked(mouse)anim()end
bas = Part(1,1,1,'',1,false,false,char)
bas:BreakJoints()
fakel = Instance.new("Weld",char)
fakel.Part0 = char.Torso
fakel.Part1 = bas
coroutine.wrap(function()
for angle = 0, 45, 5 do
        if fakel == nil then return end
fakel.C0 = CFrame.new(1.5, 0.5, 0)  * CFrame.Angles(math.rad(angle), math.rad(angle/2), math.rad(0))
wait()
end
end)()
welditbro = Instance.new("Weld", char)
welditbro.C0 = CFrame.new(0, 0.5, 0)
welditbro.Part0 = char['Right Arm']
welditbro.Part1 = bas
end)
function onKeyDown(key)
key = key:lower()
if key == "q" then
swing()end
if key == "x" then
Test()end 
if key == "e" then
le = not le
if le == true then gune() else gund()
end end end

game.Lighting.Outlines = false
  
  
------credits to stealers if u stole it ur a low life but these are the credits
print("credits")
print("ghostbusters1")
print("jarredbcv")
print("infocus")
print("hi")