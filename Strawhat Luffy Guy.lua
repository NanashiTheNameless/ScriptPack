Player = game.Players.LocalPlayer
Mouse = Player:GetMouse()
Character = Player.Character
Humanoid = Character.Humanoid
Head = Character.Head
Torso = Character.Torso
LeftArm = Character["Left Arm"]
RightArm = Character["Right Arm"]
LeftLeg = Character["Left Leg"]
RightLeg = Character["Right Leg"]

-- Outfit

--Hat

local Hat = Instance.new("Part", Character)
Hat.Name = "HatPart"
Hat.CanCollide = false
Hat.BrickColor = BrickColor.new("Daisy orange")
Hat.Material = "SmoothPlastic"
Hat.Size = Vector3.new(1.2, 1.2, 0.7)
local HatBand = Instance.new("Part", Character)
HatBand.Name = "HatBand"
HatBand.CanCollide = false
HatBand.BrickColor = BrickColor.new("Really red")
HatBand.Material = "SmoothPlastic"
HatBand.Size = Vector3.new(1.25, 1.25, 0.1)
local Hat2 = Instance.new("Part", Character)
Hat2.Name = "HatPart2"
Hat2.CanCollide = false
Hat2.BrickColor = BrickColor.new("Daisy orange")
Hat2.Material = "SmoothPlastic"
Hat2.Size = Vector3.new(1.5, 1.5, 0.05)
local HatWeld = Instance.new("Weld", Hat)
HatWeld.Part0 = Hat
HatWeld.Part1 = Torso
HatWeld.C0 = CFrame.new(0, -0.2, -0.5)*CFrame.new(0, -0.2, -0.5)
local BandWeld = Instance.new("Weld", HatBand)
BandWeld.Part0 = HatBand
BandWeld.Part1 = Hat
BandWeld = CFrame.new(0, 0, 0)*CFrame.new(0, 0, 0)
local HatWeld2 = Instance.new("Weld", Hat2)
HatWeld2.Part0 = Hat2
HatWeld2.Part1 = Hat
HatWeld2.C0 = CFrame.new(0, 0, 0.2)*CFrame.new(0, 0, 0.2)

--Shirt
local Hair = Instance.new("Part", Character)
Hair.Name = "Hair"
Hair.CanCollide = false
Hair.Anchored = false
Hair.BrickColor = BrickColor.new("Really black")
Hair.Material = "SmoothPlastic"
local Hairm = Instance.new("SpecialMesh", Hair)
Hairm.MeshId = "http://www.roblox.com/asset/?id=167549828"
Hairm.Scale = Vector3.new(1, 1, 1)
local HairWeld = Instance.new("Weld", Hair)
HairWeld.Part0 = Character.Head
HairWeld.Part1 = Hair
HairWeld.C1 = CFrame.new(0, -0.25, 0)
local Base = Instance.new("Part", Character)
Base.Name = "Shirt1"
Base.BrickColor = BrickColor.new("Really red")
Base.Material = "SmoothPlastic"
Base.CanCollide = false
Base.Size = Vector3.new(0.8, 2.03, 1.1)
local Base2 = Instance.new("Part", Character)
Base2.Name = "Shirt2"
Base2.BrickColor = BrickColor.new("Really red")
Base2.Material = "SmoothPlastic"
Base2.Size = Vector3.new(0.8, 2.03, 1.1)
local Base3 = Instance.new("Part", Character)
Base3.Name = "Shirt2"
Base3.BrickColor = BrickColor.new("Really red")
Base3.Material = "SmoothPlastic"
Base3.Size = Vector3.new(0.5, 1.5, 1.1)
local BaseWeld = Instance.new("Weld", Base)
BaseWeld.Part0 = Base
BaseWeld.Part1 = Torso
BaseWeld.C0 = CFrame.new(0.3, 0, 0)*CFrame.new(0.33, 0, 0)
local BaseWeld2 = Instance.new("Weld", Base)
BaseWeld2.Part0 = Base2
BaseWeld2.Part1 = Torso
BaseWeld2.C0 = CFrame.new(-0.3, 0, 0)*CFrame.new(-0.33, 0, 0)
local BaseWeld3 = Instance.new("Weld", Base)
BaseWeld3.Part0 = Base3
BaseWeld3.Part1 = Torso
BaseWeld3.C0 = CFrame.new(0.01, 0.1255, 0)*CFrame.new(0.01, 0.1255, 0)

-- Pants

local Short = Instance.new("Part", Character)
Short.Name = "Short"
Short.BrickColor = BrickColor.new("Medium blue")
Short.Material = "SmoothPlastic"
Short.Size = Vector3.new(1.1, 0.75, 1.1)
Short.CanCollide = false
local Short2 = Instance.new("Part", Character)
Short2.Name = "Short2"
Short2.BrickColor = BrickColor.new("Medium blue")
Short2.Material = "SmoothPlastic"
Short2.Size = Vector3.new(1.1, 0.75, 1.1)
Short2.CanCollide = false
local Short3 = Instance.new("Part", Character)
Short3.Name = "Short3"
Short3.BrickColor = BrickColor.new("Pearl")
Short3.Material = "SmoothPlastic"
Short3.Size = Vector3.new(1.2, 0.1, 1.2)
Short3.CanCollide = false
local Short4 = Instance.new("Part", Character)
Short4.Name = "Short4"
Short4.BrickColor = BrickColor.new("Pearl")
Short4.Material = "SmoothPlastic"
Short4.Size = Vector3.new(1.2, 0.1, 1.2)
Short4.CanCollide = false
local ShortWeld = Instance.new("Weld", Short)
ShortWeld.Part0 = Short
ShortWeld.Part1 = LeftLeg
ShortWeld.C0 = CFrame.new(0, -0.32, 0)*CFrame.new(0, -0.32, 0)
local ShortWeld2 = Instance.new("Weld", Short2)
ShortWeld2.Part0 = Short2
ShortWeld2.Part1 = RightLeg
ShortWeld2.C0 = CFrame.new(0, -0.32, 0)*CFrame.new(0, -0.32, 0)
local ShortWeld3 = Instance.new("Weld", Short3)
ShortWeld3.Part0 = Short3
ShortWeld3.Part1 = Short
ShortWeld3.C0 = CFrame.new(0, 0.15, 0)*CFrame.new(0, 0.15, 0)
local ShortWeld4 = Instance.new("Weld", Short4)
ShortWeld4.Part0 = Short4
ShortWeld4.Part1 = Short2
ShortWeld4.C0 = CFrame.new(0, 0.15, 0)*CFrame.new(0, 0.15, 0)
wait(0.25)

for i,Accessory in pairs(Character:GetChildren()) do
if Accessory:IsA("Shirt") or Accessory:IsA("Pants") or Accessory:IsA("Accessory") then
Accessory:remove()
end
end

Character["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
Character["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
Character["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
Character["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
Character["Body Colors"].LeftLegColor = BrickColor.new("Pastel brown")
Character["Body Colors"].RightLegColor = BrickColor.new("Pastel brown")

wait(0.5)


Mouse.KeyDown:connect(function(key)
key = key:lower()
if key == "z" then

function Pistol()
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

print(Player.Name.." is using pistol")

local Arm = Instance.new("BlockMesh", LeftArm)
Arm.Scale = Vector3.new(1, 0.5, 4)
Arm.Offset = Vector3.new(0, 0.5, 1.475)
Arm.Parent.Material = "SmoothPlastic"

local Scale = 4
local Offset = 1.475

while Scale <= 16 do
wait(0.00025)
Scale = Scale+1
Offset = Offset+0.5
Arm.Scale = Vector3.new(1, 0.5, Scale)
  Arm.Offset = Vector3.new(0, 0.5, Offset)
end


while Scale >= -16 do
wait(0.0025)
Scale = Scale-1
Offset = Offset-0.475
Arm.Scale = Vector3.new(1, 0.5, Scale)
Arm.Offset = Vector3.new(0, 0.5, Offset)
end

local Hitbox = Instance.new("Part", game.Workspace)
Hitbox.Name = "Hitbox"
Hitbox.Transparency = 1
Hitbox.CanCollide = false
Hitbox.Anchored = true
Hitbox.Size = Vector3.new(1, 1, 19)
  Hitbox.CFrame = LeftArm.CFrame*CFrame.new(0, 0.5, -8.1)
  Hitbox.Touched:connect(function(hit)
if hit.Parent.Name == Player.Name then
return
else
if hit.Name == "Head" or hit.Name == "Torso" or hit.Name == "Left Arm" or hit.Name == "Right Arm" or hit.Name == "Left Leg" or hit.Name == "Right Leg" then
hit.Parent.Humanoid = hit.Parent.Humanoid-math.random(3, 10)
LeftArm.Mesh:remove()
end
end
end)
wait(1)
LeftArm.Mesh:remove()
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
end
Pistol()
end
end)
Mouse.KeyDown:connect(function(key2)
key2 = key2:lower()
if key2 == "x" then

Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0

print(Player.Name.." is using bazooka")

local Arm = Instance.new("BlockMesh", LeftArm)
Arm.Scale = Vector3.new(1, 0.5, 4)
Arm.Offset = Vector3.new(0, 0.5, 1.475)
Arm.Parent.Material = "SmoothPlastic"
local Arm2 = Instance.new("BlockMesh", RightArm)
Arm2.Scale = Vector3.new(1, 0.5, 4)
Arm2.Offset = Vector3.new(0, 0.5, 1.475)
Arm2.Parent.Material = "SmoothPlastic"

local Scale = 4
local Offset = 1.475
local Scale2 = 4
local Offset2 = 1.475

while Scale <= 16 do
wait(0.00025)
Scale = Scale+1
Offset = Offset+0.5
Scale2 = Scale+1
Offset2 = Offset+0.5
Arm.Scale = Vector3.new(1, 0.5, Scale)
  Arm.Offset = Vector3.new(0, 0.5, Offset)
  Arm2.Scale = Vector3.new(1, 0.5, Scale2)
  Arm2.Offset = Vector3.new(0, 0.5, Offset2)
end


while Scale >= -16 do
wait(0.0025)
Scale = Scale-1
Offset = Offset-0.475
Scale2 = Scale-1
Offset2 = Offset-0.475
Arm.Scale = Vector3.new(1, 0.5, Scale)
Arm.Offset = Vector3.new(0, 0.5, Offset)
Arm2.Scale = Vector3.new(1, 0.5, Scale)
Arm2.Offset = Vector3.new(0, 0.5, Offset)
end

local Hitbox = Instance.new("Part", game.Workspace)
Hitbox.Name = "Hitbox"
Hitbox.Transparency = 1
Hitbox.CanCollide = false
Hitbox.Anchored = true
Hitbox.Size = Vector3.new(1, 1, 19)
  Hitbox.CFrame = LeftArm.CFrame*CFrame.new(0, 0.5, -8.1)
  Hitbox.Touched:connect(function(hit)
if hit.Parent.Name == Player.Name then
return
else
if hit.Name == "Head" or hit.Name == "Torso" or hit.Name == "Left Arm" or hit.Name == "Right Arm" or hit.Name == "Left Leg" or hit.Name == "Right Leg" then
hit.Parent.Humanoid = hit.Parent.Humanoid-math.random(3, 10)
LeftArm.Mesh:remove()
RightArm.Mesh:remove()
end
end
end)
local Hitbox2 = Instance.new("Part", game.Workspace)
Hitbox2.Name = "Hitbox2"
Hitbox2.Transparency = 1
Hitbox2.CanCollide = false
Hitbox2.Anchored = true
Hitbox2.Size = Vector3.new(1, 1, 19)
  Hitbox2.CFrame = LeftArm.CFrame*CFrame.new(0, 0.5, -8.1)
  Hitbox2.Touched:connect(function(hit)
if hit.Parent.Name == Player.Name then
return
else
if hit.Name == "Head" or hit.Name == "Torso" or hit.Name == "Left Arm" or hit.Name == "Right Arm" or hit.Name == "Left Leg" or hit.Name == "Right Leg" then
hit.Parent.Humanoid = hit.Parent.Humanoid-math.random(3, 10)
LeftArm.Mesh:remove()
RightArm.Mesh:remove()
end
end
end)
wait(1)
LeftArm.Mesh:remove()
RightArm.Mesh:remove()
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
end

end)
