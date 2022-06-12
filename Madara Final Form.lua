Player = game.Players.LocalPlayer
char = Player.Character
Cha = char
Mau5 = Player:GetMouse()
hed = char.Head
rarm = char["Right Arm"]
function nooutline(part)
                part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
        end
Cha.Head.face.Texture = "http://www.roblox.com/asset/?id=101765221"
Cha.Shirt:Remove()
Cha.Pants:Remove()

Shirt = Instance.new("Shirt",Character)
Shirt.Parent = Cha
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=249639658"

Pant = Instance.new("Pants",Character)
Pant.Parent = Cha
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=249639685"
lite = Instance.new("PointLight")
lite.Parent = Cha.Torso
lite.Brightness = 100
lite.Range = 8
lite.Color = Color3.new(1,1,1)
-------------Chakra Balls--------------------
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
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Hair"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Institutional white")
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(12.5095692, 22.9280014, 28.5988674, -1.79592973e-007, -0.978694081, 0.205298647, -1.48348063e-008, -0.205299929, -0.978699148, 0.999994814, 2.38417414e-007, -2.98021181e-008)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=12212520"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(13.299921, 22.8300076, 28.5998688, -1.19988712e-007, 8.94068393e-008, -0.999995589, -1.48348125e-008, 1, -8.94068108e-008, 0.999995589, -1.48348231e-008, 2.39197504e-007)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Institutional white")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(2, 2, 2)
p3.CFrame = CFrame.new(13.2999649, 23.4000015, 28.5999584, -1.19728938e-007, 5.96046092e-008, -0.999997199, -9.88988447e-009, 1, -5.96045844e-008, 0.999997199, -9.88988802e-009, 1.19728938e-007)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=16627529"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Institutional white")
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(13.220191, 23.5300064, 28.5998363, -2.39457108e-007, 1.19209027e-007, -0.99999398, -1.97797441e-008, 1, -1.19208977e-007, 0.99999398, -1.97797512e-008, 2.39457108e-007)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=19326912"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.VertexColor = Vector3.new(0, 0, 0)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Institutional white")
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(1, 1, 1)
p5.CFrame = CFrame.new(13.299963, 23.1500015, 28.5999584, -4.78911147e-007, 2.384173e-007, -0.999987543, -3.95593887e-008, 1, -2.38417186e-007, 0.999987543, -3.95594029e-008, 4.78911147e-007)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=45916884"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.VertexColor = Vector3.new(0, 0, 0)
b5.Scale = Vector3.new(1, 0.899999976, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Institutional white")
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.CFrame = CFrame.new(13.1003246, 23.2700119, 28.5500946, -9.57822294e-007, 4.76831474e-007, -0.999987543, -7.91193955e-008, 1, -2.84217094e-014, 0.999987543, -4.04650001e-015, 5.68434189e-014)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=62246019"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.VertexColor = Vector3.new(0, 0, 0)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Institutional white")
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(13.1008148, 23.0000076, 28.4990215, -9.57822294e-007, 4.76831502e-007, -0.999987543, -7.91194026e-008, 1, 3.5914197e-019, 0.999987543, 3.05883884e-015, 5.68434189e-014)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=76056263"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.VertexColor = Vector3.new(0, 0, 0)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Institutional white")
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(12.3756638, 22.3460064, 28.5989819, -9.57822294e-007, -0.80510509, 0.593111277, -7.91194026e-008, -0.593119025, -0.805114806, 0.999987543, -1.28919533e-014, 2.06653508e-014)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=12212520"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.VertexColor = Vector3.new(0, 0, 0)
b8.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Institutional white")
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(2, 1, 2)
p9.CFrame = CFrame.new(13.2349396, 23.2430096, 28.5993462, -9.57822294e-007, -0.0995007455, -0.995025039, -7.91194097e-008, 0.995037317, -0.0995024443, 0.999987543, -5.41274382e-016, -2.16294996e-014)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=12259089"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.VertexColor = Vector3.new(0, 0, 0)
b9.Scale = Vector3.new(1.01999998, 1.04999995, 1.04999995)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Institutional white")
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.CFrame = CFrame.new(12.9792271, 23.7430058, 28.6003838, -9.57822294e-007, -0.68356514, -0.729872584, -7.91194097e-008, 0.729881346, -0.683573902, 0.999987543, -1.35710662e-014, -1.68509463e-014)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=12212520"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.VertexColor = Vector3.new(0, 0, 0)
b10.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Institutional white")
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.CFrame = CFrame.new(12.8353081, 23.4680061, 28.5991058, -9.57822294e-007, -0.989463568, -0.144696504, -7.91194026e-008, 0.144697905, -0.989475906, 0.999987543, -2.11154641e-014, -4.7186215e-015)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=12212520"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.VertexColor = Vector3.new(0, 0, 0)
b11.Scale = Vector3.new(1, 1.60000002, 1.29999995)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-28.5990181, 16.950285, 19.8713875, 0, 0, 0.999999583, -0.97869873, -0.205299839, 5.96046448e-008, 0.20529972, -0.978699148, -7.4505806e-009)
w1.Part1 = p2
w1.C1 = CFrame.new(-28.5999966, -22.8300076, 13.2999811, 5.96046448e-008, 0, 0.999999642, 0, 1, 0, -0.999999642, 0, 5.96046448e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-28.5999527, -22.8300056, 13.2999592, -2.5997493e-010, -4.94494357e-009, 0.999998808, 2.98023224e-008, 1, -4.94494712e-009, -0.999998808, -2.98023224e-008, 1.19469163e-007)
w2.Part1 = p3
w2.C1 = CFrame.new(-28.5999947, -23.3999996, 13.2999821, 0, 0, 0.999999583, 0, 1, 0, -0.999999583, 0, 0)
w3 = Instance.new("Weld", p3)
w3.Name = "Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-28.5999012, -23.3999996, 13.2999363, -1.19728938e-007, -9.88988447e-009, 0.999997199, 5.96046092e-008, 1, -9.88988802e-009, -0.999997199, -5.96045844e-008, 1.19728938e-007)
w3.Part1 = p4
w3.C1 = CFrame.new(-28.5998726, -23.5300045, 13.2202082, 0, 0, 0.999999583, 0, 1, 0, -0.999999583, 0, 0)
w4 = Instance.new("Weld", p4)
w4.Name = "Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-28.5996857, -23.5300064, 13.2201195, -2.39457108e-007, -1.97797441e-008, 0.99999398, 1.19209027e-007, 1, -1.97797512e-008, -0.99999398, -1.19208977e-007, 2.39457108e-007)
w4.Part1 = p5
w4.C1 = CFrame.new(-28.5999947, -23.1499996, 13.2999821, 0, 0, 0.999999583, 0, 1, 0, -0.999999583, 0, 0)
w5 = Instance.new("Weld", p5)
w5.Name = "Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-28.5996189, -23.1500015, 13.2998009, -4.78911147e-007, -3.95593887e-008, 0.999987543, 2.384173e-007, 1, -3.95594029e-008, -0.999987543, -2.38417186e-007, 4.78911147e-007)
w5.Part1 = p6
w5.C1 = CFrame.new(-28.5501289, -23.27001, 13.1003361, 0, 0, 0.999999583, 0, 1, 0, -0.999999583, 0, 0)
w6 = Instance.new("Weld", p6)
w6.Name = "Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-28.5497494, -23.2700157, 13.100173, -9.57822294e-007, -7.91193955e-008, 0.999987543, 4.76831474e-007, 1, -4.04650001e-015, -0.999987543, -2.84217094e-014, 5.68434189e-014)
w6.Part1 = p7
w6.C1 = CFrame.new(-28.4990501, -23.0000057, 13.1008282, 0, 0, 0.999999881, 0, 1, 0, -0.999999881, 0, 0)
w7 = Instance.new("Weld", p7)
w7.Name = "Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-28.4986763, -23.0000114, 13.1006632, -9.57822294e-007, -7.91194026e-008, 0.999987543, 4.76831502e-007, 1, 3.05883884e-015, -0.999987543, 3.5914197e-019, 5.68434189e-014)
w7.Part1 = p8
w7.C1 = CFrame.new(-28.5990181, 23.2175999, 10.6510067, 0, 0, 0.999999583, -0.805118203, -0.59311378, -5.96046448e-008, 0.593113363, -0.80511874, 0)
w8 = Instance.new("Weld", p8)
w8.Name = "Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-28.5986366, 23.2175598, 10.6509457, -9.57822294e-007, -7.91194026e-008, 0.999987543, -0.80510509, -0.593119025, -1.28919533e-014, 0.593111277, -0.805114806, 2.06653508e-014)
w8.Part1 = p9
w8.C1 = CFrame.new(-28.5993843, -21.8107243, 15.4820604, 0, 0, 0.999999583, -0.0995036662, 0.995037258, 0, -0.995036721, -0.0995037258, 0)
w9 = Instance.new("Weld", p9)
w9.Name = "Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-28.598999, -21.8107738, 15.4818439, -9.57822294e-007, -7.91194097e-008, 0.999987543, -0.0995007455, 0.995037317, -5.41274382e-016, -0.995025039, -0.0995024443, -2.16294996e-014)
w9.Part1 = p10
w9.C1 = CFrame.new(-28.6004219, -8.45714283, 25.703455, 0, 0, 0.999999583, -0.683578134, 0.729877055, 2.98023224e-008, -0.729876637, -0.683578491, 8.94069672e-008)
w10 = Instance.new("Weld", p10)
w10.Name = "Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-28.6000366, -8.4574213, 25.703289, -9.57822294e-007, -7.91194097e-008, 0.999987543, -0.68356514, 0.729881346, -1.35710662e-014, -0.729872584, -0.683573902, -1.68509463e-014)
w10.Part1 = p11
w10.C1 = CFrame.new(-28.5991402, 9.30450344, 25.0782566, 0, 0, 0.999999583, -0.989475787, 0.144696504, 8.94069672e-008, -0.144696444, -0.989476025, 7.4505806e-009)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
local Pole = Instance.new("Part",char)
Pole.Locked = true
Pole.Size = Vector3.new(1,1,1)
Pole.BrickColor = BrickColor.new("Really black")
Pole.Material = "SmoothPlastic"
Pole.CanCollide = false
local pm = Instance.new("CylinderMesh",Pole)
pm.Scale = Vector3.new(.3,7,.3)
nooutline(Pole)
local PoleWeld = Instance.new("Weld")
PoleWeld.Part0 = rarm
PoleWeld.Part1 = Pole
PoleWeld.C0 = CFrame.new(0,-1,-0.65) * CFrame.Angles(math.rad(-90),math.rad(90),0)
PoleWeld.Parent = Pole

for i = 1,360*(3/4),5 do
        local Part = Instance.new("Part",char)
        local pm = Instance.new("CylinderMesh", Part)
        Part.BrickColor = BrickColor.new("Really black")
        Part.FormFactor = "Custom"
        Part.Size = Vector3.new(0.2,0.2,0.2)
        Part.CanCollide = false
        Part.Locked = true
        Part.Material = "SmoothPlastic"
        nooutline(Part)
        pm.Scale = Vector3.new(0.3/0.2,0.8,0.3/0.2)
        local Weld2 = Instance.new("Weld")
        Weld2.Part0 = Pole
        Weld2.Part1 = Part
        Weld2.C0 = CFrame.new(0,4.75,0) * CFrame.Angles(math.rad(90),math.rad(i-45),0) * CFrame.new(0,0,-1) * CFrame.Angles(0,0,math.rad(90))
        Weld2.Parent = PoleWeld.Part0
end
-----------------------------------------
----------------
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
Attacking=false
asset = "http://www.roblox.com/asset/?id="
meshes = {["blast"] = 20329976,["ring"] = 3270017,["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["cloud"] = 1095708,["diamond"] = 9756362}
sounds = {["explode"] = 130792180;}
torsomesh = "rbxasset://fonts/torso.mesh"
colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
local ASpeed = 10
Humanoid.MaxHealth = 500
wait()
Humanoid.Health=500

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
--RSH.Parent=nil 
--LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local root = char.HumanoidRootPart
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
        Player=game:GetService('Players').LocalPlayer
        Character=Player.Character
        Mouse=Player:GetMouse()
        m=Instance.new('Model',Character)


        local function weldBetween(a, b)
            local weldd = Instance.new("ManualWeld")
            weldd.Part0 = a
            weldd.Part1 = b
            weldd.C0 = CFrame.new()
            weldd.C1 = b.CFrame:inverse() * a.CFrame
            weldd.Parent = a
            return weldd
        end
        
        it=Instance.new
        
        function nooutline(part)
                part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
        end
        
        function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
                local fp=it("Part")
                fp.formFactor=formfactor
                fp.Parent=parent
                fp.Reflectance=reflectance
                fp.Transparency=transparency
                fp.CanCollide=false
                fp.Locked=true
                fp.BrickColor=BrickColor.new(tostring(brickcolor))
                fp.Name=name
                fp.Size=size
                fp.Position=Character.Torso.Position
                nooutline(fp)
                fp.Material=material
                fp:BreakJoints()
                return fp
        end
        
        function mesh(Mesh,part,meshtype,meshid,offset,scale)
                local mesh=it(Mesh)
                mesh.Parent=part
                if Mesh=="SpecialMesh" then
                        mesh.MeshType=meshtype
                        mesh.MeshId=meshid
                end
                mesh.Offset=offset
                mesh.Scale=scale
                return mesh
        end
        
        function weld(parent,part0,part1,c0,c1)
                local weld=it("Weld")
                weld.Parent=parent
                weld.Part0=part0
                weld.Part1=part1
                weld.C0=c0
                weld.C1=c1
                return weld
        end    


    Player=game:GetService('Players').LocalPlayer
        Character=Player.Character
        Mouse=Player:GetMouse()
        m=Instance.new('Model',Character)


        local function weldBetween(a, b)
            local weldd = Instance.new("ManualWeld")
            weldd.Part0 = a
            weldd.Part1 = b
            weldd.C0 = CFrame.new()
            weldd.C1 = b.CFrame:inverse() * a.CFrame
            weldd.Parent = a
            return weldd
        end
        
        it=Instance.new
        
        function nooutline(part)
                part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
        end
        
        
        function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
    end
        
        function mesh(Mesh,part,meshtype,meshid,offset,scale)
                local mesh=it(Mesh)
                mesh.Parent=part
                if Mesh=="SpecialMesh" then
                        mesh.MeshType=meshtype
                        mesh.MeshId=meshid
                end
                mesh.Offset=offset
                mesh.Scale=scale
                return mesh
        end
        
        function weld(parent,part0,part1,c0,c1)
                local weld=it("Weld")
                weld.Parent=parent
                weld.Part0=part0
                weld.Part1=part1
                weld.C0=c0
                weld.C1=c1
                return weld
        end
        
        
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local Color = BrickColor.new("Really black")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = Color
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = Color
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
        
        
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really black")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really black")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Dark stone grey"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

for i,v in pairs (char:GetChildren()) do if v:IsA("Hat") then
v:remove()
end
end
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera
 
local rad = math.rad
 
local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 50
 
local canFly = false
local flyToggled = false
 
local forward, side = 0, 0
local lastForward, lastSide = 0, 0
 
local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
mouse.KeyDown:connect(function(key)
        keysDown[key] = true
       
        if key == "f" then
                flyToggled = not flyToggled
               
                if not flyToggled then
                        floatBP.Parent = nil
                        flyBV.Parent = nil
                        turnBG.Parent = nil
                        pchar.Torso.Velocity = Vector3.new()
                        pchar.Humanoid.PlatformStand = false
                end
        end
       
end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)
local function updateFly()
 
        if not flyToggled then return end
       
        lastForward = forward
        lastSide = side
       
        forward = 0
        side = 0
       
        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end
       
        canFly = (forward ~= 0 or side ~= 0)
       
        if canFly then
                turnBG.Parent = pchar.Torso
                floatBP.Parent = nil
                flyBV.Parent = pchar.Torso
               
                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = pchar.Torso.Position
                floatBP.Parent = pchar.Torso
               
                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end
       
        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide
       
        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
in_forward * 0.2, 0).p) - camCF.p) * flySpeed
       
        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
0)
end
 
game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
        if key == "e" then
                for i,v in pairs(game.Players:getPlayers()) do
                    if v.Name~=char.Name then
                for j,k in pairs(v.Character:GetChildren()) do
                    if k:IsA("BasePart") and k.Transparency <= 1 then
                Chakra=Instance.new("SelectionBox",cam)
                Chakra.Color = BrickColor.new("Really blue")
                Chakra.Transparency = .5
                Chakra.Adornee = k
                    end
                end
            end
            end
    end
end)
----------------------------------------------------
mouse.KeyUp:connect(function(key)
    if key == "e" then
            for i, v in pairs(cam:children()) do
            if v:IsA("SelectionBox") then
                v:Destroy()
            end
        end
    end
end)
local plrs=game:service"Players"
local p=plrs.LocalPlayer
local lam=char["Left Arm"]
local ram=char["Right Arm"]
local llg=char["Left Leg"]
local rlg=char["Right Leg"]
local hed=char.Head
local tor=char.Torso
local Cn=CFrame.new
local CA=CFrame.Angles
local hrp=char.HumanoidRootPart
local mr=math.rad
local mc=math.cos
local Vn=Vector3.new
local wrk=game:service"Workspace"
local deb=game:service"Debris"
function nwWld(wp0,wp1,wc0)
wld = Instance.new("Weld",wp1)
wld.Part0=wp0
wld.Part1=wp1
wld.C0=wc0
return wld
end
function FndHm(flnm)
for i,v in pairs(flnm:GetChildren()) do
if v:IsA("Humanoid") then
return v
end
end
end
local hum=FndHm(char)
function get(a)
local cont={}
for i,v in pairs(a:GetChildren()) do
if v==char then
else
table.insert(cont,v)
pcall(function()
for _,b in pairs(get(v)) do
table.insert(cont,b)
end
end)
end
end
return cont
end

--
function inT(qur,tbl)
local a=false
for i,v in pairs(tbl) do
if v==qur then
a=true
break
else
a=false
end
end
return a
end
function nwPrt(prnt,siz,cf,col)
local prt=Instance.new("Part")
prt.Parent=prnt
prt.FormFactor=3
prt.Name="Part"
prt.Size=siz
prt.CanCollide=false
prt.Anchored=true
prt.Locked=true
prt.TopSurface=0
prt.BottomSurface=0
prt:BreakJoints()
prt.CFrame=cf or CFrame.new(30,10,30)
prt.Material="SmoothPlastic"
prt.BrickColor=BrickColor.new(col)
m=Instance.new("SpecialMesh",prt)
m.MeshType=6
return prt
end
function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end
function ChakraBeam()
attack=true
local sine = 0
local change = 1
for i = 0,1,0.005 do
sine = sine + change
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(0),math.rad(0)),.05)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(0)),.05)
PoleWeld.C0=clerp(PoleWeld.C0,cf(0,-1,-1)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
SphereWeld.C1=clerp(SphereWeld.C1,cf(3,0-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere2Weld.C1=clerp(Sphere2Weld.C1,cf(-3,0-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere3Weld.C1=clerp(Sphere3Weld.C1,cf(-2,-2-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere4Weld.C1=clerp(Sphere4Weld.C1,cf(2,-2-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere5Weld.C1=clerp(Sphere5Weld.C1,cf(0,-4-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
end
local int=0
local cho=nwPrt(char,Vn(3,3,3),lam.CFrame*Cn(0,-0.7,0),"Really black")
			cho.Transparency=0.2
			cho.Reflectance=0.1
			cho.Mesh.MeshType=3
			deb:AddItem(cho,20)
			local lfx1=nwPrt(char,Vn(1,1,1),cho.CFrame,"Really black")
			lfx1.Transparency=1
			lfx1.Mesh.MeshId="rbxassetid://9982590"
			lfx1.Mesh.Scale=Vn(2,2,2)
			deb:AddItem(lfx1,20)
			local lfx2=nwPrt(char,Vn(1,1,1),cho.CFrame,"Really black")
			lfx2.Transparency=1
			lfx2.Mesh.MeshType=3
			lfx2.Mesh.Scale=Vn(4,4,4)
			deb:AddItem(lfx2,20)
			local bem=nwPrt(wrk,Vn(0.2,cho.Size.X,cho.Size.X),cho.CFrame,"Really black")
			bem.Name="Bem"
			bem.Transparency=0.2
			bem.Reflectance=0.1
			bem.Mesh.MeshType=4
			deb:AddItem(bem,8)
			local ent=0
			local unt=0
			local ant=0
			local ryt={bem}
				for _,v in pairs(plrs:GetChildren()) do
					pcall(function()
					table.insert(ryt,v.Character)
					end)
				end
			for i=1,300,4 do
				ent=ent+1
				int=int+1
				unt=unt+1
				if ent==2 then
					local htd={char,bem}
					local function het(ofs)
					    con1=bem.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
						local r1,h1,p1=newRay(bem.CFrame*ofs*Cn(-bem.Size.X/2,0,0),cho.CFrame,bem.Size.X+1,htd)
						if h1~=nil and h1.Parent~=nil then
							if h1.Parent:IsA("Model") then
								pcall(function()
									local ht=h1.Parent
									FndHm(ht).Health=FndHm(ht).Health-4
									coroutine.wrap(function()
										local bv=Instance.new("BodyVelocity",ht:FindFirstChild("Torso"))
										bv.maxForce=Vn(math.huge,math.huge,math.huge)
										local hrpasd=hrp.CFrame
										bv.velocity=hrpasd.lookVector
										wait(0.1)
										bv:Destroy()
									end)()
									table.insert(htd,ht)
									het(ofs)
								end)
								if FndHm(h1.Parent)==nil then
								table.insert(htd,h1)
								het(ofs)
							end
							end
						end
					end
					het(Cn(0,1,0))
					het(Cn(0,0,1))
					het(Cn(0,-1,0))
					het(Cn(0,0,-1))
					ent=0
				end
				if unt==8 then
					local fx1=nwPrt(wrk,Vn(0.2,1,1),bem.CFrame*Cn(-bem.Size.X/2,0,0)*CA(0,0,mr(90)),"Really black")
					fx1.Mesh.MeshId="rbxassetid://20329976"
					fx1.Mesh.Scale=Vn(bem.Size.Y,bem.Size.Y,bem.Size.Y)
					deb:AddItem(fx1,1)
					fx1.Transparency=0.6
					table.insert(ryt,fx1)
					local fx2=nwPrt(wrk,Vn(0.2,1,1),bem.CFrame*Cn(bem.Size.X/2,0,0)*CA(0,0,mr(90)),"Really black")
					fx2.Mesh.MeshId="rbxassetid://20329976"
					fx2.Mesh.Scale=Vn(bem.Size.Y,bem.Size.Y,bem.Size.Y)
					deb:AddItem(fx2,1)
					fx2.Transparency=0.6
					table.insert(ryt,fx2)
					coroutine.wrap(function()
						for i=0.8,1,0.02 do
							fx1.Transparency=i
							local fx1s=fx1.Mesh.Scale
							fx1.Mesh.Scale=Vn(fx1s.X+0.2,fx1s.Y+0.2,fx1s.Z+0.2)
							fx2.Transparency=i
							local fx2s=fx2.Mesh.Scale
							fx2.Mesh.Scale=Vn(fx2s.X+0.2,fx2s.Y+0.2,fx2s.Z+0.2)
							wait()
						end
						fx1:Destroy()
						fx2:Destroy()
					end)()
					unt=0
				end
				local function chk()
				local r2,h2,p2=newRay(bem.CFrame*Cn(-bem.Size.X/2,0,0),cho.CFrame,bem.Size.X,ryt)
				if h2~=nil then
					if h2.Parent~=nil then
						if FndHm(h2.Parent)==nil then
							bem.Size=Vn(((bem.CFrame*Cn(-bem.Size.X/2,0,0)).p-p2).magnitude,bem.Size.Y,bem.Size.Z)
							if h2.Name=="Bem" and unt==7 then
								local p1=nwPrt(bem,Vn(1,5,5),bem.CFrame*Cn(bem.Size.X/2-2,0,0)*CA(0,mr(90),0),"Bright blue")
								p1.Anchored=true
								p1.Transparency=0.6
								local m1=p1.Mesh
								m1.MeshId="rbxassetid://3270017"
								local p2=nwPrt(bem,Vn(1,5,5),bem.CFrame*Cn(bem.Size.X/2-2,0,0)*CA(0,mr(90),0),"Bright blue")
								p2.Anchored=true
								p2.Transparency=0.6
								local m2=p2.Mesh
								m2.MeshId="rbxassetid://3270017"
								m2.Scale=Vector3.new(0.1,0.1,0.1)
								local p3=nwPrt(bem,Vn(1,5,5),bem.CFrame*Cn(bem.Size.X/2-2,0,0)*CA(0,mr(90),0),"Bright blue")
								p3.Anchored=true
								p3.Transparency=0.6
								local m3=p3.Mesh
								m3.MeshId="rbxassetid://3270017"
								m3.Scale=Vector3.new(2,2,2)
								deb:AddItem(p1,5)
								deb:AddItem(p2,5)
								deb:AddItem(p3,5)
								coroutine.wrap(function()
									for i=1,200 do
										m1.Scale=Vector3.new(m1.Scale.X+1,m1.Scale.Y+1,m1.Scale.Z+0.5)
										m2.Scale=Vector3.new(m2.Scale.X+1.25,m2.Scale.Y+1.25,m2.Scale.Z+0.5)
										m3.Scale=Vector3.new(m3.Scale.X+0.75,m3.Scale.Y+0.75,m3.Scale.Z+0.5)
										p1.Transparency=p1.Transparency+0.03
										p2.Transparency=p2.Transparency+0.035
										p3.Transparency=p3.Transparency+0.025
										wait()
									end
								end)()
							end
						else
							table.insert(ryt,h2.Parent)
							chk()
						end
					end
				else
					bem.Size=Vn(bem.Size.X+4,bem.Size.Y,bem.Size.Z)
				end
				end
				chk()
				bem.CFrame=hrp.CFrame*Cn(-1.5,0.3,-1.2-bem.Size.X/2)*CA(0,mr(90),0)
				lfx1.Mesh.Scale=Vn(2+(1*mc(int/18)),2+(1*mc(int/18)),2+(1*mc(int/18)))
				lfx2.Mesh.Scale=Vn(4+(3*mc(int/18)),4+(3*mc(int/18)),4+(3*mc(int/18)))
				lfx1.CFrame=cho.CFrame*CA(mr(10*mc(int/20)),mr(10*mc(int/20)),mr(10*mc(int/20)))
				lfx2.CFrame=cho.CFrame*CA(mr(10*mc(int/18)),mr(10*mc(int/18)),mr(10*mc(int/18)))
				wait()
			end
			pcall(function()
				bem:Destroy()
				cho:Destroy()
				lfx1:Destroy()
				lfx2:Destroy()
			end)
attack=false
con1:disconnect()
end
function fadein(part)
part.Transparency=1
for i=1,100 do
wait()
part.Transparency = part.Transparency - 0.01
end
end

function ChakraBall()
attack=true
local sine = 0
local change = 1
for i = 0,1,0.005 do
sine = sine + change
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(0),math.rad(0)),.05)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(0)),.05)
PoleWeld.C0=clerp(PoleWeld.C0,cf(0,-1,-1)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
SphereWeld.C1=clerp(SphereWeld.C1,cf(3,0-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere2Weld.C1=clerp(Sphere2Weld.C1,cf(-3,0-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere3Weld.C1=clerp(Sphere3Weld.C1,cf(-2,-2-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere4Weld.C1=clerp(Sphere4Weld.C1,cf(2,-2-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere5Weld.C1=clerp(Sphere5Weld.C1,cf(0,-4-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
end
FireBall=Instance.new('Part',Workspace)
FireBall.Size=Vector3.new(3,3,3)
FireBall.BrickColor=BrickColor.new("Really black")
FireBall.CanCollide = True
FireBall.TopSurface = "Smooth"
FireBall.BottomSurface = "Smooth"
FireBall.Position=torso.Position+torso.CFrame.lookVector*20
FireBall.Transparency = 0
FireBall.Reflectance = 0.3
FireBall:BreakJoints()
FireBallMesh = Instance.new("SpecialMesh", FireBall)
FireBallMesh.MeshType = "Sphere"
FireBallMesh.Scale = Vector3.new(1,1,1)
Shooter = Instance.new('BodyVelocity',FireBall)  
Shooter.maxForce = Vector3.new()*math.huge
Shooter.velocity = torso.CFrame.lookVector*100
con1=FireBall.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end)
wait(5)
FireBall:Destroy()
con1:disconnect()
attack=false
end
function InfiniteTsukyomi()
attack = true
for i = 0,1,0.005 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,100)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(-50)),.05)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(50)),.05)
PoleWeld.C0=clerp(PoleWeld.C0,cf(0,10,0)*angles(math.rad(20),math.rad(100),math.rad(40)),.05)
end
Head.face.Texture = "http://www.roblox.com/asset?id=159181532"
game.Lighting.TimeOfDay = "07:00:00"
game.Lighting.Ambient = Color3.new(0,0,0)
sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=22079760"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=22079760"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=22079760"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=22079760"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=22079760"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=22079760"
attack=false
end

attacktype=1
mouse.Button1Down:connect(function()
    if attacktype == 1 then
        print("You can't attack with your staff yet!")
    end
end)

colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
mouse.KeyDown:connect(function(k)
    k:lower()
    if k=="r" and attack == false then
        ChakraBeam()
    end
    if k=="q" and attack == false then
        ChakraBall()
    end
    if k=="p" and attack == false then
        InfiniteTsukyomi()
    end
    if k==" " and attack == false then
        Humanoid.Jump = false
        Torso.Velocity = Vector3.new(0,100,0)
    end
end)
function Tween(a,b,c)
return a+(b-a)*c
end

--
function Avg(a,b)
return CFrame.new((a.X+b.X)/2,(a.Y+b.Y)/2,(a.Z+b.Z)/2)
end

--
function Lerp(c1,c2,tim)
	local com1={c1.C0.X,c1.C0.Y,c1.C0.Z,c1.C0:toEulerAnglesXYZ()}
	local com2={c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i]=v+(com2[i]-v)*tim
	end
	return Cn(com1[1],com1[2],com1[3])*CA(select(4,unpack(com1)))
end
hld=false
mouse.KeyDown:connect(function(key)
key:lower()
if key == "t" and attack == false then
attack = true
hld=true
for i = 0,1,0.005 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.03)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.03)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(-50)),.03)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(50)),.03)
PoleWeld.C0=clerp(PoleWeld.C0,cf(10,0,0)*angles(math.rad(100),math.rad(10),math.rad(40)),.03)
end
local cho=nwPrt(char,Vn(1,1,1),ram.CFrame*Cn(0,-0.7,0),"Really black")
			cho.Transparency=0.2
			cho.Reflectance=0.1
			cho.Mesh.MeshType=3
			deb:AddItem(cho,20)
			local lfx1=nwPrt(char,Vn(1,1,1),cho.CFrame,"Really black")
			lfx1.Transparency=0.985
			lfx1.Mesh.MeshId="rbxassetid://9982590"
			lfx1.Mesh.Scale=Vn(2,2,2)
			deb:AddItem(lfx1,20)
			local lfx2=nwPrt(char,Vn(1,1,1),cho.CFrame,"Really black")
			lfx2.Transparency=0.9
			lfx2.Mesh.MeshType=3
			lfx2.Mesh.Scale=Vn(4,4,4)
			deb:AddItem(lfx2,20)
			local int=0
			while hld==true do
				int=int+1
				if cho.Size.X<30 then
					local chs=cho.Size
					cho.Size=Vn(chs.X+0.01,chs.Y+0.01,chs.Z+0.01)
					cho.CFrame=ram.CFrame*Cn(0,-1.4,0)
				else
					cho.CFrame=ram.CFrame*Cn(0,-1.4,0)
				end
				cho.Mesh.Scale=Vn(1+(0.05*mc(int/6)),1+(0.05*mc(int/6)),1+(0.05*mc(int/6)))
				lfx1.Mesh.Scale=Vn(2+(1*mc(int/18)),2+(1*mc(int/18)),2+(1*mc(int/18)))
				lfx2.Mesh.Scale=Vn(4+(3*mc(int/18)),4+(3*mc(int/18)),4+(3*mc(int/18)))
				lfx1.CFrame=cho.CFrame*CA(mr(10*mc(int/20)),mr(10*mc(int/20)),mr(10*mc(int/20)))
				lfx2.CFrame=cho.CFrame*CA(mr(10*mc(int/18)),mr(10*mc(int/18)),mr(10*mc(int/18)))
				if int>300 then
					hld=false
				end
				wait()
			end
			for i=1,6 do
				int=int+1
				cho.CFrame=ram.CFrame*Cn(-0.2,-1.4,0)
				lfx1.Mesh.Scale=Vn(2+(1*mc(int/18)),2+(1*mc(int/18)),2+(1*mc(int/18)))
				lfx2.Mesh.Scale=Vn(4+(3*mc(int/18)),4+(3*mc(int/18)),4+(3*mc(int/18)))
				lfx1.CFrame=cho.CFrame*CA(mr(10*mc(int/20)),mr(10*mc(int/20)),mr(10*mc(int/20)))
				lfx2.CFrame=cho.CFrame
				wait()
			end
			local bem=nwPrt(wrk,Vn(0.2,cho.Size.X,cho.Size.X),hrp.CFrame*Cn(0,0.3,-1.4)*CA(0,mr(90),0),"Really black")
			bem.Name="Bem"
			bem.Transparency=0.2
			bem.Reflectance=0.1
			bem.Mesh.MeshType=4
			deb:AddItem(bem,8)
			local ent=0
			local unt=0
			local ant=0
			local ryt={bem}
				for _,v in pairs(plrs:GetChildren()) do
					pcall(function()
					table.insert(ryt,v.Character)
					end)
				end
			for i=1,850,4 do
				ent=ent+1
				int=int+1
				unt=unt+1
				if ent==2 then
					local htd={char,bem}--This is the table
					local function het(ofs)
						local r1,h1,p1=newRay(bem.CFrame*ofs*Cn(-bem.Size.X/2,0,0),bem.CFrame*ofs*Cn(1,0,0),bem.Size.X+1,htd)--The end variable is the table
						if h1~=nil and h1.Parent~=nil then
							if h1.Parent:IsA("Model") then
								pcall(function()
									local ht=h1.Parent
									FndHm(ht).Health=FndHm(ht).Health-(cho.Size.X)
									coroutine.wrap(function()
										local bv=Instance.new("BodyVelocity",ht:FindFirstChild("Torso"))
										bv.maxForce=Vn(math.huge,math.huge,math.huge)
										local hrpasd=hrp.CFrame
										bv.velocity=hrpasd.lookVector * 100
										wait(0.1)
										bv:Destroy()
									end)()
									table.insert(htd,ht)
									het(ofs)
								end)
								if FndHm(h1.Parent)==nil then
								table.insert(htd,h1)
								het(ofs)
							end
							end
						end
					end
					het(Cn(0,1,0))
					het(Cn(0,0,1))
					het(Cn(0,-1,0))
					het(Cn(0,0,-1))
					ent=0
				end
				if unt==44 then
					local fx1=nwPrt(wrk,Vn(0.2,1,1),bem.CFrame*Cn(-bem.Size.X/2,0,0)*CA(0,0,mr(90)),"Really black")
					fx1.Mesh.MeshId="rbxassetid://20329976"
					fx1.Mesh.Scale=Vn(bem.Size.Y,bem.Size.Y,bem.Size.Y)
					deb:AddItem(fx1,1)
					fx1.Transparency=0.6
					table.insert(ryt,fx1)
					local fx2=nwPrt(wrk,Vn(0.2,1,1),bem.CFrame*Cn(bem.Size.X/2,0,0)*CA(0,0,mr(90)),"Really black")
					fx2.Mesh.MeshId="rbxassetid://20329976"
					fx2.Mesh.Scale=Vn(bem.Size.Y,bem.Size.Y,bem.Size.Y)
					deb:AddItem(fx2,1)
					fx2.Transparency=0.6
					table.insert(ryt,fx2)
					coroutine.wrap(function()
						for i=0.8,1,0.02 do
							fx1.Transparency=i
							local fx1s=fx1.Mesh.Scale
							fx1.Mesh.Scale=Vn(fx1s.X+0.2,fx1s.Y+0.2,fx1s.Z+0.2)
							fx2.Transparency=i
							local fx2s=fx2.Mesh.Scale
							fx2.Mesh.Scale=Vn(fx2s.X+0.2,fx2s.Y+0.2,fx2s.Z+0.2)
							wait()
						end
						fx1:Destroy()
						fx2:Destroy()
					end)()
					unt=0
				end
				local function chk()
				local r2,h2,p2=newRay(bem.CFrame*Cn(-bem.Size.X/2,0,0),bem.CFrame*Cn(1,0,0),bem.Size.X,ryt)
				if h2~=nil then
					if h2.Parent~=nil then
						if FndHm(h2.Parent)==nil then
							bem.Size=Vn(((bem.CFrame*Cn(-bem.Size.X/2,0,0)).p-p2).magnitude,bem.Size.Y,bem.Size.Z)
							if h2.Name=="Bem" and unt==7 then
								local p1=nwPrt(bem,Vn(1,5,5),bem.CFrame*Cn(bem.Size.X/2-2,0,0)*CA(0,mr(90),0),"Really black")
								p1.Anchored=true
								p1.Transparency=0.6
								local m1=p1.Mesh
								m1.MeshId="rbxassetid://3270017"
								local p2=nwPrt(bem,Vn(1,5,5),bem.CFrame*Cn(bem.Size.X/2-2,0,0)*CA(0,mr(90),0),"Really black")
								p2.Anchored=true
								p2.Transparency=0.6
								local m2=p2.Mesh
								m2.MeshId="rbxassetid://3270017"
								m2.Scale=Vector3.new(0.1,0.1,0.1)
								local p3=nwPrt(bem,Vn(1,5,5),bem.CFrame*Cn(bem.Size.X/2-2,0,0)*CA(0,mr(90),0),"Really black")
								p3.Anchored=true
								p3.Transparency=0.6
								local m3=p3.Mesh
								m3.MeshId="rbxassetid://3270017"
								m3.Scale=Vector3.new(2,2,2)
								deb:AddItem(p1,5)
								deb:AddItem(p2,5)
								deb:AddItem(p3,5)
								coroutine.wrap(function()
									for i=1,200 do
										m1.Scale=Vector3.new(m1.Scale.X+1,m1.Scale.Y+1,m1.Scale.Z+0.5)
										m2.Scale=Vector3.new(m2.Scale.X+1.25,m2.Scale.Y+1.25,m2.Scale.Z+0.5)
										m3.Scale=Vector3.new(m3.Scale.X+0.75,m3.Scale.Y+0.75,m3.Scale.Z+0.5)
										p1.Transparency=p1.Transparency+0.03
										p2.Transparency=p2.Transparency+0.035
										p3.Transparency=p3.Transparency+0.025
										wait()
									end
								end)()
							end
						else
							table.insert(ryt,h2.Parent)
							chk()
						end
					end
				else
					bem.Size=Vn(bem.Size.X+4,bem.Size.Y,bem.Size.Z)
				end
				end
				chk()
				bem.CFrame=hrp.CFrame*Cn(0,0.3,-1.2-bem.Size.X/2)*CA(0,mr(90),0)
				lfx1.Mesh.Scale=Vn(2+(1*mc(int/18)),2+(1*mc(int/18)),2+(1*mc(int/18)))
				lfx2.Mesh.Scale=Vn(4+(3*mc(int/18)),4+(3*mc(int/18)),4+(3*mc(int/18)))
				lfx1.CFrame=cho.CFrame*CA(mr(10*mc(int/20)),mr(10*mc(int/20)),mr(10*mc(int/20)))
				lfx2.CFrame=cho.CFrame*CA(mr(10*mc(int/18)),mr(10*mc(int/18)),mr(10*mc(int/18)))
				wait()
			end
			pcall(function()
				bem:Destroy()
				cho:Destroy()
				lfx1:Destroy()
				lfx2:Destroy()
			end)
attack=false
end
end)
mouse.KeyUp:connect(function(key)
key:lower()
if key == "t" then
hld=false
end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key:byte() == 48 then
Humanoid.WalkSpeed=70
end
end)
mouse.KeyUp:connect(function(key)
key:lower()
if key:byte() == 48 then
Humanoid.WalkSpeed=6
end
end)

Humanoid.WalkSpeed=6
local sine = 0
local change = 1
local val = 0
--game:GetService("RunService").Heartbeat:connect(function()
while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(-100),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-50),math.rad(100),math.rad(-30)),.3)
lleg.Weld.C0=clerp(lleg.Weld.C0,cf(-0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
rleg.Weld.C0=clerp(rleg.Weld.C0,cf(0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
PoleWeld.C0 =clerp(PoleWeld.C0,CFrame.new(0,-1,-0.65)*CFrame.Angles(math.rad(-90),math.rad(90),0),.05)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(-100),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-50),math.rad(100),math.rad(-30)),.3)
lleg.Weld.C0=clerp(lleg.Weld.C0,cf(-0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
rleg.Weld.C0=clerp(rleg.Weld.C0,cf(0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
PoleWeld.C0 =clerp(PoleWeld.C0,CFrame.new(0,-1,-0.65)*CFrame.Angles(math.rad(-90),math.rad(90),0),.05)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1-0.14*math.cos(sine/14))*angles(math.rad(0),math.rad(0),math.rad(20)),.05)
SphereWeld.C1=clerp(SphereWeld.C1,cf(3,0-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere2Weld.C1=clerp(Sphere2Weld.C1,cf(-3,0-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere3Weld.C1=clerp(Sphere3Weld.C1,cf(-2,-2-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere4Weld.C1=clerp(Sphere4Weld.C1,cf(2,-2-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Sphere5Weld.C1=clerp(Sphere5Weld.C1,cf(0,-4-0.14*math.cos(-sine/14),0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-20)),.05)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(20)),.05)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-10),math.rad(0),math.rad(-10)),.05)
lleg.Weld.C0=clerp(lleg.Weld.C0,cf(-0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
rleg.Weld.C0=clerp(rleg.Weld.C0,cf(0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
PoleWeld.C0 =clerp(PoleWeld.C0,CFrame.new(0,-1,-0.65)*CFrame.Angles(math.rad(-90),math.rad(90),0),.05)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1-0.14*math.cos(sine/14))*angles(math.rad(0),math.rad(0),math.rad(0)),.05)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(-10)),.3)
lleg.Weld.C0=clerp(lleg.Weld.C0,cf(-0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
rleg.Weld.C0=clerp(rleg.Weld.C0,cf(0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
PoleWeld.C0 =clerp(PoleWeld.C0,CFrame.new(0,-1,-0.65)*CFrame.Angles(math.rad(-90),math.rad(90),0),.05)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
change=5
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1-0.14*math.cos(sine/14))*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(-100),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(100),math.rad(-30)),.3)
lleg.Weld.C0=clerp(lleg.Weld.C0,cf(-0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
rleg.Weld.C0=clerp(rleg.Weld.C0,cf(0.5,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
PoleWeld.C0 =clerp(PoleWeld.C0,CFrame.new(0,-1,-0.65)*CFrame.Angles(math.rad(-90),math.rad(90),0),.05)
end
end
end
end
--end)
