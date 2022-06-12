ModelName = "Galick gun"

MainColor = BrickColor.new("Bright violet")

SecondaryColor = BrickColor.new("Bright violet")

function CreatePart(Part,Color,Size,Name,Parent)

Part.BrickColor = Color

Part.FormFactor = "Custom"

Part.Size = Size

Part.CanCollide = false

Part.TopSurface = 0

Part.BottomSurface = 0

Part.CFrame = CFrame.new(0,10,0)

Part.Name = Name

Part.Parent = Parent

end

function Cylinder(Scale,Parent)

Mesh = Instance.new("CylinderMesh")

Mesh.Scale = Scale

Mesh.Parent = Parent

end

function Sphere(Scale,Parent)

Mesh = Instance.new("SpecialMesh")

Mesh.MeshType = "Sphere"

Mesh.Scale = Scale

Mesh.Parent = Parent

end

function Glue(Part0,Part1,C0)

Weld = Instance.new("Weld")

Weld.Part0 = Part0

Weld.Part1 = Part1

Weld.C0 = C0

Weld.Parent = Part1

end

Player = game.Players.yfc

Char = Player.Character

for i, v in pairs(Char:GetChildren()) do

if v.Name == ModelName then

v:remove()

end

end

Humanoid = Char.Humanoid

Head = Char.Head

Torso = Char.Torso

RightArm = Char["Right Arm"]

LeftArm = Char["Left Arm"]

RightLeg = Char["Right Leg"]

LeftLeg = Char["Left Leg"]

Neck = Instance.new("Weld")

Neck.Part0 = Torso

Neck.Part1 = Head

Neck.C0 = CFrame.new(0,1.5,0)

Neck.Parent = Torso

RightShoulder = Torso["Right Shoulder"]

LeftShoulder = Torso["Left Shoulder"]

RightHip = Torso["Right Hip"]

LeftHip = Torso["Left Hip"]

Weapon = Instance.new("Model")

Weapon.Name = ModelName

Weapon.Parent = Char

Spot = Instance.new("Part")

Backpack = Player.Backpack

for i, v in pairs(Backpack:GetChildren()) do

if v.Name == ModelName then

v:remove()

end

end

HopperBin = Instance.new("HopperBin")

HopperBin.Name = ModelName

HopperBin.Parent = Backpack

Damage = Instance.new("IntValue")

Damage.Value = 15

Damage.Name = "Damage"

Damage.Parent = HopperBin

script.Parent = HopperBin

PlayerGui = Player.PlayerGui

for i, v in pairs(PlayerGui:GetChildren()) do

if v.Name == "Gui" then

v:remove()

end

end

Gui = Instance.new("ScreenGui")

Gui.Name = "Gui"

Gui.Parent = PlayerGui

MaxEnergy = Instance.new("IntValue")

MaxEnergy.Value = 100

MaxEnergy.Name = "MaxEnergy"

MaxEnergy.Parent = Gui

Energy = Instance.new("IntValue")

Energy.Value = 0

Energy.Name = "Energy"

Energy.Parent = Gui

Bar = Instance.new("Frame")

Bar.BackgroundColor = BrickColor.new(Color3.new(1,1,1))

Bar.Size = UDim2.new(0.25,0,0.02,0)

Bar.Position = UDim2.new(0.05,0,0.5,0)

Bar.Name = "Bar"

Bar.Parent = Gui

BarTracking = Instance.new("Frame")

BarTracking.BackgroundColor = BrickColor.new(Color3.new(0,153,204))

BarTracking.Name = "BarTracking"

BarTracking.Parent = Bar

Attack = false

Hold = false

Damaging = false

function onButton1Down()

if Attack == false then

Attack = true

Damaging = false

Damage.Value = 15

Energy.Value = 0

Hold = true

Bp = Instance.new("BodyPosition")

Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)

Bp.position = Torso.Position

Bp.Parent = Torso

game.Debris:AddItem(Bp,2)

Bg = Instance.new("BodyGyro")

Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

Bg.cframe = Torso.CFrame

Bg.Parent = Torso

game.Debris:AddItem(Bg,2)

for i=1, 4 do

wait(0.0001)

Neck.C0 = Neck.C0 * CFrame.Angles(0,math.rad(-10),0)

end

for i=1, 16 do

wait(0.0001)

RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/3,math.rad(i*5))

LeftShoulder.C0 = CFrame.new(-0,0.5,0) * CFrame.Angles(0,math.pi/-1.5,math.rad(-i*5))

end

Ball = Instance.new("Part")

CreatePart(Ball,SecondaryColor,Vector3.new(1,1,1),"Ball",Weapon)

Ball.Transparency = 0.4

Ball.CanCollide = false

Sphere(Vector3.new(0.01,0.01,0.01),Ball)

Glue(Torso,Ball,CFrame.new(1.5,0,-1))

Ball2 = Instance.new("Part")

CreatePart(Ball2,MainColor,Vector3.new(2.4,2.4,2.4),"Ball",Weapon)

Ball2.Transparency = 0.4

Ball2.CanCollide = false

Sphere(Vector3.new(0.01,0.01,0.01),Ball2)

Glue(Torso,Ball2,CFrame.new(1.5,0,-1))

for i=1, 20 do

wait(0.0001)

if Hold == true then

Damage.Value = Damage.Value + 1

Ball.Mesh.Scale = Ball.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

Ball2.Mesh.Scale = Ball2.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

else

end

end

game:GetService("Chat"):Chat(Head,"...",1)

for i=1, 20 do

wait(0.0001)

if Hold == true then

Damage.Value = Damage.Value + 1

Ball.Mesh.Scale = Ball.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

Ball2.Mesh.Scale = Ball2.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

else

end

end

game:GetService("Chat"):Chat(Head,"Me...",1)

for i=1, 20 do

wait(0.0001)

if Hold == true then

Damage.Value = Damage.Value + 1

Ball.Mesh.Scale = Ball.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

Ball2.Mesh.Scale = Ball2.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

else

end

end

game:GetService("Chat"):Chat(Head,"HA...",1)

for i=1, 20 do

wait(0.0001)

if Hold == true then

Damage.Value = Damage.Value + 1

Ball.Mesh.Scale = Ball.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

Ball2.Mesh.Scale = Ball2.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

Ball.Reflectance = math.random(0,0.4)

Ball2.Reflectance = math.random(0,0.6)

else

end

end

game:GetService("Chat"):Chat(Head,"MEE...",1)

for i=1, 20 do

wait(0.0001)

if Hold == true then

Damage.Value = Damage.Value + 1

Ball.Mesh.Scale = Ball.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

Ball2.Mesh.Scale = Ball2.Mesh.Scale + Vector3.new(0.01,0.01,0.01)

else

end

end

game:GetService("Chat"):Chat(Head,"HAAAA!!!",1)

for i=1, 4 do

wait(0.0001)

Neck.C0 = Neck.C0 * CFrame.Angles(0,math.rad(10),0)

end

Ball.Weld.C0 = CFrame.new(0,0,-2)

Ball2.Weld.C0 = CFrame.new(0,0,-2)

for i=1, 16 do

wait(0.0001)

RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/1.5,math.rad(i*5))

LeftShoulder.C0 = CFrame.new(-1,0.5,0) * CFrame.Angles(0,math.pi/-1.5,math.rad(-i*5))

end

if Hold == true then

Blast = Instance.new("Part")

CreatePart(Blast,MainColor,Vector3.new(3,3,3),"Blast",Weapon)

Blast.Transparency = 0.4

Blast.CFrame = Torso.CFrame * CFrame.new(0,0,-2)

Sphere(Vector3.new(1,1,1),Blast)

Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-400)

Bp2 = Instance.new("BodyPosition")

Bp2.maxForce = Vector3.new(math.huge,math.huge,math.huge)

Bp2.position = Spot.Position

Bp2.Parent = Blast

game.Debris:AddItem(Blast,1)

function onTouched(hit)

Blast.Anchored = true

Blast.Mesh.Scale = Blast.Mesh.Scale + Vector3.new(1,0.5,1)

end

Blast.Touched:connect(onTouched)

function onTouched(hit)

Human = hit.Parent:FindFirstChild("Humanoid")

if Human ~= nil and Damaging == false and hit.Parent.Name ~= Player.Name then

Damaging = true

Human:TakeDamage(Damage.Value)

end

end

Blast.Touched:connect(onTouched)

for i=1, 20 do

OldPos = Blast.Position

wait(0.05)

NewPos = Blast.Position

Dist = (OldPos - NewPos).magnitude

Line = Instance.new("Part")

CreatePart(Line,MainColor,Vector3.new(3,Dist,3),"Line",Weapon)

Line.Transparency = 0.4

Line.CanCollide = true

Line.Anchored = true

Line.CFrame = CFrame.new(OldPos,NewPos) * CFrame.new(0,0,-Dist/2) * CFrame.Angles(math.rad(90),0,0)

Cylinder(Vector3.new(1,1,1),Line)

game.Debris:AddItem(Line,1)

function onTouched(hit)

Human = hit.Parent:FindFirstChild("Humanoid")

if Human ~= nil and Damaging == false and hit.Parent.Name ~= Player.Name then

Damaging = true

Human:TakeDamage(Damage.Value)

end

end

Line.Touched:connect(onTouched)

end

for i, v in pairs(Weapon:GetChildren()) do

v:remove()

end

end

for i, v in pairs(Weapon:GetChildren()) do

v:remove()

end

RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/2,0)

LeftShoulder.C0 = CFrame.new(-1,0.5,0) * CFrame.Angles(0,math.pi/-2,0)

Attack = false

end

end

function onButton1Up()

Hold = false

end

function onSelected(mouse)

mouse.Button1Down:connect(onButton1Down)

mouse.Button1Up:connect(onButton1Up)

end

script.Parent.Selected:connect(onSelected)

Spawn(function()

while true do

wait()

BarTracking.Size = UDim2.new(Energy.Value/MaxEnergy.Value,0,1,0)

end

end)

Spawn(function()

while true do

wait()

if Hold == true then

Energy.Value = Energy.Value + 1

end

end

end)

Spawn(function()

while true do

wait()

if Energy.Value >= MaxEnergy.Value then

Energy.Value = MaxEnergy.Value

end

end

end)

Spawn(function()

while true do

wait()

if Attack == true then

RightShoulder.DesiredAngle = 0

LeftShoulder.DesiredAngle = 0

end

end

end)