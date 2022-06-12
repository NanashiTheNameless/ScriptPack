--hsoundmadara
Player = game:GetService("Players").LocalPlayer
Cha = Player.Character
normal = false
rinnengan = true
regular = false
sharingan = true
sagemode = true
ama = false
susanoo = false
susanoo2 = true
amablo = false
firee = false
firee2 = false
Defense = false
bans = false
wind = false
equip = true
mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:connect(function()

if (not vDebounce) and unlock == false then
vDebounce = true
wa = Instance.new("Part",Char)
wa.Transparency=1
wa.CanCollide = false 
wa.Size = Vector3.new(1, 1, 1) 
wa:BreakJoints() 
Weld3 = Instance.new("Weld",wa) 
Weld3.Part0 = Bar
Weld3.Part1 = wa
Weld3.C0 = CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 0)

wa:remove()

vDebounce = false


end
end)



Bar = Instance.new("Part",Cha)
Bar.TopSurface = "Smooth"
Bar.BottomSurface = "Smooth"
Bar.FormFactor = "Custom"
Bar.Size = Vector3.new(1,1,1)
Bar.CanCollide = True
Bar.BrickColor = BrickColor.new("Really black")
BarMesh = Instance.new("SpecialMesh", Bar)
BarMesh.MeshType = "Cylinder"
BarMesh.Scale = Vector3.new(1, 1, 0.4)
BarWeld = Instance.new("Weld",Cha)
BarWeld.Part0 = Cha.Torso
BarWeld.Part1 = Bar
BarWeld.C1 = CFrame.new(-3, 0, -0.7)*CFrame.fromEulerAnglesXYZ(0, 0, -1)

Bar2 = Instance.new("Part",Cha)
Bar2.TopSurface = "Smooth"
Bar2.BottomSurface = "Smooth"
Bar2.FormFactor = "Custom"
Bar2.Size = Vector3.new(3,1,1)
Bar2.CanCollide = True
Bar2.BrickColor = BrickColor.new("Bright orange")
Bar2Mesh = Instance.new("SpecialMesh", Bar2)
Bar2Mesh.MeshType = "Cylinder"
Bar2Mesh.Scale = Vector3.new(3, 1, 0.3)
Bar2Weld = Instance.new("Weld",Cha)
Bar2Weld.Part0 = Bar
Bar2Weld.Part1 = Bar2
Bar2Weld.C1 = CFrame.new(2.2, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Bar3 = Instance.new("Part",Cha)
Bar3.TopSurface = "Smooth"
Bar3.BottomSurface = "Smooth"
Bar3.FormFactor = "Custom"
Bar3.Size = Vector3.new(1,1,1)
Bar3.CanCollide = True
Bar3.BrickColor = BrickColor.new("Really black")
Bar3Mesh = Instance.new("SpecialMesh", Bar3)
Bar3Mesh.MeshType = "Cylinder"
Bar3Mesh.Scale = Vector3.new(0.1, 1, 0.4)
Bar3Weld = Instance.new("Weld",Cha)
Bar3Weld.Part0 = Bar
Bar3Weld.Part1 = Bar3
Bar3Weld.C1 = CFrame.new(-2.3, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Bar4 = Instance.new("Part",Cha)
Bar4.TopSurface = "Smooth"
Bar4.BottomSurface = "Smooth"
Bar4.FormFactor = "Custom"
Bar4.Size = Vector3.new(0.8,2.8,2.8)
Bar4.CanCollide = True
Bar4.BrickColor = BrickColor.new("Bright orange")
Bar4Mesh = Instance.new("SpecialMesh", Bar4)
Bar4Mesh.MeshType = "Cylinder"
Bar4Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar4Weld = Instance.new("Weld",Cha)
Bar4Weld.Part0 = Bar
Bar4Weld.Part1 = Bar4
Bar4Weld.C1 = CFrame.new(0.02, 0, -3)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar5 = Instance.new("Part",Cha)
Bar5.TopSurface = "Smooth"
Bar5.BottomSurface = "Smooth"
Bar5.FormFactor = "Custom"
Bar5.Size = Vector3.new(0.8,3,3)
Bar5.CanCollide = True
Bar5.BrickColor = BrickColor.new("Bright orange")
Bar5Mesh = Instance.new("SpecialMesh", Bar5)
Bar5Mesh.MeshType = "Cylinder"
Bar5Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar5Weld = Instance.new("Weld",Cha)
Bar5Weld.Part0 = Bar
Bar5Weld.Part1 = Bar5
Bar5Weld.C1 = CFrame.new(0.02, 0, -5)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar6 = Instance.new("Part",Cha)
Bar6.TopSurface = "Smooth"
Bar6.BottomSurface = "Smooth"
Bar6.FormFactor = "Custom"
Bar6.Size = Vector3.new(0.7,2.9,2.9)
Bar6.CanCollide = True
Bar6.BrickColor = BrickColor.new("Really black")
Bar6Mesh = Instance.new("SpecialMesh", Bar6)
Bar6Mesh.MeshType = "Cylinder"
Bar6Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar6Weld = Instance.new("Weld",Cha)
Bar6Weld.Part0 = Bar
Bar6Weld.Part1 = Bar6
Bar6Weld.C1 = CFrame.new(0.02, 0, -3)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar7 = Instance.new("Part",Cha)
Bar7.TopSurface = "Smooth"
Bar7.BottomSurface = "Smooth"
Bar7.FormFactor = "Custom"
Bar7.Size = Vector3.new(0.7,3.1,3.1)
Bar7.CanCollide = True
Bar7.BrickColor = BrickColor.new("Really black")
Bar7Mesh = Instance.new("SpecialMesh", Bar7)
Bar7Mesh.MeshType = "Cylinder"
Bar7Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar7Weld = Instance.new("Weld",Cha)
Bar7Weld.Part0 = Bar
Bar7Weld.Part1 = Bar7
Bar7Weld.C1 = CFrame.new(0.02, 0, -5)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar8 = Instance.new("Part",Cha)
Bar8.TopSurface = "Smooth"
Bar8.BottomSurface = "Smooth"
Bar8.FormFactor = "Custom"
Bar8.Size = Vector3.new(1,1,1)
Bar8.CanCollide = True
Bar8.BrickColor = BrickColor.new("Really black")
Bar8Mesh = Instance.new("SpecialMesh", Bar8)
Bar8Mesh.MeshType = "Cylinder"
Bar8Mesh.Scale = Vector3.new(0.1, 1, 0.4)
Bar8Weld = Instance.new("Weld",Cha)
Bar8Weld.Part0 = Bar
Bar8Weld.Part1 = Bar8
Bar8Weld.C1 = CFrame.new(6.7, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Bar9 = Instance.new("Part",Cha)
Bar9.TopSurface = "Smooth"
Bar9.BottomSurface = "Smooth"
Bar9.FormFactor = "Custom"
Bar9.Size = Vector3.new(0.9,0.3,0.3)
Bar9.CanCollide = True
Bar9.BrickColor = BrickColor.new("Bright red")
Bar9Mesh = Instance.new("SpecialMesh", Bar9)
Bar9Mesh.MeshType = "Cylinder"
Bar9Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar9Weld = Instance.new("Weld",Cha)
Bar9Weld.Part0 = Bar
Bar9Weld.Part1 = Bar9
Bar9Weld.C1 = CFrame.new(0.02, 0.5, -5)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar10 = Instance.new("Part",Cha)
Bar10.TopSurface = "Smooth"
Bar10.BottomSurface = "Smooth"
Bar10.FormFactor = "Custom"
Bar10.Size = Vector3.new(0.9,0.3,0.3)
Bar10.CanCollide = True
Bar10.BrickColor = BrickColor.new("Bright red")
Bar10Mesh = Instance.new("SpecialMesh", Bar10)
Bar10Mesh.MeshType = "Cylinder"
Bar10Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar10Weld = Instance.new("Weld",Cha)
Bar10Weld.Part0 = Bar
Bar10Weld.Part1 = Bar10
Bar10Weld.C1 = CFrame.new(0.02, 0.9, -4.8)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar11 = Instance.new("Part",Cha)
Bar11.TopSurface = "Smooth"
Bar11.BottomSurface = "Smooth"
Bar11.FormFactor = "Custom"
Bar11.Size = Vector3.new(0.9,0.3,0.3)
Bar11.CanCollide = True
Bar11.BrickColor = BrickColor.new("Bright red")
Bar11Mesh = Instance.new("SpecialMesh", Bar11)
Bar11Mesh.MeshType = "Cylinder"
Bar11Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar11Weld = Instance.new("Weld",Cha)
Bar11Weld.Part0 = Bar
Bar11Weld.Part1 = Bar11
Bar11Weld.C1 = CFrame.new(0.02, 0.9, -5.2)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar12 = Instance.new("Part",Cha)
Bar12.TopSurface = "Smooth"
Bar12.BottomSurface = "Smooth"
Bar12.FormFactor = "Custom"
Bar12.Size = Vector3.new(0.9,0.3,0.3)
Bar12.CanCollide = True
Bar12.BrickColor = BrickColor.new("Bright red")
Bar12Mesh = Instance.new("SpecialMesh", Bar12)
Bar12Mesh.MeshType = "Cylinder"
Bar12Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar12Weld = Instance.new("Weld",Cha)
Bar12Weld.Part0 = Bar
Bar12Weld.Part1 = Bar12
Bar12Weld.C1 = CFrame.new(0.02, -0.9, -5)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar13 = Instance.new("Part",Cha)
Bar13.TopSurface = "Smooth"
Bar13.BottomSurface = "Smooth"
Bar13.FormFactor = "Custom"
Bar13.Size = Vector3.new(0.9,0.3,0.3)
Bar13.CanCollide = True
Bar13.BrickColor = BrickColor.new("Bright red")
Bar13Mesh = Instance.new("SpecialMesh", Bar13)
Bar13Mesh.MeshType = "Cylinder"
Bar13Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar13Weld = Instance.new("Weld",Cha)
Bar13Weld.Part0 = Bar
Bar13Weld.Part1 = Bar13
Bar13Weld.C1 = CFrame.new(0.02, -0.5, -4.8)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar14 = Instance.new("Part",Cha)
Bar14.TopSurface = "Smooth"
Bar14.BottomSurface = "Smooth"
Bar14.FormFactor = "Custom"
Bar14.Size = Vector3.new(0.9,0.3,0.3)
Bar14.CanCollide = True
Bar14.BrickColor = BrickColor.new("Bright red")
Bar14Mesh = Instance.new("SpecialMesh", Bar14)
Bar14Mesh.MeshType = "Cylinder"
Bar14Mesh.Scale = Vector3.new(0.2, 1, 3)
Bar14Weld = Instance.new("Weld",Cha)
Bar14Weld.Part0 = Bar
Bar14Weld.Part1 = Bar14
Bar14Weld.C1 = CFrame.new(0.02, -0.5, -5.2)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)

Bar15 = Instance.new("Part",Cha)
Bar15.TopSurface = "Smooth"
Bar15.BottomSurface = "Smooth"
Bar15.FormFactor = "Custom"
Bar15.Size = Vector3.new(1,1,1)
Bar15.CanCollide = True
Bar15.BrickColor = BrickColor.new("Bright red")
Bar15Mesh = Instance.new("SpecialMesh", Bar15)
Bar15Mesh.MeshType = "Wedge"
Bar15Mesh.Scale = Vector3.new(0.18, 0.2, 0.3)
Bar15Weld = Instance.new("Weld",Cha)
Bar15Weld.Part0 = Bar12
Bar15Weld.Part1 = Bar15
Bar15Weld.C1 = CFrame.new(0, -0.05, 0.2)*CFrame.fromEulerAnglesXYZ(-0.8, 0, 0)

Bar16 = Instance.new("Part",Cha)
Bar16.TopSurface = "Smooth"
Bar16.BottomSurface = "Smooth"
Bar16.FormFactor = "Custom"
Bar16.Size = Vector3.new(1,1,1)
Bar16.CanCollide = True
Bar16.BrickColor = BrickColor.new("Bright red")
Bar16Mesh = Instance.new("SpecialMesh", Bar16)
Bar16Mesh.MeshType = "Wedge"
Bar16Mesh.Scale = Vector3.new(0.18, 0.2, 0.3)
Bar16Weld = Instance.new("Weld",Cha)
Bar16Weld.Part0 = Bar13
Bar16Weld.Part1 = Bar16
Bar16Weld.C1 = CFrame.new(0, -0.05, 0.2)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)

Bar17 = Instance.new("Part",Cha)
Bar17.TopSurface = "Smooth"
Bar17.BottomSurface = "Smooth"
Bar17.FormFactor = "Custom"
Bar17.Size = Vector3.new(1,1,1)
Bar17.CanCollide = True
Bar17.BrickColor = BrickColor.new("Bright red")
Bar17Mesh = Instance.new("SpecialMesh", Bar17)
Bar17Mesh.MeshType = "Wedge"
Bar17Mesh.Scale = Vector3.new(0.18, 0.2, 0.3)
Bar17Weld = Instance.new("Weld",Cha)
Bar17Weld.Part0 = Bar14
Bar17Weld.Part1 = Bar17
Bar17Weld.C1 = CFrame.new(0, -0.05, 0.2)*CFrame.fromEulerAnglesXYZ(3.4, 0, 0)

Bar18 = Instance.new("Part",Cha)
Bar18.TopSurface = "Smooth"
Bar18.BottomSurface = "Smooth"
Bar18.FormFactor = "Custom"
Bar18.Size = Vector3.new(1,1,1)
Bar18.CanCollide = True
Bar18.BrickColor = BrickColor.new("Bright red")
Bar18Mesh = Instance.new("SpecialMesh", Bar18)
Bar18Mesh.MeshType = "Wedge"
Bar18Mesh.Scale = Vector3.new(0.18, 0.2, 0.3)
Bar18Weld = Instance.new("Weld",Cha)
Bar18Weld.Part0 = Bar9
Bar18Weld.Part1 = Bar18
Bar18Weld.C1 = CFrame.new(0, -0.05, 0.2)*CFrame.fromEulerAnglesXYZ(-0.8, 0, 0)

Bar19 = Instance.new("Part",Cha)
Bar19.TopSurface = "Smooth"
Bar19.BottomSurface = "Smooth"
Bar19.FormFactor = "Custom"
Bar19.Size = Vector3.new(1,1,1)
Bar19.CanCollide = True
Bar19.BrickColor = BrickColor.new("Bright red")
Bar19Mesh = Instance.new("SpecialMesh", Bar19)
Bar19Mesh.MeshType = "Wedge"
Bar19Mesh.Scale = Vector3.new(0.18, 0.2, 0.3)
Bar19Weld = Instance.new("Weld",Cha)
Bar19Weld.Part0 = Bar10
Bar19Weld.Part1 = Bar19
Bar19Weld.C1 = CFrame.new(0, -0.05, 0.2)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)

Bar20 = Instance.new("Part",Cha)
Bar20.TopSurface = "Smooth"
Bar20.BottomSurface = "Smooth"
Bar20.FormFactor = "Custom"
Bar20.Size = Vector3.new(1,1,1)
Bar20.CanCollide = True
Bar20.BrickColor = BrickColor.new("Bright red")
Bar20Mesh = Instance.new("SpecialMesh", Bar20)
Bar20Mesh.MeshType = "Wedge"
Bar20Mesh.Scale = Vector3.new(0.18, 0.2, 0.3)
Bar20Weld = Instance.new("Weld",Cha)
Bar20Weld.Part0 = Bar11
Bar20Weld.Part1 = Bar20
Bar20Weld.C1 = CFrame.new(0, -0.05, 0.2)*CFrame.fromEulerAnglesXYZ(3.4, 0, 0)

function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end

mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" then
equip = false
BarWeld.Part0 = Cha["Right Arm"]
BarWeld.Part1 = Bar
BarWeld.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
end
if key == "q" then
equip = true
BarWeld.Part0 = Cha.Torso
BarWeld.Part1 = Bar
BarWeld.C1 = CFrame.new(-3, 0, -0.7)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
end

if key == "y" and sharingan == false then
Chat(Cha.Head,"Rinnengan...!","Really black")
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=139460206"
sharingan = true
normal = true
rinnengan = false
sagemode = false
regular = false
end

if key == "t" and normal == false then
Chat(Cha.Head,"Eternal Mangekyou Sharingan...!","Really black")
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=139459190"
sharingan = false
normal = true
rinnengan = true
regular = true
end

if key == "r" and regular == false then
Chat(Cha.Head,"Hmm...","Really black")
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=29291814"
rinnengan = true
sharingan = true
normal = false
end

if key == "p" and sagemode == false then
Chat(Cha.Head,"I HAVE OBTAINED SAGE OF THE SIX PATHS POWER!","Really black")
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=139509430"
sharingan = true
rinnengan = true
sagemode = false
normal = true

Sphere = Instance.new("Part",Cha)
Sphere.TopSurface = "Smooth"
Sphere.BottomSurface = "Smooth"
Sphere.FormFactor = "Custom"
Sphere.Size = Vector3.new(1,1,1)
Sphere.CanCollide = True
Sphere.BrickColor = BrickColor.new("Really black")
SphereMesh = Instance.new("SpecialMesh", Sphere)
SphereMesh.MeshType = "Sphere"
SphereMesh.Scale = Vector3.new(1,1,1)
SphereWeld = Instance.new("Weld",Cha)
SphereWeld.Part0 = Cha.Torso
SphereWeld.Part1 = Sphere
SphereWeld.C1 = CFrame.new(3, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Sphere2 = Instance.new("Part",Cha)
Sphere2.TopSurface = "Smooth"
Sphere2.BottomSurface = "Smooth"
Sphere2.FormFactor = "Custom"
Sphere2.Size = Vector3.new(1,1,1)
Sphere2.CanCollide = True
Sphere2.BrickColor = BrickColor.new("Really black")
Sphere2Mesh = Instance.new("SpecialMesh", Sphere2)
Sphere2Mesh.MeshType = "Sphere"
Sphere2Mesh.Scale = Vector3.new(1,1,1)
Sphere2Weld = Instance.new("Weld",Cha)
Sphere2Weld.Part0 = Cha.Torso
Sphere2Weld.Part1 = Sphere2
Sphere2Weld.C1 = CFrame.new(-3, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Sphere3 = Instance.new("Part",Cha)
Sphere3.TopSurface = "Smooth"
Sphere3.BottomSurface = "Smooth"
Sphere3.FormFactor = "Custom"
Sphere3.Size = Vector3.new(1,1,1)
Sphere3.CanCollide = True
Sphere3.BrickColor = BrickColor.new("Really black")
Sphere3Mesh = Instance.new("SpecialMesh", Sphere3)
Sphere3Mesh.MeshType = "Sphere"
Sphere3Mesh.Scale = Vector3.new(1,1,1)
Sphere3Weld = Instance.new("Weld",Cha)
Sphere3Weld.Part0 = Cha.Torso
Sphere3Weld.Part1 = Sphere3
Sphere3Weld.C1 = CFrame.new(-2, -2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Sphere4 = Instance.new("Part",Cha)
Sphere4.TopSurface = "Smooth"
Sphere4.BottomSurface = "Smooth"
Sphere4.FormFactor = "Custom"
Sphere4.Size = Vector3.new(1,1,1)
Sphere4.CanCollide = True
Sphere4.BrickColor = BrickColor.new("Really black")
Sphere4Mesh = Instance.new("SpecialMesh", Sphere4)
Sphere4Mesh.MeshType = "Sphere"
Sphere4Mesh.Scale = Vector3.new(1,1,1)
Sphere4Weld = Instance.new("Weld",Cha)
Sphere4Weld.Part0 = Cha.Torso
Sphere4Weld.Part1 = Sphere4
Sphere4Weld.C1 = CFrame.new(2, -2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Sphere5 = Instance.new("Part",Cha)
Sphere5.TopSurface = "Smooth"
Sphere5.BottomSurface = "Smooth"
Sphere5.FormFactor = "Custom"
Sphere5.Size = Vector3.new(1,1,1)
Sphere5.CanCollide = True
Sphere5.BrickColor = BrickColor.new("Really black")
Sphere5Mesh = Instance.new("SpecialMesh", Sphere5)
Sphere5Mesh.MeshType = "Sphere"
Sphere5Mesh.Scale = Vector3.new(1,1,1)
Sphere5Weld = Instance.new("Weld",Cha)
Sphere5Weld.Part0 = Cha.Torso
Sphere5Weld.Part1 = Sphere5
Sphere5Weld.C1 = CFrame.new(0, -4, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


end

if key == "f" and ama == false and sharingan == false then
Chat(Cha.Head,"Amaterasu","Really black")
ama = true
torso = Player.Character.Torso
bla=Instance.new('Part',Workspace)
bla.Size=Vector3.new(5,5,5)
bla.BrickColor=BrickColor.new("White")
bla.CanCollide = True
bla.Position=torso.Position+torso.CFrame.lookVector*12
bla.Transparency = 1
bla:BreakJoints()
bv3 = Instance.new('BodyVelocity',bla)  
bv3.maxForce = Vector3.new()*math.huge
bv3.velocity = torso.CFrame.lookVector*500

fire = Instance.new("Fire",bla)
fire.Size = 30
fire.Color = Color3.new(0,0,0)
fire.SecondaryColor = Color3.new(0,0,0)
fire.Enabled = true

fire2 = Instance.new("Fire")
fire2.Size = 30
fire2.Color = Color3.new(0,0,0)
fire2.SecondaryColor = Color3.new(0,0,0)
fire2.Enabled = true


bla.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then

fire2:clone().Parent = hit.Parent:findFirstChild("Torso")

hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
wait(3)
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
wait(3)
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
wait(3)
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
wait(3)
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)

wait(1)
fire2:Destroy()
end
end)
wait(10)
ama = false
end

if key == "h" and Defense == false and equip == false then

Defense = true
Chat(Cha.Head,"Uchiha Reflect...!","Really black")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.6, 0.6, -0.5)
wait(0.03)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.6, 0.6, -0.9)
wait(0.03)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.6, 0.6, -1.3)
wait(0.03)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.6, 0.6, -1.5)
wait(3)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.0, 1.5, 0)
wait(0.5)
wait(4)
Defense = false
end

if key == "g" and amablo == false and sharingan == false then
Chat(Cha.Head,"Amaterasu: Flame Wrapping Fire ","Really black")
amablo = true
Handle2 = Instance.new("Part",Cha)
Handle2.TopSurface = "Smooth"
Handle2.BottomSurface = "Smooth"
Handle2.CanCollide = True
Handle2.BrickColor = BrickColor.new("Navy blue")
Handle2.Reflectance = 0.3
Handle2.Transparency = 0.3
local Handle2Mesh = Instance.new("SpecialMesh",Handle2) 
Handle2Mesh.MeshType = "FileMesh" 
Handle2Mesh.MeshId = "http://www.roblox.com/asset/?id=36780113"
Handle2Mesh.Scale = Vector3.new(10, 10, 10)
WeldHan2 = Instance.new("Weld",Cha)
WeldHan2.Part0 = Cha["Torso"]
WeldHan2.Part1 = Handle2
WeldHan2.C1 = CFrame.new(0, -2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

fire = Instance.new("Fire",Handle)
fire.Size = 30
fire.Color = Color3.new(0,0,0)
fire.SecondaryColor = Color3.new(0,0,0)
fire.Enabled = true

wait(10)

Handle2:destroy()

wait(5)
amablo = false
end

if key == "x" and firee == false and normal == false then
firee = true
torso = Player.Character.Torso

Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)

Chat(Cha.Head,"Fire Release: Great Fireball Jutsu","Really black")

bla=Instance.new('Part',Workspace)
bla.Size=Vector3.new(10,10,10)
bla.BrickColor=BrickColor.new("Bright orange")
bla.CanCollide = True
bla.Position=torso.Position+torso.CFrame.lookVector*10
bla.Transparency = 0.3
bla:BreakJoints()
bv3 = Instance.new('BodyVelocity',bla)  
bv3.maxForce = Vector3.new()*math.huge
bv3.velocity = torso.CFrame.lookVector*200
blaMesh = Instance.new("SpecialMesh", bla)
blaMesh.MeshType = "Sphere"
blaMesh.Scale = Vector3.new(1,1,1)

bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bv.velocity = torso.CFrame.lookVector*100

bla.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
hit.Parent:FindFirstChild("Humanoid").Sit = true
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 0
e.BlastRadius = 10
ebv = bv:clone()
ebv.Parent = hit.Parent:findFirstChild("Torso")
ebv.Name = "ebv"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "ebv" then
wait(0.5)
v:Destroy()
end
end
bla:Destroy()
end
end)

wait(0.5)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)

wait(5)

firee = false
end

if key == "z" and bans == false and rinnengan == false then
bans = true
torso = Player.Character.Torso

Chat(Cha.Head,"Rinbo: Hengoku","Really black")

Handle = Instance.new("Part",Cha)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Size = Vector3.new(1,1,20)
Handle.CanCollide = True
Handle.Reflectance = 0
Handle.Transparency = 1
WeldHan = Instance.new("Weld",Cha)
WeldHan.Part0 = Cha.Head
WeldHan.Part1 = Handle
WeldHan.C1 = CFrame.new(0, 0, 20)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bv.velocity = torso.CFrame.lookVector*400

Handle.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(50)
Handle:Destroy()
ebv = bv:clone()
ebv.Parent = hit.Parent:findFirstChild("Torso")
ebv.Name = "ebv"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "ebv" then
wait(0.5)
v:Destroy()
end
end
wait(10)
bans = false
end
end)

end

if key == "f" and wind == false and equip == false then
Chat(Cha.Head,"Wind Release Shockwave","Really black")
torso = Player.Character.Torso
wind = true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-2, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-3, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-4, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-3, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-2, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-1, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
wait()


bla2=Instance.new('Part',Workspace)
bla2.Size=Vector3.new(20,20,20)
bla2.CanCollide = True
bla2.Position=torso.Position+torso.CFrame.lookVector*20
bla2.Transparency = 1
bla2:BreakJoints()
bv4 = Instance.new('BodyVelocity',bla2)  
bv4.maxForce = Vector3.new()*math.huge
bv4.velocity = torso.CFrame.lookVector*500
bla2Mesh = Instance.new("SpecialMesh", bla2)
bla2Mesh.MeshType = "Sphere"
bla2Mesh.Scale = Vector3.new(1,1,1)

bv1 = Instance.new("BodyVelocity")
bv1.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bv1.velocity = torso.CFrame.lookVector*400

bla2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
hit.Parent:FindFirstChild("Humanoid").Sit = true
ebv = bv1:clone()
ebv.Parent = hit.Parent:findFirstChild("Torso")
ebv.Name = "ebv"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "ebv" then
wait(0.5)
v:Destroy()
end
end
end
end)

wait(5)
bla2:Destroy()

wait(5)
wind = false
end

if key == "m" and susanoo == false and sharingan == false then
Chat(Cha.Head,"SUSANOO!","Really black")
susanoo = true
normal = true
rinnengan = true
sharingan = true
sagemode = true
Torsoz = Instance.new("Part",Cha)
Torsoz.TopSurface = "Smooth"
Torsoz.BottomSurface = "Smooth"
Torsoz.CanCollide = True
Torsoz.BrickColor = BrickColor.new("Navy blue")
Torsoz.Reflectance = 0.3
Torsoz.Transparency = 0.5
TorsozMesh = Instance.new("SpecialMesh",Torsoz) 
TorsozMesh.MeshType = "FileMesh" 
TorsozMesh.MeshId = "http://www.roblox.com/asset/?id=36780113"
TorsozMesh.Scale = Vector3.new(10, 15, 10)
WeldTorsoz = Instance.new("Weld",Cha)
WeldTorsoz.Part0 = Cha["Torso"]
WeldTorsoz.Part1 = Torsoz
WeldTorsoz.C1 = CFrame.new(0, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

TorsoOuter = Instance.new("Part",Cha)
TorsoOuter.TopSurface = "Smooth"
TorsoOuter.BottomSurface = "Smooth"
TorsoOuter.CanCollide = True
TorsoOuter.BrickColor = BrickColor.new("Navy blue")
TorsoOuter.Reflectance = 0.3
TorsoOuter.Transparency = 0.5
TorsoOuterMesh = Instance.new("SpecialMesh",TorsoOuter) 
TorsoOuterMesh.MeshType = "FileMesh" 
TorsoOuterMesh.MeshId = "http://www.roblox.com/asset/?id=27111894"
TorsoOuterMesh.Scale = Vector3.new(11, 16, 11)
WeldTorsoOuter = Instance.new("Weld",Cha)
WeldTorsoOuter.Part0 = Cha["Torso"]
WeldTorsoOuter.Part1 = TorsoOuter
WeldTorsoOuter.C1 = CFrame.new(0, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

RA2 = Instance.new("Part",Cha)
RA2.TopSurface = "Smooth"
RA2.BottomSurface = "Smooth"
RA2.CanCollide = True
RA2.BrickColor = BrickColor.new("Navy blue")
RA2.Reflectance = 0.3
RA2.Transparency = 0.5
RA2Mesh = Instance.new("SpecialMesh",RA2) 
RA2Mesh.MeshType = "FileMesh" 
RA2Mesh.MeshId = "http://www.roblox.com/asset/?id=27111864"
RA2Mesh.Scale = Vector3.new(6, 13, 11)
WeldRA2 = Instance.new("Weld",Cha)
WeldRA2.Part0 = Cha["Torso"]
WeldRA2.Part1 = RA2
WeldRA2.C1 = CFrame.new(-18, 3, -5)*CFrame.fromEulerAnglesXYZ(1, 0, -.4)

LA2 = Instance.new("Part",Cha)
LA2.TopSurface = "Smooth"
LA2.BottomSurface = "Smooth"
LA2.CanCollide = True
LA2.BrickColor = BrickColor.new("Navy blue")
LA2.Reflectance = 0.3
LA2.Transparency = 0.5
LA2Mesh = Instance.new("SpecialMesh",LA2) 
LA2Mesh.MeshType = "FileMesh" 
LA2Mesh.MeshId = "http://www.roblox.com/asset/?id=27111419"
LA2Mesh.Scale = Vector3.new(6, 13, 11)
WeldLA2 = Instance.new("Weld",Cha)
WeldLA2.Part0 = Cha["Torso"]
WeldLA2.Part1 = LA2
WeldLA2.C1 = CFrame.new(18, 3, -5)*CFrame.fromEulerAnglesXYZ(1, 0, .4)

RA = Instance.new("Part",Cha)
RA.TopSurface = "Smooth"
RA.BottomSurface = "Smooth"
RA.CanCollide = True
RA.BrickColor = BrickColor.new("Navy blue")
RA.Reflectance = 0.3
RA.Transparency = 0.5
RAMesh = Instance.new("SpecialMesh",RA) 
RAMesh.MeshType = "FileMesh" 
RAMesh.MeshId = "http://www.roblox.com/asset/?id=27111864"
RAMesh.Scale = Vector3.new(6, 13, 11)
WeldRA = Instance.new("Weld",Cha)
WeldRA.Part0 = Cha["Torso"]
WeldRA.Part1 = RA
WeldRA.C1 = CFrame.new(-18, 3, 5)*CFrame.fromEulerAnglesXYZ(-1, 0, -.4)

LA = Instance.new("Part",Cha)
LA.TopSurface = "Smooth"
LA.BottomSurface = "Smooth"
LA.CanCollide = True
LA.BrickColor = BrickColor.new("Navy blue")
LA.Reflectance = 0.3
LA.Transparency = 0.5
LAMesh = Instance.new("SpecialMesh",LA) 
LAMesh.MeshType = "FileMesh" 
LAMesh.MeshId = "http://www.roblox.com/asset/?id=27111419"
LAMesh.Scale = Vector3.new(6, 13, 11)
WeldLA = Instance.new("Weld",Cha)
WeldLA.Part0 = Cha["Torso"]
WeldLA.Part1 = LA
WeldLA.C1 = CFrame.new(18, 3, 5)*CFrame.fromEulerAnglesXYZ(-1, 0, .4)

Headz = Instance.new("Part",Cha)
Headz.TopSurface = "Smooth"
Headz.BottomSurface = "Smooth"
Headz.CanCollide = True
Headz.BrickColor = BrickColor.new("Navy blue")
Headz.Reflectance = 0.3
Headz.Transparency = 0.3
HeadzMesh = Instance.new("SpecialMesh",Headz) 
HeadzMesh.MeshType = "Head" 
HeadzMesh.Scale = Vector3.new(5, 8, 5)
WeldHez = Instance.new("Weld",Cha)
WeldHez.Part0 = Cha["Torso"]
WeldHez.Part1 = Headz
WeldHez.C1 = CFrame.new(0, -25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

end

if key == "n" and susanoo == true then
Chat(Cha.Head,"MEET MY ULTIMATE SUSANOO!","Really black")

susanoo2 = false

Torsoz:Destroy()
TorsoOuter:Destroy()
RA:Destroy()
RA2:Destroy()
LA:Destroy()
LA2:Destroy()
Headz:Destroy()

FullRightLeg = Instance.new("Part",Cha)
FullRightLeg.TopSurface = "Smooth"
FullRightLeg.BottomSurface = "Smooth"
FullRightLeg.CanCollide = True
FullRightLeg.BrickColor = BrickColor.new("Navy blue")
FullRightLeg.Reflectance = 0.3
FullRightLeg.Transparency = 0.5
FullRightLegMesh = Instance.new("SpecialMesh",FullRightLeg) 
FullRightLegMesh.MeshType = "FileMesh" 
FullRightLegMesh.MeshId = "http://www.roblox.com/asset/?id=30241817"
FullRightLegMesh.Scale = Vector3.new(25, 30, 25)
WeldFullRightLeg = Instance.new("Weld",Cha)
WeldFullRightLeg.Part0 = Cha["Torso"]
WeldFullRightLeg.Part1 = FullRightLeg
WeldFullRightLeg.C1 = CFrame.new(-13, -22.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

FullLeftLeg = Instance.new("Part",Cha)
FullLeftLeg.TopSurface = "Smooth"
FullLeftLeg.BottomSurface = "Smooth"
FullLeftLeg.CanCollide = True
FullLeftLeg.BrickColor = BrickColor.new("Navy blue")
FullLeftLeg.Reflectance = 0.3
FullLeftLeg.Transparency = 0.5
FullLeftLegMesh = Instance.new("SpecialMesh",FullLeftLeg) 
FullLeftLegMesh.MeshType = "FileMesh" 
FullLeftLegMesh.MeshId = "http://www.roblox.com/asset/?id=30241734"
FullLeftLegMesh.Scale = Vector3.new(25, 30, 25)
WeldFullLeftLeg = Instance.new("Weld",Cha)
WeldFullLeftLeg.Part0 = Cha["Torso"]
WeldFullLeftLeg.Part1 = FullLeftLeg
WeldFullLeftLeg.C1 = CFrame.new(13, -22.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

FullTorso = Instance.new("Part",Cha)
FullTorso.TopSurface = "Smooth"
FullTorso.BottomSurface = "Smooth"
FullTorso.CanCollide = True
FullTorso.BrickColor = BrickColor.new("Navy blue")
FullTorso.Reflectance = 0.3
FullTorso.Transparency = 0.5
FullTorsoMesh = Instance.new("SpecialMesh",FullTorso) 
FullTorsoMesh.MeshType = "FileMesh" 
FullTorsoMesh.MeshId = "http://www.roblox.com/asset/?id=30241835"
FullTorsoMesh.Scale = Vector3.new(25, 30, 25)
WeldFullTorso = Instance.new("Weld",Cha)
WeldFullTorso.Part0 = Cha["Torso"]
WeldFullTorso.Part1 = FullTorso
WeldFullTorso.C1 = CFrame.new(0, -87.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

FullRightArm = Instance.new("Part",Cha)
FullRightArm.TopSurface = "Smooth"
FullRightArm.BottomSurface = "Smooth"
FullRightArm.CanCollide = True
FullRightArm.BrickColor = BrickColor.new("Navy blue")
FullRightArm.Reflectance = 0.3
FullRightArm.Transparency = 0.5
FullRightArmMesh = Instance.new("SpecialMesh",FullRightArm) 
FullRightArmMesh.MeshType = "FileMesh" 
FullRightArmMesh.MeshId = "http://www.roblox.com/asset/?id=30241777"
FullRightArmMesh.Scale = Vector3.new(25, 30, 25)
WeldFullRightArm = Instance.new("Weld",Cha)
WeldFullRightArm.Part0 = Cha["Torso"]
WeldFullRightArm.Part1 = FullRightArm
WeldFullRightArm.C1 = CFrame.new(-38, -87.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

FullLeftArm = Instance.new("Part",Cha)
FullLeftArm.TopSurface = "Smooth"
FullLeftArm.BottomSurface = "Smooth"
FullLeftArm.CanCollide = True
FullLeftArm.BrickColor = BrickColor.new("Navy blue")
FullLeftArm.Reflectance = 0.3
FullLeftArm.Transparency = 0.5
FullLeftArmMesh = Instance.new("SpecialMesh",FullLeftArm) 
FullLeftArmMesh.MeshType = "FileMesh" 
FullLeftArmMesh.MeshId = "http://www.roblox.com/asset/?id=30241711"
FullLeftArmMesh.Scale = Vector3.new(25, 30, 25)
WeldFullLeftArm = Instance.new("Weld",Cha)
WeldFullLeftArm.Part0 = Cha["Torso"]
WeldFullLeftArm.Part1 = FullLeftArm
WeldFullLeftArm.C1 = CFrame.new(38, -87.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

FullHead = Instance.new("Part",Cha)
FullHead.TopSurface = "Smooth"
FullHead.BottomSurface = "Smooth"
FullHead.CanCollide = True
FullHead.BrickColor = BrickColor.new("Navy blue")
FullHead.Reflectance = 0.3
FullHead.Transparency = 0.5
FullHeadMesh = Instance.new("SpecialMesh",FullHead) 
FullHeadMesh.MeshType = "FileMesh" 
FullHeadMesh.MeshId = "http://www.roblox.com/asset/?id=12472639"
FullHeadMesh.Scale = Vector3.new(25, 30, 60)
WeldFullHead = Instance.new("Weld",Cha)
WeldFullHead.Part0 = Cha["Torso"]
WeldFullHead.Part1 = FullHead
WeldFullHead.C1 = CFrame.new(0, -127.5, 10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

FullHead2 = Instance.new("Part",Cha)
FullHead2.TopSurface = "Smooth"
FullHead2.BottomSurface = "Smooth"
FullHead2.CanCollide = True
FullHead2.BrickColor = BrickColor.new("Navy blue")
FullHead2.Reflectance = 0.3
FullHead2.Transparency = 0.5
FullHead2Mesh = Instance.new("SpecialMesh",FullHead2) 
FullHead2Mesh.MeshType = "Head" 
FullHead2Mesh.Scale = Vector3.new(15, 30, 15)
WeldFullHead2 = Instance.new("Weld",Cha)
WeldFullHead2.Part0 = Cha["Torso"]
WeldFullHead2.Part1 = FullHead2
WeldFullHead2.C1 = CFrame.new(0, -127.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

FullHead3 = Instance.new("Part",Cha)
FullHead3.TopSurface = "Smooth"
FullHead3.BottomSurface = "Smooth"
FullHead3.CanCollide = True
FullHead3.BrickColor = BrickColor.new("Navy blue")
FullHead3.Reflectance = 0.3
FullHead3.Transparency = 0.5
FullHead3Mesh = Instance.new("SpecialMesh",FullHead3) 
FullHead3Mesh.MeshType = "FileMesh" 
FullHead3Mesh.MeshId = "http://www.roblox.com/asset/?id=145304686"
FullHead3Mesh.Scale = Vector3.new(25, 30, 30)
WeldFullHead3 = Instance.new("Weld",Cha)
WeldFullHead3.Part0 = Cha["Torso"]
WeldFullHead3.Part1 = FullHead3
WeldFullHead3.C1 = CFrame.new(0, -137.5, -10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


end

if key == "c" and firee2 == false and normal == false then
firee2 = true
torso = Player.Character.Torso

Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)

Chat(Cha.Head,"Fire Release: Pheonix Immortal Fire Technique","Really black")

part1=Instance.new('Part',Workspace)
part1.Size=Vector3.new(3,3,3)
part1.BrickColor=BrickColor.new("Bright orange")
part1.CanCollide = True
part1.Position=torso.Position+torso.CFrame.lookVector*5
part1.Transparency = 0.3
part1:BreakJoints()
part1bv = Instance.new('BodyVelocity',part1)  
part1bv.maxForce = Vector3.new()*math.huge
part1bv.velocity = torso.CFrame.lookVector*200
part1Mesh = Instance.new("SpecialMesh", part1)
part1Mesh.MeshType = "Sphere"
part1Mesh.Scale = Vector3.new(1,1,1)

part2=Instance.new('Part',Workspace)
part2.Size=Vector3.new(3,3,3)
part2.BrickColor=BrickColor.new("Bright orange")
part2.CanCollide = True
part2.Position=torso.Position+torso.CFrame.lookVector*10
part2.Transparency = 0.3
part2:BreakJoints()
part2bv = Instance.new('BodyVelocity',part2)  
part2bv.maxForce = Vector3.new()*math.huge
part2bv.velocity = torso.CFrame.lookVector*200
part2Mesh = Instance.new("SpecialMesh", part2)
part2Mesh.MeshType = "Sphere"
part2Mesh.Scale = Vector3.new(1,1,1)

part3=Instance.new('Part',Workspace)
part3.Size=Vector3.new(3,3,3)
part3.BrickColor=BrickColor.new("Bright orange")
part3.CanCollide = True
part3.Position=torso.Position+torso.CFrame.lookVector*15
part3.Transparency = 0.3
part3:BreakJoints()
part3bv = Instance.new('BodyVelocity',part3)  
part3bv.maxForce = Vector3.new()*math.huge
part3bv.velocity = torso.CFrame.lookVector*200
part3Mesh = Instance.new("SpecialMesh", part3)
part3Mesh.MeshType = "Sphere"
part3Mesh.Scale = Vector3.new(1,1,1)

bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bv.velocity = torso.CFrame.lookVector*50

part1.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
hit.Parent:FindFirstChild("Humanoid").Sit = true
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 0
e.BlastRadius = 10
ebv = bv:clone()
ebv.Parent = hit.Parent:findFirstChild("Torso")
ebv.Name = "ebv"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "ebv" then
wait(0.5)
v:Destroy()
end
end
part1:Destroy()
end
end)

part2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
hit.Parent:FindFirstChild("Humanoid").Sit = true
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 0
e.BlastRadius = 10
ebv2 = bv:clone()
ebv2.Parent = hit.Parent:findFirstChild("Torso")
ebv2.Name = "ebv2"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "ebv2" then
wait(0.5)
v:Destroy()
end
end
part2:Destroy()
end
end)

part1.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
hit.Parent:FindFirstChild("Humanoid").Sit = true
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 0
e.BlastRadius = 10
ebv = bv:clone()
ebv.Parent = hit.Parent:findFirstChild("Torso")
ebv.Name = "ebv"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "ebv" then
wait(0.5)
v:Destroy()
end
end
part1:Destroy()
end
end)

part3.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
hit.Parent:FindFirstChild("Humanoid").Sit = true
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 0
e.BlastRadius = 10
ebv3 = bv:clone()
ebv3.Parent = hit.Parent:findFirstChild("Torso")
ebv3.Name = "ebv3"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "ebv3" then
wait(0.5)
v:Destroy()
end
end
part3:Destroy()
end
end)

wait(0.5)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)

wait(5)

firee2 = false
end

end)



game.Players.LocalPlayer.Character["Right Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Head"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Torso"].BrickColor = BrickColor.new("Pastel brown")
Cha.Shirt:Remove()
Cha.Pants:Remove()


Shirt = Instance.new("Shirt",Character)
Shirt.Parent = Cha
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=145592472"

Pant = Instance.new("Pants",Character)
Pant.Parent = Cha
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=145592525"

--http://pastebin.com/raw.php?i=t9t5RRTX
