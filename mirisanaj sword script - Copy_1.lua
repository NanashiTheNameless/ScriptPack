-- is that? 
wait(0.5)
Player = game:GetService("Players")
me = Player.luxulux
char = me.Character
Modelname = "SwordV10"
local HIT = false
local DMG = 200
local AIM = false
local Trans = false
Busy = false
Onfire = false
torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
rightarm = char["Right Arm"]
leftarm = char["Left Arm"]
rightleg = char["Right Leg"]
leftleg = char["Left Leg"]
RShoulder = torso["Right Shoulder"]
LShoulder = torso["Left Shoulder"]
RHip = torso["Right Hip"]
LHip = torso["Left Hip"]
head = char.Head
function FindHumanoid(source)
local object = source
repeat
if object.Parent ~= workspace then
object = object.Parent
else
return true
end
until true
if object:findFirstChild("Humanoid") ~= nil then
Damage(object.Humanoid)
end
end
function Slash(target)
if target.Name ~= "Weapon" and target.Name ~= "Handle" then
FindHumanoid(target)
end
end
function Tag(h)
if h:findFirstChild("Tag") ~= nil then
h.Tag:Destroy()
end
local t = Instance.new("ObjectValue",h)
t.Name = "Tag"
t.Value = player
game.Debris:AddItem(t,6)
end
function Damage(huma)
if huma.Parent.Name ~= char.Name and HIT == false and AIM == true then
Tag(huma)
huma.Health = huma.Health - DMG
Model = Instance.new("Model")
game.Debris:AddItem(Model, 2)
Model.Parent = huma.Parent
p = Instance.new("Part")
p.Parent = Model
p.BrickColor = BrickColor.new("Bright red")
p.CFrame = huma.Parent.Head.CFrame * CFrame.new(0, 5, 0) 
p.CanCollide = false
y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.Parent = p
y.velocity = torso.CFrame.lookVector*0 + Vector3.new(0, 10, 0)
m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.25, 0.1, 0.25)
m.Parent = p
gui = Instance.new("BillboardGui")
gui.Parent = p
gui.Adornee = p
gui.Size = UDim2.new(4,0,2,0)
gui.StudsOffset = Vector3.new(0,4,0)
texta=Instance.new("TextBox")
texta.Size = UDim2.new(1,0,1,0)
texta.BackgroundTransparency = 1
texta.Text = ("~20~")
texta.Parent = gui
if Energy < 100 then
Energy = Energy + 5
end
HIT = true
wait(0.35)
HIT = false
end
end
A = Instance.new("ScreenGui")
A.Parent = me.PlayerGui
A.Name = "CharacterStats"
B = Instance.new("Frame")
B.BackgroundTransparency = 1
B.Name = "Frame"
B.Position = UDim2.new(0.25, 0, 0, 0)
B.Size = UDim2.new(0.25, 0, 0.25, 0)
B.Parent = A
C = Instance.new("TextButton")
C.Active = true
C.AutoButtonColor = true
C.Name = "HPRedBar"
C.BackgroundColor3 = Color3.new(1, 0, 0)
C.Position = UDim2.new(0, 0, 0.15, 0)
C.Size = UDim2.new(1, 0, 0.1, 0)
C.Selected = true
C.Text = ""
C.Parent = B
D = Instance.new("TextButton")
D.Active = true
D.AutoButtonColor = true
D.Name = "MPRedBar"
D.BackgroundColor3 = Color3.new(1, 0, 0)
D.Size = UDim2.new(1, 0, 0.1, 0)
D.Position = UDim2.new(0, 0, 0.25, 0)
D.Selected = true
D.Text = ""
D.Parent = B
E = Instance.new("TextButton")
E.Active = true
E.AutoButtonColor = true
E.Name = "HPGreenBar"
E.BackgroundColor3 = Color3.new(0, 1, 0)
E.Position = UDim2.new(0, 0, 0.15, 0)
E.Size = UDim2.new(1, 0, 0.1, 0)
E.Selected = true
E.Text = ""
E.Parent = B
F = Instance.new("TextButton")
F.Active = true
F.AutoButtonColor = true
F.Name = "MPBlueBar"
F.BackgroundColor3 = Color3.new(0, 0, 1)
F.Size = UDim2.new(1, 0, 0.1, 0)
F.Position = UDim2.new(0, 0, 0.25, 0)
F.Selected = true
F.Text = ""
F.Parent = B
G = Instance.new("TextButton")
G.Active = true
G.AutoButtonColor = true
G.BackgroundTransparency = 1
G.Name = "HPLabel"
G.BackgroundColor3 = Color3.new(0, 1, 0)
G.Position = UDim2.new(0, 0, 0.15, 0)
G.Size = UDim2.new(1, 0, 0.1, 0)
G.Selected = true
G.Text = "Health:100"
G.Parent = B
H = Instance.new("TextButton")
H.Active = true
H.AutoButtonColor = true
H.BackgroundTransparency = 1
H.Name = "MPRedBar"
H.BackgroundColor3 = Color3.new(0, 1, 0)
H.Size = UDim2.new(1, 0, 0.1, 0)
H.Position = UDim2.new(0, 0, 0.25, 0)
H.Selected = true
H.Text = "Energy:100"
H.Parent = B
Name = Instance.new("TextButton")
Name.Active = true
Name.AutoButtonColor = true
Name.Name = "NameLabel"
Name.BackgroundTransparency = 1
Name.BackgroundColor3 = Color3.new(1, 0, 0)
Name.Size = UDim2.new(2, 0, 1, 0)
Name.Position = UDim2.new(-0.5, 0, 0.0625, 0)
Name.Selected = true
Name.Text = ""..me.Name..""
Name.TextScaled = true
Name.Parent = B
Energy = 100
local Sword1 = Instance.new("Part")
Sword1.Parent = char
Sword1.Name = "SSword1"
Sword1.CanCollide = false
Sword1.Locked = true
Sword1.TopSurface = "Smooth"
Sword1.BottomSurface = "Smooth"
Sword1.formFactor = "Symmetric"
Sword1.BrickColor = BrickColor.new("Really black")
Sword1.CFrame = char.Torso.CFrame
Sword1.Transparency = 0
Sword1.Reflectance = 0.1
Sword1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Sword1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, -1.5, 1.5) * CFrame.Angles(0.2, 0, 1.57)
Sword1Mesh = Instance.new("SpecialMesh")
Sword1Mesh.MeshType = "FileMesh"
Sword1Mesh.Parent = Sword1
Sword1Mesh.MeshId = "http://www.roblox.com/asset/?id=12771349"
Sword1Mesh.TextureId = "http://www.roblox.com/asset/?id=12771330"
Sword1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
-------------------------Sword Above is Put Away----------------
function PutAway()
local Sword1 = Instance.new("Part")
Sword1.Parent = char
Sword1.Name = "SSword1"
Sword1.CanCollide = false
Sword1.Locked = true
Sword1.TopSurface = "Smooth"
Sword1.BottomSurface = "Smooth"
Sword1.formFactor = "Symmetric"
Sword1.BrickColor = BrickColor.new("Really black")
Sword1.CFrame = char.Torso.CFrame
Sword1.Transparency = 0
Sword1.Reflectance = 0.1
Sword1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Sword1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, -1.5, 1.5) * CFrame.Angles(0.2, 0, 1.57)
Sword1Mesh = Instance.new("SpecialMesh")
Sword1Mesh.MeshType = "FileMesh"
Sword1Mesh.Parent = Sword1
Sword1Mesh.MeshId = "http://www.roblox.com/asset/?id=12771349"
Sword1Mesh.TextureId = "http://www.roblox.com/asset/?id=12771330"
Sword1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
end
function DrawSwords()
Model1 = Instance.new("Model")
Model1.Parent = char
Model1.Name = "SHold1"
local Sword1 = Instance.new("Part")
Sword1.Parent = Model1
Sword1.Name = "DSword1"
Sword1.CanCollide = false
Sword1.Locked = true
Sword1.TopSurface = "Smooth"
Sword1.BottomSurface = "Smooth"
Sword1.formFactor = "Symmetric"
Sword1.BrickColor = BrickColor.new("Really black")
Sword1.CFrame = char.Torso.CFrame
Sword1.Transparency = 0
Sword1.Reflectance = 0.1
Sword1.Size = Vector3.new(1, 1, 8)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Left Arm"]
b1Weld.Part0 = char["Left Arm"]
b1Weld.Part1 = Sword1
b1Weld.Name = "RightSwordWeld"
b1Weld.C0 = CFrame.new(0, -1, -3.25) * CFrame.Angles(0, 3.14, 1.57)
Sword1Mesh = Instance.new("SpecialMesh")
Sword1Mesh.MeshType = "FileMesh"
Sword1Mesh.Parent = Sword1
Sword1Mesh.MeshId = "http://www.roblox.com/asset/?id=12771349"
Sword1Mesh.TextureId = "http://www.roblox.com/asset/?id=12771330"
Sword1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
end
neckC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
neckC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LShoulderC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LShoulderC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RShoulderC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RShoulderC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LHipC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHipC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHipC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHipC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
function NilLimbs()
 neck.C0 = neckC0
 neck.C1 = neckC1
 RShoulder.C0 = RShoulderC0
 RShoulder.C1 = RShoulderC1
 LShoulder.C0 = LShoulderC0
 LShoulder.C1 = LShoulderC1
 RHip.C0 = RHipC0
 RHip.C1 = RHipC1
 LHip.C0 = LHipC0
 LHip.C1 = LHipC1
end
function select(mouse)
for i = 1, 10 do
neck.C0 = neckC0 * CFrame.Angles(0+(0.037*i), 0, 0-(0.037*i))
LShoulder.C0 = LShoulderC0 * CFrame.new(0-(0.05*i), 0, 0-(0.1*i)) * CFrame.Angles(0, (0-(i*0.1)), (0-(i*0.05)))
wait()
end
if char:findFirstChild("SSword1") ~= nil then
char.SSword1:Remove()
end
continue1 = neck.C0
continue2 = LShoulder.C0
DrawSwords()
for i = 1, 10 do
neck.C0 = continue1 * CFrame.Angles(0-(0.037*i), 0, 0+(0.037*i))
LShoulder.C0 = continue2 * CFrame.new(0+(0.05*i), 0, 0+(0.1*i)) * CFrame.Angles(0, (0+(i*0.1)), (0+(i*0.05)))
wait()
end
for i = 1, 10 do
neck.C0 = neckC0 * CFrame.Angles(0-(0.075*i), 0, 0)
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, 0, 0-(0.314*i))
wait()
end
wait(1)
NilLimbs()
    mouse.Button1Down:connect(function()
        if not Busy then
            AIM = true
            Busy = true
             char.SHold1.DSword1.Touched:connect(function(hit)
             Slash(hit)
             end)
omg = math.random(1, 4)
if omg == 1 then
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74897796" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
            wait(0.45)
    slash:Remove()
     end
if omg == 2 then
    for i = 1 , 2 do
     LShoulder.C0 = LShoulder.C0 * CFrame.new(0.4, 0, 0) * CFrame.Angles(0, -0.6, 0)
     wait()
      end
    for i = 1 , 4 do
     LShoulder.C0 = LShoulder.C0 * CFrame.new(0, -0.2, 0.2) * CFrame.Angles(-0.44, 0, -0.2)
     wait(0.03)
    end
    wait(0.1)
     for i = 1 , 4 do
     LShoulder.C0 = LShoulder.C0 * CFrame.new(0, 0.2, -0.2) * CFrame.Angles(0.44, 0, 0.2)
     wait(0.03)
    end
    for i = 1 , 2 do
     LShoulder.C0 = LShoulder.C0 * CFrame.new(-0.4, 0, 0) * CFrame.Angles(0, 0.6, 0) 
     wait(0.02)
    end
end
NilLimbs()
            AIM = false
            Busy = false
         end
      end)
mouse.KeyDown:connect(function(key)
key = key:lower()
if not Busy then
if key == "q" and Busy == false and Energy >= 15 and Trans == false then
Busy = true
        local pos = mouse.Hit.p
        pos1 = torso.Position
if (torso.Position-pos).magnitude <= 500 then
    if torso:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = torso
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if head:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = head
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if rightarm:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = rightarm
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if leftarm:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = leftarm
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if leftleg:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = leftleg
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if rightleg:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = rightleg
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
Energy = Energy - 15
 RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 0, 1.5)
   Model = Instance.new("Model")
   Model.Parent = char
local Arrow = Instance.new("Part")
Arrow.Locked = true
Arrow.CanCollide = false
Arrow.BackSurface = 0
Arrow.BottomSurface = 0
Arrow.FrontSurface = 0
Arrow.LeftSurface = 0
Arrow.RightSurface = 0
Arrow.Name = "Blast"
Arrow.TopSurface = 0
Arrow.formFactor = "Symmetric"
Arrow.Shape = "Block"
Arrow.Size = Vector3.new(5, 20, 5)
Arrow.BrickColor = BrickColor.new("Really black")
Arrow.CFrame = torso.CFrame * CFrame.Angles(1.57, 0, 0)
Arrow.Anchored = true
m = Instance.new("CylinderMesh")
m.Parent = Arrow
m.Scale = Vector3.new(4, 1, 4)
Arrow.Parent = Model
            Arrow.Touched:connect(function(shiz)
                 if shiz.Parent ~= nil then
                        if shiz.Parent.Name ~= char.Name then
                            if shiz.Parent:FindFirstChild("Humanoid") ~= nil then
                            
                                if shiz.Parent:findFirstChild("Humanoid") ~= nil then
                                shiz.Parent.Humanoid.Health =  shiz.Parent.Humanoid.Health - 15
                                 shiz.Parent.Torso.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 0, 0)
                                 Nodel = Instance.new("Model")
                                 game.Debris:AddItem(Model, 2)
                                 Nodel.Parent = shiz.Parent
                                 p = Instance.new("Part")
                                 p.Parent = Nodel
                                 p.BrickColor = BrickColor.new("Bright yellow")
                                 p.CFrame = shiz.Parent.Head.CFrame * CFrame.new(0, 5, 0) 
                                 p.CanCollide = false
                                 p.Transparency = 1
                                 y = Instance.new("BodyVelocity")
                                 y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                 y.Parent = p
                                 y.velocity = torso.CFrame.lookVector*0 + Vector3.new(0, 5, 0)
                                 m = Instance.new("SpecialMesh")
                                 m.MeshType = "Brick"
                                 m.Scale = Vector3.new(-0.35, 0.1, -0.35)
                                 m.Parent = p
                                 gui = Instance.new("BillboardGui")
                                 gui.Parent = p
                                 gui.Adornee = p
                                 gui.Size = UDim2.new(4,0,2,0)
                                 gui.StudsOffset = Vector3.new(0,4,0)
                                 texta=Instance.new("TextBox")
                                 texta.Size = UDim2.new(1,0,1,0)
                                 texta.BackgroundTransparency = 1
                                 texta.Text = ("~15~")
                                 texta.TextStrokeColor3 = Color3.new(1, 0, 0)
                                 texta.TextStrokeTransparency = 0
                                 texta.Parent = gui
                                 wait(0.15)
                                end
                            end
                        end
                    end
            end)
        torso.CFrame = CFrame.new(torso.Position, pos)
        torso.Anchored = true
        hum.PlatformStand = true
for i = 1,(pos1-pos).magnitude/4 do        
        torso.CFrame = CFrame.new(torso.Position, pos)
Arrow.Size = Vector3.new(0, i*5, 0)
Arrow.CFrame = torso.CFrame * CFrame.new(1.75, 0, 0-i*2.5) * CFrame.Angles(1.57, 0, 0)
wait(.001)
end
continue1 = Arrow.CFrame
pos2 = (pos1-pos).magnitude
torso.Anchored = true
for i = 1, 10 do
Arrow.Transparency = Arrow.Transparency + 0.1
m.Scale = m.Scale - Vector3.new(0.35, 0, 0.35)
Arrow.CFrame = continue1 * CFrame.new(0, 0, 0)
wait()
end
Model:Remove()
hum.PlatformStand = false
torso.Anchored = false
NilLimbs()
    if torso:findFirstChild("Darkness") ~= nil then
     torso.Darkness:Remove()
     end
    if head:findFirstChild("Darkness") ~= nil then
     head.Darkness:Remove()
     end
    if rightarm:findFirstChild("Darkness") ~= nil then
     rightarm.Darkness:Remove()
     end
    if leftarm:findFirstChild("Darkness") ~= nil then
     leftarm.Darkness:Remove()
     end
    if leftleg:findFirstChild("Darkness") ~= nil then
     leftleg.Darkness:Remove()
     end
    if rightleg:findFirstChild("Darkness") ~= nil then
     rightleg.Darkness:Remove()
     end
end
Busy = false
end
if key == "e" and Busy == false and Energy >= 50 and Trans == false then
for i, v in pairs(workspace:GetChildren()) do
if v.Name ~= me.Name then
zTorso = v:findFirstChild("Torso")
zHead = v:findFirstChild("Head")
zHumanoid = v:findFirstChild("Humanoid")
if zTorso ~= nil and zHumanoid ~= nil then
if (torso.Position-zTorso.Position).magnitude <= 7.5 then
Busy = true
Energy = Energy - 50
Gyro = Instance.new("BodyGyro")
Gyro.Parent = torso
Gyro.D = 50
Gyro.maxTorque = Vector3.new(0, 0, 0)
hum.PlatformStand = true
if char:findFirstChild("Humanoid") ~= nil then
char.Humanoid.Name = "Immortal"
end
datcframe = torso.CFrame
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
Gyro.cframe = CFrame.new(0, 0, 0) * CFrame.Angles(1.4, 0.785, 0)
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 0, 3.14)
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, 1.5, -1.57)
RHip.C0 = RHipC0 * CFrame.Angles(-0.75, 0, 0)
LHip.C0 = LHipC0 * CFrame.Angles(0, 0, 0)
for i = 1, 20 do
zTorso.Velocity = zTorso.CFrame.lookVector * 0 + Vector3.new(0, 75, 0)
wait()
end
pcframe = zTorso.CFrame
Gyro.cframe = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
zTorso.Anchored = true
NilLimbs()
torso.Anchored = false
torso.CFrame = datcframe
LShoulder.C0 = LShoulder.C0 * CFrame.Angles(0.5, 0, 0.75)
RShoulder.C0 = RShoulder.C0 * CFrame.Angles(0.5, 0, -0.75)
LHip.C0 = LHip.C0 * CFrame.Angles(0, 0, 0)
RHip.C0 = RHip.C0 * CFrame.Angles(0, 0, -1.57)
torso.CFrame = torso.CFrame * CFrame.new(0, -3, 0)
torso.Anchored = true
d = Instance.new("Fire")
d.Parent = torso
d.Name = "Spread"
d.Heat = 0
d.Size = 0
d.Color = Color3.new(0, 0, 0)
d.SecondaryColor = Color3.new(0, 0, 0)
for i = 1, 10 do
neck.C0 = neckC0 * CFrame.Angles(0+(0.038*i), 0, 0)
d.Size = d.Size + 3
wait()
end
NilLimbs()
zTorso.Anchored = true
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -20) * CFrame.Angles(0, 3.14, 0)
l = Instance.new("BodyVelocity")
l.Parent = zTorso
l.maxForce = Vector3.new(math.huge, math.huge, math.huge)
x = Instance.new("BodyVelocity")
x.Parent = torso
x.maxForce = Vector3.new(math.huge, math.huge, math.huge)
zTorso.CFrame = pcframe
for i = 1, 5 do
zTorso.CFrame = pcframe
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 0, 1.5)
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, 0, 1.5)
d.Size = d.Size - 1.5
d.Heat = d.Heat - 1.25
    p = Instance.new("Part")
    p.Parent = Workspace
    p.Anchored = true
    p.CanCollide = false
    p.Transparency = 0.4
    p.formFactor = "Symmetric"
    p.Size = Vector3.new(1, 1, 1)
    p.TopSurface = "Smooth"
    p.BottomSurface = "Smooth"
    p.Name = "DarkBall"
    p.Shape = "Ball"
    p.CFrame = torso.CFrame
    p.BrickColor = BrickColor.new(26) 
    game.Debris:AddItem(p, 3)
    AirCFrame = torso.CFrame * CFrame.new(0, 0, -1) * CFrame.Angles(0, 3.14, 0)
    for i = 1 , 5 do
     AirCFrame = AirCFrame * CFrame.new(0, 0, 5)
     p.CFrame = AirCFrame
     for u, v in pairs(workspace:GetChildren()) do
      if v.Name ~= me.Name then
       etorso = v:findFirstChild("Torso")
       ehumanoid = v:findFirstChild("Humanoid")
       if etorso ~= nil and ehumanoid ~= nil then
        if (AirCFrame.p-etorso.Position).magnitude <= 10 then
         ehumanoid:TakeDamage(100)
         etorso.Velocity = AirCFrame.lookVector * -100 + Vector3.new(0, 10, 0)
        end
       end
      end
     end
     wait()
    end
    
    p:Remove()
    wait()
zTorso.CFrame = pcframe
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, 0, -1.5)
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 0, -1.5)
d.Size = d.Size - 1.5
d.Heat = d.Heat - 1.25
    p = Instance.new("Part")
    p.Parent = Workspace
    p.Anchored = true
    p.CanCollide = false
    p.Transparency = 0.4
    p.formFactor = "Symmetric"
    p.Size = Vector3.new(1, 1, 1)
    p.TopSurface = "Smooth"
    p.BottomSurface = "Smooth"
    p.Name = "DarkBall"
    p.Shape = "Ball"
    p.CFrame = torso.CFrame
    p.BrickColor = BrickColor.new(26) 
    game.Debris:AddItem(p, 3)
    AirCFrame = torso.CFrame * CFrame.new(0, 0, -1) * CFrame.Angles(0, 3.14, 0)
    for i = 1 , 5 do
     AirCFrame = AirCFrame * CFrame.new(0, 0, 5)
     p.CFrame = AirCFrame
     for u, v in pairs(workspace:GetChildren()) do
      if v.Name ~= me.Name then
       etorso = v:findFirstChild("Torso")
       ehumanoid = v:findFirstChild("Humanoid")
       if etorso ~= nil and ehumanoid ~= nil then
        if (AirCFrame.p-etorso.Position).magnitude <= 10 then
         ehumanoid:TakeDamage(100)
         etorso.Velocity = AirCFrame.lookVector * -100 + Vector3.new(0, 10, 0)
        end
       end
      end
     end
     wait()
    end
    
    p:Remove()
wait()
end
NilLimbs()
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -20) * CFrame.Angles(0, 3.14, 0)
wait()
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -15) * CFrame.Angles(0, 3.14, 0)
wait()
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -10) * CFrame.Angles(0, 3.14, 0)
wait()
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -5) * CFrame.Angles(0, 3.14, 0)
wait()
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -2) * CFrame.Angles(0, 3.14, 0)
wait()
for i = 1, 10 do
zTorso.CFrame = pcframe
zHumanoid.Health = zHumanoid.Health - 1
RHip.C0 = RHipC0 * CFrame.Angles(0, 0, 1.5)
LHip.C0 = LHipC0 * CFrame.Angles(0, 0, 1.5)
wait()
zTorso.CFrame = pcframe
RHip.C0 = RHipC0 * CFrame.Angles(0, 0, -1.5)
LHip.C0 = LHipC0 * CFrame.Angles(0, 0, -1.5)
wait()
end
NilLimbs()
torso.Anchored = false
RHip.C0 = RHipC0 * CFrame.new(0, 1, 0) * CFrame.Angles(-1.57, 0, 0)
LHip.C0 = LHipC0 * CFrame.new(0, 1, 0) * CFrame.Angles(-1.57, 0, 0)
torso.CFrame = torso.CFrame * CFrame.new(0, 0.1, 0) * CFrame.Angles(3.14, 0, 0)
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("Really black")
Ball2.CFrame = torso.CFrame
Ball2.Transparency = 0
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = torso
b2Weld.Part0 = torso
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(0, 0, 0)
b2Weld.Name = "TorsoWeld2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "FileMesh"
Ball2Mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 3, 1.5)
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 0, 3.14)
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, 0, -3.14)
    Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
    Gyro.cframe = torso.CFrame
      for i = 1, 50 do
Ball2Mesh.Scale = Ball2Mesh.Scale + Vector3.new(0.5, 0, 0.5)
      torso.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 4.5, 0)
      Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.7, 0)
       zHumanoid.Health = zHumanoid.Health - 0.25
      wait()
     end
Ball2:Remove()
torso.Anchored = true
NilLimbs()
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 0, 3.14)
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, 0, -3.14)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 5, 0)
wait()
torso.CFrame = zTorso.CFrame * CFrame.new(0, 10, 0)
wait()
torso.CFrame = zTorso.CFrame * CFrame.new(0, 15, 0) * CFrame.Angles(3.14, 0, 0)
torso.Anchored = true
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("Really black")
Ball2.CFrame = torso.CFrame
Ball2.Transparency = 0
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = torso
b2Weld.Part0 = torso
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(0, 0, 0)
b2Weld.Name = "TorsoWeld2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "Sphere"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
for i = 1, 10 do
zTorso.CFrame = pcframe
Ball2.CFrame = Ball2.CFrame * CFrame.new(0, 0.5*i, 0)
Ball2Mesh.Scale = Ball2Mesh.Scale + Vector3.new(1.5, 1.5, 1.5)
wait()
end
   xp = Instance.new("Explosion")
   xp.Parent = game.Workspace
   xp.BlastPressure = 0
   xp.Position = Ball2.Position
   wait(1)
   zTorso.Anchored = false
   zTorso.Velocity = zTorso.CFrame.lookVector * -250 + Vector3.new(0, 75, 0)
   zHumanoid.Health = zHumanoid.Health - 45
Model = Instance.new("Model")
game.Debris:AddItem(Model, 2)
Model.Parent = zTorso.Parent
p = Instance.new("Part")
p.Parent = Model
p.BrickColor = BrickColor.new("Bright red")
p.CFrame = zTorso.Parent.Head.CFrame * CFrame.new(0, 5, 0) 
p.CanCollide = false
y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.Parent = p
y.velocity = torso.CFrame.lookVector*0 + Vector3.new(0, 10, 0)
m = Instance.new("SpecialMesh")
m.MeshType = "Brick"
m.Scale = Vector3.new(0.25, 0.1, 0.25)
m.Parent = p
gui = Instance.new("BillboardGui")
gui.Parent = p
gui.Adornee = p
gui.Size = UDim2.new(4,0,2,0)
gui.StudsOffset = Vector3.new(0,4,0)
texta=Instance.new("TextBox")
texta.Size = UDim2.new(1,0,1,0)
texta.BackgroundTransparency = 1
texta.Text = ("~75~")
texta.Parent = gui
   torso.Anchored = false
l:Remove()
x:Remove()
Gyro:Remove()
Ball2:Remove()
d:Remove()
if char:findFirstChild("Immortal") ~= nil then
char.Immortal.Name = "Humanoid"
end
hum.PlatformStand = false
Busy = false
NilLimbs()
end
end
end
end
end
end
end)
function onKeyDown(press)
press = press:lower()
  if press == "b" and Busy == false and Energy > 5 and OnFire == false and Trans == false then
     Busy = true
     OnFire = true
    if torso:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = torso
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if head:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = head
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if rightarm:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = rightarm
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if leftarm:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = leftarm
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if leftleg:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = leftleg
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    if rightleg:findFirstChild("Darkness") == nil then
f = Instance.new("Fire")
f.Parent = rightleg
f.Name = "Darkness"
f.Heat = 5
f.Size = 5
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
end
    hum.WalkSpeed = 100
   end
 end
function onKeyUp(release)
 release:lower()
  if release == "b" and Trans == false then
     Busy = false
     OnFire = false
    if torso:findFirstChild("Darkness") ~= nil then
     torso.Darkness:Remove()
     end
    if head:findFirstChild("Darkness") ~= nil then
     head.Darkness:Remove()
     end
    if rightarm:findFirstChild("Darkness") ~= nil then
     rightarm.Darkness:Remove()
     end
    if leftarm:findFirstChild("Darkness") ~= nil then
     leftarm.Darkness:Remove()
     end
    if leftleg:findFirstChild("Darkness") ~= nil then
     leftleg.Darkness:Remove()
     end
    if rightleg:findFirstChild("Darkness") ~= nil then
     rightleg.Darkness:Remove()
     end
    hum.WalkSpeed = 16
  end
end
mouse.KeyDown:connect(onKeyDown)
mouse.KeyUp:connect(onKeyUp)
end
function deselect(mouse)
for i = 1, 10 do
neck.C0 = neckC0 * CFrame.Angles(0+(0.037*i), 0, 0-(0.037*i))
LShoulder.C0 = LShoulderC0 * CFrame.new(0-(0.05*i), 0, 0-(0.1*i)) * CFrame.Angles(0, (0-(i*0.1)), (0-(i*0.05)))
wait()
end
if char:findFirstChild("SHold1") ~= nil then
char.SHold1:Remove()
end
wait(0.25)
PutAway()
wait(0.25)
NilLimbs()
end
if script.Parent.className ~= "HopperBin" then
    h = Instance.new("HopperBin")
    h.Name = "Mirisanaji"
    script.Parent = h
    h.Parent = me.Backpack
end
bin = script.Parent
bin.Selected:connect(select)
bin.Deselected:connect(deselect)
while true do
if char:findFirstChild("Humanoid") ~= nil then
E.Size = UDim2.new(me.Character.Humanoid.Health * 0.01, 0, 0.1, 0)
end
F.Size = UDim2.new(Energy * 0.01, 0, 0.1, 0)
if char:findFirstChild("Humanoid") ~= nil then
G.Text = "Health:"..me.Character.Humanoid.Health..""
end
H.Text = "Energy:"..Energy..""
if Energy < 100 and OnFire == false and Busy == false then
Energy = Energy + 0.1
end
if Energy > 100 then
Energy = 100
end
if OnFire == true and Energy > 0.5 then
Energy = Energy - 0.5
end
if OnFire == true and Energy <= 0.5 then
     Busy = false
     OnFire = false
    if torso:findFirstChild("Darkness") ~= nil then
     torso.Darkness:Remove()
     end
    if head:findFirstChild("Darkness") ~= nil then
     head.Darkness:Remove()
     end
    if rightarm:findFirstChild("Darkness") ~= nil then
     rightarm.Darkness:Remove()
     end
    if leftarm:findFirstChild("Darkness") ~= nil then
     leftarm.Darkness:Remove()
     end
    if leftleg:findFirstChild("Darkness") ~= nil then
     leftleg.Darkness:Remove()
     end
    if rightleg:findFirstChild("Darkness") ~= nil then
     rightleg.Darkness:Remove()
     end
    hum.WalkSpeed = 16
end
---------------------------------------------------------------------------------------------------------
wait()
end
