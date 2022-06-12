wait();
local ta1 = 5;
 
Player = game:GetService("Players")
me = Player.ace28545
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
Shetta = Instance.new("Model")
Shetta.Parent = char
Shetta.Name = "Shetta"
---------------------------------------Handle---------------------------------------
local Gem1 = Instance.new("Part")
Gem1.Parent = Shetta
Gem1.Name = "Gem1"
Gem1.CanCollide = false
Gem1.Locked = true
Gem1.TopSurface = "Smooth"
Gem1.BottomSurface = "Smooth"
Gem1.formFactor = "Symmetric"
Gem1.BrickColor = BrickColor.new("Cyan")
Gem1.CFrame = char.Torso.CFrame
Gem1.Transparency = 0.25
Gem1.Reflectance = 0.25
Gem1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 1.75, 0.75) * CFrame.Angles(0, 0, 0)
Gem1Mesh = Instance.new("SpecialMesh")
Gem1Mesh.MeshType = "Sphere"
Gem1Mesh.Parent = Gem1
Gem1Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
 
local Handle = Instance.new("Part")
Handle.Parent = Shetta
Handle.Name = "Handle"
Handle.CanCollide = false
Handle.Locked = true
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.formFactor = "Symmetric"
Handle.BrickColor = BrickColor.new("White")
Handle.CFrame = char.Torso.CFrame
Handle.Transparency = 0
Handle.Reflectance = 0.1
Handle.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Handle
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 1, 0.75) * CFrame.Angles(0, 0, 0)
HandleMesh = Instance.new("CylinderMesh")
HandleMesh.Parent = Handle
HandleMesh.Scale = Vector3.new(0.25, 1, 0.25)
 
 
local Gold1 = Instance.new("Part")
Gold1.Parent = Shetta
Gold1.Name = "Gold1"
Gold1.CanCollide = false
Gold1.Locked = true
Gold1.TopSurface = "Smooth"
Gold1.BottomSurface = "Smooth"
Gold1.formFactor = "Symmetric"
Gold1.BrickColor = BrickColor.new("Olive")
Gold1.CFrame = char.Torso.CFrame
Gold1.Transparency = 0
Gold1.Reflectance = 0.25
Gold1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gold1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 1.5, 0.75) * CFrame.Angles(0, 0, 0)
Gold1Mesh = Instance.new("CylinderMesh")
Gold1Mesh.Parent = Gold1
Gold1Mesh.Scale = Vector3.new(0.35, 0.15, 0.35)
 
local Gold2 = Instance.new("Part")
Gold2.Parent = Shetta
Gold2.Name = "Gold2"
Gold2.CanCollide = false
Gold2.Locked = true
Gold2.TopSurface = "Smooth"
Gold2.BottomSurface = "Smooth"
Gold2.formFactor = "Symmetric"
Gold2.BrickColor = BrickColor.new("Olive")
Gold2.CFrame = char.Torso.CFrame
Gold2.Transparency = 0
Gold2.Reflectance = 0.25
Gold2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gold2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0.575, 0.75) * CFrame.Angles(0, 0, 0)
Gold2Mesh = Instance.new("CylinderMesh")
Gold2Mesh.Parent = Gold2
Gold2Mesh.Scale = Vector3.new(0.35, 0.15, 0.35)
 
local Cross1 = Instance.new("Part")
Cross1.Parent = Shetta
Cross1.Name = "Cross1"
Cross1.CanCollide = false
Cross1.Locked = true
Cross1.TopSurface = "Smooth"
Cross1.BottomSurface = "Smooth"
Cross1.formFactor = "Symmetric"
Cross1.BrickColor = BrickColor.new("Olive")
Cross1.CFrame = char.Torso.CFrame
Cross1.Transparency = 0
Cross1.Reflectance = 0.25
Cross1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Cross1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Cross1Mesh = Instance.new("SpecialMesh")
Cross1Mesh.MeshType = "Brick"
Cross1Mesh.Parent = Cross1
Cross1Mesh.Scale = Vector3.new(2.5, 0.35, 0.35)
 
local Cross2 = Instance.new("Part")
Cross2.Parent = Shetta
Cross2.Name = "Cross2"
Cross2.CanCollide = false
Cross2.Locked = true
Cross2.TopSurface = "Smooth"
Cross2.BottomSurface = "Smooth"
Cross2.formFactor = "Symmetric"
Cross2.BrickColor = BrickColor.new("Olive")
Cross2.CFrame = char.Torso.CFrame
Cross2.Transparency = 0
Cross2.Reflectance = 0.25
Cross2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Cross2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0, 0.75) * CFrame.Angles(0, 0, 0)
Cross2Mesh = Instance.new("SpecialMesh")
Cross2Mesh.MeshType = "Brick"
Cross2Mesh.Parent = Cross2
Cross2Mesh.Scale = Vector3.new(0.25, 1, 0.35)
 
local Blade = Instance.new("Part")
Blade.Parent = Shetta
Blade.Name = "Blade"
Blade.CanCollide = false
Blade.Locked = true
Blade.TopSurface = "Smooth"
Blade.BottomSurface = "Smooth"
Blade.formFactor = "Symmetric"
Blade.BrickColor = BrickColor.new("Really black")
Blade.CFrame = char.Torso.CFrame
Blade.Transparency = 0
Blade.Reflectance = 0
Blade.Size = Vector3.new(1, 9, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Blade
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1.5, 0.75) * CFrame.Angles(3.14, 1.57, 0)
BladeMesh = Instance.new("SpecialMesh")
BladeMesh.MeshType = "FileMesh"
BladeMesh.MeshId = "http://www.roblox.com/asset/?id=96630166"
BladeMesh.Parent = Blade
BladeMesh.Scale = Vector3.new(1, 0.75, 0.35)
 
local Gem2 = Instance.new("Part")
Gem2.Parent = Shetta
Gem2.Name = "Gem2"
Gem2.CanCollide = false
Gem2.Locked = true
Gem2.TopSurface = "Smooth"
Gem2.BottomSurface = "Smooth"
Gem2.formFactor = "Symmetric"
Gem2.BrickColor = BrickColor.new("Navy blue")
Gem2.CFrame = char.Torso.CFrame
Gem2.Transparency = 0.25
Gem2.Reflectance = 0.25
Gem2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem2Mesh = Instance.new("SpecialMesh")
Gem2Mesh.MeshType = "Sphere"
Gem2Mesh.Parent = Gem2
Gem2Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem3 = Instance.new("Part")
Gem3.Parent = Shetta
Gem3.Name = "Gem3"
Gem3.CanCollide = false
Gem3.Locked = true
Gem3.TopSurface = "Smooth"
Gem3.BottomSurface = "Smooth"
Gem3.formFactor = "Symmetric"
Gem3.BrickColor = BrickColor.new("Navy blue")
Gem3.CFrame = char.Torso.CFrame
Gem3.Transparency = 0.25
Gem3.Reflectance = 0.25
Gem3.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem3
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0.15, 0.75) * CFrame.Angles(0, 0, 0)
Gem3Mesh = Instance.new("SpecialMesh")
Gem3Mesh.MeshType = "Sphere"
Gem3Mesh.Parent = Gem3
Gem3Mesh.Scale = Vector3.new(0.2, 0.2, 0.4)
 
local Gem4 = Instance.new("Part")
Gem4.Parent = Shetta
Gem4.Name = "Gem4"
Gem4.CanCollide = false
Gem4.Locked = true
Gem4.TopSurface = "Smooth"
Gem4.BottomSurface = "Smooth"
Gem4.formFactor = "Symmetric"
Gem4.BrickColor = BrickColor.new("Navy blue")
Gem4.CFrame = char.Torso.CFrame
Gem4.Transparency = 0.25
Gem4.Reflectance = 0.25
Gem4.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem4
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem4Mesh = Instance.new("SpecialMesh")
Gem4Mesh.MeshType = "Sphere"
Gem4Mesh.Parent = Gem4
Gem4Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem5 = Instance.new("Part")
Gem5.Parent = Shetta
Gem5.Name = "Gem5"
Gem5.CanCollide = false
Gem5.Locked = true
Gem5.TopSurface = "Smooth"
Gem5.BottomSurface = "Smooth"
Gem5.formFactor = "Symmetric"
Gem5.BrickColor = BrickColor.new("Navy blue")
Gem5.CFrame = char.Torso.CFrame
Gem5.Transparency = 0.25
Gem5.Reflectance = 0.25
Gem5.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem5
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(-1, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem5Mesh = Instance.new("SpecialMesh")
Gem5Mesh.MeshType = "Sphere"
Gem5Mesh.Parent = Gem5
Gem5Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem6 = Instance.new("Part")
Gem6.Parent = Shetta
Gem6.Name = "Gem6"
Gem6.CanCollide = false
Gem6.Locked = true
Gem6.TopSurface = "Smooth"
Gem6.BottomSurface = "Smooth"
Gem6.formFactor = "Symmetric"
Gem6.BrickColor = BrickColor.new("Lime green")
Gem6.CFrame = char.Torso.CFrame
Gem6.Transparency = 0.25
Gem6.Reflectance = 0.25
Gem6.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem6
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(-0.75, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem6Mesh = Instance.new("SpecialMesh")
Gem6Mesh.MeshType = "Sphere"
Gem6Mesh.Parent = Gem6
Gem6Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem7 = Instance.new("Part")
Gem7.Parent = Shetta
Gem7.Name = "Gem7"
Gem7.CanCollide = false
Gem7.Locked = true
Gem7.TopSurface = "Smooth"
Gem7.BottomSurface = "Smooth"
Gem7.formFactor = "Symmetric"
Gem7.BrickColor = BrickColor.new("Lime green")
Gem7.CFrame = char.Torso.CFrame
Gem7.Transparency = 0.25
Gem7.Reflectance = 0.25
Gem7.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem7
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0.75, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem7Mesh = Instance.new("SpecialMesh")
Gem7Mesh.MeshType = "Sphere"
Gem7Mesh.Parent = Gem7
Gem7Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem8 = Instance.new("Part")
Gem8.Parent = Shetta
Gem8.Name = "Gem8"
Gem8.CanCollide = false
Gem8.Locked = true
Gem8.TopSurface = "Smooth"
Gem8.BottomSurface = "Smooth"
Gem8.formFactor = "Symmetric"
Gem8.BrickColor = BrickColor.new("Navy blue")
Gem8.CFrame = char.Torso.CFrame
Gem8.Transparency = 0.25
Gem8.Reflectance = 0.25
Gem8.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem8
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0.25, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem8Mesh = Instance.new("SpecialMesh")
Gem8Mesh.MeshType = "Sphere"
Gem8Mesh.Parent = Gem8
Gem8Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem9 = Instance.new("Part")
Gem9.Parent = Shetta
Gem9.Name = "Gem9"
Gem9.CanCollide = false
Gem9.Locked = true
Gem9.TopSurface = "Smooth"
Gem9.BottomSurface = "Smooth"
Gem9.formFactor = "Symmetric"
Gem9.BrickColor = BrickColor.new("Navy blue")
Gem9.CFrame = char.Torso.CFrame
Gem9.Transparency = 0.25
Gem9.Reflectance = 0.25
Gem9.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem9
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(-0.25, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem9Mesh = Instance.new("SpecialMesh")
Gem9Mesh.MeshType = "Sphere"
Gem9Mesh.Parent = Gem9
Gem9Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
----------------------------------------------------------------------------------------------------
-------------------------Sword Above is Put Away----------------
function PutAway()
Shetta = Instance.new("Model")
Shetta.Parent = char
Shetta.Name = "Shetta"
---------------------------------------Handle---------------------------------------
local Gem1 = Instance.new("Part")
Gem1.Parent = Shetta
Gem1.Name = "Gem1"
Gem1.CanCollide = false
Gem1.Locked = true
Gem1.TopSurface = "Smooth"
Gem1.BottomSurface = "Smooth"
Gem1.formFactor = "Symmetric"
Gem1.BrickColor = BrickColor.new("Cyan")
Gem1.CFrame = char.Torso.CFrame
Gem1.Transparency = 0.25
Gem1.Reflectance = 0.25
Gem1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 1.75, 0.75) * CFrame.Angles(0, 0, 0)
Gem1Mesh = Instance.new("SpecialMesh")
Gem1Mesh.MeshType = "Sphere"
Gem1Mesh.Parent = Gem1
Gem1Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
 
local Handle = Instance.new("Part")
Handle.Parent = Shetta
Handle.Name = "Handle"
Handle.CanCollide = false
Handle.Locked = true
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.formFactor = "Symmetric"
Handle.BrickColor = BrickColor.new("White")
Handle.CFrame = char.Torso.CFrame
Handle.Transparency = 0
Handle.Reflectance = 0.1
Handle.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Handle
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 1, 0.75) * CFrame.Angles(0, 0, 0)
HandleMesh = Instance.new("CylinderMesh")
HandleMesh.Parent = Handle
HandleMesh.Scale = Vector3.new(0.25, 1, 0.25)
 
 
local Gold1 = Instance.new("Part")
Gold1.Parent = Shetta
Gold1.Name = "Gold1"
Gold1.CanCollide = false
Gold1.Locked = true
Gold1.TopSurface = "Smooth"
Gold1.BottomSurface = "Smooth"
Gold1.formFactor = "Symmetric"
Gold1.BrickColor = BrickColor.new("Olive")
Gold1.CFrame = char.Torso.CFrame
Gold1.Transparency = 0
Gold1.Reflectance = 0.25
Gold1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gold1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 1.5, 0.75) * CFrame.Angles(0, 0, 0)
Gold1Mesh = Instance.new("CylinderMesh")
Gold1Mesh.Parent = Gold1
Gold1Mesh.Scale = Vector3.new(0.35, 0.15, 0.35)
 
local Gold2 = Instance.new("Part")
Gold2.Parent = Shetta
Gold2.Name = "Gold2"
Gold2.CanCollide = false
Gold2.Locked = true
Gold2.TopSurface = "Smooth"
Gold2.BottomSurface = "Smooth"
Gold2.formFactor = "Symmetric"
Gold2.BrickColor = BrickColor.new("Olive")
Gold2.CFrame = char.Torso.CFrame
Gold2.Transparency = 0
Gold2.Reflectance = 0.25
Gold2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gold2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0.575, 0.75) * CFrame.Angles(0, 0, 0)
Gold2Mesh = Instance.new("CylinderMesh")
Gold2Mesh.Parent = Gold2
Gold2Mesh.Scale = Vector3.new(0.35, 0.15, 0.35)
 
local Cross1 = Instance.new("Part")
Cross1.Parent = Shetta
Cross1.Name = "Cross1"
Cross1.CanCollide = false
Cross1.Locked = true
Cross1.TopSurface = "Smooth"
Cross1.BottomSurface = "Smooth"
Cross1.formFactor = "Symmetric"
Cross1.BrickColor = BrickColor.new("Olive")
Cross1.CFrame = char.Torso.CFrame
Cross1.Transparency = 0
Cross1.Reflectance = 0.25
Cross1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Cross1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Cross1Mesh = Instance.new("SpecialMesh")
Cross1Mesh.MeshType = "Brick"
Cross1Mesh.Parent = Cross1
Cross1Mesh.Scale = Vector3.new(2.5, 0.35, 0.35)
 
local Cross2 = Instance.new("Part")
Cross2.Parent = Shetta
Cross2.Name = "Cross2"
Cross2.CanCollide = false
Cross2.Locked = true
Cross2.TopSurface = "Smooth"
Cross2.BottomSurface = "Smooth"
Cross2.formFactor = "Symmetric"
Cross2.BrickColor = BrickColor.new("Olive")
Cross2.CFrame = char.Torso.CFrame
Cross2.Transparency = 0
Cross2.Reflectance = 0.25
Cross2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Cross2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0, 0.75) * CFrame.Angles(0, 0, 0)
Cross2Mesh = Instance.new("SpecialMesh")
Cross2Mesh.MeshType = "Brick"
Cross2Mesh.Parent = Cross2
Cross2Mesh.Scale = Vector3.new(0.25, 1, 0.35)
 
local Blade = Instance.new("Part")
Blade.Parent = Shetta
Blade.Name = "Blade"
Blade.CanCollide = false
Blade.Locked = true
Blade.TopSurface = "Smooth"
Blade.BottomSurface = "Smooth"
Blade.formFactor = "Symmetric"
Blade.BrickColor = BrickColor.new("Really black")
Blade.CFrame = char.Torso.CFrame
Blade.Transparency = 0
Blade.Reflectance = 0
Blade.Size = Vector3.new(1, 9, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Blade
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1.5, 0.75) * CFrame.Angles(3.14, 1.57, 0)
BladeMesh = Instance.new("SpecialMesh")
BladeMesh.MeshType = "FileMesh"
BladeMesh.MeshId = "http://www.roblox.com/asset/?id=96630166"
BladeMesh.Parent = Blade
BladeMesh.Scale = Vector3.new(1, 0.75, 0.35)
 
local Gem2 = Instance.new("Part")
Gem2.Parent = Shetta
Gem2.Name = "Gem2"
Gem2.CanCollide = false
Gem2.Locked = true
Gem2.TopSurface = "Smooth"
Gem2.BottomSurface = "Smooth"
Gem2.formFactor = "Symmetric"
Gem2.BrickColor = BrickColor.new("Navy blue")
Gem2.CFrame = char.Torso.CFrame
Gem2.Transparency = 0.25
Gem2.Reflectance = 0.25
Gem2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem2Mesh = Instance.new("SpecialMesh")
Gem2Mesh.MeshType = "Sphere"
Gem2Mesh.Parent = Gem2
Gem2Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem3 = Instance.new("Part")
Gem3.Parent = Shetta
Gem3.Name = "Gem3"
Gem3.CanCollide = false
Gem3.Locked = true
Gem3.TopSurface = "Smooth"
Gem3.BottomSurface = "Smooth"
Gem3.formFactor = "Symmetric"
Gem3.BrickColor = BrickColor.new("Navy blue")
Gem3.CFrame = char.Torso.CFrame
Gem3.Transparency = 0.25
Gem3.Reflectance = 0.25
Gem3.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem3
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0.15, 0.75) * CFrame.Angles(0, 0, 0)
Gem3Mesh = Instance.new("SpecialMesh")
Gem3Mesh.MeshType = "Sphere"
Gem3Mesh.Parent = Gem3
Gem3Mesh.Scale = Vector3.new(0.2, 0.2, 0.4)
 
local Gem4 = Instance.new("Part")
Gem4.Parent = Shetta
Gem4.Name = "Gem4"
Gem4.CanCollide = false
Gem4.Locked = true
Gem4.TopSurface = "Smooth"
Gem4.BottomSurface = "Smooth"
Gem4.formFactor = "Symmetric"
Gem4.BrickColor = BrickColor.new("Navy blue")
Gem4.CFrame = char.Torso.CFrame
Gem4.Transparency = 0.25
Gem4.Reflectance = 0.25
Gem4.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem4
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(1, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem4Mesh = Instance.new("SpecialMesh")
Gem4Mesh.MeshType = "Sphere"
Gem4Mesh.Parent = Gem4
Gem4Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem5 = Instance.new("Part")
Gem5.Parent = Shetta
Gem5.Name = "Gem5"
Gem5.CanCollide = false
Gem5.Locked = true
Gem5.TopSurface = "Smooth"
Gem5.BottomSurface = "Smooth"
Gem5.formFactor = "Symmetric"
Gem5.BrickColor = BrickColor.new("Navy blue")
Gem5.CFrame = char.Torso.CFrame
Gem5.Transparency = 0.25
Gem5.Reflectance = 0.25
Gem5.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem5
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(-1, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem5Mesh = Instance.new("SpecialMesh")
Gem5Mesh.MeshType = "Sphere"
Gem5Mesh.Parent = Gem5
Gem5Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem6 = Instance.new("Part")
Gem6.Parent = Shetta
Gem6.Name = "Gem6"
Gem6.CanCollide = false
Gem6.Locked = true
Gem6.TopSurface = "Smooth"
Gem6.BottomSurface = "Smooth"
Gem6.formFactor = "Symmetric"
Gem6.BrickColor = BrickColor.new("Lime green")
Gem6.CFrame = char.Torso.CFrame
Gem6.Transparency = 0.25
Gem6.Reflectance = 0.25
Gem6.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem6
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(-0.75, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem6Mesh = Instance.new("SpecialMesh")
Gem6Mesh.MeshType = "Sphere"
Gem6Mesh.Parent = Gem6
Gem6Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem7 = Instance.new("Part")
Gem7.Parent = Shetta
Gem7.Name = "Gem7"
Gem7.CanCollide = false
Gem7.Locked = true
Gem7.TopSurface = "Smooth"
Gem7.BottomSurface = "Smooth"
Gem7.formFactor = "Symmetric"
Gem7.BrickColor = BrickColor.new("Lime green")
Gem7.CFrame = char.Torso.CFrame
Gem7.Transparency = 0.25
Gem7.Reflectance = 0.25
Gem7.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem7
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0.75, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem7Mesh = Instance.new("SpecialMesh")
Gem7Mesh.MeshType = "Sphere"
Gem7Mesh.Parent = Gem7
Gem7Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem8 = Instance.new("Part")
Gem8.Parent = Shetta
Gem8.Name = "Gem8"
Gem8.CanCollide = false
Gem8.Locked = true
Gem8.TopSurface = "Smooth"
Gem8.BottomSurface = "Smooth"
Gem8.formFactor = "Symmetric"
Gem8.BrickColor = BrickColor.new("Navy blue")
Gem8.CFrame = char.Torso.CFrame
Gem8.Transparency = 0.25
Gem8.Reflectance = 0.25
Gem8.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem8
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0.25, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem8Mesh = Instance.new("SpecialMesh")
Gem8Mesh.MeshType = "Sphere"
Gem8Mesh.Parent = Gem8
Gem8Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem9 = Instance.new("Part")
Gem9.Parent = Shetta
Gem9.Name = "Gem9"
Gem9.CanCollide = false
Gem9.Locked = true
Gem9.TopSurface = "Smooth"
Gem9.BottomSurface = "Smooth"
Gem9.formFactor = "Symmetric"
Gem9.BrickColor = BrickColor.new("Navy blue")
Gem9.CFrame = char.Torso.CFrame
Gem9.Transparency = 0.25
Gem9.Reflectance = 0.25
Gem9.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Gem9
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(-0.25, 0.3, 0.75) * CFrame.Angles(0, 0, 0)
Gem9Mesh = Instance.new("SpecialMesh")
Gem9Mesh.MeshType = "Sphere"
Gem9Mesh.Parent = Gem9
Gem9Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
end
 
function DrawSword()
Drawn = Instance.new("Model")
Drawn.Parent = char
Drawn.Name = "Drawn"
---------------------------------------Handle---------------------------------------
local Gem1 = Instance.new("Part")
Gem1.Parent = Drawn
Gem1.Name = "Gem1"
Gem1.CanCollide = false
Gem1.Locked = true
Gem1.TopSurface = "Smooth"
Gem1.BottomSurface = "Smooth"
Gem1.formFactor = "Symmetric"
Gem1.BrickColor = BrickColor.new("Cyan")
Gem1.CFrame = char["Right Arm"].CFrame
Gem1.Transparency = 0.25
Gem1.Reflectance = 0.25
Gem1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, 0.75) * CFrame.Angles(0, 0, 0)
Gem1Mesh = Instance.new("SpecialMesh")
Gem1Mesh.MeshType = "Sphere"
Gem1Mesh.Parent = Gem1
Gem1Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
 
local Handle = Instance.new("Part")
Handle.Parent = Drawn
Handle.Name = "Handle"
Handle.CanCollide = false
Handle.Locked = true
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.formFactor = "Symmetric"
Handle.BrickColor = BrickColor.new("White")
Handle.CFrame = char["Right Arm"].CFrame
Handle.Transparency = 0
Handle.Reflectance = 0.1
Handle.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Handle
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(1.57, 0, 0)
HandleMesh = Instance.new("CylinderMesh")
HandleMesh.Parent = Handle
HandleMesh.Scale = Vector3.new(0.25, 1, 0.25)
 
 
local Gold1 = Instance.new("Part")
Gold1.Parent = Drawn
Gold1.Name = "Gold1"
Gold1.CanCollide = false
Gold1.Locked = true
Gold1.TopSurface = "Smooth"
Gold1.BottomSurface = "Smooth"
Gold1.formFactor = "Symmetric"
Gold1.BrickColor = BrickColor.new("Olive")
Gold1.CFrame = char["Right Arm"].CFrame
Gold1.Transparency = 0
Gold1.Reflectance = 0.25
Gold1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gold1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, 0.5) * CFrame.Angles(1.57, 0, 0)
Gold1Mesh = Instance.new("CylinderMesh")
Gold1Mesh.Parent = Gold1
Gold1Mesh.Scale = Vector3.new(0.35, 0.15, 0.35)
 
local Gold2 = Instance.new("Part")
Gold2.Parent = Drawn
Gold2.Name = "Gold2"
Gold2.CanCollide = false
Gold2.Locked = true
Gold2.TopSurface = "Smooth"
Gold2.BottomSurface = "Smooth"
Gold2.formFactor = "Symmetric"
Gold2.BrickColor = BrickColor.new("Olive")
Gold2.CFrame = char["Right Arm"].CFrame
Gold2.Transparency = 0
Gold2.Reflectance = 0.25
Gold2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gold2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, -0.575) * CFrame.Angles(1.57, 0, 0)
Gold2Mesh = Instance.new("CylinderMesh")
Gold2Mesh.Parent = Gold2
Gold2Mesh.Scale = Vector3.new(0.35, 0.15, 0.35)
 
local Cross1 = Instance.new("Part")
Cross1.Parent = Drawn
Cross1.Name = "Cross1"
Cross1.CanCollide = false
Cross1.Locked = true
Cross1.TopSurface = "Smooth"
Cross1.BottomSurface = "Smooth"
Cross1.formFactor = "Symmetric"
Cross1.BrickColor = BrickColor.new("Olive")
Cross1.CFrame = char["Right Arm"].CFrame
Cross1.Transparency = 0
Cross1.Reflectance = 0.25
Cross1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Cross1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, -0.75) * CFrame.Angles(1.57, -1.57, 0)
Cross1Mesh = Instance.new("SpecialMesh")
Cross1Mesh.MeshType = "Brick"
Cross1Mesh.Parent = Cross1
Cross1Mesh.Scale = Vector3.new(2.5, 0.35, 0.35)
 
local Cross2 = Instance.new("Part")
Cross2.Parent = Drawn
Cross2.Name = "Cross2"
Cross2.CanCollide = false
Cross2.Locked = true
Cross2.TopSurface = "Smooth"
Cross2.BottomSurface = "Smooth"
Cross2.formFactor = "Symmetric"
Cross2.BrickColor = BrickColor.new("Olive")
Cross2.CFrame = char["Right Arm"].CFrame
Cross2.Transparency = 0
Cross2.Reflectance = 0.25
Cross2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Cross2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, -1.25) * CFrame.Angles(1.57, -1.57, 0)
Cross2Mesh = Instance.new("SpecialMesh")
Cross2Mesh.MeshType = "Brick"
Cross2Mesh.Parent = Cross2
Cross2Mesh.Scale = Vector3.new(0.25, 1, 0.35)
 
local Blade = Instance.new("Part")
Blade.Parent = Drawn
Blade.Name = "Blade"
Blade.CanCollide = false
Blade.Locked = true
Blade.TopSurface = "Smooth"
Blade.BottomSurface = "Smooth"
Blade.formFactor = "Symmetric"
Blade.BrickColor = BrickColor.new("Really black")
Blade.CFrame = char["Right Arm"].CFrame
Blade.Transparency = 0
Blade.Reflectance = 0
Blade.Size = Vector3.new(1, 9, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Blade
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, -2.5) * CFrame.Angles(-1.57, 0, 0)
BladeMesh = Instance.new("SpecialMesh")
BladeMesh.MeshType = "FileMesh"
BladeMesh.MeshId = "http://www.roblox.com/asset/?id=96630166"
BladeMesh.Parent = Blade
BladeMesh.Scale = Vector3.new(1, 0.75, 0.35)
 
local Gem2 = Instance.new("Part")
Gem2.Parent = Drawn
Gem2.Name = "Gem2"
Gem2.CanCollide = false
Gem2.Locked = true
Gem2.TopSurface = "Smooth"
Gem2.BottomSurface = "Smooth"
Gem2.formFactor = "Symmetric"
Gem2.BrickColor = BrickColor.new("Navy blue")
Gem2.CFrame = char["Right Arm"].CFrame
Gem2.Transparency = 0.25
Gem2.Reflectance = 0.25
Gem2.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem2
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, -0.75) * CFrame.Angles(0, 1.57, 0)
Gem2Mesh = Instance.new("SpecialMesh")
Gem2Mesh.MeshType = "Sphere"
Gem2Mesh.Parent = Gem2
Gem2Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem3 = Instance.new("Part")
Gem3.Parent = Drawn
Gem3.Name = "Gem3"
Gem3.CanCollide = false
Gem3.Locked = true
Gem3.TopSurface = "Smooth"
Gem3.BottomSurface = "Smooth"
Gem3.formFactor = "Symmetric"
Gem3.BrickColor = BrickColor.new("Navy blue")
Gem3.CFrame = char["Right Arm"].CFrame
Gem3.Transparency = 0.25
Gem3.Reflectance = 0.25
Gem3.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem3
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1, -1) * CFrame.Angles(0, 1.57, 0)
Gem3Mesh = Instance.new("SpecialMesh")
Gem3Mesh.MeshType = "Sphere"
Gem3Mesh.Parent = Gem3
Gem3Mesh.Scale = Vector3.new(0.2, 0.2, 0.4)
 
local Gem4 = Instance.new("Part")
Gem4.Parent = Drawn
Gem4.Name = "Gem4"
Gem4.CanCollide = false
Gem4.Locked = true
Gem4.TopSurface = "Smooth"
Gem4.BottomSurface = "Smooth"
Gem4.formFactor = "Symmetric"
Gem4.BrickColor = BrickColor.new("Navy blue")
Gem4.CFrame = char["Right Arm"].CFrame
Gem4.Transparency = 0.25
Gem4.Reflectance = 0.25
Gem4.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem4
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, 0, -0.75) * CFrame.Angles(0, 1.57, 0)
Gem4Mesh = Instance.new("SpecialMesh")
Gem4Mesh.MeshType = "Sphere"
Gem4Mesh.Parent = Gem4
Gem4Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem5 = Instance.new("Part")
Gem5.Parent = Drawn
Gem5.Name = "Gem5"
Gem5.CanCollide = false
Gem5.Locked = true
Gem5.TopSurface = "Smooth"
Gem5.BottomSurface = "Smooth"
Gem5.formFactor = "Symmetric"
Gem5.BrickColor = BrickColor.new("Navy blue")
Gem5.CFrame = char["Right Arm"].CFrame
Gem5.Transparency = 0.25
Gem5.Reflectance = 0.25
Gem5.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem5
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -2, -0.75) * CFrame.Angles(0, 1.57, 0)
Gem5Mesh = Instance.new("SpecialMesh")
Gem5Mesh.MeshType = "Sphere"
Gem5Mesh.Parent = Gem5
Gem5Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem6 = Instance.new("Part")
Gem6.Parent = Drawn
Gem6.Name = "Gem6"
Gem6.CanCollide = false
Gem6.Locked = true
Gem6.TopSurface = "Smooth"
Gem6.BottomSurface = "Smooth"
Gem6.formFactor = "Symmetric"
Gem6.BrickColor = BrickColor.new("Lime green")
Gem6.CFrame = char["Right Arm"].CFrame
Gem6.Transparency = 0.25
Gem6.Reflectance = 0.25
Gem6.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem6
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1.75, -0.75) * CFrame.Angles(0, 1.57, 0)
Gem6Mesh = Instance.new("SpecialMesh")
Gem6Mesh.MeshType = "Sphere"
Gem6Mesh.Parent = Gem6
Gem6Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem7 = Instance.new("Part")
Gem7.Parent = Drawn
Gem7.Name = "Gem7"
Gem7.CanCollide = false
Gem7.Locked = true
Gem7.TopSurface = "Smooth"
Gem7.BottomSurface = "Smooth"
Gem7.formFactor = "Symmetric"
Gem7.BrickColor = BrickColor.new("Lime green")
Gem7.CFrame = char["Right Arm"].CFrame
Gem7.Transparency = 0.25
Gem7.Reflectance = 0.25
Gem7.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem7
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -0.25, -0.75) * CFrame.Angles(0, 1.57, 0)
Gem7Mesh = Instance.new("SpecialMesh")
Gem7Mesh.MeshType = "Sphere"
Gem7Mesh.Parent = Gem7
Gem7Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem8 = Instance.new("Part")
Gem8.Parent = Drawn
Gem8.Name = "Gem8"
Gem8.CanCollide = false
Gem8.Locked = true
Gem8.TopSurface = "Smooth"
Gem8.BottomSurface = "Smooth"
Gem8.formFactor = "Symmetric"
Gem8.BrickColor = BrickColor.new("Navy blue")
Gem8.CFrame = char["Right Arm"].CFrame
Gem8.Transparency = 0.25
Gem8.Reflectance = 0.25
Gem8.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem8
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -1.25, -0.75) * CFrame.Angles(0, 1.57, 0)
Gem8Mesh = Instance.new("SpecialMesh")
Gem8Mesh.MeshType = "Sphere"
Gem8Mesh.Parent = Gem8
Gem8Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
 
local Gem9 = Instance.new("Part")
Gem9.Parent = Drawn
Gem9.Name = "Gem9"
Gem9.CanCollide = false
Gem9.Locked = true
Gem9.TopSurface = "Smooth"
Gem9.BottomSurface = "Smooth"
Gem9.formFactor = "Symmetric"
Gem9.BrickColor = BrickColor.new("Navy blue")
Gem9.CFrame = char["Right Arm"].CFrame
Gem9.Transparency = 0.25
Gem9.Reflectance = 0.25
Gem9.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Gem9
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(0, -0.75, -0.75) * CFrame.Angles(0, 1.57, 0)
Gem9Mesh = Instance.new("SpecialMesh")
Gem9Mesh.MeshType = "Sphere"
Gem9Mesh.Parent = Gem9
Gem9Mesh.Scale = Vector3.new(0.3, 0.3, 0.4)
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
neck.C0 = neckC0 * CFrame.Angles(0, 0, 0-(0.037*i))
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, (0-(i*0.1)), (0+(i*0.314)))
wait()
end
continue = RShoulder.C0
continue1 = neck.C0
if char:findFirstChild("Shetta") ~= nil then
char.Shetta:Remove()
end
DrawSword()
for i = 1, 10 do
neck.C0 = continue1 * CFrame.Angles(0, 0, 0+(0.037*i))
RShoulder.C0 = continue * CFrame.Angles(0, (0-(i*0.1)), (0+(i*0.314)))
wait()
end
 
wait(1)
NilLimbs()
    mouse.Button1Down:connect(function()
        if not Busy then
            AIM = true
            Busy = true
             char.Drawn.Blade.Touched:connect(function(hit)
             Slash(hit)
             end)
omg = math.random(1, 3)
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
   slash:Stop()
    slash:Remove()
     end
if omg == 2 then
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74909537" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
            wait(0.45)
   slash:Stop()
    slash:Remove()
     end
if omg == 3 then
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74909551" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
            wait(0.45)
   slash:Stop()
    slash:Remove()
     end
for i = 1, 5 do
NilLimbs()
wait()
end
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
    RShoulder.C0 = RShoulderC0 * CFrame.new(0.25, 0.5, -0.25) * CFrame.Angles(0, -0.25, 3.5)
    RHip.C0 = RHipC0 * CFrame.Angles(-0.5, 0, 0)
    LHip.C0 = LHipC0 * CFrame.Angles(-0.5, 0, 0)
    LShoulder.C0 = LShoulderC0 * CFrame.new(0.25, 0.5, -0.65) * CFrame.Angles(0, 1, -3.5)
       wait(0.1)
       torso.Anchored = true
 
    for i = 1, 10 do
                for i, v in pairs(workspace:GetChildren()) do
                        if v.Name ~= char.Name then
                                ztorso = v:findFirstChild("Torso")
                                zHumanoid = v:findFirstChild("Humanoid")
                                if ztorso ~= nil and zHumanoid ~= nil then
                                        if (torso.Position-ztorso.Position).magnitude <= 15 then
                if hum.Health < save and hum.Health > 0 then
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74897796" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
            wait(0.45)
   slash:Stop()
    slash:Remove()
                   zHumanoid.Health = zHumanoid.Health - 15
 
          ztorso.Velocity = torso.CFrame.lookVector * -200
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
if key == "q" and Busy == false and Energy >= 15 then
Busy = true
        local pos = mouse.Hit.p
        pos1 = torso.Position
Energy = Energy - 50
        torso.CFrame = CFrame.new(torso.Position, pos)
torso.Anchored = true
        torso.CFrame = CFrame.new(torso.Position, pos)
savecf = torso.CFrame
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74897796" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
            wait(0.45)
   slash:Stop()
    slash:Remove()
        x = Instance.new("Part")
        x.BrickColor = BrickColor.new("Lime green")
        x.Transparency = 0.25
        x.Size = Vector3.new(20, 5, 5)
        x.TopSurface = "Smooth"
        x.BottomSurface = "Smooth"
        x.Shape = "Block"
        x.Name = me.Name
        x.CanCollide = false
        y = Instance.new("BodyVelocity")
        y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        x.Parent = Workspace
        y.Parent = x
        x.CFrame = savecf*CFrame.new(0,0, -5) * CFrame.Angles(-1.57, 1.57, 0)
        y.velocity = savecf.lookVector*100 + Vector3.new(0, 0, 0)
        m = Instance.new("SpecialMesh")
        m.MeshType = "FileMesh"
        m.MeshId = "http://www.roblox.com/asset/?id=13425802"
        m.Scale = Vector3.new(10, 5, 5)
        m.Parent = x
             game.Debris:AddItem(x, 5)
            x.Touched:connect(function(shiz)
 
                 if shiz.Parent ~= nil then
 
                        if shiz.Parent.Name ~= char.Name then
 
                            if shiz.Parent:FindFirstChild("Humanoid") ~= nil then
                            
                                if shiz.Parent:findFirstChild("Humanoid") ~= nil then
                                shiz.Parent.Humanoid.Health =  shiz.Parent.Humanoid.Health - 15
                                 shiz.Parent.Torso.Velocity = torso.CFrame.lookVector * 80 + Vector3.new(0, 25, 0)
                                x.Touched:Remove()
                                end
 
                            end
 
                        end
 
                    end
 
            end)
        torso.CFrame = CFrame.new(torso.Position, pos)
torso.Anchored = false
for i = 1, 30 do
     for u, c in pairs(workspace:GetChildren()) do
      if c.Name ~= char.Name then
       h = c:findFirstChild("Humanoid")
       t = c:findFirstChild("Torso")
       if h ~= nil and t ~= nil then
        if (x.Position-t.Position).magnitude <= 20 then
             t.Velocity = t.CFrame.lookVector * -50 + Vector3.new(0, 50, 0)
         t.CFrame = t.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
         h:TakeDamage(100)
        end
       end
      end
     end
wait()
end
          wait(2)
          x:Remove()
Busy = false
end
if key == "e" and Busy == false and Energy >= 50 then
Energy = Energy - 25
Busy = true
        local pos = mouse.Hit.p
        pos1 = torso.Position
    RShoulder.C0 = RShoulderC0 * CFrame.new(0, -0.1, -0.65) * CFrame.Angles(0, 1, 1)
    LShoulder.C0 = LShoulderC0 * CFrame.new(0, -0.1, -0.25) * CFrame.Angles(0, -0.25, -1)
        torso.CFrame = CFrame.new(torso.Position, pos)
wait(1.5)
        torso.CFrame = CFrame.new(torso.Position, pos)
for i = 1, 12 do
        torso.CFrame = CFrame.new(torso.Position, pos)
        torso.CFrame = torso.CFrame * CFrame.new(0, 0, -8)
wait(0.01)
end
wait(0.25)
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
         h:TakeDamage(200)
        end
       end
      end
     end
    end 
        torso.CFrame = CFrame.new(torso.Position, pos)
wait(2)
NilLimbs()
Busy = false
end
if key == "r" and Busy == false and Energy >= 75 then
 
for i, v in pairs(workspace:GetChildren()) do
if v.Name ~= me.Name then
zTorso = v:findFirstChild("Torso")
zHead = v:findFirstChild("Head")
zHumanoid = v:findFirstChild("Humanoid")
if zTorso ~= nil and zHumanoid ~= nil then
if (torso.Position-zTorso.Position).magnitude <= 7.5 then
Busy = true
ocframe = torso.CFrame
Energy = Energy - 75
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/asset/?id=66702758" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play(0, 1, 3)
            wait(0.45)
   slash:Stop()
    slash:Remove()
Gyro = Instance.new("BodyGyro")
Gyro.Parent = torso
Gyro.D = 50
Gyro.maxTorque = Vector3.new(0, 0, 0)
if char:findFirstChild("Humanoid") ~= nil then
char.Humanoid.Name = "Immortal"
end
for i = 1, 20 do
zTorso.Velocity = zTorso.CFrame.lookVector * 0 + Vector3.new(0, 75, 0)
wait()
end
l = Instance.new("BodyVelocity")
l.Parent = zTorso
l.maxForce = Vector3.new(math.huge, math.huge, math.huge)
x = Instance.new("BodyVelocity")
x.Parent = torso
x.maxForce = Vector3.new(math.huge, math.huge, math.huge)
game.Debris:AddItem(l, 6)
game.Debris:AddItem(x, 6)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -5) * CFrame.Angles(0, 3.14, 0)
hum.PlatformStand = true
for i = 1, 5 do
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -5) * CFrame.Angles(0, 3.14, 0)
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74909537" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
            wait(0.45)
   slash:Stop()
    slash:Remove()
    NilLimbs()
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0.75, -5) * CFrame.Angles(0, 3.14, 0)
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74909551" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
            wait(0.45)
   slash:Stop()
    slash:Remove()
    NilLimbs()
wait()
end
slash = Instance.new("Animation")
slash.Parent = script.Parent
slash.AnimationId = "http://www.roblox.com/Asset?ID=74897796" 
slash.Name = "PowerSlash"
game.Debris:AddItem(slash, 6)
slash = hum:LoadAnimation(slash)
    wait()
   slash:Play()
            wait(0.45)
   slash:Stop()
    slash:Remove()
l.maxForce = Vector3.new(0, 0, 0)
for i = 1, 20 do
zTorso.Velocity = zTorso.CFrame.lookVector * 0 + Vector3.new(0, -85, 0)
wait()
end
l.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, 1, 1.5)
    RHip.C0 = RHipC0 * CFrame.Angles(-0.5, 0, 0)
    LHip.C0 = LHipC0 * CFrame.Angles(-0.5, 0, 0)
    LShoulder.C0 = LShoulderC0 * CFrame.Angles(0, -1, -1.5)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 35, 5) * CFrame.Angles(-1.57, 0, 0)
wait(0.1)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 30, 5) * CFrame.Angles(-1.57, 0, 0)
wait(0.1)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 25, 5) * CFrame.Angles(-1.57, 0, 0)
wait(0.1)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 20, 5) * CFrame.Angles(-1.57, 0, 0)
wait(0.1)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 15, 5) * CFrame.Angles(-1.57, 0, 0)
wait(0.1)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 10, 5) * CFrame.Angles(-1.57, 0, 0)
wait(0.1)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 5, 5) * CFrame.Angles(-1.57, 0, 0)
wait(0.1)
torso.CFrame = zTorso.CFrame * CFrame.new(0, 0, 5) * CFrame.Angles(-1.57, 0, 0)
wait(0.1)
l:Remove()
x:Remove()
if char:findFirstChild("Immortal") ~= nil then
char.Immortal.Name = "Humanoid"
end
zHumanoid.Health = zHumanoid.Health - 75
hum.PlatformStand = false
torso.CFrame = ocframe
NilLimbs()
Busy = false
end
end
end
end
-----
end
end
end)
end
 
function deselect(mouse)
for i = 1, 10 do
neck.C0 = neckC0 * CFrame.Angles(0, 0, 0-(0.037*i))
RShoulder.C0 = RShoulderC0 * CFrame.Angles(0, (0-(i*0.1)), (0+(i*0.314)))
wait()
end
if char:findFirstChild("Drawn") ~= nil then
char.Drawn:Remove()
end
wait(0.12)
PutAway()
wait(0.12)
NilLimbs()
end
if script.Parent.className ~= "HopperBin" then
    h = Instance.new("HopperBin")
    h.Name = "Yoru"
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
if Energy < 100 and Busy == false then
Energy = Energy + 0.5
end
if Energy > 100 then
Energy = 100
end
--Project 2013
wait()
end
