--o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-<>[The Sorcerer Script]<>-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-o-

Player = game.Players.LocalPlayer -- try using LocalPlayer instead of your name :p
Character = Player.Character
Children = Character:GetChildren()
IN = Instance.new
CF = CFrame.new
V3 = Vector3.new
BC = BrickColor.new

--[Turning the Character]--

Blast = IN("Part", Workspace)
Blast.FormFactor = "Symmetric"
Blast.Size = V3(1, 1, 1)
Blast.CanCollide = false
Blast.TopSurface = 0
Blast.BottomSurface = 0
Blast.BrickColor = BC("Really black")

BM = Instance.new("SpecialMesh", Blast)
BM.MeshType = "Sphere"

W1 = IN("Weld", Blast)
W1.Part0 = Blast
W1.Part1 = Character.Torso

for i = 1, 20 do
        BM.Scale = BM.Scale + Vector3.new(1, 1, 1)
        wait()
end

for i = 1, 10 do
        
        Wave = IN("Part", Workspace)
        Wave.FormFactor = "Symmetric"
        Wave.BrickColor = BC("Really red")
        Wave.Size = V3(1, 1, 1)
        Wave.CanCollide = false
        
        WM = IN("SpecialMesh", Wave)
        WM.MeshId = "http://www.roblox.com/Asset/?id=9756362"
        
        W2 = IN("Weld", Wave)
        W2.Part0 = Wave
        W2.Part1 = Character.Torso
        W2.C0 = W1.C0 + Vector3.new(0, 1.5, 0)
        
        for i = 1, 20 do
                WM.Scale = WM.Scale + Vector3.new(2, 0, 2)
                wait()
        end
        Wave:Destroy()
end
Blast:Destroy()

--[Cleaning Character]--

Eye = IN("Part", Character)
Eye.FormFactor = "Symmetric"
Eye.Size = V3(1, 1, 1)
Eye.CanCollide = false
Eye.TopSurface = 0
Eye.BottomSurface = 0
Eye.BrickColor = BC("Really red")

EM = IN("SpecialMesh", Eye)
EM.MeshType = "Sphere"
EM.Scale = V3(0.45, 0.45, 0.45)

Border = IN("Part", Character)
Border.FormFactor = "Symmetric"
Border.Size = V3(1, 1, 1)
Border.CanCollide = false
Border.BrickColor = BC("Really black")

BM = IN("SpecialMesh", Border)
BM.MeshId = "http://www.roblox.com/asset/?id=3270017"
BM.Scale = V3(0.5, 0.5, 1)

Pupil = IN("Part", Character)
Pupil.FormFactor = "Symmetric"
Pupil.Size = V3(1, 1, 1)
Pupil.CanCollide = false
Pupil.BrickColor = BC("Really black")

PM = IN("CylinderMesh", Pupil)
PM.Scale = V3(0.3, 0.05, 0.3)

Hat = IN("Hat", Character)
Hat.AttachmentPos = Vector3.new(-0.05,-0.65,0)
Hat.Name = "Cooky Wizard"

HH = IN("Part")
HH.Name = "Handle"
HH.Size = V3(1, 1, 1)
HH.Rotation = V3(-89.83, 89.68, 89.585)

HM = IN("SpecialMesh", HH)
HM.MeshId = "http://www.roblox.com/asset/?id="
HM.TextureId = "http://www.roblox.com/asset/?id="

HH.Parent = Hat

for i = 1, #Children do
        if Children[i].ClassName == "Hat" then
                Children[i]:Destroy()
        end
        
        if Children[i].ClassName == "Part" then
                Children[i].BrickColor = BC("Really red")
        end
end

Character.Head.face.Texture = "http://www.roblox.com/asset/?id=29588546"

Character.Shirt:Destroy()
Character.Pants:Destroy()
Character["Shirt Graphic"]:Destroy()

--[Welding]--

W3 = IN("Weld", Eye)
W3.Part0 = Eye
W3.Part1 = Character.Torso
W3.C0 = W3.C0 + Vector3.new(0, -0.3, 0.5)

W4 = IN("Weld", Border)
W4.Part0 = Border
W4.Part1 = Eye

W5 = IN("Weld", Pupil)
W5.Part0 = Pupil
W5.Part1 = Eye
W5.C0 = W5.C0 + Vector3.new(0, 0, 0.1)
W5.C1 = W5.C1 * CFrame.Angles(0, 0, 45.55)

function Weld(x,y)
        local W = Instance.new("Weld")
        W.Part0 = x
        W.Part1 = y
        local CJ = CFrame.new(x.Position)
        local C0 = x.CFrame:inverse()*CJ
        local C1 = y.CFrame:inverse()*CJ
        W.C0 = C0
        W.C1 = C1
        W.Parent = x
        
end

function Get(A)
        if A.className == "Part" then
                Weld(game.Workspace.Sorceriurs.Handle, A)
                A.Anchored = false
                A.CanCollide = false
        else
                local C = A:GetChildren()
                for i=1, #C do
                Get(C[i])
                end
        end
end

function Finale()
        Get(game.Workspace.Sorceriurs)
end

--[Sorcerius]--

Obj1 = Instance.new("Model")
Obj1.Name = "Sorceriurs"
Obj1.Parent = Workspace

Obj2 = Instance.new("Part")
Obj2.CFrame = CFrame.new(Vector3.new(59.9000015, 7.99000025, 0.900000036)) * CFrame.Angles(0, 1.5707963705063, 0)
Obj2.FormFactor = Enum.FormFactor.Symmetric
Obj2.Transparency = 0.5
Obj2.TopSurface = Enum.SurfaceType.Smooth
Obj2.BottomSurface = Enum.SurfaceType.Smooth
Obj2.Size = Vector3.new(1, 1, 1)
Obj2.Anchored = true
Obj2.BrickColor = BrickColor.new("Bright red")
Obj2.Friction = 0.30000001192093
Obj2.Shape = Enum.PartType.Block
Obj2.Name = "BlobbyblobBuild_Player1"
Obj2.Parent = Obj1

Obj3 = Instance.new("SpecialMesh")
Obj3.MeshType = Enum.MeshType.Sphere
Obj3.Parent = Obj2

Obj4 = Instance.new("Part")
Obj4.CFrame = CFrame.new(Vector3.new(59.9000015, 7.99000025, 0.900000036)) * CFrame.Angles(0, 1.5707963705063, 0)
Obj4.FormFactor = Enum.FormFactor.Symmetric
Obj4.TopSurface = Enum.SurfaceType.Smooth
Obj4.BottomSurface = Enum.SurfaceType.Smooth
Obj4.Size = Vector3.new(1, 1, 1)
Obj4.Anchored = true
Obj4.BrickColor = BrickColor.new("Really black")
Obj4.Friction = 0.30000001192093
Obj4.Shape = Enum.PartType.Block
Obj4.Name = "BlobbyblobBuild_Player1"
Obj4.Parent = Obj1

Obj5 = Instance.new("SpecialMesh")
Obj5.MeshType = Enum.MeshType.Sphere
Obj5.Scale = Vector3.new(0.5, 0.5, 0.5)
Obj5.Parent = Obj4

Obj6 = Instance.new("Part")
Obj6.CFrame = CFrame.new(Vector3.new(59.9000015, 5.39000034, 0.900000036)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
Obj6.FormFactor = Enum.FormFactor.Symmetric
Obj6.TopSurface = Enum.SurfaceType.Smooth
Obj6.BottomSurface = Enum.SurfaceType.Smooth
Obj6.Material = Enum.Material.SmoothPlastic
Obj6.Size = Vector3.new(1, 5, 1)
Obj6.Anchored = true
Obj6.BrickColor = BrickColor.new("Really black")
Obj6.Friction = 0.30000001192093
Obj6.Shape = Enum.PartType.Block
Obj6.Name = "Handle"
Obj6.Parent = Obj1

Obj7 = Instance.new("CylinderMesh")
Obj7.Scale = Vector3.new(1, 1, 0.200000003)
Obj7.Parent = Obj6

Obj8 = Instance.new("Part")
Obj8.CFrame = CFrame.new(Vector3.new(59.9000015, 7.19000053, 0.900000036)) * CFrame.Angles(-0.78539675474167, 0, -3.1415927410126)
Obj8.FormFactor = Enum.FormFactor.Symmetric
Obj8.TopSurface = Enum.SurfaceType.Smooth
Obj8.BottomSurface = Enum.SurfaceType.Smooth
Obj8.Size = Vector3.new(1, 1, 1)
Obj8.Anchored = true
Obj8.BrickColor = BrickColor.new("Bright red")
Obj8.Friction = 0.30000001192093
Obj8.Shape = Enum.PartType.Block
Obj8.Name = "BlobbyblobBuild_Player1"
Obj8.Parent = Obj1

Obj9 = Instance.new("SpecialMesh")
Obj9.MeshType = Enum.MeshType.FileMesh
Obj9.Scale = Vector3.new(0.5, 0.5, 0.5)
Obj9.MeshId = "http://www.roblox.com/asset/?id=3270017"
Obj9.Parent = Obj8

Obj10 = Instance.new("Part")
Obj10.CFrame = CFrame.new(Vector3.new(59.9000015, 7.19000053, 0.900000036)) * CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
Obj10.FormFactor = Enum.FormFactor.Symmetric
Obj10.TopSurface = Enum.SurfaceType.Smooth
Obj10.BottomSurface = Enum.SurfaceType.Smooth
Obj10.Material = Enum.Material.SmoothPlastic
Obj10.Size = Vector3.new(1, 1, 1)
Obj10.Anchored = true
Obj10.BrickColor = BrickColor.new("Really black")
Obj10.Friction = 0.30000001192093
Obj10.Shape = Enum.PartType.Block
Obj10.Name = "BlobbyblobBuild_Player1"
Obj10.Parent = Obj1

Obj11 = Instance.new("CylinderMesh")
Obj11.Scale = Vector3.new(1, 1, 0.200000003)
Obj11.Parent = Obj10

Obj12 = Instance.new("Part")
Obj12.CFrame = CFrame.new(Vector3.new(59.9000015, 2.69000006, 0.900000036)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
Obj12.FormFactor = Enum.FormFactor.Symmetric
Obj12.TopSurface = Enum.SurfaceType.Smooth
Obj12.BottomSurface = Enum.SurfaceType.Smooth
Obj12.Material = Enum.Material.SmoothPlastic
Obj12.Size = Vector3.new(1, 1, 1)
Obj12.Anchored = true
Obj12.Friction = 0.30000001192093
Obj12.Shape = Enum.PartType.Block
Obj12.Name = "BlobbyblobBuild_Player1"
Obj12.Parent = Obj1

Obj13 = Instance.new("CylinderMesh")
Obj13.Scale = Vector3.new(1, 0.5, 0.300000012)
Obj13.Parent = Obj12

Obj14 = Instance.new("Part")
Obj14.CFrame = CFrame.new(Vector3.new(59.840004, 5.39000034, 0.900000036)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
Obj14.FormFactor = Enum.FormFactor.Symmetric
Obj14.TopSurface = Enum.SurfaceType.Smooth
Obj14.BottomSurface = Enum.SurfaceType.Smooth
Obj14.Material = Enum.Material.SmoothPlastic
Obj14.Size = Vector3.new(1, 5, 1)
Obj14.Anchored = true
Obj14.BrickColor = BrickColor.new("Bright red")
Obj14.Friction = 0.30000001192093
Obj14.Shape = Enum.PartType.Block
Obj14.Name = "BlobbyblobBuild_Player1"
Obj14.Parent = Obj1

Obj15 = Instance.new("CylinderMesh")
Obj15.Scale = Vector3.new(1, 1, 0.100000001)
Obj15.Parent = Obj14

Obj16 = Instance.new("Part")
Obj16.CFrame = CFrame.new(Vector3.new(59.9000015, 7.19000053, 1.50000012)) * CFrame.Angles(0, 1.5707963705063, 0)
Obj16.FormFactor = Enum.FormFactor.Symmetric
Obj16.Size = Vector3.new(1, 1, 1)
Obj16.Anchored = true
Obj16.BrickColor = BrickColor.new("Bright red")
Obj16.Friction = 0.30000001192093
Obj16.Shape = Enum.PartType.Block
Obj16.Name = "BlobbyblobBuild_Player1"
Obj16.Parent = Obj1

Obj17 = Instance.new("SpecialMesh")
Obj17.MeshType = Enum.MeshType.FileMesh
Obj17.Scale = Vector3.new(0.200000003, 1.5, 0.200000003)
Obj17.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Obj17.Parent = Obj16

Obj18 = Instance.new("Part")
Obj18.CFrame = CFrame.new(Vector3.new(59.9000015, 7.19000053, 0.900000036)) * CFrame.Angles(-3.1415922641754, 0, -3.1415927410126)
Obj18.FormFactor = Enum.FormFactor.Symmetric
Obj18.TopSurface = Enum.SurfaceType.Smooth
Obj18.BottomSurface = Enum.SurfaceType.Smooth
Obj18.Size = Vector3.new(1, 1, 1)
Obj18.Anchored = true
Obj18.BrickColor = BrickColor.new("Bright red")
Obj18.Friction = 0.30000001192093
Obj18.Shape = Enum.PartType.Block
Obj18.Name = "BlobbyblobBuild_Player1"
Obj18.Parent = Obj1

Obj19 = Instance.new("SpecialMesh")
Obj19.MeshType = Enum.MeshType.FileMesh
Obj19.Scale = Vector3.new(0.5, 0.5, 0.5)
Obj19.MeshId = "http://www.roblox.com/asset/?id=3270017"
Obj19.Parent = Obj18

Obj20 = Instance.new("Part")
Obj20.CFrame = CFrame.new(Vector3.new(59.9000015, 7.19000053, 0.300000012)) * CFrame.Angles(0, 1.5707963705063, 0)
Obj20.FormFactor = Enum.FormFactor.Symmetric
Obj20.Size = Vector3.new(1, 1, 1)
Obj20.Anchored = true
Obj20.BrickColor = BrickColor.new("Bright red")
Obj20.Friction = 0.30000001192093
Obj20.Shape = Enum.PartType.Block
Obj20.Name = "BlobbyblobBuild_Player1"
Obj20.Parent = Obj1

Obj21 = Instance.new("SpecialMesh")
Obj21.MeshType = Enum.MeshType.FileMesh
Obj21.Scale = Vector3.new(0.200000003, 1.5, 0.200000003)
Obj21.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Obj21.Parent = Obj20

Obj22 = Instance.new("Part")
Obj22.CFrame = CFrame.new(Vector3.new(59.9000015, 7.19000053, 0.900000036)) * CFrame.Angles(-2.3561933040619, 0, -3.1415927410126)
Obj22.FormFactor = Enum.FormFactor.Symmetric
Obj22.TopSurface = Enum.SurfaceType.Smooth
Obj22.BottomSurface = Enum.SurfaceType.Smooth
Obj22.Size = Vector3.new(1, 1, 1)
Obj22.Anchored = true
Obj22.BrickColor = BrickColor.new("Bright red")
Obj22.Friction = 0.30000001192093
Obj22.Shape = Enum.PartType.Block
Obj22.Name = "BlobbyblobBuild_Player1"
Obj22.Parent = Obj1

Obj23 = Instance.new("SpecialMesh")
Obj23.MeshType = Enum.MeshType.FileMesh
Obj23.Scale = Vector3.new(0.5, 0.5, 0.5)
Obj23.MeshId = "http://www.roblox.com/asset/?id=3270017"
Obj23.Parent = Obj22

Obj24 = Instance.new("Part")
Obj24.CFrame = CFrame.new(Vector3.new(59.9000015, 7.19000053, 0.900000036)) * CFrame.Angles(1.5707963705063, 0, -3.1415927410126)
Obj24.FormFactor = Enum.FormFactor.Symmetric
Obj24.TopSurface = Enum.SurfaceType.Smooth
Obj24.BottomSurface = Enum.SurfaceType.Smooth
Obj24.Size = Vector3.new(1, 1, 1)
Obj24.Anchored = true
Obj24.BrickColor = BrickColor.new("Bright red")
Obj24.Friction = 0.30000001192093
Obj24.Shape = Enum.PartType.Block
Obj24.Name = "BlobbyblobBuild_Player1"
Obj24.Parent = Obj1

Obj25 = Instance.new("SpecialMesh")
Obj25.MeshType = Enum.MeshType.FileMesh
Obj25.Scale = Vector3.new(0.5, 0.5, 0.5)
Obj25.MeshId = "http://www.roblox.com/asset/?id=3270017"
Obj25.Parent = Obj24

Obj26 = Instance.new("Part")
Obj26.CFrame = CFrame.new(Vector3.new(59.9600029, 5.39000034, 0.900000036)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
Obj26.FormFactor = Enum.FormFactor.Symmetric
Obj26.TopSurface = Enum.SurfaceType.Smooth
Obj26.BottomSurface = Enum.SurfaceType.Smooth
Obj26.Material = Enum.Material.SmoothPlastic
Obj26.Size = Vector3.new(1, 5, 1)
Obj26.Anchored = true
Obj26.BrickColor = BrickColor.new("Bright red")
Obj26.Friction = 0.30000001192093
Obj26.Shape = Enum.PartType.Block
Obj26.Name = "BlobbyblobBuild_Player1"
Obj26.Parent = Obj1

Obj27 = Instance.new("CylinderMesh")
Obj27.Scale = Vector3.new(1, 1, 0.100000001)
Obj27.Parent = Obj26

Finale()

W0 = IN("Weld", game.Workspace.Sorceriurs.Handle)
W0.Part0 = game.Workspace.Sorceriurs.Handle
W0.Part1 = Character["Left Arm"]
W0.C0 = CFrame.fromEulerAnglesXYZ(1.56,0,1.56) * CFrame.new(0, 1, 0)
