
Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
mouse = game.Players.LocalPlayer:GetMouse()
torso = Cha.Torso
Mouse = mouse

equip = false
on = false
fb = false
ib = false
lb = false

Lasers = {}
function MakeLaser(P1,P2)
local LPart = Instance.new("Part",Workspace)
LPart.Anchored = true
LPart.FormFactor = "Custom"
LPart.CanCollide = True
LPart.Transparency = 0.5
LPart.TopSurface = "Smooth"
LPart.BottomSurface = "Smooth"
LPart.BrickColor = BrickColor.new("Bright yellow")
table.insert(Lasers,LPart)
local Pos1 = P1.CFrame.p
local Pos2 = P2.CFrame.p
local Dis = (Pos1-Pos2).magnitude
LPart.Size = Vector3.new(4,4,Dis)
LPart.CFrame = CFrame.new(Pos1,Pos2) *CFrame.new(0,0,-Dis/2)
LPart.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
e3 = Instance.new('Explosion',Workspace)
e3.Position = hit.Parent.Torso.Position
e3.BlastPressure = 0
e3.BlastRadius = 5
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(20)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
end
end
end)
end

mouse.Button1Down:connect(function()

if (not vDebounce) and equip == true then
equip = false
on = true
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

Cha.Torso["Right Shoulder"].Part0 = nil
Cha.Torso["Right Shoulder"].Part1 = nil
wait()
ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Cha["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Cha["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0,-0.5) * CFrame.fromEulerAnglesXYZ(1,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0.2,-0.5) * CFrame.fromEulerAnglesXYZ(1.2,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0.6,-0.5) * CFrame.fromEulerAnglesXYZ(1.6,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,1,-0.5) * CFrame.fromEulerAnglesXYZ(2,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,1,-0.5) * CFrame.fromEulerAnglesXYZ(2.4,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0.8,-0.5) * CFrame.fromEulerAnglesXYZ(1.8,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0.4,-0.5) * CFrame.fromEulerAnglesXYZ(1.4,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0,-0.5) * CFrame.fromEulerAnglesXYZ(1,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0,-0.3) * CFrame.fromEulerAnglesXYZ(0.6,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0,-0.3) * CFrame.fromEulerAnglesXYZ(0.4,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0,-0.3) * CFrame.fromEulerAnglesXYZ(0,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0,-0.3) * CFrame.fromEulerAnglesXYZ(0.4,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0,-0.3) * CFrame.fromEulerAnglesXYZ(0.6,0,0)
wait()
ArmWeld.C0 = CFrame.new(1.5,0,-0.5) * CFrame.fromEulerAnglesXYZ(1,0,0)
wait()
ArmWeld:Destroy()
Cha.Torso["Right Shoulder"].Part0 = Cha.Torso
Cha.Torso["Right Shoulder"].Part1 = Cha["Right Arm"]


wa:remove()

vDebounce = false
wait()
equip = true
on = false

end
end)

Handle = Instance.new("Part",Cha)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Size = Vector3.new(1, 1, 1)
Handle.CanCollide = True
Handle.Transparency = 0
Handle.BrickColor = BrickColor.new("Really black")
HandleMesh = Instance.new("SpecialMesh", Handle)
HandleMesh.MeshType = "Cylinder"
HandleMesh.Scale = Vector3.new(1.2,1,0.1)
HandleWeld = Instance.new("Weld",Cha)
HandleWeld.Part0 = Cha.Torso
HandleWeld.Part1 = Handle
HandleWeld.C1 = CFrame.new(-1, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)

Crystal = Instance.new("Part",Cha)
Crystal.TopSurface = "Smooth"
Crystal.BottomSurface = "Smooth"
Crystal.CanCollide = True
Crystal.BrickColor = BrickColor.new("Bright bluish green")
Crystal.Reflectance = 0.1
Crystal.Transparency = 0
CrystalMesh = Instance.new("SpecialMesh",Crystal) 
CrystalMesh.MeshType = "FileMesh" 
CrystalMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
CrystalMesh.Scale = Vector3.new(0.6, 0.3, 0.2)
CrystalWeld = Instance.new("Weld",Cha)
CrystalWeld.Part0 = Handle
CrystalWeld.Part1 = Crystal
CrystalWeld.C1 = CFrame.new(0.53,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Crystal2 = Instance.new("Part",Cha)
Crystal2.TopSurface = "Smooth"
Crystal2.BottomSurface = "Smooth"
Crystal2.CanCollide = True
Crystal2.BrickColor = BrickColor.new("Really black")
Crystal2.Reflectance = 0.1
Crystal2.Transparency = 0.3
Crystal2Mesh = Instance.new("SpecialMesh",Crystal2) 
Crystal2Mesh.MeshType = "FileMesh" 
Crystal2Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Crystal2Mesh.Scale = Vector3.new(0.58, 0.3, 0.25)
Crystal2Weld = Instance.new("Weld",Cha)
Crystal2Weld.Part0 = Handle
Crystal2Weld.Part1 = Crystal2
Crystal2Weld.C1 = CFrame.new(0.53,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Sword = Instance.new("Part",Cha)
Sword.TopSurface = "Smooth"
Sword.BottomSurface = "Smooth"
Sword.Size = Vector3.new(1, 1, 1)
Sword.CanCollide = True
Sword.Transparency = 0
Sword.BrickColor = BrickColor.new("Black")
SwordMesh = Instance.new("SpecialMesh", Sword)
SwordMesh.MeshType = "Brick"
SwordMesh.Scale = Vector3.new(0.2,0.2,0.1)
SwordWeld = Instance.new("Weld",Cha)
SwordWeld.Part0 = Handle
SwordWeld.Part1 = Sword
SwordWeld.C1 = CFrame.new(0.8,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Sword2 = Instance.new("Part",Cha)
Sword2.TopSurface = "Smooth"
Sword2.BottomSurface = "Smooth"
Sword2.Size = Vector3.new(1, 1, 1)
Sword2.CanCollide = True
Sword2.Transparency = 0
Sword2.BrickColor = BrickColor.new("Black")
Sword2Mesh = Instance.new("SpecialMesh", Sword2)
Sword2Mesh.MeshType = "Torso"
Sword2Mesh.Scale = Vector3.new(0.4,0.2,0.1)
Sword2Weld = Instance.new("Weld",Cha)
Sword2Weld.Part0 = Sword
Sword2Weld.Part1 = Sword2
Sword2Weld.C1 = CFrame.new(0,0.2,0)*CFrame.fromEulerAnglesXYZ(0, 0, 1.6)

Sword3 = Instance.new("Part",Cha)
Sword3.TopSurface = "Smooth"
Sword3.BottomSurface = "Smooth"
Sword3.Size = Vector3.new(1, 1, 1)
Sword3.CanCollide = True
Sword3.Transparency = 0
Sword3.BrickColor = BrickColor.new("Black")
Sword3Mesh = Instance.new("SpecialMesh", Sword3)
Sword3Mesh.MeshType = "Torso"
Sword3Mesh.Scale = Vector3.new(0.4,0.1,0.1)
Sword3Weld = Instance.new("Weld",Cha)
Sword3Weld.Part0 = Sword2
Sword3Weld.Part1 = Sword3
Sword3Weld.C1 = CFrame.new(0,-0.18,0)*CFrame.fromEulerAnglesXYZ(0, 0, 3.15)

Sword4 = Instance.new("Part",Cha)
Sword4.TopSurface = "Smooth"
Sword4.BottomSurface = "Smooth"
Sword4.Size = Vector3.new(1, 1, 1)
Sword4.CanCollide = True
Sword4.Transparency = 0
Sword4.BrickColor = BrickColor.new("Black")
Sword4Mesh = Instance.new("SpecialMesh", Sword4)
Sword4Mesh.MeshType = "Wedge"
Sword4Mesh.Scale = Vector3.new(0.1,2,0.1)
Sword4Weld = Instance.new("Weld",Cha)
Sword4Weld.Part0 = Sword2
Sword4Weld.Part1 = Sword4
Sword4Weld.C1 = CFrame.new(0,-1.3,0.1)*CFrame.fromEulerAnglesXYZ(3.2, 1.6, 0)

Sword5 = Instance.new("Part",Cha)
Sword5.TopSurface = "Smooth"
Sword5.BottomSurface = "Smooth"
Sword5.Size = Vector3.new(1, 1, 1)
Sword5.CanCollide = True
Sword5.Transparency = 0
Sword5.BrickColor = BrickColor.new("Black")
Sword5Mesh = Instance.new("SpecialMesh", Sword5)
Sword5Mesh.MeshType = "Wedge"
Sword5Mesh.Scale = Vector3.new(0.1,2,0.1)
Sword5Weld = Instance.new("Weld",Cha)
Sword5Weld.Part0 = Sword2
Sword5Weld.Part1 = Sword5
Sword5Weld.C1 = CFrame.new(0,-1.3,0.1)*CFrame.fromEulerAnglesXYZ(-3.2, -1.6, 0)

Sword6 = Instance.new("Part",Cha)
Sword6.TopSurface = "Smooth"
Sword6.BottomSurface = "Smooth"
Sword6.Size = Vector3.new(1, 1, 1)
Sword6.CanCollide = True
Sword6.Transparency = 0
Sword6.BrickColor = BrickColor.new("Black")
Sword6Mesh = Instance.new("SpecialMesh", Sword6)
Sword6Mesh.MeshType = "Brick"
Sword6Mesh.Scale = Vector3.new(0.1,2,0.1)
Sword6Weld = Instance.new("Weld",Cha)
Sword6Weld.Part0 = Sword5
Sword6Weld.Part1 = Sword6
Sword6Weld.C1 = CFrame.new(0,0,-0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design = Instance.new("Part",Cha)
Design.TopSurface = "Smooth"
Design.BottomSurface = "Smooth"
Design.Size = Vector3.new(1, 1, 1)
Design.CanCollide = True
Design.Transparency = 0
Design.BrickColor = BrickColor.new("Gold")
DesignMesh = Instance.new("SpecialMesh", Design)
DesignMesh.MeshType = "Brick"
DesignMesh.Scale = Vector3.new(0.12,2,0.05)
DesignWeld = Instance.new("Weld",Cha)
DesignWeld.Part0 = Sword6
DesignWeld.Part1 = Design
DesignWeld.C1 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design2 = Instance.new("Part",Cha)
Design2.TopSurface = "Smooth"
Design2.BottomSurface = "Smooth"
Design2.Size = Vector3.new(1, 1, 1)
Design2.CanCollide = True
Design2.Transparency = 0
Design2.BrickColor = BrickColor.new("Black")
Design2Mesh = Instance.new("SpecialMesh",Design2) 
Design2Mesh.MeshType = "FileMesh" 
Design2Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Design2Mesh.Scale = Vector3.new(0.1, 0.2, 0.3)
Design2Weld = Instance.new("Weld",Cha)
Design2Weld.Part0 = Design
Design2Weld.Part1 = Design2
Design2Weld.C1 = CFrame.new(0,-0.3,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design3 = Instance.new("Part",Cha)
Design3.TopSurface = "Smooth"
Design3.BottomSurface = "Smooth"
Design3.Size = Vector3.new(1, 1, 1)
Design3.CanCollide = True
Design3.Transparency = 0
Design3.BrickColor = BrickColor.new("Black")
Design3Mesh = Instance.new("SpecialMesh",Design3) 
Design3Mesh.MeshType = "FileMesh" 
Design3Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Design3Mesh.Scale = Vector3.new(0.1, 0.2, 0.3)
Design3Weld = Instance.new("Weld",Cha)
Design3Weld.Part0 = Design
Design3Weld.Part1 = Design3
Design3Weld.C1 = CFrame.new(0,-0.7,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design4 = Instance.new("Part",Cha)
Design4.TopSurface = "Smooth"
Design4.BottomSurface = "Smooth"
Design4.Size = Vector3.new(1, 1, 1)
Design4.CanCollide = True
Design4.Transparency = 0
Design4.BrickColor = BrickColor.new("Bright bluish green")
Design4Mesh = Instance.new("SpecialMesh",Design4) 
Design4Mesh.MeshType = "FileMesh" 
Design4Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Design4Mesh.Scale = Vector3.new(0.13, 0.18, 0.28)
Design4Weld = Instance.new("Weld",Cha)
Design4Weld.Part0 = Design
Design4Weld.Part1 = Design4
Design4Weld.C1 = CFrame.new(0,-0.3,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design5 = Instance.new("Part",Cha)
Design5.TopSurface = "Smooth"
Design5.BottomSurface = "Smooth"
Design5.Size = Vector3.new(1, 1, 1)
Design5.CanCollide = True
Design5.Transparency = 0
Design5.BrickColor = BrickColor.new("Bright bluish green")
Design5Mesh = Instance.new("SpecialMesh",Design5) 
Design5Mesh.MeshType = "FileMesh" 
Design5Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Design5Mesh.Scale = Vector3.new(0.13, 0.18, 0.28)
Design5Weld = Instance.new("Weld",Cha)
Design5Weld.Part0 = Design
Design5Weld.Part1 = Design5
Design5Weld.C1 = CFrame.new(0,-0.7,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design6 = Instance.new("Part",Cha)
Design6.TopSurface = "Smooth"
Design6.BottomSurface = "Smooth"
Design6.Size = Vector3.new(1, 1, 1)
Design6.CanCollide = True
Design6.Transparency = 0
Design6.BrickColor = BrickColor.new("Bright bluish green")
Design6Mesh = Instance.new("SpecialMesh",Design6) 
Design6Mesh.MeshType = "FileMesh" 
Design6Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Design6Mesh.Scale = Vector3.new(0.13, 0.25, 0.1)
Design6Weld = Instance.new("Weld",Cha)
Design6Weld.Part0 = Design
Design6Weld.Part1 = Design6
Design6Weld.C1 = CFrame.new(0,-1.2,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design7 = Instance.new("Part",Cha)
Design7.TopSurface = "Smooth"
Design7.BottomSurface = "Smooth"
Design7.Size = Vector3.new(1, 1, 1)
Design7.CanCollide = True
Design7.Transparency = 0
Design7.BrickColor = BrickColor.new("Black")
Design7Mesh = Instance.new("SpecialMesh",Design7) 
Design7Mesh.MeshType = "FileMesh" 
Design7Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Design7Mesh.Scale = Vector3.new(0.1, 0.1, 0.3)
Design7Weld = Instance.new("Weld",Cha)
Design7Weld.Part0 = Design
Design7Weld.Part1 = Design7
Design7Weld.C1 = CFrame.new(0,-0.3,0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design8 = Instance.new("Part",Cha)
Design8.TopSurface = "Smooth"
Design8.BottomSurface = "Smooth"
Design8.Size = Vector3.new(1, 1, 1)
Design8.CanCollide = True
Design8.Transparency = 0
Design8.BrickColor = BrickColor.new("Black")
Design8Mesh = Instance.new("SpecialMesh",Design8) 
Design8Mesh.MeshType = "FileMesh" 
Design8Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Design8Mesh.Scale = Vector3.new(0.1, 0.1, 0.3)
Design8Weld = Instance.new("Weld",Cha)
Design8Weld.Part0 = Design
Design8Weld.Part1 = Design8
Design8Weld.C1 = CFrame.new(0,-0.7,0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Key = Instance.new("Part",Cha)
Key.TopSurface = "Smooth"
Key.BottomSurface = "Smooth"
Key.Size = Vector3.new(1, 1, 1)
Key.CanCollide = True
Key.Transparency = 0
Key.BrickColor = BrickColor.new("Black")
KeyMesh = Instance.new("SpecialMesh",Key) 
KeyMesh.MeshType = "Brick" 
KeyMesh.Scale = Vector3.new(0.1, 0.3, 0.1)
KeyWeld = Instance.new("Weld",Cha)
KeyWeld.Part0 = Design
KeyWeld.Part1 = Key
KeyWeld.C1 = CFrame.new(0,-0.2,0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Key2 = Instance.new("Part",Cha)
Key2.TopSurface = "Smooth"
Key2.BottomSurface = "Smooth"
Key2.Size = Vector3.new(1, 1, 1)
Key2.CanCollide = True
Key2.Transparency = 0
Key2.BrickColor = BrickColor.new("Black")
Key2Mesh = Instance.new("SpecialMesh",Key2) 
Key2Mesh.MeshType = "Brick" 
Key2Mesh.Scale = Vector3.new(0.1, 0.05, 0.2)
Key2Weld = Instance.new("Weld",Cha)
Key2Weld.Part0 = Design
Key2Weld.Part1 = Key2
Key2Weld.C1 = CFrame.new(0,-0.7,0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Key3 = Instance.new("Part",Cha)
Key3.TopSurface = "Smooth"
Key3.BottomSurface = "Smooth"
Key3.Size = Vector3.new(1, 1, 1)
Key3.CanCollide = True
Key3.Transparency = 0
Key3.BrickColor = BrickColor.new("Black")
Key3Mesh = Instance.new("SpecialMesh",Key3) 
Key3Mesh.MeshType = "Brick" 
Key3Mesh.Scale = Vector3.new(0.1, 0.2, 0.1)
Key3Weld = Instance.new("Weld",Cha)
Key3Weld.Part0 = Design
Key3Weld.Part1 = Key3
Key3Weld.C1 = CFrame.new(0,-0.7,0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Key4 = Instance.new("Part",Cha)
Key4.TopSurface = "Smooth"
Key4.BottomSurface = "Smooth"
Key4.Size = Vector3.new(1, 1, 1)
Key4.CanCollide = True
Key4.Transparency = 0
Key4.BrickColor = BrickColor.new("Black")
Key4Mesh = Instance.new("SpecialMesh",Key4) 
Key4Mesh.MeshType = "Brick" 
Key4Mesh.Scale = Vector3.new(0.05, 0.05, 0.1)
Key4Weld = Instance.new("Weld",Cha)
Key4Weld.Part0 = Design
Key4Weld.Part1 = Key4
Key4Weld.C1 = CFrame.new(0,-0.7,0.55)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Key5 = Instance.new("Part",Cha)
Key5.TopSurface = "Smooth"
Key5.BottomSurface = "Smooth"
Key5.Size = Vector3.new(1, 1, 1)
Key5.CanCollide = True
Key5.Transparency = 0
Key5.BrickColor = BrickColor.new("Black")
Key5Mesh = Instance.new("SpecialMesh",Key5) 
Key5Mesh.MeshType = "Brick" 
Key5Mesh.Scale = Vector3.new(0.1, 0.8, 0.1)
Key5Weld = Instance.new("Weld",Cha)
Key5Weld.Part0 = Design
Key5Weld.Part1 = Key5
Key5Weld.C1 = CFrame.new(0,-0.7,0.65)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Key6 = Instance.new("Part",Cha)
Key6.TopSurface = "Smooth"
Key6.BottomSurface = "Smooth"
Key6.Size = Vector3.new(1, 1, 1)
Key6.CanCollide = True
Key6.Transparency = 0
Key6.BrickColor = BrickColor.new("Black")
Key6Mesh = Instance.new("SpecialMesh",Key6) 
Key6Mesh.MeshType = "Brick" 
Key6Mesh.Scale = Vector3.new(0.1, 0.1, 0.7)
Key6Weld = Instance.new("Weld",Cha)
Key6Weld.Part0 = Design
Key6Weld.Part1 = Key6
Key6Weld.C1 = CFrame.new(0,-1.2,0.25)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)

Key7 = Instance.new("Part",Cha)
Key7.TopSurface = "Smooth"
Key7.BottomSurface = "Smooth"
Key7.Size = Vector3.new(1, 1, 1)
Key7.CanCollide = True
Key7.Transparency = 0
Key7.BrickColor = BrickColor.new("Black")
Key7Mesh = Instance.new("SpecialMesh",Key7) 
Key7Mesh.MeshType = "Brick" 
Key7Mesh.Scale = Vector3.new(0.1, 0.1, 0.7)
Key7Weld = Instance.new("Weld",Cha)
Key7Weld.Part0 = Design
Key7Weld.Part1 = Key7
Key7Weld.C1 = CFrame.new(0,-0.1,0.55)*CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)

Key8 = Instance.new("Part",Cha)
Key8.TopSurface = "Smooth"
Key8.BottomSurface = "Smooth"
Key8.Size = Vector3.new(1, 1, 1)
Key8.CanCollide = True
Key8.Transparency = 0
Key8.BrickColor = BrickColor.new("Black")
Key8Mesh = Instance.new("SpecialMesh",Key8) 
Key8Mesh.MeshType = "FileMesh" 
Key8Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Key8Mesh.Scale = Vector3.new(0.1, 0.1, 0.7)
Key8Weld = Instance.new("Weld",Cha)
Key8Weld.Part0 = Design
Key8Weld.Part1 = Key8
Key8Weld.C1 = CFrame.new(0,-0.7,0.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Key9 = Instance.new("Part",Cha)
Key9.TopSurface = "Smooth"
Key9.BottomSurface = "Smooth"
Key9.Size = Vector3.new(1, 1, 1)
Key9.CanCollide = True
Key9.Transparency = 0
Key9.BrickColor = BrickColor.new("Black")
Key9Mesh = Instance.new("SpecialMesh",Key9) 
Key9Mesh.MeshType = "Brick" 
Key9Mesh.Scale = Vector3.new(0.1, 0.8, 0.1)
Key9Weld = Instance.new("Weld",Cha)
Key9Weld.Part0 = Design
Key9Weld.Part1 = Key9
Key9Weld.C1 = CFrame.new(0,-0.7,0.85)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HandleDesign = Instance.new("Part",Cha)
HandleDesign.TopSurface = "Smooth"
HandleDesign.BottomSurface = "Smooth"
HandleDesign.Size = Vector3.new(1, 1, 1)
HandleDesign.CanCollide = True
HandleDesign.Transparency = 0
HandleDesign.BrickColor = BrickColor.new("Bright bluish green")
HandleDesignMesh = Instance.new("SpecialMesh", HandleDesign)
HandleDesignMesh.MeshType = "Brick"
HandleDesignMesh.Scale = Vector3.new(0.1,0.25,0.1)
HandleDesignWeld = Instance.new("Weld",Cha)
HandleDesignWeld.Part0 = Handle
HandleDesignWeld.Part1 = HandleDesign
HandleDesignWeld.C1 = CFrame.new(0.5,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, -0.5)

HandleDesign2 = Instance.new("Part",Cha)
HandleDesign2.TopSurface = "Smooth"
HandleDesign2.BottomSurface = "Smooth"
HandleDesign2.Size = Vector3.new(1, 1, 1)
HandleDesign2.CanCollide = True
HandleDesign2.Transparency = 0
HandleDesign2.BrickColor = BrickColor.new("Bright bluish green")
HandleDesign2Mesh = Instance.new("SpecialMesh", HandleDesign2)
HandleDesign2Mesh.MeshType = "Brick"
HandleDesign2Mesh.Scale = Vector3.new(0.1,0.25,0.1)
HandleDesign2Weld = Instance.new("Weld",Cha)
HandleDesign2Weld.Part0 = Handle
HandleDesign2Weld.Part1 = HandleDesign2
HandleDesign2Weld.C1 = CFrame.new(0.5,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0.5)

HandleDesign3 = Instance.new("Part",Cha)
HandleDesign3.TopSurface = "Smooth"
HandleDesign3.BottomSurface = "Smooth"
HandleDesign3.Size = Vector3.new(1, 1, 1)
HandleDesign3.CanCollide = True
HandleDesign3.Transparency = 0
HandleDesign3.BrickColor = BrickColor.new("Bright bluish green")
HandleDesign3Mesh = Instance.new("SpecialMesh", HandleDesign3)
HandleDesign3Mesh.MeshType = "Brick"
HandleDesign3Mesh.Scale = Vector3.new(0.1,0.25,0.1)
HandleDesign3Weld = Instance.new("Weld",Cha)
HandleDesign3Weld.Part0 = HandleDesign
HandleDesign3Weld.Part1 = HandleDesign3
HandleDesign3Weld.C1 = CFrame.new(0.1,0.2,0)*CFrame.fromEulerAnglesXYZ(0, 0, -0.7)

HandleDesign4 = Instance.new("Part",Cha)
HandleDesign4.TopSurface = "Smooth"
HandleDesign4.BottomSurface = "Smooth"
HandleDesign4.Size = Vector3.new(1, 1, 1)
HandleDesign4.CanCollide = True
HandleDesign4.Transparency = 0
HandleDesign4.BrickColor = BrickColor.new("Bright bluish green")
HandleDesign4Mesh = Instance.new("SpecialMesh", HandleDesign4)
HandleDesign4Mesh.MeshType = "Brick"
HandleDesign4Mesh.Scale = Vector3.new(0.1,0.25,0.1)
HandleDesign4Weld = Instance.new("Weld",Cha)
HandleDesign4Weld.Part0 = HandleDesign2
HandleDesign4Weld.Part1 = HandleDesign4
HandleDesign4Weld.C1 = CFrame.new(0.1,-0.2,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0.7)

HandleDesign5 = Instance.new("Part",Cha)
HandleDesign5.TopSurface = "Smooth"
HandleDesign5.BottomSurface = "Smooth"
HandleDesign5.Size = Vector3.new(1, 1, 1)
HandleDesign5.CanCollide = True
HandleDesign5.Transparency = 0
HandleDesign5.BrickColor = BrickColor.new("Bright bluish green")
HandleDesign5Mesh = Instance.new("SpecialMesh", HandleDesign5)
HandleDesign5Mesh.MeshType = "Brick"
HandleDesign5Mesh.Scale = Vector3.new(0.1,0.5,0.1)
HandleDesign5Weld = Instance.new("Weld",Cha)
HandleDesign5Weld.Part0 = HandleDesign3
HandleDesign5Weld.Part1 = HandleDesign5
HandleDesign5Weld.C1 = CFrame.new(0.05,0.44,0)*CFrame.fromEulerAnglesXYZ(0, 0, -0.4)

HandleDesign6 = Instance.new("Part",Cha)
HandleDesign6.TopSurface = "Smooth"
HandleDesign6.BottomSurface = "Smooth"
HandleDesign6.Size = Vector3.new(1, 1, 1)
HandleDesign6.CanCollide = True
HandleDesign6.Transparency = 0
HandleDesign6.BrickColor = BrickColor.new("Bright bluish green")
HandleDesign6Mesh = Instance.new("SpecialMesh", HandleDesign6)
HandleDesign6Mesh.MeshType = "Brick"
HandleDesign6Mesh.Scale = Vector3.new(0.1,0.5,0.1)
HandleDesign6Weld = Instance.new("Weld",Cha)
HandleDesign6Weld.Part0 = HandleDesign4
HandleDesign6Weld.Part1 = HandleDesign6
HandleDesign6Weld.C1 = CFrame.new(0.05,-0.44,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0.4)

HandleDesign7 = Instance.new("Part",Cha)
HandleDesign7.TopSurface = "Smooth"
HandleDesign7.BottomSurface = "Smooth"
HandleDesign7.Size = Vector3.new(1, 1, 1)
HandleDesign7.CanCollide = True
HandleDesign7.Transparency = 0
HandleDesign7.BrickColor = BrickColor.new("Bright bluish green")
HandleDesign7Mesh = Instance.new("SpecialMesh", HandleDesign7)
HandleDesign7Mesh.MeshType = "Brick"
HandleDesign7Mesh.Scale = Vector3.new(0.1,0.5,0.1)
HandleDesign7Weld = Instance.new("Weld",Cha)
HandleDesign7Weld.Part0 = HandleDesign5
HandleDesign7Weld.Part1 = HandleDesign7
HandleDesign7Weld.C1 = CFrame.new(0.17,0.35,0)*CFrame.fromEulerAnglesXYZ(0, 0, -1)

HandleDesign8 = Instance.new("Part",Cha)
HandleDesign8.TopSurface = "Smooth"
HandleDesign8.BottomSurface = "Smooth"
HandleDesign8.Size = Vector3.new(1, 1, 1)
HandleDesign8.CanCollide = True
HandleDesign8.Transparency = 0
HandleDesign8.BrickColor = BrickColor.new("Bright bluish green")
HandleDesign8Mesh = Instance.new("SpecialMesh", HandleDesign8)
HandleDesign8Mesh.MeshType = "Brick"
HandleDesign8Mesh.Scale = Vector3.new(0.1,0.5,0.1)
HandleDesign8Weld = Instance.new("Weld",Cha)
HandleDesign8Weld.Part0 = HandleDesign6
HandleDesign8Weld.Part1 = HandleDesign8
HandleDesign8Weld.C1 = CFrame.new(0.17,-0.35,0)*CFrame.fromEulerAnglesXYZ(0, 0, 1)

HandleBottom = Instance.new("Part",Cha)
HandleBottom.TopSurface = "Smooth"
HandleBottom.BottomSurface = "Smooth"
HandleBottom.Size = Vector3.new(1, 1, 1)
HandleBottom.CanCollide = True
HandleBottom.Transparency = 0
HandleBottom.BrickColor = BrickColor.new("Medium stone grey")
HandleBottomMesh = Instance.new("SpecialMesh", HandleBottom)
HandleBottomMesh.MeshType = "Brick"
HandleBottomMesh.Scale = Vector3.new(0.1,0.1,0.1)
HandleBottomWeld = Instance.new("Weld",Cha)
HandleBottomWeld.Part0 = Handle
HandleBottomWeld.Part1 = HandleBottom
HandleBottomWeld.C1 = CFrame.new(-1,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HandleBottom2 = Instance.new("Part",Cha)
HandleBottom2.TopSurface = "Smooth"
HandleBottom2.BottomSurface = "Smooth"
HandleBottom2.Size = Vector3.new(1, 1, 1)
HandleBottom2.CanCollide = True
HandleBottom2.Transparency = 0
HandleBottom2.BrickColor = BrickColor.new("Medium stone grey")
HandleBottom2Mesh = Instance.new("SpecialMesh", HandleBottom2)
HandleBottom2Mesh.MeshType = "Brick"
HandleBottom2Mesh.Scale = Vector3.new(0.1,0.1,0.1)
HandleBottom2Weld = Instance.new("Weld",Cha)
HandleBottom2Weld.Part0 = Handle
HandleBottom2Weld.Part1 = HandleBottom2
HandleBottom2Weld.C1 = CFrame.new(-1.2,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HandleBottom3 = Instance.new("Part",Cha)
HandleBottom3.TopSurface = "Smooth"
HandleBottom3.BottomSurface = "Smooth"
HandleBottom3.Size = Vector3.new(1, 1, 1)
HandleBottom3.CanCollide = True
HandleBottom3.Transparency = 0
HandleBottom3.BrickColor = BrickColor.new("Medium stone grey")
HandleBottom3Mesh = Instance.new("SpecialMesh", HandleBottom3)
HandleBottom3Mesh.MeshType = "Brick"
HandleBottom3Mesh.Scale = Vector3.new(0.1,0.1,0.1)
HandleBottom3Weld = Instance.new("Weld",Cha)
HandleBottom3Weld.Part0 = Handle
HandleBottom3Weld.Part1 = HandleBottom3
HandleBottom3Weld.C1 = CFrame.new(-1.4,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HandleBottom4 = Instance.new("Part",Cha)
HandleBottom4.TopSurface = "Smooth"
HandleBottom4.BottomSurface = "Smooth"
HandleBottom4.Size = Vector3.new(1, 1, 1)
HandleBottom4.CanCollide = True
HandleBottom4.Transparency = 0
HandleBottom4.BrickColor = BrickColor.new("Medium stone grey")
HandleBottom4Mesh = Instance.new("SpecialMesh", HandleBottom4)
HandleBottom4Mesh.MeshType = "Brick"
HandleBottom4Mesh.Scale = Vector3.new(0.2,0.2,0.2)
HandleBottom4Weld = Instance.new("Weld",Cha)
HandleBottom4Weld.Part0 = Handle
HandleBottom4Weld.Part1 = HandleBottom4
HandleBottom4Weld.C1 = CFrame.new(-1.7,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Design.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and equip == false and on == true then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)

Design2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and equip == false and on == true then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)

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
if key == "e" and equip == false and on == false then
Chat(Cha.Head,"FACE SHADOWS BTCH.","Really black")
equip = true
on = true
HandleWeld.C1 = CFrame.new(-1.5, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-2, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-2.5, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-3, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-3.5, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-4.5, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.Part0 = Cha["Right Arm"]
HandleWeld.Part1 = Handle
HandleWeld.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
wait(1)
on = false
end

if key == "q" and equip == true and on == false then
Chat(Cha.Head,"I DONE NAO","Really black")
equip = false
HandleWeld.Part0 = Cha.Torso
HandleWeld.Part1 = Handle
HandleWeld.C1 = CFrame.new(-4.5, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-3.5, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-3, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-2.5, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-2, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-1.5, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
wait()
HandleWeld.C1 = CFrame.new(-1, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, -1)
end

if key == "r" and equip == true and fb == false then
Chat(Cha.Head,"FIRAGA","Bright red")
fb = true


FireBall=Instance.new('Part',Workspace)
FireBall.Size=Vector3.new(14,14,14)
FireBall.BrickColor=BrickColor.new("Really black")
FireBall.CanCollide = True
FireBall.TopSurface = "Smooth"
FireBall.BottomSurface = "Smooth"
FireBall.Position=torso.Position+torso.CFrame.lookVector*20
FireBall.Transparency = 0.3
FireBall:BreakJoints()
FireBallMesh = Instance.new("SpecialMesh", FireBall)
FireBallMesh.MeshType = "Sphere"
FireBallMesh.Scale = Vector3.new(1,1,1)
Shooter = Instance.new('BodyVelocity',FireBall) 
Shooter.maxForce = Vector3.new()*math.huge
Shooter.velocity = torso.CFrame.lookVector*100

coroutine.resume(coroutine.create(function()
while wait() do
for i = 1,26 do wait()
p = Instance.new("Part",workspace)
p.FormFactor="Custom"
p.Size = Vector3.new(15,15,15)
p.TopSurface = 0 
p.BottomSurface = 0 
p.BrickColor=BrickColor.new("Really black")
p.Transparency=.6
p.CanCollide=false
p.Anchored=true
p.Parent = FireBall
p.CFrame =(FireBall.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
game.Debris:AddItem(p,.1)
end 
end
end))


FireBlastOff = Instance.new("BodyVelocity")
FireBlastOff.maxForce = Vector3.new(math.huge, math.huge, math.huge)
FireBlastOff.velocity = torso.CFrame.lookVector*100

FireBall.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
FireBall:Destroy()
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(40)
hit.Parent:FindFirstChild("Humanoid").Sit = true
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 0
e.BlastRadius = 10
eFireBlastOff = FireBlastOff:clone()
eFireBlastOff.Parent = hit.Parent:findFirstChild("Torso")
eFireBlastOff.Name = "eFireBlastOff"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "eFireBlastOff" then
wait(0.5)
v:Destroy()
end
end
end
end)

wait(5)
FireBall:Destroy()
fb = false
end

if key == "f" and equip == true and ib == false then
Chat(Cha.Head,"ICE ATTACK","Navy blue")
ib = true

IceBall=Instance.new('Part',Workspace)
IceBall.Size=Vector3.new(11,11,11)
IceBall.BrickColor=BrickColor.new("Really black")
IceBall.CanCollide = True
IceBall.TopSurface = "Smooth"
IceBall.BottomSurface = "Smooth"
IceBall.Position=torso.Position+torso.CFrame.lookVector*20
IceBall.Transparency = 1
IceBall:BreakJoints()
IceBallMesh = Instance.new("SpecialMesh", IceBall)
IceBallMesh.MeshType = "Sphere"
IceBallMesh.Scale = Vector3.new(1,1,1)
Shooter2 = Instance.new('BodyVelocity',IceBall) 
Shooter2.maxForce = Vector3.new()*math.huge
Shooter2.velocity = torso.CFrame.lookVector*100

coroutine.resume(coroutine.create(function()
while wait() do
for i = 1,26 do wait()
p2 = Instance.new("Part",workspace)
p2.FormFactor="Custom"
p2.Size = Vector3.new(12,12,12)
p2.TopSurface = 0 
p2.BottomSurface = 0 
p2.BrickColor=BrickColor.new("Really black")
p2.Transparency=.6
p2.CanCollide=false
p2.Anchored=true
p2.Parent = IceBall
p2.CFrame =(IceBall.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
game.Debris:AddItem(p2,.1)

p3 = Instance.new("Part",workspace)
p3.FormFactor="Custom"
p3.Size = Vector3.new(12,12,12)
p3.TopSurface = 0 
p3.BottomSurface = 0 
p3.BrickColor=BrickColor.new("Navy blue")
p3.Transparency=.6
p3.CanCollide=false
p3.Anchored=true
p3.Parent = IceBall
p3.CFrame =(IceBall.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
game.Debris:AddItem(p3,.1)

end 
end
end))

IceBall.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
IceBall:Destroy()
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(40)
hit.Parent:FindFirstChild("Humanoid").WalkSpeed = 0
wait(5)
hit.Parent:FindFirstChild("Humanoid").WalkSpeed = 18
end
end)

wait(5)
IceBall:Destroy()

wait(10)
ib = false
end

if key == "z" and equip == true and lb == false then
Chat(Cha.Head,"THUNDERAGA","Bright yellow")
lb = true

local MPS = {}
local MousePos = Mouse.Hit.p
local LastPart = nil
for i = 1,20 do
local part = Instance.new("Part",Workspace)
part.Anchored = true
table.insert(MPS,part)
part.FormFactor = "Custom"
part.Size = Vector3.new(0,0,0)
part.Transparency = 1
if LastPart == nil then
part.CFrame = CFrame.new(MousePos.X,MousePos.Y,MousePos.Z)
else
part.CFrame = CFrame.new(LastPart.CFrame.X +math.random(-20,20),LastPart.CFrame.Y +math.random(0,20),LastPart.CFrame.Z +math.random(-20,20))
end
LastPart = part
end
for i,v in ipairs(MPS) do
if i > 1 then
MakeLaser(MPS[i-1],v)
end
end
wait(5)
for i,v in ipairs(Lasers) do
v:Destroy()
end
for i,v in ipairs(MPS) do
v:Destroy()
end
wait()
lb = false
end
end)