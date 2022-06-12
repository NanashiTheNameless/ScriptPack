local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local engineon = false
local wpressed = false
local spressed = false
local forcelevel = 4e+6
local accel = 0
local accellimit = 30
local angle = 0
local wheelaccel = 0
local angletorque = 5850000
local kpressed = 0
local lowerrightfire = false
local lowerleftfire = false
local rotateangle2 = 0
local rotateangle = 0
local mainfire1 = false
local mainfire2 = false
local spikeenabled = false
local camera = game.Workspace.CurrentCamera
local hit = false

local zpressed = 0
local xpressed = 0
local epressed = false
local qpressed = false
local hpressed = 0
local gpressed = false

function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

local mtank = Instance.new("Model", workspace)
mtank.Name = "MTank"

 part = Instance.new("WedgePart", mtank)
part.FormFactor = Enum.FormFactor.Symmetric
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part.Friction = 0.3
part.Material = Enum.Material.Metal
part.Size = Vector3.new(3, 1, 1)
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.Name = "Part"
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(58.505, 2.931, 91.487)* CFrame.Angles(-1.5704523324966, 0.00039538025157526, 1.5697255134583)
part.BrickColor = BrickColor.new("Grime")

 frontwheels = Instance.new("Model", mtank)
frontwheels.Name = "frontwheels"

faxle = Instance.new("Part", frontwheels)
faxle.FormFactor = Enum.FormFactor.Symmetric
faxle.CanCollide = false
faxle.TopSurface = Enum.SurfaceType.Smooth
faxle.Size = Vector3.new(8.498, 1, 1)
faxle.Name = "faxle"
faxle.CFrame = CFrame.new(60.393, 2.5, 96.979)* CFrame.Angles(1.5708076953888, -2.1010178897996e-005, -1.5707774162292)
faxle.BrickColor = BrickColor.new("Black")
faxle.Friction = 0.3
faxle.BottomSurface = Enum.SurfaceType.Smooth

 fwl = Instance.new("Part", frontwheels)
fwl.FormFactor = Enum.FormFactor.Custom
fwl.CanCollide = false
fwl.TopSurface = Enum.SurfaceType.Smooth
fwl.Material = Enum.Material.Concrete
fwl.Size = Vector3.new(0.65, 3, 4.5)
fwl.Name = "fwl"
fwl.CFrame = CFrame.new(60.393, 2.628, 101.478)* CFrame.Angles(0.00025655250647105, -1.5707963705063, 0)
fwl.Friction = 0.3
fwl.BottomSurface = Enum.SurfaceType.Smooth

 mesh = Instance.new("SpecialMesh", fwl)
mesh.Scale = Vector3.new(5.5, 5.5, 5.5)
mesh.MeshId = "http://www.roblox.com/asset/?id=122202439"
mesh.TextureId = "http://www.roblox.com/asset/?id=122185866"
mesh.MeshType = Enum.MeshType.FileMesh

 fwr = Instance.new("Part", frontwheels)
fwr.FormFactor = Enum.FormFactor.Custom
fwr.CanCollide = false
fwr.TopSurface = Enum.SurfaceType.Smooth
fwr.Material = Enum.Material.Concrete
fwr.Size = Vector3.new(0.65, 3, 4.5)
fwr.Name = "fwr"
fwr.CFrame = CFrame.new(60.393, 2.628, 92.478)* CFrame.Angles(0.00025655250647105, -1.5707963705063, 0)
fwr.Friction = 0.3
fwr.BottomSurface = Enum.SurfaceType.Smooth

 mesh_2 = Instance.new("SpecialMesh", fwr)
mesh_2.Scale = Vector3.new(5.5, 5.5, 5.5)
mesh_2.MeshId = "http://www.roblox.com/asset/?id=122202439"
mesh_2.TextureId = "http://www.roblox.com/asset/?id=122185866"
mesh_2.MeshType = Enum.MeshType.FileMesh

 faxlepos = Instance.new("Part", mtank)
faxlepos.FormFactor = Enum.FormFactor.Symmetric
faxlepos.CanCollide = false
faxlepos.TopSurface = Enum.SurfaceType.Smooth
faxlepos.Size = Vector3.new(8.498, 1, 1)
faxlepos.Name = "faxlepos"
faxlepos.Transparency = 1
faxlepos.CFrame = CFrame.new(60.393, 2.5, 96.979)* CFrame.Angles(1.5708076953888, -2.1010178897996e-005, -1.5707774162292)
faxlepos.BrickColor = BrickColor.new("Black")
faxlepos.Friction = 0.3
faxlepos.BottomSurface = Enum.SurfaceType.Smooth

 baxlepos = Instance.new("Part", mtank)
baxlepos.FormFactor = Enum.FormFactor.Symmetric
baxlepos.CanCollide = false
baxlepos.TopSurface = Enum.SurfaceType.Smooth
baxlepos.Size = Vector3.new(8.498, 1, 1)
baxlepos.Name = "baxlepos"
baxlepos.CFrame = CFrame.new(75.393, 2.5, 96.479)* CFrame.Angles(1.5708076953888, -2.1010178897996e-005, -1.5707774162292)
baxlepos.BrickColor = BrickColor.new("Black")
baxlepos.Friction = 0.3
baxlepos.BottomSurface = Enum.SurfaceType.Smooth
baxlepos.Transparency = 1


 backwheels = Instance.new("Model", mtank)
backwheels.Name = "backwheels"

baxle = Instance.new("Part", backwheels)
baxle.FormFactor = Enum.FormFactor.Symmetric
baxle.CanCollide = false
baxle.TopSurface = Enum.SurfaceType.Smooth
baxle.Size = Vector3.new(8.498, 1, 1)
baxle.Name = "baxle"
baxle.CFrame = CFrame.new(75.393, 2.5, 96.479)* CFrame.Angles(1.5708076953888, -2.1010178897996e-005, -1.5707774162292)
baxle.BrickColor = BrickColor.new("Black")
baxle.Friction = 0.3
baxle.BottomSurface = Enum.SurfaceType.Smooth
baxle.Transparency = 1

bwl = Instance.new("Part", backwheels)
bwl.FormFactor = Enum.FormFactor.Custom
bwl.CanCollide = false
bwl.TopSurface = Enum.SurfaceType.Smooth
bwl.Material = Enum.Material.Concrete
bwl.Size = Vector3.new(0.65, 3, 4.5)
bwl.Name = "bwl"
bwl.CFrame = CFrame.new(75.393, 2.628, 101.478)* CFrame.Angles(0.00025655250647105, -1.5707963705063, 0)
bwl.Friction = 0.3
bwl.BottomSurface = Enum.SurfaceType.Smooth

 mesh = Instance.new("SpecialMesh", bwl)
mesh.Scale = Vector3.new(5.5, 5.5, 5.5)
mesh.MeshId = "http://www.roblox.com/asset/?id=122202439"
mesh.TextureId = "http://www.roblox.com/asset/?id=122185866"
mesh.MeshType = Enum.MeshType.FileMesh

bwr = Instance.new("Part", backwheels)
bwr.FormFactor = Enum.FormFactor.Custom
bwr.CanCollide = false
bwr.TopSurface = Enum.SurfaceType.Smooth
bwr.Material = Enum.Material.Concrete
bwr.Size = Vector3.new(0.65, 3, 4.5)
bwr.Name = "bwr"
bwr.CFrame = CFrame.new(75.393, 2.628, 92.478)* CFrame.Angles(0.00025655250647105, -1.5707963705063, 0)
bwr.Friction = 0.3
bwr.BottomSurface = Enum.SurfaceType.Smooth

 mesh_2 = Instance.new("SpecialMesh", bwr)
mesh_2.Scale = Vector3.new(5.5, 5.5, 5.5)
mesh_2.MeshId = "http://www.roblox.com/asset/?id=122202439"
mesh_2.TextureId = "http://www.roblox.com/asset/?id=122185866"
mesh_2.MeshType = Enum.MeshType.FileMesh

 spike1 = Instance.new("Part", mtank)
spike1.FormFactor = Enum.FormFactor.Custom
spike1.LeftSurface = Enum.SurfaceType.Weld
spike1.TopSurface = Enum.SurfaceType.Weld
spike1.Material = Enum.Material.Metal
spike1.Size = Vector3.new(1, 8, 1)
spike1.Name = "Spike1"
spike1.CanCollide = false
spike1.FrontSurface = Enum.SurfaceType.Weld
spike1.CFrame = CFrame.new(74.834, 3.714, 89.407)* CFrame.Angles(-1.5708339214325, -1.5707963705063, 0)
spike1.RightSurface = Enum.SurfaceType.Weld
spike1.BackSurface = Enum.SurfaceType.Weld
spike1.BrickColor = BrickColor.new("Dark stone grey")
spike1.Friction = 0.3
spike1.BottomSurface = Enum.SurfaceType.Weld

 mesh_9 = Instance.new("SpecialMesh", spike1)
mesh_9.Scale = Vector3.new(0.6, 1, 0.6)
mesh_9.MeshId = "http://www.roblox.com/asset/?id=1033714"
mesh_9.MeshType = Enum.MeshType.FileMesh

 part_6 = Instance.new("Part", mtank)
part_6.FormFactor = Enum.FormFactor.Symmetric
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Material = Enum.Material.Metal
part_6.Size = Vector3.new(1, 2.634, 18.138)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(69.264, 4.53, 90.302)* CFrame.Angles(-3.118275642395, -1.5698198080063, -3.1185505390167)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Dark stone grey")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_10 = Instance.new("BlockMesh", part_6)

 part_7 = Instance.new("Part", mtank)
part_7.FormFactor = Enum.FormFactor.Symmetric
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Material = Enum.Material.Metal
part_7.Size = Vector3.new(1, 2.634, 18.138)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(69.263, 4.525, 103.702)* CFrame.Angles(-3.1232855319977, -1.5698198080063, -3.1235558986664)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Dark stone grey")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("BlockMesh", part_7)

 part_8 = Instance.new("Part", mtank)
part_8.FormFactor = Enum.FormFactor.Custom
part_8.Size = Vector3.new(3.2, 4, 3.2)
part_8.CFrame = CFrame.new(83.891, 5.547, 92.318)* CFrame.Angles(1.5706930160522, -0.32159259915352, 3.1408815383911)
part_8.BrickColor = BrickColor.new("Dark stone grey")
part_8.Friction = 0.3

 mesh_12 = Instance.new("SpecialMesh", part_8)
mesh_12.Scale = Vector3.new(4, 4, 4)
mesh_12.MeshId = "http://www.roblox.com/asset/?id=103919751"
mesh_12.TextureId = "rbxassetid://138327000"
mesh_12.MeshType = Enum.MeshType.FileMesh

 part_9 = Instance.new("Part", mtank)
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Reflectance = 0.1
part_9.Material = Enum.Material.Metal
part_9.Size = Vector3.new(2.103, 0.4, 2.343)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(56.597, 4.809, 100.306)* CFrame.Angles(3.1246223449707, -0.0038618966937065, -1.580332159996)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Dark stone grey")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_10 = Instance.new("Part", mtank)
part_10.FormFactor = Enum.FormFactor.Symmetric
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Material = Enum.Material.Metal
part_10.Size = Vector3.new(4, 4, 3)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(62.499, 4.431, 96.994)* CFrame.Angles(0.024864688515663, 1.5697045326233, -0.024317564442754)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Dark stone grey")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_13 = Instance.new("BlockMesh", part_10)
mesh_13.Scale = Vector3.new(1.1, 1.15, 1.1)

rotatorcopy = Instance.new("Part", mtank)
rotatorcopy.FormFactor = Enum.FormFactor.Symmetric
rotatorcopy.CanCollide = false
rotatorcopy.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotatorcopy.TopSurface = Enum.SurfaceType.SmoothNoOutlines
rotatorcopy.Material = Enum.Material.Metal
rotatorcopy.Size = Vector3.new(4, 2, 4)
rotatorcopy.Name = "rotatorcopy"
rotatorcopy.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotatorcopy.CFrame = CFrame.new(74, 6.169, 97)* CFrame.Angles(0.00026474674814381, 1.5707963705063, 0)
rotatorcopy.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotatorcopy.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotatorcopy.BrickColor = BrickColor.new("Dark stone grey")
rotatorcopy.Friction = 0.3
rotatorcopy.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("CylinderMesh", rotatorcopy)
mesh_14.Scale = Vector3.new(1.4, 1.3, 1.4)

 part_11 = Instance.new("WedgePart", mtank)
part_11.FormFactor = Enum.FormFactor.Symmetric
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Friction = 0.3
part_11.Material = Enum.Material.Metal
part_11.Size = Vector3.new(8, 4, 1)
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Name = "Part"
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(79.999, 0.929, 97.013)* CFrame.Angles(-1.5704798698425, 0.00010843898780877, -1.5717378854752)
part_11.BrickColor = BrickColor.new("Dark stone grey")

 part_12 = Instance.new("WedgePart", mtank)
part_12.FormFactor = Enum.FormFactor.Symmetric
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Friction = 0.3
part_12.Material = Enum.Material.Metal
part_12.Size = Vector3.new(8, 1, 5)
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Name = "Part"
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(58.499, 0.929, 96.989)* CFrame.Angles(0.005395220592618, 1.5699505805969, 3.136513710022)
part_12.BrickColor = BrickColor.new("Dark stone grey")

 part_13 = Instance.new("WedgePart", mtank)
part_13.FormFactor = Enum.FormFactor.Symmetric
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Friction = 0.3
part_13.Material = Enum.Material.Metal
part_13.Size = Vector3.new(3, 1, 1)
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Name = "Part"
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(79.501, 2.928, 102.511)* CFrame.Angles(-3.1412353515625, -1.5707963705063, 0)
part_13.BrickColor = BrickColor.new("Grime")

 part_14 = Instance.new("WedgePart", mtank)
part_14.FormFactor = Enum.FormFactor.Symmetric
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.Friction = 0.3
part_14.Material = Enum.Material.Metal
part_14.Size = Vector3.new(3, 1, 1)
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.Name = "Part"
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(79.488, 2.933, 91.497)* CFrame.Angles(0.20819596946239, -1.5691049098969, -2.9338436126709)
part_14.BrickColor = BrickColor.new("Grime")

 part_15 = Instance.new("WedgePart", mtank)
part_15.FormFactor = Enum.FormFactor.Symmetric
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Friction = 0.3
part_15.Material = Enum.Material.Metal
part_15.Size = Vector3.new(8, 1, 2)
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Name = "Part"
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(82.496, 2.428, 97.02)* CFrame.Angles(-1.5704001188278, 0.00027684145607054, -1.5710853338242)
part_15.BrickColor = BrickColor.new("Dark stone grey")

 part_16 = Instance.new("Part", mtank)
part_16.FormFactor = Enum.FormFactor.Symmetric
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.Material = Enum.Material.Metal
part_16.Size = Vector3.new(8, 2, 4)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(79.998, 2.429, 97.012)* CFrame.Angles(-3.1232855319977, -1.5698198080063, -3.1235558986664)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Dark stone grey")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_15 = Instance.new("BlockMesh", part_16)

 part_17 = Instance.new("Part", mtank)
part_17.FormFactor = Enum.FormFactor.Symmetric
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.Material = Enum.Material.Metal
part_17.Size = Vector3.new(8, 2, 17)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(69.498, 1.429, 97.002)* CFrame.Angles(0.018307087942958, 1.5698198080063, -0.018036684021354)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Dark stone grey")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("BlockMesh", part_17)

 part_18 = Instance.new("Part", mtank)
part_18.FormFactor = Enum.FormFactor.Symmetric
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.Material = Enum.Material.Metal
part_18.Size = Vector3.new(14, 2, 4)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(80.999, 4.429, 97.014)* CFrame.Angles(-3.119649887085, -1.5697045326233, -3.1199164390564)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Grime")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("BlockMesh", part_18)

 part_19 = Instance.new("WedgePart", mtank)
part_19.FormFactor = Enum.FormFactor.Symmetric
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.Friction = 0.3
part_19.Material = Enum.Material.Metal
part_19.Size = Vector3.new(3, 1, 1)
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.Name = "Part"
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(58.495, 2.928, 102.487)* CFrame.Angles(-1.5704523324966, 0.00039538025157526, 1.5697255134583)
part_19.BrickColor = BrickColor.new("Grime")

 part_20 = Instance.new("Part", mtank)
part_20.FormFactor = Enum.FormFactor.Symmetric
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.Material = Enum.Material.Metal
part_20.Size = Vector3.new(3, 3, 20)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(69.004, 3.93, 91.502)* CFrame.Angles(-3.1232855319977, -1.5698198080063, -3.1235558986664)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Grime")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("BlockMesh", part_20)

 part_21 = Instance.new("WedgePart", mtank)
part_21.FormFactor = Enum.FormFactor.Symmetric
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Friction = 0.3
part_21.Material = Enum.Material.Metal
part_21.Size = Vector3.new(14, 3, 1)
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Name = "Part"
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(83.499, 4.928, 97.019)* CFrame.Angles(0.25741651654243, -1.5703080892563, -2.8845512866974)
part_21.BrickColor = BrickColor.new("Grime")

 part_22 = Instance.new("Part", mtank)
part_22.FormFactor = Enum.FormFactor.Symmetric
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.Material = Enum.Material.Metal
part_22.Size = Vector3.new(3, 3, 20)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(68.993, 3.928, 102.502)* CFrame.Angles(-3.1232855319977, -1.5698198080063, -3.1235558986664)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Grime")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("BlockMesh", part_22)

 part_23 = Instance.new("WedgePart", mtank)
part_23.FormFactor = Enum.FormFactor.Symmetric
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Friction = 0.3
part_23.Material = Enum.Material.Metal
part_23.Size = Vector3.new(8, 1, 2)
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Name = "Part"
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(55.502, 2.428, 97.002)* CFrame.Angles(-1.5704007148743, 0.0001785616914276, 1.5705235004425)
part_23.BrickColor = BrickColor.new("Grime")
part_23.Name = "fbumper"

 part_24 = Instance.new("WedgePart", mtank)
part_24.FormFactor = Enum.FormFactor.Symmetric
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Friction = 0.3
part_24.Material = Enum.Material.Metal
part_24.Size = Vector3.new(14, 7, 1)
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Name = "Part"
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(80.496, 6.925, 97.037)* CFrame.Angles(1.5711652040482, -0.00017984020814765, 1.5703016519547)
part_24.BrickColor = BrickColor.new("Grime")

 part_25 = Instance.new("Part", mtank)
part_25.FormFactor = Enum.FormFactor.Custom
part_25.Size = Vector3.new(3.2, 4, 3.2)
part_25.CFrame = CFrame.new(83.891, 5.546, 97.018)* CFrame.Angles(1.5706930160522, -0.32159259915352, 3.1408815383911)
part_25.BrickColor = BrickColor.new("Dark stone grey")
part_25.Friction = 0.3

 mesh_20 = Instance.new("SpecialMesh", part_25)
mesh_20.Scale = Vector3.new(4, 4, 4)
mesh_20.MeshId = "http://www.roblox.com/asset/?id=103919751"
mesh_20.TextureId = "rbxassetid://138327000"
mesh_20.MeshType = Enum.MeshType.FileMesh

 part_26 = Instance.new("Part", mtank)
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Reflectance = 0.1
part_26.Material = Enum.Material.Metal
part_26.Size = Vector3.new(2.103, 0.4, 2.343)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(56.597, 4.766, 93.806)* CFrame.Angles(3.1246223449707, -0.0038618966937065, -1.580332159996)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Dark stone grey")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_27 = Instance.new("Part", mtank)
part_27.FormFactor = Enum.FormFactor.Custom
part_27.Size = Vector3.new(3.2, 4, 3.2)
part_27.CFrame = CFrame.new(83.891, 5.542, 101.718)* CFrame.Angles(1.5706930160522, -0.32159259915352, 3.1408815383911)
part_27.BrickColor = BrickColor.new("Dark stone grey")
part_27.Friction = 0.3

 mesh_21 = Instance.new("SpecialMesh", part_27)
mesh_21.Scale = Vector3.new(4, 4, 4)
mesh_21.MeshId = "http://www.roblox.com/asset/?id=103919751"
mesh_21.TextureId = "rbxassetid://138327000"
mesh_21.MeshType = Enum.MeshType.FileMesh

tankgun = Instance.new("Model", mtank)
tankgun.Name = "tankgun"

rotator = Instance.new("Part", tankgun)
rotator.FormFactor = Enum.FormFactor.Symmetric
rotator.CanCollide = false
rotator.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rotator.TopSurface = Enum.SurfaceType.SmoothNoOutlines
rotator.Material = Enum.Material.Metal
rotator.Size = Vector3.new(4, 2, 4)
rotator.Name = "Rotator"
rotator.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rotator.CFrame = CFrame.new(74, 6.169, 97)* CFrame.Angles(0.00026474674814381, 1.5707963705063, 0)
rotator.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rotator.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rotator.BrickColor = BrickColor.new("Dark stone grey")
rotator.Friction = 0.3
rotator.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("CylinderMesh", rotator)
mesh_14.Scale = Vector3.new(1.4, 1.3, 1.4)

shield = Instance.new("Part", tankgun)
shield.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
shield.TopSurface = Enum.SurfaceType.SmoothNoOutlines
shield.Reflectance = 0.1
shield.Material = Enum.Material.Metal
shield.Size = Vector3.new(3.758, 1.2, 5.609)
shield.Name = "shield"
shield.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
shield.CFrame = CFrame.new(74.356, 9.254, 96.965)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
shield.RightSurface = Enum.SurfaceType.SmoothNoOutlines
shield.BackSurface = Enum.SurfaceType.SmoothNoOutlines
shield.BrickColor = BrickColor.new("Dark stone grey")
shield.Friction = 0.3
shield.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 barrel2 = Instance.new("Part", tankgun)
barrel2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
barrel2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
barrel2.Reflectance = -1
barrel2.Material = Enum.Material.Metal
barrel2.Size = Vector3.new(2, 15.6, 1)
barrel2.Name = "Barrel2"
barrel2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
barrel2.CFrame = CFrame.new(68.823, 9.109, 95.489)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
barrel2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
barrel2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
barrel2.BrickColor = BrickColor.new("Really black")
barrel2.Friction = 0.3
barrel2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("CylinderMesh", barrel2)
mesh_22.Scale = Vector3.new(1, 1.001, 0.8)

 anim1 = Instance.new("Part", tankgun)
anim1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
anim1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
anim1.Reflectance = 0.1
anim1.Material = Enum.Material.Metal
anim1.Size = Vector3.new(2, 15.6, 1)
anim1.Name = "anim1"
anim1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
anim1.CFrame = CFrame.new(68.823, 9.109, 95.489)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
anim1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
anim1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
anim1.BrickColor = BrickColor.new("Black")
anim1.Friction = 0.3
anim1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("CylinderMesh", anim1)

 part_28 = Instance.new("Part", tankgun)
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.Reflectance = 0.1
part_28.Material = Enum.Material.Metal
part_28.Size = Vector3.new(2, 6, 2)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(73.963, 9.073, 95.476)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Black")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_24 = Instance.new("CylinderMesh", part_28)

 part_29 = Instance.new("Part", tankgun)
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Reflectance = 0.1
part_29.Material = Enum.Material.Metal
part_29.Size = Vector3.new(2, 3.6, 1)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(73.935, 8.354, 95.423)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("Black")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_25 = Instance.new("BlockMesh", part_29)

 part_30 = Instance.new("Part", tankgun)
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Reflectance = -1
part_30.Material = Enum.Material.Metal
part_30.Size = Vector3.new(2, 3.6, 1)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(73.935, 8.354, 95.423)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("Really black")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("BlockMesh", part_30)
mesh_26.Scale = Vector3.new(1.01, 0.9, 0.8)

 barrel1 = Instance.new("Part", tankgun)
barrel1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
barrel1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
barrel1.Reflectance = -1
barrel1.Material = Enum.Material.Metal
barrel1.Size = Vector3.new(2, 15.6, 1)
barrel1.Name = "Barrel1"
barrel1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
barrel1.CFrame = CFrame.new(68.823, 9.106, 98.489)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
barrel1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
barrel1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
barrel1.BrickColor = BrickColor.new("Really black")
barrel1.Friction = 0.3
barrel1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("CylinderMesh", barrel1)
mesh_27.Scale = Vector3.new(1, 1.001, 0.8)

 anim2 = Instance.new("Part", tankgun)
anim2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
anim2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
anim2.Reflectance = 0.1
anim2.Material = Enum.Material.Metal
anim2.Size = Vector3.new(2, 15.6, 1)
anim2.Name = "anim2"
anim2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
anim2.CFrame = CFrame.new(68.823, 9.106, 98.489)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
anim2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
anim2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
anim2.BrickColor = BrickColor.new("Black")
anim2.Friction = 0.3
anim2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("CylinderMesh", anim2)

 part_31 = Instance.new("Part", tankgun)
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Reflectance = 0.1
part_31.Material = Enum.Material.Metal
part_31.Size = Vector3.new(2, 6, 2)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(73.963, 9.07, 98.476)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Black")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("CylinderMesh", part_31)

 part_32 = Instance.new("Part", tankgun)
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Reflectance = 0.1
part_32.Material = Enum.Material.Metal
part_32.Size = Vector3.new(2, 3.6, 1)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(73.935, 8.351, 98.423)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Black")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("BlockMesh", part_32)

 part_33 = Instance.new("Part", tankgun)
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Reflectance = -1
part_33.Material = Enum.Material.Metal
part_33.Size = Vector3.new(2, 3.6, 1)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(73.935, 8.351, 98.423)* CFrame.Angles(3.124621629715, -0.0038619972765446, -1.580332159996)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("Really black")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("BlockMesh", part_33)
mesh_31.Scale = Vector3.new(1.01, 0.9, 0.8)

 part_34 = Instance.new("Part", mtank)
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Reflectance = 0.1
part_34.Material = Enum.Material.Metal
part_34.Size = Vector3.new(2, 2.962, 1)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(56.404, 4.804, 93.815)* CFrame.Angles(3.1246223449707, -0.0038619670085609, -1.580332159996)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Black")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Name = "rightbarrel"

 mesh_32 = Instance.new("CylinderMesh", part_34)

 frontbarrel2 = Instance.new("Part", mtank)
frontbarrel2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel2.Reflectance = -1
frontbarrel2.Material = Enum.Material.Metal
frontbarrel2.Size = Vector3.new(2, 2.962, 1)
frontbarrel2.Name = "frontbarrel2"
frontbarrel2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel2.CFrame = CFrame.new(56.404, 4.804, 93.815)* CFrame.Angles(3.1246223449707, -0.0038619670085609, -1.580332159996)
frontbarrel2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel2.BrickColor = BrickColor.new("Really black")
frontbarrel2.Friction = 0.3
frontbarrel2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("CylinderMesh", frontbarrel2)
mesh_33.Scale = Vector3.new(1, 1.001, 0.8)

 frontbarrel1 = Instance.new("Part", mtank)
frontbarrel1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel1.Reflectance = -1
frontbarrel1.Material = Enum.Material.Metal
frontbarrel1.Size = Vector3.new(2, 2.962, 1)
frontbarrel1.Name = "frontbarrel1"
frontbarrel1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel1.CFrame = CFrame.new(56.404, 4.804, 100.315)* CFrame.Angles(3.1246223449707, -0.0038619670085609, -1.580332159996)
frontbarrel1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
frontbarrel1.BrickColor = BrickColor.new("Really black")
frontbarrel1.Friction = 0.3
frontbarrel1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("CylinderMesh", frontbarrel1)
mesh_34.Scale = Vector3.new(1, 1.001, 0.8)

 part_35 = Instance.new("Part", mtank)
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Reflectance = 0.1
part_35.Material = Enum.Material.Metal
part_35.Size = Vector3.new(2, 2.962, 1)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(56.404, 4.804, 100.315)* CFrame.Angles(3.1246223449707, -0.0038619670085609, -1.580332159996)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Black")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Name = "leftbarrel"

 mesh_35 = Instance.new("CylinderMesh", part_35)

 part_36 = Instance.new("WedgePart", mtank)
part_36.FormFactor = Enum.FormFactor.Symmetric
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Friction = 0.3
part_36.Material = Enum.Material.Metal
part_36.Size = Vector3.new(14, 3, 1)
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Name = "Part"
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(59.5, 5.93, 96.992)* CFrame.Angles(1.5711119174957, -0.00010318384011043, 1.5711228847504)
part_36.BrickColor = BrickColor.new("Grime")

 part_37 = Instance.new("Part", mtank)
part_37.FormFactor = Enum.FormFactor.Symmetric
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Material = Enum.Material.Metal
part_37.Size = Vector3.new(14, 1, 1)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(58.499, 4.929, 96.991)* CFrame.Angles(-3.1232855319977, -1.5698198080063, -3.1235558986664)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = BrickColor.new("Grime")
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("BlockMesh", part_37)

 part_38 = Instance.new("WedgePart", mtank)
part_38.FormFactor = Enum.FormFactor.Symmetric
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Friction = 0.3
part_38.Material = Enum.Material.Metal
part_38.Size = Vector3.new(14, 2, 1)
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Name = "Part"
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(56.999, 4.931, 96.989)* CFrame.Angles(1.5711119174957, -0.00010324344475521, 1.5711228847504)
part_38.BrickColor = BrickColor.new("Dark stone grey")

 part_39 = Instance.new("Part", mtank)
part_39.FormFactor = Enum.FormFactor.Symmetric
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.Material = Enum.Material.Metal
part_39.Size = Vector3.new(5, 1, 22)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(72.004, 5.93, 92.505)* CFrame.Angles(-3.1190032958984, -1.5697045326233, -3.1192691326141)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("Grime")
part_39.Friction = 0.3
part_39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("BlockMesh", part_39)

 part_40 = Instance.new("WedgePart", mtank)
part_40.FormFactor = Enum.FormFactor.Symmetric
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Friction = 0.3
part_40.Material = Enum.Material.Metal
part_40.Size = Vector3.new(14, 1, 1)
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Name = "Part"
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(55.498, 3.93, 96.987)* CFrame.Angles(1.5711119174957, -0.0001028895349009, 1.5711228847504)
part_40.BrickColor = BrickColor.new("Grime")

 part_41 = Instance.new("Part", mtank)
part_41.FormFactor = Enum.FormFactor.Symmetric
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.Material = Enum.Material.Metal
part_41.Size = Vector3.new(5, 1, 22)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(71.994, 5.928, 101.505)* CFrame.Angles(-3.1198189258575, -1.5698198080063, -3.1200873851776)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Grime")
part_41.Friction = 0.3
part_41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("BlockMesh", part_41)

 entrance = Instance.new("Part", mtank)
entrance.FormFactor = Enum.FormFactor.Symmetric
entrance.CanCollide = false
entrance.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
entrance.TopSurface = Enum.SurfaceType.SmoothNoOutlines
entrance.Material = Enum.Material.Metal
entrance.Size = Vector3.new(4, 1, 19)
entrance.Name = "Entrance"
entrance.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
entrance.CFrame = CFrame.new(73.499, 5.929, 97.006)* CFrame.Angles(-3.119649887085, -1.5697045326233, -3.1199164390564)
entrance.RightSurface = Enum.SurfaceType.SmoothNoOutlines
entrance.BackSurface = Enum.SurfaceType.SmoothNoOutlines
entrance.BrickColor = BrickColor.new("Grime")
entrance.Friction = 0.3
entrance.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_39 = Instance.new("BlockMesh", entrance)

 part_42 = Instance.new("Part", mtank)
part_42.FormFactor = Enum.FormFactor.Symmetric
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Material = Enum.Material.Metal
part_42.Size = Vector3.new(14, 1, 3)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(57.498, 3.929, 96.99)* CFrame.Angles(-3.1232855319977, -1.5698198080063, -3.1235558986664)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Grime")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_40 = Instance.new("BlockMesh", part_42)

 part_43 = Instance.new("Part", mtank)
part_43.FormFactor = Enum.FormFactor.Symmetric
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.Material = Enum.Material.Metal
part_43.Size = Vector3.new(8, 2, 2)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(59.999, 4.429, 96.993)* CFrame.Angles(-3.1232855319977, -1.5698198080063, -3.1235558986664)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Earth green")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_41 = Instance.new("BlockMesh", part_43)

 part_44 = Instance.new("Part", mtank)
part_44.FormFactor = Enum.FormFactor.Symmetric
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.Material = Enum.Material.Metal
part_44.Size = Vector3.new(8, 2, 5)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(58.498, 2.429, 96.991)* CFrame.Angles(-3.1232855319977, -1.5698198080063, -3.1235558986664)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BrickColor = BrickColor.new("Dark stone grey")
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_42 = Instance.new("BlockMesh", part_44)

 passengerseat = Instance.new("Seat", mtank)
passengerseat.Friction = 0.3
passengerseat.FrontParamB = 0
passengerseat.BottomSurface = Enum.SurfaceType.Smooth
passengerseat.FrontParamA = 0
passengerseat.TopSurface = Enum.SurfaceType.Smooth
passengerseat.Size = Vector3.new(2, 0.2, 2)
passengerseat.CFrame = CFrame.new(65.203, 2.53, 97.002)* CFrame.Angles(0.022589409723878, 1.5697045326233, -0.022589409723878)
passengerseat.FrontSurface = Enum.SurfaceType.Hinge
passengerseat.Name = "passengerseat"

 driverseat = Instance.new("Seat", mtank)
driverseat.Friction = 0.3
driverseat.FrontParamB = 0
driverseat.BottomSurface = Enum.SurfaceType.Smooth
driverseat.FrontParamA = 0
driverseat.TopSurface = Enum.SurfaceType.Smooth
driverseat.Size = Vector3.new(2, 0.2, 2)
driverseat.CFrame = CFrame.new(69.003, 2.53, 97.002)* CFrame.Angles(0.022589409723878, 1.5697045326233, -0.022589409723878)
driverseat.FrontSurface = Enum.SurfaceType.Hinge
driverseat.Name = "driverseat"

local engine = mtank.driverseat
local frontwheels = mtank.frontwheels
local backwheels = mtank.backwheels

backwheels:BreakJoints()
frontwheels:BreakJoints()
mtank:BreakJoints()

local prev
local parts = mtank:GetChildren()

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
mtank:MakeJoints()
mtank.Parent = char
engine.CFrame = char.Torso.CFrame*CFrame.new(10,24,5)


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

weld(frontwheels.faxle, mtank.faxlepos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
frontwheels.faxle.Weld.Name = "Weld2"

weld(backwheels.baxle, mtank.baxlepos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
backwheels.baxle.Weld.Name = "Weld2"

local prev
local parts = tankgun:GetChildren()

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

weld(tankgun.Rotator, mtank.rotatorcopy, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
mtank.rotatorcopy.Weld.Name = "rotatorweld"


local bav = Instance.new("BodyAngularVelocity",engine)
bav.MaxTorque = Vector3.new(0,0,0)
bav.P = 100
bav.AngularVelocity = Vector3.new(0,0,0)
local bv = Instance.new("BodyVelocity",engine)
bv.MaxForce = Vector3.new(0,0,0)
bv.P = 1250
bv.Velocity = Vector3.new(0.16,0,0.16)
local bv2 = Instance.new("BodyVelocity",mtank.Entrance)
bv2.MaxForce = Vector3.new(0,0,0)
bv2.P = 1250
bv2.Name = "bv2"
bv2.Velocity = Vector3.new(0,0,0)

local enginesound = Instance.new("Sound")
enginesound.SoundId="http://www.roblox.com/asset/?id=529366737"
enginesound.PlayOnRemove=false
enginesound.Volume=0.8
enginesound.Looped=true
enginesound.Pitch = 1
enginesound.Parent=engine

local hvr = Instance.new("Sound")
hvr.SoundId="http://www.roblox.com/asset/?id=319804715"
hvr.PlayOnRemove=false
hvr.Volume=0.8
hvr.Looped=false
hvr.Pitch = 1
hvr.Parent=engine
local hvr2 = Instance.new("Sound")
hvr2.SoundId="http://www.roblox.com/asset/?id=319807127"
hvr2.PlayOnRemove=false
hvr.Volume=1
hvr2.Looped=true
hvr2.Pitch = 1
hvr2.Parent=engine
local hvr3 = Instance.new("Sound")
hvr3.SoundId="http://www.roblox.com/asset/?id=319804802"
hvr3.PlayOnRemove=false
hvr3.Volume=0.8
hvr3.Looped=false
hvr3.Pitch = 1
hvr3.Parent=engine

mouse.KeyDown:connect(function(key)
if key == "y" and engineon == false then
engineon = true
enginesound:Play()
mtank.Entrance.CanCollide = true
end
end)
mouse.KeyDown:connect(function(key)
if key == "u" and engineon == true then
engineon = false
enginesound:Stop()
mtank.Entrance.CanCollide = false
end
end)


mouse.KeyDown:connect(function(key)
if key == "w" and engineon == true and spressed == false then
	wpressed = true
	bv.MaxForce = Vector3.new(forcelevel,0,forcelevel)
	while wpressed == true do wait(.08)
	accel = accel + 2
	wheelaccel = wheelaccel + 10
	if accel >=accellimit then accel = accellimit end
	bv.Velocity = (mtank.driverseat.CFrame.lookVector * accel)
	frontwheels.faxle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(wheelaccel),0,0)
	backwheels.baxle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(wheelaccel),0,0)
	end
	end
end)
mouse.KeyUp:connect(function(key)
if key == "w" and engineon == true then
	wpressed = false
	while wpressed == false and accel >0 do wait()
	accel = accel - 2.4
	if accel <0 then accel = 0 end
	bv.Velocity = (mtank.driverseat.CFrame.lookVector * accel)
	end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "s" and engineon == true and wpressed == false then
	spressed = true
	bv.MaxForce = Vector3.new(forcelevel,0,forcelevel)
	while spressed == true do wait(.06)
		accel = accel - 2
		wheelaccel = wheelaccel - 10
if accel <=-accellimit then accel = -accellimit end
bv.Velocity = (mtank.driverseat.CFrame.lookVector * accel)
	frontwheels.faxle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(wheelaccel),0,0)
	backwheels.baxle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(wheelaccel),0,0)
	end
	end
end)
mouse.KeyUp:connect(function(key)
if key == "s" and engineon == true then
	spressed = false
	while spressed == false and accel <0 do wait()
	accel = accel + 2.4
	if accel >0 then accel = 0 end
	bv.Velocity = (mtank.driverseat.CFrame.lookVector * accel)
	end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "a" and engineon == true then
	apressed = true
	angle = .8
	bav.AngularVelocity = Vector3.new(0,angle,0)
		bav.MaxTorque = Vector3.new(0,angletorque,0)
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
	angle = -.8
	bav.AngularVelocity = Vector3.new(0,angle,0)
		bav.MaxTorque = Vector3.new(0,-angletorque,0)
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
if key == "k" then
	kpressed = kpressed + 1
	if kpressed == 1 then
		frontwheels.fwl.CanCollide = true
		frontwheels.fwr.CanCollide = true
		backwheels.bwl.CanCollide = true
		backwheels.bwr.CanCollide = true
	print("debug wheel collisions on")
	end
	if kpressed == 2 then
		kpressed = 0
		frontwheels.fwl.CanCollide = false
		frontwheels.fwr.CanCollide = false
		backwheels.bwl.CanCollide = false
		backwheels.bwr.CanCollide = false
		print("debug wheel collisons off")
	end
	end
end)

function removewheels()
	wait(.05)
	frontwheels.fwl.Transparency = 0.2
	frontwheels.fwr.Transparency = 0.2
	backwheels.bwl.Transparency = 0.2
		backwheels.bwr.Transparency = 0.2
	wait(.05)
		frontwheels.fwl.Transparency = 0.4
		frontwheels.fwr.Transparency = 0.4
		backwheels.bwl.Transparency = 0.4
		backwheels.bwr.Transparency = 0.4
		wait(.05)
		frontwheels.fwl.Transparency = 0.6
		frontwheels.fwr.Transparency = 0.6
		backwheels.bwl.Transparency = 0.6
		backwheels.bwr.Transparency = 0.6
		wait(.05)
		frontwheels.fwl.Transparency = 0.8
		frontwheels.fwr.Transparency = 0.8
		backwheels.bwl.Transparency = 0.8
		backwheels.bwr.Transparency = 0.8
		wait(.05)
		frontwheels.fwl.Transparency = 1
		frontwheels.fwr.Transparency = 1
		backwheels.bwl.Transparency = 1
		backwheels.bwr.Transparency = 1
		frontwheels.fwl.CanCollide = false
		frontwheels.fwr.CanCollide = false
		backwheels.bwl.CanCollide = false
		backwheels.bwr.CanCollide = false
end

function addwheels()
	wait(.05)
	frontwheels.fwl.Transparency = 0.8
	frontwheels.fwr.Transparency = 0.8
	backwheels.bwl.Transparency = 0.8
		backwheels.bwr.Transparency = 0.8
	wait(.05)
		frontwheels.fwl.Transparency = 0.6
		frontwheels.fwr.Transparency = 0.6
		backwheels.bwl.Transparency = 0.6
		backwheels.bwr.Transparency = 0.6
		wait(.05)
		frontwheels.fwl.Transparency = 0.4
		frontwheels.fwr.Transparency = 0.4
		backwheels.bwl.Transparency = 0.4
		backwheels.bwr.Transparency = 0.4
		wait(.05)
		frontwheels.fwl.Transparency = 0.2
		frontwheels.fwr.Transparency = 0.2
		backwheels.bwl.Transparency = 0.2
		backwheels.bwr.Transparency = 0.2
		wait(.05)
		frontwheels.fwl.Transparency = 0
		frontwheels.fwr.Transparency = 0
		backwheels.bwl.Transparency = 0
		backwheels.bwr.Transparency = 0
		frontwheels.fwl.CanCollide  = true
		frontwheels.fwr.CanCollide = true
		backwheels.bwl.CanCollide = true
		backwheels.bwr.CanCollide = true
end

mouse.KeyDown:connect(function(key)
if key == "h" then
	hpressed = hpressed + 1
	if hpressed == 1 then
		hvr:Play()
		removewheels()
		hvr2:Play()
		bv2.MaxForce = Vector3.new(0,forcelevel,0)
		bv2.Velocity = Vector3.new(0,15,0)
	end
	if hpressed == 2 then
		hpressed = 0
		hvr2:Stop()
		hvr3:Play()
		addwheels()
		bv2.MaxForce = Vector3.new(0,0,0)
	end
end
end)

mouse.KeyDown:connect(function(key)
if key == "e" and hpressed == 1 then
	bv2.Velocity = Vector3.new(0,15,0)
end
end)
mouse.KeyUp:connect(function(key)
if key == "e" and hpressed == 1 then
	bv2.Velocity = Vector3.new(0,0,0)
end
end)
mouse.KeyDown:connect(function(key)
if key == "q" and hpressed == 1 then
	bv2.Velocity = Vector3.new(0,-15,0)
end
end)
mouse.KeyUp:connect(function(key)
if key == "q" and hpressed == 1 then
	bv2.Velocity = Vector3.new(0,0,0)
end
end)


local pellet2 = Instance.new("Part")
pellet2.FormFactor = Enum.FormFactor.Custom
pellet2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.Transparency = 0.1
pellet2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.Material = Enum.Material.Metal
pellet2.Size = Vector3.new(0.4, 1, 0.4)
pellet2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.BrickColor = BrickColor.new("Gold")
pellet2.Friction = 0.3
pellet2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local pellet1 = Instance.new("Part")
pellet1.FormFactor = Enum.FormFactor.Custom
pellet1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
pellet1.Transparency = 0.1
pellet1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
pellet1.Material = Enum.Material.Metal
pellet1.Size = Vector3.new(0.6, 0.9, 0.6)
pellet1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
pellet1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
pellet1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
pellet1.BrickColor = BrickColor.new("Gold")
pellet1.Friction = 0.3
pellet1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local rocketlr = Instance.new("Sound")
rocketlr.SoundId="http://www.roblox.com/asset/?id=165946426"
rocketlr.PlayOnRemove=false
rocketlr.Volume=0.7
rocketlr.Looped=false
rocketlr.Pitch = 1
rocketlr.Parent=mtank.rightbarrel
local rocketll = Instance.new("Sound")
rocketll.SoundId="http://www.roblox.com/asset/?id=165946426"
rocketll.PlayOnRemove=false
rocketll.Volume=0.7
rocketll.Looped=false
rocketll.Pitch = 1
rocketll.Parent=mtank.leftbarrel

local rockethr = Instance.new("Sound")
rockethr.SoundId="http://www.roblox.com/asset/?id=515942061"
rockethr.PlayOnRemove=false
rockethr.Volume=0.7
rockethr.Looped=false
rockethr.Pitch = 1
rockethr.Parent=tankgun.Barrel2
local rockethl = Instance.new("Sound")
rockethl.SoundId="http://www.roblox.com/asset/?id=515942061"
rockethl.PlayOnRemove=false
rockethl.Volume=0.7
rockethl.Looped=false
rockethl.Pitch = 1
rockethl.Parent=tankgun.Barrel1

mouse.KeyDown:connect(function(key)
if key == "p" then
	if lowerrightfire == false then
	lowerrightfire = true
		rocketlr:Play()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.1,0)
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.2,0)
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.3,0)
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.4,0)
		frontbarrel2.BrickColor = BrickColor.new("Bright orange")
		local b = pellet2:Clone()
	b.Parent = workspace
	b.CFrame = mtank.rightbarrel.CFrame*CFrame.new(0,-2,.1)
b.CanCollide = true
game.Debris:AddItem(b,8)
b.Velocity = mtank.driverseat.CFrame.lookVector * 200

b.Touched:connect(function(h)
	b:Destroy()
	if h.Parent:FindFirstChild("Humanoid") then
				h.Parent.Humanoid:TakeDamage(math.random(20,60))
				h.Parent:FindFirstChild("Torso").Velocity  = engine.CFrame.lookVector*15
		local s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=144884872"
s.PlayOnRemove=false
s.Volume=1
s.Looped=false
s.Pitch = 1
s.Parent=h.Parent.Torso
s:Play()
game.Debris:AddItem(s,4) 
	b:Destroy()
	end
	end)
	
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.5,0)
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.4,0)
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.3,0)
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.2,0)
		frontbarrel2.BrickColor = BrickColor.new("Really black")
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,.1,0)
		wait()
		mtank.rightbarrel.Mesh.Offset = Vector3.new(0,0,0)
		lowerrightfire = false
	end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "l" then
	if lowerleftfire == false then
	lowerleftfire = true
	rocketll:Play()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.1,0)
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.2,0)
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.3,0)
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.4,0)
		frontbarrel1.BrickColor = BrickColor.new("Bright orange")
		local b = pellet2:Clone()
	b.Parent = workspace
	b.CFrame = mtank.leftbarrel.CFrame*CFrame.new(0,-2,.1)
b.CanCollide = true
game.Debris:AddItem(b,8)
b.Velocity = mtank.driverseat.CFrame.lookVector * 200

b.Touched:connect(function(h)
	b:Destroy()
	if h.Parent:FindFirstChild("Humanoid") then
				h.Parent.Humanoid:TakeDamage(math.random(20,60))
				h.Parent.Humanoid.PlatformStand = true
		local s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=144884872"
s.PlayOnRemove=false
s.Volume=1
s.Looped=false
s.Pitch = 1
s.Parent=h.Parent.Torso
s:Play()
game.Debris:AddItem(s,4) 
	end
	end)
	
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.5,0)
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.4,0)
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.3,0)
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.2,0)
		frontbarrel1.BrickColor = BrickColor.new("Really black")
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,.1,0)
		wait()
		mtank.leftbarrel.Mesh.Offset = Vector3.new(0,0,0)
		lowerleftfire = false
	end
	end
end)

local rotator = tankgun.Rotator
rotator.Weld.Name = "weld2"


mtank.fbumper.Touched:connect(function(h)
	if Vector3.new(mtank.driverseat.Velocity.x,0,mtank.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(5,20))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mtank.driverseat.CFrame.lookVector*15 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)
frontwheels.fwl.Touched:connect(function(h)
	if Vector3.new(mtank.driverseat.Velocity.x,0,mtank.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(5,10))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mtank.driverseat.CFrame.lookVector*15 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)
frontwheels.fwr.Touched:connect(function(h)
	if Vector3.new(mtank.driverseat.Velocity.x,0,mtank.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(5,10))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mtank.driverseat.CFrame.lookVector*15 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)
backwheels.bwr.Touched:connect(function(h)
	if Vector3.new(mtank.driverseat.Velocity.x,0,mtank.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(5,10))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mtank.driverseat.CFrame.lookVector*15 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)
backwheels.bwl.Touched:connect(function(h)
	if Vector3.new(mtank.driverseat.Velocity.x,0,mtank.driverseat.Velocity.z).magnitude > 6 then
	if h.Parent:FindFirstChild("Humanoid") then 
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 1000 h.Parent.Humanoid.Health = 1000 end
				local dmg = (math.random(5,10))
				h.Parent.Humanoid:TakeDamage(dmg)
				if h:FindFirstChild("Torso") then h:FindFirstChild("Torso").Velocity  = mtank.driverseat.CFrame.lookVector*15 end
				h.Parent.Humanoid.Sit = true
	end
	end
end)

function rbfire()
	if mainfire1 == false then
	mainfire1 = true
		rockethr:Play()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.1,0)
		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.2,0)
		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.3,0)
		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.4,0)
		tankgun.Barrel2.BrickColor = BrickColor.new("Bright orange")
		local b = pellet1:Clone()
		local fire = Instance.new("Fire",b)
	b.Parent = workspace
	b.CFrame = tankgun.Barrel2.CFrame*CFrame.new(0,-10,0)
b.CanCollide = true
game.Debris:AddItem(b,8)
b.Velocity = rotator.CFrame.lookVector * 155
b.Touched:connect(function(h)
	local explosion = Instance.new("Explosion",workspace)
	        explosion.Position = b.Position
		explosion.BlastPressure = 21000
		explosion.BlastRadius = 14
		local s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=180199726"
s.PlayOnRemove=false
s.Volume=1
s.Looped=false
s.Pitch = 1
s.Parent=explosion
s:Play()
game.Debris:AddItem(s,4) 
	b:Destroy()
	end)

		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.5,0)
		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.4,0)
		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.3,0)
		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.2,0)
		tankgun.Barrel2.BrickColor = BrickColor.new("Really black")
		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,.1,0)
		wait()
		tankgun.anim1.Mesh.Offset = Vector3.new(0,0,0)
		mainfire1 = false
	end
end

function lbfire()
	if mainfire2 == false then
	mainfire2 = true
		rockethl:Play()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.1,0)
		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.2,0)
		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.3,0)
		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.4,0)
		tankgun.Barrel1.BrickColor = BrickColor.new("Bright orange")
		local b = pellet1:Clone()
		local fire = Instance.new("Fire",b)
	b.Parent = workspace
	b.CFrame = tankgun.Barrel1.CFrame*CFrame.new(0,-10,0)
b.CanCollide = true
game.Debris:AddItem(b,8)
b.Velocity = rotator.CFrame.lookVector * 155
b.Touched:connect(function(h)
	local explosion = Instance.new("Explosion",workspace)
	        explosion.Position = b.Position
		explosion.BlastPressure = 21000
		explosion.BlastRadius = 14
		local s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=180199726"
s.PlayOnRemove=false
s.Volume=1
s.Looped=false
s.Pitch = 1
s.Parent=explosion
s:Play()
game.Debris:AddItem(s,4) 
	b:Destroy()
	end)

		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.5,0)
		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.4,0)
		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.3,0)
		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.2,0)
		tankgun.Barrel1.BrickColor = BrickColor.new("Really black")
		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,.1,0)
		wait()
		tankgun.anim2.Mesh.Offset = Vector3.new(0,0,0)
		mainfire2 = false
	end
	end

mouse.KeyDown:connect(function(key)
if key == "f" then
	rbfire()
	wait(.1)
	lbfire()
	end
end)

local offset = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)

mouse.KeyDown:connect(function(key)
if key == "z" then
	zpressed = zpressed + 1
		if zpressed == 1 then
			print("gun will follow mouse")
		end
		if zpressed == 2 then
			zpressed = 0
			print("gun will not follow mouse")
			camera.CameraSubject = char.Humanoid
		camera.CameraType = "Custom"
		end
	end
end)

mouse.Move:connect(function(key)
	if zpressed == 1 then
		camera.CameraSubject = rotator
		camera.CameraType = "Follow"
	local p0c0 = rotator:GetRenderCFrame()*rotator.Weld.C0
	rotator.Weld.C0 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
	end
end)

mouse.KeyDown:connect(function(key)
if key == "x" then
	xpressed = xpressed + 1
	if xpressed == 1 then
		if spikeenabled == false then
		spike1.CanCollide = true
		spike1.Mesh.Scale = Vector3.new(0.6, 2, 0.6)
		wait()
		spike1.Mesh.Scale = Vector3.new(0.6, 4, 0.6)
		wait()
		spike1.Mesh.Scale = Vector3.new(0.6, 6, 0.6)
		wait()
		spike1.Mesh.Scale = Vector3.new(0.6, 8, 0.6)
		wait()
		spike1.Mesh.Scale = Vector3.new(0.6, 10, 0.6)
		spikeenabled = true
		end
		end
	if xpressed == 2 then
		xpressed = 0
		if spikeenabled == true then
		spike1.CanCollide = false
		spike1.Mesh.Scale = Vector3.new(0.6, 8, 0.6)
		wait()
		spike1.Mesh.Scale = Vector3.new(0.6, 6, 0.6)
		wait()
		spike1.Mesh.Scale = Vector3.new(0.6, 4, 0.6)
		wait()
		spike1.Mesh.Scale = Vector3.new(0.6, 1, 0.6)
		spikeenabled = false
		end
		end
end
end)

spike1.Touched:connect(function(h)
	if not hit and h.Parent~=player.Character then
		if spikeenabled == true then
		hit=true
		pcall(function()
                                print("Slicing")
                                local pYPos=h.Position.y-(h.Size.y/2)
                                local sYPos=spike1.Position.y
                                if sYPos<=pYPos or sYPos>=(pYPos+h.Size.y) then return end
                                local p=h:clone() p.Parent=workspace p.Anchored=false p.CanCollide=true
                                local p2=h:clone() p2.Parent=workspace p2.Anchored=false p2.CanCollide=true
                                h:remove()
                                p.formFactor="Custom"
                                p2.formFactor="Custom"
                                p.TopSurface="Smooth"
                                p.BottomSurface="Smooth"
                                p.Friction=0
                                p2.Friction=0
                                p.Size=Vector3.new(h.Size.x, sYPos-pYPos, h.Size.z)
                                p2.Size=Vector3.new(h.Size.x, p2.Size.y-(sYPos-pYPos), h.Size.z)
                                p.CFrame=h.CFrame*CFrame.new(0, -p2.Size.y/2, 0)
                                p2.CFrame=h.CFrame*CFrame.new(0, p.Size.y/2, 0)
                                coroutine.resume(coroutine.create(function()
                                        wait(5)
                                        p:remove() p2:remove()
                                end))
                        end)
                        wait()
                        hit=false
		                end
		end
        end)