local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local engineon = false
local wpressed = false
local spressed = false
local fpressed = 0
local forcelevel = 400000
local accel = 0
local accellimit = 90
local angle = 0
local wheelaccel = 0
local angletorque = 555000
local ppressed = 0
local bpressed = false
local carhealth = 100
local exploding = false

function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

local mjeep = Instance.new("Model", workspace)
mjeep.Name = "MJeep"

 part = Instance.new("Part", mjeep)
part.FormFactor = Enum.FormFactor.Custom
part.CanCollide = false
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.Elasticity = 0
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Material = Enum.Material.SmoothPlastic
part.Size = Vector3.new(1.58, 1.5, 0.54)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(108.069, 3.297, 27.567)* CFrame.Angles(1.474493265152, 1.371192574501, -1.472554564476)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Slime green")
part.Friction = 0
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("SpecialMesh", part)
mesh.Scale = Vector3.new(1.2, 1.2, 1.2)
mesh.MeshId = "http://www.roblox.com/asset/?id=129344524"
mesh.TextureId = "http://www.roblox.com/asset/?id=129344702"
mesh.MeshType = Enum.MeshType.FileMesh

 wedge_25 = Instance.new("WedgePart", mjeep)
wedge_25.Velocity = Vector3.new(-1.516, 0.012, -0.793)
wedge_25.FormFactor = Enum.FormFactor.Plate
wedge_25.CanCollide = false
wedge_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.Friction = 0.3
wedge_25.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_25.Material = Enum.Material.Metal
wedge_25.Size = Vector3.new(1, 0.4, 1)
wedge_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_25.CFrame = CFrame.new(114.687, 3.002, 22.677)* CFrame.Angles(0.065234929323196, 1.5512616634369, -0.065222352743149)
wedge_25.BrickColor = BrickColor.new("Slime green")

 mesh_65 = Instance.new("SpecialMesh", wedge_25)
mesh_65.MeshType = Enum.MeshType.Wedge

 wedge_27 = Instance.new("WedgePart", mjeep)
wedge_27.Velocity = Vector3.new(-3.57, -0.004, 0.586)
wedge_27.FormFactor = Enum.FormFactor.Plate
wedge_27.CanCollide = false
wedge_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.Friction = 0.3
wedge_27.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_27.Material = Enum.Material.Metal
wedge_27.Size = Vector3.new(1, 0.4, 1)
wedge_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_27.CFrame = CFrame.new(104.553, 3.015, 29.482)* CFrame.Angles(0.065231457352638, 1.5512647628784, -0.065218843519688)
wedge_27.BrickColor = BrickColor.new("Slime green")

 mesh_67 = Instance.new("SpecialMesh", wedge_27)
mesh_67.MeshType = Enum.MeshType.Wedge

 wedge_26 = Instance.new("WedgePart", mjeep)
wedge_26.Velocity = Vector3.new(-3.164, -0.005, 0.594)
wedge_26.FormFactor = Enum.FormFactor.Plate
wedge_26.CanCollide = false
wedge_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.Friction = 0.3
wedge_26.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_26.Material = Enum.Material.Metal
wedge_26.Size = Vector3.new(1, 0.4, 1)
wedge_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_26.CFrame = CFrame.new(106.55, 2.612, 29.521)* CFrame.Angles(0.065231457352638, 1.5512647628784, 3.0763738155365)
wedge_26.BrickColor = BrickColor.new("Slime green")

 mesh_66 = Instance.new("SpecialMesh", wedge_26)
mesh_66.MeshType = Enum.MeshType.Wedge

 wedge = Instance.new("WedgePart", mjeep)
wedge.Velocity = Vector3.new(-3.136, 0.015, -0.824)
wedge.FormFactor = Enum.FormFactor.Plate
wedge.CanCollide = false
wedge.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.Friction = 0.3
wedge.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge.Material = Enum.Material.Metal
wedge.Size = Vector3.new(1, 0.4, 1)
wedge.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.CFrame = CFrame.new(106.687, 2.612, 22.521)* CFrame.Angles(0.065233565866947, 1.5512647628784, 3.0763716697693)
wedge.BrickColor = BrickColor.new("Slime green")

 mesh_5 = Instance.new("SpecialMesh", wedge)
mesh_5.MeshType = Enum.MeshType.Wedge

 backwheels = Instance.new("Model", mjeep)
backwheels.Name = "backwheels"

 bwr = Instance.new("Part", backwheels)
bwr.FormFactor = Enum.FormFactor.Custom
bwr.TopSurface = Enum.SurfaceType.Smooth
bwr.Material = Enum.Material.Concrete
bwr.Size = Vector3.new(0.65, 2.7, 2.7)
bwr.Name = "bwr"
bwr.CFrame = CFrame.new(115.534, 1.613, 22.736)* CFrame.Angles(0.064853571355343, 1.5512800216675, -0.065219387412071)
bwr.Friction = 0.3
bwr.BottomSurface = Enum.SurfaceType.Smooth

 mesh_6 = Instance.new("SpecialMesh", bwr)
mesh_6.Scale = Vector3.new(4, 3.5, 3.5)
mesh_6.MeshId = "http://www.roblox.com/asset/?id=122202439"
mesh_6.TextureId = "http://www.roblox.com/asset/?id=122185866"
mesh_6.MeshType = Enum.MeshType.FileMesh

 bwl = Instance.new("Part", backwheels)
bwl.FormFactor = Enum.FormFactor.Custom
bwl.TopSurface = Enum.SurfaceType.Smooth
bwl.Material = Enum.Material.Concrete
bwl.Size = Vector3.new(0.65, 2.7, 2.7)
bwl.Name = "bwl"
bwl.CFrame = CFrame.new(115.534, 1.613, 29.736)* CFrame.Angles(0.064853571355343, 1.5512800216675, -0.065219387412071)
bwl.Friction = 0.3
bwl.BottomSurface = Enum.SurfaceType.Smooth

 mesh_7 = Instance.new("SpecialMesh", bwl)
mesh_7.Scale = Vector3.new(4, 3.5, 3.5)
mesh_7.MeshId = "http://www.roblox.com/asset/?id=122202439"
mesh_7.TextureId = "http://www.roblox.com/asset/?id=122185866"
mesh_7.MeshType = Enum.MeshType.FileMesh

 baxle = Instance.new("Part", backwheels)
baxle.FormFactor = Enum.FormFactor.Symmetric
baxle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
baxle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
baxle.Material = Enum.Material.Metal
baxle.Size = Vector3.new(0.5, 7.275, 0.5)
baxle.Name = "baxle"
baxle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
baxle.CFrame = CFrame.new(115.628, 1.826, 26.242)* CFrame.Angles(0.065231040120125, 1.5512616634369, -1.6360148191452)
baxle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
baxle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
baxle.BrickColor = BrickColor.new("Black")
baxle.Friction = 0.3
baxle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 p = Instance.new("Part", mjeep)
p.FormFactor = Enum.FormFactor.Plate
p.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p.Material = Enum.Material.Metal
p.Size = Vector3.new(3, 0.4, 3)
p.Name = "Part"
p.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p.CFrame = CFrame.new(105.017, 2.982, 25.99)* CFrame.Angles(1.2109484259781e-007, -0.019452195614576, 0.23427346348763)
p.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p.BrickColor = BrickColor.new("Slime green")
p.Friction = 0.3
p.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p.Name = "Hood"

 decal = Instance.new("Decal", p)
decal.Face = Enum.NormalId.Top
decal.Texture = "http://www.roblox.com/asset/?id=199636419"

 door1 = Instance.new("Part", mjeep)
door1.Velocity = Vector3.new(-2.349, -0.004, 0.407)
door1.FormFactor = Enum.FormFactor.Plate
door1.CanCollide = false
door1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
door1.RotVelocity = Vector3.new(0, 0.203, 0.003)
door1.Material = Enum.Material.Metal
door1.Size = Vector3.new(1, 2.8, 6)
door1.Name = "door1"
door1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door1.CFrame = CFrame.new(110.569, 2.407, 28.598)* CFrame.Angles(0.065234929323196, 1.5512616634369, 3.0763702392578)
door1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door1.BrickColor = BrickColor.new("Slime green")
door1.Friction = 0.3
door1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_8 = Instance.new("BlockMesh", door1)
mesh_8.Offset = Vector3.new(0.35, 0, 0)
mesh_8.Scale = Vector3.new(0.3, 1, 1)

 part_4 = Instance.new("Part", mjeep)
part_4.Velocity = Vector3.new(-2.447, -0.001, 0.203)
part_4.FormFactor = Enum.FormFactor.Plate
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_4.Material = Enum.Material.SmoothPlastic
part_4.Size = Vector3.new(1, 1.6, 1)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(110.089, 2.808, 27.589)* CFrame.Angles(2.5282522742032e-008, -0.01945129968226, -0.001270598731935)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Brown")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_9 = Instance.new("BlockMesh", part_4)
mesh_9.Offset = Vector3.new(0.35, 0, 0)
mesh_9.Scale = Vector3.new(0.3, 1, 2)

 part_5 = Instance.new("Part", mjeep)
part_5.Velocity = Vector3.new(-2.436, 0.008, -0.405)
part_5.FormFactor = Enum.FormFactor.Plate
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_5.Material = Enum.Material.SmoothPlastic
part_5.Size = Vector3.new(1, 1.6, 1)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(110.148, 2.808, 24.589)* CFrame.Angles(1.9141680240864e-008, -0.019451182335615, -0.0012705988483503)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Brown")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_10 = Instance.new("BlockMesh", part_5)
mesh_10.Offset = Vector3.new(0.35, 0, 0)
mesh_10.Scale = Vector3.new(0.3, 1, 2)

 part_6 = Instance.new("Part", mjeep)
part_6.Velocity = Vector3.new(-2.846, 0.005, -0.109)
part_6.FormFactor = Enum.FormFactor.Plate
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_6.Material = Enum.Material.Metal
part_6.Size = Vector3.new(1, 2.8, 4)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(108.118, 2.411, 26.05)* CFrame.Angles(2.2187778725424e-008, -0.019451355561614, 3.140321969986)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Slime green")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("BlockMesh", part_6)
mesh_11.Offset = Vector3.new(0.35, 0, 0)
mesh_11.Scale = Vector3.new(0.3, 1, 1.5)

 part_7 = Instance.new("Part", mjeep)
part_7.Velocity = Vector3.new(-1.834, 0.002, -0.089)
part_7.FormFactor = Enum.FormFactor.Plate
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_7.Material = Enum.Material.SmoothPlastic
part_7.Size = Vector3.new(1, 1.6, 2)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(113.137, 2.804, 24.848)* CFrame.Angles(2.2097484730921e-008, -0.019451240077615, -0.001270598731935)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Brown")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_12 = Instance.new("BlockMesh", part_7)
mesh_12.Offset = Vector3.new(0.35, 0, 0)
mesh_12.Scale = Vector3.new(0.3, 1, 1.4)

 part_8 = Instance.new("Part", mjeep)
part_8.Velocity = Vector3.new(-1.428, 0.001, -0.082)
part_8.FormFactor = Enum.FormFactor.Plate
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_8.Material = Enum.Material.Metal
part_8.Size = Vector3.new(6, 2, 3)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(115.117, 2.802, 26.186)* CFrame.Angles(-3.0763583183289, -1.5512616634369, 0.065221779048443)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Slime green")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_13 = Instance.new("BlockMesh", part_8)

 part_9 = Instance.new("Part", mjeep)
part_9.Velocity = Vector3.new(-1.82, 0.012, -0.799)
part_9.FormFactor = Enum.FormFactor.Plate
part_9.CanCollide = false
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_9.Material = Enum.Material.Metal
part_9.Size = Vector3.new(1, 0.4, 1)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(113.186, 3.004, 22.648)* CFrame.Angles(0.065235488116741, 1.5512616634369, 3.0763697624207)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Black")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("BlockMesh", part_9)
mesh_14.Offset = Vector3.new(0.5, 0, 0)
mesh_14.Scale = Vector3.new(0.1, 1, 0.8)

 part_10 = Instance.new("Part", mjeep)
part_10.Velocity = Vector3.new(-1.323, 0.001, -0.08)
part_10.FormFactor = Enum.FormFactor.Plate
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_10.Material = Enum.Material.Metal
part_10.Size = Vector3.new(6, 0.8, 4)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(115.616, 1.401, 26.196)* CFrame.Angles(-3.0763578414917, -1.5512616634369, 0.065222360193729)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Slime green")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_15 = Instance.new("BlockMesh", part_10)

 part_11 = Instance.new("Part", mjeep)
part_11.Velocity = Vector3.new(-1.341, -0.009, 0.63)
part_11.FormFactor = Enum.FormFactor.Plate
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_11.Material = Enum.Material.Metal
part_11.Size = Vector3.new(1, 0.4, 1)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(115.55, 3.001, 29.696)* CFrame.Angles(-3.0763573646545, -1.5512616634369, 0.06522274017334)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Slime green")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("BlockMesh", part_11)

 part_12 = Instance.new("Part", mjeep)
part_12.Velocity = Vector3.new(-1.848, -0.008, 0.62)
part_12.FormFactor = Enum.FormFactor.Plate
part_12.CanCollide = false
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_12.Material = Enum.Material.Metal
part_12.Size = Vector3.new(1, 0.4, 1)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(113.05, 3.004, 29.647)* CFrame.Angles(-3.0763578414917, -1.5512616634369, 0.065222360193729)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Black")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("BlockMesh", part_12)
mesh_17.Offset = Vector3.new(0.5, 0, 0)
mesh_17.Scale = Vector3.new(0.1, 1, 0.8)

 part_13 = Instance.new("Part", mjeep)
part_13.Velocity = Vector3.new(-1.314, 0.011, -0.789)
part_13.FormFactor = Enum.FormFactor.Plate
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_13.Material = Enum.Material.Metal
part_13.Size = Vector3.new(1, 0.4, 1)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(115.686, 3.001, 22.697)* CFrame.Angles(-3.0763578414917, -1.5512616634369, 0.065222360193729)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Slime green")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("BlockMesh", part_13)

 part_14 = Instance.new("Part", mjeep)
part_14.Velocity = Vector3.new(-2.234, 0.003, -0.098)
part_14.FormFactor = Enum.FormFactor.Plate
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_14.Material = Enum.Material.Metal
part_14.Size = Vector3.new(6, 0.4, 13)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(111.116, 0.807, 26.108)* CFrame.Angles(-3.0763566493988, -1.5512616634369, 0.065223500132561)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Slime green")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("BlockMesh", part_14)

 w3 = Instance.new("Part", mjeep)
w3.Velocity = Vector3.new(-2.822, 0.004, -0.108)
w3.FormFactor = Enum.FormFactor.Plate
w3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
w3.Transparency = 0.8
w3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w3.RotVelocity = Vector3.new(0, 0.203, 0.003)
w3.Material = Enum.Material.Metal
w3.Size = Vector3.new(1, 1.2, 4)
w3.Name = "W3"
w3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
w3.CFrame = CFrame.new(108.268, 4.692, 26.053)* CFrame.Angles(2.7371692340239e-005, -0.019484659656882, 2.9429566860199)
w3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
w3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
w3.BrickColor = BrickColor.new("Light blue")
w3.Friction = 0.3
w3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_20 = Instance.new("BlockMesh", w3)
mesh_20.Offset = Vector3.new(0.35, 0, 0)
mesh_20.Scale = Vector3.new(0.1, 1.6, 1.4)

 w1_2 = Instance.new("Part", mjeep)
w1_2.Velocity = Vector3.new(-2.777, 0.004, -0.107)
w1_2.FormFactor = Enum.FormFactor.Plate
w1_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
w1_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w1_2.RotVelocity = Vector3.new(0, 0.203, 0.003)
w1_2.Material = Enum.Material.Metal
w1_2.Size = Vector3.new(1, 0.4, 6)
w1_2.Name = "W1"
w1_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
w1_2.CFrame = CFrame.new(108.505, 5.868, 26.058)* CFrame.Angles(2.7371692340239e-005, -0.019484659656882, 2.9429566860199)
w1_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
w1_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
w1_2.BrickColor = BrickColor.new("Slime green")
w1_2.Friction = 0.3
w1_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_21 = Instance.new("BlockMesh", w1_2)
mesh_21.Offset = Vector3.new(0.35, 0, 0)
mesh_21.Scale = Vector3.new(0.3, 1, 1)

 door2 = Instance.new("Part", mjeep)
door2.Velocity = Vector3.new(-2.329, 0.01, -0.606)
door2.FormFactor = Enum.FormFactor.Plate
door2.CanCollide = false
door2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
door2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
door2.RotVelocity = Vector3.new(0, 0.203, 0.003)
door2.Material = Enum.Material.Metal
door2.Size = Vector3.new(1, 2.8, 6)
door2.Name = "door2"
door2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
door2.CFrame = CFrame.new(110.667, 2.407, 23.599)* CFrame.Angles(-3.0763564109802, -1.5512616634369, 0.065223693847656)
door2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
door2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
door2.BrickColor = BrickColor.new("Slime green")
door2.Friction = 0.3
door2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("BlockMesh", door2)
mesh_22.Offset = Vector3.new(0.35, 0, 0)
mesh_22.Scale = Vector3.new(0.3, 1, 1)

 part_15 = Instance.new("Part", mjeep)
part_15.Velocity = Vector3.new(-3.24, 0.012, -0.624)
part_15.FormFactor = Enum.FormFactor.Plate
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_15.Material = Enum.Material.Metal
part_15.Size = Vector3.new(1, 1.6, 3)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(106.167, 1.813, 23.512)* CFrame.Angles(-3.0763564109802, -1.5512616634369, 0.065223693847656)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Slime green")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("BlockMesh", part_15)

 frontwheels = Instance.new("Model", mjeep)
frontwheels.Name = "frontwheels"

 fwl = Instance.new("Part", frontwheels)
fwl.FormFactor = Enum.FormFactor.Custom
fwl.TopSurface = Enum.SurfaceType.Smooth
fwl.Material = Enum.Material.Concrete
fwl.Size = Vector3.new(0.65, 2.7, 2.7)
fwl.Name = "fwl"
fwl.CFrame = CFrame.new(105.634, 1.613, 29.536)* CFrame.Angles(0.064853571355343, 1.5512800216675, -0.065219387412071)
fwl.Friction = 0.3
fwl.BottomSurface = Enum.SurfaceType.Smooth

 mesh_24 = Instance.new("SpecialMesh", fwl)
mesh_24.Scale = Vector3.new(4, 3.5, 3.5)
mesh_24.MeshId = "http://www.roblox.com/asset/?id=122202439"
mesh_24.TextureId = "http://www.roblox.com/asset/?id=122185866"
mesh_24.MeshType = Enum.MeshType.FileMesh

 fwr = Instance.new("Part", frontwheels)
fwr.FormFactor = Enum.FormFactor.Custom
fwr.TopSurface = Enum.SurfaceType.Smooth
fwr.Material = Enum.Material.Concrete
fwr.Size = Vector3.new(0.65, 2.7, 2.7)
fwr.Name = "fwr"
fwr.CFrame = CFrame.new(105.634, 1.613, 22.536)* CFrame.Angles(0.064853571355343, 1.5512800216675, -0.065219387412071)
fwr.Friction = 0.3
fwr.BottomSurface = Enum.SurfaceType.Smooth

 mesh_25 = Instance.new("SpecialMesh", fwr)
mesh_25.Scale = Vector3.new(4, 3.5, 3.5)
mesh_25.MeshId = "http://www.roblox.com/asset/?id=122202439"
mesh_25.TextureId = "http://www.roblox.com/asset/?id=122185866"
mesh_25.MeshType = Enum.MeshType.FileMesh

 faxle = Instance.new("Part", frontwheels)
faxle.FormFactor = Enum.FormFactor.Symmetric
faxle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
faxle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
faxle.Material = Enum.Material.Metal
faxle.Size = Vector3.new(0.5, 7.275, 0.5)
faxle.Name = "faxle"
faxle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
faxle.CFrame = CFrame.new(105.618, 1.826, 26.032)* CFrame.Angles(0.065231040120125, 1.5512616634369, -1.6360148191452)
faxle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
faxle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
faxle.BrickColor = BrickColor.new("Black")
faxle.Friction = 0.3
faxle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_16 = Instance.new("Part", mjeep)
part_16.Velocity = Vector3.new(-3.259, -0.002, 0.389)
part_16.FormFactor = Enum.FormFactor.Plate
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_16.Material = Enum.Material.Metal
part_16.Size = Vector3.new(1, 1.6, 3)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(106.069, 1.813, 28.511)* CFrame.Angles(-3.0763564109802, -1.5512616634369, 0.065223693847656)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Slime green")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("BlockMesh", part_16)

 w5 = Instance.new("Part", mjeep)
w5.FormFactor = Enum.FormFactor.Plate
w5.CanCollide = false
w5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
w5.Transparency = 1
w5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w5.Material = Enum.Material.Metal
w5.Size = Vector3.new(1, 0.4, 6)
w5.Name = "W5"
w5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
w5.CFrame = CFrame.new(106.012, 5.278, 26.057)* CFrame.Angles(0.018201598897576, -0.0069662402383983, -2.1358544826508)
w5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
w5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
w5.BrickColor = BrickColor.new("Slime green")
w5.Friction = 0.3
w5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("BlockMesh", w5)
mesh_27.Offset = Vector3.new(0.35, 0, 0)
mesh_27.Scale = Vector3.new(0.3, 1, 1)

 part_17 = Instance.new("Part", mjeep)
part_17.Velocity = Vector3.new(-3.367, -0.004, 0.59)
part_17.FormFactor = Enum.FormFactor.Plate
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_17.Material = Enum.Material.Metal
part_17.Size = Vector3.new(1, 0.4, 1)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(105.553, 3.013, 29.501)* CFrame.Angles(-3.0763614177704, -1.5512647628784, 0.065218664705753)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Slime green")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("BlockMesh", part_17)

 w4 = Instance.new("Part", mjeep)
w4.Velocity = Vector3.new(-2.824, -0.003, 0.399)
w4.FormFactor = Enum.FormFactor.Plate
w4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
w4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w4.RotVelocity = Vector3.new(0, 0.203, 0.003)
w4.Material = Enum.Material.Metal
w4.Size = Vector3.new(1, 1.6, 1)
w4.Name = "W4"
w4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
w4.CFrame = CFrame.new(108.259, 4.888, 28.553)* CFrame.Angles(2.7346923161531e-005, -0.019484709948301, 2.9429571628571)
w4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
w4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
w4.BrickColor = BrickColor.new("Slime green")
w4.Friction = 0.3
w4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("BlockMesh", w4)
mesh_29.Offset = Vector3.new(0.35, 0, 0.35)
mesh_29.Scale = Vector3.new(0.3, 1.5, 0.3)

 w6 = Instance.new("Part", mjeep)
w6.Velocity = Vector3.new(-2.804, 0.011, -0.614)
w6.FormFactor = Enum.FormFactor.Plate
w6.CanCollide = false
w6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
w6.Transparency = 1
w6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w6.RotVelocity = Vector3.new(0, 0.203, 0.003)
w6.Material = Enum.Material.Metal
w6.Size = Vector3.new(1, 1.6, 1)
w6.Name = "W6"
w6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
w6.CFrame = CFrame.new(106.874, 4.788, 23.554)* CFrame.Angles(1.5934143066406, -0.56504017114639, -1.5625476837158)
w6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
w6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
w6.BrickColor = BrickColor.new("Slime green")
w6.Friction = 0.3
w6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("BlockMesh", w6)
mesh_30.Offset = Vector3.new(0.35, 0, 0.35)
mesh_30.Scale = Vector3.new(0.3, 1.5, 0.3)

 w7 = Instance.new("Part", mjeep)
w7.FormFactor = Enum.FormFactor.Plate
w7.CanCollide = false
w7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
w7.Transparency = 1
w7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w7.Material = Enum.Material.Metal
w7.Size = Vector3.new(1, 1.2, 4)
w7.Name = "W7"
w7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
w7.CFrame = CFrame.new(107.025, 4.635, 26.053)* CFrame.Angles(0.018201598897576, -0.0069662402383983, -2.1358544826508)
w7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
w7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
w7.BrickColor = BrickColor.new("Light blue")
w7.Friction = 0.3
w7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("BlockMesh", w7)
mesh_31.Offset = Vector3.new(0.35, 0, 0)
mesh_31.Scale = Vector3.new(0.1, 1.6, 1.4)

 w8 = Instance.new("Part", mjeep)
w8.Velocity = Vector3.new(-2.824, -0.003, 0.399)
w8.FormFactor = Enum.FormFactor.Plate
w8.CanCollide = false
w8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
w8.Transparency = 1
w8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w8.RotVelocity = Vector3.new(0, 0.203, 0.003)
w8.Material = Enum.Material.Metal
w8.Size = Vector3.new(1, 1.6, 1)
w8.Name = "W8"
w8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
w8.CFrame = CFrame.new(106.839, 4.697, 28.553)* CFrame.Angles(0.018201638013124, -0.0069662784226239, -2.1358540058136)
w8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
w8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
w8.BrickColor = BrickColor.new("Slime green")
w8.Friction = 0.3
w8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("BlockMesh", w8)
mesh_32.Offset = Vector3.new(0.35, 0, 0.35)
mesh_32.Scale = Vector3.new(0.3, 1.5, 0.3)

 wedge_2 = Instance.new("WedgePart", mjeep)
wedge_2.Velocity = Vector3.new(-3.137, 0.015, -0.824)
wedge_2.FormFactor = Enum.FormFactor.Plate
wedge_2.CanCollide = false
wedge_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.Friction = 0.3
wedge_2.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_2.Material = Enum.Material.Metal
wedge_2.Size = Vector3.new(1, 0.4, 1)
wedge_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.CFrame = CFrame.new(106.687, 3.012, 22.521)* CFrame.Angles(-3.0763599872589, -1.5512647628784, -3.0763726234436)
wedge_2.BrickColor = BrickColor.new("Slime green")

 mesh_33 = Instance.new("SpecialMesh", wedge_2)
mesh_33.MeshType = Enum.MeshType.Wedge

 part_18 = Instance.new("Part", mjeep)
part_18.Velocity = Vector3.new(-3.047, 0.005, -0.113)
part_18.FormFactor = Enum.FormFactor.Plate
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_18.Material = Enum.Material.Metal
part_18.Size = Vector3.new(4, 1.6, 1)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(107.118, 1.812, 26.031)* CFrame.Angles(-3.0763564109802, -1.5512616634369, 0.065223693847656)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Slime green")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("BlockMesh", part_18)

 part_19 = Instance.new("Part", mjeep)
part_19.Velocity = Vector3.new(-2.833, 0.014, -0.818)
part_19.FormFactor = Enum.FormFactor.Plate
part_19.CanCollide = false
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_19.Material = Enum.Material.Metal
part_19.Size = Vector3.new(1, 0.4, 1)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(108.187, 3.011, 22.551)* CFrame.Angles(0.065235875546932, 1.5512616634369, 3.0763692855835)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = BrickColor.new("Black")
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("BlockMesh", part_19)
mesh_35.Offset = Vector3.new(0.5, 0, 0)
mesh_35.Scale = Vector3.new(0.1, 1, 0.8)

 part_20 = Instance.new("Part", mjeep)
part_20.Velocity = Vector3.new(-2.861, -0.005, 0.6)
part_20.FormFactor = Enum.FormFactor.Plate
part_20.CanCollide = false
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_20.Material = Enum.Material.Metal
part_20.Size = Vector3.new(1, 0.4, 1)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(108.051, 3.011, 29.55)* CFrame.Angles(-3.0763578414917, -1.5512616634369, 0.065222360193729)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Black")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("BlockMesh", part_20)
mesh_36.Offset = Vector3.new(0.5, 0, 0)
mesh_36.Scale = Vector3.new(0.1, 1, 0.8)

 part_21 = Instance.new("Part", mjeep)
part_21.Velocity = Vector3.new(-3.758, 0.007, -0.127)
part_21.FormFactor = Enum.FormFactor.Plate
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_21.Material = Enum.Material.Metal
part_21.Size = Vector3.new(6, 0.4, 2)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(103.619, 2.416, 25.963)* CFrame.Angles(-3.076357126236, -1.5512616634369, 0.065222926437855)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Slime green")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("BlockMesh", part_21)

 w2 = Instance.new("Part", mjeep)
w2.Velocity = Vector3.new(-2.804, 0.011, -0.614)
w2.FormFactor = Enum.FormFactor.Plate
w2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
w2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w2.RotVelocity = Vector3.new(0, 0.203, 0.003)
w2.Material = Enum.Material.Metal
w2.Size = Vector3.new(1, 1.6, 1)
w2.Name = "W2"
w2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
w2.CFrame = CFrame.new(108.357, 4.888, 23.554)* CFrame.Angles(-1.6672585010529, -1.3712096214294, 1.4723644256592)
w2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
w2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
w2.BrickColor = BrickColor.new("Slime green")
w2.Friction = 0.3
w2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("BlockMesh", w2)
mesh_38.Offset = Vector3.new(0.35, 0, 0.35)
mesh_38.Scale = Vector3.new(0.3, 1.5, 0.3)

 part_22 = Instance.new("Part", mjeep)
part_22.Velocity = Vector3.new(-3.34, 0.015, -0.828)
part_22.FormFactor = Enum.FormFactor.Plate
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.RotVelocity = Vector3.new(0, 0.203, 0.003)
part_22.Material = Enum.Material.Metal
part_22.Size = Vector3.new(1, 0.4, 1)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(105.688, 3.013, 22.502)* CFrame.Angles(-3.076358795166, -1.5512647628784, 0.06522136926651)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Slime green")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_39 = Instance.new("BlockMesh", part_22)

 wedge_3 = Instance.new("WedgePart", mjeep)
wedge_3.Velocity = Vector3.new(-1.543, -0.008, 0.626)
wedge_3.FormFactor = Enum.FormFactor.Plate
wedge_3.CanCollide = false
wedge_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.Friction = 0.3
wedge_3.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_3.Material = Enum.Material.Metal
wedge_3.Size = Vector3.new(1, 0.4, 1)
wedge_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.CFrame = CFrame.new(114.55, 2.602, 29.677)* CFrame.Angles(-3.0763578414917, -1.5512616634369, 0.065222159028053)
wedge_3.BrickColor = BrickColor.new("Slime green")

 mesh_40 = Instance.new("SpecialMesh", wedge_3)
mesh_40.MeshType = Enum.MeshType.Wedge

 wedge_4 = Instance.new("WedgePart", mjeep)
wedge_4.Velocity = Vector3.new(-1.11, 0.011, -0.785)
wedge_4.FormFactor = Enum.FormFactor.Plate
wedge_4.CanCollide = false
wedge_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.Friction = 0.3
wedge_4.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_4.Material = Enum.Material.Metal
wedge_4.Size = Vector3.new(1, 0.4, 1)
wedge_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.CFrame = CFrame.new(116.686, 2.599, 22.716)* CFrame.Angles(0.065235115587711, 1.5512616634369, 3.0763700008392)
wedge_4.BrickColor = BrickColor.new("Slime green")

 mesh_41 = Instance.new("SpecialMesh", wedge_4)
mesh_41.MeshType = Enum.MeshType.Wedge

 wedge_5 = Instance.new("WedgePart", mjeep)
wedge_5.Velocity = Vector3.new(-1.111, 0.011, -0.785)
wedge_5.FormFactor = Enum.FormFactor.Plate
wedge_5.CanCollide = false
wedge_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.Friction = 0.3
wedge_5.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_5.Material = Enum.Material.Metal
wedge_5.Size = Vector3.new(1, 0.4, 1)
wedge_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.CFrame = CFrame.new(116.686, 2.999, 22.716)* CFrame.Angles(-3.0763576030731, -1.5512616634369, -3.0763702392578)
wedge_5.BrickColor = BrickColor.new("Slime green")

 mesh_42 = Instance.new("SpecialMesh", wedge_5)
mesh_42.MeshType = Enum.MeshType.Wedge

 vehicleseat = Instance.new("Seat", mjeep)
vehicleseat.Velocity = Vector3.new(-2.534, 0.008, -0.408)
vehicleseat.Friction = 0.3
vehicleseat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat.TopSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat.BrickColor = BrickColor.new("Brown")
vehicleseat.RotVelocity = Vector3.new(0, 0.203, 0.003)
vehicleseat.CFrame = CFrame.new(109.646, 1.509, 24.58)* CFrame.Angles(0.065236255526543, 1.5512616634369, -0.065223693847656)
vehicleseat.Material = Enum.Material.SmoothPlastic
vehicleseat.Size = Vector3.new(1, 1, 2)
vehicleseat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat.RightSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_43 = Instance.new("BlockMesh", vehicleseat)
mesh_43.Scale = Vector3.new(2, 1, 1)

 wedge_6 = Instance.new("WedgePart", mjeep)
wedge_6.Velocity = Vector3.new(-1.023, 0.001, -0.074)
wedge_6.FormFactor = Enum.FormFactor.Plate
wedge_6.CanCollide = false
wedge_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.Friction = 0.3
wedge_6.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_6.Material = Enum.Material.Metal
wedge_6.Size = Vector3.new(6, 2, 1)
wedge_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.CFrame = CFrame.new(117.117, 2.799, 26.225)* CFrame.Angles(-3.0763580799103, -1.5512647628784, -3.076370716095)
wedge_6.BrickColor = BrickColor.new("Slime green")

 mesh_44 = Instance.new("SpecialMesh", wedge_6)
mesh_44.MeshType = Enum.MeshType.Wedge

 wedge_7 = Instance.new("WedgePart", mjeep)
wedge_7.Velocity = Vector3.new(-1.684, -0.008, 0.623)
wedge_7.FormFactor = Enum.FormFactor.Plate
wedge_7.CanCollide = false
wedge_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.Friction = 0.3
wedge_7.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_7.Material = Enum.Material.Metal
wedge_7.Size = Vector3.new(1, 0.4, 1)
wedge_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.CFrame = CFrame.new(113.85, 2.303, 29.663)* CFrame.Angles(1.5708210468292, -0.0012703418033198, 1.5902481079102)
wedge_7.BrickColor = BrickColor.new("Slime green")

 mesh_45 = Instance.new("SpecialMesh", wedge_7)
mesh_45.MeshType = Enum.MeshType.Wedge

 wedge_8 = Instance.new("WedgePart", mjeep)
wedge_8.Velocity = Vector3.new(-1.139, -0.009, 0.634)
wedge_8.FormFactor = Enum.FormFactor.Plate
wedge_8.CanCollide = false
wedge_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.Friction = 0.3
wedge_8.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_8.Material = Enum.Material.Metal
wedge_8.Size = Vector3.new(1, 0.4, 1)
wedge_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.CFrame = CFrame.new(116.549, 2.999, 29.715)* CFrame.Angles(-3.0763578414917, -1.5512616634369, -3.0763704776764)
wedge_8.BrickColor = BrickColor.new("Slime green")

 mesh_46 = Instance.new("SpecialMesh", wedge_8)
mesh_46.MeshType = Enum.MeshType.Wedge

 driverseat = Instance.new("VehicleSeat", mjeep)
driverseat.Velocity = Vector3.new(-2.545, 0, 0.2)
driverseat.Friction = 0.3
driverseat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
driverseat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
driverseat.TopSurface = Enum.SurfaceType.SmoothNoOutlines
driverseat.MaxSpeed = 20
driverseat.BrickColor = BrickColor.new("Brown")
driverseat.RotVelocity = Vector3.new(0, 0.203, 0.003)
driverseat.CFrame = CFrame.new(109.588, 1.509, 27.579)* CFrame.Angles(0.065236061811447, 1.5512616634369, -0.065223500132561)
driverseat.Material = Enum.Material.SmoothPlastic
driverseat.Size = Vector3.new(1, 1, 2)
driverseat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
driverseat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
driverseat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
driverseat.Torque = 1
driverseat.Name = "driverseat"
driverseat.HeadsUpDisplay = false

 mesh_47 = Instance.new("BlockMesh", driverseat)
mesh_47.Scale = Vector3.new(2, 1, 1)

 wedge_9 = Instance.new("WedgePart", mjeep)
wedge_9.Velocity = Vector3.new(-0.995, -0.009, 0.636)
wedge_9.FormFactor = Enum.FormFactor.Plate
wedge_9.CanCollide = false
wedge_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.Friction = 0.3
wedge_9.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_9.Material = Enum.Material.Metal
wedge_9.Size = Vector3.new(1, 0.4, 1)
wedge_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.CFrame = CFrame.new(117.249, 2.298, 29.729)* CFrame.Angles(1.5708210468292, -0.0012703415704891, -1.5513443946838)
wedge_9.BrickColor = BrickColor.new("Slime green")

 mesh_48 = Instance.new("SpecialMesh", wedge_9)
mesh_48.MeshType = Enum.MeshType.Wedge

 wedge_10 = Instance.new("WedgePart", mjeep)
wedge_10.Velocity = Vector3.new(-1.138, -0.009, 0.633)
wedge_10.FormFactor = Enum.FormFactor.Plate
wedge_10.CanCollide = false
wedge_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.Friction = 0.3
wedge_10.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_10.Material = Enum.Material.Metal
wedge_10.Size = Vector3.new(1, 0.4, 1)
wedge_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.CFrame = CFrame.new(116.55, 2.599, 29.715)* CFrame.Angles(0.065234735608101, 1.5512616634369, 3.0763704776764)
wedge_10.BrickColor = BrickColor.new("Slime green")

 mesh_49 = Instance.new("SpecialMesh", wedge_10)
mesh_49.MeshType = Enum.MeshType.Wedge

 wedge_11 = Instance.new("WedgePart", mjeep)
wedge_11.Velocity = Vector3.new(-1.544, -0.008, 0.626)
wedge_11.FormFactor = Enum.FormFactor.Plate
wedge_11.CanCollide = false
wedge_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.Friction = 0.3
wedge_11.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_11.Material = Enum.Material.Metal
wedge_11.Size = Vector3.new(1, 0.4, 1)
wedge_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_11.CFrame = CFrame.new(114.551, 3.002, 29.677)* CFrame.Angles(0.065234735608101, 1.5512616634369, -0.065222159028053)
wedge_11.BrickColor = BrickColor.new("Slime green")

 mesh_50 = Instance.new("SpecialMesh", wedge_11)
mesh_50.MeshType = Enum.MeshType.Wedge

 wedge_12 = Instance.new("WedgePart", mjeep)
wedge_12.Velocity = Vector3.new(-0.967, 0.01, -0.782)
wedge_12.FormFactor = Enum.FormFactor.Plate
wedge_12.CanCollide = false
wedge_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.Friction = 0.3
wedge_12.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_12.Material = Enum.Material.Metal
wedge_12.Size = Vector3.new(1, 0.4, 1)
wedge_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_12.CFrame = CFrame.new(117.385, 2.298, 22.729)* CFrame.Angles(1.5708210468292, -0.0012703415704891, -1.5513443946838)
wedge_12.BrickColor = BrickColor.new("Slime green")

 mesh_51 = Instance.new("SpecialMesh", wedge_12)
mesh_51.MeshType = Enum.MeshType.Wedge

 vehicleseat_2 = Instance.new("Seat", mjeep)
vehicleseat_2.Velocity = Vector3.new(-1.926, 0.007, -0.396)
vehicleseat_2.Friction = 0.3
vehicleseat_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat_2.BrickColor = BrickColor.new("Brown")
vehicleseat_2.RotVelocity = Vector3.new(0, 0.203, 0.003)
vehicleseat_2.CFrame = CFrame.new(112.646, 1.505, 24.638)* CFrame.Angles(0.065235294401646, 1.5512616634369, -0.06522274017334)
vehicleseat_2.Material = Enum.Material.SmoothPlastic
vehicleseat_2.Size = Vector3.new(1, 1, 2)
vehicleseat_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
vehicleseat_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_52 = Instance.new("BlockMesh", vehicleseat_2)
mesh_52.Offset = Vector3.new(-0.1, 0, 0)
mesh_52.Scale = Vector3.new(3, 1, 1)

 wedge_13 = Instance.new("WedgePart", mjeep)
wedge_13.Velocity = Vector3.new(-3.542, 0.016, -0.832)
wedge_13.FormFactor = Enum.FormFactor.Plate
wedge_13.CanCollide = false
wedge_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.Friction = 0.3
wedge_13.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_13.Material = Enum.Material.Metal
wedge_13.Size = Vector3.new(1, 0.4, 1)
wedge_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_13.CFrame = CFrame.new(104.688, 2.615, 22.482)* CFrame.Angles(-3.076358795166, -1.5512647628784, 0.065221190452576)
wedge_13.BrickColor = BrickColor.new("Slime green")

 mesh_53 = Instance.new("SpecialMesh", wedge_13)
mesh_53.MeshType = Enum.MeshType.Wedge

 wedge_14 = Instance.new("WedgePart", mjeep)
wedge_14.Velocity = Vector3.new(-2.994, 0.015, -0.822)
wedge_14.FormFactor = Enum.FormFactor.Plate
wedge_14.CanCollide = false
wedge_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.Friction = 0.3
wedge_14.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_14.Material = Enum.Material.Metal
wedge_14.Size = Vector3.new(1, 0.4, 1)
wedge_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_14.CFrame = CFrame.new(107.386, 2.311, 22.535)* CFrame.Angles(1.5708210468292, -0.0012703271349892, -1.5513446331024)
wedge_14.BrickColor = BrickColor.new("Slime green")

 mesh_54 = Instance.new("SpecialMesh", wedge_14)
mesh_54.MeshType = Enum.MeshType.Wedge

 wedge_15 = Instance.new("WedgePart", mjeep)
wedge_15.Velocity = Vector3.new(-3.455, 0.006, -0.121)
wedge_15.FormFactor = Enum.FormFactor.Plate
wedge_15.CanCollide = false
wedge_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.Friction = 0.3
wedge_15.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_15.Material = Enum.Material.Metal
wedge_15.Size = Vector3.new(6, 1.2, 5)
wedge_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_15.CFrame = CFrame.new(105.122, 3.214, 25.992)* CFrame.Angles(0.065233588218689, 1.5512647628784, -0.06522099673748)
wedge_15.BrickColor = BrickColor.new("Slime green")

 mesh_55 = Instance.new("SpecialMesh", wedge_15)
mesh_55.MeshType = Enum.MeshType.Wedge

 wedge_16 = Instance.new("WedgePart", mjeep)
wedge_16.Velocity = Vector3.new(-3.543, 0.016, -0.832)
wedge_16.FormFactor = Enum.FormFactor.Plate
wedge_16.CanCollide = false
wedge_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.Friction = 0.3
wedge_16.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_16.Material = Enum.Material.Metal
wedge_16.Size = Vector3.new(1, 0.4, 1)
wedge_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_16.CFrame = CFrame.new(104.688, 3.015, 22.482)* CFrame.Angles(0.065234139561653, 1.5512647628784, -0.065221562981606)
wedge_16.BrickColor = BrickColor.new("Slime green")

 mesh_56 = Instance.new("SpecialMesh", wedge_16)
mesh_56.MeshType = Enum.MeshType.Wedge

 wedge_17 = Instance.new("WedgePart", mjeep)
wedge_17.Velocity = Vector3.new(-3.021, -0.005, 0.597)
wedge_17.FormFactor = Enum.FormFactor.Plate
wedge_17.CanCollide = false
wedge_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.Friction = 0.3
wedge_17.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_17.Material = Enum.Material.Metal
wedge_17.Size = Vector3.new(1, 0.4, 1)
wedge_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_17.CFrame = CFrame.new(107.25, 2.311, 29.535)* CFrame.Angles(1.5708210468292, -0.0012703569373116, -1.5513446331024)
wedge_17.BrickColor = BrickColor.new("Slime green")

 mesh_57 = Instance.new("SpecialMesh", wedge_17)
mesh_57.MeshType = Enum.MeshType.Wedge

 wedge_18 = Instance.new("WedgePart", mjeep)
wedge_18.Velocity = Vector3.new(-3.165, -0.005, 0.594)
wedge_18.FormFactor = Enum.FormFactor.Plate
wedge_18.CanCollide = false
wedge_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.Friction = 0.3
wedge_18.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_18.Material = Enum.Material.Metal
wedge_18.Size = Vector3.new(1, 0.4, 1)
wedge_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_18.CFrame = CFrame.new(106.55, 3.012, 29.521)* CFrame.Angles(-3.076363325119, -1.5512616634369, -3.0763759613037)
wedge_18.BrickColor = BrickColor.new("Slime green")

 mesh_58 = Instance.new("SpecialMesh", wedge_18)
mesh_58.MeshType = Enum.MeshType.Wedge

 wedge_19 = Instance.new("WedgePart", mjeep)
wedge_19.Velocity = Vector3.new(-2.739, 0.011, -0.613)
wedge_19.FormFactor = Enum.FormFactor.Plate
wedge_19.CanCollide = false
wedge_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.Transparency = 1
wedge_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.Friction = 0.3
wedge_19.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_19.Material = Enum.Material.Metal
wedge_19.Size = Vector3.new(1, 0.4, 2)
wedge_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_19.CFrame = CFrame.new(108.669, 4.009, 23.56)* CFrame.Angles(-3.0763568878174, -1.5512616634369, -3.0763695240021)
wedge_19.BrickColor = BrickColor.new("Slime green")

 mesh_59 = Instance.new("SpecialMesh", wedge_19)
mesh_59.MeshType = Enum.MeshType.Wedge

 wedge_20 = Instance.new("WedgePart", mjeep)
wedge_20.Velocity = Vector3.new(-1.515, 0.012, -0.793)
wedge_20.FormFactor = Enum.FormFactor.Plate
wedge_20.CanCollide = false
wedge_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.Friction = 0.3
wedge_20.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_20.Material = Enum.Material.Metal
wedge_20.Size = Vector3.new(1, 0.4, 1)
wedge_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_20.CFrame = CFrame.new(114.686, 2.602, 22.677)* CFrame.Angles(-3.0763576030731, -1.5512616634369, 0.065222546458244)
wedge_20.BrickColor = BrickColor.new("Slime green")

 mesh_60 = Instance.new("SpecialMesh", wedge_20)
mesh_60.MeshType = Enum.MeshType.Wedge

 wedge_21 = Instance.new("WedgePart", mjeep)
wedge_21.FormFactor = Enum.FormFactor.Plate
wedge_21.CanCollide = false
wedge_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.Friction = 0.3
wedge_21.Material = Enum.Material.Metal
wedge_21.Size = Vector3.new(1, 0.4, 1)
wedge_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_21.CFrame = CFrame.new(104.552, 2.615, 29.482)* CFrame.Angles(-3.0763599872589, -1.5512647628784, 0.065220035612583)
wedge_21.BrickColor = BrickColor.new("Slime green")

 mesh_61 = Instance.new("SpecialMesh", wedge_21)
mesh_61.MeshType = Enum.MeshType.Wedge

 wedge_22 = Instance.new("WedgePart", mjeep)
wedge_22.Velocity = Vector3.new(-3.755, 0.007, -0.127)
wedge_22.FormFactor = Enum.FormFactor.Plate
wedge_22.CanCollide = false
wedge_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.Friction = 0.3
wedge_22.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_22.Material = Enum.Material.Metal
wedge_22.Name = "bumper"
wedge_22.Size = Vector3.new(6, 1.6, 2)
wedge_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_22.CFrame = CFrame.new(103.619, 1.416, 25.962)* CFrame.Angles(0.065235689282417, 1.5512616634369, 3.0763695240021)
wedge_22.BrickColor = BrickColor.new("Slime green")

 mesh_62 = Instance.new("SpecialMesh", wedge_22)
mesh_62.MeshType = Enum.MeshType.Wedge

 wedge_23 = Instance.new("WedgePart", mjeep)
wedge_23.Velocity = Vector3.new(-1.656, 0.012, -0.796)
wedge_23.FormFactor = Enum.FormFactor.Plate
wedge_23.CanCollide = false
wedge_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.Friction = 0.3
wedge_23.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_23.Material = Enum.Material.Metal
wedge_23.Size = Vector3.new(1, 0.4, 1)
wedge_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_23.CFrame = CFrame.new(113.986, 2.303, 22.663)* CFrame.Angles(1.5708210468292, -0.0012703418033198, 1.5902481079102)
wedge_23.BrickColor = BrickColor.new("Slime green")

 mesh_63 = Instance.new("SpecialMesh", wedge_23)
mesh_63.MeshType = Enum.MeshType.Wedge

 wedge_24 = Instance.new("WedgePart", mjeep)
wedge_24.Velocity = Vector3.new(-2.758, -0.003, 0.4)
wedge_24.FormFactor = Enum.FormFactor.Plate
wedge_24.CanCollide = false
wedge_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.Transparency = 1
wedge_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.Friction = 0.3
wedge_24.RotVelocity = Vector3.new(0, 0.203, 0.003)
wedge_24.Material = Enum.Material.Metal
wedge_24.Size = Vector3.new(1, 0.4, 2)
wedge_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_24.CFrame = CFrame.new(108.572, 4.009, 28.56)* CFrame.Angles(-3.076357126236, -1.5512616634369, -3.0763697624207)
wedge_24.BrickColor = BrickColor.new("Slime green")

 mesh_64 = Instance.new("SpecialMesh", wedge_24)
mesh_64.MeshType = Enum.MeshType.Wedge

 gunnerseat = Instance.new("Seat", mjeep)
gunnerseat.Friction = 0.3
gunnerseat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
gunnerseat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
gunnerseat.TopSurface = Enum.SurfaceType.SmoothNoOutlines
gunnerseat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
gunnerseat.BrickColor = BrickColor.new("Slime green")
gunnerseat.Material = Enum.Material.Metal
gunnerseat.Size = Vector3.new(2, 2.2, 2)
gunnerseat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
gunnerseat.CFrame = CFrame.new(112.582, 2.105, 27.537)* CFrame.Angles(0.065243504941463, 1.5513044595718, -0.065230898559093)
gunnerseat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
gunnerseat.Name = "gunnerseat"

faxlepos = Instance.new("Part", mjeep)
faxlepos.Velocity = Vector3.new(-3.452, 0.006, -0.121)
faxlepos.FormFactor = Enum.FormFactor.Symmetric
faxlepos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
faxlepos.TopSurface = Enum.SurfaceType.SmoothNoOutlines
faxlepos.RotVelocity = Vector3.new(0, 0.203, 0.003)
faxlepos.Material = Enum.Material.Metal
faxlepos.Size = Vector3.new(0.5, 7.275, 0.5)
faxlepos.Name = "faxlepos"
faxlepos.CanCollide = false
faxlepos.Transparency = 1
faxlepos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
faxlepos.CFrame = CFrame.new(105.618, 1, 26.032)* CFrame.Angles(0.065231040120125, 1.5512616634369, -1.6360148191452)
faxlepos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
faxlepos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
faxlepos.BrickColor = BrickColor.new("Black")
faxlepos.Friction = 0.3
faxlepos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

baxlepos = Instance.new("Part", mjeep)
baxlepos.FormFactor = Enum.FormFactor.Symmetric
baxlepos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
baxlepos.TopSurface = Enum.SurfaceType.SmoothNoOutlines
baxlepos.Material = Enum.Material.Metal
baxlepos.Size = Vector3.new(0.5, 7.275, 0.5)
baxlepos.Name = "baxlepos"
baxlepos.CanCollide = false
baxlepos.Transparency = 1
baxlepos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
baxlepos.CFrame = CFrame.new(115.628, 1, 26.242)* CFrame.Angles(0.065231040120125, 1.5512616634369, -1.6360148191452)
baxlepos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
baxlepos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
baxlepos.BrickColor = BrickColor.new("Black")
baxlepos.Friction = 0.3
baxlepos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

parte = Instance.new("Part", mjeep)
parte.FormFactor = Enum.FormFactor.Symmetric
parte.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
parte.TopSurface = Enum.SurfaceType.SmoothNoOutlines
parte.Material = Enum.Material.Metal
parte.Size = Vector3.new(1, 1, 1)
parte.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
parte.CFrame = CFrame.new(117.85, 1.2, 28.45)* CFrame.Angles(3.1415772438049, -9.9065480753779e-005, -1.5707960128784)
parte.RightSurface = Enum.SurfaceType.SmoothNoOutlines
parte.BackSurface = Enum.SurfaceType.SmoothNoOutlines
parte.Friction = 0.3
parte.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

mesh = Instance.new("CylinderMesh", parte)
mesh.Scale = Vector3.new(0.7, 1.1, 0.7)

muffler = Instance.new("Part", mjeep)
muffler.FormFactor = Enum.FormFactor.Symmetric
muffler.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
muffler.TopSurface = Enum.SurfaceType.SmoothNoOutlines
muffler.Material = Enum.Material.SmoothPlastic
muffler.Size = Vector3.new(1, 0.2, 1)
muffler.Name = "Muffler"
muffler.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
muffler.CFrame = CFrame.new(118.35, 1.2, 28.45)* CFrame.Angles(3.1415772438049, -9.0658781118691e-005, -1.5707960128784)
muffler.RightSurface = Enum.SurfaceType.SmoothNoOutlines
muffler.BackSurface = Enum.SurfaceType.SmoothNoOutlines
muffler.BrickColor = BrickColor.new("Really black")
muffler.Friction = 0.3
muffler.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

mesh_2 = Instance.new("CylinderMesh", muffler)
mesh_2.Scale = Vector3.new(0.5, 0.7, 0.5)

local musmoke = Instance.new("Smoke", mjeep.Muffler)
musmoke.Color = Color3.new(0.184314, 0.184314, 0.184314)
musmoke.Opacity = 0.2
musmoke.RiseVelocity = 0.1
musmoke.Size = 0.1
musmoke.Enabled = false

headlight = Instance.new("Part", mjeep)
headlight.FormFactor = Enum.FormFactor.Plate
headlight.TopSurface = Enum.SurfaceType.Weld
headlight.Reflectance = 0.3
headlight.Size = Vector3.new(1, 0.4, 1)
headlight.Name = "Headlight"
headlight.CFrame = CFrame.new(102.669, 2.418, 23.64)* CFrame.Angles(3.1415803432465, 0.019450379535556, -1.5695254802704)
headlight.BrickColor = BrickColor.new("Cool yellow")
headlight.Friction = 0.3
headlight.BottomSurface = Enum.SurfaceType.Weld

mesh = Instance.new("SpecialMesh", headlight)

headlight_2 = Instance.new("Part", mjeep)
headlight_2.FormFactor = Enum.FormFactor.Plate
headlight_2.TopSurface = Enum.SurfaceType.Weld
headlight_2.Reflectance = 0.3
headlight_2.Size = Vector3.new(1, 0.4, 1)
headlight_2.Name = "Headlight2"
headlight_2.CFrame = CFrame.new(102.669, 2.418, 28.34)* CFrame.Angles(3.1415803432465, 0.019450379535556, -1.5695254802704)
headlight_2.BrickColor = BrickColor.new("Cool yellow")
headlight_2.Friction = 0.3
headlight_2.BottomSurface = Enum.SurfaceType.Weld

mesh_2 = Instance.new("SpecialMesh", headlight_2)


mjeep:BreakJoints()
frontwheels:BreakJoints()
backwheels:BreakJoints()

local prev
local parts = mjeep:GetChildren()

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
mjeep:MakeJoints()

local prev
local parts = backwheels:GetChildren()

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
backwheels:MakeJoints()

local prev
local parts = frontwheels:GetChildren()

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
frontwheels:MakeJoints()

weld(frontwheels.faxle, mjeep.faxlepos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
frontwheels.faxle.Weld.Name = "Weld2"

weld(backwheels.baxle, mjeep.baxlepos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
backwheels.baxle.Weld.Name = "Weld2"

local engine = mjeep.driverseat
local frontwheels = mjeep.frontwheels
local backwheels = mjeep.backwheels
mjeep.Parent = char
engine.CFrame = char.Torso.CFrame*CFrame.new(0,0,2)

local bav = Instance.new("BodyAngularVelocity",engine)
bav.MaxTorque = Vector3.new(0,0,0)
bav.P = 100
bav.AngularVelocity = Vector3.new(0,0,0)
local bv = Instance.new("BodyVelocity",engine)
bv.MaxForce = Vector3.new(0,0,0)
bv.P = 100
bv.Velocity = Vector3.new(0.16,0,0.16)
local enginesound = Instance.new("Sound")
enginesound.SoundId="rbxassetid://532147820"
enginesound.PlayOnRemove=false
enginesound.Volume=0.8
enginesound.Looped=true
enginesound.Pitch = 1
enginesound.Parent=engine
local squealsound = Instance.new("Sound")
squealsound.SoundId="http://www.roblox.com/asset/?id=31245495"
squealsound.PlayOnRemove=false
squealsound.Volume=0.8
squealsound.Looped=false
squealsound.Pitch = 1
squealsound.Parent=engine
local firesound = Instance.new("Sound")
firesound.SoundId="rbxassetid://192104941"
firesound.PlayOnRemove=false
firesound.Volume=0.8
firesound.Looped=true
firesound.Pitch = 1
firesound.Parent=engine
local explosionsound = Instance.new("Sound")
explosionsound.SoundId="rbxassetid://262562442"
explosionsound.PlayOnRemove=false
explosionsound.Volume=0.8
explosionsound.Looped=false
explosionsound.Pitch = 1
explosionsound.Parent=engine

local brake=Instance.new("Sound")
brake.SoundId="http://www.roblox.com/asset/?id=211288608"
brake.PlayOnRemove=false
brake.Volume=0.75
brake.Looped=true
brake.Pitch = 1
brake.Parent=engine
local horn=Instance.new("Sound")
horn.SoundId="http://www.roblox.com/asset/?id=200530606"
horn.PlayOnRemove=false
horn.Volume=0.9
horn.Looped=true
horn.Pitch = 1
horn.Parent=engine
local crash=Instance.new("Sound")
crash.SoundId="http://www.roblox.com/asset/?id=305526724"
crash.PlayOnRemove=false
crash.Volume=0.9
crash.Looped=false
crash.Pitch = 1
crash.Parent=engine

function muffleranim()
	while engineon == true do wait()
		muffler.Mesh.Offset = Vector3.new(-0.05,0,0)
		parte.Mesh.Offset = Vector3.new(-0.05,0,0)
		wait()
		muffler.Mesh.Offset = Vector3.new(0,0,0)
		parte.Mesh.Offset = Vector3.new(0,0,0)
	end
end

mouse.KeyDown:connect(function(key)
if key == "y" and engineon == false then
engineon = true
enginesound:Play()
mjeep.door1.CanCollide = true
mjeep.door2.CanCollide = true
musmoke.Enabled = true
muffleranim()
end
end)
mouse.KeyDown:connect(function(key)
if key == "u" and engineon == true then
engineon = false
enginesound:Stop()
mjeep.door1.CanCollide = false
mjeep.door2.CanCollide = false
musmoke.Enabled = false
end
end)

mouse.KeyDown:connect(function(key)
if key == "w" and engineon == true and spressed == false then
	wpressed = true
	bv.MaxForce = Vector3.new(forcelevel,0,forcelevel)
	while wpressed == true do wait(.08)
	accel = accel + 2
	if accel >=1 then enginesound.PlaybackSpeed = 1.5 end
	if accel >=35 then enginesound.PlaybackSpeed = 2 end
	if accel >=90 then enginesound.PlaybackSpeed = 2.5 end
	wheelaccel = wheelaccel + .5
	if accel >=accellimit then accel = accellimit end
	bv.Velocity = (engine.CFrame.lookVector * accel)
	frontwheels.faxle.Weld2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	backwheels.baxle.Weld2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	end
	end
end)
mouse.KeyUp:connect(function(key)
if key == "w" and engineon == true then
	wpressed = false
	while wpressed == false and accel >0 do wait()
	accel = accel - 2.4
	if accel >=1 then enginesound.PlaybackSpeed = 1 end
	if accel >=35 then enginesound.PlaybackSpeed = 2 end
	if accel >=90 then enginesound.PlaybackSpeed = 2.5 end
	wheelaccel = wheelaccel + .5
	if accel <0 then accel = 0 end
	bv.Velocity = (engine.CFrame.lookVector * accel)
	frontwheels.faxle.Weld2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	backwheels.baxle.Weld2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "s" and engineon == true and wpressed == false then
	spressed = true
	bv.MaxForce = Vector3.new(forcelevel,0,forcelevel)
	while spressed == true do wait(.06)
		accel = accel - 2
		wheelaccel = wheelaccel - .5
if accel <=-accellimit then accel = -accellimit end
bv.Velocity = (engine.CFrame.lookVector * accel)
	frontwheels.faxle.Weld2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	backwheels.baxle.Weld2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	end
	end
end)
mouse.KeyUp:connect(function(key)
if key == "s" and engineon == true then
	spressed = false
	while spressed == false and accel <0 do wait()
	accel = accel + 2.4
	wheelaccel = wheelaccel - .5
	if accel >0 then accel = 0 end
	bv.Velocity = (engine.CFrame.lookVector * accel)
	frontwheels.faxle.Weld2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	backwheels.baxle.Weld2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),wheelaccel,0)
	end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "a" and engineon == true then
	apressed = true
	angle = .8
	bav.AngularVelocity = Vector3.new(0,angle,0)
		bav.MaxTorque = Vector3.new(0,angletorque,0)
		squealsound:Play()
end
end)

mouse.KeyUp:connect(function(key)
if key == "a" and engineon == true then
	angle = 0
	apressed = false
	bav.MaxTorque = Vector3.new(0,0,0)
end
end)

mouse.KeyDown:connect(function(key)
if key == "d" and engineon == true then
	dpressed = true
	angle = .8
	bav.AngularVelocity = Vector3.new(0,-angle,0)
		bav.MaxTorque = Vector3.new(0,-angletorque,0)
		squealsound:Play()
end
end)

mouse.KeyUp:connect(function(key)
if key == "d" and engineon == true then
	angle = 0
	dpressed = false
	bav.MaxTorque = Vector3.new(0,0,0)
end
end)

mouse.KeyDown:connect(function(key)
if key == "p" then
	ppressed = ppressed + 1
	if ppressed == 1 then
		mjeep.W5.CanCollide = true
		mjeep.W1.CanCollide = false
		mjeep.W6.CanCollide = true
		mjeep.W2.CanCollide = false
		mjeep.W7.CanCollide = true
		mjeep.W3.CanCollide = false
		mjeep.W8.CanCollide = true
		mjeep.W4.CanCollide = false
		
		mjeep.W5.Transparency = 0
		mjeep.W1.Transparency = 1
		mjeep.W6.Transparency = 0
		mjeep.W2.Transparency = 1
		mjeep.W7.Transparency = 0.8
		mjeep.W3.Transparency = 1
		mjeep.W8.Transparency = 0
		mjeep.W4.Transparency = 1
	end
	if ppressed == 2 then
		ppressed = 0
		mjeep.W5.CanCollide = false
		mjeep.W1.CanCollide = true
		mjeep.W6.CanCollide = false
		mjeep.W2.CanCollide = true
		mjeep.W7.CanCollide = false
		mjeep.W3.CanCollide = true
		mjeep.W8.CanCollide = false
		mjeep.W4.CanCollide = true
		
		mjeep.W5.Transparency = 1
		mjeep.W1.Transparency = 0
		mjeep.W6.Transparency = 1
		mjeep.W2.Transparency = 0
		mjeep.W7.Transparency = 1
		mjeep.W3.Transparency = 0.8
		mjeep.W8.Transparency = 1
		mjeep.W4.Transparency = 0
	end
end
end)

mjeep.bumper.Touched:connect(function(h)
	if h.Parent:FindFirstChild("Humanoid")==nil then 
	if Vector3.new(mjeep.driverseat.Velocity.x,0,mjeep.driverseat.Velocity.z).magnitude > 6 then
	carhealth = carhealth - 5
	crash:Play()
	print("Car Health:"..carhealth)
	if carhealth <=0 and exploding == false then
		exploding = true
		local fire = Instance.new("Fire",mjeep.Hood)
		engineon = false
		enginesound:Stop()
		mjeep.door1.CanCollide = false
		mjeep.door2.CanCollide = false
		musmoke.Enabled = false
		firesound:Play()
		wait(4)
		firesound:Stop()
		local explosion = Instance.new("Explosion",mjeep.Hood)
		explosionsound:Play()
		explosion.Position = mjeep.Hood.Position
		mjeep.Parent = workspace
		script:Destroy()
	end
	end
	end
end)

mjeep.bumper.Touched:connect(function(h)
	if Vector3.new(mjeep.driverseat.Velocity.x,0,mjeep.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(1,10))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mjeep.driverseat.CFrame.lookVector*35 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)
frontwheels.fwl.Touched:connect(function(h)
	if Vector3.new(mjeep.driverseat.Velocity.x,0,mjeep.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(1,5))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mjeep.driverseat.CFrame.lookVector*35 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)
frontwheels.fwr.Touched:connect(function(h)
	if Vector3.new(mjeep.driverseat.Velocity.x,0,mjeep.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(1,5))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mjeep.driverseat.CFrame.lookVector*35 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)
backwheels.bwr.Touched:connect(function(h)
	if Vector3.new(mjeep.driverseat.Velocity.x,0,mjeep.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(1,5))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mjeep.driverseat.CFrame.lookVector*35 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)
backwheels.bwl.Touched:connect(function(h)
	if Vector3.new(mjeep.driverseat.Velocity.x,0,mjeep.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(5,10))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mjeep.driverseat.CFrame.lookVector*35 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "h" and engineon == true then
	horn:Play()
end
end)

mouse.KeyUp:connect(function(key)
if key == "h" and engineon == true then
	horn:Stop()
end
end)

mouse.KeyUp:connect(function(key)
if key == "f" then
	fpressed = fpressed + 1
	print(fpressed)
	print("flip correction")
	if fpressed == 1 then
	engine.CFrame = CFrame.new(engine.CFrame.x,engine.CFrame.y,engine.CFrame.z)*CFrame.Angles(math.rad(180),0,0)
	end
	if fpressed == 2 then
		fpressed = 0
		engine.CFrame = CFrame.new(engine.CFrame.x,engine.CFrame.y,engine.CFrame.z)*CFrame.Angles(math.rad(-80),0,0)
	end
end
end)

mouse.KeyDown:connect(function(key)
if key == "b" and engineon == true then
	bpressed = true
	brake:Play()
	while bpressed == true and accel >=1 do wait(.04)
		accellimit = accellimit - 5

		if accellimit <=1 then brake:Stop() end
	end
end
end)
mouse.KeyUp:connect(function(key)
if key == "b" and engineon == true then
	bpressed = false
	brake:Stop()
	accellimit = 90
end
end)