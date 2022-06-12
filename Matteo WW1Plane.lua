local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local camera = game.Workspace.CurrentCamera
local epressed = false
local qpressed = false
local hpressed = false
local gpressed = false
local wpressed = false
local wpressed2 = false
local apressed = false
local spressed = false
local dpressed = false
local engineon = false
local mousedown = false
local firing = false
local firing2 = false
local criticalhit = false
local bombfiring = false
local rotateangle = 0
local rotateangle2 = 0
local propellerangle = 0
local propellerhp = 100
local planeangle = 0
local accel = 0
function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

local matteoplane = Instance.new("Model", workspace)
matteoplane.Name = "MatteoPlane"

part = Instance.new("Part", matteoplane)
part.Velocity = Vector3.new(-0.031, 0.004, 0.002)
part.FormFactor = Enum.FormFactor.Plate
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.RotVelocity = Vector3.new(0.001, 0.001, 0)
part.Material = Enum.Material.Metal
part.Size = Vector3.new(1, 5.6, 1)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(-10.405, 8.084, -65.376)* CFrame.Angles(3.1403684616089, -1.5648361444473, -0.12299364805222)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Dark stone grey")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

aircraftgun = Instance.new("Model", matteoplane)
aircraftgun.Name = "AircraftGun"

handle = Instance.new("Part", aircraftgun)
handle.FormFactor = Enum.FormFactor.Plate
handle.FrontParamB = 0
handle.CanCollide = false
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Transparency = 1
handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle.TopParamA = 0
handle.FrontParamA = 0
handle.TopParamB = 0
handle.Anchored = false
handle.Material = Enum.Material.Metal
handle.Size = Vector3.new(1, 0.4, 1)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(-25.652, 11.67, -63.455)* CFrame.Angles(1.4901162970204e-008, 0, -0)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Dark stone grey")
handle.Friction = 0.3
handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_2 = Instance.new("Part", aircraftgun)
part_2.FormFactor = Enum.FormFactor.Symmetric
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Reflectance = 0.05
part_2.Anchored = false
part_2.Material = Enum.Material.Wood
part_2.Size = Vector3.new(1, 1, 1)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(-25.652, 11.35, -63.44)* CFrame.Angles(-0.20000001788139, 0, 1.5707963705063)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Pine Cone")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("CylinderMesh", part_2)
mesh.Scale = Vector3.new(0.133, 0.2, 0.133)

 part_3 = Instance.new("Part", aircraftgun)
part_3.FormFactor = Enum.FormFactor.Symmetric
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Reflectance = 0.05
part_3.Anchored = false
part_3.Material = Enum.Material.Wood
part_3.Size = Vector3.new(1, 1, 1)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(-25.652, 11.547, -63.309)* CFrame.Angles(-0.20000000298023, 0, -0)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Pine Cone")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_2 = Instance.new("BlockMesh", part_3)
mesh_2.Scale = Vector3.new(0.2, 0.467, 0.333)

 part_4 = Instance.new("Part", aircraftgun)
part_4.FormFactor = Enum.FormFactor.Symmetric
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Reflectance = 0.05
part_4.Anchored = false
part_4.Material = Enum.Material.Metal
part_4.Size = Vector3.new(1, 1, 1)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(-25.952, 12.07, -63.788)* CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("CylinderMesh", part_4)
mesh_3.Scale = Vector3.new(0.133, 0.267, 0.067)

 part_5 = Instance.new("Part", aircraftgun)
part_5.FormFactor = Enum.FormFactor.Symmetric
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.Reflectance = 0.05
part_5.Anchored = false
part_5.Material = Enum.Material.Metal
part_5.Size = Vector3.new(1, 1, 1)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(-25.652, 11.937, -64.255)* CFrame.Angles(-0, 0, 1.5707963705063)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Dark stone grey")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_4 = Instance.new("CylinderMesh", part_5)
mesh_4.Scale = Vector3.new(0.267, 0.2, 0.267)

 part_6 = Instance.new("Part", aircraftgun)
part_6.FormFactor = Enum.FormFactor.Symmetric
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Reflectance = 0.05
part_6.Anchored = false
part_6.Material = Enum.Material.Metal
part_6.Size = Vector3.new(1, 1, 1)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(-25.652, 11.903, -63.688)* CFrame.Angles(-1.5707963705063, 0, -0)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Dark stone grey")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_5 = Instance.new("SpecialMesh", part_6)
mesh_5.Scale = Vector3.new(0.067, 0.067, 0.067)
mesh_5.MeshType = Enum.MeshType.Wedge

 part_7 = Instance.new("Part", aircraftgun)
part_7.FormFactor = Enum.FormFactor.Symmetric
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Reflectance = 0.05
part_7.Anchored = false
part_7.Material = Enum.Material.Metal
part_7.Size = Vector3.new(1, 1, 1)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(-25.652, 11.77, -63.688)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Dark stone grey")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_6 = Instance.new("SpecialMesh", part_7)
mesh_6.Scale = Vector3.new(0.067, 0.067, 0.067)
mesh_6.MeshType = Enum.MeshType.Wedge

 part_8 = Instance.new("Part", aircraftgun)
part_8.FormFactor = Enum.FormFactor.Symmetric
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.Reflectance = 0.05
part_8.Anchored = false
part_8.Material = Enum.Material.Metal
part_8.Size = Vector3.new(1, 1, 1)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(-25.652, 11.97, -63.988)* CFrame.Angles(-1.5707963705063, 0, -0)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Dark stone grey")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_7 = Instance.new("SpecialMesh", part_8)
mesh_7.Scale = Vector3.new(0.2, 0.133, 0.067)
mesh_7.MeshType = Enum.MeshType.Wedge

 part_9 = Instance.new("Part", aircraftgun)
part_9.FormFactor = Enum.FormFactor.Symmetric
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Reflectance = 0.05
part_9.Anchored = false
part_9.Material = Enum.Material.Metal
part_9.Size = Vector3.new(1, 1, 1)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(-25.652, 11.837, -63.622)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Dark stone grey")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_8 = Instance.new("BlockMesh", part_9)
mesh_8.Scale = Vector3.new(0.067, 0.067, 0.067)

 part_10 = Instance.new("Part", aircraftgun)
part_10.FormFactor = Enum.FormFactor.Symmetric
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Reflectance = 0.05
part_10.Anchored = false
part_10.Material = Enum.Material.Metal
part_10.Size = Vector3.new(1, 1, 1)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(-25.652, 11.903, -63.822)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Dark stone grey")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_9 = Instance.new("SpecialMesh", part_10)
mesh_9.Scale = Vector3.new(0.2, 0.067, 0.067)
mesh_9.MeshType = Enum.MeshType.Wedge

 part_11 = Instance.new("Part", aircraftgun)
part_11.FormFactor = Enum.FormFactor.Symmetric
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Reflectance = 0.05
part_11.Anchored = false
part_11.Material = Enum.Material.Metal
part_11.Size = Vector3.new(1, 1, 1)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(-25.652, 11.837, -63.655)* CFrame.Angles(0, 1.5707963705063, 0)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Dark stone grey")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_10 = Instance.new("SpecialMesh", part_11)
mesh_10.Scale = Vector3.new(0.367, 0.267, 1.25)
mesh_10.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh_10.MeshType = Enum.MeshType.FileMesh

 part_12 = Instance.new("Part", aircraftgun)
part_12.FormFactor = Enum.FormFactor.Symmetric
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Reflectance = 0.05
part_12.Anchored = false
part_12.Material = Enum.Material.Metal
part_12.Size = Vector3.new(1, 1, 1)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(-25.652, 11.97, -63.522)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Dark stone grey")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("BlockMesh", part_12)
 mesh_11.Scale = Vector3.new(0.2, 0.067, 0.8)

 part_13 = Instance.new("Part", aircraftgun)
part_13.FormFactor = Enum.FormFactor.Symmetric
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Reflectance = 0.05
part_13.Anchored = false
part_13.Material = Enum.Material.Metal
part_13.Size = Vector3.new(1, 1, 1)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(-25.652, 11.903, -63.622)* CFrame.Angles(1.5707963705063, 0, -0)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Dark stone grey")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_12 = Instance.new("SpecialMesh", part_13)
mesh_12.Scale = Vector3.new(0.067, 0.067, 0.067)
mesh_12.MeshType = Enum.MeshType.Wedge

 part_14 = Instance.new("Part", aircraftgun)
part_14.FormFactor = Enum.FormFactor.Symmetric
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.Reflectance = 0.05
part_14.Anchored = false
part_14.Material = Enum.Material.Metal
part_14.Size = Vector3.new(1, 1, 1)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(-25.652, 11.77, -63.622)* CFrame.Angles(-3.1415927410126, 0, -0)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Dark stone grey")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_13 = Instance.new("SpecialMesh", part_14)
mesh_13.Scale = Vector3.new(0.067, 0.067, 0.067)
mesh_13.MeshType = Enum.MeshType.Wedge

 part_15 = Instance.new("Part", aircraftgun)
part_15.FormFactor = Enum.FormFactor.Symmetric
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Reflectance = 0.05
part_15.Anchored = false
part_15.Material = Enum.Material.Metal
part_15.Size = Vector3.new(1, 1, 1)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(-25.652, 11.97, -63.055)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Dark stone grey")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("SpecialMesh", part_15)
mesh_14.Scale = Vector3.new(0.2, 0.133, 0.067)
mesh_14.MeshType = Enum.MeshType.Wedge

 part_16 = Instance.new("Part", aircraftgun)
part_16.FormFactor = Enum.FormFactor.Symmetric
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.Reflectance = 0.05
part_16.Anchored = false
part_16.Material = Enum.Material.Metal
part_16.Size = Vector3.new(1, 1, 1)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(-25.652, 11.903, -63.888)* CFrame.Angles(-1.5707963705063, 0, -0)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Dark stone grey")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_15 = Instance.new("SpecialMesh", part_16)
mesh_15.Scale = Vector3.new(0.2, 0.067, 0.067)
mesh_15.MeshType = Enum.MeshType.Wedge

 part_17 = Instance.new("Part", aircraftgun)
part_17.FormFactor = Enum.FormFactor.Symmetric
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.Reflectance = 0.05
part_17.Anchored = false
part_17.Material = Enum.Material.Metal
part_17.Size = Vector3.new(1, 1, 1)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(-25.652, 11.903, -63.155)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Pine Cone")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("SpecialMesh", part_17)
mesh_16.Scale = Vector3.new(0.2, 0.067, 0.067)
mesh_16.MeshType = Enum.MeshType.Wedge

 part_18 = Instance.new("Part", aircraftgun)
part_18.FormFactor = Enum.FormFactor.Symmetric
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.Reflectance = 0.05
part_18.Anchored = false
part_18.Material = Enum.Material.Wood
part_18.Size = Vector3.new(1, 1, 1)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(-25.652, 11.837, -63.355)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Pine Cone")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("BlockMesh", part_18)
mesh_17.Scale = Vector3.new(0.2, 0.2, 0.333)

 part_19 = Instance.new("Part", aircraftgun)
part_19.FormFactor = Enum.FormFactor.Symmetric
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.Reflectance = 0.05
part_19.Anchored = false
part_19.Material = Enum.Material.Metal
part_19.Size = Vector3.new(1, 1, 1)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(-25.785, 12.07, -63.388)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("BlockMesh", part_19)
mesh_18.Scale = Vector3.new(0.07, 0.04, 0.933)

 part_20 = Instance.new("Part", aircraftgun)
part_20.FormFactor = Enum.FormFactor.Symmetric
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.Reflectance = 0.05
part_20.Anchored = false
part_20.Material = Enum.Material.Metal
part_20.Size = Vector3.new(1, 1, 1)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(-25.518, 12.07, -64.022)* CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Dark stone grey")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("SpecialMesh", part_20)
mesh_19.Scale = Vector3.new(0.133, 0.333, 0.067)
mesh_19.MeshType = Enum.MeshType.Wedge

 part_21 = Instance.new("Part", aircraftgun)
part_21.FormFactor = Enum.FormFactor.Symmetric
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Reflectance = 0.05
part_21.Anchored = false
part_21.Material = Enum.Material.Metal
part_21.Size = Vector3.new(1, 1, 1)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(-25.785, 12.07, -64.022)* CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Dark stone grey")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_20 = Instance.new("SpecialMesh", part_21)
mesh_20.Scale = Vector3.new(0.133, 0.333, 0.067)
mesh_20.MeshType = Enum.MeshType.Wedge

 part_22 = Instance.new("Part", aircraftgun)
part_22.FormFactor = Enum.FormFactor.Symmetric
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.Reflectance = 0.05
part_22.Anchored = false
part_22.Material = Enum.Material.Metal
part_22.Size = Vector3.new(1, 1, 2)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(-25.652, 12.17, -63.688)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Dark stone grey")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_21 = Instance.new("BlockMesh", part_22)
mesh_21.Scale = Vector3.new(0.2, 0.067, 0.767)

 part_23 = Instance.new("Part", aircraftgun)
part_23.FormFactor = Enum.FormFactor.Symmetric
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Reflectance = 0.05
part_23.Anchored = false
part_23.Material = Enum.Material.Metal
part_23.Size = Vector3.new(1, 1, 1)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(-25.652, 12.07, -64.155)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("Dark stone grey")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("BlockMesh", part_23)
mesh_22.Scale = Vector3.new(0.2, 0.133, 0.6)

 part_24 = Instance.new("Part", aircraftgun)
part_24.FormFactor = Enum.FormFactor.Symmetric
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Reflectance = 0.05
part_24.Anchored = false
part_24.Material = Enum.Material.Metal
part_24.Size = Vector3.new(1, 1, 1)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(-25.652, 11.97, -64.255)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Dark stone grey")
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("BlockMesh", part_24)
mesh_23.Scale = Vector3.new(0.2, 0.067, 0.267)

 part_25 = Instance.new("Part", aircraftgun)
part_25.FormFactor = Enum.FormFactor.Symmetric
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.Reflectance = 0.05
part_25.Anchored = false
part_25.Material = Enum.Material.Metal
part_25.Size = Vector3.new(1, 1, 1)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(-25.652, 12.07, -63.388)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Dark stone grey")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_24 = Instance.new("BlockMesh", part_25)
mesh_24.Scale = Vector3.new(0.333, 0.133, 0.933)

 part_26 = Instance.new("Part", aircraftgun)
part_26.FormFactor = Enum.FormFactor.Symmetric
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Reflectance = 0.05
part_26.Anchored = false
part_26.Material = Enum.Material.Metal
part_26.Size = Vector3.new(1, 1, 1)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(-25.652, 12.203, -62.888)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Dark stone grey")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_25 = Instance.new("BlockMesh", part_26)
mesh_25.Scale = Vector3.new(0.333, 0.4, 0.067)

 part_27 = Instance.new("Part", aircraftgun)
part_27.FormFactor = Enum.FormFactor.Symmetric
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.Reflectance = 0.05
part_27.Anchored = false
part_27.Material = Enum.Material.Metal
part_27.Size = Vector3.new(1, 2, 1)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(-25.652, 12.27, -63.688)* CFrame.Angles(-1.5707963705063, 0, -0)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Dark stone grey")
part_27.Friction = 0.3
part_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("CylinderMesh", part_27)
mesh_26.Scale = Vector3.new(0.333, 0.767, 0.267)

 part_28 = Instance.new("Part", aircraftgun)
part_28.FormFactor = Enum.FormFactor.Symmetric
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.Reflectance = 0.05
part_28.Anchored = false
part_28.Material = Enum.Material.Metal
part_28.Size = Vector3.new(1, 1, 1)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(-25.652, 12.103, -64.622)* CFrame.Angles(-1.5707963705063, 0, -0)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Dark stone grey")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("CylinderMesh", part_28)
mesh_27.Scale = Vector3.new(0.333, 0.333, 0.18)

 mag = Instance.new("Part", aircraftgun)
mag.FormFactor = Enum.FormFactor.Symmetric
mag.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
mag.TopSurface = Enum.SurfaceType.SmoothNoOutlines
mag.Reflectance = 0.05
mag.Anchored = false
mag.Material = Enum.Material.Metal
mag.Size = Vector3.new(1, 1, 1)
mag.Name = "Mag"
mag.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
mag.CFrame = CFrame.new(-25.652, 12.537, -64.388)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
mag.RightSurface = Enum.SurfaceType.SmoothNoOutlines
mag.BackSurface = Enum.SurfaceType.SmoothNoOutlines
mag.BrickColor = BrickColor.new("Dark stone grey")
mag.Friction = 0.3
mag.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("CylinderMesh", mag)
mesh_28.Scale = Vector3.new(0.733, 0.267, 0.8)

 part_29 = Instance.new("Part", aircraftgun)
part_29.FormFactor = Enum.FormFactor.Symmetric
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Reflectance = 0.05
part_29.Anchored = false
part_29.Material = Enum.Material.Metal
part_29.Size = Vector3.new(1, 1, 1)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(-25.652, 12.537, -64.422)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("Dark stone grey")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("CylinderMesh", part_29)
mesh_29.Scale = Vector3.new(0.2, 0.133, 0.2)

 part_30 = Instance.new("Part", aircraftgun)
part_30.FormFactor = Enum.FormFactor.Symmetric
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Reflectance = 0.05
part_30.Anchored = false
part_30.Material = Enum.Material.Metal
part_30.Size = Vector3.new(1, 1, 1)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(-25.652, 12.237, -65.055)* CFrame.Angles(-1.5707963705063, 0, -0)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("CylinderMesh", part_30)
mesh_30.Scale = Vector3.new(0.6, 0.267, 0.443)

 part_31 = Instance.new("Part", aircraftgun)
part_31.FormFactor = Enum.FormFactor.Symmetric
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Reflectance = 0.05
part_31.Anchored = false
part_31.Material = Enum.Material.Metal
part_31.Size = Vector3.new(1, 1, 1)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(-25.585, 12.303, -63.855)* CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("CylinderMesh", part_31)
mesh_31.Scale = Vector3.new(0.333, 0.533, 0.2)

 part_32 = Instance.new("Part", aircraftgun)
part_32.FormFactor = Enum.FormFactor.Symmetric
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Reflectance = 0.05
part_32.Anchored = false
part_32.Material = Enum.Material.Metal
part_32.Size = Vector3.new(1, 1, 1)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(-25.652, 12.27, -64.622)* CFrame.Angles(-1.5707963705063, 0, -0)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Dark stone grey")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("CylinderMesh", part_32)
mesh_32.Scale = Vector3.new(0.333, 0.333, 0.24)

 part_33 = Instance.new("Part", aircraftgun)
part_33.FormFactor = Enum.FormFactor.Symmetric
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Reflectance = 0.05
part_33.Anchored = false
part_33.Material = Enum.Material.Metal
part_33.Size = Vector3.new(1, 1, 1)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(-25.652, 12.237, -65.255)* CFrame.Angles(-1.5707963705063, 0, -0)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("Dark stone grey")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("CylinderMesh", part_33)
mesh_33.Scale = Vector3.new(0.6, 0.133, 0.467)

 part_34 = Instance.new("Part", aircraftgun)
part_34.FormFactor = Enum.FormFactor.Symmetric
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Reflectance = 0.05
part_34.Anchored = false
part_34.Material = Enum.Material.Metal
part_34.Size = Vector3.new(1, 1, 2)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(-25.652, 12.37, -63.855)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Dark stone grey")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("BlockMesh", part_34)
mesh_34.Scale = Vector3.new(0.333, 0.067, 0.933)

 part_35 = Instance.new("Part", aircraftgun)
part_35.FormFactor = Enum.FormFactor.Symmetric
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Reflectance = 0.05
part_35.Anchored = false
part_35.Material = Enum.Material.Metal
part_35.Size = Vector3.new(1, 1, 1)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(-25.652, 12.237, -64.855)* CFrame.Angles(-1.5707963705063, 0, -0)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Dark stone grey")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("CylinderMesh", part_35)
mesh_35.Scale = Vector3.new(0.6, 0.133, 0.467)

 part_36 = Instance.new("Part", aircraftgun)
part_36.FormFactor = Enum.FormFactor.Symmetric
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Reflectance = 0.05
part_36.Anchored = false
part_36.Material = Enum.Material.Metal
part_36.Size = Vector3.new(1, 1, 1)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(-25.652, 12.57, -63.222)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BrickColor = BrickColor.new("Dark stone grey")
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("BlockMesh", part_36)
mesh_36.Scale = Vector3.new(0.15, 0.067, 0.467)

 part_37 = Instance.new("Part", aircraftgun)
part_37.FormFactor = Enum.FormFactor.Symmetric
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Reflectance = 0.05
part_37.Anchored = false
part_37.Material = Enum.Material.Metal
part_37.Size = Vector3.new(1, 1, 1)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(-25.652, 12.537, -62.988)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("CylinderMesh", part_37)
mesh_37.Scale = Vector3.new(0.133, 0.16, 0.067)

 part_38 = Instance.new("Part", aircraftgun)
part_38.FormFactor = Enum.FormFactor.Symmetric
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Reflectance = 0.05
part_38.Anchored = false
part_38.Material = Enum.Material.Metal
part_38.Size = Vector3.new(1, 1, 1)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(-25.652, 12.437, -63.455)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BrickColor = BrickColor.new("Dark stone grey")
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("BlockMesh", part_38)
mesh_38.Scale = Vector3.new(0.2, 0.067, 1.067)

 part_39 = Instance.new("Part", aircraftgun)
part_39.FormFactor = Enum.FormFactor.Symmetric
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.Reflectance = 0.05
part_39.Anchored = false
part_39.Material = Enum.Material.Metal
part_39.Size = Vector3.new(1, 1, 1)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(-25.652, 12.437, -64.422)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("Dark stone grey")
part_39.Friction = 0.3
part_39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_39 = Instance.new("BlockMesh", part_39)
mesh_39.Scale = Vector3.new(0.2, 0.067, 0.2)

 part_40 = Instance.new("Part", aircraftgun)
part_40.FormFactor = Enum.FormFactor.Symmetric
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Reflectance = 0.05
part_40.Anchored = false
part_40.Material = Enum.Material.Metal
part_40.Size = Vector3.new(1, 1, 1)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(-25.652, 12.503, -63.422)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BrickColor = BrickColor.new("Dark stone grey")
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_40 = Instance.new("BlockMesh", part_40)
mesh_40.Scale = Vector3.new(0.2, 0.067, 0.067)

 part_41 = Instance.new("Part", aircraftgun)
part_41.FormFactor = Enum.FormFactor.Symmetric
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.Reflectance = 0.05
part_41.Anchored = false
part_41.Material = Enum.Material.Metal
part_41.Size = Vector3.new(1, 1, 1)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(-25.652, 12.57, -63.455)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Dark stone grey")
part_41.Friction = 0.3
part_41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_41 = Instance.new("CylinderMesh", part_41)
mesh_41.Scale = Vector3.new(0.067, 0.15, 0.067)

 part_42 = Instance.new("Part", aircraftgun)
part_42.FormFactor = Enum.FormFactor.Symmetric
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Reflectance = 0.05
part_42.Anchored = false
part_42.Material = Enum.Material.Metal
part_42.Size = Vector3.new(1, 1, 1)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(-25.652, 12.503, -62.988)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Dark stone grey")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_42 = Instance.new("BlockMesh", part_42)
mesh_42.Scale = Vector3.new(0.2, 0.067, 0.133)

 part_43 = Instance.new("Part", aircraftgun)
part_43.FormFactor = Enum.FormFactor.Symmetric
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.Reflectance = 0.05
part_43.Anchored = false
part_43.Material = Enum.Material.Metal
part_43.Size = Vector3.new(1, 1, 1)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(-25.652, 12.537, -62.988)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Dark stone grey")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_43 = Instance.new("CylinderMesh", part_43)
mesh_43.Scale = Vector3.new(0.133, 0.15, 0.133)

 barrelpart = Instance.new("Part", aircraftgun)
barrelpart.FormFactor = Enum.FormFactor.Symmetric
barrelpart.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart.TopSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart.Reflectance = 0.05
barrelpart.Anchored = false
barrelpart.Material = Enum.Material.Metal
barrelpart.Size = Vector3.new(1, 2, 1)
barrelpart.Name = "barrelpart"
barrelpart.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart.CFrame = CFrame.new(-25.652, 12.203, -66.188)* CFrame.Angles(-1.5707963705063, 0, -0)
barrelpart.RightSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart.BackSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart.BrickColor = BrickColor.new("Dark stone grey")
barrelpart.Friction = 0.3
barrelpart.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_44 = Instance.new("CylinderMesh", barrelpart)
mesh_44.Scale = Vector3.new(0.6, 0.867, 0.4)

 part_44 = Instance.new("Part", aircraftgun)
part_44.FormFactor = Enum.FormFactor.Symmetric
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.Reflectance = 0.05
part_44.Anchored = false
part_44.Material = Enum.Material.Metal
part_44.Size = Vector3.new(1, 1, 1)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(-25.652, 12.203, -66.988)* CFrame.Angles(-1.5707963705063, 0, -0)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_45 = Instance.new("CylinderMesh", part_44)
mesh_45.Scale = Vector3.new(0.6, 0.127, 0.42)

 machinebarrel = Instance.new("Part", aircraftgun)
machinebarrel.FormFactor = Enum.FormFactor.Symmetric
machinebarrel.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel.TopSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel.Reflectance = 0.05
machinebarrel.Anchored = false
machinebarrel.Material = Enum.Material.Metal
machinebarrel.Size = Vector3.new(1, 1, 1)
machinebarrel.Name = "machinebarrel"
machinebarrel.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel.CFrame = CFrame.new(-25.652, 12.203, -67.012)* CFrame.Angles(-1.5707963705063, 0, -0)
machinebarrel.RightSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel.BackSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel.BrickColor = BrickColor.new("Really black")
machinebarrel.Friction = 0.3
machinebarrel.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_46 = Instance.new("CylinderMesh", machinebarrel)
mesh_46.Scale = Vector3.new(0.4, 0.1, 0.4)

 part_45 = Instance.new("Part", matteoplane)
part_45.Velocity = Vector3.new(-0.031, 0.001, 0.026)
part_45.CanCollide = false
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_45.Material = Enum.Material.Metal
part_45.Size = Vector3.new(1, 45.6, 5)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(-29.113, 11.238, -64.094)* CFrame.Angles(-3.0198497772217, 0.0059160101227462, -1.5715273618698)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Dark stone grey")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_46 = Instance.new("Part", matteoplane)
part_46.Velocity = Vector3.new(-0.028, -0.001, 0.02)
part_46.FormFactor = Enum.FormFactor.Plate
part_46.CanCollide = false
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_46.Material = Enum.Material.Metal
part_46.Size = Vector3.new(11, 1.2, 1)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(-27.427, 6.605, -61.629)* CFrame.Angles(3.1403987407684, -1.5648361444473, 3.0186548233032)
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BrickColor = BrickColor.new("Dark stone grey")
part_46.Friction = 0.3
part_46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_47 = Instance.new("SpecialMesh", part_46)
mesh_47.MeshType = Enum.MeshType.Wedge

 part_47 = Instance.new("Part", matteoplane)
part_47.Velocity = Vector3.new(-0.035, 0.005, 0.021)
part_47.FormFactor = Enum.FormFactor.Plate
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_47.Material = Enum.Material.Metal
part_47.Size = Vector3.new(2, 1.2, 1)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(-27.389, 7.395, -68.08)* CFrame.Angles(3.1404139995575, -1.5648361444473, 3.0186877250671)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BrickColor = BrickColor.new("Dark stone grey")
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_48 = Instance.new("SpecialMesh", part_47)
mesh_48.MeshType = Enum.MeshType.Wedge

 part_48 = Instance.new("Part", matteoplane)
part_48.Velocity = Vector3.new(-0.035, 0.005, 0.019)
part_48.FormFactor = Enum.FormFactor.Plate
part_48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_48.Material = Enum.Material.Metal
part_48.Size = Vector3.new(2, 1.2, 1)
part_48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.CFrame = CFrame.new(-27.387, 5.013, -68.372)* CFrame.Angles(3.1403958797455, -1.5648361444473, -0.12293183803558)
part_48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BrickColor = BrickColor.new("Dark stone grey")
part_48.Friction = 0.3
part_48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_49 = Instance.new("SpecialMesh", part_48)
mesh_49.MeshType = Enum.MeshType.Wedge

 part_49 = Instance.new("Part", matteoplane)
part_49.Velocity = Vector3.new(-0.032, 0.002, 0.022)
part_49.FormFactor = Enum.FormFactor.Plate
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_49.Material = Enum.Material.Metal
part_49.Size = Vector3.new(2, 3.2, 4)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(-28.906, 6.038, -65.233)* CFrame.Angles(0.12172835320234, -0.0059169330634177, 0.00073095876723528)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BrickColor = BrickColor.new("Dark stone grey")
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_50 = Instance.new("Part", matteoplane)
part_50.Velocity = Vector3.new(-0.035, 0.005, 0.02)
part_50.FormFactor = Enum.FormFactor.Plate
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_50.Material = Enum.Material.Metal
part_50.Size = Vector3.new(1, 1.2, 2)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(-27.388, 6.203, -68.226)* CFrame.Angles(0.1217015683651, -0.0059186406433582, 0.00073077698471025)
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BrickColor = BrickColor.new("Gold")
part_50.Friction = 0.3
part_50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 rightwing = Instance.new("Part", matteoplane)
rightwing.Velocity = Vector3.new(-0.029, 0.001, 0.008)
rightwing.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rightwing.TopSurface = Enum.SurfaceType.SmoothNoOutlines
rightwing.RotVelocity = Vector3.new(0.001, 0.001, 0)
rightwing.Material = Enum.Material.Metal
rightwing.Size = Vector3.new(1, 20.4, 7)
rightwing.Name = "RightWing"
rightwing.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rightwing.CFrame = CFrame.new(-17.72, 4.444, -62.843)* CFrame.Angles(-3.0198509693146, 0.005916079506278, -1.5715272426605)
rightwing.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rightwing.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rightwing.BrickColor = BrickColor.new("Dark stone grey")
rightwing.Friction = 0.3
rightwing.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_51 = Instance.new("Part", matteoplane)
part_51.Velocity = Vector3.new(-0.027, 0, 0.012)
part_51.CanCollide = false
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_51.Material = Enum.Material.Metal
part_51.Size = Vector3.new(1, 20.4, 2)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(-16.533, 10.813, -60.545)* CFrame.Angles(-3.0198500156403, 0.0059160189703107, -1.5715273618698)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = BrickColor.new("Dark stone grey")
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_52 = Instance.new("Part", matteoplane)
part_52.Velocity = Vector3.new(-0.031, 0.002, 0.016)
part_52.FormFactor = Enum.FormFactor.Plate
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_52.Material = Enum.Material.Metal
part_52.Size = Vector3.new(1, 2.8, 1)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(-26.407, 3, -65.086)* CFrame.Angles(3.1403958797455, -1.5648361444473, -0.12293183803558)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("Dark stone grey")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_53 = Instance.new("Part", matteoplane)
part_53.Velocity = Vector3.new(-0.031, 0.001, 0.024)
part_53.FormFactor = Enum.FormFactor.Plate
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.Transparency = 0.7
part_53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_53.Material = Enum.Material.Metal
part_53.Size = Vector3.new(2, 1.6, 2)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(-28.913, 8.299, -63.949)* CFrame.Angles(0.12172832340002, -0.0059169349260628, 0.0007309585926123)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BrickColor = BrickColor.new("Dark stone grey")
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_50 = Instance.new("SpecialMesh", part_53)
mesh_50.MeshType = Enum.MeshType.Wedge

 part_54 = Instance.new("Part", matteoplane)
part_54.Velocity = Vector3.new(-0.035, 0.004, 0.022)
part_54.FormFactor = Enum.FormFactor.Plate
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_54.Material = Enum.Material.Metal
part_54.Size = Vector3.new(2, 3.2, 2)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(-28.888, 6.403, -68.211)* CFrame.Angles(0.12171053886414, -0.0059180688112974, 0.00073086866177619)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BrickColor = BrickColor.new("Dark stone grey")
part_54.Friction = 0.3
part_54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_55 = Instance.new("Part", matteoplane)
part_55.Velocity = Vector3.new(-0.033, 0.003, 0.019)
part_55.FormFactor = Enum.FormFactor.Plate
part_55.CanCollide = false
part_55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_55.Material = Enum.Material.Metal
part_55.Size = Vector3.new(1, 1.2, 1)
part_55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.CFrame = CFrame.new(-27.396, 4.831, -66.883)* CFrame.Angles(3.1403958797455, -1.5648361444473, -0.12293183803558)
part_55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BrickColor = BrickColor.new("Dark stone grey")
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_51 = Instance.new("SpecialMesh", part_55)
mesh_51.MeshType = Enum.MeshType.Wedge

 part_56 = Instance.new("Part", matteoplane)
part_56.Velocity = Vector3.new(-0.031, 0.002, 0.019)
part_56.FormFactor = Enum.FormFactor.Plate
part_56.CanCollide = false
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_56.Material = Enum.Material.Metal
part_56.Size = Vector3.new(1, 5.6, 1)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(-25.404, 8.084, -65.466)* CFrame.Angles(3.1403687000275, -1.5648361444473, -0.12299368530512)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = BrickColor.new("Dark stone grey")
part_56.Friction = 0.3
part_56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_57 = Instance.new("Part", matteoplane)
part_57.Velocity = Vector3.new(-0.035, 0.004, 0.024)
part_57.FormFactor = Enum.FormFactor.Plate
part_57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_57.Material = Enum.Material.Metal
part_57.Size = Vector3.new(2, 1.2, 1)
part_57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.CFrame = CFrame.new(-30.389, 7.394, -68.098)* CFrame.Angles(-0.0011116300011054, 1.5648361444473, 0.12278416752815)
part_57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BrickColor = BrickColor.new("Dark stone grey")
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_52 = Instance.new("SpecialMesh", part_57)
mesh_52.MeshType = Enum.MeshType.Wedge

 part_58 = Instance.new("Part", matteoplane)
part_58.Velocity = Vector3.new(-0.028, -0.001, 0.019)
part_58.FormFactor = Enum.FormFactor.Plate
part_58.CanCollide = false
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_58.Material = Enum.Material.Metal
part_58.Size = Vector3.new(1, 1.2, 11)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(-27.426, 5.414, -61.774)* CFrame.Angles(0.12171920388937, -0.0059175160713494, 0.00073083490133286)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BrickColor = BrickColor.new("Gold")
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_59 = Instance.new("Part", matteoplane)
part_59.Velocity = Vector3.new(-0.027, -0.001, 0.019)
part_59.FormFactor = Enum.FormFactor.Plate
part_59.CanCollide = false
part_59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_59.Material = Enum.Material.Metal
part_59.Size = Vector3.new(1, 5.6, 1)
part_59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.CFrame = CFrame.new(-25.434, 7.477, -60.503)* CFrame.Angles(3.1403687000275, -1.5648361444473, -0.12299368530512)
part_59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BrickColor = BrickColor.new("Dark stone grey")
part_59.Friction = 0.3
part_59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_60 = Instance.new("Part", matteoplane)
part_60.Velocity = Vector3.new(-0.027, 0.001, 0.002)
part_60.FormFactor = Enum.FormFactor.Plate
part_60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_60.Material = Enum.Material.Metal
part_60.Size = Vector3.new(1, 5.6, 1)
part_60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.CFrame = CFrame.new(-10.434, 7.477, -60.413)* CFrame.Angles(3.1403789520264, -1.5648361444473, -0.1229739934206)
part_60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BrickColor = BrickColor.new("Dark stone grey")
part_60.Friction = 0.3
part_60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 propeller = Instance.new("Part", matteoplane)
propeller.Velocity = Vector3.new(-0.037, 0.005, 0.022)
propeller.FormFactor = Enum.FormFactor.Plate
propeller.CanCollide = false
propeller.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
propeller.Transparency = 1
propeller.TopSurface = Enum.SurfaceType.SmoothNoOutlines
propeller.RotVelocity = Vector3.new(0.001, 0.001, 0)
propeller.Material = Enum.Material.Metal
propeller.Size = Vector3.new(7, 0.4, 8)
propeller.Name = "Propeller"
propeller.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
propeller.CFrame = CFrame.new(-28.881, 6.647, -69.39)* CFrame.Angles(3.1403958797455, -1.5648361444473, 1.4478645324707)
propeller.RightSurface = Enum.SurfaceType.SmoothNoOutlines
propeller.BackSurface = Enum.SurfaceType.SmoothNoOutlines
propeller.BrickColor = BrickColor.new("Dark stone grey")
propeller.Friction = 0.3
propeller.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_53 = Instance.new("SpecialMesh", propeller)
mesh_53.MeshType = Enum.MeshType.Sphere

 aircraftgun2 = Instance.new("Model", matteoplane)
aircraftgun2.Name = "AircraftGun2"

 handle_2 = Instance.new("Part", aircraftgun2)
handle_2.FormFactor = Enum.FormFactor.Plate
handle_2.FrontParamB = 0
handle_2.CanCollide = false
handle_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.Transparency = 1
handle_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.TopParamA = 0
handle_2.FrontParamA = 0
handle_2.TopParamB = 0
handle_2.Anchored = false
handle_2.Material = Enum.Material.Metal
handle_2.Size = Vector3.new(1, 0.4, 1)
handle_2.Name = "Handle"
handle_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.CFrame = CFrame.new(-32.032, 11.7, -63.455)* CFrame.Angles(1.4901162970204e-008, 0, -0)
handle_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle_2.BrickColor = BrickColor.new("Dark stone grey")
handle_2.Friction = 0.3
handle_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_61 = Instance.new("Part", aircraftgun2)
part_61.FormFactor = Enum.FormFactor.Symmetric
part_61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.Reflectance = 0.05
part_61.Anchored = false
part_61.Material = Enum.Material.Wood
part_61.Size = Vector3.new(1, 1, 1)
part_61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.CFrame = CFrame.new(-32.032, 11.38, -63.44)* CFrame.Angles(-0.20000001788139, 0, 1.5707963705063)
part_61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BrickColor = BrickColor.new("Pine Cone")
part_61.Friction = 0.3
part_61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_54 = Instance.new("CylinderMesh", part_61)
mesh_54.Scale = Vector3.new(0.133, 0.2, 0.133)

 part_62 = Instance.new("Part", aircraftgun2)
part_62.FormFactor = Enum.FormFactor.Symmetric
part_62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.Reflectance = 0.05
part_62.Anchored = false
part_62.Material = Enum.Material.Wood
part_62.Size = Vector3.new(1, 1, 1)
part_62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.CFrame = CFrame.new(-32.032, 11.576, -63.309)* CFrame.Angles(-0.20000000298023, 0, -0)
part_62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BrickColor = BrickColor.new("Pine Cone")
part_62.Friction = 0.3
part_62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_55 = Instance.new("BlockMesh", part_62)
mesh_55.Scale = Vector3.new(0.2, 0.467, 0.333)

 part_63 = Instance.new("Part", aircraftgun2)
part_63.FormFactor = Enum.FormFactor.Symmetric
part_63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.Reflectance = 0.05
part_63.Anchored = false
part_63.Material = Enum.Material.Metal
part_63.Size = Vector3.new(1, 1, 1)
part_63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.CFrame = CFrame.new(-32.332, 12.1, -63.788)* CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
part_63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.Friction = 0.3
part_63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_56 = Instance.new("CylinderMesh", part_63)
mesh_56.Scale = Vector3.new(0.133, 0.267, 0.067)

 part_64 = Instance.new("Part", aircraftgun2)
part_64.FormFactor = Enum.FormFactor.Symmetric
part_64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.Reflectance = 0.05
part_64.Anchored = false
part_64.Material = Enum.Material.Metal
part_64.Size = Vector3.new(1, 1, 1)
part_64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.CFrame = CFrame.new(-32.032, 11.967, -64.255)* CFrame.Angles(0, 0, 1.5707963705063)
part_64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BrickColor = BrickColor.new("Dark stone grey")
part_64.Friction = 0.3
part_64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_57 = Instance.new("CylinderMesh", part_64)
mesh_57.Scale = Vector3.new(0.267, 0.2, 0.267)

 part_65 = Instance.new("Part", aircraftgun2)
part_65.FormFactor = Enum.FormFactor.Symmetric
part_65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.Reflectance = 0.05
part_65.Anchored = false
part_65.Material = Enum.Material.Metal
part_65.Size = Vector3.new(1, 1, 1)
part_65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.CFrame = CFrame.new(-32.032, 11.933, -63.688)* CFrame.Angles(-1.5707963705063, -0, -0)
part_65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BrickColor = BrickColor.new("Dark stone grey")
part_65.Friction = 0.3
part_65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_58 = Instance.new("SpecialMesh", part_65)
mesh_58.Scale = Vector3.new(0.067, 0.067, 0.067)
mesh_58.MeshType = Enum.MeshType.Wedge

 part_66 = Instance.new("Part", aircraftgun2)
part_66.FormFactor = Enum.FormFactor.Symmetric
part_66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.Reflectance = 0.05
part_66.Anchored = false
part_66.Material = Enum.Material.Metal
part_66.Size = Vector3.new(1, 1, 1)
part_66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.CFrame = CFrame.new(-32.032, 11.8, -63.688)
part_66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BrickColor = BrickColor.new("Dark stone grey")
part_66.Friction = 0.3
part_66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_59 = Instance.new("SpecialMesh", part_66)
mesh_59.Scale = Vector3.new(0.067, 0.067, 0.067)
mesh_59.MeshType = Enum.MeshType.Wedge

 part_67 = Instance.new("Part", aircraftgun2)
part_67.FormFactor = Enum.FormFactor.Symmetric
part_67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.Reflectance = 0.05
part_67.Anchored = false
part_67.Material = Enum.Material.Metal
part_67.Size = Vector3.new(1, 1, 1)
part_67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.CFrame = CFrame.new(-32.032, 12, -63.988)* CFrame.Angles(-1.5707963705063, -0, -0)
part_67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BrickColor = BrickColor.new("Dark stone grey")
part_67.Friction = 0.3
part_67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_60 = Instance.new("SpecialMesh", part_67)
mesh_60.Scale = Vector3.new(0.2, 0.133, 0.067)
mesh_60.MeshType = Enum.MeshType.Wedge

 part_68 = Instance.new("Part", aircraftgun2)
part_68.FormFactor = Enum.FormFactor.Symmetric
part_68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.Reflectance = 0.05
part_68.Anchored = false
part_68.Material = Enum.Material.Metal
part_68.Size = Vector3.new(1, 1, 1)
part_68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.CFrame = CFrame.new(-32.032, 11.867, -63.622)
part_68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BrickColor = BrickColor.new("Dark stone grey")
part_68.Friction = 0.3
part_68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_61 = Instance.new("BlockMesh", part_68)
mesh_61.Scale = Vector3.new(0.067, 0.067, 0.067)

 part_69 = Instance.new("Part", aircraftgun2)
part_69.FormFactor = Enum.FormFactor.Symmetric
part_69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.Reflectance = 0.05
part_69.Anchored = false
part_69.Material = Enum.Material.Metal
part_69.Size = Vector3.new(1, 1, 1)
part_69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.CFrame = CFrame.new(-32.032, 11.933, -63.822)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BrickColor = BrickColor.new("Dark stone grey")
part_69.Friction = 0.3
part_69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_62 = Instance.new("SpecialMesh", part_69)
mesh_62.Scale = Vector3.new(0.2, 0.067, 0.067)
mesh_62.MeshType = Enum.MeshType.Wedge

 part_70 = Instance.new("Part", aircraftgun2)
part_70.FormFactor = Enum.FormFactor.Symmetric
part_70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.Reflectance = 0.05
part_70.Anchored = false
part_70.Material = Enum.Material.Metal
part_70.Size = Vector3.new(1, 1, 1)
part_70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.CFrame = CFrame.new(-32.032, 11.867, -63.655)* CFrame.Angles(0, 1.5707963705063, 0)
part_70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BrickColor = BrickColor.new("Dark stone grey")
part_70.Friction = 0.3
part_70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_63 = Instance.new("SpecialMesh", part_70)
mesh_63.Scale = Vector3.new(0.367, 0.267, 1.25)
mesh_63.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh_63.MeshType = Enum.MeshType.FileMesh

 part_71 = Instance.new("Part", aircraftgun2)
part_71.FormFactor = Enum.FormFactor.Symmetric
part_71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.Reflectance = 0.05
part_71.Anchored = false
part_71.Material = Enum.Material.Metal
part_71.Size = Vector3.new(1, 1, 1)
part_71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.CFrame = CFrame.new(-32.032, 12, -63.522)
part_71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BrickColor = BrickColor.new("Dark stone grey")
part_71.Friction = 0.3
part_71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_64 = Instance.new("BlockMesh", part_71)
mesh_64.Scale = Vector3.new(0.2, 0.067, 0.8)

 part_72 = Instance.new("Part", aircraftgun2)
part_72.FormFactor = Enum.FormFactor.Symmetric
part_72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.Reflectance = 0.05
part_72.Anchored = false
part_72.Material = Enum.Material.Metal
part_72.Size = Vector3.new(1, 1, 1)
part_72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.CFrame = CFrame.new(-32.032, 11.933, -63.622)* CFrame.Angles(1.5707963705063, 0, -0)
part_72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BrickColor = BrickColor.new("Dark stone grey")
part_72.Friction = 0.3
part_72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_65 = Instance.new("SpecialMesh", part_72)
mesh_65.Scale = Vector3.new(0.067, 0.067, 0.067)
mesh_65.MeshType = Enum.MeshType.Wedge

 part_73 = Instance.new("Part", aircraftgun2)
part_73.FormFactor = Enum.FormFactor.Symmetric
part_73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.Reflectance = 0.05
part_73.Anchored = false
part_73.Material = Enum.Material.Metal
part_73.Size = Vector3.new(1, 1, 1)
part_73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.CFrame = CFrame.new(-32.032, 11.8, -63.622)* CFrame.Angles(-3.1415927410126, 0, -0)
part_73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BrickColor = BrickColor.new("Dark stone grey")
part_73.Friction = 0.3
part_73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_66 = Instance.new("SpecialMesh", part_73)
mesh_66.Scale = Vector3.new(0.067, 0.067, 0.067)
mesh_66.MeshType = Enum.MeshType.Wedge

 part_74 = Instance.new("Part", aircraftgun2)
part_74.FormFactor = Enum.FormFactor.Symmetric
part_74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.Reflectance = 0.05
part_74.Anchored = false
part_74.Material = Enum.Material.Metal
part_74.Size = Vector3.new(1, 1, 1)
part_74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.CFrame = CFrame.new(-32.032, 12, -63.055)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BrickColor = BrickColor.new("Dark stone grey")
part_74.Friction = 0.3
part_74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_67 = Instance.new("SpecialMesh", part_74)
mesh_67.Scale = Vector3.new(0.2, 0.133, 0.067)
mesh_67.MeshType = Enum.MeshType.Wedge

 part_75 = Instance.new("Part", aircraftgun2)
part_75.FormFactor = Enum.FormFactor.Symmetric
part_75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.Reflectance = 0.05
part_75.Anchored = false
part_75.Material = Enum.Material.Metal
part_75.Size = Vector3.new(1, 1, 1)
part_75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.CFrame = CFrame.new(-32.032, 11.933, -63.888)* CFrame.Angles(-1.5707963705063, -0, -0)
part_75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BrickColor = BrickColor.new("Dark stone grey")
part_75.Friction = 0.3
part_75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_68 = Instance.new("SpecialMesh", part_75)
mesh_68.Scale = Vector3.new(0.2, 0.067, 0.067)
mesh_68.MeshType = Enum.MeshType.Wedge

 part_76 = Instance.new("Part", aircraftgun2)
part_76.FormFactor = Enum.FormFactor.Symmetric
part_76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.Reflectance = 0.05
part_76.Anchored = false
part_76.Material = Enum.Material.Metal
part_76.Size = Vector3.new(1, 1, 1)
part_76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.CFrame = CFrame.new(-32.032, 11.933, -63.155)* CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
part_76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BrickColor = BrickColor.new("Pine Cone")
part_76.Friction = 0.3
part_76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_69 = Instance.new("SpecialMesh", part_76)
mesh_69.Scale = Vector3.new(0.2, 0.067, 0.067)
mesh_69.MeshType = Enum.MeshType.Wedge

 part_77 = Instance.new("Part", aircraftgun2)
part_77.FormFactor = Enum.FormFactor.Symmetric
part_77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.Reflectance = 0.05
part_77.Anchored = false
part_77.Material = Enum.Material.Wood
part_77.Size = Vector3.new(1, 1, 1)
part_77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.CFrame = CFrame.new(-32.032, 11.867, -63.355)
part_77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BrickColor = BrickColor.new("Pine Cone")
part_77.Friction = 0.3
part_77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_70 = Instance.new("BlockMesh", part_77)
mesh_70.Scale = Vector3.new(0.2, 0.2, 0.333)

 part_78 = Instance.new("Part", aircraftgun2)
part_78.FormFactor = Enum.FormFactor.Symmetric
part_78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.Reflectance = 0.05
part_78.Anchored = false
part_78.Material = Enum.Material.Metal
part_78.Size = Vector3.new(1, 1, 1)
part_78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.CFrame = CFrame.new(-32.165, 12.1, -63.388)
part_78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.Friction = 0.3
part_78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_71 = Instance.new("BlockMesh", part_78)
mesh_71.Scale = Vector3.new(0.07, 0.04, 0.933)

 part_79 = Instance.new("Part", aircraftgun2)
part_79.FormFactor = Enum.FormFactor.Symmetric
part_79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.Reflectance = 0.05
part_79.Anchored = false
part_79.Material = Enum.Material.Metal
part_79.Size = Vector3.new(1, 1, 1)
part_79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.CFrame = CFrame.new(-31.898, 12.1, -64.022)* CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
part_79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BrickColor = BrickColor.new("Dark stone grey")
part_79.Friction = 0.3
part_79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_72 = Instance.new("SpecialMesh", part_79)
mesh_72.Scale = Vector3.new(0.133, 0.333, 0.067)
mesh_72.MeshType = Enum.MeshType.Wedge

 part_80 = Instance.new("Part", aircraftgun2)
part_80.FormFactor = Enum.FormFactor.Symmetric
part_80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.Reflectance = 0.05
part_80.Anchored = false
part_80.Material = Enum.Material.Metal
part_80.Size = Vector3.new(1, 1, 1)
part_80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.CFrame = CFrame.new(-32.165, 12.1, -64.022)* CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
part_80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BrickColor = BrickColor.new("Dark stone grey")
part_80.Friction = 0.3
part_80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_73 = Instance.new("SpecialMesh", part_80)
mesh_73.Scale = Vector3.new(0.133, 0.333, 0.067)
mesh_73.MeshType = Enum.MeshType.Wedge

 part_81 = Instance.new("Part", aircraftgun2)
part_81.FormFactor = Enum.FormFactor.Symmetric
part_81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.Reflectance = 0.05
part_81.Anchored = false
part_81.Material = Enum.Material.Metal
part_81.Size = Vector3.new(1, 1, 2)
part_81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.CFrame = CFrame.new(-32.032, 12.2, -63.688)
part_81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BrickColor = BrickColor.new("Dark stone grey")
part_81.Friction = 0.3
part_81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_74 = Instance.new("BlockMesh", part_81)
mesh_74.Scale = Vector3.new(0.2, 0.067, 0.767)

 part_82 = Instance.new("Part", aircraftgun2)
part_82.FormFactor = Enum.FormFactor.Symmetric
part_82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.Reflectance = 0.05
part_82.Anchored = false
part_82.Material = Enum.Material.Metal
part_82.Size = Vector3.new(1, 1, 1)
part_82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.CFrame = CFrame.new(-32.032, 12.1, -64.155)
part_82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BrickColor = BrickColor.new("Dark stone grey")
part_82.Friction = 0.3
part_82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_75 = Instance.new("BlockMesh", part_82)
mesh_75.Scale = Vector3.new(0.2, 0.133, 0.6)

 part_83 = Instance.new("Part", aircraftgun2)
part_83.FormFactor = Enum.FormFactor.Symmetric
part_83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.Reflectance = 0.05
part_83.Anchored = false
part_83.Material = Enum.Material.Metal
part_83.Size = Vector3.new(1, 1, 1)
part_83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.CFrame = CFrame.new(-32.032, 12, -64.255)
part_83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BrickColor = BrickColor.new("Dark stone grey")
part_83.Friction = 0.3
part_83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_76 = Instance.new("BlockMesh", part_83)
mesh_76.Scale = Vector3.new(0.2, 0.067, 0.267)

 part_84 = Instance.new("Part", aircraftgun2)
part_84.FormFactor = Enum.FormFactor.Symmetric
part_84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.Reflectance = 0.05
part_84.Anchored = false
part_84.Material = Enum.Material.Metal
part_84.Size = Vector3.new(1, 1, 1)
part_84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.CFrame = CFrame.new(-32.032, 12.1, -63.388)
part_84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BrickColor = BrickColor.new("Dark stone grey")
part_84.Friction = 0.3
part_84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_77 = Instance.new("BlockMesh", part_84)
mesh_77.Scale = Vector3.new(0.333, 0.133, 0.933)

 part_85 = Instance.new("Part", aircraftgun2)
part_85.FormFactor = Enum.FormFactor.Symmetric
part_85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.Reflectance = 0.05
part_85.Anchored = false
part_85.Material = Enum.Material.Metal
part_85.Size = Vector3.new(1, 1, 1)
part_85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.CFrame = CFrame.new(-32.032, 12.233, -62.888)
part_85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BrickColor = BrickColor.new("Dark stone grey")
part_85.Friction = 0.3
part_85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_78 = Instance.new("BlockMesh", part_85)
mesh_78.Scale = Vector3.new(0.333, 0.4, 0.067)

 part_86 = Instance.new("Part", aircraftgun2)
part_86.FormFactor = Enum.FormFactor.Symmetric
part_86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.Reflectance = 0.05
part_86.Anchored = false
part_86.Material = Enum.Material.Metal
part_86.Size = Vector3.new(1, 2, 1)
part_86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.CFrame = CFrame.new(-32.032, 12.3, -63.688)* CFrame.Angles(-1.5707963705063, -0, -0)
part_86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BrickColor = BrickColor.new("Dark stone grey")
part_86.Friction = 0.3
part_86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_79 = Instance.new("CylinderMesh", part_86)
mesh_79.Scale = Vector3.new(0.333, 0.767, 0.267)

 part_87 = Instance.new("Part", aircraftgun2)
part_87.FormFactor = Enum.FormFactor.Symmetric
part_87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.Reflectance = 0.05
part_87.Anchored = false
part_87.Material = Enum.Material.Metal
part_87.Size = Vector3.new(1, 1, 1)
part_87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.CFrame = CFrame.new(-32.032, 12.133, -64.622)* CFrame.Angles(-1.5707963705063, -0, -0)
part_87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BrickColor = BrickColor.new("Dark stone grey")
part_87.Friction = 0.3
part_87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_80 = Instance.new("CylinderMesh", part_87)
mesh_80.Scale = Vector3.new(0.333, 0.333, 0.18)

 mag_2 = Instance.new("Part", aircraftgun2)
mag_2.FormFactor = Enum.FormFactor.Symmetric
mag_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
mag_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
mag_2.Reflectance = 0.05
mag_2.Anchored = false
mag_2.Material = Enum.Material.Metal
mag_2.Size = Vector3.new(1, 1, 1)
mag_2.Name = "Mag"
mag_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
mag_2.CFrame = CFrame.new(-32.032, 12.567, -64.388)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
mag_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
mag_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
mag_2.BrickColor = BrickColor.new("Dark stone grey")
mag_2.Friction = 0.3
mag_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_81 = Instance.new("CylinderMesh", mag_2)
mesh_81.Scale = Vector3.new(0.733, 0.267, 0.8)

 part_88 = Instance.new("Part", aircraftgun2)
part_88.FormFactor = Enum.FormFactor.Symmetric
part_88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.Reflectance = 0.05
part_88.Anchored = false
part_88.Material = Enum.Material.Metal
part_88.Size = Vector3.new(1, 1, 1)
part_88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.CFrame = CFrame.new(-32.032, 12.567, -64.422)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BrickColor = BrickColor.new("Dark stone grey")
part_88.Friction = 0.3
part_88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_82 = Instance.new("CylinderMesh", part_88)
mesh_82.Scale = Vector3.new(0.2, 0.133, 0.2)

 part_89 = Instance.new("Part", aircraftgun2)
part_89.FormFactor = Enum.FormFactor.Symmetric
part_89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.Reflectance = 0.05
part_89.Anchored = false
part_89.Material = Enum.Material.Metal
part_89.Size = Vector3.new(1, 1, 1)
part_89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.CFrame = CFrame.new(-32.032, 12.267, -65.055)* CFrame.Angles(-1.5707963705063, -0, -0)
part_89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.Friction = 0.3
part_89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_83 = Instance.new("CylinderMesh", part_89)
mesh_83.Scale = Vector3.new(0.6, 0.267, 0.443)

 part_90 = Instance.new("Part", aircraftgun2)
part_90.FormFactor = Enum.FormFactor.Symmetric
part_90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.Reflectance = 0.05
part_90.Anchored = false
part_90.Material = Enum.Material.Metal
part_90.Size = Vector3.new(1, 1, 1)
part_90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.CFrame = CFrame.new(-31.965, 12.333, -63.855)* CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
part_90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.Friction = 0.3
part_90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_84 = Instance.new("CylinderMesh", part_90)
mesh_84.Scale = Vector3.new(0.333, 0.533, 0.2)

 part_91 = Instance.new("Part", aircraftgun2)
part_91.FormFactor = Enum.FormFactor.Symmetric
part_91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.Reflectance = 0.05
part_91.Anchored = false
part_91.Material = Enum.Material.Metal
part_91.Size = Vector3.new(1, 1, 1)
part_91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.CFrame = CFrame.new(-32.032, 12.3, -64.622)* CFrame.Angles(-1.5707963705063, -0, -0)
part_91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BrickColor = BrickColor.new("Dark stone grey")
part_91.Friction = 0.3
part_91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_85 = Instance.new("CylinderMesh", part_91)
mesh_85.Scale = Vector3.new(0.333, 0.333, 0.24)

 part_92 = Instance.new("Part", aircraftgun2)
part_92.FormFactor = Enum.FormFactor.Symmetric
part_92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.Reflectance = 0.05
part_92.Anchored = false
part_92.Material = Enum.Material.Metal
part_92.Size = Vector3.new(1, 1, 1)
part_92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.CFrame = CFrame.new(-32.032, 12.267, -65.255)* CFrame.Angles(-1.5707963705063, -0, -0)
part_92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BrickColor = BrickColor.new("Dark stone grey")
part_92.Friction = 0.3
part_92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_86 = Instance.new("CylinderMesh", part_92)
mesh_86.Scale = Vector3.new(0.6, 0.133, 0.467)

 part_93 = Instance.new("Part", aircraftgun2)
part_93.FormFactor = Enum.FormFactor.Symmetric
part_93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.Reflectance = 0.05
part_93.Anchored = false
part_93.Material = Enum.Material.Metal
part_93.Size = Vector3.new(1, 1, 2)
part_93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.CFrame = CFrame.new(-32.032, 12.4, -63.855)
part_93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BrickColor = BrickColor.new("Dark stone grey")
part_93.Friction = 0.3
part_93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_87 = Instance.new("BlockMesh", part_93)
mesh_87.Scale = Vector3.new(0.333, 0.067, 0.933)

 part_94 = Instance.new("Part", aircraftgun2)
part_94.FormFactor = Enum.FormFactor.Symmetric
part_94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.Reflectance = 0.05
part_94.Anchored = false
part_94.Material = Enum.Material.Metal
part_94.Size = Vector3.new(1, 1, 1)
part_94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.CFrame = CFrame.new(-32.032, 12.267, -64.855)* CFrame.Angles(-1.5707963705063, -0, -0)
part_94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BrickColor = BrickColor.new("Dark stone grey")
part_94.Friction = 0.3
part_94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_88 = Instance.new("CylinderMesh", part_94)
mesh_88.Scale = Vector3.new(0.6, 0.133, 0.467)

 part_95 = Instance.new("Part", aircraftgun2)
part_95.FormFactor = Enum.FormFactor.Symmetric
part_95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.Reflectance = 0.05
part_95.Anchored = false
part_95.Material = Enum.Material.Metal
part_95.Size = Vector3.new(1, 1, 1)
part_95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.CFrame = CFrame.new(-32.032, 12.6, -63.222)
part_95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BrickColor = BrickColor.new("Dark stone grey")
part_95.Friction = 0.3
part_95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_89 = Instance.new("BlockMesh", part_95)
mesh_89.Scale = Vector3.new(0.15, 0.067, 0.467)

 part_96 = Instance.new("Part", aircraftgun2)
part_96.FormFactor = Enum.FormFactor.Symmetric
part_96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.Reflectance = 0.05
part_96.Anchored = false
part_96.Material = Enum.Material.Metal
part_96.Size = Vector3.new(1, 1, 1)
part_96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.CFrame = CFrame.new(-32.032, 12.567, -62.988)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.Friction = 0.3
part_96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_90 = Instance.new("CylinderMesh", part_96)
mesh_90.Scale = Vector3.new(0.133, 0.16, 0.067)

 part_97 = Instance.new("Part", aircraftgun2)
part_97.FormFactor = Enum.FormFactor.Symmetric
part_97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.Reflectance = 0.05
part_97.Anchored = false
part_97.Material = Enum.Material.Metal
part_97.Size = Vector3.new(1, 1, 1)
part_97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.CFrame = CFrame.new(-32.032, 12.467, -63.455)
part_97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BrickColor = BrickColor.new("Dark stone grey")
part_97.Friction = 0.3
part_97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_91 = Instance.new("BlockMesh", part_97)
mesh_91.Scale = Vector3.new(0.2, 0.067, 1.067)

 part_98 = Instance.new("Part", aircraftgun2)
part_98.FormFactor = Enum.FormFactor.Symmetric
part_98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.Reflectance = 0.05
part_98.Anchored = false
part_98.Material = Enum.Material.Metal
part_98.Size = Vector3.new(1, 1, 1)
part_98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.CFrame = CFrame.new(-32.032, 12.467, -64.422)
part_98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BrickColor = BrickColor.new("Dark stone grey")
part_98.Friction = 0.3
part_98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_92 = Instance.new("BlockMesh", part_98)
mesh_92.Scale = Vector3.new(0.2, 0.067, 0.2)

 part_99 = Instance.new("Part", aircraftgun2)
part_99.FormFactor = Enum.FormFactor.Symmetric
part_99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.Reflectance = 0.05
part_99.Anchored = false
part_99.Material = Enum.Material.Metal
part_99.Size = Vector3.new(1, 1, 1)
part_99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.CFrame = CFrame.new(-32.032, 12.533, -63.422)
part_99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BrickColor = BrickColor.new("Dark stone grey")
part_99.Friction = 0.3
part_99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_93 = Instance.new("BlockMesh", part_99)
mesh_93.Scale = Vector3.new(0.2, 0.067, 0.067)

 part_100 = Instance.new("Part", aircraftgun2)
part_100.FormFactor = Enum.FormFactor.Symmetric
part_100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.Reflectance = 0.05
part_100.Anchored = false
part_100.Material = Enum.Material.Metal
part_100.Size = Vector3.new(1, 1, 1)
part_100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.CFrame = CFrame.new(-32.032, 12.6, -63.455)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BrickColor = BrickColor.new("Dark stone grey")
part_100.Friction = 0.3
part_100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_94 = Instance.new("CylinderMesh", part_100)
mesh_94.Scale = Vector3.new(0.067, 0.15, 0.067)

 part_101 = Instance.new("Part", aircraftgun2)
part_101.FormFactor = Enum.FormFactor.Symmetric
part_101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.Reflectance = 0.05
part_101.Anchored = false
part_101.Material = Enum.Material.Metal
part_101.Size = Vector3.new(1, 1, 1)
part_101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.CFrame = CFrame.new(-32.032, 12.533, -62.988)
part_101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BrickColor = BrickColor.new("Dark stone grey")
part_101.Friction = 0.3
part_101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_95 = Instance.new("BlockMesh", part_101)
mesh_95.Scale = Vector3.new(0.2, 0.067, 0.133)

 part_102 = Instance.new("Part", aircraftgun2)
part_102.FormFactor = Enum.FormFactor.Symmetric
part_102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.Reflectance = 0.05
part_102.Anchored = false
part_102.Material = Enum.Material.Metal
part_102.Size = Vector3.new(1, 1, 1)
part_102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.CFrame = CFrame.new(-32.032, 12.567, -62.988)* CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
part_102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BrickColor = BrickColor.new("Dark stone grey")
part_102.Friction = 0.3
part_102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_96 = Instance.new("CylinderMesh", part_102)
mesh_96.Scale = Vector3.new(0.133, 0.15, 0.133)

 barrelpart_2 = Instance.new("Part", aircraftgun2)
barrelpart_2.FormFactor = Enum.FormFactor.Symmetric
barrelpart_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart_2.Reflectance = 0.05
barrelpart_2.Anchored = false
barrelpart_2.Material = Enum.Material.Metal
barrelpart_2.Size = Vector3.new(1, 2, 1)
barrelpart_2.Name = "barrelpart"
barrelpart_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart_2.CFrame = CFrame.new(-32.032, 12.233, -66.188)* CFrame.Angles(-1.5707963705063, -0, -0)
barrelpart_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
barrelpart_2.BrickColor = BrickColor.new("Dark stone grey")
barrelpart_2.Friction = 0.3
barrelpart_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_97 = Instance.new("CylinderMesh", barrelpart_2)
mesh_97.Scale = Vector3.new(0.6, 0.867, 0.4)

 part_103 = Instance.new("Part", aircraftgun2)
part_103.FormFactor = Enum.FormFactor.Symmetric
part_103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.Reflectance = 0.05
part_103.Anchored = false
part_103.Material = Enum.Material.Metal
part_103.Size = Vector3.new(1, 1, 1)
part_103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.CFrame = CFrame.new(-32.032, 12.233, -66.988)* CFrame.Angles(-1.5707963705063, -0, -0)
part_103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.Friction = 0.3
part_103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_98 = Instance.new("CylinderMesh", part_103)
mesh_98.Scale = Vector3.new(0.6, 0.127, 0.42)

 machinebarrel_2 = Instance.new("Part", aircraftgun2)
machinebarrel_2.FormFactor = Enum.FormFactor.Symmetric
machinebarrel_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel_2.Reflectance = 0.05
machinebarrel_2.Anchored = false
machinebarrel_2.Material = Enum.Material.Metal
machinebarrel_2.Size = Vector3.new(1, 1, 1)
machinebarrel_2.Name = "machinebarrel"
machinebarrel_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel_2.CFrame = CFrame.new(-32.032, 12.233, -67.012)* CFrame.Angles(-1.5707963705063, -0, -0)
machinebarrel_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
machinebarrel_2.BrickColor = BrickColor.new("Really black")
machinebarrel_2.Friction = 0.3
machinebarrel_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_99 = Instance.new("CylinderMesh", machinebarrel_2)
mesh_99.Scale = Vector3.new(0.4, 0.1, 0.4)

 engine = Instance.new("Part", matteoplane)
engine.Velocity = Vector3.new(-0.024, -0.004, 0.019)
engine.FormFactor = Enum.FormFactor.Plate
engine.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
engine.Transparency = 1
engine.TopSurface = Enum.SurfaceType.SmoothNoOutlines
engine.RotVelocity = Vector3.new(0.001, 0.001, 0)
engine.Material = Enum.Material.Metal
engine.Size = Vector3.new(20, 0.4, 21)
engine.Name = "Engine"
engine.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
engine.CFrame = CFrame.new(-28.943, 3.065, -59.048)* CFrame.Angles(0.12173729389906, -0.0059163621626794, 0.00073100393638015)
engine.RightSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BackSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BrickColor = BrickColor.new("Dark stone grey")
engine.Friction = 0.3
engine.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_104 = Instance.new("Part", matteoplane)
part_104.Velocity = Vector3.new(-0.028, -0.001, 0.02)
part_104.FormFactor = Enum.FormFactor.Plate
part_104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_104.Material = Enum.Material.Metal
part_104.Size = Vector3.new(2, 0.4, 11)
part_104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.CFrame = CFrame.new(-28.925, 3.826, -61.977)* CFrame.Angles(0.12173741310835, -0.0059163547120988, 0.00073100323788822)
part_104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BrickColor = BrickColor.new("Dark stone grey")
part_104.Friction = 0.3
part_104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_105 = Instance.new("Part", matteoplane)
part_105.Velocity = Vector3.new(-0.027, -0.004, 0.04)
part_105.CanCollide = false
part_105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_105.Material = Enum.Material.Metal
part_105.Size = Vector3.new(1, 20.4, 2)
part_105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.CFrame = CFrame.new(-41.733, 10.813, -60.695)* CFrame.Angles(-3.0198500156403, 0.0059160268865526, -1.5715273618698)
part_105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BrickColor = BrickColor.new("Dark stone grey")
part_105.Friction = 0.3
part_105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_106 = Instance.new("Part", matteoplane)
part_106.Velocity = Vector3.new(-0.035, 0.004, 0.022)
part_106.FormFactor = Enum.FormFactor.Plate
part_106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_106.Material = Enum.Material.Metal
part_106.Size = Vector3.new(2, 1.2, 1)
part_106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.CFrame = CFrame.new(-30.387, 5.013, -68.39)* CFrame.Angles(-0.0011966947931796, 1.5648361444473, -3.0186607837677)
part_106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BrickColor = BrickColor.new("Dark stone grey")
part_106.Friction = 0.3
part_106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_100 = Instance.new("SpecialMesh", part_106)
mesh_100.MeshType = Enum.MeshType.Wedge

 part_107 = Instance.new("Part", matteoplane)
part_107.Velocity = Vector3.new(-0.023, -0.005, 0.021)
part_107.FormFactor = Enum.FormFactor.Plate
part_107.CanCollide = false
part_107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_107.Material = Enum.Material.Metal
part_107.Size = Vector3.new(3, 1.2, 1)
part_107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.CFrame = CFrame.new(-30.449, 3.738, -57.968)* CFrame.Angles(-0.0011966947931796, 1.5648361444473, -3.0186607837677)
part_107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BrickColor = BrickColor.new("Dark stone grey")
part_107.Friction = 0.3
part_107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_101 = Instance.new("SpecialMesh", part_107)
mesh_101.MeshType = Enum.MeshType.Wedge

 part_108 = Instance.new("Part", matteoplane)
part_108.Velocity = Vector3.new(-0.028, -0.001, 0.023)
part_108.FormFactor = Enum.FormFactor.Plate
part_108.CanCollide = false
part_108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_108.Material = Enum.Material.Metal
part_108.Size = Vector3.new(1, 1.2, 11)
part_108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.CFrame = CFrame.new(-30.426, 5.414, -61.792)* CFrame.Angles(0.12157605588436, -0.0059266458265483, 0.0007300183060579)
part_108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BrickColor = BrickColor.new("Gold")
part_108.Friction = 0.3
part_108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_109 = Instance.new("Part", matteoplane)
part_109.Velocity = Vector3.new(-0.035, 0.005, 0.02)
part_109.FormFactor = Enum.FormFactor.Plate
part_109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_109.Material = Enum.Material.Metal
part_109.Size = Vector3.new(2, 0.4, 2)
part_109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.CFrame = CFrame.new(-28.887, 4.616, -68.429)* CFrame.Angles(0.12173739075661, -0.0059163561090827, 0.00073100335430354)
part_109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BrickColor = BrickColor.new("Dark stone grey")
part_109.Friction = 0.3
part_109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_110 = Instance.new("Part", matteoplane)
part_110.Velocity = Vector3.new(-0.023, -0.004, 0.018)
part_110.FormFactor = Enum.FormFactor.Plate
part_110.CanCollide = false
part_110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_110.Material = Enum.Material.Metal
part_110.Size = Vector3.new(3, 1.2, 1)
part_110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.CFrame = CFrame.new(-27.449, 3.738, -57.95)* CFrame.Angles(3.1403958797455, -1.5648361444473, -0.12293183803558)
part_110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BrickColor = BrickColor.new("Dark stone grey")
part_110.Friction = 0.3
part_110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_102 = Instance.new("SpecialMesh", part_110)
mesh_102.MeshType = Enum.MeshType.Wedge

 part_111 = Instance.new("Part", matteoplane)
part_111.Velocity = Vector3.new(-0.016, -0.01, 0.018)
part_111.FormFactor = Enum.FormFactor.Plate
part_111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_111.Material = Enum.Material.Metal
part_111.Size = Vector3.new(1, 1.2, 9)
part_111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.CFrame = CFrame.new(-27.585, 4.1, -51.861)* CFrame.Angles(-3.019873380661, 0.0059175165370107, -1.5715271234512)
part_111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BrickColor = BrickColor.new("Gold")
part_111.Friction = 0.3
part_111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_103 = Instance.new("SpecialMesh", part_111)
mesh_103.MeshType = Enum.MeshType.Wedge

 part_112 = Instance.new("Part", matteoplane)
part_112.Velocity = Vector3.new(-0.031, -0.001, 0.044)
part_112.FormFactor = Enum.FormFactor.Plate
part_112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_112.Material = Enum.Material.Metal
part_112.Size = Vector3.new(1, 5.6, 1)
part_112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.CFrame = CFrame.new(-47.404, 8.084, -65.597)* CFrame.Angles(3.1403687000275, -1.5648361444473, -0.12298250198364)
part_112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BrickColor = BrickColor.new("Dark stone grey")
part_112.Friction = 0.3
part_112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_113 = Instance.new("Part", matteoplane)
part_113.Velocity = Vector3.new(-0.014, -0.012, 0.022)
part_113.FormFactor = Enum.FormFactor.Plate
part_113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_113.Material = Enum.Material.Metal
part_113.Size = Vector3.new(2, 2.4, 1)
part_113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.CFrame = CFrame.new(-28.999, 6.538, -49.556)* CFrame.Angles(0.12170171737671, -0.0059186313301325, 0.00073082436574623)
part_113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BrickColor = BrickColor.new("Dark stone grey")
part_113.Friction = 0.3
part_113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_104 = Instance.new("SpecialMesh", part_113)
mesh_104.Scale = Vector3.new(0.5, 1, 1)
mesh_104.MeshType = Enum.MeshType.Wedge

 part_114 = Instance.new("Part", matteoplane)
part_114.Velocity = Vector3.new(-0.034, 0.003, 0.022)
part_114.FormFactor = Enum.FormFactor.Plate
part_114.CanCollide = false
part_114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_114.Material = Enum.Material.Metal
part_114.Size = Vector3.new(1, 1.2, 1)
part_114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.CFrame = CFrame.new(-30.396, 4.831, -66.901)* CFrame.Angles(-0.0011966947931796, 1.5648361444473, -3.0186607837677)
part_114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BrickColor = BrickColor.new("Dark stone grey")
part_114.Friction = 0.3
part_114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_105 = Instance.new("SpecialMesh", part_114)
mesh_105.MeshType = Enum.MeshType.Wedge

 part_115 = Instance.new("Part", matteoplane)
part_115.Velocity = Vector3.new(-0.031, 0.001, 0.021)
part_115.FormFactor = Enum.FormFactor.Plate
part_115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_115.Material = Enum.Material.Metal
part_115.Size = Vector3.new(1, 2.8, 1)
part_115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.CFrame = CFrame.new(-31.406, 3, -65.116)* CFrame.Angles(3.1403958797455, -1.5648361444473, -0.12293183803558)
part_115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BrickColor = BrickColor.new("Dark stone grey")
part_115.Friction = 0.3
part_115.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 wheel2 = Instance.new("Part", matteoplane)
wheel2.Velocity = Vector3.new(-0.031, 0.002, 0.014)
wheel2.FormFactor = Enum.FormFactor.Plate
wheel2.CanCollide = false
wheel2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wheel2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wheel2.RotVelocity = Vector3.new(0.001, 0.001, 0)
wheel2.Material = Enum.Material.Metal
wheel2.Size = Vector3.new(3, 0.4, 3)
wheel2.Name = "Wheel2"
wheel2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wheel2.CFrame = CFrame.new(-25.706, 1.709, -65.24)* CFrame.Angles(-3.019855260849, 0.0059163607656956, -1.5715273618698)
wheel2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wheel2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wheel2.BrickColor = BrickColor.new("Dark stone grey")
wheel2.Friction = 0.3
wheel2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_106 = Instance.new("SpecialMesh", wheel2)
mesh_106.Scale = Vector3.new(1, 2, 1)
mesh_106.MeshType = Enum.MeshType.Sphere

 part_116 = Instance.new("Part", matteoplane)
part_116.Velocity = Vector3.new(-0.016, -0.01, 0.022)
part_116.FormFactor = Enum.FormFactor.Plate
part_116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_116.Material = Enum.Material.Metal
part_116.Size = Vector3.new(1, 1.2, 9)
part_116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.CFrame = CFrame.new(-30.385, 4.101, -51.878)* CFrame.Angles(-3.0199270248413, 0.0059209284372628, 1.5700658559799)
part_116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BrickColor = BrickColor.new("Gold")
part_116.Friction = 0.3
part_116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_107 = Instance.new("SpecialMesh", part_116)
mesh_107.MeshType = Enum.MeshType.Wedge

 wheel1 = Instance.new("Part", matteoplane)
wheel1.Velocity = Vector3.new(-0.031, 0.001, 0.021)
wheel1.FormFactor = Enum.FormFactor.Plate
wheel1.CanCollide = false
wheel1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wheel1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wheel1.RotVelocity = Vector3.new(0.001, 0.001, 0)
wheel1.Material = Enum.Material.Metal
wheel1.Size = Vector3.new(3, 0.4, 3)
wheel1.Name = "Wheel1"
wheel1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wheel1.CFrame = CFrame.new(-32.105, 1.709, -65.278)* CFrame.Angles(0.1217373162508, -0.0059163607656956, 1.5715273618698)
wheel1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wheel1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wheel1.BrickColor = BrickColor.new("Dark stone grey")
wheel1.Friction = 0.3
wheel1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_108 = Instance.new("SpecialMesh", wheel1)
mesh_108.Scale = Vector3.new(1, 2, 1)
mesh_108.MeshType = Enum.MeshType.Sphere

 rot2 = Instance.new("Part", matteoplane)
rot2.Velocity = Vector3.new(-0.012, -0.013, 0.018)
rot2.FormFactor = Enum.FormFactor.Plate
rot2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rot2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
rot2.RotVelocity = Vector3.new(0.001, 0.001, 0)
rot2.Material = Enum.Material.Metal
rot2.Size = Vector3.new(2, 0.4, 2)
rot2.Name = "Rot2"
rot2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rot2.CFrame = CFrame.new(-26.807, 4.966, -48.225)* CFrame.Angles(3.1403603553772, -1.5648361444473, -0.1230029091239)
rot2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rot2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rot2.BrickColor = BrickColor.new("Dark stone grey")
rot2.Friction = 0.3
rot2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_109 = Instance.new("SpecialMesh", rot2)
mesh_109.Scale = Vector3.new(1, 1, 2)
mesh_109.MeshType = Enum.MeshType.Brick

 leftwing = Instance.new("Part", matteoplane)
leftwing.Velocity = Vector3.new(-0.029, -0.002, 0.033)
leftwing.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
leftwing.TopSurface = Enum.SurfaceType.SmoothNoOutlines
leftwing.RotVelocity = Vector3.new(0.001, 0.001, 0)
leftwing.Material = Enum.Material.Metal
leftwing.Size = Vector3.new(1, 20.4, 7)
leftwing.Name = "LeftWing"
leftwing.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
leftwing.CFrame = CFrame.new(-40.119, 4.444, -62.976)* CFrame.Angles(-3.0198931694031, 0.00591877149418, 1.5700656175613)
leftwing.RightSurface = Enum.SurfaceType.SmoothNoOutlines
leftwing.BackSurface = Enum.SurfaceType.SmoothNoOutlines
leftwing.BrickColor = BrickColor.new("Dark stone grey")
leftwing.Friction = 0.3
leftwing.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_117 = Instance.new("Part", matteoplane)
part_117.Velocity = Vector3.new(-0.035, 0.004, 0.023)
part_117.FormFactor = Enum.FormFactor.Plate
part_117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_117.Material = Enum.Material.Metal
part_117.Size = Vector3.new(1, 1.2, 2)
part_117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.CFrame = CFrame.new(-30.388, 6.204, -68.244)* CFrame.Angles(0.1217015683651, -0.0059186401776969, 0.00073079246794805)
part_117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BrickColor = BrickColor.new("Gold")
part_117.Friction = 0.3
part_117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_118 = Instance.new("Part", matteoplane)
part_118.Velocity = Vector3.new(-0.011, -0.014, 0.022)
part_118.FormFactor = Enum.FormFactor.Plate
part_118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_118.Material = Enum.Material.Metal
part_118.Size = Vector3.new(2, 2.4, 1)
part_118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.CFrame = CFrame.new(-29.017, 6.174, -46.579)* CFrame.Angles(-3.0199620723724, 0.0059231696650386, 3.1408622264862)
part_118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BrickColor = BrickColor.new("Dark stone grey")
part_118.Friction = 0.3
part_118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_110 = Instance.new("SpecialMesh", part_118)
mesh_110.Scale = Vector3.new(0.5, 1, 1)
mesh_110.MeshType = Enum.MeshType.Wedge

 rot1 = Instance.new("Part", matteoplane)
rot1.Velocity = Vector3.new(-0.012, -0.013, 0.023)
rot1.FormFactor = Enum.FormFactor.Plate
rot1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
rot1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
rot1.RotVelocity = Vector3.new(0.001, 0.001, 0)
rot1.Material = Enum.Material.Metal
rot1.Size = Vector3.new(2, 0.4, 2)
rot1.Name = "Rot1"
rot1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
rot1.CFrame = CFrame.new(-31.207, 4.967, -48.251)* CFrame.Angles(-0.0010987630812451, 1.5648460388184, -3.018830537796)
rot1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
rot1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
rot1.BrickColor = BrickColor.new("Dark stone grey")
rot1.Friction = 0.3
rot1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_111 = Instance.new("SpecialMesh", rot1)
mesh_111.Scale = Vector3.new(1, 1, 2)
mesh_111.MeshType = Enum.MeshType.Brick

 part_119 = Instance.new("Part", matteoplane)
part_119.Velocity = Vector3.new(-0.012, -0.013, 0.022)
part_119.FormFactor = Enum.FormFactor.Plate
part_119.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_119.Material = Enum.Material.Metal
part_119.Size = Vector3.new(2, 2.4, 2)
part_119.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.CFrame = CFrame.new(-29.008, 6.356, -48.068)* CFrame.Angles(-3.0199086666107, 0.0059197670780122, -0.00073073455132544)
part_119.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_119.BrickColor = BrickColor.new("Dark stone grey")
part_119.Friction = 0.3
part_119.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_112 = Instance.new("SpecialMesh", part_119)
mesh_112.Scale = Vector3.new(0.5, 1, 1)
mesh_112.MeshType = Enum.MeshType.Brick

 part_120 = Instance.new("Part", matteoplane)
part_120.Velocity = Vector3.new(-0.011, -0.014, 0.019)
part_120.FormFactor = Enum.FormFactor.Plate
part_120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_120.Material = Enum.Material.Metal
part_120.Size = Vector3.new(2, 0.8, 1)
part_120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.CFrame = CFrame.new(-29.015, 3.394, -46.919)* CFrame.Angles(-3.0198910236359, 0.0059186383150518, -0.0007308239582926)
part_120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_120.BrickColor = BrickColor.new("Dark stone grey")
part_120.Friction = 0.3
part_120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_113 = Instance.new("SpecialMesh", part_120)
mesh_113.Scale = Vector3.new(0.5, 1, 1)
mesh_113.MeshType = Enum.MeshType.Wedge

 part_121 = Instance.new("Part", matteoplane)
part_121.Velocity = Vector3.new(-0.024, -0.004, 0.021)
part_121.FormFactor = Enum.FormFactor.Plate
part_121.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_121.Material = Enum.Material.Metal
part_121.Size = Vector3.new(2, 3.2, 4)
part_121.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.CFrame = CFrame.new(-28.947, 5.188, -58.285)* CFrame.Angles(0.12172835320234, -0.0059169330634177, 0.0007309588836506)
part_121.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_121.BrickColor = BrickColor.new("Dark stone grey")
part_121.Friction = 0.3
part_121.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_122 = Instance.new("Part", matteoplane)
part_122.Velocity = Vector3.new(-0.011, -0.014, 0.02)
part_122.FormFactor = Enum.FormFactor.Plate
part_122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_122.Material = Enum.Material.Metal
part_122.Size = Vector3.new(2, 1.2, 1)
part_122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.CFrame = CFrame.new(-29.016, 4.387, -46.797)* CFrame.Angles(-3.0199265480042, 0.0059209084138274, -0.00073064409662038)
part_122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_122.BrickColor = BrickColor.new("Dark stone grey")
part_122.Friction = 0.3
part_122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_114 = Instance.new("SpecialMesh", part_122)
mesh_114.Scale = Vector3.new(0.5, 1, 1)
mesh_114.MeshType = Enum.MeshType.Brick

 part_123 = Instance.new("Part", matteoplane)
part_123.Velocity = Vector3.new(-0.027, -0.002, 0.027)
part_123.FormFactor = Enum.FormFactor.Plate
part_123.CanCollide = false
part_123.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_123.Material = Enum.Material.Metal
part_123.Size = Vector3.new(1, 5.6, 1)
part_123.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.CFrame = CFrame.new(-32.434, 7.477, -60.544)* CFrame.Angles(3.1403687000275, -1.5648361444473, -0.12299368530512)
part_123.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_123.BrickColor = BrickColor.new("Dark stone grey")
part_123.Friction = 0.3
part_123.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_124 = Instance.new("Part", matteoplane)
part_124.Velocity = Vector3.new(-0.02, -0.007, 0.018)
part_124.FormFactor = Enum.FormFactor.Plate
part_124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_124.Material = Enum.Material.Metal
part_124.Size = Vector3.new(1, 0.4, 3)
part_124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.CFrame = CFrame.new(-27.967, 3.473, -54.963)* CFrame.Angles(-3.019855260849, 0.0059163509868085, -1.5715273618698)
part_124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_124.BrickColor = BrickColor.new("Dark stone grey")
part_124.Friction = 0.3
part_124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_115 = Instance.new("SpecialMesh", part_124)
mesh_115.MeshType = Enum.MeshType.Wedge

 part_125 = Instance.new("Part", matteoplane)
part_125.Velocity = Vector3.new(-0.016, -0.01, 0.02)
part_125.FormFactor = Enum.FormFactor.Plate
part_125.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_125.Material = Enum.Material.Metal
part_125.Size = Vector3.new(2, 1.6, 9)
part_125.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.CFrame = CFrame.new(-28.986, 4.597, -51.809)* CFrame.Angles(-3.0198731422424, 0.005917499307543, 1.5700654983521)
part_125.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_125.BrickColor = BrickColor.new("Dark stone grey")
part_125.Friction = 0.3
part_125.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_126 = Instance.new("Part", matteoplane)
part_126.Velocity = Vector3.new(-0.02, -0.007, 0.019)
part_126.FormFactor = Enum.FormFactor.Plate
part_126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_126.Material = Enum.Material.Metal
part_126.Size = Vector3.new(1, 1.6, 3)
part_126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.CFrame = CFrame.new(-28.967, 3.473, -54.969)* CFrame.Angles(-3.019855260849, 0.0059163509868085, 1.5700653791428)
part_126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_126.BrickColor = BrickColor.new("Dark stone grey")
part_126.Friction = 0.3
part_126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_127 = Instance.new("Part", matteoplane)
part_127.Velocity = Vector3.new(-0.02, -0.007, 0.021)
part_127.FormFactor = Enum.FormFactor.Plate
part_127.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_127.Material = Enum.Material.Metal
part_127.Size = Vector3.new(1, 0.4, 3)
part_127.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.CFrame = CFrame.new(-29.967, 3.473, -54.975)* CFrame.Angles(-3.019855260849, 0.0059163509868085, 1.5700653791428)
part_127.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_127.BrickColor = BrickColor.new("Dark stone grey")
part_127.Friction = 0.3
part_127.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_116 = Instance.new("SpecialMesh", part_127)
mesh_116.MeshType = Enum.MeshType.Wedge

 part_128 = Instance.new("Part", matteoplane)
part_128.Velocity = Vector3.new(-0.016, -0.01, 0.02)
part_128.FormFactor = Enum.FormFactor.Plate
part_128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_128.Material = Enum.Material.Metal
part_128.Size = Vector3.new(1, 0.4, 9)
part_128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.CFrame = CFrame.new(-27.986, 5.093, -51.742)* CFrame.Angles(-3.019873380661, 0.0059175156056881, -1.5715271234512)
part_128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_128.BrickColor = BrickColor.new("Dark stone grey")
part_128.Friction = 0.3
part_128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_117 = Instance.new("SpecialMesh", part_128)
mesh_117.MeshType = Enum.MeshType.Wedge

 part_129 = Instance.new("Part", matteoplane)
part_129.Velocity = Vector3.new(-0.015, -0.011, 0.019)
part_129.FormFactor = Enum.FormFactor.Plate
part_129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_129.Material = Enum.Material.Metal
part_129.Size = Vector3.new(2, 0.8, 6)
part_129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.CFrame = CFrame.new(-29.194, 3.025, -50.491)* CFrame.Angles(-3.0198910236359, 0.0059186443686485, -0.00073082320159301)
part_129.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_129.BrickColor = BrickColor.new("Dark stone grey")
part_129.Friction = 0.3
part_129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_118 = Instance.new("SpecialMesh", part_129)
mesh_118.MeshType = Enum.MeshType.Wedge

 part_130 = Instance.new("Part", matteoplane)
part_130.Velocity = Vector3.new(-0.016, -0.01, 0.022)
part_130.FormFactor = Enum.FormFactor.Plate
part_130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_130.Material = Enum.Material.Metal
part_130.Size = Vector3.new(1, 0.4, 9)
part_130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.CFrame = CFrame.new(-29.986, 5.094, -51.754)* CFrame.Angles(-3.019998550415, 0.0059255007654428, 1.5700662136078)
part_130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_130.BrickColor = BrickColor.new("Dark stone grey")
part_130.Friction = 0.3
part_130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_119 = Instance.new("SpecialMesh", part_130)
mesh_119.MeshType = Enum.MeshType.Wedge

 part_131 = Instance.new("Part", matteoplane)
part_131.Velocity = Vector3.new(-0.031, 0.001, 0.027)
part_131.FormFactor = Enum.FormFactor.Plate
part_131.CanCollide = false
part_131.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_131.Material = Enum.Material.Metal
part_131.Size = Vector3.new(1, 5.6, 1)
part_131.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.CFrame = CFrame.new(-32.404, 8.084, -65.507)* CFrame.Angles(3.1403687000275, -1.5648361444473, -0.12299368530512)
part_131.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_131.BrickColor = BrickColor.new("Dark stone grey")
part_131.Friction = 0.3
part_131.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_132 = Instance.new("Part", matteoplane)
part_132.Velocity = Vector3.new(-0.028, -0.001, 0.024)
part_132.FormFactor = Enum.FormFactor.Plate
part_132.CanCollide = false
part_132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_132.Material = Enum.Material.Metal
part_132.Size = Vector3.new(11, 1.2, 1)
part_132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.CFrame = CFrame.new(-30.427, 6.605, -61.647)* CFrame.Angles(-0.0010318628046662, 1.564826130867, 0.12265057116747)
part_132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_132.BrickColor = BrickColor.new("Dark stone grey")
part_132.Friction = 0.3
part_132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_120 = Instance.new("SpecialMesh", part_132)
mesh_120.MeshType = Enum.MeshType.Wedge

 controlseat = Instance.new("Seat", matteoplane)
controlseat.Friction = 0.3
controlseat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.TopSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.FormFactor = Enum.FormFactor.Plate
controlseat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.RotVelocity = Vector3.new(0.001, 0.001, 0)
controlseat.BrickColor = BrickColor.new("Dark stone grey")
controlseat.Material = Enum.Material.Metal
controlseat.Size = Vector3.new(2, 0.4, 2)
controlseat.Velocity = Vector3.new(-0.027, -0.001, 0.02)
controlseat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.CFrame = CFrame.new(-28.928, 4.163, -62.353)* CFrame.Angles(0.12174175679684, -0.0059160776436329, 0.00073097349377349)
controlseat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
controlseat.Name = "ControlSeat"

passengerseat = Instance.new("Seat", matteoplane)
passengerseat.Friction = 0.3
passengerseat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
passengerseat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
passengerseat.TopSurface = Enum.SurfaceType.SmoothNoOutlines
passengerseat.FormFactor = Enum.FormFactor.Plate
passengerseat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
passengerseat.BrickColor = BrickColor.new("Dark stone grey")
passengerseat.Material = Enum.Material.Metal
passengerseat.Size = Vector3.new(2, 0.8, 1)
passengerseat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
passengerseat.CFrame = CFrame.new(-28.915, 4.526, -61.333)* CFrame.Angles(-3.0198509693146, 0.0059161651879549, 3.1408615112305)
passengerseat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
passengerseat.Name = "PassengerSeat"

 part_133 = Instance.new("Part", matteoplane)
part_133.Velocity = Vector3.new(-0.027, -0.004, 0.044)
part_133.FormFactor = Enum.FormFactor.Plate
part_133.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.RotVelocity = Vector3.new(0.001, 0.001, 0)
part_133.Material = Enum.Material.Metal
part_133.Size = Vector3.new(1, 5.6, 1)
part_133.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.CFrame = CFrame.new(-47.433, 7.477, -60.634)* CFrame.Angles(3.1403687000275, -1.5648361444473, -0.12298280000687)
part_133.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_133.BrickColor = BrickColor.new("Dark stone grey")
part_133.Friction = 0.3
part_133.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

matteoplane:BreakJoints()

local pellet2 = Instance.new("Part")
pellet2.FormFactor = Enum.FormFactor.Custom
pellet2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.Transparency = 0.1
pellet2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.Material = Enum.Material.Metal
pellet2.Size = Vector3.new(0.2, 0.8, 0.2)
pellet2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
pellet2.BrickColor = BrickColor.new("Gold")
pellet2.Friction = 0.3
pellet2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local ag1 = matteoplane.AircraftGun
local ag2 = matteoplane.AircraftGun2
local engine = matteoplane.Engine

local prev
local parts = matteoplane:GetChildren()

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
matteoplane:MakeJoints()
matteoplane.Parent = char
engine.CFrame = char["Left Leg"].CFrame*CFrame.new(5,3,15)

local prev
local parts = ag1:GetChildren()

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

local prev
local parts = ag2:GetChildren()

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

weld(ag1.Handle, engine, CFrame.new(3,-7.8,7)*CFrame.Angles(math.rad(0),0,0))
weld(ag2.Handle, engine, CFrame.new(-3,-7.8,7)*CFrame.Angles(math.rad(0),0,0))
ag1.Handle.Weld.Name = "Handleweld"
ag2.Handle.Weld.Name = "Handleweld"
local handle1 = ag1.Handle
local handle2 = ag2.Handle

local surfacegui = Instance.new("SurfaceGui", matteoplane.Propeller)
surfacegui.Face = Enum.NormalId.Bottom

local imagelabel = Instance.new("ImageLabel", surfacegui)
imagelabel.Image = "http://www.roblox.com/asset/?id=47741410"
imagelabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
imagelabel.BackgroundTransparency = 1
imagelabel.Size = UDim2.new(0, 800, 0, 600)
imagelabel.BackgroundColor3 = Color3.new(1, 1, 1)

local surfacegui2 = Instance.new("SurfaceGui", matteoplane.Propeller)
surfacegui2.Face = Enum.NormalId.Top

local imagelabel2 = Instance.new("ImageLabel", surfacegui2)
imagelabel2.Image = "http://www.roblox.com/asset/?id=47741410"
imagelabel2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
imagelabel2.BackgroundTransparency = 1
imagelabel2.Size = UDim2.new(0, 800, 0, 600)
imagelabel2.BackgroundColor3 = Color3.new(1, 1, 1)

local enginesound=Instance.new("Sound")
enginesound.SoundId="http://www.roblox.com/asset/?id=142317661"
enginesound.PlayOnRemove=false
enginesound.Volume=0.95
enginesound.Looped=true
enginesound.Pitch = 1
enginesound.Parent=engine

local engineidle=Instance.new("Sound")
engineidle.SoundId="http://www.roblox.com/asset/?id=133082569"
engineidle.PlayOnRemove=false
engineidle.Volume=0.75
engineidle.Looped=true
engineidle.Pitch = 1
engineidle.Parent=engine

local enginecrash=Instance.new("Sound")
enginecrash.SoundId="http://www.roblox.com/asset/?id=147930482"
enginecrash.PlayOnRemove=false
enginecrash.Volume=0.75
enginecrash.Looped=false
enginecrash.Pitch = 1
enginecrash.Parent=engine

local gunsound=Instance.new("Sound")
gunsound.SoundId="http://www.roblox.com/asset/?id=224837148"
gunsound.PlayOnRemove=false
gunsound.Volume=0.95
gunsound.Looped=false
gunsound.Pitch = 1
gunsound.Parent=ag1.machinebarrel

local gunsound2=Instance.new("Sound")
gunsound2.SoundId="http://www.roblox.com/asset/?id=224837148"
gunsound2.PlayOnRemove=false
gunsound2.Volume=0.95
gunsound2.Looped=false
gunsound2.Pitch = 1
gunsound2.Parent=ag2.machinebarrel

--Gui--
local planegui = Instance.new("ScreenGui", player.PlayerGui)
planegui.Name = "PlaneGui"

local mainframe = Instance.new("Frame", planegui)
mainframe.Size = UDim2.new(0.05, 0, 0.4, 0)
mainframe.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
mainframe.Name = "mainframe"
mainframe.Style = Enum.FrameStyle.RobloxRound
mainframe.Position = UDim2.new(0.95, 0, 0.2, 0)
mainframe.BackgroundColor3 = Color3.new(1, 1, 1)

local altitudebar = Instance.new("Frame", mainframe)
altitudebar.Size = UDim2.new(1.8, 0, 0.05, 0)
altitudebar.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
altitudebar.Name = "AltitudeBar"
altitudebar.Position = UDim2.new(-0.4, 0, 1, 0)
altitudebar.BorderSizePixel = 0
altitudebar.BackgroundColor3 = Color3.new(1, 0.666667, 0)

local altitudetext = Instance.new("TextLabel", mainframe)
altitudetext.TextWrapped = true
altitudetext.TextStrokeTransparency = 0.8
altitudetext.TextScaled = true
altitudetext.BackgroundColor3 = Color3.new(0, 0, 0)
altitudetext.BackgroundTransparency = 0.8
altitudetext.Size = UDim2.new(3, 0, 0.08, 0)
altitudetext.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
altitudetext.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
altitudetext.Text = "Altitude"
altitudetext.Position = UDim2.new(-4, 0, 0.5, 0)
altitudetext.Rotation = 1
altitudetext.Font = Enum.Font.SourceSans
altitudetext.Name = "AltitudeText"
altitudetext.FontSize = Enum.FontSize.Size14
--Guiend--

mouse.KeyDown:connect(function(key)
if key == "y" and engineon == false then
engineon = true
engineidle:Play()
while engineon == true do wait()
	imagelabel.Rotation = propellerangle
	imagelabel2.Rotation = propellerangle
end
end
end)

mouse.KeyDown:connect(function(key)
if key == "u" and engineon == true then
engineon = false
engineidle:Stop()
end
end)


mouse.KeyDown:connect(function(key)
if key == "e" then
	epressed = true
	while epressed == true and qpressed == false do
	wait()
	rotateangle = rotateangle + .005
	if rotateangle >0.1 then rotateangle = 0.1 end
	handle1.Weld.C0 = CFrame.new(3,-7.8,7)*CFrame.Angles(math.rad(rotateangle2),rotateangle,0)
	handle2.Weld.C0 = CFrame.new(-3,-7.8,7)*CFrame.Angles(math.rad(rotateangle2),rotateangle,0)
	end
end
end)

mouse.KeyDown:connect(function(key)
if key == "q" then
	qpressed = true
	while qpressed == true and epressed == false do
	wait()
	rotateangle = rotateangle - .005
	if rotateangle < -0.1 then rotateangle = -0.1 end
	handle1.Weld.C0 = CFrame.new(3,-7.8,7)*CFrame.Angles(math.rad(rotateangle2),rotateangle,0)
	handle2.Weld.C0 = CFrame.new(-3,-7.8,7)*CFrame.Angles(math.rad(rotateangle2),rotateangle,0)
	end
end
end)

mouse.KeyDown:connect(function(key)
if key == "g" then
	gpressed = true
	while gpressed == true and hpressed == false do
	wait()
	print(rotateangle2)
	rotateangle2 = rotateangle2 - .2
	if rotateangle2 <-1 then rotateangle2 = -1  end
	
	handle1.Weld.C0 = CFrame.new(3,-7.8,7)*CFrame.Angles(math.rad(rotateangle2),rotateangle,0)
	handle2.Weld.C0 = CFrame.new(-3,-7.8,7)*CFrame.Angles(math.rad(rotateangle2),rotateangle,0)
	end
end
end)

mouse.KeyDown:connect(function(key)
if key == "h" then
	hpressed = true
	while hpressed == true and gpressed == false do
	wait()
	print(rotateangle2)
	rotateangle2 = rotateangle2 + .2
	if rotateangle2 >7 then rotateangle2 = 7 end
	
	handle1.Weld.C0 = CFrame.new(3,-7.8,7)*CFrame.Angles(math.rad(rotateangle2),rotateangle,0)
	handle2.Weld.C0 = CFrame.new(-3,-7.8,7)*CFrame.Angles(math.rad(rotateangle2),rotateangle,0)
	end
end
end)

mouse.KeyUp:connect(function(key)
if key == "e" then
	epressed = false
end
end)

mouse.KeyUp:connect(function(key)
if key == "q" then
	qpressed = false
end
end)

mouse.KeyUp:connect(function(key)
if key == "g" then
	gpressed = false
end
end)
mouse.KeyUp:connect(function(key)
if key == "h" then
	hpressed = false
end
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
if key == "w" and engineon == true then
wpressed = true
bv.MaxForce = Vector3.new(9e20,9e20,9e20)
enginesound:Play()
while wpressed == true do wait(.08)
accel = accel + 1
if accel >100 then accel = 100 end
bv.Velocity = (engine.CFrame.lookVector * accel) + Vector3.new(0,2,0)
altitudebar.Position = UDim2.new(-0.4, 0, -bv.Velocity.y/200, 0)
end
end
end)

mouse.KeyDown:connect(function(key)
if key == "w" and engineon == true then
	wpressed2 = true
	while wpressed2 == true do wait()
		if propellerangle >360 then propellerangle = propellerangle - 360 end
		propellerangle = propellerangle + 1 + accel/2
	end
end
end)

mouse.KeyUp:connect(function(key)
if key == "w" then
wpressed = false
wpressed2 = false
bv.MaxForce = Vector3.new(0,0,0)
propellerangle = 0
enginesound:Stop()
while accel>0 and wpressed == false do wait(.05)
accel = accel - 1
altitudebar.Position = UDim2.new(-0.4, 0, -bv.Velocity.y/200, 0)
end
end
end)

mouse.Move:connect(function(key)
if wpressed == true and engineon == true then
	bg.MaxTorque = Vector3.new(9e20,9e20,9e20)
	bg.CFrame = CFrame.new(engine.CFrame.p, mouse.Hit.p)
end
end)

matteoplane.Propeller.Touched:connect(function(h)
	if propellerangle >28 then
		print(propellerangle)
	if h.Parent:FindFirstChild("Humanoid") then
				h.Parent.Humanoid:TakeDamage(math.random(4,6))
	end
	if engineon == true and accel>70 and criticalhit == false then
		propellerhp = propellerhp - 20
		print(propellerhp)
		enginecrash:Play()
		if propellerhp <=0 then
			propellerhp = 0
		criticalhit = true
		local fire = Instance.new("Fire",matteoplane.Propeller)
		coroutine.resume(coroutine.create(function()
			local smoke = Instance.new("Smoke",engine)
wait(1)
local s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=138210320"
s.PlayOnRemove=false
s.Volume=1
s.Looped=false
s.Pitch = 1
s.Parent=engine
s:Play()
local explosion = Instance.new("Explosion",engine)
explosion.Position = engine.Position
explosion.BlastPressure = 20000
explosion.BlastRadius = 10
engineon = false
enginesound:Stop()
engineidle:Stop()
		end))
		end
	end
	end
end)

local smoke = Instance.new("Smoke",ag1.machinebarrel)
local smoke2 = Instance.new("Smoke",ag2.machinebarrel)
smoke.Enabled = false
smoke2.Enabled = false

function gunfire()
	firing = true
	smoke.Enabled = true
	smoke2.Enabled = true
	local b = pellet2:Clone()
	b.Parent = workspace
	b.CFrame = ag1.machinebarrel.CFrame*CFrame.new(0,1,0)
b.CanCollide = true
game.Debris:AddItem(b,8)
local bodyForce = Instance.new('BodyForce', b)
	bodyForce.Name = 'Antigravity'
	bodyForce.force = Vector3.new(0, b:GetMass() * 196.2, 0)
	local bvelocity = Instance.new("BodyVelocity",b)
bvelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bvelocity.velocity = ag1.Handle.CFrame.lookVector * 400

local b2 = pellet2:Clone()
	b2.Parent = workspace
	b2.CFrame = ag2.machinebarrel.CFrame*CFrame.new(0,1,0)
b2.CanCollide = true
game.Debris:AddItem(b2,8)
local bodyForce2 = Instance.new('BodyForce', b2)
	bodyForce2.Name = 'Antigravity'
	bodyForce2.force = Vector3.new(0, b:GetMass() * 196.2, 0)
	local bvelocity2 = Instance.new("BodyVelocity",b2)
bvelocity2.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bvelocity2.velocity = ag2.Handle.CFrame.lookVector * 400


local cam_rot = camera.CoordinateFrame - camera.CoordinateFrame.p
	local cam_scroll = (camera.CoordinateFrame.p - camera.Focus.p).magnitude
	local ncf = CFrame.new(camera.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.0025+math.random()/75, math.random(-10,10)/600, 0)
	camera.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
firing = false
smoke.Enabled = false
smoke2.Enabled = false
b.Touched:connect(function(h)
	b:Destroy()
				if h.Parent:FindFirstChild("Humanoid") then
				h.Parent.Humanoid:TakeDamage(math.random(6,18))

			end
end)

b2.Touched:connect(function(h)
	b2:Destroy()
				if h.Parent:FindFirstChild("Humanoid") then
				h.Parent.Humanoid:TakeDamage(math.random(6,18))

			end
end)

end

local pellet = Instance.new("Part")
pellet.FormFactor = Enum.FormFactor.Symmetric
pellet.TopSurface = Enum.SurfaceType.Smooth
pellet.Size = Vector3.new(3, 2, 7)
pellet.Name = "Bullet"
pellet.CFrame = CFrame.new(-4.5, 1, -141.5)
pellet.BrickColor = BrickColor.new("Really black")
pellet.BottomSurface = "Smooth"
pellet.TopSurface = "Smooth"
pellet.Locked = true

local mesh = Instance.new("SpecialMesh", pellet)
mesh.Scale = Vector3.new(3, 3, 3)
mesh.MeshId = "http://www.roblox.com/asset/?id=88782666"
mesh.TextureId = "http://www.roblox.com/asset/?id=88782631"
mesh.MeshType = Enum.MeshType.FileMesh

function bombfire()
	bombfiring = true
	
	wait(.1)
	
	local b = pellet:Clone()
	local fire = Instance.new("Fire",pellet)
	game.Debris:AddItem(fire,4)
	b.Parent = workspace
b.CFrame = engine.CFrame*CFrame.new(0,-8,3)
b.CanCollide = true
game.Debris:AddItem(b,18)

local dropsound=Instance.new("Sound")
	dropsound.SoundId="http://www.roblox.com/asset/?id=153195493"
	dropsound.PlayOnRemove=false
	dropsound.Volume=1
	dropsound.Looped=true
	dropsound.Pitch = 1
	dropsound.Parent=b
	dropsound:Play()
	game.Debris:AddItem(dropsound,18)

local cam_rot = camera.CoordinateFrame - camera.CoordinateFrame.p
	local cam_scroll = (camera.CoordinateFrame.p - camera.Focus.p).magnitude
	local ncf = CFrame.new(camera.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.0025+math.random()/75, math.random(-10,10)/600, 0)
	camera.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
coroutine.resume(coroutine.create(function()
b.Velocity = ag1.machinebarrel.CFrame.lookVector * 10
end))
bombfiring = false
b.Touched:connect(function(hit)
				local s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=138210320"
s.PlayOnRemove=false
s.Volume=1
s.Looped=false
s.Pitch = 1
s.Parent=b
s:Play()
game.Debris:AddItem(s,4) 
if hit.Parent:FindFirstChild("Humanoid") == nil and not hit.Name:lower():find("base") then
	hit.Anchored = false
	hit.Velocity  = char.Head.CFrame.lookVector*200
	hit:BreakJoints()
	end
local explosion = Instance.new("Explosion",workspace)
	        explosion.Position = b.Position
		explosion.BlastPressure = 20000
		explosion.BlastRadius = 10
				b:Destroy()
			end)

end


mouse.Button1Down:connect(function()
	mousedown = true
	while mousedown == true and firing == false and engineon == true do wait(.09)
	gunsound.Pitch = math.random(0.9,1.2)
	gunsound2.Pitch = math.random(0.9,1.2)
	gunsound:Play()
	gunsound2:Play()
	gunfire()
	end
end)
mouse.Button1Up:connect(function()
	mousedown = false
end)

mouse.KeyDown:connect(function(key)
if key == "f" and engineon == true and bombfiring == false then
	bombfire()
end
end)