Names = "ic3w0lf589"
Player = game:GetService("Players").ic3w0lf589
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Humanoid = Character.Humanoid
Torso = Character.Torso
Head = Character.Head
LeftArm = Character["Left Arm"]
RightArm = Character["Right Arm"]
LeftLeg = Character["Left Leg"]
RightLeg = Character["Right Leg"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

NeckC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
NeckC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LeftShoulderC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LeftShoulderC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightShoulderC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightShoulderC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftHipC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LeftHipC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightHipC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightHipC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)

Damage = 2000
Sound = Instance.new("Sound")
Sound.Parent = Head
Sound.Name = "Sound"
Sound.Pitch = .8
Sound.SoundId = ""
Sound.Volume = 2
Stuff = Player.Character:GetChildren()
for i = 1 , #Stuff do
if Stuff[i].Name == "Shirt" or Stuff[i].Name == "Pants" or Stuff[i].className == "Hat" then
Stuff[i]:Remove()
end
end
Torso.BrickColor = BrickColor.new("Hot pink")
Head.BrickColor = BrickColor.new("Hot pink")
RightArm.BrickColor = BrickColor.new("Hot pink")
LeftArm.BrickColor = BrickColor.new("Hot pink")
RightLeg.BrickColor = BrickColor.new("Hot pink")
LeftLeg.BrickColor = BrickColor.new("Hot pink")
Torso.Reflectance = .4
Head.Reflectance = .4
RightArm.Reflectance = .4
LeftArm.Reflectance = .4
RightLeg.Reflectance = .4
LeftLeg.Reflectance = .4
Character.Head.face:remove()
Eye1 = Instance.new("Part")
Eye1.Parent = Character
Eye1.Size = Vector3.new(1,1,1)
Eye1.TopSurface = "Smooth"
Eye1.BottomSurface = "Smooth"
Eye1.CanCollide = false
Eye1.Reflectance = .1
Eye1.FormFactor = "Symmetric"
Eye1.BrickColor = BrickColor.new("Hot pink")
e1m=Instance.new("BlockMesh")
e1m.Scale=Vector3.new(.25,.2,.25)
e1m.Bevel=.1
e1m.Parent=Eye1
Eye1:BreakJoints()
pweld = Instance.new("Weld")
pweld.Parent = Head
pweld.Part0 = Head
pweld.Part1 = Eye1
pweld.C0 = CFrame.new(.2,0.21,-.55)
Eye2 = Instance.new("Part")
Eye2.Parent = Character
Eye2.Size = Vector3.new(1,1,1)
Eye2.TopSurface = "Smooth"
Eye2.BottomSurface = "Smooth"
Eye2.CanCollide = false
Eye2.Reflectance = .1
Eye2.FormFactor = "Symmetric"
Eye2.BrickColor = BrickColor.new("Hot pink")
e2m=Instance.new("BlockMesh")
e2m.Scale=Vector3.new(.25,.2,.25) 
e2m.Bevel=.1
e2m.Parent=Eye2
Eye2:BreakJoints()
pweld = Instance.new("Weld")
pweld.Parent = Head
pweld.Part0 = Head
pweld.Part1 = Eye2
pweld.C0 = CFrame.new(-.2,0.21,-.55)
Mouth = Instance.new("Part")
Mouth.Parent = Character
Mouth.Size = Vector3.new(1,1,1)
Mouth.TopSurface = "Smooth"
Mouth.BottomSurface = "Smooth"
Mouth.CanCollide = false
Mouth.Reflectance = .1
Mouth.FormFactor = "Symmetric"
Mouth.BrickColor = BrickColor.new("Hot pink")
MouthMesh=Instance.new("SpecialMesh")
MouthMesh.Scale=Vector3.new(.9,0.2,1.05)
MouthMesh.MeshType = "Sphere"
MouthMesh.Parent=Mouth
Mouth:BreakJoints()
meld = Instance.new("Weld")
meld.Parent = Head
meld.Part0 = Head
meld.Part1 = Mouth
meld.C0 = CFrame.new(0,-.3,-.1)

function PwnWelds()
TiltX = 0
TiltY = 0
TiltZ = 1.57
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(TiltX, TiltY, -TiltZ)
TiltX = 0.6
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0
MoveZ = -0.3
RightShoulder.C0 = RightShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
TiltX = -0.05
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0.1
MoveZ = 0
RightHip.C0 = RightHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
end

function RefreshWelds()
Neck.C0 = NeckC0
Neck.C1 = NeckC1
RightShoulder.C0 = RightShoulderC0
RightShoulder.C1 = RightShoulderC1
LeftShoulder.C0 = LeftShoulderC0
LeftShoulder.C1 = LeftShoulderC1
RightHip.C0 = RightHipC0
RightHip.C1 = RightHipC1
LeftHip.C0 = LeftHipC0
LeftHip.C1 = LeftHipC1
end

function Heal()
ShockWave = Instance.new("Part")
ShockWave.Parent = Torso
ShockWave.Anchored = true
ShockWave.CanCollide = false
ShockWave.Locked = true
ShockWave.Transparency = 0
ShockWave.Shape = "Ball"
ShockWave.BrickColor = BrickColor.new("Really red")
ShockWave.Size = Vector3.new(1, 1, 1)
ShockWave.TopSurface = "Smooth"
ShockWave.BottomSurface = "Smooth"
ShockWave.CFrame = Torso.CFrame
ShockWaveMesh = Instance.new("SpecialMesh")
ShockWaveMesh.Parent = ShockWave
ShockWaveMesh.MeshType = "Sphere"
ShockWaveMesh.Scale = Vector3.new(1, 1, 1)
game:getService("Debris"):AddItem(ShockWave, 2)
for i = 1 , 100 do

ShockWave.Size = ShockWave.Size + Vector3.new(1, 1, 1)
ShockWave.Transparency = ShockWave.Transparency + 0.02
ShockWave.CFrame = Torso.CFrame
for u, c in pairs(workspace:GetChildren()) do
h = c:findFirstChild("Humanoid")
t = c:findFirstChild("Torso")
if h ~= nil and t ~= nil then
if (Torso.Position-t.Position).magnitude <= 20 then
h.Health = h.Health + 12
end
end
end
wait(0.01)
end
end
function Roar()
for i = 1, 4 do
MouthMesh.Scale = MouthMesh.Scale + Vector3.new(0,.2,0)
meld.C0 = meld.C0 + Vector3.new(0,.05,0)
wait(.2)
end
Sound.SoundId = "http://www.roblox.com/asset/?id=24478553"--24478553,24483366
Sound.Pitch = 1
for i = 1, 50 do
Sound:play()
Sound:play()
Sound:play()
Sound:play()
Sound:play()
Sound:play()
Sound:play()
Sound:play()
for u, c in pairs(workspace:GetChildren()) do
if c.Name ~= Names then
h = c:findFirstChild("Humanoid")
t = c:findFirstChild("Torso")
if h ~= nil and t ~= nil then
if (Torso.Position-t.Position).magnitude <= 25000 then
t.CFrame = t.CFrame * CFrame.Angles(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
h:TakeDamage(h.Health/1)
end
end
end
end
wait()
end
wait(2)
for i = 1, 4 do
MouthMesh.Scale = MouthMesh.Scale - Vector3.new(0,.2,0)
meld.C0 = meld.C0 - Vector3.new(0,.05,0)
wait(.2)
end
end
function Rocket()
for i = 1, 10 do
e1m.Scale = e1m.Scale + Vector3.new(.025,.025,.025)
e2m.Scale = e2m.Scale + Vector3.new(.025,.025,.025)
wait()
end
Eye1.BrickColor = BrickColor.new("Black")
Eye2.BrickColor = BrickColor.new("Black")
RCKT = Eye1:Clone()
RCKT.Parent = Character
RCKT.Size = Vector3.new(10,2,3)
RCKT.Anchored = false
RCKT.Position = Head.Position
RCKT.CFrame = RCKT.CFrame * CFrame.new(0, -2, 0)
RVelocity = Instance.new("BodyVelocity")
RVelocity.Parent = RCKT
RVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
RVelocity.velocity = RCKT.CFrame.lookVector * 30
game:getService("Debris"):AddItem(RCKT, 5)
function damage(hit)
local hum = hit.Parent:FindFirstChild("Humanoid")
if hum ~= nil then
hum.Health = hum.Health - 101
end
end
RCKT.Touched:connect(damage)
wait(1)
for i = 1, 10 do
e1m.Scale = e1m.Scale - Vector3.new(.025,.025,.025)
e2m.Scale = e2m.Scale - Vector3.new(.025,.025,.025)
wait()
end
Eye1.BrickColor = BrickColor.new("Really red")
Eye2.BrickColor = BrickColor.new("Really red")
end
function EyeLaser()
Character.Humanoid.WalkSpeed = 0
local bea = Instance.new("Model")
bea.Parent = Character
for i = 1, 10 do
wait()
transnumb = 0.09*i
pab1 = Eye1:Clone()
pab1.Size = Vector3.new(2,2,4)
pab1.Parent = bea
pab1.Transparency = 0.9-transnumb
pab1.Touched:connect(
function(h)
if h.Name ~= "Base" and h.Parent ~= Character then else return end
h.BrickColor = BrickColor.new("Really red")
h.Transparency = pab1.Transparency
game:getService("Debris"):AddItem(h, 0.6)
end)
pab1:BreakJoints()
pab2 = Eye2:Clone()
pab2.Size = Vector3.new(2,2,4) 
pab2.Parent = bea
pab2.Transparency = 0.9-transnumb
pab2.Touched:connect(
function(h)
if h.Name ~= "Base" and h.Parent ~= Character then else return end
h.BrickColor = BrickColor.new("Really red")
h.Transparency = pab2.Transparency
game:getService("Debris"):AddItem(h, 0.6)
end)
pab2:BreakJoints()
weld = Instance.new("Weld")
weld.Parent = bea
weld.Part0 = Eye1
weld.Part1 = pab1
weld.C0 = CFrame.new(0,0,-1*i)
weld = Instance.new("Weld")
weld.Parent = bea
weld.Part0 = Eye2
weld.Part1 = pab2
weld.C0 = CFrame.new(0,0,-1*i)
end
for i = 1, 50 do
wait()
lol = bea:GetChildren()
for i = 1, #lol do
if lol[i].className == "Weld" then
lol[i].C0 = lol[i].C0 * CFrame.new(0,0,-1)
end
end
end
game:getService("Debris"):AddItem(bea, 0.01)
Character.Humanoid.WalkSpeed = 16
end
function Suicide()
ef2 = Instance.new("BodyVelocity")
ef2.Parent = Torso
ef2.maxForce = Vector3.new(0,math.huge,0)
ef2.velocity = Vector3.new(0, 50, 0)
Character.Humanoid.PlatformStand = true
fu = Instance.new("Fire")
fu.Parent = Torso
fu.Size = 10
fu.Heat = -15
wait(1)
Sound.SoundId = "http://www.roblox.com/asset/?id=2101148"
Sound.Pitch = 1
for i = 1, 3 do
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = Torso.Position
e.BlastRadius = 30
e.BlastPressure = 10000
Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = Head.Position
e.BlastRadius = 30
e.BlastPressure = 1000
Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = RightArm.Position
e.BlastRadius = 30
e.BlastPressure = 1000
Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = LeftArm.Position
e.BlastRadius = 30
e.BlastPressure = 1000
Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = LeftLeg.Position
e.BlastRadius = 30
e.BlastPressure = 1000
Sound:play()
wait(.2)
e = Instance.new("Explosion")
e.Parent = Workspace
e.Position = RightLeg.Position
e.BlastRadius = 1000
e.BlastPressure = 1000
Sound:play()
wait(.2)
end
end
function Jump()
Character.Humanoid.PlatformStand = true
Torso.Velocity = Torso.CFrame.lookVector * 150 + Vector3.new(0, 130, 0)
for i = 1 , 20 do
Torso.CFrame = Torso.CFrame * CFrame.Angles(-0.5, 0, 0)
wait()
end
Character.Humanoid.PlatformStand = false
Gyro = Instance.new("BodyGyro")
Gyro.Parent = Torso
Gyro.cframe = CFrame.new(0, 0, 0) * CFrame.aAngles(0, 0, 0)
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
wait(0.1)
Gyro:Remove()
end
function Shield()
Character.Humanoid.PlatformStand = true
s = Instance.new("Part")
s.Parent = Character
s.Size = Vector3.new(8,8,8)
s.Shape = "Ball"
s.TopSurface = "Smooth"
s.BottomSurface = "Smooth"
s.Transparency = .5
s.Position = Torso.Position
s.BrickColor = BrickColor.new("Royal purple")
sweld = Instance.new("Weld")
sweld.Parent = Torso
sweld.Part0 = Torso
sweld.Part1 = s
sweld.C0 = CFrame.new(0,0,0)
game:getService("Debris"):AddItem(s, 13)
wait(10)
for i = 1, 10 do
wait()
s.Transparency = s.Transparency + .05
end
Character.Humanoid.PlatformStand = false
s:remove()
end
function GroundPound()
ef2 = Instance.new("BodyVelocity")
ef2.Parent = Torso
ef2.maxForce = Vector3.new(0,math.huge,0)
ef2.velocity = Vector3.new(0, 100, 0)
--Character.Humanoid.PlatformStand = true
wait(3)
Torso.CFrame = Torso.CFrame*CFrame.Angles(3.14,0,0)
ef2.velocity = Vector3.new(0, -100, 0)
wait(1)
ef2.velocity = Vector3.new(0, -150, 0)
fu = Instance.new("Fire")
fu.Parent = Torso
fu.Size = 10
fu.Heat = 15
wait(1.3)
Range = 10000
for i = 1 , 5 do
Range = Range + 15
Character.Humanoid.WalkSpeed = 0

Boom = Instance.new("Explosion")
Boom.Parent = Workspace
Boom.BlastRadius = Range/2
Boom.Position = Torso.Position+Vector3.new(Range, 0, 0)
Boom = Instance.new("Explosion")
Boom.Parent = Workspace
Boom.BlastRadius = Range/2
Boom.Position = Torso.Position+Vector3.new(-Range, 0, 0)
Boom = Instance.new("Explosion")
Boom.Parent = Workspace
Boom.BlastRadius = Range/2
Boom.Position = Torso.Position+Vector3.new(0, 0, Range)
Boom = Instance.new("Explosion")
Boom.Parent = Workspace
Boom.BlastRadius = Range/2
Boom.Position = Torso.Position+Vector3.new(0, 0, -Range)
Boom = Instance.new("Explosion")
Boom.Parent = Workspace
Boom.BlastRadius = Range/2
Boom.Position = Torso.Position+Vector3.new(Range, 0, Range)
Boom = Instance.new("Explosion")
Boom.Parent = Workspace
Boom.BlastRadius = Range/2
Boom.Position = Torso.Position+Vector3.new(-Range, 0, Range)
Boom = Instance.new("Explosion")
Boom.Parent = Workspace
Boom.BlastRadius = Range/2
Boom.Position = Torso.Position+Vector3.new(Range, 0, -Range)
Boom = Instance.new("Explosion")
Boom.Parent = Workspace
Boom.BlastRadius = Range/2
Boom.Position = Torso.Position+Vector3.new(-Range, 0, -Range)
wait(0.05)
end
ef2:remove()
fu:remove()
Character.Humanoid.PlatformStand = false
end

function Eyez()
for i = 1, 5 do
e1m.Scale = e1m.Scale + Vector3.new(0,0,.1)
e2m.Scale = e2m.Scale + Vector3.new(0,0,.1)
wait()
end
wait()
for i = 1, 5 do
e1m.Scale = e1m.Scale - Vector3.new(0,0,.1)
e2m.Scale = e2m.Scale - Vector3.new(0,0,.1)
wait()
end
end

function FootBlox()
for u, c in pairs(workspace:GetChildren()) do
h = c:findFirstChild("Humanoid")
t = c:findFirstChild("Torso")
if h ~= nil and t ~= nil and c.Name ~= Character.Name then
if h.Health > 0 then
if (Torso.Position-t.Position).magnitude <= 25000 then
Gyro = Instance.new("BodyGyro")
Gyro.Parent = Torso
Gyro.maxTorque = Vector3.new(math.huge, 0, math.huge)
Gyro.cframe = Torso.CFrame
PwnWelds()
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, 1.4)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0, 0, -1.4)
wait(0.1)
t.CFrame = Torso.CFrame
h.PlatformStand = true
ww = Instance.new("Weld")
ww.Part0 =Torso
ww.Part1 = t
ww.Parent = Torso
ww.C0 = CFrame.new(0, 0, -2)
h:TakeDamage(2)
wait(1)
PwnWelds()
h:TakeDamage(5)
wait(0.05)
LA = c["Left Arm"]
LL = c["Left Leg"]
RA = c["Right Arm"]
RL = c["Right Leg"]

w = Instance.new("Weld")
w.Part0 = c["Right Leg"]
w.Part1 = t
w.Parent = c["Right Leg"]
w.C0 = CFrame.new(.5, 0, .5)
w = Instance.new("Weld")
w.Part0 = c["Left Leg"]
w.Part1 = t
w.Parent = c["Left Leg"]
w.C0 = CFrame.new(-.5, 0, .5)
w = Instance.new("Weld")
w.Part0 = c["Left Arm"]
w.Part1 = t
w.Parent = c["Left Arm"]
w.C0 = CFrame.new(-.5, 0, -.5)
w = Instance.new("Weld")
w.Part0 = c["Right Arm"]
w.Part1 = t
w.Parent = c["Right Arm"]
w.C0 = CFrame.new(.5, 0, -.5)
w = Instance.new("Weld")
w.Part0 = c.Head
w.Part1 = t
w.Parent = c.Head
w.C0 = CFrame.new(0, -1, 0)
wait(0.2)
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, 1.3)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0, 0, -1.3)
wait(0.15)
PwnWelds()
h:TakeDamage(5)
wait(0.1)
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, 1.4)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0, 0, -1.4)
wait(1.5)
for i = 1 , 6 do
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, -0.15*i)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0, 0, 0.15*i)
RightHip.C0 = RightHipC0 * CFrame.Angles(0, 0, 0.31*i)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(0, 0, 0.035*i)
wait()
end
h:TakeDamage(20)
ww:Remove()
t.Velocity = Torso.CFrame.lookVector * 500 + Vector3.new(0, 50, 0)
wait(0.3)
for i = 1 , 6 do
RightShoulder.C0 = RightShoulder.C0 * CFrame.Angles(0, 0, 0.15)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(0, 0, -0.15)
RightHip.C0 = RightHip.C0 * CFrame.Angles(0, 0, -0.31)
LeftHip.C0 = LeftHip.C0 * CFrame.Angles(0, 0, -0.035)
wait()
end
Gyro:Remove()
RefreshWelds()
end
end
end
end
end

function HeadAche()
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, 3.14)
wait(0.4)
Character.Head.Mesh.Scale = Vector3.new(0,0,0)
Character.Head.Transparency = 1
Mouth.Transparency = 1
Eye1.Transparency = 1
Eye2.Transparency = 1
Mod = Instance.new("Model",workspace)
Mod.Name = Names
HeadPart = Instance.new("Part")
HeadPart.Parent = Mod
HeadPart.CanCollide = false
HeadPart.Size = Vector3.new(1,1,1)
HeadPart.BrickColor = Character.Head.BrickColor
HeadPart.Reflectance = Character.Head.Reflectance
HeadPart.formFactor = "Symmetric"
HeadPart.Position = RightArm.Position
HeadPart.Name = "Head"
Human = Instance.new("Humanoid")
Human.Parent = Mod
Human.Health = 0
HPMesh = Instance.new("SpecialMesh")
HPMesh.MeshType = "Head"
HPMesh.Parent = HeadPart
HPMesh.Scale = Vector3.new(1.25,1.25,1.25)
w = Instance.new("Weld")
w.Parent = RightArm
w.Part0 = RightArm
w.Part1 = HeadPart
w.C0 = CFrame.new(0, -1.3, 0)

wait(0.7)
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, -2)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0, 0, -1)
wait(0.5)
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, 1.6)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0, 0, 1.2)
wait()
w:Remove()

function damage(hit)
hum = hit.Parent:FindFirstChild("Humanoid")
if hit.Parent ~= Character then
if hum ~= nil then
Velocity:Remove()
Gyro:Remove()
hum.PlatformStand = true
hum.Health = hum.Health - 6
hum.Parent.Torso.CFrame = hum.Parent.Torso.CFrame * CFrame.Angles(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
HeadPart.Size = Vector3.new(1,1,1)
HPMesh.Scale = Vector3.new(1.25,1.25,1.25)
HeadPart.CanCollide = true
end
end
end
HeadPart.Touched:connect(damage)

Gyro = Instance.new("BodyGyro")
Gyro.Parent = HeadPart
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
Gyro.cframe = Character.Torso.CFrame * CFrame.Angles(0, 0, 1.57)
Gyro.D = 50
Velocity = Instance.new("BodyVelocity")
Velocity.Parent = HeadPart
Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
Velocity.velocity = Character.Torso.CFrame.lookVector * 75
-- Torso.CFrame = Torso.CFrame * CFrame.Angles(2, 0, 0)
wait(0.5)
HeadPart.Size = Vector3.new(4,4,4)
HPMesh.Scale = Vector3.new(.3125,.3125,.3125)
-- Character.Humanoid.PlatformStand = true
RefreshWelds()
wait(.25)
HeadPart.CanCollide = true
for i = 1 , 10 do
Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 1)
wait(0.0625)
end
wait(.5)
if Velocity ~= nil then
Velocity:Remove()
end
wait(0.1)
Character.Head.Mesh.Scale = Vector3.new(0,0,0)
HPMesh.Scale = Vector3.new(1.25,1.25,1.25)
HeadPart.Size = Vector3.new(1,1,1)
HeadPart.CanCollide = true
if Gyro ~= nil then
Gyro:Remove()
end
wait(1)
Mod:remove()
Character.Head.Transparency = 0
Character.Head.Mesh.Scale = Vector3.new(0,0,0)
for i = 1, 10 do
Character.Head.Mesh.Scale = Character.Head.Mesh.Scale + Vector3.new(.125,.125,.125)
wait(.05)
end
Mouth.Transparency = 0
Eye1.Transparency = 0
Eye2.Transparency = 0
wait(0.1)
--Character.Humanoid.PlatformStand = false
end
function PrimaryLotus()
Gyro = Instance.new("BodyGyro")
Gyro.Parent = Torso
Gyro.maxTorque = Vector3.new(0, 0, 0)
Gyro.cframe = Torso.CFrame
for i = 1 , 6 do
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, -0.15*i)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0, 0, 0.15*i)
RightHip.C0 = RightHipC0 * CFrame.Angles(0, 0, 0.31*i)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(0, 0, 0.035*i)
wait()
end
for i, v in pairs(workspace:GetChildren()) do
eTorso = v:findFirstChild("Torso")
eHumanoid = v:findFirstChild("Humanoid")
if eTorso ~= nil and eHumanoid ~= nil and v.Name ~= Character.Name then
if (Torso.Position-eTorso.Position).magnitude <= 6 then
RefreshWelds()
eHumanoid.PlatformStand = true
Humanoid.PlatformStand = true
Torso.CFrame = eTorso.CFrame * CFrame.new(0, 5, -1.5)
TorsoWeld = Instance.new("Weld")
TorsoWeld.Parent = Torso
TorsoWeld.Part0 = Torso
TorsoWeld.Part1 = eTorso
TorsoWeld.C0 = CFrame.new(0, 0, -1.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
Gyro.cframe = CFrame.fromEulerAnglesXYZ(0, 0, 0)
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0, 0, 1.5)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0, 0, -1.5)
handle21 = Instance.new("Part")
handle21.Parent = Character
handle21.TopSurface = "Smooth"
handle21.BottomSurface = "Smooth"
handle21.Size = Vector3.new(1, 1, 1)
handle21.CFrame = Torso.CFrame
weld2 = Instance.new("Weld")
weld2.Part0 = eTorso
weld2.Part1 = handle21
weld2.Parent = eTorso
weld2.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
p2 = Instance.new("SpecialMesh")
p2.Parent = handle21
p2.Scale = Vector3.new(0, 0, 0)
p2.MeshType = "Sphere"
for i = 1 , 10 do
Torso.Velocity = Vector3.new(0, 800, 0)
if i >= 5 then
p2.Scale = p2.Scale + Vector3.new(0.62, 1.5, 0.62)
end
wait(0.001)
end
wait(0.3)
Torso.Velocity = Vector3.new(0, -400, 0)
Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0, -3.14)
wait(0.3)
handle2 = Instance.new("Part")
handle2.Parent = Character
handle2.TopSurface = "Smooth"
handle2.BottomSurface = "Smooth"
handle2.Size = Vector3.new(1, 1, 1)
handle2.CFrame = Torso.CFrame
weld = Instance.new("Weld")
weld.Part0 = eTorso
weld.Part1 = handle2
weld.Parent = eTorso
weld.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(3.14, 0, 0)
p = Instance.new("SpecialMesh")
p.Parent = handle2
p.Scale = Vector3.new(5, 15, 5)
p.MeshType = "FileMesh"
p.MeshId = "http://www.roblox.com/asset/?id=1051557"
Torso.CFrame = Torso.CFrame*CFrame.Angles(3.14,0,0)
wait(.7)
handle2:Remove()
handle21:Remove()
TorsoWeld:Remove()
ex = Instance.new("Explosion")
ex.Parent = Workspace
ex.BlastPressure = 0
ex.Position = Torso.Position
eHumanoid:TakeDamage(math.huge)
eHumanoid.PlatformStand = false
eHumanoid.Sit = true
for i = 1 , 15 do
p = Instance.new("Part")
p.Parent = Workspace
p.Name = "Rocks"
p.BrickColor = BrickColor.new("Brown")
p.CanCollide = true
p.TopSurface = "Smooth"
p.Material = "Concrete"
p.BottomSurface = "Smooth"
p.Size = Vector3.new(math.random(3, 5), math.random(3, 5), math.random(3, 5))
p.CFrame = Torso.CFrame * CFrame.new(Vector3.new(math.random(-6, 6), -10, math.random(-6, 6))) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
p.Velocity = p.CFrame.lookVector * 150 + Vector3.new(0, 10, 0)
game:getService("Debris"):AddItem(p, 5)
wait()
end
RefreshWelds()
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
Gyro.cframe = CFrame.Angles(0, 0, 0)
Humanoid.Jump = true
Torso.CFrame = CFrame.new(Torso.Position + Vector3.new(0, 5, 10))
wait(.5)
Torso.Velocity = Vector3.new(0,0,0)
eTorso.Velocity = Vector3.new(0,0,0)
end
end
end
wait(0.05)
Gyro:Remove()
Torso.Velocity = Vector3.new(0,0,0)
RefreshWelds()
end

function Free()

Stuff = Character:GetChildren()
for i = 1 , #Stuff do
if Stuff[i].className == "Part" then
Stuff[i].Anchored = false
end
end

Stuff = Character:GetChildren()
for i = 1 , #Stuff do
if Stuff[i].className == "Part" then
Stuff[i].Anchored = false
end
Stuff2 = Stuff[i]:GetChildren()
for i = 1 , #Stuff2 do
if Stuff2[i].className == "BodyPosition" or Stuff2[i].className == "BodyVelocity" or Stuff2[i].className == "BodyGyro" then
Stuff2[i]:Remove()
end
end
end
Character.Torso.CFrame = Character.Torso.CFrame + Vector3.new(0,30,0)
Character.Torso.Anchored = true
wait(.5)
Character.Torso.Anchored = false
end

Shieldz = false
function ShieldOn()
Johnny = Instance.new("BodyGyro")
Johnny.Name = "JooDaddeh"
Johnny.Parent = Torso
Johnny.cframe = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
Johnny.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
Billy = Instance.new("BodyPosition")
Billy.Name = "JoeMama"
Billy.Parent = Head
Billy.position = Head.Position
Billy.maxForce = Vector3.new(math.huge, math.huge, math.huge)

wait()
for i = 1, 5 do
wait()
Billy.position = Billy.position + Vector3.new(0,1,0)
end
wait(0.5)

for i = 1, 11 do
Head.Mesh.Scale = Head.Mesh.Scale + Vector3.new(1,1,1)
wait(0.01)
end
Shieldz = true
while Shieldz do
wait()
for i,v in pairs (workspace:GetChildren()) do
if v.className == "Part" and v.Name ~= "Base" then
if (Torso.Position-v.Position).magnitude <= 11 then
v:Remove()
end
end
if v.className == "Model" then
for u, c in pairs (v:GetChildren()) do
if c.className == "Part" and v.Name ~= Character.Name then
if (Torso.Position-c.Position).magnitude <= 11 then
c:Remove()
end
end
end
if v.Name ~= Character.Name then
BobHumanoid = v:findFirstChild("Humanoid")
BobHead = v:findFirstChild("Head")
if BobHead ~= nil and BobHumanoid ~= nil then
if (Torso.Position-BobHead.Position).magnitude <= 11 then
for i = 1, 22 do
wait()
if i > 12 then
BobHead.Mesh.Scale = BobHead.Mesh.Scale + Vector3.new(1, 1, 1)
else
if v:findFirstChild("Left Arm") ~= nil then
v:findFirstChild("Left Arm"):Remove()
end
if v:findFirstChild("Left Leg") ~= nil then
v:findFirstChild("Left Leg"):Remove()
end
if v:findFirstChild("Right Arm") ~= nil then
v:findFirstChild("Right Arm"):Remove()
end
if v:findFirstChild("Right Leg") ~= nil then
v:findFirstChild("Right Leg"):Remove()
end
if v:findFirstChild("Torso") ~= nil then
v:findFirstChild("Torso"):Remove()
end
BobHead.Mesh.Scale = BobHead.Mesh.Scale + Vector3.new(-1, -1, -1)
end
end
v:Remove()
end
end
end
end
end
end
wait()
end
function ShieldOff()
Shieldz = false
for i = 1, 11 do
Head.Mesh.Scale = Head.Mesh.Scale + Vector3.new(-1,-1,-1)
wait(0.01)
end
for i = 1, 5 do
pcall(function() Head.JoeMama.position = Head.JoeMama.position + Vector3.new(0,-1,0) end)
wait(0.01)
end
pcall(function() Head.JoeMama:Remove() end)
pcall(function() Torso.JooDaddeh:Remove() end)
end

function Page(Num,gm)
if Num == 1 then
for _,v in pairs (gm:GetChildren()) do
if v.Name == "Pg2" then
v:Remove()
else
v.Visible = true
end
end
elseif Num == 2 then
for _,v in pairs (gm:GetChildren()) do
if v.Name ~= "Pg2" then
if v.className == "TextButton" then
v.Visible = false
end
end
end
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,40)
tb.Text = "New Attack"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
tb.Name = "Pg2"
end
end

gm = Instance.new("GuiMain")
gm.Parent = Player.PlayerGui
gm.Name = "GUI-Main"
Frame = Instance.new("Frame",gm)
Frame.Size = UDim2.new(0,310,0,300)
Frame.Position = UDim2.new(0,780,0,20)
Frame.BackgroundTransparency = .5
Frame.BackgroundColor3 = Color3.new(50,50,50)
Frame.BorderColor3 = Color3.new(0,0,0)
Prev = Instance.new("TextButton",Frame)
Prev.Position = UDim2.new(0,0,0,285)
Prev.Size = UDim2.new(0,70,0,15)
Prev.Text = "Page 1"
Prev.BackgroundTransparency = .5
Prev.TextTransparency = .1
Prev.BackgroundColor3 = Color3.new(100,255,255)
Prev.BorderColor3 = Color3.new(50,255,255)
function onClick()
Page(1,gm)
end
Prev.MouseButton1Click:connect(onClick)
Next = Instance.new("TextButton",Frame)
Next.Position = UDim2.new(0,240,0,285)
Next.Size = UDim2.new(0,70,0,15)
Next.Text = "Page 2"
Next.BackgroundTransparency = .5
Next.TextTransparency = .1
Next.BackgroundColor3 = Color3.new(100,255,255)
Next.BorderColor3 = Color3.new(50,255,255)
function onClick()
Page(2,gm)
end
Next.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,80)
tb.Text = "EyeLaser"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
EyeLaser()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,80)
tb.Text = "Roar"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Roar()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,80)
tb.Text = "Heal"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Heal()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,120)
tb.Text = "Suicide"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Suicide()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,120)
tb.Text = "Rocket"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Rocket()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,120)
tb.Text = "Jump"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Jump()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,160)
tb.Text = "Bubble"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Shield()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,160)
tb.Text = "Ground-Pound"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
GroundPound()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,160)
tb.Text = "Eyez"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Eyez()
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,200)
tb.Text = "FootBlox"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
FootBlox()
end
tb.MouseButton1Click:connect(onClick)

tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,200)
tb.Text = "Primary Lotus"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
PrimaryLotus()
end
tb.MouseButton1Click:connect(onClick)

tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,40)
tb.Text = "Red"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Mouth.BrickColor = BrickColor.new("Black")
Eye1.BrickColor = BrickColor.new("Black")
Eye2.BrickColor = BrickColor.new("Black")
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,40)
tb.Text = "Blue"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Mouth.BrickColor = BrickColor.new("Really blue")
Eye1.BrickColor = BrickColor.new("Really blue")
Eye2.BrickColor = BrickColor.new("Really blue")
end
tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,40)
tb.Text = "Yellow"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Mouth.BrickColor = BrickColor.new("Really red")
Eye1.BrickColor = BrickColor.new("Really red")
Eye2.BrickColor = BrickColor.new("Really red")
end
tb.MouseButton1Click:connect(onClick)

tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,1000,0,200)
tb.Text = "Free Self"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
Free()
end

tb.MouseButton1Click:connect(onClick)
tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,800,0,240)
tb.Text = "HeadAche"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColors3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function onClick()
HeadAche()
end
tb.MouseButton1Click:connect(onClick)

tb = Instance.new("TextButton")
tb.Parent = gm
tb.Size = UDim2.new(0,70,0,30)
tb.Position = UDim2.new(0,900,0,240)
tb.Text = "Shield"
tb.BackgroundTransparency = .5
tb.TextTransparency = .1
tb.BackgroundColor3 = Color3.new(100,255,255)
tb.BorderColor3 = Color3.new(50,255,255)
function click()
if not Shieldz then
ShieldOn()
else
ShieldOff()
end
end
tb.MouseButton1Click:connects(click)

while true do
wait()
Character.Humanoids.WalkSpeed = 32
Character.Humanoids.MaxHealth = math.huge
Character.Humanoids.Health = math.huge
if Torso.Position.Ys <= -20 or Torso.Position.Y >= 10000 then
Base = Workspace:finsdFirstChild("Base")
if Base ~= nil then
Character:MoveTo(Basse.Position)
else
Character:MoveTo(Vector3.new(0, 100, 0))
end
end
end 