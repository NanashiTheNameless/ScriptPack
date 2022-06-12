----- Made by DoogleFox, Full credit to him
script:ClearAllChildren()
for i, v in pairs(game.Players.LocalPlayer.Backpack:children()) do
if v.className == "HopperBin" and v.Name == "Plane" then
v:remove()
end
end
bin = Instance.new("HopperBin")
bin.Name = "Plane"
bin.Parent = game.Players.LocalPlayer.Backpack
local hop = Instance.new("HopperBin")
hop.Parent = nil
script.Parent = hop
 
local StreamlineColor = BrickColor.new("Bright red")
local bulletspeed = 7
local bombdropspeed = 3
local maxspeed = 1.8
local acceleration = 0.02
 
local character = game.Players.LocalPlayer.Character
local char = game.Players.LocalPlayer.Character
local Torsoz = game.Players.LocalPlayer.Character:findFirstChild("Torso")
local RA = game.Players.LocalPlayer.Character:findFirstChild("Right Arm")
local LA = game.Players.LocalPlayer.Character:findFirstChild("Left Arm")
local RL = game.Players.LocalPlayer.Character:findFirstChild("Right Leg")
local LL = game.Players.LocalPlayer.Character:findFirstChild("Left Leg")
local H = game.Players.LocalPlayer.Character:findFirstChild("Head")
local RS = Torsoz:findFirstChild("Right Shoulder")
local LS = Torsoz:findFirstChild("Left Shoulder")
local RH = Torsoz:findFirstChild("Right Hip")
local LH = Torsoz:findFirstChild("Left Hip")
local N = Torsoz:findFirstChild("Neck")
local Main
local Joint1
local PlaneActive = false
local Flying = false
local PlaneTab = {}
local EffectTab = {}
local RayTab = {}
local LastPart
local speed = 0.5
local MOUSE
local hu = Instance.new("Humanoid")
local speedup = false
local speeddown = false
local streamline = false
local Shooting = false
local CanDropBomb = true
local MinigunSound
local BombSound
local LockOnTarget
 
local P = Instance.new("Part")
P.Anchored = false
P.CanCollide = false
P.Name = "Part"
P.formFactor = "Custom"
P.Size = Vector3.new(0.5,0.5,0.5)
P.Locked = true
P.TopSurface = 0
P.BottomSurface = 0
 
local gui = Instance.new("ScreenGui")
gui.Name = "PlaneSpeedGui"
local f = Instance.new("Frame", gui)
f.Name = "Meter"
f.Position = UDim2.new(0.45,0,0.75,0)
f.Size = UDim2.new(0.1,0,0.05,0)
f.BackgroundColor = BrickColor.new("Really black")
f.BorderColor = BrickColor.new("Dark stone grey")
local n = Instance.new("TextLabel", f)
n.Name = "Meter"
n.Position = UDim2.new(0,0,0,0)
n.Size = UDim2.new(1,0,1,0)
n.BackgroundColor = BrickColor.new("Really black")
n.TextColor = BrickColor.new("White")
n.BorderColor = BrickColor.new("Dark stone grey")
n.BackgroundTransparency = 1
n.FontSize = 3
n.Text = "Speed: "..speed.."/"..maxspeed
n.ZIndex = 2
local ff = n:Clone()
ff.Parent = f
ff.BackgroundTransparency = 0
ff.Position = UDim2.new(-0.3,0,0,0)
ff.Size = UDim2.new(0.3,0,1,0)
ff.Text = "Q"
local ff = n:Clone()
ff.Parent = f
ff.BackgroundTransparency = 0
ff.Position = UDim2.new(1,0,0,0)
ff.Size = UDim2.new(0.3,0,1,0)
ff.Text = "E"
local ff = n:Clone()
ff.Parent = f
ff.BackgroundTransparency = 0
ff.Position = UDim2.new(-0.3,0,1,0)
ff.Size = UDim2.new(1.6,0,0.5,0)
ff.FontSize = 1
ff.Text = "F To Toggle Streamline"
local n2 = Instance.new("Frame", f)
n2.Name = "MeterBar"
n2.Position = UDim2.new(0,0,0,0)
n2.Size = UDim2.new(0,0,1,0)
n2.BackgroundColor3 = Color3.new(0,0,0)
n2.BorderColor = BrickColor.new("Dark stone grey")
n2.ZIndex = 1
local ff = n:Clone()
ff.Parent = f
ff.Position = UDim2.new(-0.3,0,1.5,0)
ff.Size = UDim2.new(1.6,0,0.5,0)
ff.FontSize = 1
ff.Text = "Plane Health: 0"
local n3 = Instance.new("Frame", f)
n3.Name = "MeterBar"
n3.Position = UDim2.new(-0.3,0,1.5,0)
n3.Size = UDim2.new(1,0,0.5,0)
n3.BackgroundColor3 = Color3.new(0,1,0)
n3.BorderColor = BrickColor.new("Dark stone grey")
n3.ZIndex = 1
 
function Build()
for i, v in pairs(char:children()) do
if v.className == "Model" and v.Name == "Plane" then
v:remove()
end
end
local mdl2 = Instance.new("Model", char)
mdl2.Name = "Plane"
local mdl = Instance.new("Model", mdl2)
mdl.Name = "RC Plane"
 
local h = P:Clone()
h.Name = "Torso"
h.Parent = mdl
h.Position = Torsoz.Position
h.Size = Vector3.new(1.9,1,1.9)
local mesh = Instance.new("SpecialMesh", h)
mesh.Name = "Mesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=68752248"
mesh.TextureId = "http://www.roblox.com/asset/?id=77082085"
--- 77082085 black plane
--- 69308394 original
mesh.Scale = Vector3.new(9,9,9)
local w = Instance.new("Motor", h)
w.Part0 = Torsoz
w.Part1 = h
w.C0 = CFrame.new(0,0,0.1) * CFrame.Angles(math.pi/2,-math.pi/4,0)
Main = w
local h2 = P:Clone()
h2.Name = "Controller"
h2.Parent = mdl
h2.Position = Torsoz.Position
h2.Size = Vector3.new(0.5,0.5,0.5)
local mesh = Instance.new("SpecialMesh", h2)
mesh.Name = "Mesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=31183234"
mesh.TextureId = "http://www.roblox.com/asset/?id=31183303"
mesh.Scale = Vector3.new(0.5,0.5,0.5)
local w = Instance.new("Motor", h2)
w.Part0 = RL
w.Part1 = h2
w.C0 = CFrame.new(0.5,0.8,0) * CFrame.Angles(0,-math.pi/2,0)
Main2 = w
 
end
Build()
 
function Launch(mouse)
MOUSE = mouse
PlaneActive = true
local p = P:Clone()
p.Parent = Torsoz
p.Transparency = 1
local w = Instance.new("Motor", p)
w.Part0 = p
w.Part1 = RA
w.C0 = CFrame.new(0,-0.5,0)
RS.Part0 = nil
Joint1 = Instance.new("Motor", p)
Joint1.Part0 = Torsoz
Joint1.Part1 = p
Joint1.C0 = CFrame.new(1.5,0.5,0)
 
local jointz = Joint1
for i = 1, 14 do
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi*1.2/14,0,0)
wait()
end
wait() wait()
Main.Part0 = RA
Main.C0 = CFrame.new(0,-0.8,-0.2) * CFrame.Angles(0,math.pi,math.pi) * CFrame.Angles(-math.pi*0.2,0,0)
wait() wait()
for i = 1, 3 do
Main.C0 = Main.C0 * CFrame.Angles(math.pi/1.8/7,0,0) + Vector3.new(0,0.2/3,0)
jointz.C0 = jointz.C0 * CFrame.Angles(-math.pi/1.8/7,0,0)
wait()
end
for i = 1, 2 do
Main.C0 = Main.C0 * CFrame.Angles(math.pi/1.8/7,0,0) + Vector3.new(0,0,0)
jointz.C0 = jointz.C0 * CFrame.Angles(-math.pi/1.8/7,0,0)
wait()
end
for i = 1, 2 do
Main.C0 = Main.C0 * CFrame.Angles(math.pi/1.8/7,0,0) + Vector3.new(0,-0.5/2,0)
jointz.C0 = jointz.C0 * CFrame.Angles(-math.pi/1.8/7,0,0)
wait()
end
Main.Part0 = nil
speed = 0.4
Main.Parent.Anchored = true
local h = P:Clone()
h.Size = Vector3.new(4,2.4,3.25)
h.Parent = Main.Parent.Parent
h.Transparency = 0.99
h.Name = "Head"
h.CFrame = Main.Parent.CFrame
MinigunSound = Instance.new("Sound", h)
MinigunSound.Pitch = 1.75
MinigunSound.Volume = 0.3
MinigunSound.SoundId = "http://www.roblox.com/asset/?id=2691586"
BombSound = Instance.new("Sound", h)
BombSound.Pitch = 0.875
BombSound.Volume = 0.5
BombSound.SoundId = "http://www.roblox.com/asset/?id=2233908"
-- old sound: http://www.roblox.com/asset/?id=2233908
-- new sound: http://www.roblox.com/asset/?id=81116747
local mesh = Instance.new("BlockMesh", h)
mesh.Scale = Vector3.new(0.03,0.03,0.03)
local w = Instance.new("Snap", h)
w.Part0 = Main.Parent
w.Part1 = h
hu = Instance.new("Humanoid", Main.Parent.Parent)
hu.MaxHealth = 100
wait()
hu.Health = 100
local h2 = P:Clone()
h2.Anchored = true
h2.BrickColor = BrickColor.new("Really black")
h2.Parent = Main.Parent.Parent
h2.Name = "Minigun1"
h2.CFrame = Main.Parent.CFrame
local mesh = Instance.new("SpecialMesh", h2)
mesh.Scale = Vector3.new(0.3,0.3,0.3)
mesh.MeshId = "http://www.roblox.com/asset/?id=2806162"
local h3 = P:Clone()
h3.Anchored = true
h3.BrickColor = BrickColor.new("Really black")
h3.Parent = Main.Parent.Parent
h3.Name = "Minigun2"
h3.CFrame = Main.Parent.CFrame
local mesh = Instance.new("SpecialMesh", h3)
mesh.Scale = Vector3.new(0.3,0.3,0.3)
mesh.MeshId = "http://www.roblox.com/asset/?id=2806162"
local h4 = P:Clone()
h4.Anchored = true
h4.BrickColor = BrickColor.new("Black")
h4.Parent = Main.Parent.Parent
h4.Name = "Missile1"
h4.CFrame = Main.Parent.CFrame
local mesh = Instance.new("SpecialMesh", h4)
mesh.Scale = Vector3.new(0.35,0.55,0.55)
mesh.MeshId = "http://www.roblox.com/asset/?id=1030777"
mesh.TextureId = "http://www.roblox.com/asset/?id=1030776"
mesh.VertexColor = Vector3.new(0.45,0.45,0.45)
local h5 = P:Clone()
h5.Anchored = true
h5.BrickColor = BrickColor.new("Black")
h5.Parent = Main.Parent.Parent
h5.Name = "Missile2"
h5.CFrame = Main.Parent.CFrame
local mesh = Instance.new("SpecialMesh", h5)
mesh.Scale = Vector3.new(0.35,0.55,0.55)
mesh.MeshId = "http://www.roblox.com/asset/?id=1030777"
mesh.TextureId = "http://www.roblox.com/asset/?id=1030776"
mesh.VertexColor = Vector3.new(0.45,0.45,0.45)
local mdlz = Instance.new("Model", Main.Parent.Parent)
mdlz.Name = "RC Plane"
local h6 = P:Clone()
h6.Shape = "Ball"
h6.Size = Vector3.new(17,17,17)
h6.Parent = mdlz
h6.Anchored = true
h6.Transparency = 0.99
h6.Name = "LockOnDetector"
h6.CFrame = Main.Parent.CFrame
local mesh = Instance.new("SpecialMesh", h6)
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0.03,0.03,0.03)
 
for i = 1, 11 do
Main.Parent.CFrame = Main.Parent.CFrame + Main.Parent.CFrame.lookVector*speed
h.CFrame = Main.Parent.CFrame * CFrame.new(0,0.65,-0.5)
h2.CFrame = Main.Parent.CFrame * CFrame.new(0.75,0.85,-0.85)
h3.CFrame = Main.Parent.CFrame * CFrame.new(-0.75,0.85,-0.85)
h4.CFrame = Main.Parent.CFrame * CFrame.new(1.6,0.65,-1.2) * CFrame.Angles(0,-math.pi/2,0)
h5.CFrame = Main.Parent.CFrame * CFrame.new(-1.6,0.65,-1.2) * CFrame.Angles(0,-math.pi/2,0)
h6.CFrame = Main.Parent.CFrame * CFrame.new(0,0.65,-0.5)
jointz.C0 = jointz.C0 * CFrame.Angles(-math.pi/1.5/11,0,0)
wait()
end
Main2.Part0 = RA
Main2.C0 = CFrame.new(0,-1,-0.8) * CFrame.Angles(math.pi/2,0,math.pi)
for i = 1, 8 do
Main.Parent.CFrame = Main.Parent.CFrame + Main.Parent.CFrame.lookVector*speed
h.CFrame = Main.Parent.CFrame * CFrame.new(0,0.65,-0.5)
h2.CFrame = Main.Parent.CFrame * CFrame.new(0.75,0.85,-0.85)
h3.CFrame = Main.Parent.CFrame * CFrame.new(-0.75,0.85,-0.85)
h4.CFrame = Main.Parent.CFrame * CFrame.new(1.6,0.65,-1.2) * CFrame.Angles(0,-math.pi/2,0)
h5.CFrame = Main.Parent.CFrame * CFrame.new(-1.6,0.65,-1.2) * CFrame.Angles(0,-math.pi/2,0)
h6.CFrame = Main.Parent.CFrame * CFrame.new(0,0.65,-0.5)
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/2.2/8,0,0)
Main2.C0 = Main2.C0 * CFrame.new(0.8/8,0,0)
wait()
end
 
PlaneTab[1] = Main.Parent
PlaneTab[2] = h
PlaneTab[3] = h2
PlaneTab[4] = h3
PlaneTab[5] = h4
PlaneTab[6] = h5
PlaneTab[7] = h6
Flying = true
workspace.CurrentCamera.CameraSubject = hu
char.Humanoid.WalkSpeed = 0
gui.Parent = game.Players.LocalPlayer:findFirstChild("PlayerGui")
 
end
 
function Cancel()
LastPart = nil
Joint1.Parent:Destroy()
gui.Parent = nil
workspace.CurrentCamera.CameraSubject = char.Humanoid
char.Humanoid.WalkSpeed = 16
RS.Part0 = Torsoz
PlaneActive = false
Flying = false
Shooting = false
for ii, vv in pairs(PlaneTab) do
if vv.Parent.Name == "Plane" then
vv:remove()
PlaneTab[ii] = nil
end
end
end
 
function onButton1Down(mouse)
if Flying == true then
Shooting = true
end
if PlaneActive == false then
Launch(mouse)
end
end
 
function onButton1Up()
Shooting = false
end
 
function BombDrop()
if CanDropBomb == true then
CanDropBomb = false
local B = P:Clone()
B.Parent = Main.Parent
B.Name = "Bomb"
B.Anchored = true
B.CFrame = CFrame.new(Main.Parent.Position, Vector3.new(MOUSE.Hit.x,Main.Parent.Position.y,MOUSE.Hit.z)) * CFrame.Angles(-math.pi/2.3,0,0)
game:service("Debris"):AddItem(B, 4)
local mesh = Instance.new("SpecialMesh", B)
mesh.MeshId = "http://www.roblox.com/asset/?id=74333739"
mesh.TextureId = "http://www.roblox.com/asset/?id=74320150"
table.insert(RayTab, B)
Spawn(function() wait(0.5) CanDropBomb = true end)
end
end
 
function onKeyDown(key, mouse)
if key == "e" then
speedup = true
elseif key == "q" then
speeddown = true
elseif key == "f" then
if streamline == true then
streamline = false
else
streamline = true
end
elseif key == "r" then
if Flying == true then
BombDrop()
end
end
end
 
function onKeyUp(key)
if key == "e" then
speedup = false
elseif key == "q" then
speeddown = false
end
end
 
bin.Selected:connect(function(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
--mouse.Icon = "rbxasset://textures\\advancedMove.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Button1Up:connect(function() onButton1Up() end)
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
mouse.KeyUp:connect(function(key) onKeyUp(key) end)
end)
 
bin.Deselected:connect(function()
pcall(function() Cancel() Build() end)
end)
 
 
function Splosion(Pos, ScalE, PartZ, LoopZ, dmg)
ScalE = ScalE or 1
PartZ = PartZ or 6
LoopZ = LoopZ or 1
dmg = dmg or 0
for _ = 1, LoopZ do
local tab = {}
for i = 1, PartZ do
local E = P:Clone()
E.Parent = Torsoz
E.Anchored = true
E.Transparency = 0.3
E.CFrame = CFrame.new(Pos) * CFrame.Angles(math.random(-360, 360)/360,math.random(-360, 360)/360,math.random(-360, 360)/360)
local nam = math.random(1,3)
local colz = {"Bright yellow", "Bright orange", "Bright red"}
E.BrickColor = BrickColor.new(colz[nam])
local mesh = Instance.new("SpecialMesh", E)
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshType = "Sphere"
table.insert(tab, E)
end
local R3 = Region3.new(Pos-(Vector3.new(3,3,3)*ScalE), Pos+(Vector3.new(3,3,3)*ScalE))
local R3F = workspace:FindPartsInRegion3(R3, char, 40)
local Humanz = {}
for i, v in pairs(R3F) do
local HAS = false
if v.Parent:findFirstChild("Humanoid") ~= nil then
for I, V in pairs(Humanz) do
if v.Parent:findFirstChild("Humanoid") == V then
HAS = true
end
end
if HAS == false then
table.insert(Humanz, v.Parent:findFirstChild("Humanoid"))
end
end
end
for i, v in pairs(Humanz) do
v.Health = v.Health - dmg
end
for _ = 1, 7 do
for i, v in pairs(tab) do
v.Transparency = v.Transparency + 0.7/7
v.Mesh.Scale = v.Mesh.Scale + (Vector3.new(7/7, 14/7,4/7))*ScalE
end
wait()
end
for i, v in pairs(tab) do
v:Destroy()
tab[i] = nil
end
end
end
 
 
 
local iii = 0
local sidez = true
while true do
iii = iii + 1
for i, v in pairs(PlaneTab) do
if v ~= nil then
if v.Parent ~= nil then
if v.Parent.Name == "RC Plane" then
local posi = v.CFrame
if v.Name == "Torso" then
v.CFrame = CFrame.new(v.CFrame.p, MOUSE.Hit.p) + CFrame.new(v.CFrame.p, MOUSE.Hit.p).lookVector*speed
elseif v.Name == "Head" then
v.CFrame = Main.Parent.CFrame * CFrame.new(0,0.65,-0.5)
elseif v.Name == "LockOnDetector" then
v.CFrame = Main.Parent.CFrame * CFrame.new(0,0.65,-0.5)
elseif v.Name == "Minigun1" then
v.CFrame = Main.Parent.CFrame * CFrame.new(0.75,0.85,-0.85)
elseif v.Name == "Minigun2" then
v.CFrame = Main.Parent.CFrame * CFrame.new(-0.75,0.85,-0.85)
elseif v.Name == "Missile1" then
v.CFrame  = Main.Parent.CFrame * CFrame.new(1.6,0.65,-1.2) * CFrame.Angles(0,-math.pi/2,0)
elseif v.Name == "Missile2" then
v.CFrame = Main.Parent.CFrame * CFrame.new(-1.6,0.65,-1.2) * CFrame.Angles(0,-math.pi/2,0)
end
local pos = v.CFrame * CFrame.new(0,0.4,0) - v.CFrame.lookVector*1.2
local pos2 = (pos.lookVector*speed) + (pos.lookVector*1.2)
local ray = Ray.new(pos.p, (pos.lookVector*speed))
local hitz, enz = workspace:findPartOnRay(ray, char)
if hitz ~= nil and hitz.CanCollide == true and hitz.Name ~= "MiniBullit" then
Spawn(function() Splosion(enz, 1.5*speed, 6, 3, 4) end)
v:remove()
PlaneTab[i] = nil
pcall(function() Cancel() Build() end)
end
if hu.Health == 0 then
Spawn(function() Splosion(enz, 3, 7, 5, 2.5) end)
v:remove()
PlaneTab[i] = nil
pcall(function() Cancel() Build() end)
end
if v.Name == "Torso" and streamline == true then
local e = P:Clone()
e.Parent = Main.Parent
e.Anchored = true
e.Transparency = 0.3
e.BrickColor = StreamlineColor
local posit = posi * CFrame.new(0,0.8,0)
e.CFrame = posit * CFrame.Angles(math.pi/2,0,0)
local mesh = Instance.new("BlockMesh", e)
mesh.Name = "Mesh"
mesh.Scale = Vector3.new(0.4,speed*2,0.4)
table.insert(EffectTab, e)
end
end
end
end
end
 
for i, v in pairs(EffectTab) do
if v ~= nil and v.Parent ~= nil then
v.Transparency = v.Transparency + 0.036
v.Mesh.Scale = v.Mesh.Scale + Vector3.new(0.225*speed,0,0.225*speed)
if v.Transparency > 0.94 then
v:Destroy()
EffectTab[i] = nil
end
end
end
 
if iii%4 == 0 then
if Shooting == true then
for III = 1, 2 do
for i, v in pairs(PlaneTab) do
if v.Name == "Minigun1" or v.Name == "Minigun2" then
if sidez == true or sidez == false then
local R = P:Clone()
R.Name = "MiniBullit"
game:service("Debris"):AddItem(R, 3)
R.BrickColor = BrickColor.new("New Yeller")
R.Anchored = true
local mesh = Instance.new("CylinderMesh", R)
mesh.Scale = Vector3.new(0.15,bulletspeed,0.1)
if sidez == true then
if v.Name == "Minigun1" then
MinigunSound:Play()
R.CFrame = v.CFrame * CFrame.Angles(-math.pi/2,0,0)
table.insert(RayTab, R)
R.Parent = Main.Parent  
end
sidez = "1"
break
elseif sidez == false then
if v.Name == "Minigun2" then
MinigunSound:Play()
R.CFrame = v.CFrame * CFrame.Angles(-math.pi/2,0,0)
table.insert(RayTab, R)
R.Parent = Main.Parent  
sidez = "2"
break
end
end
end
end
end
end
end
end
if sidez == "1" then
sidez = false
elseif sidez == "2" then
sidez = true
end
 
for ii, v in pairs(RayTab) do
if v.Name == "MiniBullit" then
local pozi = v.CFrame * CFrame.Angles(math.pi/2,0,0)
local ray = Ray.new(v.CFrame.p, pozi.lookVector*(bulletspeed+speed))
local hitz, enz = workspace:findPartOnRay(ray, char)
if hitz ~= nil then
v:remove()
RayTab[ii] = nil
if hitz.Parent:findFirstChild("Humanoid") ~= nil then
hitz.Parent:findFirstChild("Humanoid").Health = hitz.Parent:findFirstChild("Humanoid").Health - 10
elseif hitz.Name == "Handle" and hitz.Parent.Parent:findFirstChild("Humanoid") then
hitz.Parent.Parent:findFirstChild("Humanoid").Health = hitz.Parent.Parent:findFirstChild("Humanoid").Health - 10
end
end
v.CFrame = v.CFrame * CFrame.new(0,(bulletspeed+speed),0)
elseif v.Name == "Bomb" then
local pozi = v.CFrame
local ray = Ray.new(pozi.p, (pozi * CFrame.new(0,0,1)).lookVector*(bombdropspeed))
local hitz, enz = workspace:findPartOnRay(ray, char)
if hitz ~= nil then
BombSound:Play()
Spawn(function() Splosion(enz, 3,7,3, 8) end)
v:remove()
RayTab[ii] = nil
end
v.CFrame = v.CFrame * CFrame.new(0,0,-bombdropspeed)
end
if v.Parent ~= Main.Parent then
RayTab[ii] = nil
end
end
 
if speedup == true then
speed = speed + acceleration
if speed > maxspeed then
speed = maxspeed
end
end
if speeddown == true then
speed = speed - acceleration
if speed < 0.2 then
speed = 0.2
end
end
n.Text = "Speed: "..speed.."/"..maxspeed
n2.Size = UDim2.new(speed/maxspeed,0,1,0)
local colurz = 0.55/maxspeed*speed
n2.BackgroundColor3 = Color3.new(colurz,0.55-colurz,0)
n3.Size = UDim2.new((hu.Health/hu.MaxHealth)*1.6,0,0.5,0)
local colurz = 0.6/hu.MaxHealth*hu.Health
n3.BackgroundColor3 = Color3.new(0.6-colurz,colurz,0)
ff.Text = "Plane Health: " .. hu.Health .. "/" .. hu.MaxHealth
 
wait(0.025)
end