
armcolor = BrickColor.new("Bright yellow")
torscolor = BrickColor.new("Bright blue")
legcolor = BrickColor.new("Bright green")

local figure = Instance.new("Model")
figure.Parent = workspace
figure.Name = "Noob"

local head = Instance.new("Part")
head.Parent = figure
head.formFactor = 0
head.Size = Vector3.new(2,1,1)
head.TopSurface = 0
head.BottomSurface = 0
head.BrickColor = armcolor
head.Name = "Head"
head.Position = Vector3.new(0,8,0)

local hedmesh = Instance.new("SpecialMesh")
hedmesh.Parent = head
hedmesh.Scale = Vector3.new(1.25,1.25,1.25)

local torso = Instance.new("Part")
torso.Parent = figure
torso.formFactor = 0
torso.Size = Vector3.new(2,2,1)
torso.TopSurface = 0
torso.BottomSurface = 0
torso.BrickColor = torscolor
torso.Name = "Torso"
torso.Position = Vector3.new(0,6.5,0)

local rarm = Instance.new("Part")
rarm.Parent = figure
rarm.Name = "Right Arm"
rarm.formFactor = 0
rarm.Size = Vector3.new(1,2,1)
rarm.TopSurface = 0
rarm.BottomSurface = 0
rarm.BrickColor = armcolor
rarm.Position = Vector3.new(-1.5,6.5,0)

local larm = Instance.new("Part")
larm.Parent = figure
larm.formFactor = 0
larm.Name = "Left Arm"
larm.Size = Vector3.new(1,2,1)
larm.TopSurface = 0
larm.BottomSurface = 0
larm.BrickColor = armcolor
larm.Position = Vector3.new(1.5,6.5,0)

local lleg = Instance.new("Part")
lleg.Parent = figure
lleg.formFactor = 0
lleg.Size = Vector3.new(1,2,1)
lleg.TopSurface = 0
lleg.BottomSurface = 0
lleg.BrickColor = legcolor
lleg.Name = "Left Leg"
lleg.Position = Vector3.new(-0.5,4.5,0)

local rleg = Instance.new("Part")
rleg.Parent = figure
rleg.formFactor = 0
rleg.Size = Vector3.new(1,2,1)
rleg.TopSurface = 0
rleg.BottomSurface = 0
rleg.Name = "Right Leg"
rleg.BrickColor = legcolor
rleg.Position = Vector3.new(0.5,4.5,0)

local neck = Instance.new("Weld",torso)
neck.Part0 = neck.Parent
neck.Part1 = head
neck.C1 = CFrame.new(0,-1.5,0)

local hu = Instance.new("Humanoid")
hu.Parent = figure
hu.MaxHealth = 200
hu.Health = 200

figure:MakeJoints()

local rmotor = Instance.new("Motor")
