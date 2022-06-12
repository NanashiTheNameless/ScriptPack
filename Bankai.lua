player = game.Players.LocalPlayer
Char = player.Character
mouse = player:GetMouse()
RShoulder = Char.Torso['Right Shoulder']

for i, v in pairs(game.Players:GetPlayers()) do
if v.Name == "ace28545" then
v.Chatted:connect(function(message)
if message == "BANKAI" then
Player = game:GetService("Players").LocalPlayer



Tool = Instance.new("HopperBin",Player.Backpack)

Tool.Name = "Ichigo's Bankai"


Handle = Instance.new("Part", Char)

Handle.FormFactor = "Custom"

Handle.Size = Vector3.new(2, 2, 2.2)

Handle.TopSurface = "Smooth"

Handle.BottomSurface = "Smooth"

Handle.BrickColor = BrickColor.new("Really black")

Handle.Reflectance = 0

Handle:BreakJoints()

Handle.CanCollide = true

Mesh = Instance.new("SpecialMesh", Handle)

Mesh.MeshId = "http://www.roblox.com/asset/?id=11442510"

Mesh.TextureId = "http://www.roblox.com/asset/?id=16018717"

Mesh.Scale = Vector3.new(2, 2, 2.2)

HandleWeld = Instance.new("Weld", Char)

HandleWeld.Part0 = Char["Right Arm"]

HandleWeld.Part1 = Handle

HandleWeld.C0 = CFrame.new(0, -1, math.rad(-115)) * CFrame.Angles(0, math.rad(180), math.rad(90))

DK = Instance.new("Part", Char)

DK.FormFactor = "Custom"

DK.Size = Vector3.new(1, -1, 1)

DK.TopSurface = "Smooth"

DK.BottomSurface = "Smooth"

DK.BrickColor = BrickColor.new("Really black")

DK.Reflectance = 0

DK:BreakJoints()

DK.CanCollide = false

Mesh = Instance.new("SpecialMesh", DK)

Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"

Mesh.Scale = Vector3.new(0.4, 0.25, 0.5)

DKWeld = Instance.new("Weld", Char)

DKWeld.Part0 = Char["Right Arm"]

DKWeld.Part1 = DK

DKWeld.C0 = CFrame.new(0, -1, math.rad(50)) * CFrame.Angles(0, math.rad(90), math.rad(90))

omg = Instance.new("Part", Char)

omg.FormFactor = "Custom"

omg.Size = Vector3.new(1, -1, 1)

omg.TopSurface = "Smooth"

omg.BottomSurface = "Smooth"

omg.BrickColor = BrickColor.new("Really black")

omg.Reflectance = 0

omg:BreakJoints()

omg.CanCollide = false

Mesh = Instance.new("SpecialMesh", omg)

Mesh.MeshId = "http://www.roblox.com/asset/?id=1091939"

Mesh.Scale = Vector3.new(1, 1, 1)

omgWeld = Instance.new("Weld", Char)

omgWeld.Part0 = Char["Right Arm"]

omgWeld.Part1 = omg

omgWeld.C0 = CFrame.new(0, -1, math.rad(-30)) * CFrame.Angles(0, math.rad(94), math.rad(90))

FINAL = Instance.new("Part", Char)

FINAL.FormFactor = "Custom"

FINAL.Size = Vector3.new(1, -1, 1)

FINAL.TopSurface = "Smooth"

FINAL.BottomSurface = "Smooth"

FINAL.BrickColor = BrickColor.new("Really black")

FINAL.Reflectance = 0

FINAL:BreakJoints()

FINAL.CanCollide = false

Mesh = Instance.new("SpecialMesh", FINAL)

Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"

Mesh.Scale = Vector3.new(0.4, 0.25, 0.5)

FINALWeld = Instance.new("Weld", Char)

FINALWeld.Part0 = Char["Right Arm"]

FINALWeld.Part1 = FINAL

FINALWeld.C0 = CFrame.new(0, math.rad(-80), math.rad(50)) * CFrame.Angles(0, math.rad(90), math.rad(90))

K = Instance.new("Part", Char)

K.FormFactor = "Custom"

K.Size = Vector3.new(1, -1, 1)

K.TopSurface = "Smooth"

K.BottomSurface = "Smooth"

K.BrickColor = BrickColor.new("Really black")

K.Reflectance = 0

K:BreakJoints()

K.CanCollide = false

Mesh = Instance.new("SpecialMesh", K)

Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"

Mesh.Scale = Vector3.new(0.4, 0.25, 0.5)

KWeld = Instance.new("Weld", Char)

KWeld.Part0 = Char["Right Arm"]

KWeld.Part1 = K

KWeld.C0 = CFrame.new(0, math.rad(-100), math.rad(50)) * CFrame.Angles(0, math.rad(90), math.rad(90))

local Mouse = Player:GetMouse()

local Character = Player.Character

local Head = Character:findFirstChild("Head")

local Torso = Character:findFirstChild("Torso")

local RightArm = Character:findFirstChild("Right Arm")

local RightSH = Torso:findFirstChild("Right Shoulder")

local LeftArm = Character:findFirstChild("Left Arm")

local LeftSH = Torso:findFirstChild("Left Shoulder")

local Joint1

local Joint2

Handle.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(25)
end
end)
end
end)
end
end

Print"Bankai Has Lodaed"