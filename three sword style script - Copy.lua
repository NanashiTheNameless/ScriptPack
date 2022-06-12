--------------------------------------------------Diable JAmble V 0.5------------------------
wait();
local ta1 = 5;
Plrs = game:GetService("Players")

me = Plrs.luxulux
char = me.Character
Modelname = "TriBladeStyle"
local HIT = false
local DMG = 20
local AIM = false
Busy = false
GotHit = false
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
Energy = Energy + 20
HIT = true
wait(0.35)
HIT = false
end
end

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
b1Weld.C0 = CFrame.new(1, -1.5, 0.5) * CFrame.Angles(0.2, 0, 1.57)
Sword1Mesh = Instance.new("SpecialMesh")
Sword1Mesh.MeshType = "FileMesh"
Sword1Mesh.Parent = Sword1
Sword1Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword1Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)


local Sword2 = Instance.new("Part")
Sword2.Parent = char
Sword2.Name = "SSword2"
Sword2.CanCollide = false
Sword2.Locked = true
Sword2.TopSurface = "Smooth"
Sword2.BottomSurface = "Smooth"
Sword2.formFactor = "Symmetric"
Sword2.BrickColor = BrickColor.new("Really black")
Sword2.CFrame = char.Torso.CFrame
Sword2.Transparency = 0
Sword2.Reflectance = 0.1
Sword2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Sword2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, -1.5, 0.5) * CFrame.Angles(0.35, 0, 1.57)
Sword2Mesh = Instance.new("SpecialMesh")
Sword2Mesh.MeshType = "FileMesh"
Sword2Mesh.Parent = Sword2
Sword2Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword2Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword2Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)


local Sword3 = Instance.new("Part")
Sword3.Parent = char
Sword3.Name = "SSword3"
Sword3.CanCollide = false
Sword3.Locked = true
Sword3.TopSurface = "Smooth"
Sword3.BottomSurface = "Smooth"
Sword3.formFactor = "Symmetric"
Sword3.BrickColor = BrickColor.new("Really black")
Sword3.CFrame = char.Torso.CFrame
Sword3.Transparency = 0
Sword3.Reflectance = 0.1
Sword3.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Sword3
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, -1.5, 0.5) * CFrame.Angles(0.5, 0, 1.57)
Sword3Mesh = Instance.new("SpecialMesh")
Sword3Mesh.MeshType = "FileMesh"
Sword3Mesh.Parent = Sword3
Sword3Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword3Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword3Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)

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
Sword1.Transparency = 1
Sword1.Reflectance = 0.1
Sword1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Sword1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, -1.5, 0.5) * CFrame.Angles(0.2, 0, 1.57)
Sword1Mesh = Instance.new("SpecialMesh")
Sword1Mesh.MeshType = "FileMesh"
Sword1Mesh.Parent = Sword1
Sword1Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword1Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)


local Sword2 = Instance.new("Part")
Sword2.Parent = char
Sword2.Name = "SSword2"
Sword2.CanCollide = false
Sword2.Locked = true
Sword2.TopSurface = "Smooth"
Sword2.BottomSurface = "Smooth"
Sword2.formFactor = "Symmetric"
Sword2.BrickColor = BrickColor.new("Really black")
Sword2.CFrame = char.Torso.CFrame
Sword2.Transparency = 1
Sword2.Reflectance = 0.1
Sword2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Sword2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, -1.5, 0.5) * CFrame.Angles(0.35, 0, 1.57)
Sword2Mesh = Instance.new("SpecialMesh")
Sword2Mesh.MeshType = "FileMesh"
Sword2Mesh.Parent = Sword2
Sword2Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword2Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword2Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)


local Sword3 = Instance.new("Part")
Sword3.Parent = char
Sword3.Name = "SSword3"
Sword3.CanCollide = false
Sword3.Locked = true
Sword3.TopSurface = "Smooth"
Sword3.BottomSurface = "Smooth"
Sword3.formFactor = "Symmetric"
Sword3.BrickColor = BrickColor.new("Really black")
Sword3.CFrame = char.Torso.CFrame
Sword3.Transparency = 1
Sword3.Reflectance = 0.1
Sword3.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Sword3
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, -1.5, 0.5) * CFrame.Angles(0.5, 0, 1.57)
Sword3Mesh = Instance.new("SpecialMesh")
Sword3Mesh.MeshType = "FileMesh"
Sword3Mesh.Parent = Sword3
Sword3Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword3Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword3Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)

end

function DrawSwords()
Model1 = Instance.new("Model")
Model1.Parent = char
Model1.Name = "SHold1"
Model2 = Instance.new("Model")
Model2.Parent = char
Model2.Name = "SHold2"
Model3 = Instance.new("Model")
Model3.Parent = char
Model3.Name = "SHold3"
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
Sword1.Transparency = 1
Sword1.Reflectance = 0.1
Sword1.Size = Vector3.new(1, 1, 8)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Sword1
b1Weld.Name = "RightSwordWeld"
b1Weld.C0 = CFrame.new(0, -1, -1.5) * CFrame.Angles(0, 3.14, 1.57)
Sword1Mesh = Instance.new("SpecialMesh")
Sword1Mesh.MeshType = "FileMesh"
Sword1Mesh.Parent = Sword1
Sword1Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword1Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)


local Sword2 = Instance.new("Part")
Sword2.Parent = Model2
Sword2.Name = "DSword2"
Sword2.CanCollide = false
Sword2.Locked = true
Sword2.TopSurface = "Smooth"
Sword2.BottomSurface = "Smooth"
Sword2.formFactor = "Symmetric"
Sword2.BrickColor = BrickColor.new("Really black")
Sword2.CFrame = char.Torso.CFrame
Sword2.Transparency = 1
Sword2.Reflectance = 0.1
Sword2.Size = Vector3.new(1, 1, 8)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Left Arm"]
b1Weld.Part0 = char["Left Arm"]
b1Weld.Part1 = Sword2
b1Weld.Name = "LeftSwordWeld"
b1Weld.C0 = CFrame.new(0, -1, -1.5) * CFrame.Angles(0, 3.14, 1.57)
Sword2Mesh = Instance.new("SpecialMesh")
Sword2Mesh.MeshType = "FileMesh"
Sword2Mesh.Parent = Sword2
Sword2Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword2Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword2Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)


local Sword3 = Instance.new("Part")
Sword3.Parent = Model3
Sword3.Name = "DSword3"
Sword3.CanCollide = false
Sword3.Locked = true
Sword3.TopSurface = "Smooth"
Sword3.BottomSurface = "Smooth"
Sword3.formFactor = "Symmetric"
Sword3.BrickColor = BrickColor.new("Really black")
Sword3.CFrame = char.Torso.CFrame
Sword3.Transparency = 1
Sword3.Reflectance = 0.1
Sword3.Size = Vector3.new(1, 1, 8)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Head
b1Weld.Part0 = char.Head
b1Weld.Part1 = Sword3
b1Weld.Name = "HeadSwordWeld"
b1Weld.C0 = CFrame.new(-1.5, -0.25, -0.5) * CFrame.Angles(0, -1.57, 0)
Sword3Mesh = Instance.new("SpecialMesh")
Sword3Mesh.MeshType = "FileMesh"
Sword3Mesh.Parent = Sword3
Sword3Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
Sword3Mesh.TextureId = "http://www.roblox.com/asset/?id=11442524"
Sword3Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
end






function select(mouse)
DrawSwords()
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -0.75)
wait(0.5)
char.SSword1.Transparency = 1
char.SHold2.DSword2.Transparency = 0
wait(0.5)
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -2)
wait(0.5)
char.SHold2.DSword2.Transparency = 1
char.SHold3.DSword3.Transparency = 0
wait(0.5)
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -0.75)
char.SSword2.Transparency = 1
wait(0.5)
char.SHold2.DSword2.Transparency = 0
wait(0.5)
NilLimbs()
wait(0.25)
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 0, -0.75)
char.SSword3.Transparency = 1
wait(0.5)
char.SHold1.DSword1.Transparency = 0
wait(0.5)
NilLimbs()
if char:findFirstChild("SSword1") ~= nil then
char.SSword1:Remove()
end
if char:findFirstChild("SSword2") ~= nil then
char.SSword2:Remove()
end
if char:findFirstChild("SSword3") ~= nil then
char.SSword3:Remove()
end
    mouse.Button1Down:connect(function()
        if not Busy then
            AIM = true
            Busy = true
            omg = math.random(1, 2)
            if omg == 1 then
             LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, 1, -3.14)
             wait(0.25)
char.SHold2.DSword2.Touched:connect(function(hit)
Slash(hit)
end)
             LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -0.75)
             wait(0.25)
            end
            if omg == 2 then
             RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, -1, 3.14)
             wait(0.25)
char.SHold1.DSword1.Touched:connect(function(hit)
Slash(hit)
end)
             RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 1, 0.75)
             wait(0.25)
            end
            NilLimbs()
            AIM = false
            Busy = false
        end
    end)
    mouse.Button2Down:connect(function()
        if not Busy then
            Busy = true
       save = hum.Health
      ws = hum.WalkSpeed
        wait()
    RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 1, 1.5)
    RHip.C0 = RHipC0 * CFrame.Angles(-0.5, 0, 0)
    LHip.C0 = LHipC0 * CFrame.Angles(-0.5, 0, 0)
    LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -1.5)
       wait(0.1)
       torso.Anchored = true

    for i = 1, 30 do
		for i, v in pairs(workspace:GetChildren()) do
			if v.Name ~= char.Name then
				ztorso = v:findFirstChild("Torso")
				zHumanoid = v:findFirstChild("Humanoid")
				if ztorso ~= nil and zHumanoid ~= nil then
					if (torso.Position-ztorso.Position).magnitude <= 12 then
                if hum.Health < save and hum.Health > 0 then
                   zHumanoid.Health = zHumanoid.Health - 12
                   for i = 1, 5 do
                  hum.Health = save
                          wait()
                       end
                      end
                     end
                    end
                   end
                  end
                  wait()
                 end
              NilLimbs()
       torso.Anchored = false
            wait(2)
            Busy = false
        end
        end)
mouse.KeyDown:connect(function(key)
key = key:lower()
if not Busy then
if key == "r" and Busy == false and Energy > 40 then
Energy = Energy - 40
Busy = true
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = torso
   Gyro.D = 50
   Gyro.maxTorque = Vector3.new(0, 0, 0)
   Gyro.cframe = torso.CFrame
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
   torso.Velocity = Vector3.new(0, 100, 0)
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("White")
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
hum.PlatformStand = true
   Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
      for i = 1, 50 do
Ball2Mesh.Scale = Ball2Mesh.Scale + Vector3.new(1, 1.5, 1)
      torso.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 10, 0)
      Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1.4, 0)
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= char.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 25+i then
        if i < 50 then
        h.Health = h.Health - 2
          t.Velocity = torso.CFrame.lookVector * 500 + Vector3.new(0, 0, 0)
        end
        if i >= 50 then
         if h ~= nil and t ~= nil then
          t.Velocity = torso.CFrame.lookVector * 500 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
hum.PlatformStand = false
   Ball2:Remove()
    wait(0.5)
   Gyro.maxTorque = Vector3.new(0, 0, 0)
    Gyro:Remove()
    Velocity:Remove()
wait(2)
Busy = false
end
if key == "t" and Busy == false and Energy > 20 then
Energy = Energy - 20
Busy = true
	local pos = mouse.Hit.p
	pos1 = torso.Position
             neck.C0 = neck.C0 *CFrame.Angles(0.75, 0, 0)
             RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 1, 0.75)
             LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -0.75)
	torso.CFrame = CFrame.new(torso.Position, pos)
wait(1.5)
for i = 1, 25 do
	torso.CFrame = CFrame.new(torso.Position, pos)
	torso.CFrame = torso.CFrame * CFrame.new(0, 0, -4)
wait(0.01)
end
wait(0.25)
	torso.CFrame = CFrame.new(torso.Position, pos)
    SavedTorsoCFrame = torso.CFrame
    for i = 1, 50 do
     ShockWave1 = Instance.new("Part")
     ShockWave1.Parent = Workspace
     ShockWave1.Size = Vector3.new(math.random(10, 10), math.random(10, 10), math.random(10, 10))
     ShockWave1.formFactor = "Symmetric"
     ShockWave1.Anchored = true
     ShockWave1.CanCollide = false
     ShockWave1.Transparency = 1
     ShockWave1.TopSurface = "Smooth"
     ShockWave1.BottomSurface = "Smooth"
     ShockWave1.BrickColor = BrickColor.new("Bright yellow")
     ShockWave1.Name = "ShockWavePart"
		game.Debris:AddItem(ShockWave1, 0.5)
     ShockWave1.CFrame = SavedTorsoCFrame * CFrame.new(0, 3, (i*10)) * CFrame.Angles(0, 0, 0)
     for u, c in pairs(workspace:GetChildren()) do
      if c.Name ~= char.Name then
       h = c:findFirstChild("Humanoid")
       t = c:findFirstChild("Torso")
       if h ~= nil and t ~= nil then
        if (ShockWave1.Position-t.Position).magnitude <= 15 then
             t.Velocity = t.CFrame.lookVector * -50 + Vector3.new(0, 50, 0)
         t.CFrame = t.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
         h:TakeDamage(20)
        end
       end
      end
     end
    end 
wait(2)
NilLimbs()
Busy = false
end
if key == "b" and Busy == false and Energy > 75 then
Energy = Energy - 75
Busy = true
	local pos = mouse.Hit.p
	pos1 = torso.Position
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74897796" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
	torso.CFrame = CFrame.new(torso.Position, pos)
        torso.Anchored = true
        hum.PlatformStand = true
wait(0.15)
p = Instance.new("Part")
p.Parent = game.Workspace
p.CanCollide = false
p.Name = "StrongFireMagic"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new("Camo")
p.Transparency = 0
p.Reflectance = 0.25
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Shape = "Ball"
p.CFrame = torso.CFrame * CFrame.new(0, 0, -15)
Owner = Instance.new("StringValue")
Owner.Parent = p
Owner.Name = "Owner"
Owner.Value = char.Name
d = Instance.new("BodyGyro")
d.Parent = p
d.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
d.cframe = CFrame.fromEulerAnglesXYZ(0, 0, 0)
b = Instance.new("BodyVelocity")
b.Parent = p
b.maxForce = Vector3.new(math.huge, math.huge, math.huge)
b.velocity = torso.CFrame.lookVector * 120
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(15, 0.5, 15)
m.Parent = p
for i = 1, 30 do
     for u, c in pairs(workspace:GetChildren()) do
      if c.Name ~= char.Name then
       h = c:findFirstChild("Humanoid")
       t = c:findFirstChild("Torso")
       if h ~= nil and t ~= nil then
        if (p.Position-t.Position).magnitude <= 15 then
             t.Velocity = t.CFrame.lookVector * -50 + Vector3.new(0, 50, 0)
         t.CFrame = t.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
         h:TakeDamage(10)
        end
       end
      end
     end
wait()
end
p:Remove()
wait()
slash:Remove()
	torso.CFrame = CFrame.new(torso.Position, pos)
        torso.Anchored = false
        hum.PlatformStand = false
NilLimbs()
Busy = false
end
end
end)
end

function deselect(mouse)
PutAway()
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -0.75)
wait(0.25)
char.SHold2.DSword2.Transparency = 1
wait(0.25)
char.SSword3.Transparency = 0
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -2)
wait(0.25)
char.SHold2.DSword2.Transparency = 0
char.SHold3.DSword3.Transparency = 1
wait(0.25)
LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -0.75)
wait(0.25)
char.SHold2.DSword2.Transparency = 1
char.SSword2.Transparency = 0
wait(0.25)
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 0, -0.75)
wait(0.25)
char.SHold1.DSword1.Transparency = 1
char.SSword1.Transparency = 0
wait(0.25)
if char:findFirstChild("SHold1") ~= nil then
char.SHold1:Remove()
end
if char:findFirstChild("SHold2") ~= nil then
char.SHold2:Remove()
end
if char:findFirstChild("SHold3") ~= nil then
char.SHold3:Remove()
end
NilLimbs()
end
if script.Parent.className ~= "HopperBin" then
    h = Instance.new("HopperBin",me.Backpack)
    h.Name = "Three Sword Style"
    script.Parent = h
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
if Energy < 100 and Busy == false then
Energy = Energy + 0.5
end
if Energy > 100 then
Energy = 100
end

---------------------------------------------------------------------------------------------------------
wait()
end