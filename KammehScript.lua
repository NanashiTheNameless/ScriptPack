-- NO NAME NEEDED --

Instance.new("HopperBin",game.Players.LocalPlayer.Backpack).Name = "Earth-shattering kamehameha"
script.Parent = game.Players.LocalPlayer.Backpack:findFirstChild"Earth-shattering kamehameha"
local char = script.Parent.Parent.Parent.Character
local humanoid = char.Humanoid
local Head = char.Head
local Torso = char.Torso
local LeftArm = char["Left Arm"]
local RightArm = char["Right Arm"]
local LeftLeg = char["Left Leg"]
local RightLeg = char["Right Leg"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Neck = Torso.Neck
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local NeckC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local NeckC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local LeftShoulderC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local LeftShoulderC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local RightShoulderC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
local RightShoulderC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
local LeftHipC0 = CFrame.new(-1, -1, 0, 0, 0, -1,0,1, 0, 1, 0, 0)
local LeftHipC1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1, 0, 0)
local RightHipC0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
local RightHipC1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
local taco = false
local taco2 = true
local time = game.Lighting.TimeOfDay
local h = tonumber(string.sub(time,1,2))
local m = tonumber(string.sub(time,4,5))+1
local s = tonumber(string.sub(time,7,8))
local function frame()
TiltX = 0
TiltY = 0
TiltZ = 0
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(TiltX, TiltY, -TiltZ)
TiltX = -1.65
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = -0.31
MoveZ = -0.4
RightShoulder.C0 = RightShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
TiltX = -0.12
TiltY = -0.01
TiltZ = -0.1
MoveX = 0
MoveY = 0.2
MoveZ = 0
RightHip.C0 = RightHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
end
function switch(bool)
for i,v in pairs(char:GetChildren())do
if v == Torso or v == Head or v == LeftArm or v == RightArm or v == LeftLeg or v == RightLeg then
v.Anchored = bool
end end end
local function frame2()
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
local function RefreshWelds()
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
local function Button1Down(mouse)
if taco then return end
taco = true
humanoid.PlatformStand = true
local staystill = Instance.new("BodyPosition",Torso)
staystill.maxForce = Vector3.new(math.huge,math.huge,math.huge)
staystill.position = Torso.Position
frame()
local energy = Instance.new("Part",char)
energy.Size = Vector3.new(0.1,0.1,0.1)
energy.CanCollide = false
energy.Anchored = true
energy.Locked = true
energy.Shape = "Ball"
energy.TopSurface = "Smooth"
energy.BottomSurface = "Smooth"
energy.Color = Color3.new(0/0,0/0,0/0)
energy.CFrame = RightArm.CFrame * CFrame.new(-0.1,-0.7,-0.6)
local energy2 = Instance.new("Part",char)
energy2.Size = Vector3.new(0.1,0.1,0.1)
energy2.CanCollide = false
energy2.Anchored = true
energy2.Locked = true
energy2.Shape = "Ball"
energy2.TopSurface = "Smooth"
energy2.BottomSurface = "Smooth"
energy2.Color = Color3.new(0.0,0.0,0.0)
energy2.CFrame = LeftArm.CFrame * CFrame.new(0,-0.7,-0.6)
local f1 = Instance.new("Fire",energy)
f1.Color = energy.Color
f1.SecondaryColor = Color3.new(0,0,0)
f1.Heat = 0
local f2 = Instance.new("Fire",energy2)
f2.Color = energy2.Color
f2.SecondaryColor = Color3.new(1,1,1)
f2.Heat = 0
local f1 = Instance.new("Fire",energy)
f1.Color = energy.Color
f1.SecondaryColor = Color3.new(0,0,0)
f1.Heat = 0
local f2 = Instance.new("Fire",energy2)
f2.Color = energy2.Color
f2.SecondaryColor = Color3.new(1,1,1)
f2.Heat = 0
local f1 = Instance.new("Fire",energy)
f1.Color = energy.Color
f1.SecondaryColor = Color3.new(0,0,0)
f1.Heat = 0
local f2 = Instance.new("Fire",energy2)
f2.Color = energy2.Color
f2.SecondaryColor = Color3.new(1,1,1)
f2.Heat = 0
--[[                                                                                                                                                                                    ]]





switch(true)
wait(0.5)
repeat m = m * 2 if m >= 60 then m = 1 h = h + 1 end game.Lighting.TimeOfDay = ""..h..":"..m..":"..s.."" wait(0) until game.Lighting.TimeOfDay >= "18:00:00"
for i = 1,10 do
energy.CFrame = RightArm.CFrame * CFrame.new(-0.1,-0.7,-0.6)
energy2.CFrame = LeftArm.CFrame * CFrame.new(0,-0.7,-0.6)
energy.Size = energy.Size + Vector3.new(0.5,0.5,0.5)
energy2.Size = energy2.Size + Vector3.new(0.5,0.5,0.5)
energy.Reflectance = energy.Reflectance + 0.1
energy2.Reflectance = energy2.Reflectance + 0.1
wait()
energy.CFrame = RightArm.CFrame * CFrame.new(-0.1,-0.7,-0.6)
energy2.CFrame = LeftArm.CFrame * CFrame.new(0,-0.7,-0.6)
end
game:GetService("Chat"):Chat(Head,"EARTH SHATTERING!",0)
wait(0.6)
switch(false)
frame2()
wait()
switch(true)
for i = 1,10 do
wait()
energy.CFrame = energy.CFrame * CFrame.new(0,0.25,-0.25)
energy2.CFrame = energy2.CFrame * CFrame.new(0,0.25,-0.25)
end
for i = 1,20 do
energy.Size = energy.Size * Vector3.new(0.5,0.5,0.5)
energy2.Size = energy2.Size * Vector3.new(0.5,0.5,0.5)
energy.Reflectance = energy.Reflectance - 0.1
energy2.Reflectance = energy2.Reflectance - 0.1
wait()
energy.CFrame = Torso.CFrame * CFrame.new(0,0.2,-4.5)
energy2.CFrame = Torso.CFrame * CFrame.new(0,0.2,-4.5)
end
energy:Destroy()
energy2:Destroy()
wait(0.6)
game:GetService("Chat"):Chat(Head,"KAMEEHHHH",0)
local blast = Instance.new("Part",char)
blast.Size = Vector3.new(8,8,8)
blast.Shape = "Ball"
blast.TopSurface = "Smooth"
blast.BottomSurface = "Smooth"
blast.Anchored = true
blast.Locked = true
blast.CanCollide = false
blast.Color = Color3.new(0/0,0/0,0/0)
blast.Transparency = 0
blast.CFrame = Torso.CFrame * CFrame.new(0,0.2,-6.5)
wait(0.6)
game:GetService("Chat"):Chat(Head,"HAMEEHHHHH",1)
local xf = Instance.new("Fire",blast)
xf.Size = 25
xf.Color = blast.Color
xf.SecondaryColor = Color3.new(0.0,0.0,0.0)
xf.Heat = 0
local xf = Instance.new("Fire",blast)
xf.Size = 25
xf.Color = blast.Color
xf.SecondaryColor = Color3.new(0.0,0.0,0.0)
xf.Heat = 0
for i = 1,20 do
blast.Transparency = blast.Transparency + 0.05
blast.Reflectance = blast.Reflectance + 0.01
wait(0.1)
if blast.Transparency >= 1 then
blast.Transparency = blast.Transparency - 0.1
end end
blast.Transparency = 0.1
wait(0.5)
game:GetService("Chat"):Chat(Head,"HAAAAAAHHHHHHHHH!",2)
coroutine.resume(coroutine.create(function()
for i = 1,5 do wait(0)
local p = Instance.new("Part",blast)
p.Size = Vector3.new(0,0,0)
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.BrickColor = BrickColor.new("Really black")
p.TopSurface = "Smooth"
p.Reflectance = 0.3
p.Transparency = 0.4
p.BottomSurface = "Smooth"
p.CFrame = blast.CFrame * CFrame.new(0,0,0)
local m1 = Instance.new("SpecialMesh",p)
m1.Scale = p.Size
m1.MeshId = "http://www.roblox.com/asset/?id=3270017"
local p2 = Instance.new("Part",blast)
p2.CFrame = blast.CFrame * CFrame.new(0,0,0)
p2.Size = Vector3.new(0,0,0)
p2.Anchored = true
p2.CanCollide = false
p2.Locked = true
p2.BrickColor = BrickColor.new("Really black")
p2.TopSurface = "Smooth"
p2.Reflectance = 0.3
p2.Transparency = 0.4
p2.BottomSurface = "Smooth"
local m2 = Instance.new("SpecialMesh",p2)
m2.Scale = p2.Size
m2.MeshId = "http://www.roblox.com/asset/?id=3270017"
local p3 = Instance.new("Part",blast)
p3.Size = Vector3.new(0,0,0)
p3.Anchored = true
p3.CanCollide = false
p3.Locked = true
p3.Color = blast.Color
p3.TopSurface = "Smooth"
p3.Reflectance = 0.3
p3.Transparency = 0.4
p3.BottomSurface = "Smooth"
p3.CFrame = blast.CFrame * CFrame.new(0,0,0)
local m3 = Instance.new("SpecialMesh",p3)
m3.Scale = p.Size
m3.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.resume(coroutine.create(function()
for i = 1,20 do wait(0)
m1.Scale = m1.Scale + Vector3.new(5,5,5)
p.CFrame = p.CFrame * CFrame.new(0,0,-5)
end
p:Destroy()
end))
coroutine.resume(coroutine.create(function()
for i = 1,20 do wait(0)
m2.Scale = m2.Scale + Vector3.new(5,5,5)
p2.CFrame = p2.CFrame * CFrame.new(0,0,-5)
end
p2:Destroy()
end))
coroutine.resume(coroutine.create(function()
for i = 1,20 do wait(0)
m3.Scale = m3.Scale + Vector3.new(5,5,5)
p3.CFrame = p3.CFrame * CFrame.new(0,0,-5)
end
p3:Destroy()
end))end end))
local p = Instance.new("Part",blast)
p.Size = blast.Size
p.CanCollide = true
p.Anchored = true
p.Locked = true
p.Color = blast.Color
p.Reflectance = blast.Reflectance
p.Transparency = blast.Transparency
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = blast.CFrame * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
p.Touched:connect(function(hit)
if not taco2 then return end
taco2 = false
if hit.Parent:findFirstChild("Humanoid")then
for i,v in pairs(hit.Parent:GetChildren())do
if v:IsA"Hat" then
v:Destroy()
elseif v:IsA"Part" then
v.Velocity = v.Position * Vector3.new(50,3,0)
v.RotVelocity = v.Position - v.Velocity
v.Parent:BreakJoints()
end end end 
wait(8)
taco2 = true
end)
local mesh = Instance.new("CylinderMesh",p)
mesh.Scale = Vector3.new(1,0,1)
for i = 1,150 do
mesh.Scale = mesh.Scale + Vector3.new(-0.16,1.19,-0.16)
p.CFrame = p.CFrame * CFrame.new(0,-5,0)
wait(0)
mesh.Scale = mesh.Scale + Vector3.new(0.1599,0,0.1599)
end 
blast:Destroy()
game.Lighting.TimeOfDay = 12
switch(false)
RefreshWelds()
humanoid.PlatformStand = false
staystill:Destroy()
wait(8)
taco = false
end
script.Parent.Selected:connect(function(mouse)mouse.Button1Down:connect(function(mouse)Button1Down(mouse)end)end)