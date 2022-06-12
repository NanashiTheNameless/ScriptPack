local Player = game.Players.LocalPlayer.Character
local RightArm = Player["Right Arm"]
local Mouse = game.Players.LocalPlayer:GetMouse()

local zero = 0
local dmg = 0
local ldmg = 0
local PunchDmg = 30
local ComboDmg = 40

local idleing = true
Player.Humanoid.WalkSpeed = 0
Player.Humanoid.PlatformStand = true
Player.HumanoidRootPart.Anchored = true
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0.5,-1.3,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0.5,1.3,0)
Player.HumanoidRootPart.RootJoint.C0 = Player.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0.1, 0, 0)
wait(0.025)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1,-1,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1,1,0)
Player.HumanoidRootPart.RootJoint.C0 = Player.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0.2, 0, 0)
game:GetService("Chat"):Chat(Player.Head, "I have risen from the billions of rainbows..")
wait(2)
game:GetService("Chat"):Chat(Player.Head, "I shall decimate you with the jargon of the skies...")
wait(2)
game:GetService("Chat"):Chat(Player.Head, "You shall not live. Worthless being.", "Red")
wait(1)
local a = Instance.new("Part", Player)
a.Size = Vector3.new(20, 150, 20)
a.Transparency = 1
a.Material = "Neon"
a.Anchored = true
a.CanCollide = false
a.CFrame = Player.Torso.CFrame
    game:GetService("Chat"):Chat(Player.Head, "Grrr....")
local flasher = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
flasher.Name = "Flash"
local flash = Instance.new("ImageLabel", flasher)
flash.Image = "http://www.roblox.com/asset/?id=141065061"
flash.Size = UDim2.new(0, 999, 0, 999)
for i = 1, 20 do
    flash.BackgroundTransparency = flash.BackgroundTransparency + 0.05
    flash.ImageTransparency = flash.BackgroundTransparency
    a.CFrame = Player.Torso.CFrame
    a.BrickColor = BrickColor.Random()
    a.Size = a.Size - Vector3.new(1, 0, 1)
    a.Transparency = a.Transparency - 0.05
    wait()
end
a:Remove()
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0.5,-1.3,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0.5,1.3,0)
wait(0.025)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
local eff2 = Instance.new("Part", Player)
eff2.Size = Vector3.new(5, 5, 5)
eff2.Transparency = 0
eff2.Material = "Neon"
eff2.Anchored = true
eff2.CanCollide = false
eff2.CFrame = Player.Torso.CFrame
eff2eff = Instance.new("SelectionBox", eff2)
eff2eff.Adornee = eff2
game:GetService("Chat"):Chat(Player.Head, "GRAHH...RRR..", "Red")
    flash.BackgroundTransparency = 0
for i = 1, 30 do
    flash.BackgroundTransparency = flash.BackgroundTransparency + 0.0300
    flash.ImageTransparency = flash.BackgroundTransparency
    eff2.CFrame = Player.Torso.CFrame * CFrame.Angles(math.random(), math.random(), math.random())
    eff2.BrickColor = BrickColor.new("Black")
    eff2eff.Color = BrickColor.Random()
    wait()
end
    flash.BackgroundTransparency = 1
    flash.ImageTransparency = flash.BackgroundTransparency
eff2:Remove()

local eff3 = Instance.new("Part", Player)
eff3.Size = Vector3.new(20, 20, 20)
eff3.Transparency = 0
eff3.Material = "Neon"
eff3.Anchored = true
eff3.CanCollide = false
eff3.Shape = "Ball"
eff3.CFrame = Player.Torso.CFrame
game:GetService("Chat"):Chat(Player.Head, "GRRRRRRR...!", "Red")
    flash.BackgroundTransparency = 0
    flash.ImageTransparency = flash.BackgroundTransparency
for i = 1, 40 do
    flash.BackgroundTransparency = flash.BackgroundTransparency + 0.025
    flash.ImageTransparency = flash.BackgroundTransparency
    eff3.Size = eff3.Size - Vector3.new(0.5, 0.5, 0.5)
    eff3.CFrame = Player.Torso.CFrame * CFrame.Angles(math.random(), math.random(), math.random())
    eff3.BrickColor = BrickColor.Random()
    wait()
end
eff3:Remove()
local Hair = Instance.new("Part", Player)
Hair.Name = "Hair"
Hair.Material = "Neon"
Hair.Size = Vector3.new(2, 0.8, 2.4)
Hold = Instance.new("Weld", Player.Head)
Hold.Part0 = Player.Head
Hold.Part1 = Hair
Hold.C0 = CFrame.new(-0.1, 0.8, 0)
local Mesh = Instance.new("SpecialMesh", Hair)
Mesh.MeshType = "FileMesh"
Mesh.Scale = Vector3.new(1.2, 1, 1)
Mesh.MeshId = ("http://www.roblox.com/asset/?id=145283773 ")
Mesh.TextureId = ("http://www.roblox.com/asset/?id=151460207")
local explosion1 = Instance.new("Part", Player)
explosion1.Size = Vector3.new(20, 20, 20)
explosion1.Transparency = 0
explosion1.Material = "Neon"
explosion1.Anchored = true
explosion1.CanCollide = false
explosion1.Shape = "Ball"
explosion1.CFrame = Player.Torso.CFrame
for I,f in pairs (Player:GetChildren()) do
if f:IsA("Hat") then f.Handle.Transparency = 1
end
end
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-0,-1.3,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-0.5,1.3,0)
Player.HumanoidRootPart.RootJoint.C0 = Player.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(-0.5, 0, 0)
wait(0.025)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1.2,-2,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1.2,2,0)
Player.HumanoidRootPart.RootJoint.C0 = Player.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(-0.1, 0, 0)
game:GetService("Chat"):Chat(Player.Head, "GRAAAAAAAAAAHHHH!", "Red")
    flash.BackgroundTransparency = 0
    flash.ImageTransparency = flash.BackgroundTransparency
for i = 1, 40 do
    flash.BackgroundTransparency = flash.BackgroundTransparency + 0.025
    flash.ImageTransparency = flash.BackgroundTransparency
explosion1.BrickColor = BrickColor.Random()
explosion1.Size = explosion1.Size + Vector3.new(1, 1, 1)
explosion1.Transparency = explosion1.Transparency + 0.025
    wait()
end
explosion1:Remove()
Player.Humanoid.WalkSpeed = 30
Player.Humanoid.MaxHealth = 99e99
wait()
Player.Humanoid.Health = 99e99
Player.HumanoidRootPart.Anchored = false
Player.HumanoidRootPart.RootJoint.C0 = Player.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0, 0, 0)
wait(0.025)
Player.HumanoidRootPart.RootJoint.C0 = Player.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0.3, 0, 0)
game:GetService("Chat"):Chat(Player.Head, "Learn to respect an legendary being.")
Player.Humanoid.PlatformStand = false
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-0.5,-1.3,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-0.5,1.3,0)

wait(0.025)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
local fire = Instance.new("Fire", Player.Torso)
local light = Instance.new("SpotLight", Player.Torso)
light.Angle = 180
light.Brightness = 50
light.Face = "Bottom"
flasher:Remove()

Mouse.KeyDown:connect(function(key)
if key == "q" then
if not idleing then
return
end
dmg = PunchDmg
idleing = false
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
wait(0.025)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
wait(0.025)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
wait(0.3)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
idleing = true
dmg = zero
end
if key == "e" then
if not idleing then
return
end
ldmg = PunchDmg
idleing = false
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.025)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.025)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.3)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
idleing = true
ldmg = zero
end
if key == "r" then
if not idleing then
return
end
game:GetService("Chat"):Chat(Player.Head, "I shall destroy you and leave no trace of your pity. I have been trained for years to earn this form and you just walk up to me like a worthless maggot.", "Red")
ldmg = ComboDmg
idleing = false
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.1)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.1)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.1)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
ldmg = ComboDmg
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.1)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.1)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.1)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
ldmg = zero
game:GetService("Chat"):Chat(Player.Head, "I've been destroying every enemies. Nothing could stand on my path. And you are a pathetic being to be in my grasp.", "Red")
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
dmg = zero
ldmg = ComboDmg
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
ldmg = ComboDmg
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
game:GetService("Chat"):Chat(Player.Head, "I shall tear you limb from limb and you shall drown in your blood.", "Red")
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
ldmg = ComboDmg
dmg = zero
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
ldmg = ComboDmg
dmg = zero
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
game:GetService("Chat"):Chat(Player.Head, "You shall suffer from the race of the rainbows. You shall never be forgiven from your actions.", "Red")
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.025)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
ldmg = ComboDmg
dmg = zero
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.025)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
ldmg = ComboDmg
dmg = zero
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.025)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
ldmg = ComboDmg
dmg = zero
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)

Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.025)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
ldmg = ComboDmg
dmg = zero
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.025)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
ldmg = ComboDmg
dmg = zero
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
wait(0.05)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
dmg = ComboDmg
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(-1,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(-1,-1.57,0)
wait(0.05)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
wait(0.025)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(1.5,1.57,0)
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(1.5,-1.57,0)
dmg = zero
ldmg = zero
game:GetService("Chat"):Chat(Player.Head, "You're done for. Kiddo. You're done for.", 
"Red")
Player.Torso["Left Shoulder"].C0 = CFrame.new(-1.018,0.5,-0) * CFrame.Angles(0,-1.57,0)
Player.Torso["Right Shoulder"].C0 = CFrame.new(1,0.5,-0) * CFrame.Angles(0,1.57,0)
idleing = true
end
end)

function rhurt(part)
	local humanoid = part.Parent:FindFirstChild("Humanoid") 
	if (humanoid ~= nil and humanoid ~= Player.Humanoid) then
		humanoid:TakeDamage(dmg) -- damage the humanoid
	end 
end

function lhurt(part)
	local humanoid = part.Parent:FindFirstChild("Humanoid") 
	if (humanoid ~= nil and humanoid ~= Player.Humanoid) then
		humanoid:TakeDamage(ldmg) -- damage the humanoid
	end 
end

RightArm.Touched:connect(rhurt)

Player["Left Arm"].Touched:connect(lhurt)

while wait() do
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
        light.Color = fire.Color
	Mesh.VertexColor =  Vector3.new(1,0,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
        Mesh.VertexColor =  Vector3.new(0.9,0.1,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0.8,0.2,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
		Mesh.VertexColor =  Vector3.new(0.7,0.3,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0.6,0.4,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
		Mesh.VertexColor =  Vector3.new(0.5,0.5,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0.4,0.6,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
		Mesh.VertexColor =  Vector3.new(0.3,0.7,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0.2,0.8,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
		Mesh.VertexColor =  Vector3.new(0.1,0.9,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0,1,0)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0,0.9,0.1)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0,0.8,0.2)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0,0.7,0.3)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0,0.6,0.4)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0,0.5,0.5)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0,0.4,0.6)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0,0.3,0.7)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0,0.2,0.8)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0,0.1,0.9)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0,0,1)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0.1,0,0.9)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0.2,0,0.8)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0.3,0,0.7)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0.4,0,0.6)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0.5,0,0.5)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0.6,0,0.4)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
		wait()
			Mesh.VertexColor =  Vector3.new(0.7,0,0.3)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
	Mesh.VertexColor =  Vector3.new(0.8,0,0.2)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
	wait()
		Mesh.VertexColor =  Vector3.new(0.9,0,0.1)
	fire.Color = Color3.new(math.random(), math.random(), math.random())
	fire.SecondaryColor = fire.Color
  light.Color = fire.Color
end