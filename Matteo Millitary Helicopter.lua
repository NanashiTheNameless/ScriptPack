local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local camera = game.Workspace.CurrentCamera
local engineon = false
local rotateangle = 0
local speed = 5
local elevation = 0
local hover = 0
local qpressed = 0
local wpressed = false
local hpressed = 0
local heliready = false
function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

local mhuey = Instance.new("Model", workspace)
mhuey.Name = "MHuey"

 mainrotor = Instance.new("Model", mhuey)
mainrotor.Name = "mainrotor"

 rotor1b = Instance.new("Part", mainrotor)
rotor1b.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b.TopSurface = Enum.SurfaceType.Smooth
rotor1b.Reflectance = 0.1
rotor1b.Material = Enum.Material.SmoothPlastic
rotor1b.Size = Vector3.new(1, 0.4, 1)
rotor1b.Name = "Rotor1b"
rotor1b.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b.CFrame = CFrame.new(57.08, 21.043, 103.759)* CFrame.Angles(3.124981880188, 1.5415737628937, -3.1253423690796)
rotor1b.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b.BrickColor = BrickColor.new("New Yeller")
rotor1b.Friction = 0.3
rotor1b.BottomSurface = Enum.SurfaceType.Smooth

 mesh = Instance.new("SpecialMesh", rotor1b)
mesh.MeshType = Enum.MeshType.Brick

 rotor1d = Instance.new("Part", mainrotor)
rotor1d.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1d.TopSurface = Enum.SurfaceType.Smooth
rotor1d.Reflectance = 0.1
rotor1d.Material = Enum.Material.SmoothPlastic
rotor1d.Size = Vector3.new(33, 0.4, 1)
rotor1d.Name = "Rotor1d"
rotor1d.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1d.CFrame = CFrame.new(56.588, 21.037, 86.767)* CFrame.Angles(-0.01661073230207, -1.5415778160095, -0.016250206157565)
rotor1d.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1d.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1d.BrickColor = BrickColor.new("Really black")
rotor1d.Friction = 0.3
rotor1d.BottomSurface = Enum.SurfaceType.Smooth

 mesh_2 = Instance.new("SpecialMesh", rotor1d)
mesh_2.MeshType = Enum.MeshType.Brick

 rotormiddle = Instance.new("Part", mainrotor)
rotormiddle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotormiddle.TopSurface = Enum.SurfaceType.Smooth
rotormiddle.Reflectance = 0.1
rotormiddle.Material = Enum.Material.SmoothPlastic
rotormiddle.Size = Vector3.new(2, 2, 3)
rotormiddle.Name = "rotormiddle"
rotormiddle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotormiddle.CFrame = CFrame.new(56.081, 20.831, 69.274)* CFrame.Angles(-0.016610756516457, -1.5415819883347, -0.016250181943178)
rotormiddle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotormiddle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotormiddle.BrickColor = BrickColor.new("Really black")
rotormiddle.Friction = 0.3
rotormiddle.BottomSurface = Enum.SurfaceType.Smooth

 mesh_3 = Instance.new("SpecialMesh", rotormiddle)
mesh_3.Scale = Vector3.new(1.25, 1.5, 1.25)

 rotor1b_2 = Instance.new("Part", mainrotor)
rotor1b_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_2.TopSurface = Enum.SurfaceType.Smooth
rotor1b_2.Reflectance = 0.1
rotor1b_2.Material = Enum.Material.SmoothPlastic
rotor1b_2.Size = Vector3.new(33, 0.4, 1)
rotor1b_2.Name = "Rotor1b"
rotor1b_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_2.CFrame = CFrame.new(55.574, 21.025, 51.781)* CFrame.Angles(3.124981880188, 1.5415900945663, -3.1253426074982)
rotor1b_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_2.BrickColor = BrickColor.new("Really black")
rotor1b_2.Friction = 0.3
rotor1b_2.BottomSurface = Enum.SurfaceType.Smooth

 mesh_4 = Instance.new("SpecialMesh", rotor1b_2)
mesh_4.MeshType = Enum.MeshType.Brick

 rotor1b_3 = Instance.new("Part", mainrotor)
rotor1b_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_3.TopSurface = Enum.SurfaceType.Smooth
rotor1b_3.Reflectance = 0.1
rotor1b_3.Material = Enum.Material.SmoothPlastic
rotor1b_3.Size = Vector3.new(1, 0.4, 1)
rotor1b_3.Name = "Rotor1b"
rotor1b_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_3.CFrame = CFrame.new(55.081, 21.019, 34.788)* CFrame.Angles(3.124981880188, 1.5415737628937, -3.1253423690796)
rotor1b_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_3.BrickColor = BrickColor.new("New Yeller")
rotor1b_3.Friction = 0.3
rotor1b_3.BottomSurface = Enum.SurfaceType.Smooth

 mesh_5 = Instance.new("SpecialMesh", rotor1b_3)
mesh_5.MeshType = Enum.MeshType.Brick

 part = Instance.new("Part", mhuey)
part.Velocity = Vector3.new(0.003, -0.015, 0)
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.Smooth
part.Reflectance = 0.1
part.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part.Material = Enum.Material.SmoothPlastic
part.Size = Vector3.new(1, 0.4, 6)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(45.061, 13.057, 64.185)* CFrame.Angles(-1.5707890987396, 0.0006561778136529, -1.5784510374069)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Earth green")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.Smooth

 mesh_6 = Instance.new("BlockMesh", part)
mesh_6.Scale = Vector3.new(1, 2, 1)

 part_2 = Instance.new("Part", mhuey)
part_2.Velocity = Vector3.new(0, -0.018, -0.006)
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.Smooth
part_2.Reflectance = 0.1
part_2.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_2.Material = Enum.Material.SmoothPlastic
part_2.Size = Vector3.new(3, 0.4, 1)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(41.963, 15.86, 64.161)* CFrame.Angles(-3.1415903568268, 0.007653146982193, -3.1409363746643)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Earth green")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.Smooth

 mesh_7 = Instance.new("BlockMesh", part_2)

 part_3 = Instance.new("Part", mhuey)
part_3.Velocity = Vector3.new(0.004, -0.022, 0.002)
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.Smooth
part_3.Reflectance = 0.1
part_3.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_3.Material = Enum.Material.SmoothPlastic
part_3.Size = Vector3.new(2, 2, 3)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(35.956, 11.063, 64.615)* CFrame.Angles(0.085529819130898, 1.5631535053253, -1.6563184261322)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Earth green")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.Smooth

 mesh_8 = Instance.new("SpecialMesh", part_3)
mesh_8.MeshType = Enum.MeshType.Wedge

 part_4 = Instance.new("Part", mhuey)
part_4.Velocity = Vector3.new(0.004, -0.016, 0.002)
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.Smooth
part_4.Reflectance = 0.1
part_4.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_4.Material = Enum.Material.SmoothPlastic
part_4.Size = Vector3.new(1, 2.8, 1)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(44.36, 11.458, 64.179)* CFrame.Angles(0.085680015385151, 1.5631068944931, -0.085596419870853)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Earth green")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.Smooth

 mesh_9 = Instance.new("BlockMesh", part_4)

 part_5 = Instance.new("Part", mhuey)
part_5.Velocity = Vector3.new(0.007, -0.017, 0.009)
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.Smooth
part_5.Reflectance = 0.1
part_5.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_5.Material = Enum.Material.SmoothPlastic
part_5.Size = Vector3.new(2, 1, 1)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(44.465, 7.558, 63.18)* CFrame.Angles(2.256664174638e-006, -0.0076445201411843, -0.00065619929227978)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Really black")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.Smooth

 mesh_10 = Instance.new("SpecialMesh", part_5)
mesh_10.Scale = Vector3.new(0.3, 1, 1)
mesh_10.MeshType = Enum.MeshType.Wedge

 part_6 = Instance.new("Part", mhuey)
part_6.Velocity = Vector3.new(0, -0.012, -0.006)
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.Smooth
part_6.Reflectance = 0.1
part_6.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_6.Material = Enum.Material.SmoothPlastic
part_6.Size = Vector3.new(20, 1, 1)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(49.463, 16.555, 64.219)* CFrame.Angles(2.2491842628369e-006, -0.0076615139842033, -0.0006562068592757)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Earth green")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.Smooth

 mesh_11 = Instance.new("SpecialMesh", part_6)
mesh_11.MeshType = Enum.MeshType.Wedge

 part_7 = Instance.new("Part", mhuey)
part_7.Velocity = Vector3.new(-0.002, -0.008, -0.009)
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.Smooth
part_7.Reflectance = 0.1
part_7.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_7.Material = Enum.Material.SmoothPlastic
part_7.Size = Vector3.new(1, 1, 3)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(51.956, 18.553, 65.238)* CFrame.Angles(-1.5707890987396, 0.00065618148073554, 1.5631436109543)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Earth green")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.Smooth

 mesh_12 = Instance.new("SpecialMesh", part_7)
mesh_12.MeshType = Enum.MeshType.Wedge

 part_8 = Instance.new("Part", mhuey)
part_8.Velocity = Vector3.new(0.007, -0.015, 0.009)
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.Smooth
part_8.Reflectance = 0.1
part_8.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_8.Material = Enum.Material.SmoothPlastic
part_8.Size = Vector3.new(2, 1, 2)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(44.453, 7.558, 64.68)* CFrame.Angles(-3.1415903568268, 0.0076444307342172, 0.00065619929227978)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Really black")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.Smooth

 mesh_13 = Instance.new("SpecialMesh", part_8)
mesh_13.Scale = Vector3.new(0.3, 1, 1)
mesh_13.MeshType = Enum.MeshType.Wedge

 part_9 = Instance.new("Part", mhuey)
part_9.Velocity = Vector3.new(0.006, -0.015, 0.007)
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.Smooth
part_9.Reflectance = 0.1
part_9.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_9.Material = Enum.Material.SmoothPlastic
part_9.Size = Vector3.new(2, 1, 2)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(44.454, 8.558, 64.68)* CFrame.Angles(2.2569292923436e-006, -0.0076438933610916, -0.0006561991176568)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Really black")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.Smooth

 mesh_14 = Instance.new("SpecialMesh", part_9)
mesh_14.Scale = Vector3.new(0.3, 1, 1)
mesh_14.MeshType = Enum.MeshType.Wedge

 part_10 = Instance.new("Part", mhuey)
part_10.Velocity = Vector3.new(0.003, -0.016, 0)
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.Smooth
part_10.Reflectance = 0.1
part_10.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_10.Material = Enum.Material.SmoothPlastic
part_10.Size = Vector3.new(1, 0.4, 6)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(43.661, 13.058, 64.174)* CFrame.Angles(-1.5707890987396, 0.0006561737973243, -1.5784304141998)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Earth green")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.Smooth

 mesh_15 = Instance.new("BlockMesh", part_10)

 part_11 = Instance.new("Part", mhuey)
part_11.Velocity = Vector3.new(0.006, -0.012, 0.006)
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.Smooth
part_11.Reflectance = 0.1
part_11.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_11.Material = Enum.Material.SmoothPlastic
part_11.Size = Vector3.new(22, 1, 1)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(48.458, 9.555, 64.211)* CFrame.Angles(2.2530227852258e-006, -0.0076526845805347, 3.1409363746643)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Earth green")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.Smooth

 mesh_16 = Instance.new("SpecialMesh", part_11)
mesh_16.MeshType = Enum.MeshType.Wedge

 part_12 = Instance.new("Part", mhuey)
part_12.Velocity = Vector3.new(0.004, -0.018, 0.002)
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.Smooth
part_12.Reflectance = 0.1
part_12.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_12.Material = Enum.Material.SmoothPlastic
part_12.Size = Vector3.new(1, 2.8, 3)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(41.96, 11.46, 64.161)* CFrame.Angles(0.085645638406277, 1.5631612539291, -0.085630595684052)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Earth green")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh = Instance.new("BlockMesh", part_12)
blockmesh.Name = "BlockMesh"

 decal = Instance.new("Decal", part_12)
decal.Face = Enum.NormalId.Right
decal.Texture = "http://www.roblox.com/asset/?id=315983116"

 part_13 = Instance.new("Part", mhuey)
part_13.Velocity = Vector3.new(0.002, -0.016, -0.002)
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Transparency = 0.8
part_13.TopSurface = Enum.SurfaceType.Smooth
part_13.Reflectance = 0.1
part_13.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_13.Material = Enum.Material.SmoothPlastic
part_13.Size = Vector3.new(1, 2.8, 1)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(44.361, 14.258, 64.179)* CFrame.Angles(0.085702493786812, 1.5630836486816, -0.085573859512806)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Earth green")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.Smooth

 mesh_17 = Instance.new("BlockMesh", part_13)
mesh_17.Scale = Vector3.new(0.9, 1, 1)

 part_14 = Instance.new("Part", mhuey)
part_14.Velocity = Vector3.new(0, -0.016, -0.005)
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.Smooth
part_14.Reflectance = 0.1
part_14.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_14.Material = Enum.Material.SmoothPlastic
part_14.Size = Vector3.new(1, 0.4, 1)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(44.362, 15.858, 64.18)* CFrame.Angles(-3.1415903568268, 0.007661871612072, -3.1409363746643)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Earth green")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.Smooth

 mesh_18 = Instance.new("BlockMesh", part_14)

 part_15 = Instance.new("Part", mhuey)
part_15.Velocity = Vector3.new(-0.001, -0.013, -0.007)
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.Smooth
part_15.Reflectance = 0.1
part_15.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_15.Material = Enum.Material.SmoothPlastic
part_15.Size = Vector3.new(4, 1, 3)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(41.944, 16.559, 66.661)* CFrame.Angles(-3.0558533668518, -1.5630297660828, -3.0560562610626)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Earth green")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_2 = Instance.new("BlockMesh", part_15)
blockmesh_2.Name = "BlockMesh"

 part_16 = Instance.new("Part", mhuey)
part_16.Velocity = Vector3.new(0.005, -0.017, 0.005)
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.Smooth
part_16.Reflectance = 0.1
part_16.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_16.Material = Enum.Material.SmoothPlastic
part_16.Size = Vector3.new(3, 1, 3)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(38.943, 9.561, 66.138)* CFrame.Angles(0.085641652345657, 1.5631612539291, -0.085634581744671)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Earth green")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_3 = Instance.new("BlockMesh", part_16)
blockmesh_3.Name = "BlockMesh"

 part_17 = Instance.new("Part", mhuey)
part_17.Velocity = Vector3.new(0.002, -0.018, -0.003)
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.Transparency = 0.8
part_17.TopSurface = Enum.SurfaceType.Smooth
part_17.Reflectance = 0.1
part_17.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_17.Material = Enum.Material.SmoothPlastic
part_17.Size = Vector3.new(1, 2.8, 3)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(41.962, 14.26, 64.161)* CFrame.Angles(0.085634715855122, 1.5631612539291, -0.085619695484638)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Earth green")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_4 = Instance.new("BlockMesh", part_17)
blockmesh_4.Name = "BlockMesh"
blockmesh_4.Scale = Vector3.new(0.9, 1, 1)

 part_18 = Instance.new("Part", mhuey)
part_18.Velocity = Vector3.new(0.008, -0.01, 0.012)
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.Smooth
part_18.Reflectance = 0.1
part_18.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_18.Material = Enum.Material.SmoothPlastic
part_18.Size = Vector3.new(1, 0.8, 23)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(52.964, 6.652, 63.245)* CFrame.Angles(0.085650578141212, 1.5631535053253, -0.085625305771828)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Really black")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.Smooth

 part_19 = Instance.new("Part", mhuey)
part_19.Velocity = Vector3.new(-0.002, -0.003, -0.008)
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.Smooth
part_19.Reflectance = 0.1
part_19.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_19.Material = Enum.Material.SmoothPlastic
part_19.Size = Vector3.new(10, 3, 1)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(57.456, 18.549, 65.28)* CFrame.Angles(-3.1415903568268, 0.0076527292840183, -3.1409363746643)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = BrickColor.new("Earth green")
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_5 = Instance.new("BlockMesh", part_19)
blockmesh_5.Name = "BlockMesh"

 part_20 = Instance.new("Part", mhuey)
part_20.Velocity = Vector3.new(0.007, -0.007, 0.011)
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.Smooth
part_20.Reflectance = 0.1
part_20.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_20.Material = Enum.Material.SmoothPlastic
part_20.Size = Vector3.new(2, 1, 1)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(56.464, 7.55, 63.272)* CFrame.Angles(2.2558581349585e-006, -0.0076465494930744, -0.00065619964152575)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Really black")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.Smooth

 mesh_19 = Instance.new("SpecialMesh", part_20)
mesh_19.Scale = Vector3.new(0.3, 1, 1)
mesh_19.MeshType = Enum.MeshType.Wedge

 part_21 = Instance.new("Part", mhuey)
part_21.Velocity = Vector3.new(0.006, -0.011, 0.007)
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.Smooth
part_21.Reflectance = 0.1
part_21.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_21.Material = Enum.Material.SmoothPlastic
part_21.Size = Vector3.new(2, 1, 2)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(44.439, 8.558, 66.68)* CFrame.Angles(-3.1415903568268, 0.0076438933610916, 0.0006561991176568)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Really black")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.Smooth

 mesh_20 = Instance.new("SpecialMesh", part_21)
mesh_20.Scale = Vector3.new(0.3, 1, 1)
mesh_20.MeshType = Enum.MeshType.Wedge

 part_22 = Instance.new("Part", mhuey)
part_22.Velocity = Vector3.new(-0.002, -0.005, -0.009)
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.Smooth
part_22.Reflectance = 0.1
part_22.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_22.Material = Enum.Material.SmoothPlastic
part_22.Size = Vector3.new(2, 3, 3)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(49.937, 18.554, 67.722)* CFrame.Angles(0.085739210247993, 1.5630297660828, -0.085536375641823)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Earth green")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.Smooth

 mesh_21 = Instance.new("SpecialMesh", part_22)
mesh_21.MeshType = Enum.MeshType.Wedge

 part_23 = Instance.new("Part", mhuey)
part_23.Velocity = Vector3.new(0.004, -0.011, 0.004)
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.Smooth
part_23.Reflectance = 0.1
part_23.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_23.Material = Enum.Material.SmoothPlastic
part_23.Size = Vector3.new(4, 1.2, 1)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(44.94, 10.658, 66.684)* CFrame.Angles(-3.0559511184692, -1.5631612539291, 0.085634581744671)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("Earth green")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.Smooth

 mesh_22 = Instance.new("BlockMesh", part_23)

 mesh_23 = Instance.new("SpecialMesh", part_23)
mesh_23.MeshType = Enum.MeshType.Wedge

 part_24 = Instance.new("Part", mhuey)
part_24.Velocity = Vector3.new(-0.001, -0.009, -0.007)
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.Smooth
part_24.Reflectance = 0.1
part_24.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_24.Material = Enum.Material.SmoothPlastic
part_24.Size = Vector3.new(4, 1, 2)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(41.421, 16.56, 69.657)* CFrame.Angles(-3.1415903568268, 0.0076700369827449, -3.1409363746643)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Earth green")
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_6 = Instance.new("BlockMesh", part_24)
blockmesh_6.Name = "BlockMesh"

 part_25 = Instance.new("Part", mhuey)
part_25.Velocity = Vector3.new(0.003, -0.011, 0)
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.Smooth
part_25.Reflectance = 0.1
part_25.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_25.Material = Enum.Material.SmoothPlastic
part_25.Size = Vector3.new(4, 0.4, 2)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(44.641, 12.658, 66.682)* CFrame.Angles(1.5708036422729, -0.00065618084045127, 1.5784448385239)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Really black")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.Smooth

 mesh_24 = Instance.new("BlockMesh", part_25)

seat2 = Instance.new("Seat", mhuey)
seat2.Velocity = Vector3.new(0.004, -0.011, 0.003)
seat2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat2.TopSurface = Enum.SurfaceType.Smooth
seat2.Reflectance = 0.1
seat2.RotVelocity = Vector3.new(-0.002, 0, 0.001)
seat2.Material = Enum.Material.SmoothPlastic
seat2.Size = Vector3.new(4, 0.4, 2)
seat2.Name = "Seat2"
seat2.CFrame = CFrame.new(45.44, 11.457, 66.688)* CFrame.Angles(-3.0558865070343, -1.563068151474, -3.056022644043)
seat2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat2.BrickColor = BrickColor.new("Really black")
seat2.Friction = 0.3
seat2.BottomSurface = Enum.SurfaceType.Smooth
seat2.Anchored = false

 mesh_25 = Instance.new("BlockMesh", seat2)

 seat = Instance.new("Seat", mhuey)
seat.Friction = 0.3
seat.BottomSurface = Enum.SurfaceType.Smooth
seat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat.TopSurface = Enum.SurfaceType.Smooth
seat.Reflectance = 0.1
seat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat.RotVelocity = Vector3.new(-0.002, 0, 0.001)
seat.BrickColor = BrickColor.new("Really black")
seat.Material = Enum.Material.SmoothPlastic
seat.Size = Vector3.new(7, 0.4, 2)
seat.Velocity = Vector3.new(0.004, -0.004, 0.004)
seat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat.CFrame = CFrame.new(54.948, 11.451, 65.761)* CFrame.Angles(2.2967058157519e-006, -0.0076526966877282, -0.00065627892035991)

 mesh_26 = Instance.new("BlockMesh", seat)

 part_26 = Instance.new("Part", mhuey)
part_26.Velocity = Vector3.new(0.003, -0.003, 0.002)
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.Smooth
part_26.Reflectance = 0.1
part_26.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_26.Material = Enum.Material.SmoothPlastic
part_26.Size = Vector3.new(7, 0.4, 2)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(54.943, 12.651, 66.56)* CFrame.Angles(1.5708036422729, -0.00065618142252788, 0.007652617059648)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Really black")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.Smooth

 mesh_27 = Instance.new("BlockMesh", part_26)

 part_27 = Instance.new("Part", mhuey)
part_27.Velocity = Vector3.new(0.004, -0.004, 0.006)
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.Smooth
part_27.Reflectance = 0.1
part_27.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_27.Material = Enum.Material.SmoothPlastic
part_27.Size = Vector3.new(7, 1.2, 1)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(54.943, 10.651, 66.26)* CFrame.Angles(2.2608462586504e-006, -0.0076349526643753, 3.1409363746643)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Earth green")
part_27.Friction = 0.3
part_27.BottomSurface = Enum.SurfaceType.Smooth

 mesh_28 = Instance.new("BlockMesh", part_27)

 mesh_29 = Instance.new("SpecialMesh", part_27)
mesh_29.MeshType = Enum.MeshType.Wedge

 part_28 = Instance.new("Part", mhuey)
part_28.Velocity = Vector3.new(-0.002, 0.002, -0.007)
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.Smooth
part_28.Reflectance = 0.1
part_28.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_28.Material = Enum.Material.SmoothPlastic
part_28.Size = Vector3.new(3, 3, 1)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(60.948, 18.547, 66.406)* CFrame.Angles(-3.1415903568268, 0.0076528186909854, -3.1409363746643)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Earth green")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_7 = Instance.new("BlockMesh", part_28)
blockmesh_7.Name = "BlockMesh"

 part_29 = Instance.new("Part", mhuey)
part_29.Velocity = Vector3.new(0, 0.001, -0.004)
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.Smooth
part_29.Reflectance = 0.1
part_29.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_29.Material = Enum.Material.SmoothPlastic
part_29.Size = Vector3.new(3, 1, 2)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(60.951, 16.547, 65.806)* CFrame.Angles(-3.1415903568268, 0.0076350197196007, -3.1409363746643)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("Earth green")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_8 = Instance.new("BlockMesh", part_29)
blockmesh_8.Name = "BlockMesh"

 part_30 = Instance.new("Part", mhuey)
part_30.Velocity = Vector3.new(0.007, -0.005, 0.011)
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.Smooth
part_30.Reflectance = 0.1
part_30.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_30.Material = Enum.Material.SmoothPlastic
part_30.Size = Vector3.new(2, 1, 2)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(56.453, 7.65, 64.772)* CFrame.Angles(-3.1415903568268, 0.0076469676569104, 0.00065619981614873)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("Really black")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.Smooth

 mesh_30 = Instance.new("SpecialMesh", part_30)
mesh_30.Scale = Vector3.new(0.3, 1, 1)
mesh_30.MeshType = Enum.MeshType.Wedge

 part_31 = Instance.new("Part", mhuey)
part_31.Velocity = Vector3.new(0.006, -0.005, 0.009)
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.Smooth
part_31.Reflectance = 0.1
part_31.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_31.Material = Enum.Material.SmoothPlastic
part_31.Size = Vector3.new(2, 1, 2)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(56.454, 8.55, 64.772)* CFrame.Angles(2.2569292923436e-006, -0.0076438933610916, -0.0006561991176568)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Really black")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.Smooth

 mesh_31 = Instance.new("SpecialMesh", part_31)
mesh_31.Scale = Vector3.new(0.3, 1, 1)
mesh_31.MeshType = Enum.MeshType.Wedge

 part_32 = Instance.new("Part", mhuey)
part_32.Velocity = Vector3.new(0.003, 0.002, 0.003)
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.Smooth
part_32.Reflectance = 0.1
part_32.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_32.Material = Enum.Material.SmoothPlastic
part_32.Size = Vector3.new(6, 3, 8)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(63.452, 13.045, 65.325)* CFrame.Angles(-3.0558545589447, -1.5630143880844, -1.4852585792542)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Earth green")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.Smooth

 mesh_32 = Instance.new("SpecialMesh", part_32)
mesh_32.MeshType = Enum.MeshType.Wedge

 part_33 = Instance.new("Part", mhuey)
part_33.Velocity = Vector3.new(-0.002, 0.004, -0.006)
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.Smooth
part_33.Reflectance = 0.1
part_33.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_33.Material = Enum.Material.SmoothPlastic
part_33.Size = Vector3.new(4, 2, 5)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(64.951, 18.144, 65.937)* CFrame.Angles(-3.0557527542114, -1.5630373954773, -1.4851596355438)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("Earth green")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.Smooth

 mesh_33 = Instance.new("SpecialMesh", part_33)
mesh_33.MeshType = Enum.MeshType.Wedge

 part_34 = Instance.new("Part", mhuey)
part_34.Velocity = Vector3.new(0.001, -0.016, -0.005)
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Transparency = 0.7
part_34.TopSurface = Enum.SurfaceType.Smooth
part_34.Reflectance = 0.1
part_34.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_34.Material = Enum.Material.SmoothPlastic
part_34.Size = Vector3.new(4, 4, 2)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(38.443, 15.062, 66.634)* CFrame.Angles(0.085529826581478, 1.5631457567215, -0.08552210777998)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Earth green")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.Smooth

 mesh_34 = Instance.new("SpecialMesh", part_34)
mesh_34.MeshType = Enum.MeshType.Wedge

 part_35 = Instance.new("Part", mhuey)
part_35.Velocity = Vector3.new(0.004, -0.021, 0.002)
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.Smooth
part_35.Reflectance = 0.1
part_35.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_35.Material = Enum.Material.SmoothPlastic
part_35.Size = Vector3.new(1, 2, 2)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(38.46, 11.062, 64.134)* CFrame.Angles(0.085529826581478, 1.5631457567215, -0.08552210777998)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Earth green")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_9 = Instance.new("BlockMesh", part_35)
blockmesh_9.Name = "BlockMesh"

 part_36 = Instance.new("Part", mhuey)
part_36.Velocity = Vector3.new(0, -0.018, -0.007)
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.Smooth
part_36.Reflectance = 0.1
part_36.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_36.Material = Enum.Material.SmoothPlastic
part_36.Size = Vector3.new(1, 1, 1)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(39.955, 16.561, 65.146)* CFrame.Angles(-3.1415903568268, 0.0076528787612915, -3.1409363746643)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BrickColor = BrickColor.new("Earth green")
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_10 = Instance.new("BlockMesh", part_36)
blockmesh_10.Name = "BlockMesh"

 part_37 = Instance.new("Part", mhuey)
part_37.Velocity = Vector3.new(-0.001, -0.014, -0.007)
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.Smooth
part_37.Reflectance = 0.1
part_37.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_37.Material = Enum.Material.SmoothPlastic
part_37.Size = Vector3.new(1, 1, 3)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(39.94, 16.561, 67.146)* CFrame.Angles(-3.1415903568268, 0.0076348036527634, -3.1409363746643)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = BrickColor.new("Earth green")
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_11 = Instance.new("BlockMesh", part_37)
blockmesh_11.Name = "BlockMesh"

 part_38 = Instance.new("Part", mhuey)
part_38.Velocity = Vector3.new(0.004, -0.018, 0.001)
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.Smooth
part_38.Reflectance = 0.1
part_38.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_38.Material = Enum.Material.SmoothPlastic
part_38.Size = Vector3.new(2, 4, 1)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(33.933, 11.065, 67.6)* CFrame.Angles(0.085821054875851, 1.5631769895554, -1.6566096544266)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BrickColor = BrickColor.new("Earth green")
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.Smooth

 mesh_35 = Instance.new("SpecialMesh", part_38)
mesh_35.MeshType = Enum.MeshType.Wedge

 part_39 = Instance.new("Part", mhuey)
part_39.Velocity = Vector3.new(0.005, -0.019, 0.004)
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.Transparency = 0.8
part_39.TopSurface = Enum.SurfaceType.Smooth
part_39.Reflectance = 0.1
part_39.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_39.Material = Enum.Material.SmoothPlastic
part_39.Size = Vector3.new(3, 1, 2)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(36.443, 9.563, 66.119)* CFrame.Angles(0.085642009973526, 1.5631612539291, 3.0559582710266)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.Friction = 0.3
part_39.BottomSurface = Enum.SurfaceType.Smooth

 mesh_36 = Instance.new("SpecialMesh", part_39)
mesh_36.MeshType = Enum.MeshType.Wedge

 part_40 = Instance.new("Part", mhuey)
part_40.Velocity = Vector3.new(0.001, -0.02, -0.004)
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Transparency = 0.8
part_40.TopSurface = Enum.SurfaceType.Smooth
part_40.Reflectance = 0.1
part_40.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_40.Material = Enum.Material.SmoothPlastic
part_40.Size = Vector3.new(1, 3, 1)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(38.962, 14.561, 64.138)* CFrame.Angles(0.085529826581478, 1.5631457567215, -0.08552210777998)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BrickColor = BrickColor.new("Earth green")
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.Smooth

 mesh_37 = Instance.new("SpecialMesh", part_40)
mesh_37.MeshType = Enum.MeshType.Wedge

 part_41 = Instance.new("Part", mhuey)
part_41.Velocity = Vector3.new(0.003, -0.019, -0.001)
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.Smooth
part_41.Reflectance = 0.1
part_41.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_41.Material = Enum.Material.SmoothPlastic
part_41.Size = Vector3.new(1, 6, 1)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(39.961, 13.061, 64.146)* CFrame.Angles(0.085641294717789, 1.5631612539291, -0.08563357591629)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Earth green")
part_41.Friction = 0.3
part_41.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_12 = Instance.new("BlockMesh", part_41)
blockmesh_12.Name = "BlockMesh"

 part_42 = Instance.new("Part", mhuey)
part_42.Velocity = Vector3.new(0.002, -0.013, -0.001)
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.Smooth
part_42.Reflectance = 0.1
part_42.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_42.Material = Enum.Material.SmoothPlastic
part_42.Size = Vector3.new(8, 1, 3)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(35.919, 12.563, 69.615)* CFrame.Angles(0.085641294717789, 1.5631612539291, -0.08563357591629)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Earth green")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.Smooth

 mesh_38 = Instance.new("SpecialMesh", part_42)
mesh_38.MeshType = Enum.MeshType.Wedge

 part_43 = Instance.new("Part", mhuey)
part_43.Velocity = Vector3.new(0, -0.011, -0.005)
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.Smooth
part_43.Reflectance = 0.1
part_43.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_43.Material = Enum.Material.SmoothPlastic
part_43.Size = Vector3.new(2, 4, 2)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(38.42, 15.062, 69.634)* CFrame.Angles(0.085419297218323, 1.5631378889084, -0.085411585867405)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Really black")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.Smooth

 mesh_39 = Instance.new("SpecialMesh", part_43)
mesh_39.MeshType = Enum.MeshType.Wedge

 part_44 = Instance.new("Part", mhuey)
part_44.Velocity = Vector3.new(0.003, -0.013, 0.002)
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.Smooth
part_44.Reflectance = 0.1
part_44.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_44.Material = Enum.Material.SmoothPlastic
part_44.Size = Vector3.new(3, 2, 8)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(35.918, 11.063, 69.615)* CFrame.Angles(-3.1415903568268, 0.0076228827238083, -3.1409363746643)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BrickColor = BrickColor.new("Really black")
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_13 = Instance.new("BlockMesh", part_44)
blockmesh_13.Name = "BlockMesh"

 part_45 = Instance.new("Part", mhuey)
part_45.Velocity = Vector3.new(0.002, 0.016, 0.004)
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.TopSurface = Enum.SurfaceType.Smooth
part_45.Reflectance = 0.1
part_45.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_45.Material = Enum.Material.SmoothPlastic
part_45.Size = Vector3.new(1, 2, 16)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(75.433, 13.538, 67.917)* CFrame.Angles(-3.0556631088257, -1.5631068944931, -1.484968662262)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Earth green")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.Smooth

 mesh_40 = Instance.new("SpecialMesh", part_45)
mesh_40.MeshType = Enum.MeshType.Wedge

 part_46 = Instance.new("Part", mhuey)
part_46.Velocity = Vector3.new(0.002, 0.017, 0.006)
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.TopSurface = Enum.SurfaceType.Smooth
part_46.Reflectance = 0.1
part_46.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_46.Material = Enum.Material.SmoothPlastic
part_46.Size = Vector3.new(1, 2, 17)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(75.933, 12.537, 67.921)* CFrame.Angles(-3.0557613372803, -1.5630143880844, -1.4851629734039)
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BrickColor = BrickColor.new("Earth green")
part_46.Friction = 0.3
part_46.BottomSurface = Enum.SurfaceType.Smooth

 mesh_41 = Instance.new("SpecialMesh", part_46)
mesh_41.MeshType = Enum.MeshType.Wedge

 part_47 = Instance.new("Part", mhuey)
part_47.Velocity = Vector3.new(0, -0.006, -0.005)
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.Transparency = 0.7
part_47.TopSurface = Enum.SurfaceType.Smooth
part_47.Reflectance = 0.1
part_47.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_47.Material = Enum.Material.SmoothPlastic
part_47.Size = Vector3.new(4, 4, 2)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(38.397, 15.062, 72.634)* CFrame.Angles(0.085412956774235, 1.5631378889084, -0.085405260324478)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BrickColor = BrickColor.new("Earth green")
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.Smooth

 mesh_42 = Instance.new("SpecialMesh", part_47)
mesh_42.MeshType = Enum.MeshType.Wedge

 part_48 = Instance.new("Part", mhuey)
part_48.Velocity = Vector3.new(0.003, -0.011, 0.001)
part_48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.TopSurface = Enum.SurfaceType.Smooth
part_48.Reflectance = 0.1
part_48.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_48.Material = Enum.Material.SmoothPlastic
part_48.Size = Vector3.new(2, 4, 1)
part_48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.CFrame = CFrame.new(33.902, 11.065, 71.6)* CFrame.Angles(0.085807986557484, 1.5631146430969, 1.4850934743881)
part_48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BrickColor = BrickColor.new("Earth green")
part_48.Friction = 0.3
part_48.BottomSurface = Enum.SurfaceType.Smooth

 mesh_43 = Instance.new("SpecialMesh", part_48)
mesh_43.MeshType = Enum.MeshType.Wedge

 part_49 = Instance.new("Part", mhuey)
part_49.Velocity = Vector3.new(-0.002, -0.006, -0.007)
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.Smooth
part_49.Reflectance = 0.1
part_49.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_49.Material = Enum.Material.SmoothPlastic
part_49.Size = Vector3.new(1, 1, 3)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(39.902, 16.561, 72.145)* CFrame.Angles(-3.1415903568268, 0.0076701794750988, -3.1409363746643)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BrickColor = BrickColor.new("Earth green")
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_14 = Instance.new("BlockMesh", part_49)
blockmesh_14.Name = "BlockMesh"

 rotor = Instance.new("Part", mhuey)
rotor.TopSurfaceInput = Enum.InputType.Constant
rotor.Velocity = Vector3.new(-0.003, 0.003, -0.008)
rotor.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor.TopSurface = Enum.SurfaceType.Smooth
rotor.Reflectance = 0.1
rotor.TopParamA = -0.1
rotor.TopParamB = 0.1
rotor.RotVelocity = Vector3.new(-0.002, 0, 0.001)
rotor.Material = Enum.Material.SmoothPlastic
rotor.Size = Vector3.new(8, 2.8, 7)
rotor.Name = "Rotor"
rotor.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor.CFrame = CFrame.new(54.922, 18.451, 69.76)* CFrame.Angles(-3.0563409328461, -1.5630605220795, -3.0564436912537)
rotor.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor.BrickColor = BrickColor.new("Earth green")
rotor.Friction = 0.3
rotor.BottomSurface = Enum.SurfaceType.Smooth

 engine = Instance.new("Part", mhuey)
engine.Velocity = Vector3.new(0.002, 0.003, 0.001)
engine.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
engine.TopSurface = Enum.SurfaceType.Smooth
engine.Reflectance = 0.1
engine.RotVelocity = Vector3.new(-0.002, 0, 0.001)
engine.Material = Enum.Material.SmoothPlastic
engine.Size = Vector3.new(6, 6, 7)
engine.Name = "engine"
engine.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
engine.CFrame = CFrame.new(54.918, 13.051, 69.76)* CFrame.Angles(0.085518606007099, 1.5630836486816, -0.085415221750736)
engine.RightSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BackSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BrickColor = BrickColor.new("Earth green")
engine.Friction = 0.3
engine.BottomSurface = Enum.SurfaceType.Smooth

 mesh_44 = Instance.new("BlockMesh", engine)

 part_50 = Instance.new("Part", mhuey)
part_50.Velocity = Vector3.new(0.005, -0.002, 0.007)
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.Smooth
part_50.Reflectance = 0.1
part_50.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_50.Material = Enum.Material.SmoothPlastic
part_50.Size = Vector3.new(10, 1, 19)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(49.916, 9.554, 69.722)* CFrame.Angles(0.085640653967857, 1.5631612539291, -0.085635587573051)
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BrickColor = BrickColor.new("Earth green")
part_50.Friction = 0.3
part_50.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_15 = Instance.new("BlockMesh", part_50)
blockmesh_15.Name = "BlockMesh"

 part_51 = Instance.new("Part", mhuey)
part_51.Velocity = Vector3.new(-0.001, 0, -0.005)
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.Smooth
part_51.Reflectance = 0.1
part_51.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_51.Material = Enum.Material.SmoothPlastic
part_51.Size = Vector3.new(16, 1, 10)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(51.421, 16.553, 69.733)* CFrame.Angles(-3.1415903568268, 0.0076748356223106, -3.1409363746643)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = BrickColor.new("Earth green")
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_16 = Instance.new("BlockMesh", part_51)
blockmesh_16.Name = "BlockMesh"

 part_52 = Instance.new("Part", mhuey)
part_52.Velocity = Vector3.new(-0.003, 0.006, -0.008)
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.TopSurface = Enum.SurfaceType.Smooth
part_52.Reflectance = 0.1
part_52.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_52.Material = Enum.Material.SmoothPlastic
part_52.Size = Vector3.new(1, 3, 8)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(58.922, 18.548, 69.791)* CFrame.Angles(-3.1415903568268, 0.0076343934051692, -3.1409363746643)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("Earth green")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_17 = Instance.new("BlockMesh", part_52)
blockmesh_17.Name = "BlockMesh"

 part_53 = Instance.new("Part", mhuey)
part_53.Velocity = Vector3.new(0, 0.01, -0.001)
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.TopSurface = Enum.SurfaceType.Smooth
part_53.Reflectance = 0.1
part_53.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_53.Material = Enum.Material.SmoothPlastic
part_53.Size = Vector3.new(1, 2, 1)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(67.935, 15.542, 67.86)* CFrame.Angles(-3.0557565689087, -1.5630991458893, -1.485062122345)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BrickColor = BrickColor.new("Earth green")
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.Smooth

 mesh_45 = Instance.new("SpecialMesh", part_53)
mesh_45.MeshType = Enum.MeshType.Wedge

 part_54 = Instance.new("Part", mhuey)
part_54.Velocity = Vector3.new(0.001, 0.013, 0.002)
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.Smooth
part_54.Reflectance = 0.1
part_54.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_54.Material = Enum.Material.SmoothPlastic
part_54.Size = Vector3.new(1, 2, 8)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(71.434, 14.54, 67.886)* CFrame.Angles(-3.0556631088257, -1.5631068944931, -1.484968662262)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BrickColor = BrickColor.new("Earth green")
part_54.Friction = 0.3
part_54.BottomSurface = Enum.SurfaceType.Smooth

 mesh_46 = Instance.new("SpecialMesh", part_54)
mesh_46.MeshType = Enum.MeshType.Wedge

 part_55 = Instance.new("Part", mhuey)
part_55.Velocity = Vector3.new(0.002, -0.011, -0.001)
part_55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.TopSurface = Enum.SurfaceType.Smooth
part_55.Reflectance = 0.1
part_55.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_55.Material = Enum.Material.SmoothPlastic
part_55.Size = Vector3.new(2, 1, 12)
part_55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.CFrame = CFrame.new(38.419, 12.562, 69.634)* CFrame.Angles(-3.1415903568268, 0.0076489895582199, -3.1409363746643)
part_55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BrickColor = BrickColor.new("Earth green")
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_18 = Instance.new("BlockMesh", part_55)
blockmesh_18.Name = "BlockMesh"

 part_56 = Instance.new("Part", mhuey)
part_56.Velocity = Vector3.new(-0.003, -0.002, -0.009)
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.Smooth
part_56.Reflectance = 0.1
part_56.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_56.Material = Enum.Material.SmoothPlastic
part_56.Size = Vector3.new(2, 3, 5)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(48.922, 18.555, 69.714)* CFrame.Angles(0.08525488525629, 1.5630605220795, -0.085152111947536)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = BrickColor.new("Earth green")
part_56.Friction = 0.3
part_56.BottomSurface = Enum.SurfaceType.Smooth

 mesh_47 = Instance.new("SpecialMesh", part_56)
mesh_47.MeshType = Enum.MeshType.Wedge

 part_57 = Instance.new("Part", mhuey)
part_57.Velocity = Vector3.new(0.004, -0.009, 0.003)
part_57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.TopSurface = Enum.SurfaceType.Smooth
part_57.Reflectance = 0.1
part_57.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_57.Material = Enum.Material.SmoothPlastic
part_57.Size = Vector3.new(2, 1.6, 2)
part_57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.CFrame = CFrame.new(41.417, 10.86, 69.657)* CFrame.Angles(-3.1415903568268, 0.0076494961977005, -3.1409363746643)
part_57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BrickColor = BrickColor.new("Really black")
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.Smooth

 mesh_48 = Instance.new("BlockMesh", part_57)

 part_58 = Instance.new("Part", mhuey)
part_58.Velocity = Vector3.new(0.005, -0.013, 0.004)
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.Smooth
part_58.Reflectance = 0.1
part_58.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_58.Material = Enum.Material.SmoothPlastic
part_58.Size = Vector3.new(4, 1, 3)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(35.917, 9.563, 69.615)* CFrame.Angles(0.085657514631748, 1.5631612539291, 3.055942773819)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BrickColor = BrickColor.new("Really black")
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.Smooth

 mesh_49 = Instance.new("SpecialMesh", part_58)
mesh_49.MeshType = Enum.MeshType.Wedge

 part_59 = Instance.new("Part", mhuey)
part_59.Velocity = Vector3.new(0.006, -0.001, 0.009)
part_59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.TopSurface = Enum.SurfaceType.Smooth
part_59.Reflectance = 0.1
part_59.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_59.Material = Enum.Material.SmoothPlastic
part_59.Size = Vector3.new(2, 1, 2)
part_59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.CFrame = CFrame.new(56.438, 8.55, 66.772)* CFrame.Angles(-3.1415903568268, 0.0076438933610916, 0.0006561991176568)
part_59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BrickColor = BrickColor.new("Really black")
part_59.Friction = 0.3
part_59.BottomSurface = Enum.SurfaceType.Smooth

 mesh_50 = Instance.new("SpecialMesh", part_59)
mesh_50.Scale = Vector3.new(0.3, 1, 1)
mesh_50.MeshType = Enum.MeshType.Wedge

 part_60 = Instance.new("Part", mhuey)
part_60.Velocity = Vector3.new(0.003, -0.009, 0.001)
part_60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.TopSurface = Enum.SurfaceType.Smooth
part_60.Reflectance = 0.1
part_60.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_60.Material = Enum.Material.SmoothPlastic
part_60.Size = Vector3.new(2, 0.8, 1)
part_60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.CFrame = CFrame.new(40.918, 12.06, 69.653)* CFrame.Angles(-3.0559499263763, -1.5631612539291, -3.0559577941895)
part_60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BrickColor = BrickColor.new("Really black")
part_60.Friction = 0.3
part_60.BottomSurface = Enum.SurfaceType.Smooth

 mesh_51 = Instance.new("BlockMesh", part_60)

 mesh_52 = Instance.new("SpecialMesh", part_60)
mesh_52.MeshType = Enum.MeshType.Wedge

 part_61 = Instance.new("Part", mhuey)
part_61.Velocity = Vector3.new(0.003, -0.01, 0.002)
part_61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.TopSurface = Enum.SurfaceType.Smooth
part_61.Reflectance = 0.1
part_61.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_61.Material = Enum.Material.SmoothPlastic
part_61.Size = Vector3.new(1, 2.8, 6)
part_61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.CFrame = CFrame.new(39.918, 11.461, 69.646)* CFrame.Angles(-3.1415903568268, 0.0076417475938797, -3.1409363746643)
part_61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BrickColor = BrickColor.new("Really black")
part_61.Friction = 0.3
part_61.BottomSurface = Enum.SurfaceType.Smooth

 mesh_53 = Instance.new("BlockMesh", part_61)

 part_62 = Instance.new("Part", mhuey)
part_62.Velocity = Vector3.new(0.005, -0.011, 0.005)
part_62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.TopSurface = Enum.SurfaceType.Smooth
part_62.Reflectance = 0.1
part_62.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_62.Material = Enum.Material.SmoothPlastic
part_62.Size = Vector3.new(4, 1, 3)
part_62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.CFrame = CFrame.new(38.916, 9.561, 69.638)* CFrame.Angles(0.085666432976723, 1.5631301403046, -0.08560898154974)
part_62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BrickColor = BrickColor.new("Really black")
part_62.Friction = 0.3
part_62.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_19 = Instance.new("BlockMesh", part_62)
blockmesh_19.Name = "BlockMesh"

 part_63 = Instance.new("Part", mhuey)
part_63.Velocity = Vector3.new(0.003, -0.011, 0.002)
part_63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.TopSurface = Enum.SurfaceType.Smooth
part_63.Reflectance = 0.1
part_63.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_63.Material = Enum.Material.SmoothPlastic
part_63.Size = Vector3.new(2, 2, 4)
part_63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.CFrame = CFrame.new(38.417, 11.062, 69.634)* CFrame.Angles(-3.1415903568268, 0.0076440125703812, -3.1409363746643)
part_63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BrickColor = BrickColor.new("Dark stone grey")
part_63.Friction = 0.3
part_63.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_20 = Instance.new("BlockMesh", part_63)
blockmesh_20.Name = "BlockMesh"

 part_64 = Instance.new("Part", mhuey)
part_64.Velocity = Vector3.new(0.002, 0.001, 0.002)
part_64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.TopSurface = Enum.SurfaceType.Smooth
part_64.Reflectance = 0.1
part_64.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_64.Material = Enum.Material.SmoothPlastic
part_64.Size = Vector3.new(1, 2.8, 3)
part_64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.CFrame = CFrame.new(41.876, 11.459, 75.161)* CFrame.Angles(0.085646606981754, 1.5631535053253, -0.085629932582378)
part_64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BrickColor = BrickColor.new("Earth green")
part_64.Friction = 0.3
part_64.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_21 = Instance.new("BlockMesh", part_64)
blockmesh_21.Name = "BlockMesh"

 part_65 = Instance.new("Part", mhuey)
part_65.Velocity = Vector3.new(0.005, 0.002, 0.007)
part_65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.TopSurface = Enum.SurfaceType.Smooth
part_65.Reflectance = 0.1
part_65.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_65.Material = Enum.Material.SmoothPlastic
part_65.Size = Vector3.new(2, 1, 2)
part_65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.CFrame = CFrame.new(44.377, 8.558, 74.68)* CFrame.Angles(-3.1415903568268, 0.0076440125703812, -3.1409363746643)
part_65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BrickColor = BrickColor.new("Really black")
part_65.Friction = 0.3
part_65.BottomSurface = Enum.SurfaceType.Smooth

 mesh_54 = Instance.new("SpecialMesh", part_65)
mesh_54.Scale = Vector3.new(0.3, 1, 1)
mesh_54.MeshType = Enum.MeshType.Wedge

 part_66 = Instance.new("Part", mhuey)
part_66.Velocity = Vector3.new(0.001, 0.004, 0)
part_66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.TopSurface = Enum.SurfaceType.Smooth
part_66.Reflectance = 0.1
part_66.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_66.Material = Enum.Material.SmoothPlastic
part_66.Size = Vector3.new(1, 0.4, 6)
part_66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.CFrame = CFrame.new(44.977, 13.057, 75.185)* CFrame.Angles(-1.5707890987396, 0.00065617810469121, -1.578449010849)
part_66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BrickColor = BrickColor.new("Earth green")
part_66.Friction = 0.3
part_66.BottomSurface = Enum.SurfaceType.Smooth

 mesh_55 = Instance.new("BlockMesh", part_66)
mesh_55.Scale = Vector3.new(1, 2, 1)

 part_67 = Instance.new("Part", mhuey)
part_67.Velocity = Vector3.new(0.001, 0.003, -0.001)
part_67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.TopSurface = Enum.SurfaceType.Smooth
part_67.Reflectance = 0.1
part_67.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_67.Material = Enum.Material.SmoothPlastic
part_67.Size = Vector3.new(1, 0.4, 6)
part_67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.CFrame = CFrame.new(43.577, 13.058, 75.174)* CFrame.Angles(-1.5707890987396, 0.00065617653308436, -1.5784482955933)
part_67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BrickColor = BrickColor.new("Earth green")
part_67.Friction = 0.3
part_67.BottomSurface = Enum.SurfaceType.Smooth

 mesh_56 = Instance.new("BlockMesh", part_67)

 part_68 = Instance.new("Part", mhuey)
part_68.Velocity = Vector3.new(0.005, 0.002, 0.009)
part_68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.TopSurface = Enum.SurfaceType.Smooth
part_68.Reflectance = 0.1
part_68.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_68.Material = Enum.Material.SmoothPlastic
part_68.Size = Vector3.new(2, 1, 2)
part_68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.CFrame = CFrame.new(44.377, 7.558, 74.68)* CFrame.Angles(2.2615979560214e-006, -0.0076434030197561, 3.1409363746643)
part_68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BrickColor = BrickColor.new("Really black")
part_68.Friction = 0.3
part_68.BottomSurface = Enum.SurfaceType.Smooth

 mesh_57 = Instance.new("SpecialMesh", part_68)
mesh_57.Scale = Vector3.new(0.3, 1, 1)
mesh_57.MeshType = Enum.MeshType.Wedge

 part_69 = Instance.new("Part", mhuey)
part_69.Velocity = Vector3.new(-0.001, 0.003, -0.005)
part_69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.TopSurface = Enum.SurfaceType.Smooth
part_69.Reflectance = 0.1
part_69.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_69.Material = Enum.Material.SmoothPlastic
part_69.Size = Vector3.new(1, 0.4, 1)
part_69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.CFrame = CFrame.new(44.278, 15.858, 75.179)* CFrame.Angles(-3.1415903568268, 0.0076884031295776, -3.1409363746643)
part_69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BrickColor = BrickColor.new("Earth green")
part_69.Friction = 0.3
part_69.BottomSurface = Enum.SurfaceType.Smooth

 mesh_58 = Instance.new("BlockMesh", part_69)

 part_70 = Instance.new("Part", mhuey)
part_70.Velocity = Vector3.new(0.005, 0.005, 0.009)
part_70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.TopSurface = Enum.SurfaceType.Smooth
part_70.Reflectance = 0.1
part_70.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_70.Material = Enum.Material.SmoothPlastic
part_70.Size = Vector3.new(2, 1, 1)
part_70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.CFrame = CFrame.new(44.365, 7.558, 76.18)* CFrame.Angles(-3.1415903568268, 0.0076428656466305, -3.1409363746643)
part_70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BrickColor = BrickColor.new("Really black")
part_70.Friction = 0.3
part_70.BottomSurface = Enum.SurfaceType.Smooth

 mesh_59 = Instance.new("SpecialMesh", part_70)
mesh_59.Scale = Vector3.new(0.3, 1, 1)
mesh_59.MeshType = Enum.MeshType.Wedge

 part_71 = Instance.new("Part", mhuey)
part_71.Velocity = Vector3.new(0, 0.003, -0.002)
part_71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.Transparency = 0.8
part_71.TopSurface = Enum.SurfaceType.Smooth
part_71.Reflectance = 0.1
part_71.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_71.Material = Enum.Material.SmoothPlastic
part_71.Size = Vector3.new(1, 2.8, 1)
part_71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.CFrame = CFrame.new(44.277, 14.258, 75.179)* CFrame.Angles(0.085556328296661, 1.5630991458893, -0.085453204810619)
part_71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BrickColor = BrickColor.new("Earth green")
part_71.Friction = 0.3
part_71.BottomSurface = Enum.SurfaceType.Smooth

 mesh_60 = Instance.new("BlockMesh", part_71)
mesh_60.Scale = Vector3.new(0.9, 1, 1)

 part_72 = Instance.new("Part", mhuey)
part_72.Velocity = Vector3.new(0.002, 0.003, 0.002)
part_72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.TopSurface = Enum.SurfaceType.Smooth
part_72.Reflectance = 0.1
part_72.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_72.Material = Enum.Material.SmoothPlastic
part_72.Size = Vector3.new(1, 2.8, 1)
part_72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.CFrame = CFrame.new(44.276, 11.458, 75.179)* CFrame.Angles(0.085581615567207, 1.5631301403046, -0.085550427436829)
part_72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BrickColor = BrickColor.new("Earth green")
part_72.Friction = 0.3
part_72.BottomSurface = Enum.SurfaceType.Smooth

 mesh_61 = Instance.new("BlockMesh", part_72)

 part_73 = Instance.new("Part", mhuey)
part_73.Velocity = Vector3.new(-0.002, 0.008, -0.006)
part_73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.TopSurface = Enum.SurfaceType.Smooth
part_73.Reflectance = 0.1
part_73.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_73.Material = Enum.Material.SmoothPlastic
part_73.Size = Vector3.new(20, 1, 1)
part_73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.CFrame = CFrame.new(49.379, 16.555, 75.218)* CFrame.Angles(-3.1415903568268, 0.0076870303601027, -3.1409363746643)
part_73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BrickColor = BrickColor.new("Earth green")
part_73.Friction = 0.3
part_73.BottomSurface = Enum.SurfaceType.Smooth

 mesh_62 = Instance.new("SpecialMesh", part_73)
mesh_62.MeshType = Enum.MeshType.Wedge

 part_74 = Instance.new("Part", mhuey)
part_74.Velocity = Vector3.new(0.004, 0.007, 0.006)
part_74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.TopSurface = Enum.SurfaceType.Smooth
part_74.Reflectance = 0.1
part_74.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_74.Material = Enum.Material.SmoothPlastic
part_74.Size = Vector3.new(22, 1, 1)
part_74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.CFrame = CFrame.new(48.374, 9.555, 75.21)* CFrame.Angles(-3.1415903568268, 0.0076442221179605, 0.00065619917586446)
part_74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BrickColor = BrickColor.new("Earth green")
part_74.Friction = 0.3
part_74.BottomSurface = Enum.SurfaceType.Smooth

 mesh_63 = Instance.new("SpecialMesh", part_74)
mesh_63.MeshType = Enum.MeshType.Wedge

seat5 = Instance.new("Part", mhuey)
seat5.Anchored = false
seat5.Velocity = Vector3.new(0.002, 0.01, 0.004)
seat5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat5.TopSurface = Enum.SurfaceType.Smooth
seat5.Reflectance = 0.1
seat5.RotVelocity = Vector3.new(-0.002, 0, 0.001)
seat5.Material = Enum.Material.SmoothPlastic
seat5.Size = Vector3.new(7, 0.4, 2)
seat5.Name = "Seat5"
seat5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat5.CFrame = CFrame.new(54.887, 11.451, 73.76)* CFrame.Angles(-3.1415903568268, 0.0076486710458994, -3.1409363746643)
seat5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat5.BrickColor = BrickColor.new("Really black")
seat5.Friction = 0.3
seat5.BottomSurface = Enum.SurfaceType.Smooth

 mesh_64 = Instance.new("BlockMesh", seat5)

 part_75 = Instance.new("Part", mhuey)
part_75.Velocity = Vector3.new(0.003, 0.009, 0.006)
part_75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.TopSurface = Enum.SurfaceType.Smooth
part_75.Reflectance = 0.1
part_75.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_75.Material = Enum.Material.SmoothPlastic
part_75.Size = Vector3.new(7, 1.2, 1)
part_75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.CFrame = CFrame.new(54.89, 10.651, 73.26)* CFrame.Angles(-3.1415903568268, 0.0076461620628834, 0.00065619969973341)
part_75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BrickColor = BrickColor.new("Earth green")
part_75.Friction = 0.3
part_75.BottomSurface = Enum.SurfaceType.Smooth

 mesh_65 = Instance.new("BlockMesh", part_75)

 mesh_66 = Instance.new("SpecialMesh", part_75)
mesh_66.MeshType = Enum.MeshType.Wedge

 part_76 = Instance.new("Part", mhuey)
part_76.Velocity = Vector3.new(-0.002, 0.015, -0.004)
part_76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.TopSurface = Enum.SurfaceType.Smooth
part_76.Reflectance = 0.1
part_76.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_76.Material = Enum.Material.SmoothPlastic
part_76.Size = Vector3.new(3, 1, 2)
part_76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.CFrame = CFrame.new(60.89, 16.547, 73.806)* CFrame.Angles(-3.1415903568268, 0.007679246366024, -3.1409363746643)
part_76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BrickColor = BrickColor.new("Earth green")
part_76.Friction = 0.3
part_76.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_22 = Instance.new("BlockMesh", part_76)
blockmesh_22.Name = "BlockMesh"

 part_77 = Instance.new("Part", mhuey)
part_77.Velocity = Vector3.new(-0.003, 0.014, -0.007)
part_77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.TopSurface = Enum.SurfaceType.Smooth
part_77.Reflectance = 0.1
part_77.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_77.Material = Enum.Material.SmoothPlastic
part_77.Size = Vector3.new(3, 3, 1)
part_77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.CFrame = CFrame.new(60.894, 18.547, 73.406)* CFrame.Angles(-3.1415903568268, 0.0076872329227626, -3.1409363746643)
part_77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BrickColor = BrickColor.new("Earth green")
part_77.Friction = 0.3
part_77.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_23 = Instance.new("BlockMesh", part_77)
blockmesh_23.Name = "BlockMesh"

 part_78 = Instance.new("Part", mhuey)
part_78.Velocity = Vector3.new(0.005, 0.015, 0.011)
part_78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.TopSurface = Enum.SurfaceType.Smooth
part_78.Reflectance = 0.1
part_78.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_78.Material = Enum.Material.SmoothPlastic
part_78.Size = Vector3.new(2, 1, 1)
part_78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.CFrame = CFrame.new(56.365, 7.55, 76.272)* CFrame.Angles(-3.1415903568268, 0.007639701012522, -3.1409363746643)
part_78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BrickColor = BrickColor.new("Really black")
part_78.Friction = 0.3
part_78.BottomSurface = Enum.SurfaceType.Smooth

 mesh_67 = Instance.new("SpecialMesh", part_78)
mesh_67.Scale = Vector3.new(0.3, 1, 1)
mesh_67.MeshType = Enum.MeshType.Wedge

 part_79 = Instance.new("Part", mhuey)
part_79.Velocity = Vector3.new(-0.003, 0.012, -0.008)
part_79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.TopSurface = Enum.SurfaceType.Smooth
part_79.Reflectance = 0.1
part_79.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_79.Material = Enum.Material.SmoothPlastic
part_79.Size = Vector3.new(10, 3, 1)
part_79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.CFrame = CFrame.new(57.387, 18.549, 74.279)* CFrame.Angles(-3.1415903568268, 0.0076528112404048, -3.1409363746643)
part_79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BrickColor = BrickColor.new("Earth green")
part_79.Friction = 0.3
part_79.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_24 = Instance.new("BlockMesh", part_79)
blockmesh_24.Name = "BlockMesh"

 part_80 = Instance.new("Part", mhuey)
part_80.Velocity = Vector3.new(0.006, 0.012, 0.012)
part_80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.TopSurface = Enum.SurfaceType.Smooth
part_80.Reflectance = 0.1
part_80.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_80.Material = Enum.Material.SmoothPlastic
part_80.Size = Vector3.new(1, 0.8, 23)
part_80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.CFrame = CFrame.new(52.864, 6.652, 76.245)* CFrame.Angles(-3.0557668209076, -1.5630759000778, -3.055935382843)
part_80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BrickColor = BrickColor.new("Really black")
part_80.Friction = 0.3
part_80.BottomSurface = Enum.SurfaceType.Smooth

 part_81 = Instance.new("Part", mhuey)
part_81.Velocity = Vector3.new(0.005, 0.012, 0.009)
part_81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.TopSurface = Enum.SurfaceType.Smooth
part_81.Reflectance = 0.1
part_81.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_81.Material = Enum.Material.SmoothPlastic
part_81.Size = Vector3.new(2, 1, 2)
part_81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.CFrame = CFrame.new(56.377, 8.55, 74.772)* CFrame.Angles(-3.1415903568268, 0.0076447892934084, -3.1409363746643)
part_81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BrickColor = BrickColor.new("Really black")
part_81.Friction = 0.3
part_81.BottomSurface = Enum.SurfaceType.Smooth

 mesh_68 = Instance.new("SpecialMesh", part_81)
mesh_68.Scale = Vector3.new(0.3, 1, 1)
mesh_68.MeshType = Enum.MeshType.Wedge

 part_82 = Instance.new("Part", mhuey)
part_82.Velocity = Vector3.new(0.005, 0.012, 0.011)
part_82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.TopSurface = Enum.SurfaceType.Smooth
part_82.Reflectance = 0.1
part_82.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_82.Material = Enum.Material.SmoothPlastic
part_82.Size = Vector3.new(2, 1, 2)
part_82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.CFrame = CFrame.new(56.376, 7.55, 74.772)* CFrame.Angles(2.2648598587693e-006, -0.0076354909688234, 3.1409363746643)
part_82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BrickColor = BrickColor.new("Really black")
part_82.Friction = 0.3
part_82.BottomSurface = Enum.SurfaceType.Smooth

 mesh_69 = Instance.new("SpecialMesh", part_82)
mesh_69.Scale = Vector3.new(0.3, 1, 1)
mesh_69.MeshType = Enum.MeshType.Wedge

 part_83 = Instance.new("Part", mhuey)
part_83.Velocity = Vector3.new(0.001, 0.017, 0.003)
part_83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.TopSurface = Enum.SurfaceType.Smooth
part_83.Reflectance = 0.1
part_83.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_83.Material = Enum.Material.SmoothPlastic
part_83.Size = Vector3.new(6, 3, 8)
part_83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.CFrame = CFrame.new(63.383, 13.045, 74.325)* CFrame.Angles(-3.0562496185303, -1.5630527734756, 1.6560386419296)
part_83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BrickColor = BrickColor.new("Earth green")
part_83.Friction = 0.3
part_83.BottomSurface = Enum.SurfaceType.Smooth

 mesh_70 = Instance.new("SpecialMesh", part_83)
mesh_70.MeshType = Enum.MeshType.Wedge

 part_84 = Instance.new("Part", mhuey)
part_84.Velocity = Vector3.new(-0.001, 0.017, -0.001)
part_84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.TopSurface = Enum.SurfaceType.Smooth
part_84.Reflectance = 0.1
part_84.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_84.Material = Enum.Material.SmoothPlastic
part_84.Size = Vector3.new(1, 2, 1)
part_84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.CFrame = CFrame.new(67.904, 15.542, 71.86)* CFrame.Angles(-3.0561537742615, -1.5630605220795, 1.6561297178268)
part_84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BrickColor = BrickColor.new("Earth green")
part_84.Friction = 0.3
part_84.BottomSurface = Enum.SurfaceType.Smooth

 mesh_71 = Instance.new("SpecialMesh", part_84)
mesh_71.MeshType = Enum.MeshType.Wedge

 part_85 = Instance.new("Part", mhuey)
part_85.Velocity = Vector3.new(-0.003, 0.018, -0.006)
part_85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.TopSurface = Enum.SurfaceType.Smooth
part_85.Reflectance = 0.1
part_85.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_85.Material = Enum.Material.SmoothPlastic
part_85.Size = Vector3.new(4, 2, 5)
part_85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.CFrame = CFrame.new(64.89, 18.044, 73.936)* CFrame.Angles(-3.0553643703461, -1.5631301403046, 1.6569217443466)
part_85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BrickColor = BrickColor.new("Earth green")
part_85.Friction = 0.3
part_85.BottomSurface = Enum.SurfaceType.Smooth

 mesh_72 = Instance.new("SpecialMesh", part_85)
mesh_72.MeshType = Enum.MeshType.Wedge

 part_86 = Instance.new("Part", mhuey)
part_86.Velocity = Vector3.new(0.005, 0.009, 0.009)
part_86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.TopSurface = Enum.SurfaceType.Smooth
part_86.Reflectance = 0.1
part_86.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_86.Material = Enum.Material.SmoothPlastic
part_86.Size = Vector3.new(2, 1, 2)
part_86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.CFrame = CFrame.new(56.392, 8.55, 72.772)* CFrame.Angles(2.2560359411727e-006, -0.0076459236443043, 3.1409363746643)
part_86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BrickColor = BrickColor.new("Really black")
part_86.Friction = 0.3
part_86.BottomSurface = Enum.SurfaceType.Smooth

 mesh_73 = Instance.new("SpecialMesh", part_86)
mesh_73.Scale = Vector3.new(0.3, 1, 1)
mesh_73.MeshType = Enum.MeshType.Wedge

 part_87 = Instance.new("Part", mhuey)
part_87.Velocity = Vector3.new(0.003, 0.025, 0.008)
part_87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.TopSurface = Enum.SurfaceType.Smooth
part_87.Reflectance = 0.1
part_87.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_87.Material = Enum.Material.SmoothPlastic
part_87.Size = Vector3.new(2, 3, 28)
part_87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.CFrame = CFrame.new(81.417, 11.534, 69.963)* CFrame.Angles(-3.0560491085052, -1.563068151474, 0.085442379117012)
part_87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BrickColor = BrickColor.new("Earth green")
part_87.Friction = 0.3
part_87.BottomSurface = Enum.SurfaceType.Smooth

 mesh_74 = Instance.new("SpecialMesh", part_87)
mesh_74.MeshType = Enum.MeshType.Wedge

 part_88 = Instance.new("Part", mhuey)
part_88.Velocity = Vector3.new(-0.005, 0.035, -0.006)
part_88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.TopSurface = Enum.SurfaceType.Smooth
part_88.Reflectance = 0.1
part_88.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_88.Material = Enum.Material.SmoothPlastic
part_88.Size = Vector3.new(1, 7, 3)
part_88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.CFrame = CFrame.new(93.922, 21.125, 70.158)* CFrame.Angles(0.085832357406616, 1.5630143880844, -0.085632711648941)
part_88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BrickColor = BrickColor.new("Earth green")
part_88.Friction = 0.3
part_88.BottomSurface = Enum.SurfaceType.Smooth

 mesh_75 = Instance.new("SpecialMesh", part_88)
mesh_75.Scale = Vector3.new(0.5, 1, 1)
mesh_75.MeshType = Enum.MeshType.Wedge

 part_89 = Instance.new("Part", mhuey)
part_89.Velocity = Vector3.new(0, 0.02, 0.002)
part_89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.TopSurface = Enum.SurfaceType.Smooth
part_89.Reflectance = 0.1
part_89.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_89.Material = Enum.Material.SmoothPlastic
part_89.Size = Vector3.new(1, 2, 8)
part_89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.CFrame = CFrame.new(71.403, 14.54, 71.887)* CFrame.Angles(-3.0562536716461, -1.5630527734756, 1.6560347080231)
part_89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BrickColor = BrickColor.new("Earth green")
part_89.Friction = 0.3
part_89.BottomSurface = Enum.SurfaceType.Smooth

 mesh_76 = Instance.new("SpecialMesh", part_89)
mesh_76.MeshType = Enum.MeshType.Wedge

 part_90 = Instance.new("Part", mhuey)
part_90.Velocity = Vector3.new(0.002, 0.024, 0.006)
part_90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.TopSurface = Enum.SurfaceType.Smooth
part_90.Reflectance = 0.1
part_90.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_90.Material = Enum.Material.SmoothPlastic
part_90.Size = Vector3.new(1, 2, 17)
part_90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.CFrame = CFrame.new(75.902, 12.537, 71.921)* CFrame.Angles(-3.0559523105621, -1.5630759000778, 1.656335234642)
part_90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BrickColor = BrickColor.new("Earth green")
part_90.Friction = 0.3
part_90.BottomSurface = Enum.SurfaceType.Smooth

 mesh_77 = Instance.new("SpecialMesh", part_90)
mesh_77.MeshType = Enum.MeshType.Wedge

 part_91 = Instance.new("Part", mhuey)
part_91.Velocity = Vector3.new(0.001, 0.023, 0.004)
part_91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.TopSurface = Enum.SurfaceType.Smooth
part_91.Reflectance = 0.1
part_91.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_91.Material = Enum.Material.SmoothPlastic
part_91.Size = Vector3.new(1, 2, 16)
part_91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.CFrame = CFrame.new(75.403, 13.537, 71.917)* CFrame.Angles(-3.0562429428101, -1.5630527734756, 1.6560453176498)
part_91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BrickColor = BrickColor.new("Earth green")
part_91.Friction = 0.3
part_91.BottomSurface = Enum.SurfaceType.Smooth

 mesh_78 = Instance.new("SpecialMesh", part_91)
mesh_78.MeshType = Enum.MeshType.Wedge

 part_92 = Instance.new("Part", mhuey)
part_92.Velocity = Vector3.new(0, 0.035, 0.004)
part_92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.TopSurface = Enum.SurfaceType.Smooth
part_92.Reflectance = 0.1
part_92.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_92.Material = Enum.Material.SmoothPlastic
part_92.Size = Vector3.new(4, 4, 2)
part_92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.CFrame = CFrame.new(93.418, 15.026, 70.055)* CFrame.Angles(-3.1415903568268, 0.0076438700780272, -3.1409363746643)
part_92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BrickColor = BrickColor.new("Earth green")
part_92.Friction = 0.3
part_92.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_25 = Instance.new("BlockMesh", part_92)
blockmesh_25.Name = "BlockMesh"

 part_93 = Instance.new("Part", mhuey)
part_93.Velocity = Vector3.new(-0.004, 0.038, -0.004)
part_93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.TopSurface = Enum.SurfaceType.Smooth
part_93.Reflectance = 0.1
part_93.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_93.Material = Enum.Material.SmoothPlastic
part_93.Size = Vector3.new(1, 9, 3)
part_93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.CFrame = CFrame.new(96.922, 20.123, 70.081)* CFrame.Angles(-3.0557613372803, -1.5630143880844, 0.085633710026741)
part_93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BrickColor = BrickColor.new("Earth green")
part_93.Friction = 0.3
part_93.BottomSurface = Enum.SurfaceType.Smooth

 mesh_79 = Instance.new("SpecialMesh", part_93)
mesh_79.Scale = Vector3.new(0.5, 1, 1)
mesh_79.MeshType = Enum.MeshType.Wedge

 part_94 = Instance.new("Part", mhuey)
part_94.Velocity = Vector3.new(0.003, -0.002, 0.002)
part_94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.TopSurface = Enum.SurfaceType.Smooth
part_94.Reflectance = 0.1
part_94.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_94.Material = Enum.Material.SmoothPlastic
part_94.Size = Vector3.new(1, 2, 2)
part_94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.CFrame = CFrame.new(38.375, 11.062, 75.134)* CFrame.Angles(0.085630752146244, 1.5631223917007, -0.085532695055008)
part_94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BrickColor = BrickColor.new("Earth green")
part_94.Friction = 0.3
part_94.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_26 = Instance.new("BlockMesh", part_94)
blockmesh_26.Name = "BlockMesh"

 part_95 = Instance.new("Part", mhuey)
part_95.Velocity = Vector3.new(0.001, 0, -0.001)
part_95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.TopSurface = Enum.SurfaceType.Smooth
part_95.Reflectance = 0.1
part_95.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_95.Material = Enum.Material.SmoothPlastic
part_95.Size = Vector3.new(1, 6, 1)
part_95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.CFrame = CFrame.new(39.877, 13.061, 75.145)* CFrame.Angles(0.085401117801666, 1.5631223917007, -0.085334829986095)
part_95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BrickColor = BrickColor.new("Earth green")
part_95.Friction = 0.3
part_95.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_27 = Instance.new("BlockMesh", part_95)
blockmesh_27.Name = "BlockMesh"

 part_96 = Instance.new("Part", mhuey)
part_96.Velocity = Vector3.new(0, 0.001, -0.003)
part_96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.Transparency = 0.8
part_96.TopSurface = Enum.SurfaceType.Smooth
part_96.Reflectance = 0.1
part_96.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_96.Material = Enum.Material.SmoothPlastic
part_96.Size = Vector3.new(1, 2.8, 3)
part_96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.CFrame = CFrame.new(41.877, 14.259, 75.161)* CFrame.Angles(0.085420437157154, 1.5629991292953, -0.085219688713551)
part_96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BrickColor = BrickColor.new("Earth green")
part_96.Friction = 0.3
part_96.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_28 = Instance.new("BlockMesh", part_96)
blockmesh_28.Name = "BlockMesh"
blockmesh_28.Scale = Vector3.new(0.9, 1, 1)

 part_97 = Instance.new("Part", mhuey)
part_97.Velocity = Vector3.new(0.003, -0.005, 0.002)
part_97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.TopSurface = Enum.SurfaceType.Smooth
part_97.Reflectance = 0.1
part_97.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_97.Material = Enum.Material.SmoothPlastic
part_97.Size = Vector3.new(2, 2, 3)
part_97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.CFrame = CFrame.new(35.879, 11.063, 74.615)* CFrame.Angles(0.085902325809002, 1.5631535053253, 1.4849483966827)
part_97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BrickColor = BrickColor.new("Earth green")
part_97.Friction = 0.3
part_97.BottomSurface = Enum.SurfaceType.Smooth

 mesh_80 = Instance.new("SpecialMesh", part_97)
mesh_80.MeshType = Enum.MeshType.Wedge

 part_98 = Instance.new("Part", mhuey)
part_98.Velocity = Vector3.new(0, -0.001, -0.004)
part_98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.Transparency = 0.8
part_98.TopSurface = Enum.SurfaceType.Smooth
part_98.Reflectance = 0.1
part_98.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_98.Material = Enum.Material.SmoothPlastic
part_98.Size = Vector3.new(1, 3, 1)
part_98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.CFrame = CFrame.new(38.878, 14.561, 75.138)* CFrame.Angles(0.085597760975361, 1.5631535053253, -0.085565209388733)
part_98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BrickColor = BrickColor.new("Earth green")
part_98.Friction = 0.3
part_98.BottomSurface = Enum.SurfaceType.Smooth

 mesh_81 = Instance.new("SpecialMesh", part_98)
mesh_81.MeshType = Enum.MeshType.Wedge

 part_99 = Instance.new("Part", mhuey)
part_99.Velocity = Vector3.new(-0.001, 0.001, -0.006)
part_99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.TopSurface = Enum.SurfaceType.Smooth
part_99.Reflectance = 0.1
part_99.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_99.Material = Enum.Material.SmoothPlastic
part_99.Size = Vector3.new(3, 0.4, 1)
part_99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.CFrame = CFrame.new(41.879, 15.859, 75.16)* CFrame.Angles(-3.1415903568268, 0.0076844370923936, -3.1409363746643)
part_99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BrickColor = BrickColor.new("Earth green")
part_99.Friction = 0.3
part_99.BottomSurface = Enum.SurfaceType.Smooth

 mesh_82 = Instance.new("BlockMesh", part_99)

 part_100 = Instance.new("Part", mhuey)
part_100.Velocity = Vector3.new(-0.001, 0.023, 0)
part_100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.TopSurface = Enum.SurfaceType.Smooth
part_100.Reflectance = 0.1
part_100.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_100.Material = Enum.Material.SmoothPlastic
part_100.Size = Vector3.new(2, 2, 23)
part_100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.CFrame = CFrame.new(79.92, 16.035, 69.951)* CFrame.Angles(0.085640989243984, 1.5630759000778, -0.085539624094963)
part_100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BrickColor = BrickColor.new("Earth green")
part_100.Friction = 0.3
part_100.BottomSurface = Enum.SurfaceType.Smooth

 mesh_83 = Instance.new("SpecialMesh", part_100)
mesh_83.MeshType = Enum.MeshType.Wedge

 part_101 = Instance.new("Part", mhuey)
part_101.Velocity = Vector3.new(0.002, 0.008, 0.002)
part_101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.TopSurface = Enum.SurfaceType.Smooth
part_101.Reflectance = 0.1
part_101.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_101.Material = Enum.Material.SmoothPlastic
part_101.Size = Vector3.new(7, 0.4, 2)
part_101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.CFrame = CFrame.new(54.894, 12.651, 72.96)* CFrame.Angles(1.5708036422729, -0.00065618543885648, -3.133935213089)
part_101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BrickColor = BrickColor.new("Really black")
part_101.Friction = 0.3
part_101.BottomSurface = Enum.SurfaceType.Smooth

 mesh_84 = Instance.new("BlockMesh", part_101)

 part_102 = Instance.new("Part", mhuey)
part_102.Velocity = Vector3.new(-0.003, 0.008, -0.009)
part_102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.TopSurface = Enum.SurfaceType.Smooth
part_102.Reflectance = 0.1
part_102.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_102.Material = Enum.Material.SmoothPlastic
part_102.Size = Vector3.new(1, 1, 3)
part_102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.CFrame = CFrame.new(51.887, 18.553, 74.237)* CFrame.Angles(-1.5707890987396, 0.00065617036307231, 1.5631176233292)
part_102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BrickColor = BrickColor.new("Really black")
part_102.Friction = 0.3
part_102.BottomSurface = Enum.SurfaceType.Smooth

 mesh_85 = Instance.new("SpecialMesh", part_102)
mesh_85.MeshType = Enum.MeshType.Wedge

 part_103 = Instance.new("Part", mhuey)
part_103.Velocity = Vector3.new(0.001, 0.023, 0.004)
part_103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.TopSurface = Enum.SurfaceType.Smooth
part_103.Reflectance = 0.1
part_103.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_103.Material = Enum.Material.SmoothPlastic
part_103.Size = Vector3.new(24, 2, 2)
part_103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.CFrame = CFrame.new(79.418, 14.035, 69.947)* CFrame.Angles(-3.1415903568268, 0.007653078995645, -3.1409363746643)
part_103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BrickColor = BrickColor.new("Earth green")
part_103.Friction = 0.3
part_103.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_29 = Instance.new("BlockMesh", part_103)
blockmesh_29.Name = "BlockMesh"

 part_104 = Instance.new("Part", mhuey)
part_104.Velocity = Vector3.new(-0.002, -0.002, -0.007)
part_104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.TopSurface = Enum.SurfaceType.Smooth
part_104.Reflectance = 0.1
part_104.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_104.Material = Enum.Material.SmoothPlastic
part_104.Size = Vector3.new(1, 1, 1)
part_104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.CFrame = CFrame.new(39.887, 16.561, 74.145)* CFrame.Angles(-3.1415903568268, 0.0076836976222694, -3.1409363746643)
part_104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BrickColor = BrickColor.new("Earth green")
part_104.Friction = 0.3
part_104.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_30 = Instance.new("BlockMesh", part_104)
blockmesh_30.Name = "BlockMesh"

 part_105 = Instance.new("Part", mhuey)
part_105.Velocity = Vector3.new(0.005, -0.001, 0.007)
part_105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.TopSurface = Enum.SurfaceType.Smooth
part_105.Reflectance = 0.1
part_105.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_105.Material = Enum.Material.SmoothPlastic
part_105.Size = Vector3.new(2, 1, 2)
part_105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.CFrame = CFrame.new(44.393, 8.558, 72.68)* CFrame.Angles(2.2567523956241e-006, -0.00764434132725, 3.1409363746643)
part_105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BrickColor = BrickColor.new("Really black")
part_105.Friction = 0.3
part_105.BottomSurface = Enum.SurfaceType.Smooth

 mesh_86 = Instance.new("SpecialMesh", part_105)
mesh_86.Scale = Vector3.new(0.3, 1, 1)
mesh_86.MeshType = Enum.MeshType.Wedge

 part_106 = Instance.new("Part", mhuey)
part_106.Velocity = Vector3.new(0.004, -0.007, 0.004)
part_106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.Transparency = 0.8
part_106.TopSurface = Enum.SurfaceType.Smooth
part_106.Reflectance = 0.1
part_106.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_106.Material = Enum.Material.SmoothPlastic
part_106.Size = Vector3.new(3, 1, 2)
part_106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.CFrame = CFrame.new(36.39, 9.563, 73.119)* CFrame.Angles(0.085759252309799, 1.5631769895554, 3.0558412075043)
part_106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BrickColor = BrickColor.new("Mid gray")
part_106.Friction = 0.3
part_106.BottomSurface = Enum.SurfaceType.Smooth

 mesh_87 = Instance.new("SpecialMesh", part_106)
mesh_87.MeshType = Enum.MeshType.Wedge

 part_107 = Instance.new("Part", mhuey)
part_107.Velocity = Vector3.new(0.003, -0.001, 0.004)
part_107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.TopSurface = Enum.SurfaceType.Smooth
part_107.Reflectance = 0.1
part_107.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_107.Material = Enum.Material.SmoothPlastic
part_107.Size = Vector3.new(4, 1.2, 1)
part_107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.CFrame = CFrame.new(44.894, 10.658, 72.684)* CFrame.Angles(-3.0561077594757, -1.5631457567215, 0.085479825735092)
part_107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BrickColor = BrickColor.new("Earth green")
part_107.Friction = 0.3
part_107.BottomSurface = Enum.SurfaceType.Smooth

 mesh_88 = Instance.new("BlockMesh", part_107)

 mesh_89 = Instance.new("SpecialMesh", part_107)
mesh_89.MeshType = Enum.MeshType.Wedge

 part_108 = Instance.new("Part", mhuey)
part_108.Velocity = Vector3.new(0.004, -0.005, 0.005)
part_108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.TopSurface = Enum.SurfaceType.Smooth
part_108.Reflectance = 0.1
part_108.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_108.Material = Enum.Material.SmoothPlastic
part_108.Size = Vector3.new(3, 1, 3)
part_108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.CFrame = CFrame.new(38.89, 9.561, 73.138)* CFrame.Angles(0.085652887821198, 1.5631457567215, -0.085623279213905)
part_108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BrickColor = BrickColor.new("Earth green")
part_108.Friction = 0.3
part_108.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_31 = Instance.new("BlockMesh", part_108)
blockmesh_31.Name = "BlockMesh"

 part_109 = Instance.new("Part", mhuey)
part_109.Velocity = Vector3.new(-0.003, 0.002, -0.009)
part_109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.TopSurface = Enum.SurfaceType.Smooth
part_109.Reflectance = 0.1
part_109.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_109.Material = Enum.Material.SmoothPlastic
part_109.Size = Vector3.new(2, 3, 3)
part_109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.CFrame = CFrame.new(49.907, 18.554, 71.722)* CFrame.Angles(0.08535024523735, 1.563068151474, -0.085247240960598)
part_109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BrickColor = BrickColor.new("Earth green")
part_109.Friction = 0.3
part_109.BottomSurface = Enum.SurfaceType.Smooth

 mesh_90 = Instance.new("SpecialMesh", part_109)
mesh_90.MeshType = Enum.MeshType.Wedge

seat3 = Instance.new("Seat", mhuey)
seat3.Velocity = Vector3.new(0.003, 0, 0.003)
seat3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat3.TopSurface = Enum.SurfaceType.Smooth
seat3.Reflectance = 0.1
seat3.RotVelocity = Vector3.new(-0.002, 0, 0.001)
seat3.Material = Enum.Material.SmoothPlastic
seat3.Size = Vector3.new(4, 0.4, 2)
seat3.Name = "Seat3"
seat3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat3.CFrame = CFrame.new(45.395, 11.457, 72.688)* CFrame.Angles(-3.056084394455, -1.5631146430969, -3.056144952774)
seat3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat3.BrickColor = BrickColor.new("Really black")
seat3.Friction = 0.3
seat3.BottomSurface = Enum.SurfaceType.Smooth
seat3.Anchored = false

 mesh_91 = Instance.new("BlockMesh", seat3)

 part_110 = Instance.new("Part", mhuey)
part_110.Velocity = Vector3.new(-0.002, -0.003, -0.007)
part_110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.TopSurface = Enum.SurfaceType.Smooth
part_110.Reflectance = 0.1
part_110.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_110.Material = Enum.Material.SmoothPlastic
part_110.Size = Vector3.new(4, 1, 3)
part_110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.CFrame = CFrame.new(41.898, 16.559, 72.661)* CFrame.Angles(-3.0564851760864, -1.5630527734756, -3.0565876960754)
part_110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BrickColor = BrickColor.new("Earth green")
part_110.Friction = 0.3
part_110.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_32 = Instance.new("BlockMesh", part_110)
blockmesh_32.Name = "BlockMesh"

 part_111 = Instance.new("Part", mhuey)
part_111.Velocity = Vector3.new(0.002, -0.001, 0)
part_111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.TopSurface = Enum.SurfaceType.Smooth
part_111.Reflectance = 0.1
part_111.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_111.Material = Enum.Material.SmoothPlastic
part_111.Size = Vector3.new(4, 0.4, 2)
part_111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.CFrame = CFrame.new(44.595, 12.658, 72.682)* CFrame.Angles(1.5708036422729, -0.00065617711516097, 1.5784494876862)
part_111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BrickColor = BrickColor.new("Really black")
part_111.Friction = 0.3
part_111.BottomSurface = Enum.SurfaceType.Smooth

 mesh_92 = Instance.new("BlockMesh", part_111)

 part_112 = Instance.new("Part", mhuey)
part_112.Velocity = Vector3.new(-0.002, 0.01, -0.006)
part_112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.TopSurface = Enum.SurfaceType.Smooth
part_112.Reflectance = 0.1
part_112.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_112.Material = Enum.Material.SmoothPlastic
part_112.Size = Vector3.new(8, 4, 6)
part_112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.CFrame = CFrame.new(63.421, 18.045, 69.825)* CFrame.Angles(-3.1415903568268, 0.0076972763054073, -3.1409363746643)
part_112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BrickColor = BrickColor.new("Earth green")
part_112.Friction = 0.3
part_112.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_33 = Instance.new("BlockMesh", part_112)
blockmesh_33.Name = "BlockMesh"

 part_113 = Instance.new("Part", mhuey)
part_113.Velocity = Vector3.new(0, 0.013, -0.001)
part_113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.TopSurface = Enum.SurfaceType.Smooth
part_113.Reflectance = 0.1
part_113.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_113.Material = Enum.Material.SmoothPlastic
part_113.Size = Vector3.new(1, 1, 2)
part_113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.CFrame = CFrame.new(67.92, 15.542, 69.86)* CFrame.Angles(-3.1415903568268, 0.0076885437592864, -3.1409363746643)
part_113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BrickColor = BrickColor.new("Earth green")
part_113.Friction = 0.3
part_113.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_34 = Instance.new("BlockMesh", part_113)
blockmesh_34.Name = "BlockMesh"

 part_114 = Instance.new("Part", mhuey)
part_114.Velocity = Vector3.new(0.002, 0.006, 0.002)
part_114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.TopSurface = Enum.SurfaceType.Smooth
part_114.Reflectance = 0.1
part_114.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_114.Material = Enum.Material.SmoothPlastic
part_114.Size = Vector3.new(1, 6, 12)
part_114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.CFrame = CFrame.new(58.918, 13.048, 69.791)* CFrame.Angles(-3.1415903568268, 0.0076572811231017, -3.1409363746643)
part_114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BrickColor = BrickColor.new("Earth green")
part_114.Friction = 0.3
part_114.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_35 = Instance.new("BlockMesh", part_114)
blockmesh_35.Name = "BlockMesh"

 part_115 = Instance.new("Part", mhuey)
part_115.Velocity = Vector3.new(0.002, 0.01, 0.003)
part_115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.TopSurface = Enum.SurfaceType.Smooth
part_115.Reflectance = 0.1
part_115.RotVelocity = Vector3.new(-0.002, 0, 0.001)
part_115.Material = Enum.Material.SmoothPlastic
part_115.Size = Vector3.new(8, 6, 6)
part_115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.CFrame = CFrame.new(63.418, 13.045, 69.825)* CFrame.Angles(-3.1415903568268, 0.0076707815751433, -3.1409363746643)
part_115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BrickColor = BrickColor.new("Earth green")
part_115.Friction = 0.3
part_115.BottomSurface = Enum.SurfaceType.Smooth

 blockmesh_36 = Instance.new("BlockMesh", part_115)
blockmesh_36.Name = "BlockMesh"

 controlseat = Instance.new("Seat", mhuey)
controlseat.Anchored = false
controlseat.Friction = 0.3
controlseat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.TopSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.Reflectance = 0.1
controlseat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.BrickColor = BrickColor.new("Really black")
controlseat.Material = Enum.Material.SmoothPlastic
controlseat.Size = Vector3.new(4, 0.4, 2)
controlseat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.CFrame = CFrame.new(43.405, 11.457, 72.672)* CFrame.Angles(0.085650883615017, 1.5629457235336, -0.084989927709103)
controlseat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.Name = "controlseat"

 backrotorpos = Instance.new("Part", mhuey)
backrotorpos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
backrotorpos.TopSurface = Enum.SurfaceType.Smooth
backrotorpos.Reflectance = 0.1
backrotorpos.Material = Enum.Material.SmoothPlastic
backrotorpos.Size = Vector3.new(2, 2, 3)
backrotorpos.Name = "backrotorpos"
backrotorpos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
backrotorpos.CFrame = CFrame.new(89.238, 14.386, 71.709)* CFrame.Angles(1.5707769393921, -0.028678840026259, 3.1245040893555)
backrotorpos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
backrotorpos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
backrotorpos.BrickColor = BrickColor.new("Really black")
backrotorpos.Friction = 0.3
backrotorpos.BottomSurface = Enum.SurfaceType.Smooth

 mesh_93 = Instance.new("SpecialMesh", backrotorpos)
mesh_93.Scale = Vector3.new(1.25, 1.5, 1.25)

 mainrotorpos = Instance.new("Part", mhuey)
mainrotorpos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
mainrotorpos.TopSurface = Enum.SurfaceType.Smooth
mainrotorpos.Reflectance = 0.1
mainrotorpos.Material = Enum.Material.SmoothPlastic
mainrotorpos.Size = Vector3.new(2, 2, 3)
mainrotorpos.Name = "mainrotorpos"
mainrotorpos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
mainrotorpos.CFrame = CFrame.new(56.081, 20.831, 69.274)* CFrame.Angles(-0.016610756516457, -1.5415819883347, -0.016250181943178)
mainrotorpos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
mainrotorpos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
mainrotorpos.BrickColor = BrickColor.new("Really black")
mainrotorpos.Friction = 0.3
mainrotorpos.BottomSurface = Enum.SurfaceType.Smooth

 mesh_94 = Instance.new("SpecialMesh", mainrotorpos)
mesh_94.Scale = Vector3.new(1.25, 1.5, 1.25)

 backrotor = Instance.new("Model", mhuey)
backrotor.Name = "backrotor"

 rotor2b = Instance.new("Part", backrotor)
rotor2b.Velocity = Vector3.new(102.891, 0.14, -11.064)
rotor2b.CanCollide = false
rotor2b.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor2b.TopSurface = Enum.SurfaceType.Smooth
rotor2b.Reflectance = 0.1
rotor2b.RotVelocity = Vector3.new(0.001, 2.971, 0.006)
rotor2b.Material = Enum.Material.SmoothPlastic
rotor2b.Size = Vector3.new(1, 0.4, 1)
rotor2b.Name = "Rotor2b"
rotor2b.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor2b.CFrame = CFrame.new(79.751, 14.582, 71.682)* CFrame.Angles(-1.5708158016205, 0.028678752481937, 0.017088580876589)
rotor2b.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor2b.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor2b.BrickColor = BrickColor.new("New Yeller")
rotor2b.Friction = 0.3
rotor2b.BottomSurface = Enum.SurfaceType.Smooth

 mesh_95 = Instance.new("SpecialMesh", rotor2b)
mesh_95.MeshType = Enum.MeshType.Brick

 rotor1d_2 = Instance.new("Part", backrotor)
rotor1d_2.Velocity = Vector3.new(52.409, 0.15, -9.594)
rotor1d_2.CanCollide = false
rotor1d_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1d_2.TopSurface = Enum.SurfaceType.Smooth
rotor1d_2.Reflectance = 0.1
rotor1d_2.RotVelocity = Vector3.new(0.001, 2.971, 0.006)
rotor1d_2.Material = Enum.Material.SmoothPlastic
rotor1d_2.Size = Vector3.new(8, 0.4, 1)
rotor1d_2.Name = "Rotor1d"
rotor1d_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1d_2.CFrame = CFrame.new(84.237, 14.456, 71.595)* CFrame.Angles(1.5707769393921, -0.028678793460131, 3.1245040893555)
rotor1d_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1d_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1d_2.BrickColor = BrickColor.new("Really black")
rotor1d_2.Friction = 0.3
rotor1d_2.BottomSurface = Enum.SurfaceType.Smooth

 mesh_96 = Instance.new("SpecialMesh", rotor1d_2)
mesh_96.MeshType = Enum.MeshType.Brick

 rotormiddle_2 = Instance.new("Part", backrotor)
rotormiddle_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotormiddle_2.TopSurface = Enum.SurfaceType.Smooth
rotormiddle_2.Reflectance = 0.1
rotormiddle_2.Material = Enum.Material.SmoothPlastic
rotormiddle_2.Size = Vector3.new(2, 2, 3)
rotormiddle_2.Name = "rotormiddle"
rotormiddle_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotormiddle_2.CFrame = CFrame.new(89.238, 14.312, 71.709)* CFrame.Angles(1.5707769393921, -0.028678840026259, 3.1245040893555)
rotormiddle_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotormiddle_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotormiddle_2.BrickColor = BrickColor.new("Really black")
rotormiddle_2.Friction = 0.3
rotormiddle_2.BottomSurface = Enum.SurfaceType.Smooth

 mesh_97 = Instance.new("SpecialMesh", rotormiddle_2)
mesh_97.Scale = Vector3.new(1.25, 1.5, 1.25)

 rotor3b = Instance.new("Part", backrotor)
rotor3b.CanCollide = false
rotor3b.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor3b.TopSurface = Enum.SurfaceType.Smooth
rotor3b.Reflectance = 0.1
rotor3b.Material = Enum.Material.SmoothPlastic
rotor3b.Size = Vector3.new(8, 0.4, 1)
rotor3b.Name = "Rotor3b"
rotor3b.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor3b.CFrame = CFrame.new(94.232, 14.169, 71.424)* CFrame.Angles(-1.5708158016205, 0.028678929433227, 0.017088580876589)
rotor3b.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor3b.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor3b.BrickColor = BrickColor.new("Really black")
rotor3b.Friction = 0.3
rotor3b.BottomSurface = Enum.SurfaceType.Smooth

 mesh_98 = Instance.new("SpecialMesh", rotor3b)
mesh_98.MeshType = Enum.MeshType.Brick

 rotor1b_4 = Instance.new("Part", backrotor)
rotor1b_4.Velocity = Vector3.new(-102.009, 0.178, -5.099)
rotor1b_4.CanCollide = false
rotor1b_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_4.TopSurface = Enum.SurfaceType.Smooth
rotor1b_4.Reflectance = 0.1
rotor1b_4.RotVelocity = Vector3.new(0.001, 2.971, 0.006)
rotor1b_4.Material = Enum.Material.SmoothPlastic
rotor1b_4.Size = Vector3.new(1, 0.4, 1)
rotor1b_4.Name = "Rotor1b"
rotor1b_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_4.CFrame = CFrame.new(98.729, 14.043, 71.356)* CFrame.Angles(-1.5708158016205, 0.028678752481937, 0.017088580876589)
rotor1b_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotor1b_4.BrickColor = BrickColor.new("New Yeller")
rotor1b_4.Friction = 0.3
rotor1b_4.BottomSurface = Enum.SurfaceType.Smooth

 mesh_99 = Instance.new("SpecialMesh", rotor1b_4)
mesh_99.MeshType = Enum.MeshType.Brick

 seat6 = Instance.new("Seat", mhuey)
seat6.Friction = 0.3
seat6.BottomSurface = Enum.SurfaceType.Smooth
seat6.CanCollide = false
seat6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat6.TopSurface = Enum.SurfaceType.Smooth
seat6.Reflectance = 0.1
seat6.Transparency = 1
seat6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat6.BrickColor = BrickColor.new("Really black")
seat6.Material = Enum.Material.SmoothPlastic
seat6.Size = Vector3.new(2.94, 0.4, 2)
seat6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat6.CFrame = CFrame.new(49.118, 10.252, 74.445)* CFrame.Angles(-3.1415903568268, 0.0076527842320502, -3.1409363746643)
seat6.Name = "Seat6"

 mesh = Instance.new("BlockMesh", seat6)

local missile = Instance.new("Part", mhuey)
missile.FormFactor = Enum.FormFactor.Symmetric
missile.Material = Enum.Material.Metal
missile.Size = Vector3.new(1, 1, 13)
missile.Name = "Missile"
missile.CFrame = CFrame.new(43.366, 9.463, 63.371)* CFrame.Angles(7.0900182436162e-006, 1.5631847381592, 7.0900182436162e-006)
missile.BrickColor = BrickColor.new("Earth green")
missile.Friction = 0.3

mesh = Instance.new("SpecialMesh", missile)
mesh.MeshId = "http://roblox.com/asset/?id=2251534"
mesh.VertexColor = Vector3.new(0, 0, 0)
mesh.MeshType = Enum.MeshType.FileMesh



mhuey:BreakJoints()

local engine = mhuey.engine
local backrotor = mhuey.backrotor.rotormiddle
local mainrotor = mhuey.mainrotor.rotormiddle
backrotor:BreakJoints()
mainrotor:BreakJoints()

local prev
local parts = mhuey:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end
mhuey:MakeJoints()
mhuey.Parent = char
engine.CFrame = char["Left Leg"].CFrame*CFrame.new(5,5,16)

local prev
local parts = mhuey.mainrotor:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end
mainrotor:MakeJoints()

local prev
local parts = mhuey.backrotor:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end
backrotor:MakeJoints()

weld(mhuey.backrotor.rotormiddle, mhuey.backrotorpos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
weld(mhuey.mainrotor.rotormiddle, mhuey.mainrotorpos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
backrotor.Weld.Name = "rotorweld"
mainrotor.Weld.Name = "rotorweld"

--HeliSounds Start--
local enginesound=Instance.new("Sound")
enginesound.SoundId="http://www.roblox.com/asset/?id=134145308"
enginesound.PlayOnRemove=false
enginesound.Volume=0.95
enginesound.Looped=true
enginesound.Pitch = 1
enginesound.Parent=engine
local rotorsound=Instance.new("Sound")
rotorsound.SoundId="http://www.roblox.com/asset/?id=246930031"
rotorsound.PlayOnRemove=false
rotorsound.Volume=0.95
rotorsound.Looped=true
rotorsound.Pitch = rotateangle + 2
rotorsound.Parent=engine
--HeliSounds End--

--Gui Start--
local speedgui = Instance.new("ScreenGui", player.PlayerGui)
speedgui.Name = "SpeedGui"

local speedguibackground = Instance.new("Frame", speedgui)
speedguibackground.Size = UDim2.new(0, 20, 0, 200)
speedguibackground.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speedguibackground.Name = "speedguibackground"
speedguibackground.Position = UDim2.new(0.8, 0, 0.1, 0)
speedguibackground.BorderSizePixel = 0
speedguibackground.BackgroundTransparency = 0.4
speedguibackground.BackgroundColor3 = Color3.new(1, 1, 1)

local speedbar = Instance.new("Frame", speedgui)
speedbar.Size = UDim2.new(0, 40, 0, 20)
speedbar.Draggable = true
speedbar.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speedbar.Name = "speedbar"
speedbar.Position = UDim2.new(0.786, 0, 0.44, 0)
speedbar.BorderSizePixel = 0
speedbar.BackgroundTransparency = 0.1
speedbar.BackgroundColor3 = Color3.new(0, 0, 0)

local textlabel = Instance.new("TextLabel", speedgui)
textlabel.BackgroundColor3 = Color3.new(1, 1, 1)
textlabel.BackgroundTransparency = 1
textlabel.Size = UDim2.new(0, 200, 0, 50)
textlabel.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
textlabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
textlabel.Text = "Speed Meter"
textlabel.Position = UDim2.new(0.6, 0, 0.2, 0)
textlabel.Font = Enum.Font.SourceSans
textlabel.FontSize = Enum.FontSize.Size14

local speedadd = Instance.new("ImageButton", speedgui)
speedadd.BackgroundColor3 = Color3.new(1, 1, 1)
speedadd.Image = "http://www.roblox.com/asset/?id=13890082"
speedadd.Size = UDim2.new(0, 20, 0, 20)
speedadd.BackgroundTransparency = 1
speedadd.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speedadd.Name = "speedadd"
speedadd.Position = UDim2.new(0.7, 0, 0.28, 0)

local speedsubtract = Instance.new("ImageButton", speedgui)
speedsubtract.BackgroundColor3 = Color3.new(1, 1, 1)
speedsubtract.Image = "http://www.roblox.com/asset/?id=57419479"
speedsubtract.Size = UDim2.new(0, 20, 0, 20)
speedsubtract.BackgroundTransparency = 1
speedsubtract.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
speedsubtract.Name = "speedsubtract"
speedsubtract.Position = UDim2.new(0.733, 0, 0.28, 0)


--Gui End--

speedadd.MouseButton1Click:connect(function()
	speed = speed + 5
	if speed >= 100 then speed = 100 end
	textlabel.Text = "Speed:"..speed
	print("Speed:"..speed)
	speedbar.Position = UDim2.new(0.786, 0, speedbar.Position.Y.Scale - .02, 0)
end)
speedsubtract.MouseButton1Click:connect(function()
	speed = speed - 5
	if speed <= 0 then speed = 0 end
	textlabel.Text = "Speed:"..speed
	print("Speed:"..speed)
	speedbar.Position = UDim2.new(0.786, 0, speedbar.Position.Y.Scale + .02, 0)
end)

local bg = Instance.new("BodyGyro",engine)
bg.D = 500
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
local bv = Instance.new("BodyVelocity",engine)
bv.MaxForce = Vector3.new(0,0,0)
bv.P = 1250
bv.Velocity = Vector3.new(0,0.16,0)


mouse.KeyDown:connect(function(key)
if key == "y" and engineon == false then
mouse.Icon = "rbxasset://textures/GunCursor.png"
engineon = true
enginesound:Play()
rotorsound:Play()
while engineon == true do wait()
	rotateangle = rotateangle + .2
	if rotateangle >360 then rotateangle = 0 end
	mainrotor.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),rotateangle,0)
	backrotor.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),rotateangle,0)
end
end
end)

mouse.KeyDown:connect(function(key)
if key == "u" and engineon == true then
mouse.Icon = ""
engineon = false
heliready = false
bv.Velocity = Vector3.new(0,0,0)
bv.MaxForce = Vector3.new(0,0,0)
rotorsound:Stop()
enginesound:Stop()
elevation = 0
end
end)

mouse.KeyDown:connect(function(key)
if key == "e" and engineon == true then
	bv.MaxForce = Vector3.new(9e20,9e20,9e20)
	bv.Velocity = Vector3.new(bv.Velocity.x,10,bv.Velocity.z)
end
end)

mouse.KeyUp:connect(function(key)
if key == "e" and engineon == true then
	bv.Velocity = Vector3.new(bv.Velocity.x,0,bv.Velocity.z)
end
end)

mouse.KeyDown:connect(function(key)
if key == "q" and engineon == true then
	bv.MaxForce = Vector3.new(9e20,9e20,9e20)
	bv.Velocity = Vector3.new(bv.Velocity.x,-10,bv.Velocity.z)
end
end)

mouse.KeyUp:connect(function(key)
if key == "q" and engineon == true then
	bv.Velocity = Vector3.new(bv.Velocity.x,0,bv.Velocity.z)
end
end)


mouse.KeyDown:connect(function(key)
if key == "w" and engineon == true then
	wpressed = true
	bv.MaxForce = Vector3.new(9e20,9e20,9e20)
			while wpressed == true do wait(.08)
bv.Velocity = (engine.CFrame.lookVector * speed) + Vector3.new(0,0,0)
	end
	end
		end)

mouse.KeyUp:connect(function(key)
if key == "w" then
wpressed = false
bv.Velocity = Vector3.new(0,bv.Velocity.y,0)
end
end)

mouse.KeyDown:connect(function(key)
if key == "h" then
	hpressed = hpressed + 1
	if hpressed == 1 then
	engine.Anchored = true
	end
	if hpressed == 2 then
		hpressed = 0
		engine.Anchored = false
	end
	end
end)

local gf = Instance.new("Sound",missile)
gf.Volume = 1
gf.SoundId = "rbxassetid://282537994"
gf.Pitch = 1

local canfire = true
function fire()
	if canfire == true then
canfire = false
mouse.Icon = "rbxasset://textures/GunWaitCursor.png"
gf:Play()
local nmissile = missile:Clone()
nmissile.Name = "MHuey Missile"
nmissile.Parent = workspace
game.Debris:AddItem(nmissile,4)
missile.Transparency = 1

local bodyGyro = Instance.new('BodyGyro', nmissile)
bodyGyro.cframe = CFrame.new(missile.CFrame.p, mouse.Hit.p)
bodyGyro.maxTorque= Vector3.new(math.huge, math.huge, math.huge)
local bodyForce = Instance.new('BodyForce', nmissile)
bodyForce.force = Vector3.new(0, nmissile:GetMass() * 196.2, 0)
local fire = Instance.new('Fire', nmissile)
fire.Heat = 5
fire.Size = 2
local smoke2 = Instance.new("Smoke",nmissile)
game.Debris:AddItem(smoke2,2)
local bvelocity = Instance.new("BodyVelocity",nmissile)
bvelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bvelocity.velocity = mouse.Hit.lookVector*135

nmissile.Touched:connect(function(h)
if (not h:isDescendantOf(mhuey)) then
	if not h.Name:lower():find("base") then
	h.Anchored = false
				h.Velocity  = char.Head.CFrame.lookVector*50
	            h:BreakJoints()
	if h.Parent:FindFirstChild("Humanoid") then h.Parent.Humanoid:TakeDamage(9000) end
	if h.Parent.className=="Model" then
		h.Parent:BreakJoints()
	end
	end
	local ex = Instance.new("Sound",nmissile)
                ex.Volume = 5
				ex.SoundId = "rbxassetid://138186576"
				ex.Pitch = 1
				ex:Play()
	local exp=Instance.new("Explosion", workspace)
				exp.Position=nmissile.Position
				exp.BlastPressure=40
				exp.BlastRadius=15
				exp.Name = "RocketExplosion"
                exp.ExplosionType = Enum.ExplosionType.CratersAndDebris
nmissile:Destroy()
end
end)
wait(2)
missile.Transparency = 0
canfire = true
mouse.Icon = "rbxasset://textures/GunCursor.png"
	end
	end

mouse.KeyDown:connect(function(key)
    if key:byte() == 91 and engineon == true then
	fire()
end
end)

local ppressed = 0
mouse.KeyDown:connect(function(key)
if key == "p" then
	ppressed = ppressed + 1
	if ppressed == 1 then
	print("Missile View Enabled")
	camera.CameraSubject = missile
	end
	if ppressed == 2 then
	print("Missile View Disabled")
	camera.CameraSubject = char.Humanoid
	ppressed = 0
	end
	end
end)

game:GetService("RunService").RenderStepped:connect(function()
if wpressed == true and engineon == true then
	bg.MaxTorque = Vector3.new(9e20,9e20,9e20)
	bg.CFrame = CFrame.new(engine.CFrame.p, mouse.Hit.p)
end
end)