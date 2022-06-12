Cloud = Instance.new("SpecialMesh")
Cloud.MeshId = "http://www.roblox.com/asset/?id=1095708"
Cylinder = Instance.new("CylinderMesh")
Block = Instance.new("BlockMesh")
Shuriken = Instance.new("SpecialMesh")
Shuriken.MeshId = "http://www.roblox.com/asset/?id=11376946"
Shuriken.Scale = Vector3.new(2,2,2)
Player = game.Players.LocalPlayer
Char = Player.Character
 
for i, v in pairs(Char:GetChildren()) do
if v:IsA("Hat") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") or v:IsA("Model") then
v:remove()
end
end
 
Humanoid = Char.Humanoid
Head = Char.Head
 
for i, v in pairs(Head:GetChildren()) do
if v:IsA("Decal") then
v:remove()
end
end
 
Face = Instance.new("Decal")
Face.Texture = "http://www.roblox.com/asset/?id=49647896"
Face.Parent = Head
Torso = Char.Torso
if Torso:FindFirstChild("Fire") ~= nil then
Torso.Fire:remove()
end
Torso.CFrame = workspace.Base.CFrame * CFrame.new(math.random(-200,200),5,math.random(-200,200))
RightArm = Char["Right Arm"]
LeftArm = Char["Left Arm"]
RightLeg = Char["Right Leg"]
LeftLeg = Char["Left Leg"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
Shirt = Instance.new("Shirt")
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=45299985"
Shirt.Parent = Char
Pants = Instance.new("Pants")
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=45299995"
Pants.Parent = Char
Weapon = Instance.new("Model")
Weapon.Name = "Jutsu"
Weapon.Parent = Char
Hair = Instance.new("Part")
Hair.BrickColor = BrickColor.new("Bright yellow")
Hair.FormFactor = "Custom"
Hair.Size = Vector3.new(1,1,1)
Hair.TopSurface = 0
Hair.BottomSurface = 0
Hair.Name = "Hair"
Hair.Parent = Weapon
Mesh = Instance.new("SpecialMesh")
Mesh.MeshId = "http://www.roblox.com/asset/?id=16627529"
Mesh.Scale = Vector3.new(1.05,1.05,1.05)
Mesh.Parent = Hair
Weld = Instance.new("Weld")
Weld.Part0 = Head
Weld.Part1 = Hair
Weld.C0 = CFrame.new(0,0.4,0)
Weld.Parent = Hair
 
Backpack = Player.Backpack
Minato = Instance.new("HopperBin")
Minato.Name = "Minato"
Minato.Parent = Backpack
wait()
script.Parent = Minato
PlayerGui = Player.PlayerGui
 
for i, v in pairs(PlayerGui:GetChildren()) do
if v.Name == "ChakraGui" then
v:remove()
end
end
 
Gui = Instance.new("ScreenGui")
Gui.Name = "ChakraGui"
Gui.Parent = PlayerGui
MaxChakra = Instance.new("IntValue")
MaxChakra.Value = 300
MaxChakra.Name = "MaxChakra"
MaxChakra.Parent = Gui
Chakra = Instance.new("IntValue")
Chakra.Value = MaxChakra.Value
Chakra.Name = "Chakra"
Chakra.Parent = Gui
Bar = Instance.new("Frame")
Bar.BackgroundColor = BrickColor.new("Institutional white")
Bar.Size = UDim2.new(0.05,0,0.45,0)
Bar.Position = UDim2.new(0.9,0,0.3,0)
Bar.Name = "Bar"
Bar.Parent = Gui
BarTracking = Instance.new("Frame")
BarTracking.BackgroundColor = BrickColor.new("Pastel light blue")
BarTracking.Name = "BarTracking"
BarTracking.Parent = Bar
Palet = Instance.new("ImageLabel")
Palet.BackgroundTransparency = 1
Palet.Image = "http://www.roblox.com/asset/?id=64777368"
Palet.Size = UDim2.new(0.15,0,0.15,0)
Palet.Position = UDim2.new(0.1,0,0.4,0)
Palet.Name = "Palet"
Palet.Parent = Gui
Ramen = Instance.new("ImageButton")
Ramen.BackgroundTransparency = 1
Ramen.Image = "http://www.roblox.com/asset/?id=64778291"
Ramen.Size = UDim2.new(0.15,0,0.15,0)
Ramen.Position = Palet.Position + UDim2.new(0.1,0,0,0)
Ramen.Name = "Ramen"
Ramen.Parent = Gui
Pill = Instance.new("ImageButton")
Pill.BackgroundTransparency = 1
Pill.Image = "http://www.roblox.com/asset/?id=64777717"
Pill.Size = UDim2.new(0.15,0,0.15,0)
Pill.Position = Palet.Position + UDim2.new(-0.09,0,0,0)
Pill.Name = "Pill"
Pill.Parent = Gui
GShuriken = Instance.new("ImageButton")
GShuriken.BackgroundTransparency = 1
GShuriken.Image = "http://www.roblox.com/asset/?id=64780270"
GShuriken.Size = UDim2.new(0.15,0,0.15,0)
GShuriken.Position = Palet.Position + UDim2.new(0,0,-0.12,0)
GShuriken.Name = "Windmill Shuriken"
GShuriken.Parent = Gui
Bomb = Instance.new("ImageButton")
Bomb.BackgroundTransparency = 1
Bomb.Image = "http://www.roblox.com/asset/?id=64777965"
Bomb.Size = UDim2.new(0.15,0,0.15,0)
Bomb.Position = Palet.Position + UDim2.new(0,0,0.12,0)
Bomb.Name = "Bomb"
Bomb.Parent = Gui
Attack = false
Water = false
Hit = false
Rasenganing = false
Mode = false
Time = 2
 
function Jump()
if Attack == false and Chakra.Value >= 19 then
Attack = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 4
end
Effect = Instance.new("Part")
Effect.BrickColor = BrickColor.new("Institutional white")
Effect.FormFactor = "Custom"
Effect.Size = Vector3.new(0.2,0.2,0.2)
Effect.CanCollide = false
Effect.TopSurface = 0
Effect.BottomSurface = 0
Effect.CFrame = Torso.CFrame
Effect.Name = "Effect"
Effect.Parent = workspace
Mesh = Cloud:clone()
Mesh.Scale = Vector3.new(5,2,5)
Mesh.Parent = Effect
game.Debris:AddItem(Effect,1)
Bv = Instance.new("BodyVelocity")
Bv.P = 9000
Bv.maxForce = Vector3.new(0,math.huge,0)
Bv.velocity = Vector3.new(0,100,0)
Bv.Parent = Torso
game.Debris:AddItem(Bv,1)
wait(3)
Attack = false
end
end
 
function Substitution()
if Attack == false and Chakra.Value >= 19 then
Attack = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 4
end
Log = Instance.new("Part")
Log.BrickColor = BrickColor.new("Brown")
Log.FormFactor = "Custom"
Log.Size = Vector3.new(3,5,3)
Log.TopSurface = 0
Log.BottomSurface = 0
Log.CFrame = Torso.CFrame
Log.Name = "Log"
Log.Parent = workspace
Mesh = Cylinder:clone()
Mesh.Parent = Log
game.Debris:AddItem(Log,10)
Effect = Instance.new("Part")
Effect.BrickColor = BrickColor.new("Institutional white")
Effect.FormFactor = "Custom"
Effect.Size = Vector3.new(0.2,0.2,0.2)
Effect.CanCollide = false
Effect.TopSurface = 0
Effect.BottomSurface = 0
Effect.CFrame = Torso.CFrame
Effect.Name = "Effect"
Effect.Parent = workspace
Mesh = Cloud:clone()
Mesh.Scale = Vector3.new(5,5,5)
Mesh.Parent = Effect
game.Debris:AddItem(Effect,1)
Torso.CFrame = Torso.CFrame * CFrame.new(0,10,0)
 
for i, v in pairs(Char:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
if v:FindFirstChild("Fire") ~= nil then
v.Fire.Parent = script
end
end
end
 
for i, v in pairs(Weapon:GetChildren()) do
v.Transparency = 1
end
 
Humanoid.WalkSpeed = 100
wait(1)
Humanoid.WalkSpeed = 16
 
for i, v in pairs(Char:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
if script:FindFirstChild("Fire") ~= nil then
script.Fire.Parent = Torso
end
end
end
 
for i, v in pairs(Weapon:GetChildren()) do
v.Transparency = 0
end
 
Attack = false
end
end
 
function Dash()
if Attack == false and Chakra.Value >= 19 then
Attack = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 4
end
Humanoid.WalkSpeed = 100
for i=1, 30 do
OldPos = Torso.Position
wait(0.05)
NewPos = Torso.Position
Dist = (OldPos - NewPos).magnitude
Line = Instance.new("Part")
Line.BrickColor = BrickColor.new("Bright yellow")
Line.FormFactor = "Custom"
Line.Size = Vector3.new(0.2,0.2,Dist)
Line.CanCollide = false
Line.Anchored = true
Line.TopSurface = 0
Line.BottomSurface = 0
Line.CFrame = CFrame.new(OldPos,NewPos) * CFrame.new(0,0,-Dist/2)
Line.Name = "Line"
Line.Parent = workspace
Mesh = Block:clone()
Mesh.Parent = Line
game.Debris:AddItem(Line,0.2)
end
Humanoid.WalkSpeed = 16
Attack = false
end
end
 
function ChakraRestore()
if Attack == false and Chakra.Value <= MaxChakra.Value then
Attack = true
for i=1, 10 do
wait(0.0001)
Chakra.Value = Chakra.Value + 2
end
Attack = false
end
end
 
function ShadowClone()
if Attack == false and Chakra.Value >= 19 then
Attack = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 4
end
Char.archivable = true
Clone = Char:clone()
Clone.Parent = workspace
game.Debris:AddItem(Clone,2)
Humanoid.WalkSpeed = 60
 
for i, v in pairs(Char:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
if v:FindFirstChild("Fire") ~= nil then
v.Fire.Parent = script
end
end
end
 
for i, v in pairs(Weapon:GetChildren()) do
v.Transparency = 1
end
 
wait(2)
Humanoid.WalkSpeed = 16     
 
for i, v in pairs(Char:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
if script:FindFirstChild("Fire") ~= nil then
script.Fire.Parent = Torso
end
end
end
 
for i, v in pairs(Weapon:GetChildren()) do
v.Transparency = 0
end
 
Attack = false
end
end
 
function Barrier()
if Attack == false and Player.Name == "sora9003" then
Attack = true
Base = Instance.new("Part")
Base.BrickColor = BrickColor.new("Institutional white")
Base.Transparency = 0.4
Base.FormFactor = "Custom"
Base.Size = Vector3.new(512,1,512)
Base.Anchored = true
Base.TopSurface = 0
Base.BottomSurface = 0
Base.CFrame = Torso.CFrame * CFrame.new(0,-3,-250)
Base.Name = "Base"
Base.Parent = Weapon
Side = Base:clone()
Side.Size = Vector3.new(512,100,1)
Side.CFrame = Base.CFrame * CFrame.new(0,50,250)
Side.Parent = Weapon
Side2 = Base:clone()
Side2.Size = Vector3.new(512,100,1)
Side2.CFrame = Base.CFrame * CFrame.new(0,50,-250)
Side2.Parent = Weapon
Side3 = Base:clone()
Side3.Size = Vector3.new(1,100,512)
Side3.CFrame = Base.CFrame * CFrame.new(250,50,0)
Side3.Parent = Weapon
Side4 = Base:clone()
Side4.Size = Vector3.new(1,100,512)
Side4.CFrame = Base.CFrame * CFrame.new(-250,50,0)
Side4.Parent = Weapon
Base2 = Base:clone()
Base2.CFrame = Base.CFrame * CFrame.new(0,50,0)
Base2.Parent = Weapon
Attack = false
end
end
 
function Release()
if Attack == false then
Attack = true
 
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Base" then
v:remove()
end
end
 
Attack = false
end
end
 
function RightKick()
if Attack == false then
Attack = true
Damage = Instance.new("Part")
Damage.Transparency = 1
Damage.FormFactor = "Custom"
Damage.Size = Vector3.new(RightLeg.Size.x,RightLeg.Size.y,RightLeg.Size.z)
Damage.TopSurface = 0
Damage.BottomSurface = 0
Damage.Name = "Damage"
Damage.Parent = RightLeg
Weld = Instance.new("Weld")
Weld.Part0 = RightLeg
Weld.Part1 = Damage
Weld.Parent = Damage
game.Debris:AddItem(Damage,1)
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil then
Human:TakeDamage(2)
Human.Sit = true
end
end
Damage.Touched:connect(onTouched)
 
for i=1, 8 do
wait(0.01)
RightHip.C0 = RightHip.C0 * CFrame.Angles(0,0,0.2)
end
for i=1, 8 do
wait(0.01)
RightHip.C0 = RightHip.C0 * CFrame.Angles(0,0,-0.2)
end
RightHip.C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.pi/2,0)
Attack = false
end
end
 
function LeftKick()
if Attack == false then
Attack = true
Damage = Instance.new("Part")
Damage.Transparency = 1
Damage.FormFactor = "Custom"
Damage.Size = Vector3.new(LeftLeg.Size.x,LeftLeg.Size.y,LeftLeg.Size.z)
Damage.TopSurface = 0
Damage.BottomSurface = 0
Damage.Name = "Damage"
Damage.Parent = LeftLeg
Weld = Instance.new("Weld")
Weld.Part0 = LeftLeg
Weld.Part1 = Damage
Weld.Parent = Damage
game.Debris:AddItem(Damage,1)
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil then
Human:TakeDamage(2)
Human.Sit = true
end
end
Damage.Touched:connect(onTouched)
 
for i=1, 8 do
wait(0.01)
LeftHip.C0 = LeftHip.C0 * CFrame.Angles(0,0,-0.2)
end
for i=1, 8 do
wait(0.01)
LeftHip.C0 = LeftHip.C0 * CFrame.Angles(0,0,0.2)
end
LeftHip.C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.pi/-2,0)
Attack = false
end
end
 
function LeftPunch()
if Attack == false then
Attack = true
Damage = Instance.new("Part")
Damage.Transparency = 1
Damage.FormFactor = "Custom"
Damage.Size = Vector3.new(LeftArm.Size.x,LeftArm.Size.y,LeftArm.Size.z)
Damage.TopSurface = 0
Damage.BottomSurface = 0
Damage.Name = "Damage"
Damage.Parent = LeftArm
Weld = Instance.new("Weld")
Weld.Part0 = LeftArm
Weld.Part1 = Damage
Weld.Parent = Damage
game.Debris:AddItem(Damage,1)
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil then
Human:TakeDamage(2)
Human.Sit = true
end
end
Damage.Touched:connect(onTouched)
 
for i=1, 8 do
wait(0.01)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(0,0,-0.2)
end
for i=1, 8 do
wait(0.01)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(0,0,0.2)
end
LeftShoulder.C0 = CFrame.new(-1,0.5,0) * CFrame.Angles(0,math.pi/-2,-0)
Attack = false
end
end
 
function ThrowShuriken()
if Attack == false then
Attack = true
Bullet = Instance.new("Part")
Bullet.BrickColor = BrickColor.new("Black")
Bullet.FormFactor = "Custom"
Bullet.Size = Vector3.new(2,0.2,2)
Bullet.TopSurface = 0
Bullet.BottomSurface = 0
Bullet.CFrame = Head.CFrame * CFrame.new(0,0,-2)
Bullet.Name = "Bullet"
Bullet.Parent = workspace
Mesh = Instance.new("SpecialMesh")
Mesh.MeshId = "http://www.roblox.com/asset/?id=11376946"
Mesh.Scale = Vector3.new(2,2,2)
Mesh.Parent = Bullet
Spot = Instance.new("Part")
Spot.CFrame = Head.CFrame * CFrame.new(0,0,-100)
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Bullet.CFrame
Bg.Parent = Bullet
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.position = Spot.Position
Bp.P = 5000
Bp.Parent = Bullet
game.Debris:AddItem(Bullet,5)
Effect = Instance.new("Part")
Effect.BrickColor = BrickColor.new("Institutional white")
Effect.Transparency = 0.9
Effect.FormFactor = "Custom"
Effect.Size = Vector3.new(0.2,0.2,0.2)
Effect.CanCollide = false
Effect.TopSurface = 0
Effect.BottomSurface = 0
Effect.Name = "Effect"
Effect.Parent = Bullet
Mesh = Cylinder:clone()
Mesh.Scale = Vector3.new(10,0.2,10)
Mesh.Parent = Effect
Weld = Instance.new("Weld")
Weld.Part0 = Bullet
Weld.Part1 = Effect
Weld.Parent = Effect
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Human.Parent.Name ~= Player.Name then
Human:TakeDamage(0.5)
end
end
Bullet.Touched:connect(onTouched)
 
Attack = false
end
end
 
function Moded()
if Attack == false and Humanoid.Health <= 50 and Mode == false then
Attack = true
Mode = true
Chakra.Value = MaxChakra.Value
Humanoid.Health = Humanoid.MaxHealth
Fire = Instance.new("Fire")
Fire.Color = BrickColor.new("Bright yellow").Color
Fire.SecondaryColor = Fire.Color
Fire.Size = 8
Fire.Parent = Torso
Attack = false
end
end
 
function Teleport()
if Attack == false and Chakra.Value >= 29 then
Attack = true
Time = 2
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 6
end
Kunai = Instance.new("Part")
Kunai.BrickColor = BrickColor.new("Black")
Kunai.FormFactor = "Custom"
Kunai.Size = Vector3.new(0.2,0.2,1)
Kunai.TopSurface = 0
Kunai.BottomSurface = 0
Kunai.CFrame = Torso.CFrame * CFrame.new(0,0,-1)
Kunai.Name = "Kunai"
Kunai.Parent = Weapon
Mesh = Instance.new("SpecialMesh")
Mesh.MeshId = "rbxasset://fonts/sword.mesh"
Mesh.Scale = Vector3.new(0.4,0.4,0.2)
Mesh.Parent = Kunai
Spot = Instance.new("Part")
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-40)
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.P = 16000
Bp.position = Spot.Position
Bp.Parent = Kunai
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Torso.CFrame
Bg.Parent = Kunai
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Human.Parent.Name ~= Player.Name then
Human:TakeDamage(5)
end
end
Kunai.Touched:connect(onTouched)
 
function onTouched(hit)
Bg.cframe = hit.CFrame
Time = Time + 0.2
wait(0.1)
Spot.CFrame = Kunai.CFrame * CFrame.new(0,0,-40)
Bp.position = Spot.Position
end
Kunai.Touched:connect(onTouched)
 
function onTouched(hit)
if hit.Name == "Frog" then
Bpf = Instance.new("BodyPosition")
Bpf.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Spot.CFrame = Kunai.CFrame * CFrame.new(0,0,-100)
Bpf.position = Spot.Position
Bpf.Parent = hit
game.Debris:AddItem(Bpf,1)
end
end
Kunai.Touched:connect(onTouched)
 
for i=1, 10 do
OldPos = Kunai.Position
wait(Time/100)
NewPos = Kunai.Position
Dist = (OldPos - NewPos).magnitude
Ray = Instance.new("Part")
Ray.BrickColor = BrickColor.new("Bright yellow")
Ray.FormFactor = "Custom"
Ray.Size = Vector3.new(0.2,0.2,Dist)
Ray.CanCollide = false
Ray.Anchored = true
Ray.TopSurface = 0
Ray.BottomSurface = 0
Ray.CFrame = CFrame.new(OldPos,NewPos) * CFrame.new(0,0,-Dist/2)
Ray.Name = "Ray"
Ray.Parent = workspace
Mesh = Block:clone()
Mesh.Parent = Ray
game.Debris:AddItem(Ray,1)
Bp.position = Bp.position + Vector3.new(0,-2,0)
end
 
Char:MoveTo(Kunai.Position)
 
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Kunai" then
v:remove()
end
end
 
Attack = false
end
end
 
function NormRasengan()
if Attack == false and Chakra.Value >= 199 then
Attack = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 40
end
RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/2,math.rad(90))
Rasengan = Instance.new("Part")
Rasengan.BrickColor = BrickColor.new("Bright bluish green")
Rasengan.Transparency = 0.4
Rasengan.FormFactor = "Custom"
Rasengan.Shape = "Ball"
Rasengan.Size = Vector3.new(2,2,2)
Rasengan.TopSurface = 0
Rasengan.BottomSurface = 0
Rasengan.Name = "Rasengan"
Rasengan.Parent = Weapon
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(0,0,0)
Mesh.Parent = Rasengan
Weld = Instance.new("Weld")
Weld.Part0 = RightArm
Weld.Part1 = Rasengan
Weld.C0 = CFrame.new(0,-1.4,0)
Weld.Parent = Rasengan
Humanoid.WalkSpeed = 60
 
for i=1, 10 do
wait(0.2)
Mesh.Scale = Mesh.Scale + Vector3.new(0.1,0.1,0.1)
end
 
game.Debris:AddItem(Rasengan,6)
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Human.Parent.Name ~= Player.Name and Rasenganing == false then
Rasenganing = true
Weld.Part0 = hit
for i=1, 10 do
wait()
Chakra.Value = Chakra.Value - 5
Human:TakeDamage(4)
Human.Sit = true
Mesh.Scale = Mesh.Scale + Vector3.new(1,1,1)
end
Rasenganing = false
Humanoid.WalkSpeed = 16
Attack = false
RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/2,0)
end
end
Rasengan.Touched:connect(onTouched)
 
wait(6)
Rasenganing = false
Humanoid.WalkSpeed = 16
Attack = false
RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/2,0)
Attack = false
end
end
 
function GiantRasengan()
if Attack == false and Chakra.Value >= 199 then
Attack = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 40
end
RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/2,math.rad(90))
Rasengan = Instance.new("Part")
Rasengan.BrickColor = BrickColor.new("Bright bluish green")
Rasengan.Transparency = 0.4
Rasengan.FormFactor = "Custom"
Rasengan.Shape = "Ball"
Rasengan.Size = Vector3.new(2,2,2)
Rasengan.TopSurface = 0
Rasengan.BottomSurface = 0
Rasengan.Name = "Rasengan"
Rasengan.Parent = Weapon
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(0,0,0)
Mesh.Parent = Rasengan
Weld = Instance.new("Weld")
Weld.Part0 = RightArm
Weld.Part1 = Rasengan
Weld.C0 = CFrame.new(0,-1.8,0)
Weld.Parent = Rasengan
Humanoid.WalkSpeed = 60
 
for i=1, 20 do
wait(0.1)
Mesh.Scale = Mesh.Scale + Vector3.new(0.1,0.1,0.1)
end
 
game.Debris:AddItem(Rasengan,6)
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Human.Parent.Name ~= Player.Name and Rasenganing == false then
Rasenganing = true
Weld.Part0 = hit
for i=1, 10 do
wait()
Chakra.Value = Chakra.Value - 5
Human:TakeDamage(8)
Human.Sit = true
Mesh.Scale = Mesh.Scale + Vector3.new(1,1,1)
end
Rasenganing = false
Humanoid.WalkSpeed = 16
Attack = false
RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/2,0)
end
end
Rasengan.Touched:connect(onTouched)
 
wait(6)
Rasenganing = false
Humanoid.WalkSpeed = 16
Attack = false
RightShoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,math.pi/2,0)
Attack = false
end
end
 
function Toad()
if Attack == false and Chakra.Value >= 99 then
Attack = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 20
end
Frog = Instance.new("Part")
Frog.FormFactor = "Custom"
Frog.Size = Vector3.new(8,4,8)
Frog.TopSurface = 0
Frog.BottomSurface = 0
Frog.CFrame = Torso.CFrame * CFrame.new(0,0,-8)
Frog.Name = "Frog"
Frog.Parent = workspace
Mesh = Instance.new("SpecialMesh")
Mesh.MeshId = "http://www.roblox.com/asset/?id=37223966"
Mesh.Scale = Vector3.new(8,8,8)
Mesh.TextureId = "http://www.roblox.com/asset/?id=37223964"
Mesh.Parent = Frog
game.Debris:AddItem(Frog,6)
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Human.Parent.Name ~= Player.Name then
Human.Sit = true
Human:TakeDamage(4)
end
end
Frog.Touched:connect(onTouched)
 
Attack = false
end
end
 
function onKeyDown(key)
key:lower()
if key == "m" then
Jump()
elseif key == "n" then
Substitution()
elseif key == "g" then
Dash()
elseif key == "f" then
ChakraRestore()
elseif key == "k" then
ThrowShuriken()
elseif key == "v" then
ShadowClone()
elseif key == "q" then
Barrier()
elseif key == "e" then
Release()
elseif key == "y" then
RightKick()
elseif key == "u" then
LeftKick()
elseif key == "h" then
LeftPunch()
elseif key == "s" then
Moded()
elseif key == "z" then
Teleport()
elseif key == "x" then
NormRasengan()
elseif key == "c" then
GiantRasengan()
elseif key == "b" then
Toad()
end
end
 
function onSelected(mouse)
mouse.KeyDown:connect(onKeyDown)
script.Parent = Char
Minato:remove()
end
script.Parent.Selected:connect(onSelected)
 
Spawn(function()
while true do
wait()
BarTracking.Size = UDim2.new(1,0,Chakra.Value/MaxChakra.Value,0)
end
end)
 
Ramen.MouseButton1Click:connect(function()
Humanoid.Health = Humanoid.Health + 60
Ramen.Parent = script
wait(60)
Ramen.Parent = Gui
end)
 
Pill.MouseButton1Click:connect(function()
Chakra.Value = MaxChakra.Value
Pill.Parent = script
wait(60)
Pill.Parent = Gui
end)
 
Bomb.MouseButton1Click:connect(function()
Part = Instance.new("Part")
Part.BrickColor = BrickColor.new("Pastel brown")
Part.FormFactor = "Custom"
Part.Shape = "Ball"
Part.Size = Vector3.new(2,2,2)
Part.TopSurface = 0
Part.BottomSurface = 0
Part.CFrame = Torso.CFrame * CFrame.new(0,0,-5)
Part.Name = "Bomb"
Part.Parent = workspace
Smoke = Instance.new("Smoke")
Smoke.Color = BrickColor.new("Black").Color
Smoke.Size = math.huge
Smoke.Opacity = 1
Smoke.Parent = Part
game.Debris:AddItem(Part,6)
Bomb.Parent = script
wait(30)
Bomb.Parent = Gui
end)
 
GShuriken.MouseButton1Click:connect(function()
Shuriken = Instance.new("Part")
Shuriken.BrickColor = BrickColor.new("Black")
Shuriken.FormFactor = "Custom"
Shuriken.Size = Vector3.new(4,0.2,4)
Shuriken.TopSurface = 0
Shuriken.BottomSurface = 0
Shuriken.CFrame = Torso.CFrame * CFrame.new(0,0,-5)
Shuriken.Name = "Shuriken"
Shuriken.Parent = workspace
Mesh = Instance.new("SpecialMesh")
Mesh.MeshId = "http://www.roblox.com/asset/?id=11376946"
Mesh.Scale = Vector3.new(4,1,4)
Mesh.Parent = Shuriken
Spot = Instance.new("Part")
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-200)
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.P = 600
Bp.position = Spot.Position
Bp.Parent = Shuriken
game.Debris:AddItem(Shuriken,4)
 
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil then
Human:TakeDamage(1)
for i=1, 100 do
wait(0.01)
Shuriken.CFrame = hit.CFrame
end
end
end
Shuriken.Touched:connect(onTouched)
 
function onTouched(hit)
for i=1, 100 do
wait(0.01)
Shuriken.CFrame = hit.Cframe
end
end
Shuriken.Touched:connect(onTouched)
 
GShuriken.Parent = script
wait(60)
GShuriken.Parent = Gui
end)
 
--password
 