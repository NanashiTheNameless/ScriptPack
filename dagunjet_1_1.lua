Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
mouse = game.Players.LocalPlayer:GetMouse()
Tool = Instance.new("HopperBin",Player.Backpack)
Tool.Name = "3 Ring"
Daggermode = true
Gunzmode = true
Jetpackmode = true
function onClicked(mouse)
if (not vDebounce) and Daggermode == false then
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
 
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -2.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -2.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -1.7)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -1.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.9)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
wait()
wa:remove()
 
vDebounce = false
end
 
end
 
Tool.Selected:connect(function(mouse)
 
end)
 
mouse.Button1Down:connect(function() onClicked(mouse) end)
 
 
 
Ring = Instance.new("Part",Cha)
Ring.TopSurface = "Smooth"
Ring.BottomSurface = "Smooth"
Ring.Size = Vector3.new(1, 1, 1)
Ring.CanCollide = True
Ring.Reflectance = 0.3
Ring.BrickColor = BrickColor.new("White")
RingMesh = Instance.new("SpecialMesh", Ring)
RingMesh.MeshType = "Brick"
RingMesh.Scale = Vector3.new(1.1,0.2,1.1)
RingWeld = Instance.new("Weld",Cha)
RingWeld.Part0 = Cha["Right Arm"]
RingWeld.Part1 = Ring
RingWeld.C1 = CFrame.new(0, 0.75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring2 = Instance.new("Part",Cha)
Ring2.TopSurface = "Smooth"
Ring2.BottomSurface = "Smooth"
Ring2.Size = Vector3.new(1, 1, 1)
Ring2.CanCollide = True
Ring2.Transparency = 0.3
Ring2.BrickColor = BrickColor.new("Bright red")
Ring2Mesh = Instance.new("SpecialMesh", Ring2)
Ring2Mesh.MeshType = "FileMesh" 
Ring2Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Ring2Mesh.Scale = Vector3.new(0.3,0.3,0.3)
Ring2Weld = Instance.new("Weld",Cha)
Ring2Weld.Part0 = Cha["Right Arm"]
Ring2Weld.Part1 = Ring2
Ring2Weld.C1 = CFrame.new(0, 0.75, 0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring3 = Instance.new("Part",Cha)
Ring3.TopSurface = "Smooth"
Ring3.BottomSurface = "Smooth"
Ring3.Size = Vector3.new(1, 1, 1)
Ring3.CanCollide = True
Ring3.Reflectance = 0.3
Ring3.BrickColor = BrickColor.new("White")
Ring3Mesh = Instance.new("SpecialMesh", Ring3)
Ring3Mesh.MeshType = "Brick"
Ring3Mesh.Scale = Vector3.new(1.1,0.2,1.1)
Ring3Weld = Instance.new("Weld",Cha)
Ring3Weld.Part0 = Cha["Left Arm"]
Ring3Weld.Part1 = Ring3
Ring3Weld.C1 = CFrame.new(0, 0.75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring4 = Instance.new("Part",Cha)
Ring4.TopSurface = "Smooth"
Ring4.BottomSurface = "Smooth"
Ring4.Size = Vector3.new(1, 1, 1)
Ring4.CanCollide = True
Ring4.Transparency = 0.3
Ring4.BrickColor = BrickColor.new("Navy blue")
Ring4Mesh = Instance.new("SpecialMesh", Ring4)
Ring4Mesh.MeshType = "FileMesh" 
Ring4Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Ring4Mesh.Scale = Vector3.new(0.3,0.3,0.3)
Ring4Weld = Instance.new("Weld",Cha)
Ring4Weld.Part0 = Cha["Left Arm"]
Ring4Weld.Part1 = Ring4
Ring4Weld.C1 = CFrame.new(0, 0.75, 0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring5 = Instance.new("Part",Cha)
Ring5.TopSurface = "Smooth"
Ring5.BottomSurface = "Smooth"
Ring5.Size = Vector3.new(1, 1, 1)
Ring5.CanCollide = True
Ring5.Reflectance = 0.3
Ring5.BrickColor = BrickColor.new("White")
Ring5Mesh = Instance.new("SpecialMesh", Ring5)
Ring5Mesh.MeshType = "Brick"
Ring5Mesh.Scale = Vector3.new(1.1,0.2,1.1)
Ring5Weld = Instance.new("Weld",Cha)
Ring5Weld.Part0 = Cha.Head
Ring5Weld.Part1 = Ring5
Ring5Weld.C1 = CFrame.new(0, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring6 = Instance.new("Part",Cha)
Ring6.TopSurface = "Smooth"
Ring6.BottomSurface = "Smooth"
Ring6.Size = Vector3.new(1, 1, 1)
Ring6.CanCollide = True
Ring6.Transparency = 0.3
Ring6.BrickColor = BrickColor.new("Earth green")
Ring6Mesh = Instance.new("SpecialMesh", Ring6)
Ring6Mesh.MeshType = "FileMesh" 
Ring6Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Ring6Mesh.Scale = Vector3.new(0.3,0.3,0.3)
Ring6Weld = Instance.new("Weld",Cha)
Ring6Weld.Part0 = Cha.Head
Ring6Weld.Part1 = Ring6
Ring6Weld.C1 = CFrame.new(0, 0.5, 0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
--Dagger
 
Holder = Instance.new("Part",Cha)
Holder.TopSurface = "Smooth"
Holder.BottomSurface = "Smooth"
Holder.Size = Vector3.new(1, 1, 1)
Holder.Transparency = 1
Holder.CanCollide = True
Holder.BrickColor = BrickColor.new("White")
HolderMesh = Instance.new("SpecialMesh", Holder)
HolderMesh.MeshType = "Brick"
HolderMesh.Scale = Vector3.new(0.2,0.2,1.1)
HolderWeld = Instance.new("Weld",Cha)
HolderWeld.Part0 = Cha["Right Arm"]
HolderWeld.Part1 = Holder
HolderWeld.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Seperator = Instance.new("Part",Cha)
Seperator.TopSurface = "Smooth"
Seperator.BottomSurface = "Smooth"
Seperator.Size = Vector3.new(1, 1, 1)
Seperator.Transparency = 1
Seperator.CanCollide = True
Seperator.BrickColor = BrickColor.new("White")
SeperatorMesh = Instance.new("SpecialMesh", Seperator)
SeperatorMesh.MeshType = "Brick"
SeperatorMesh.Scale = Vector3.new(0.2,0.8,0.2)
SeperatorWeld = Instance.new("Weld",Cha)
SeperatorWeld.Part0 = Cha["Right Arm"]
SeperatorWeld.Part1 = Seperator
SeperatorWeld.C1 = CFrame.new(0, 1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Seperator2 = Instance.new("Part",Cha)
Seperator2.TopSurface = "Smooth"
Seperator2.BottomSurface = "Smooth"
Seperator2.Size = Vector3.new(1, 1, 1)
Seperator2.Transparency = 1
Seperator2.CanCollide = True
Seperator2.BrickColor = BrickColor.new("White")
Seperator2Mesh = Instance.new("SpecialMesh", Seperator2)
Seperator2Mesh.MeshType = "Brick"
Seperator2Mesh.Scale = Vector3.new(0.8,0.2,0.2)
Seperator2Weld = Instance.new("Weld",Cha)
Seperator2Weld.Part0 = Cha["Right Arm"]
Seperator2Weld.Part1 = Seperator2
Seperator2Weld.C1 = CFrame.new(0, 1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Blade = Instance.new("Part",Cha)
Blade.TopSurface = "Smooth"
Blade.BottomSurface = "Smooth"
Blade.Size = Vector3.new(1, 1, 1)
Blade.Transparency = 1
Blade.CanCollide = True
Blade.Reflectance = 0.3
Blade.BrickColor = BrickColor.new("White")
BladeMesh = Instance.new("SpecialMesh", Blade)
BladeMesh.MeshType = "Brick"
BladeMesh.Scale = Vector3.new(0.05,0.15,2.5)
BladeWeld = Instance.new("Weld",Cha)
BladeWeld.Part0 = Cha["Right Arm"]
BladeWeld.Part1 = Blade
BladeWeld.C1 = CFrame.new(0, 1.1, 1.75)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Blade2 = Instance.new("Part",Cha)
Blade2.TopSurface = "Smooth"
Blade2.BottomSurface = "Smooth"
Blade2.Size = Vector3.new(1, 1, 1)
Blade2.Transparency = 1
Blade2.CanCollide = True
Blade2.Reflectance = 0.3
Blade2.BrickColor = BrickColor.new("Really black")
Blade2Mesh = Instance.new("SpecialMesh", Blade2)
Blade2Mesh.MeshType = "Brick"
Blade2Mesh.Scale = Vector3.new(0.05,0.15,2)
Blade2Weld = Instance.new("Weld",Cha)
Blade2Weld.Part0 = Cha["Right Arm"]
Blade2Weld.Part1 = Blade2
Blade2Weld.C1 = CFrame.new(0, 0.9, 1.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Point = Instance.new("Part",Cha)
Point.TopSurface = "Smooth"
Point.BottomSurface = "Smooth"
Point.Size = Vector3.new(1, 1, 1)
Point.Transparency = 1
Point.CanCollide = True
Point.Reflectance = 0.3
Point.BrickColor = BrickColor.new("Really black")
PointMesh = Instance.new("SpecialMesh", Point)
PointMesh.MeshType = "Wedge"
PointMesh.Scale = Vector3.new(0.05,0.15,0.5)
PointWeld = Instance.new("Weld",Cha)
PointWeld.Part0 = Cha["Right Arm"]
PointWeld.Part1 = Point
PointWeld.C1 = CFrame.new(0, 0.9, 2.75)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Point2 = Instance.new("Part",Cha)
Point2.TopSurface = "Smooth"
Point2.BottomSurface = "Smooth"
Point2.Size = Vector3.new(1, 1, 1)
Point2.Transparency = 1
Point2.CanCollide = True
Point2.Reflectance = 0.3
Point2.BrickColor = BrickColor.new("White")
Point2Mesh = Instance.new("SpecialMesh", Point2)
Point2Mesh.MeshType = "Wedge"
Point2Mesh.Scale = Vector3.new(0.05,0.15,0.5)
Point2Weld = Instance.new("Weld",Cha)
Point2Weld.Part0 = Cha["Right Arm"]
Point2Weld.Part1 = Point2
Point2Weld.C1 = CFrame.new(0, 1.1, 3.25)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
--Gun
 
Holder2 = Instance.new("Part",Cha)
Holder2.TopSurface = "Smooth"
Holder2.BottomSurface = "Smooth"
Holder2.Size = Vector3.new(1, 1, 1)
Holder2.CanCollide = True
Holder2.Transparency = 1
Holder2.BrickColor = BrickColor.new("White")
Holder2Mesh = Instance.new("SpecialMesh", Holder2)
Holder2Mesh.MeshType = "Brick"
Holder2Mesh.Scale = Vector3.new(1,0.2,1)
Holder2Weld = Instance.new("Weld",Cha)
Holder2Weld.Part0 = Cha["Left Arm"]
Holder2Weld.Part1 = Holder2
Holder2Weld.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun = Instance.new("Part",Cha)
Gun.TopSurface = "Smooth"
Gun.BottomSurface = "Smooth"
Gun.Size = Vector3.new(1, 1, 1)
Gun.CanCollide = True
Gun.Transparency = 1
Gun.BrickColor = BrickColor.new("White")
GunMesh = Instance.new("SpecialMesh", Gun)
GunMesh.MeshType = "Brick"
GunMesh.Scale = Vector3.new(0.75,0.2,0.75)
GunWeld = Instance.new("Weld",Cha)
GunWeld.Part0 = Cha["Left Arm"]
GunWeld.Part1 = Gun
GunWeld.C1 = CFrame.new(0, 1.25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun2 = Instance.new("Part",Cha)
Gun2.TopSurface = "Smooth"
Gun2.BottomSurface = "Smooth"
Gun2.Size = Vector3.new(1, 1, 1)
Gun2.CanCollide = True
Gun2.Transparency = 1
Gun2.BrickColor = BrickColor.new("White")
Gun2Mesh = Instance.new("SpecialMesh", Gun2)
Gun2Mesh.MeshType = "Brick"
Gun2Mesh.Scale = Vector3.new(0.5,0.2,0.5)
Gun2Weld = Instance.new("Weld",Cha)
Gun2Weld.Part0 = Cha["Left Arm"]
Gun2Weld.Part1 = Gun2
Gun2Weld.C1 = CFrame.new(0, 1.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun3 = Instance.new("Part",Cha)
Gun3.TopSurface = "Smooth"
Gun3.BottomSurface = "Smooth"
Gun3.Size = Vector3.new(1, 1, 1)
Gun3.CanCollide = True
Gun3.Transparency = 1
Gun3.BrickColor = BrickColor.new("White")
Gun3Mesh = Instance.new("SpecialMesh", Gun3)
Gun3Mesh.MeshType = "Brick"
Gun3Mesh.Scale = Vector3.new(0.25,1,0.25)
Gun3Weld = Instance.new("Weld",Cha)
Gun3Weld.Part0 = Cha["Left Arm"]
Gun3Weld.Part1 = Gun3
Gun3Weld.C1 = CFrame.new(0, 2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun4 = Instance.new("Part",Cha)
Gun4.TopSurface = "Smooth"
Gun4.BottomSurface = "Smooth"
Gun4.Size = Vector3.new(1, 1, 1)
Gun4.CanCollide = True
Gun4.Transparency = 1
Gun4.BrickColor = BrickColor.new("White")
Gun4Mesh = Instance.new("SpecialMesh", Gun4)
Gun4Mesh.MeshType = "Brick"
Gun4Mesh.Scale = Vector3.new(1,1,1)
Gun4Weld = Instance.new("Weld",Cha)
Gun4Weld.Part0 = Cha["Left Arm"]
Gun4Weld.Part1 = Gun4
Gun4Weld.C1 = CFrame.new(0, 3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun5 = Instance.new("Part",Cha)
Gun5.TopSurface = "Smooth"
Gun5.BottomSurface = "Smooth"
Gun5.Size = Vector3.new(1, 1, 1)
Gun5.CanCollide = True
Gun5.Transparency = 1
Gun5.BrickColor = BrickColor.new("Really black")
Gun5Mesh = Instance.new("SpecialMesh", Gun5)
Gun5Mesh.MeshType = "Brick"
Gun5Mesh.Scale = Vector3.new(0.9,1,0.9)
Gun5Weld = Instance.new("Weld",Cha)
Gun5Weld.Part0 = Cha["Left Arm"]
Gun5Weld.Part1 = Gun5
Gun5Weld.C1 = CFrame.new(0, 3.05, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun6 = Instance.new("Part",Cha)
Gun6.TopSurface = "Smooth"
Gun6.BottomSurface = "Smooth"
Gun6.Size = Vector3.new(1, 1, 1)
Gun6.CanCollide = True
Gun6.Transparency = 1
Gun6.BrickColor = BrickColor.new("White")
Gun6Mesh = Instance.new("SpecialMesh", Gun6)
Gun6Mesh.MeshType = "Brick"
Gun6Mesh.Scale = Vector3.new(0.2,0.2,2)
Gun6Weld = Instance.new("Weld",Cha)
Gun6Weld.Part0 = Cha["Left Arm"]
Gun6Weld.Part1 = Gun6
Gun6Weld.C1 = CFrame.new(0, 3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun7 = Instance.new("Part",Cha)
Gun7.TopSurface = "Smooth"
Gun7.BottomSurface = "Smooth"
Gun7.Size = Vector3.new(1, 1, 1)
Gun7.CanCollide = True
Gun7.Transparency = 1
Gun7.BrickColor = BrickColor.new("White")
Gun7Mesh = Instance.new("SpecialMesh", Gun7)
Gun7Mesh.MeshType = "Brick"
Gun7Mesh.Scale = Vector3.new(2,0.2,0.2)
Gun7Weld = Instance.new("Weld",Cha)
Gun7Weld.Part0 = Cha["Left Arm"]
Gun7Weld.Part1 = Gun7
Gun7Weld.C1 = CFrame.new(0, 3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun8 = Instance.new("Part",Cha)
Gun8.TopSurface = "Smooth"
Gun8.BottomSurface = "Smooth"
Gun8.Size = Vector3.new(1, 1, 1)
Gun8.CanCollide = True
Gun8.Transparency = 1
Gun8.BrickColor = BrickColor.new("White")
Gun8Mesh = Instance.new("SpecialMesh", Gun8)
Gun8Mesh.MeshType = "Brick"
Gun8Mesh.Scale = Vector3.new(0.2,1,0.2)
Gun8Weld = Instance.new("Weld",Cha)
Gun8Weld.Part0 = Cha["Left Arm"]
Gun8Weld.Part1 = Gun8
Gun8Weld.C1 = CFrame.new(0, 3.25, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun9 = Instance.new("Part",Cha)
Gun9.TopSurface = "Smooth"
Gun9.BottomSurface = "Smooth"
Gun9.Size = Vector3.new(1, 1, 1)
Gun9.CanCollide = True
Gun9.Transparency = 1
Gun9.BrickColor = BrickColor.new("White")
Gun9Mesh = Instance.new("SpecialMesh", Gun9)
Gun9Mesh.MeshType = "Brick"
Gun9Mesh.Scale = Vector3.new(0.2,1,0.2)
Gun9Weld = Instance.new("Weld",Cha)
Gun9Weld.Part0 = Cha["Left Arm"]
Gun9Weld.Part1 = Gun9
Gun9Weld.C1 = CFrame.new(0, 3.25, -1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun10 = Instance.new("Part",Cha)
Gun10.TopSurface = "Smooth"
Gun10.BottomSurface = "Smooth"
Gun10.Size = Vector3.new(1, 1, 1)
Gun10.CanCollide = True
Gun10.Transparency = 1
Gun10.BrickColor = BrickColor.new("White")
Gun10Mesh = Instance.new("SpecialMesh", Gun10)
Gun10Mesh.MeshType = "Brick"
Gun10Mesh.Scale = Vector3.new(0.2,1,0.2)
Gun10Weld = Instance.new("Weld",Cha)
Gun10Weld.Part0 = Cha["Left Arm"]
Gun10Weld.Part1 = Gun10
Gun10Weld.C1 = CFrame.new(1, 3.25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun11 = Instance.new("Part",Cha)
Gun11.TopSurface = "Smooth"
Gun11.BottomSurface = "Smooth"
Gun11.Size = Vector3.new(1, 1, 1)
Gun11.CanCollide = True
Gun11.Transparency = 1
Gun11.BrickColor = BrickColor.new("White")
Gun11Mesh = Instance.new("SpecialMesh", Gun11)
Gun11Mesh.MeshType = "Brick"
Gun11Mesh.Scale = Vector3.new(0.2,1,0.2)
Gun11Weld = Instance.new("Weld",Cha)
Gun11Weld.Part0 = Cha["Left Arm"]
Gun11Weld.Part1 = Gun11
Gun11Weld.C1 = CFrame.new(-1, 3.25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
--Fly
 
Jet = Instance.new("Part",Cha)
Jet.TopSurface = "Smooth"
Jet.BottomSurface = "Smooth"
Jet.Size = Vector3.new(1, 1, 1)
Jet.CanCollide = True
Jet.Transparency = 1
Jet.BrickColor = BrickColor.new("White")
JetMesh = Instance.new("SpecialMesh", Jet)
JetMesh.MeshType = "Torso"
JetMesh.Scale = Vector3.new(2,1.5,0.5)
JetWeld = Instance.new("Weld",Cha)
JetWeld.Part0 = Cha.Torso
JetWeld.Part1 = Jet
JetWeld.C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Jet2 = Instance.new("Part",Cha)
Jet2.TopSurface = "Smooth"
Jet2.BottomSurface = "Smooth"
Jet2.Size = Vector3.new(1, 1, 1)
Jet2.CanCollide = True
Jet2.Transparency = 1
Jet2.BrickColor = BrickColor.new("White")
Jet2Mesh = Instance.new("SpecialMesh", Jet2)
Jet2Mesh.MeshType = "Cylinder"
Jet2Mesh.Scale = Vector3.new(4,0.3,0.3)
Jet2Weld = Instance.new("Weld",Cha)
Jet2Weld.Part0 = Cha.Torso
Jet2Weld.Part1 = Jet2
Jet2Weld.C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Jet3 = Instance.new("Part",Cha)
Jet3.TopSurface = "Smooth"
Jet3.BottomSurface = "Smooth"
Jet3.Size = Vector3.new(1, 1, 1)
Jet3.CanCollide = True
Jet3.Transparency = 1
Jet3.BrickColor = BrickColor.new("White")
Jet3Mesh = Instance.new("SpecialMesh", Jet3)
Jet3Mesh.MeshType = "Sphere"
Jet3Mesh.Scale = Vector3.new(3,0.3,3)
Jet3Weld = Instance.new("Weld",Cha)
Jet3Weld.Part0 = Cha.Torso
Jet3Weld.Part1 = Jet3
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Jet4 = Instance.new("Part",Cha)
Jet4.TopSurface = "Smooth"
Jet4.BottomSurface = "Smooth"
Jet4.Size = Vector3.new(1, 1, 1)
Jet4.CanCollide = True
Jet4.Transparency = 1
Jet4.BrickColor = BrickColor.new("White")
Jet4Mesh = Instance.new("SpecialMesh", Jet4)
Jet4Mesh.MeshType = "Sphere"
Jet4Mesh.Scale = Vector3.new(3,0.3,3)
Jet4Weld = Instance.new("Weld",Cha)
Jet4Weld.Part0 = Cha.Torso
Jet4Weld.Part1 = Jet4
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Tool:Destroy()
 
--Moves
 
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
if key == "z" then
Chat(Cha.Head,"Dagger Mode","Bright red")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
Daggermode = false
Blade.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)
Blade2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)
Point.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)
Point2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)
Holder.Transparency = 0.8
Seperator.Transparency = 0.8
Seperator2.Transparency = 0.8
Blade.Transparency = 0.8
Blade2.Transparency = 0.8
Point.Transparency = 0.8
Point2.Transparency = 0.8
wait()
Holder.Transparency = 0.6
Seperator.Transparency = 0.6
Seperator2.Transparency = 0.6
Blade.Transparency = 0.6
Blade2.Transparency = 0.6
Point.Transparency = 0.6
Point2.Transparency = 0.6
wait()
Holder.Transparency = 0.4
Seperator.Transparency = 0.4
Seperator2.Transparency = 0.4
Blade.Transparency = 0.4
Blade2.Transparency = 0.4
Point.Transparency = 0.4
Point2.Transparency = 0.4
wait()
Holder.Transparency = 0.2
Seperator.Transparency = 0.2
Seperator2.Transparency = 0.2
Blade.Transparency = 0.2
Blade2.Transparency = 0.2
Point.Transparency = 0.2
Point2.Transparency = 0.2
wait()
Holder.Transparency = 0
Seperator.Transparency = 0
Seperator2.Transparency = 0
Blade.Transparency = 0
Blade2.Transparency = 0
Point.Transparency = 0
Point2.Transparency = 0
end
if key == "v" then
Chat(Cha.Head,"Dagger Mode Off","Bright red")
Daggermode = true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, 0)
Holder.Transparency = 0.2
Seperator.Transparency = 0.2
Seperator2.Transparency = 0.2
Blade.Transparency = 0.2
Blade2.Transparency = 0.2
Point.Transparency = 0.2
Point2.Transparency = 0.2
wait()
Holder.Transparency = 0.4
Seperator.Transparency = 0.4
Seperator2.Transparency = 0.4
Blade.Transparency = 0.4
Blade2.Transparency = 0.4
Point.Transparency = 0.4
Point2.Transparency = 0.4
wait()
Holder.Transparency = 0.6
Seperator.Transparency = 0.6
Seperator2.Transparency = 0.6
Blade.Transparency = 0.6
Blade2.Transparency = 0.6
Point.Transparency = 0.6
Point2.Transparency = 0.6
wait()
Holder.Transparency = 0.8
Seperator.Transparency = 0.8
Seperator2.Transparency = 0.8
Blade.Transparency = 0.8
Blade2.Transparency = 0.8
Point.Transparency = 0.8
Point2.Transparency = 0.8
wait()
Holder.Transparency = 1
Seperator.Transparency = 1
Seperator2.Transparency = 1
Blade.Transparency = 1
Blade2.Transparency = 1
Point.Transparency = 1
Point2.Transparency = 1
end
if key == "x" then
Chat(Cha.Head,"Gun Mode","Navy blue")
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.7, 1.5)
Gunzmode = false
Gun.Transparency = 0.8
Gun2.Transparency = 0.8
Gun3.Transparency = 0.8
Gun4.Transparency = 0.8
Gun5.Transparency = 0.8
Gun6.Transparency = 0.8
Gun7.Transparency = 0.8
Gun8.Transparency = 0.8
Gun9.Transparency = 0.8
Gun10.Transparency = 0.8
Gun11.Transparency = 0.8
wait()
Gun.Transparency = 0.6
Gun2.Transparency = 0.6
Gun3.Transparency = 0.6
Gun4.Transparency = 0.6
Gun5.Transparency = 0.6
Gun6.Transparency = 0.6
Gun7.Transparency = 0.6
Gun8.Transparency = 0.6
Gun9.Transparency = 0.6
Gun10.Transparency = 0.6
Gun11.Transparency = 0.6
wait()
Gun.Transparency = 0.4
Gun2.Transparency = 0.4
Gun3.Transparency = 0.4
Gun4.Transparency = 0.4
Gun5.Transparency = 0.4
Gun6.Transparency = 0.4
Gun7.Transparency = 0.4
Gun8.Transparency = 0.4
Gun9.Transparency = 0.4
Gun10.Transparency = 0.4
Gun11.Transparency = 0.4
wait()
Gun.Transparency = 0.2
Gun2.Transparency = 0.2
Gun3.Transparency = 0.2
Gun4.Transparency = 0.2
Gun5.Transparency = 0.2
Gun6.Transparency = 0.2
Gun7.Transparency = 0.2
Gun8.Transparency = 0.2
Gun9.Transparency = 0.2
Gun10.Transparency = 0.2
Gun11.Transparency = 0.2
wait()
Gun.Transparency = 0
Gun2.Transparency = 0
Gun3.Transparency = 0
Gun4.Transparency = 0
Gun5.Transparency = 0
Gun6.Transparency = 0
Gun7.Transparency = 0
Gun8.Transparency = 0
Gun9.Transparency = 0
Gun10.Transparency = 0
Gun11.Transparency = 0
end
if key == "b" then
Chat(Cha.Head,"Gun Mode Off","Navy blue")
Gunzmode = true
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.7, 0)
Gun.Transparency = 0.2
Gun2.Transparency = 0.2
Gun3.Transparency = 0.2
Gun4.Transparency = 0.2
Gun5.Transparency = 0.2
Gun6.Transparency = 0.2
Gun7.Transparency = 0.2
Gun8.Transparency = 0.2
Gun9.Transparency = 0.2
Gun10.Transparency = 0.2
Gun11.Transparency = 0.2
wait()
Gun.Transparency = 0.4
Gun2.Transparency = 0.4
Gun3.Transparency = 0.4
Gun4.Transparency = 0.4
Gun5.Transparency = 0.4
Gun6.Transparency = 0.4
Gun7.Transparency = 0.4
Gun8.Transparency = 0.4
Gun9.Transparency = 0.4
Gun10.Transparency = 0.4
Gun11.Transparency = 0.4
wait()
Gun.Transparency = 0.6
Gun2.Transparency = 0.6
Gun3.Transparency = 0.6
Gun4.Transparency = 0.6
Gun5.Transparency = 0.6
Gun6.Transparency = 0.6
Gun7.Transparency = 0.6
Gun8.Transparency = 0.6
Gun9.Transparency = 0.6
Gun10.Transparency = 0.6
Gun11.Transparency = 0.6
wait()
Gun.Transparency = 0.8
Gun2.Transparency = 0.8
Gun3.Transparency = 0.8
Gun4.Transparency = 0.8
Gun5.Transparency = 0.8
Gun6.Transparency = 0.8
Gun7.Transparency = 0.8
Gun8.Transparency = 0.8
Gun9.Transparency = 0.8
Gun10.Transparency = 0.8
Gun11.Transparency = 0.8
wait()
Gun.Transparency = 1
Gun2.Transparency = 1
Gun3.Transparency = 1
Gun4.Transparency = 1
Gun5.Transparency = 1
Gun6.Transparency = 1
Gun7.Transparency = 1
Gun8.Transparency = 1
Gun9.Transparency = 1
Gun10.Transparency = 1
Gun11.Transparency = 1
end
if key == "c" then
Chat(Cha.Head,"Jet Mode","Earth green")
Jetpackmode = false
Jet.Transparency = 0.8
Jet2.Transparency = 0.8
Jet3.Transparency = 0.8
Jet4.Transparency = 0.8
wait()
Jet.Transparency = 0.6
Jet2.Transparency = 0.6
Jet3.Transparency = 0.6
Jet4.Transparency = 0.6
wait()
Jet.Transparency = 0.4
Jet2.Transparency = 0.4
Jet3.Transparency = 0.4
Jet4.Transparency = 0.4
wait()
Jet.Transparency = 0.2
Jet2.Transparency = 0.2
Jet3.Transparency = 0.2
Jet4.Transparency = 0.2
wait()
Jet.Transparency = 0
Jet2.Transparency = 0
Jet3.Transparency = 0
Jet4.Transparency = 0
end
if key == "n" then
Chat(Cha.Head,"Jet Mode Off","Earth green")
Jetpackmode= true
Jet.Transparency = 0.2
Jet2.Transparency = 0.2
Jet3.Transparency = 0.2
Jet4.Transparency = 0.2
wait()
Jet.Transparency = 0.4
Jet2.Transparency = 0.4
Jet3.Transparency = 0.4
Jet4.Transparency = 0.4
wait()
Jet.Transparency = 0.6
Jet2.Transparency = 0.6
Jet3.Transparency = 0.6
Jet4.Transparency = 0.6
wait()
Jet.Transparency = 0.8
Jet2.Transparency = 0.8
Jet3.Transparency = 0.8
Jet4.Transparency = 0.8
wait()
Jet.Transparency = 1
Jet2.Transparency = 1
Jet3.Transparency = 1
Jet4.Transparency = 1
end
if key == "e" and Daggermode == false then
Chat(Cha.Head,"Dagger Range Strike","Bright red")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -2.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -2.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -1.7)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -1.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.9)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
p = Instance.new("Part",Workspace)
p.Size = Vector3.new(5,10,5)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.BrickColor = BrickColor.new("Really black")
p.CFrame = Cha.Torso.CFrame *CFrame.new(0,1,-7)
r = Instance.new("BodyVelocity",p)
r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r.velocity = Cha.Torso.CFrame.lookVector * 200
p.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)
p:BreakJoints()
wait(5)
p:Destroy()
end
if key == "e" and Gunzmode == false then
Chat(Cha.Head,"Death shot","Navy blue")
p = Instance.new("Part",Workspace)
p.Size = Vector3.new(1,1,1)
p.CanCollide = True
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.BrickColor = BrickColor.new("Really black")
p.CFrame = Cha.Torso.CFrame *CFrame.new(0,2,-8)
wait()
p.Size = Vector3.new(2,2,2)
wait()
p.Size = Vector3.new(3,3,3)
wait()
p.Size = Vector3.new(4,4,4)
wait()
p.Size = Vector3.new(5,5,5)
wait()
p.Size = Vector3.new(6,6,6)
wait()
p.Size = Vector3.new(7,7,7)
wait()
r = Instance.new("BodyVelocity",p)
r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r.velocity = Cha.Torso.CFrame.lookVector * 300
p.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
end
end
end)
p:BreakJoints()
wait(5)
p:Destroy()
end
end)
 
Player:GetMouse().KeyDown:connect(function (key)
if key == " " and Jetpackmode == false then
bv = Instance.new("BodyVelocity",Jet)
bv.maxForce = Vector3.new(3, math.huge, 3)
bv.velocity = Vector3.new(0, 20, 0)
end
end)
Player:GetMouse().KeyUp:connect(function (key)
if key == " " and Jetpackmode == false then
bv:Destroy()
end
end)
 
Player:GetMouse().KeyDown:connect(function (key)
if key == "e" and Jetpackmode == false then
Chat(Cha.Head,"Death eyes","Earth green")
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(1, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(1, 0, 0)
wait()
sh = Instance.new("Part",Workspace)
sh.Size = Vector3.new(3,3,3)
sh.CanCollide = True
sh.TopSurface = "Smooth"
sh.BottomSurface = "Smooth"
sh.BrickColor = BrickColor.new("Really black")
sh.CFrame = Cha.Torso.CFrame *CFrame.new(6.5,0,-1)
r = Instance.new("BodyVelocity",sh)
r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r.velocity = Cha.Torso.CFrame.lookVector * 300
sh2 = Instance.new("Part",Workspace)
sh2.Size = Vector3.new(3,3,3)
sh2.CanCollide = True
sh2.TopSurface = "Smooth"
sh2.BottomSurface = "Smooth"
sh2.BrickColor = BrickColor.new("Really black")
sh2.CFrame = Cha.Torso.CFrame *CFrame.new(-6.5,0,-1)
r2 = Instance.new("BodyVelocity",sh2)
r2.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r2.velocity = Cha.Torso.CFrame.lookVector * 300
sh:BreakJoints()
sh2:BreakJoints()
sh.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)
sh2.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)
end
end)
Player:GetMouse().KeyUp:connect(function (key)
if key == "e" and Jetpackmode == false then
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
sh:Destroy()
sh2:Destroy()
end
end)
 