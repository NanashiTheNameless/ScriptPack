script.Name = "Morph 2.0"
plyr = game.Players.LocalPlayer
char = plyr.Character
head = char.Head
torso = char.Torso
hum = char.Humanoid
limbs = {char:findFirstChild("Right Arm"),char:findFirstChild("Left Arm"),char:findFirstChild("Right Leg"),char:findFirstChild("Left Leg")}
joints = {torso:findFirstChild("Right Shoulder"), torso:findFirstChild("Left Shoulder"), torso:findFirstChild("Right Hip"), torso:findFirstChild("Left Hip"), torso:findFirstChild("Neck")}
joints[1].DesiredAngle = 0
joints[2].DesiredAngle = 0
joints[3].DesiredAngle = 0
joints[4].DesiredAngle = 0
joints[5].DesiredAngle = 0
scyh = {Instance.new("Part"), Instance.new("Part"), Instance.new("Part"), Instance.new("Part"), Instance.new("Part"), Instance.new("Part"), Instance.new("Part")}
welds = {Instance.new("Motor6D"), Instance.new("Motor6D"), Instance.new("Motor6D"), Instance.new("Motor6D"), Instance.new("Motor6D"), Instance.new("Motor6D")}
cym = {Instance.new("CylinderMesh"),Instance.new("CylinderMesh"),Instance.new("CylinderMesh"),Instance.new("CylinderMesh"),Instance.new("CylinderMesh"),Instance.new("CylinderMesh")}
bm = {}
sm = {}
scyh[1]:BreakJoints()
scyh[1].Parent = char
scyh[1].Name = "Handle"
scyh[1].CanCollide = false
scyh[1].FormFactor = "Custom"
scyh[1].Size = Vector3.new(0.30,7,0.50)
scyh[1].BrickColor = BrickColor.new("Really black")
scyh[1].CFrame = CFrame.new(5,5,5)
cym[1].Parent = scyh[1]
welds[1].Part0 = scyh[1]
welds[1].Part1 = char.Torso
welds[1].C0 = CFrame.new(0,1,-0.6)*CFrame.Angles(0,0,2)
welds[1].Parent = scyh[1]
scyh[2].Parent = char
scyh[2]:BreakJoints()
scyh[2].CanCollide = false
scyh[2].FormFactor = "Custom"
scyh[2].Material = "Wood"
scyh[2].Size = Vector3.new(2, 2.4, 2)
scyh[2].BrickColor = BrickColor.new("Medium stone grey")
welds[2].Part0 = scyh[2]
welds[2].Part1 = scyh[1]
welds[2].C0 = CFrame.new(0,-3.5,0)
welds[2].Parent = scyh[2]
bm1 = Instance.new("BlockMesh")
bm1.Parent = scyh[2]
bm1.Scale = Vector3.new(0.200, 0.25, 0.15)
table.insert(bm, 1, bm1)
scyh[3]:BreakJoints()
scyh[3].Parent = char
scyh[3].CanCollide = false
scyh[3].FormFactor = "Custom"
scyh[3].Size = Vector3.new(2, 2.4, 2)
scyh[3].BrickColor = BrickColor.new("Medium stone grey")
scyh[3].Material = "Foil"
bm2 = Instance.new("BlockMesh")
bm2.Parent = scyh[3]
bm2.Scale = Vector3.new(0.200, 0.15, 0.15)
table.insert(bm, 2, bm2)
welds[3].Part0 = scyh[3]
welds[3].Part1 = scyh[2]
welds[3].C0 = CFrame.new(0.2,-0.2,0)
welds[3].Parent = scyh[3]
scyh7 = Instance.new("Part")
sm = Instance.new("SpecialMesh", scyh7)
sm.MeshType = "Wedge"
sm.Scale = Vector3.new(0.10,8,3)
scyh7:BreakJoints()
scyh7.Parent = char
scyh7.CanCollide = false
scyh7.BrickColor = BrickColor.new("Really black")
scyh7.TopSurface = "Smooth"
scyh7.FormFactor = "Custom"
scyh7.Size = Vector3.new(0.5,0.5,0.5)
scyh7.BottomSurface = "Smooth"
welds7 = Instance.new("Weld", scyh[1])
welds7.Part0 = scyh[1]
welds7.Part1 = scyh7
welds7.C0 = CFrame.new(-2,4.59,0.10)*CFrame.Angles(1.59,0,1.49)
table.insert(welds, 7, welds7)
table.insert(scyh, 7, scyh7)
bm8 = Instance.new("BlockMesh")
bm8.Scale = Vector3.new(0.2, 3.5, 0.6)
scyh8 = Instance.new("Part")
scyh8:BreakJoints()
bm8.Parent = scyh8
scyh8.Parent = char
scyh8.CanCollide = false
scyh8.FormFactor = "Custom"
scyh8.Size = Vector3.new(0.5,0.5,0.5)
scyh8.BrickColor = BrickColor.new("Medium stone grey")
scyh8.Material = "Foil"
welds8 = Instance.new("Weld", scyh[2])
welds8.Part0 = scyh[2]
welds8.Part1 = scyh8
welds8.C0 = CFrame.new(0.15,1.05,0)*CFrame.Angles(0,0,0)
table.insert(scyh, 90, scyh8)
scyh9 = Instance.new("Part")
sm9 = Instance.new("SpecialMesh", scyh9)
sm9.MeshType = "Wedge"
scyh9.CanCollide = false
sm9.Scale = Vector3.new(0.10,8,1.5)
scyh9:BreakJoints()
scyh9.Parent = char
scyh9.BrickColor = BrickColor.new("Really black")
scyh9.TopSurface = "Smooth"
scyh9.FormFactor = "Custom"
scyh9.Size = Vector3.new(0.5,0.5,0.5)
scyh9.BottomSurface = "Smooth"
welds9 = Instance.new("Weld", scyh[7])
welds9.Part0 = scyh[7]
welds9.Part1 = scyh9
welds9.C0 = CFrame.new(0,2,1.2)*CFrame.Angles(0.4,0,0)
table.insert(scyh, 91, scyh9)
bm10 = Instance.new("BlockMesh")
bm10.Scale = Vector3.new(0.5, 0.5, 0.08)
scyh10 = Instance.new("Part")
scyh10:BreakJoints()
scyh10.CanCollide = false
bm10.Parent = scyh10
scyh10.Parent = char
scyh10.FormFactor = "Custom"
scyh10.Size = Vector3.new(0.5,0.5,0.5)
scyh10.BrickColor = BrickColor.new("Royal purple")
scyh10.Material = "Foil"
welds10 = Instance.new("Weld", scyh8)
welds10.Part0 = scyh8
welds10.Part1 = scyh10
welds10.C0 = CFrame.new(-0.1,0,-0.06)*CFrame.Angles(0,0,0)
table.insert(scyh, 92, scyh10)
bm11 = Instance.new("BlockMesh")
bm11.Scale = Vector3.new(0.5, 0.5, 0.08)
scyh11 = Instance.new("Part")
scyh11:BreakJoints()
bm11.Parent = scyh11
scyh11.CanCollide = false
scyh11.Parent = char
scyh11.FormFactor = "Custom"
scyh11.Size = Vector3.new(0.5,0.5,0.5)
scyh11.BrickColor = BrickColor.new("Royal purple")
scyh11.Material = "Foil"
welds11 = Instance.new("Weld", scyh8)
welds11.Part0 = scyh8
welds11.Part1 = scyh11
welds11.C0 = CFrame.new(-0.1,0.5,-0.06)*CFrame.Angles(0,0,0)
table.insert(scyh, 93, scyh11)
bm12 = Instance.new("BlockMesh")
bm12.Scale = Vector3.new(0.5, 0.5, 0.08)
scyh12 = Instance.new("Part")
scyh12:BreakJoints()
bm12.Parent = scyh12
scyh12.CanCollide = false
scyh12.Parent = char
scyh12.FormFactor = "Custom"
scyh12.Size = Vector3.new(0.5,0.5,0.5)
scyh12.BrickColor = BrickColor.new("Royal purple")
scyh12.Material = "Foil"
welds12 = Instance.new("Weld", scyh8)
welds12.Part0 = scyh8
welds12.Part1 = scyh12
welds12.C0 = CFrame.new(-0.1,-0.5,-0.069)*CFrame.Angles(0,0,0)
table.insert(scyh, 94, scyh12)
scyh20 = Instance.new("Part", char)
scyh20:BreakJoints()
scyh20.CanCollide = false
scyh20.FormFactor = "Custom"
scyh20.Size = Vector3.new(0.5,0.5,0.45)
scyh20.BrickColor = BrickColor.new("White")
cylim = Instance.new("CylinderMesh", scyh20)
cylim.Scale = Vector3.new(4,9,1)
weld1 = Instance.new("Weld", scyh[1])
weld1.Part0 = scyh[1]
weld1.Part1 = scyh20
weld1.C0 = CFrame.new(0,-1.3,0)
table.insert(scyh, 95, scyh20)
scyh21 = Instance.new("Part", char)
scyh21:BreakJoints()
scyh21.FormFactor = "Custom"
scyh21.Size = Vector3.new(0.5,0.5,0.3)
scyh21.BrickColor = BrickColor.new("Really black")
cylim1 = Instance.new("CylinderMesh", scyh21)
cylim1.Scale = Vector3.new(4,2,0.9)
weld2 = Instance.new("Weld", scyh[1])
weld2.Part0 = scyh[1]
scyh21.CanCollide = false
weld2.Part1 = scyh21
weld2.C0 = CFrame.new(0,-3.3,0)
table.insert(scyh, 96, scyh21)
scyh22 = Instance.new("Part", char)
scyh22:BreakJoints()
scyh22.CanCollide = false
scyh22.FormFactor = "Custom"
scyh22.Size = Vector3.new(0.5,0.5,0.5)
scyh22.BrickColor = BrickColor.new("Medium stone grey")
cylim2 = Instance.new("CylinderMesh", scyh22)
cylim2.Scale = Vector3.new(4,0.5,0.9)
weld3 = Instance.new("Weld", scyh[1])
weld3.Part0 = scyh[1]
weld3.Part1 = scyh22
weld3.C0 = CFrame.new(0,-3.9,0)
game.Workspace.Base:BreakJoints()
table.insert(scyh, 97, scyh22)

scyh23 = Instance.new("Part", char)
scyh23:BreakJoints()
scyh23.CanCollide = false
scyh23.FormFactor = "Custom"
scyh23.Size = Vector3.new(0.3,0.5,0.5)
scyh23.BrickColor = BrickColor.new("Medium stone grey")
cylim3 = Instance.new("BlockMesh", scyh23)
cylim3.Scale = Vector3.new(4,0.5,0.5)
weld4 = Instance.new("Weld", scyh[1])
weld4.Part0 = scyh[1]
weld4.Part1 = scyh23
weld4.C0 = CFrame.new(-0.05,-4.5,0)
table.insert(scyh, 98, scyh23)

scyh24 = Instance.new("Part", char)
scyh24:BreakJoints()
scyh24.CanCollide = false
scyh24.FormFactor = "Custom"
scyh24.Size = Vector3.new(0.3,0.5,0.5)
scyh24.BrickColor = BrickColor.new("Medium stone grey")
cylim4 = Instance.new("BlockMesh", scyh24)
cylim4.Scale = Vector3.new(4,0.5,0.5)
weld5 = Instance.new("Weld", scyh[1])
weld5.Part0 = scyh[1]
weld5.Part1 = scyh24
weld5.C0 = CFrame.new(-0.05,-4.5,0)*CFrame.Angles(0,0,1.5)
table.insert(scyh, 99, scyh24)

scyh25 = Instance.new("Part")
sm25 = Instance.new("SpecialMesh", scyh25)
sm25.MeshType = "Wedge"
scyh25.CanCollide = false
sm25.Scale = Vector3.new(0.10,8,1.5)
scyh25:BreakJoints()
scyh25.Parent = char
scyh25.BrickColor = BrickColor.new("Really black")
scyh25.TopSurface = "Smooth"
scyh25.FormFactor = "Custom"
scyh25.Size = Vector3.new(0.5,0.5,0.5)
scyh25.BottomSurface = "Smooth"
welds25 = Instance.new("Weld", scyh9)
welds25.Part0 = scyh9
welds25.Part1 = scyh25
welds25.C0 = CFrame.new(0,0.90,0.65)*CFrame.Angles(0.3,0,0)
table.insert(scyh, 100, scyh25)

game.Workspace.Base:BreakJoints()

char.Torso.CFrame = CFrame.new(5,10,5)

nub = false
nub1 = false
hop.Selected:connect(function()
char.Humanoid.WalkSpeed = 0
char.Torso.Anchored = true
Cylinders = {}
local c1 = Instance.new("CylinderMesh")
local c2 = Instance.new("CylinderMesh")
table.insert(Cylinders, 1, c1)
table.insert(Cylinders, 2, c2)
cparts = {}
local cp1 = Instance.new("Part", char)
local cp2 = Instance.new("Part", char)
table.insert(cparts, 1, cp1)
table.insert(cparts, 2, cp2)
cp1.FormFactor = "Custom"
cp1.Size = Vector3.new(0.5,0.5,0.5)
cp2.FormFactor = "Custom"
cp2.Size = Vector3.new(0.5,0.5,0.5)
c1.Parent = cp1
cp1.CanCollide = false
c1.Scale = Vector3.new(4,0.50,4)
c2.Parent = cp2
cp2.CanCollide = false
c2.Scale = Vector3.new(4,0.50,4)
cp1.BrickColor = BrickColor.new("Really black")
cp2.BrickColor = BrickColor.new("Really black")
welds = {}
weld = Instance.new("Weld", cp1)
weld1 = Instance.new("Weld", cp2)
table.insert(welds, 1, weld)
table.insert(welds, 2, weld1)
weld.Part0 = scyh[1]
weld.Part1 = cp1
weld.C0 = CFrame.new(0,-7.5,0)
nerp = 0
luk1 = coroutine.create(function()
while nub == false do
if nerp == 15 then
nub = true
else
wait(0.03) 
weld.C0 = weld.C0 + Vector3.new(0,0.5,0) 
nerp = nerp + 1
end
end
end)
weld1.Part0 = scyh[1]
weld1.Part1 = cp2
weld1.C0 = CFrame.new(0,7.5,0)
nerp1 = 0
luk2 = coroutine.create(function()
while nub1 == false do
if nerp1 == 15 then
nub1 = true
scyh[1].Transparency = 0.1
scyh[2].Transparency = 0.1
scyh[3].Transparency = 0.1
scyh7.Transparency = 0.1
scyh8.Transparency = 0.1
scyh9.Transparency = 0.1
scyh10.Transparency = 0.1
scyh11.Transparency = 0.1
scyh12.Transparency = 0.1
scyh20.Transparency = 0.1
scyh21.Transparency = 0.1
scyh22.Transparency = 0.1
scyh23.Transparency = 0.1
scyh24.Transparency = 0.1
scyh25.Transparency = 0.1
wait(0.03)
scyh[1].Transparency = 0.2
scyh[2].Transparency = 0.2
scyh[3].Transparency = 0.2
scyh7.Transparency = 0.2
scyh8.Transparency = 0.2
scyh9.Transparency = 0.2
scyh10.Transparency = 0.2
scyh11.Transparency = 0.2
scyh12.Transparency = 0.2
scyh20.Transparency = 0.2
scyh21.Transparency = 0.2
scyh22.Transparency = 0.2
scyh23.Transparency = 0.2
scyh24.Transparency = 0.2
scyh25.Transparency = 0.2
wait(0.03)
scyh[1].Transparency = 0.3
scyh[2].Transparency = 0.3
scyh[3].Transparency = 0.3
scyh7.Transparency = 0.3
scyh8.Transparency = 0.3
scyh9.Transparency = 0.3
scyh10.Transparency = 0.3
scyh11.Transparency = 0.3
scyh12.Transparency = 0.3
scyh20.Transparency = 0.3
scyh21.Transparency = 0.3
scyh22.Transparency = 0.3
scyh23.Transparency = 0.3
scyh24.Transparency = 0.3
scyh25.Transparency = 0.3
wait(0.03)
scyh[1].Transparency = 0.4
scyh[2].Transparency = 0.4
scyh[3].Transparency = 0.4
scyh7.Transparency = 0.4
scyh8.Transparency = 0.4
scyh9.Transparency = 0.4
scyh10.Transparency = 0.4
scyh11.Transparency = 0.4
scyh12.Transparency = 0.4
scyh20.Transparency = 0.4
scyh21.Transparency = 0.4
scyh22.Transparency = 0.4
scyh23.Transparency = 0.4
scyh24.Transparency = 0.4
scyh25.Transparency = 0.4
wait(0.03)
scyh[1].Transparency = 0.5
scyh[2].Transparency = 0.5
scyh[3].Transparency = 0.5
scyh7.Transparency = 0.5
scyh8.Transparency = 0.5
scyh9.Transparency = 0.5
scyh10.Transparency = 0.5
scyh11.Transparency = 0.5
scyh12.Transparency = 0.5
scyh20.Transparency = 0.5
scyh21.Transparency = 0.5
scyh22.Transparency = 0.5
scyh23.Transparency = 0.5
scyh24.Transparency = 0.5
scyh25.Transparency = 0.5
wait(0.03)
scyh[1].Transparency = 1
scyh[2].Transparency = 1
scyh[3].Transparency = 1
scyh7.Transparency = 1
scyh8.Transparency = 1
scyh9.Transparency = 1
scyh10.Transparency = 1
scyh11.Transparency = 1
scyh12.Transparency = 1
scyh20.Transparency = 1
scyh21.Transparency = 1
scyh22.Transparency = 1
scyh23.Transparency = 1
scyh24.Transparency = 1
scyh25.Transparency = 1
wait(0.01)
cp1.Transparency = 0.1
cp2.Transparency = 0.1
wait(0.03)
cp1.Transparency = 0.2
cp2.Transparency = 0.2
wait(0.03)
cp1.Transparency = 0.3
cp2.Transparency = 0.3
wait(0.03)
cp1.Transparency = 0.4
cp2.Transparency = 0.4
wait(0.03)
cp1.Transparency = 0.5
cp2.Transparency = 0.5
wait(0.03)
cp1.Transparency = 1
cp2.Transparency = 1

char.Torso.Anchored = false
hum.WalkSpeed = 16

weld1:Destroy()
weld2:Destroy()
else
wait(0.03) 
weld1.C0 = weld1.C0 - Vector3.new(0,0.5,0) 
nerp1 = nerp1 + 1
end
end
end)
coroutine.resume(luk1)
coroutine.resume(luk2)
repeat wait() until cp2.Transparency == 1

joints[1].DesiredAngle = 1.9
wait(0.03)
joints[2].DesiredAngle = -1
wait(0.003)
game.Workspace.Base:BreakJoints()
welds[1].Parent = scyh[1]
welds[1].Part0 = scyh[1]
welds[1].Part1 = limbs[1]
welds[1].C0 = CFrame.Angles(math.rad(150), math.rad(0), math.rad(285))
welds[1].C1 = CFrame.new(1.2,0,0)
herp = {Instance.new("Part", char), Instance.new("Part", char), Instance.new("SpecialMesh"), Instance.new("SpecialMesh")}


for i,v in pairs(scyh) do
v.Transparency = 0
end
end)
