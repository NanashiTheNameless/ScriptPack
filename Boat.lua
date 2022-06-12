local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local camera = game.Workspace.CurrentCamera
local engineon = false
local speed = 20

local sea = Instance.new("Part", workspace.Terrain)
sea.FormFactor = Enum.FormFactor.Symmetric
sea.Anchored = true
sea.Size = Vector3.new(1033, 433, 1452)
sea.Name = "Sea"
sea.CFrame = CFrame.new(3.5, 196.5, 2712)
sea.BrickColor = BrickColor.new("Dark stone grey")
sea.Friction = 0.3

game.Workspace.Terrain:FillBlock(sea.CFrame, sea.Size, Enum.Material.Water)
game.Workspace.Terrain.Sea:Destroy()
game.Workspace.Terrain.WaterTransparency = 0.5
game.Workspace.Terrain.WaterWaveSize = 1

local msubmarine = Instance.new("Model", workspace)
msubmarine.Name = "MSubmarine"

 part = Instance.new("Part", msubmarine)
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Anchored = false
part.Material = Enum.Material.Metal
part.Size = Vector3.new(39, 21.762, 1)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(-171.5, 424.3, 2463.5)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Dark stone grey")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat = Instance.new("Seat", msubmarine)
seat.Friction = 0.3
seat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat.TopSurface = Enum.SurfaceType.SmoothNoOutlines
seat.Anchored = false
seat.BrickColor = BrickColor.new("Black")
seat.CFrame = CFrame.new(-181.401, 413.929, 2510.3)* CFrame.Angles(-3.1415927410126, 1.1924880638503e-008, -3.1415927410126)
seat.Size = Vector3.new(2, 1, 2)
seat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat.Name = "Seat"

 part_2 = Instance.new("Part", msubmarine)
part_2.FormFactor = Enum.FormFactor.Custom
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Anchored = false
part_2.Material = Enum.Material.SmoothPlastic
part_2.Size = Vector3.new(2.73, 0.783, 1.565)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(-181.479, 414.785, 2512.701)* CFrame.Angles(1.5707963705063, 1.5707963705063, 0)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Dark stone grey")
part_2.Friction = 0.3
part_2.Shape = Enum.PartType.Cylinder
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_3 = Instance.new("Part", msubmarine)
part_3.FormFactor = Enum.FormFactor.Plate
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Anchored = false
part_3.Size = Vector3.new(1, 3.6, 2)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(-181.401, 415.229, 2508.8)* CFrame.Angles(-0, -1.5707963705063, 0)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Black")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_4 = Instance.new("Part", msubmarine)
part_4.FormFactor = Enum.FormFactor.Custom
part_4.CanCollide = false
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Anchored = false
part_4.Material = Enum.Material.Wood
part_4.Size = Vector3.new(0.2, 4.226, 3.6)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(-181.5, 416.228, 2512.701)* CFrame.Angles(1.5707963705063, 1.5707963705063, 0)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Pine Cone")
part_4.Friction = 0.3
part_4.Shape = Enum.PartType.Cylinder
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("SpecialMesh", part_4)
mesh.Scale = Vector3.new(0.783, 1, 1)
mesh.MeshType = Enum.MeshType.Cylinder

 seat_2 = Instance.new("Seat", msubmarine)
seat_2.Friction = 0.3
seat_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.Anchored = false
seat_2.BrickColor = BrickColor.new("Black")
seat_2.CFrame = CFrame.new(-181.401, 413.929, 2515.3)* CFrame.Angles(-0, -1.1924880638503e-008, -0)
seat_2.Size = Vector3.new(2, 1, 2)
seat_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_2.Name = "Seat"

 part_5 = Instance.new("Part", msubmarine)
part_5.FormFactor = Enum.FormFactor.Plate
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.Anchored = false
part_5.Size = Vector3.new(1, 3.6, 2)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(-181.401, 415.229, 2516.8)* CFrame.Angles(0, 1.5707963705063, 0)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Black")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_6 = Instance.new("Part", msubmarine)
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Anchored = false
part_6.Material = Enum.Material.Metal
part_6.Size = Vector3.new(39, 21.762, 1)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(-171.5, 424.2, 2598.9)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Dark stone grey")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 wedge = Instance.new("WedgePart", msubmarine)
wedge.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.Friction = 0.3
wedge.Material = Enum.Material.Metal
wedge.Size = Vector3.new(24, 12.2, 2)
wedge.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge.CFrame = CFrame.new(-188.1, 451.619, 2528)* CFrame.Angles(1.5707963705063, 0, 1.5707963705063)
wedge.BrickColor = BrickColor.new("Dark stone grey")
wedge.Anchored = false

 part_7 = Instance.new("Part", msubmarine)
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Anchored = false
part_7.Material = Enum.Material.SmoothPlastic
part_7.Size = Vector3.new(8, 6.4, 6)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(-186, 416.619, 2477)* CFrame.Angles(-0, -1.5707963705063, 0)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Dark stone grey")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_8 = Instance.new("Part", msubmarine)
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.Anchored = false
part_8.Material = Enum.Material.SmoothPlastic
part_8.Size = Vector3.new(8, 5.4, 7)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(-177, 416.119, 2469.5)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Dark stone grey")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_9 = Instance.new("Part", msubmarine)
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Anchored = false
part_9.Material = Enum.Material.Metal
part_9.Size = Vector3.new(6, 3.4, 6)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(-185.99, 416.919, 2477)* CFrame.Angles(-0, -1.5707963705063, 0)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Really black")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 hatch2 = Instance.new("Part", msubmarine)
hatch2.FormFactor = Enum.FormFactor.Plate
hatch2.CanCollide = false
hatch2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hatch2.Transparency = 1
hatch2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hatch2.Anchored = false
hatch2.Material = Enum.Material.Metal
hatch2.Size = Vector3.new(8, 0.4, 8)
hatch2.Name = "hatch2"
hatch2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hatch2.CFrame = CFrame.new(-174, 452.419, 2530)
hatch2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hatch2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hatch2.BrickColor = BrickColor.new("Dark stone grey")
hatch2.Friction = 0.3
hatch2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 wedge_2 = Instance.new("WedgePart", msubmarine)
wedge_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.Friction = 0.3
wedge_2.Material = Enum.Material.Metal
wedge_2.Size = Vector3.new(22.397, 21.555, 46.783)
wedge_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_2.CFrame = CFrame.new(-182.228, 424.221, 2626.391)* CFrame.Angles(3.141592502594, -2.9802325940409e-008, 1.5707963705063)
wedge_2.BrickColor = BrickColor.new("Dark stone grey")
wedge_2.Anchored = false

 part_10 = Instance.new("Part", msubmarine)
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Anchored = false
part_10.Material = Enum.Material.Metal
part_10.Size = Vector3.new(9, 12.4, 2)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(-172, 419.619, 2468.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Dark stone grey")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_11 = Instance.new("Part", msubmarine)
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Anchored = false
part_11.Material = Enum.Material.Metal
part_11.Size = Vector3.new(16, 12.4, 2)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(-181, 419.619, 2465)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Dark stone grey")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 wedge_3 = Instance.new("WedgePart", msubmarine)
wedge_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.Friction = 0.3
wedge_3.Material = Enum.Material.Metal
wedge_3.Size = Vector3.new(3.366, 22.555, 11.783)
wedge_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_3.CFrame = CFrame.new(-172, 425.456, 2450.454)* CFrame.Angles(-1.570796251297, -7.6427418606588e-015, -8.7422776573476e-008)
wedge_3.BrickColor = BrickColor.new("Dark stone grey")
wedge_3.Anchored = false

 wedge_4 = Instance.new("WedgePart", msubmarine)
wedge_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.Friction = 0.3
wedge_4.Material = Enum.Material.Metal
wedge_4.Size = Vector3.new(3.366, 22.555, 11.783)
wedge_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_4.CFrame = CFrame.new(-172, 437.098, 2450.622)* CFrame.Angles(1.5707963705063, 0, 8.7422776573476e-008)
wedge_4.BrickColor = BrickColor.new("Dark stone grey")
wedge_4.Anchored = false

 wedge_5 = Instance.new("WedgePart", msubmarine)
wedge_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.Friction = 0.3
wedge_5.Material = Enum.Material.Metal
wedge_5.Size = Vector3.new(22.429, 14.84, 46.783)
wedge_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_5.CFrame = CFrame.new(-164.079, 424.214, 2626.391)* CFrame.Angles(-3.7659059870521e-008, -5.7620450633067e-008, -1.5707963705063)
wedge_5.BrickColor = BrickColor.new("Dark stone grey")
wedge_5.Anchored = false

 part_12 = Instance.new("TrussPart", msubmarine)
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Reflectance = 0.8
part_12.Anchored = false
part_12.Material = Enum.Material.Metal
part_12.Size = Vector3.new(2, 16, 2)
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Dark stone grey")
part_12.CFrame = CFrame.new(-172.2, 443.819, 2515)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Name = "Part"
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_13 = Instance.new("Part", msubmarine)
part_13.FormFactor = Enum.FormFactor.Plate
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Anchored = false
part_13.Size = Vector3.new(1, 3.6, 2)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(-185.5, 415.229, 2496.8)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Black")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_3 = Instance.new("Seat", msubmarine)
seat_3.Friction = 0.3
seat_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.Anchored = false
seat_3.BrickColor = BrickColor.new("Black")
seat_3.CFrame = CFrame.new(-184, 413.929, 2496.8)* CFrame.Angles(-0, -1.5707963705063, 0)
seat_3.Size = Vector3.new(2, 1, 2)
seat_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_3.Name = "Seat"

 seat_4 = Instance.new("Seat", msubmarine)
seat_4.Friction = 0.3
seat_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.Anchored = false
seat_4.BrickColor = BrickColor.new("Black")
seat_4.CFrame = CFrame.new(-179, 413.929, 2496.8)* CFrame.Angles(0, 1.5707963705063, 0)
seat_4.Size = Vector3.new(2, 1, 2)
seat_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_4.Name = "Seat"

 part_14 = Instance.new("Part", msubmarine)
part_14.FormFactor = Enum.FormFactor.Plate
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.Anchored = false
part_14.Size = Vector3.new(1, 3.6, 2)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(-177.5, 415.229, 2496.8)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Black")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_15 = Instance.new("TrussPart", msubmarine)
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Reflectance = 0.8
part_15.Anchored = false
part_15.Material = Enum.Material.Metal
part_15.Size = Vector3.new(2, 22, 2)
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Dark stone grey")
part_15.CFrame = CFrame.new(-194, 425.019, 2516)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Name = "Part"
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_16 = Instance.new("Part", msubmarine)
part_16.FormFactor = Enum.FormFactor.Custom
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.Anchored = false
part_16.Material = Enum.Material.SmoothPlastic
part_16.Size = Vector3.new(2.73, 0.783, 1.565)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(-181.4, 414.785, 2496.722)* CFrame.Angles(-0, 0, 1.5707963705063)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Dark stone grey")
part_16.Friction = 0.3
part_16.Shape = Enum.PartType.Cylinder
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_17 = Instance.new("Part", msubmarine)
part_17.FormFactor = Enum.FormFactor.Custom
part_17.CanCollide = false
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.Anchored = false
part_17.Material = Enum.Material.Wood
part_17.Size = Vector3.new(0.2, 4.226, 3.6)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(-181.401, 416.228, 2496.7)* CFrame.Angles(-0, 0, 1.5707963705063)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Pine Cone")
part_17.Friction = 0.3
part_17.Shape = Enum.PartType.Cylinder
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_2 = Instance.new("SpecialMesh", part_17)
mesh_2.Scale = Vector3.new(0.783, 1, 1)
mesh_2.MeshType = Enum.MeshType.Cylinder

 part_18 = Instance.new("Part", msubmarine)
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.Anchored = false
part_18.Material = Enum.Material.Metal
part_18.Size = Vector3.new(28, 12.4, 2)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(-190, 419.619, 2478)* CFrame.Angles(0, 1.5707963705063, 0)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Dark stone grey")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 hatch1 = Instance.new("Part", msubmarine)
hatch1.FormFactor = Enum.FormFactor.Plate
hatch1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hatch1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hatch1.Anchored = false
hatch1.Material = Enum.Material.Metal
hatch1.Size = Vector3.new(7, 0.4, 8)
hatch1.Name = "hatch1"
hatch1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hatch1.CFrame = CFrame.new(-168.671, 455.749, 2530)* CFrame.Angles(-0, 0, -1.9198621511459)
hatch1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hatch1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hatch1.BrickColor = BrickColor.new("Dark stone grey")
hatch1.Friction = 0.3
hatch1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 wedge_6 = Instance.new("WedgePart", msubmarine)
wedge_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.Friction = 0.3
wedge_6.Material = Enum.Material.Metal
wedge_6.Size = Vector3.new(22.397, 21.555, 46.783)
wedge_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_6.CFrame = CFrame.new(-167.418, 424.229, 2626.361)* CFrame.Angles(3.141592502594, -2.9802325940409e-008, 1.5707963705063)
wedge_6.BrickColor = BrickColor.new("Dark stone grey")
wedge_6.Anchored = false

 wedge_7 = Instance.new("WedgePart", msubmarine)
wedge_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.Friction = 0.3
wedge_7.Material = Enum.Material.Metal
wedge_7.Size = Vector3.new(3.366, 20.536, 3.366)
wedge_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_7.CFrame = CFrame.new(-172, 432.798, 2445.068)* CFrame.Angles(1.5707963705063, -0, 3.1415927410126)
wedge_7.BrickColor = BrickColor.new("Dark stone grey")
wedge_7.Anchored = false

 wedge_8 = Instance.new("WedgePart", msubmarine)
wedge_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.Friction = 0.3
wedge_8.Material = Enum.Material.Metal
wedge_8.Size = Vector3.new(24, 12.2, 2)
wedge_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_8.CFrame = CFrame.new(-155.9, 451.619, 2528)* CFrame.Angles(1.5707963705063, 0, -1.5707963705063)
wedge_8.BrickColor = BrickColor.new("Dark stone grey")
wedge_8.Anchored = false

 part_19 = Instance.new("Part", msubmarine)
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.Anchored = false
part_19.Material = Enum.Material.Metal
part_19.Size = Vector3.new(19.989, 1.2, 28.205)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(-180.983, 425.619, 2505.897)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = BrickColor.new("Dark stone grey")
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_20 = Instance.new("Part", msubmarine)
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.Anchored = false
part_20.Material = Enum.Material.Metal
part_20.Size = Vector3.new(28, 12.4, 2)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(-190, 419.619, 2506)* CFrame.Angles(0, 1.5707963705063, 0)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Dark stone grey")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_21 = Instance.new("Part", msubmarine)
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Anchored = false
part_21.Material = Enum.Material.Metal
part_21.Size = Vector3.new(18, 12.4, 2)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(-180, 419.619, 2519)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Dark stone grey")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_22 = Instance.new("Part", msubmarine)
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.Anchored = false
part_22.Material = Enum.Material.Metal
part_22.Size = Vector3.new(9, 12.4, 2)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(-172, 419.619, 2496.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Dark stone grey")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_23 = Instance.new("Part", msubmarine)
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Anchored = false
part_23.Material = Enum.Material.Metal
part_23.Size = Vector3.new(9, 12.4, 2)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(-172, 419.619, 2513.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("Dark stone grey")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_24 = Instance.new("Part", msubmarine)
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Anchored = false
part_24.Material = Enum.Material.Metal
part_24.Size = Vector3.new(16, 12.4, 2)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(-181, 419.619, 2493)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Dark stone grey")
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_25 = Instance.new("Part", msubmarine)
part_25.FormFactor = Enum.FormFactor.Plate
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.Anchored = false
part_25.Size = Vector3.new(1, 3.6, 2)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(-186.101, 415.229, 2508.8)* CFrame.Angles(-0, -1.5707963705063, 0)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Black")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_26 = Instance.new("Part", msubmarine)
part_26.FormFactor = Enum.FormFactor.Custom
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Anchored = false
part_26.Material = Enum.Material.SmoothPlastic
part_26.Size = Vector3.new(2.73, 0.783, 1.565)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(-186.179, 414.785, 2512.701)* CFrame.Angles(1.5707963705063, 1.5707963705063, 0)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Dark stone grey")
part_26.Friction = 0.3
part_26.Shape = Enum.PartType.Cylinder
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_27 = Instance.new("Part", msubmarine)
part_27.FormFactor = Enum.FormFactor.Custom
part_27.CanCollide = false
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.Anchored = false
part_27.Material = Enum.Material.Wood
part_27.Size = Vector3.new(0.2, 4.226, 3.6)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(-186.2, 416.228, 2512.701)* CFrame.Angles(1.5707963705063, 1.5707963705063, 0)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Pine Cone")
part_27.Friction = 0.3
part_27.Shape = Enum.PartType.Cylinder
part_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("SpecialMesh", part_27)
mesh_3.Scale = Vector3.new(0.783, 1, 1)
mesh_3.MeshType = Enum.MeshType.Cylinder

 seat_5 = Instance.new("Seat", msubmarine)
seat_5.Friction = 0.3
seat_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.Anchored = false
seat_5.BrickColor = BrickColor.new("Black")
seat_5.CFrame = CFrame.new(-186.101, 413.929, 2515.3)* CFrame.Angles(-0, -1.1924880638503e-008, -0)
seat_5.Size = Vector3.new(2, 1, 2)
seat_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_5.Name = "Seat"

 part_28 = Instance.new("Part", msubmarine)
part_28.FormFactor = Enum.FormFactor.Plate
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.Anchored = false
part_28.Size = Vector3.new(1, 3.6, 2)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(-186.101, 415.229, 2516.8)* CFrame.Angles(0, 1.5707963705063, 0)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Black")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_6 = Instance.new("Seat", msubmarine)
seat_6.Friction = 0.3
seat_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.Anchored = false
seat_6.BrickColor = BrickColor.new("Black")
seat_6.CFrame = CFrame.new(-186.101, 413.929, 2510.3)* CFrame.Angles(-3.1415927410126, 1.1924880638503e-008, -3.1415927410126)
seat_6.Size = Vector3.new(2, 1, 2)
seat_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_6.Name = "Seat"

 part_29 = Instance.new("Part", msubmarine)
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Anchored = false
part_29.Material = Enum.Material.SmoothPlastic
part_29.Size = Vector3.new(8, 1.2, 7)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(-177, 419.419, 2469.5)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("Really black")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_30 = Instance.new("Part", msubmarine)
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Anchored = false
part_30.Material = Enum.Material.SmoothPlastic
part_30.Size = Vector3.new(8, 1.204, 9.006)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(-185, 421.417, 2485.503)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("Earth green")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_31 = Instance.new("Part", msubmarine)
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Anchored = false
part_31.Material = Enum.Material.Metal
part_31.Size = Vector3.new(9, 12.4, 2)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(-172, 419.619, 2485.5)* CFrame.Angles(-0, -1.5707963705063, 0)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Dark stone grey")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 wedge_9 = Instance.new("WedgePart", msubmarine)
wedge_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.Friction = 0.3
wedge_9.Material = Enum.Material.Metal
wedge_9.Size = Vector3.new(22.316, 10.105, 46.344)
wedge_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_9.CFrame = CFrame.new(-159.292, 424.277, 2625.794)* CFrame.Angles(3.141592502594, 0.17453272640705, 1.5707963705063)
wedge_9.BrickColor = BrickColor.new("Dark stone grey")
wedge_9.Anchored = false

 wedge_10 = Instance.new("WedgePart", msubmarine)
wedge_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.Friction = 0.3
wedge_10.Material = Enum.Material.Metal
wedge_10.Size = Vector3.new(22.359, 11.767, 46.344)
wedge_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wedge_10.CFrame = CFrame.new(-163.432, 424.259, 2622.641)* CFrame.Angles(3.141592502594, 0.34906581044197, 1.5707963705063)
wedge_10.BrickColor = BrickColor.new("Dark stone grey")
wedge_10.Anchored = false

 camerapart = Instance.new("Part", msubmarine)
camerapart.CanCollide = false
camerapart.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
camerapart.Transparency = 1
camerapart.TopSurface = Enum.SurfaceType.SmoothNoOutlines
camerapart.Anchored = false
camerapart.Material = Enum.Material.Metal
camerapart.Size = Vector3.new(2, 2.4, 2)
camerapart.Name = "camerapart"
camerapart.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
camerapart.CFrame = CFrame.new(-164.499, 424.628, 2650.782)
camerapart.RightSurface = Enum.SurfaceType.SmoothNoOutlines
camerapart.BackSurface = Enum.SurfaceType.SmoothNoOutlines
camerapart.BrickColor = BrickColor.new("Dark stone grey")
camerapart.Friction = 0.3
camerapart.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_32 = Instance.new("Part", msubmarine)
part_32.FormFactor = Enum.FormFactor.Plate
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Anchored = false
part_32.Material = Enum.Material.Metal
part_32.Size = Vector3.new(43, 0.4, 74)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(-171.5, 435.219, 2566)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Dark stone grey")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 surfacelight = Instance.new("SurfaceLight", part_32)
surfacelight.Color = Color3.new(1, 0.0117647, 0.0117647)
surfacelight.Face = Enum.NormalId.Bottom
surfacelight.Range = 20
surfacelight.Brightness = 10

 part_33 = Instance.new("Part", msubmarine)
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Anchored = false
part_33.Material = Enum.Material.Metal
part_33.Size = Vector3.new(43, 2.4, 2)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(-171.5, 424.219, 2602)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("Dark stone grey")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_34 = Instance.new("Part", msubmarine)
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Anchored = false
part_34.Material = Enum.Material.Metal
part_34.Size = Vector3.new(43, 2.4, 2)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(-171.5, 429.019, 2602)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Dark stone grey")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_35 = Instance.new("Part", msubmarine)
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Anchored = false
part_35.Material = Enum.Material.Metal
part_35.Size = Vector3.new(43, 2.4, 2)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(-171.5, 431.419, 2602)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Dark stone grey")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_36 = Instance.new("Part", msubmarine)
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Anchored = false
part_36.Material = Enum.Material.Metal
part_36.Size = Vector3.new(43, 2.4, 2)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(-171.5, 433.819, 2602)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BrickColor = BrickColor.new("Dark stone grey")
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_37 = Instance.new("Part", msubmarine)
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Anchored = false
part_37.Material = Enum.Material.Metal
part_37.Size = Vector3.new(43, 2.4, 2)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(-171.5, 426.619, 2602)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = BrickColor.new("Dark stone grey")
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_38 = Instance.new("Part", msubmarine)
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Anchored = false
part_38.Material = Enum.Material.Metal
part_38.Size = Vector3.new(20, 2.4, 2)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(-172, 441.419, 2539)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BrickColor = BrickColor.new("Dark stone grey")
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_39 = Instance.new("Part", msubmarine)
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.Anchored = false
part_39.Material = Enum.Material.Metal
part_39.Size = Vector3.new(20, 2.4, 2)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(-172, 451.019, 2539)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("Dark stone grey")
part_39.Friction = 0.3
part_39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_40 = Instance.new("Part", msubmarine)
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Anchored = false
part_40.Material = Enum.Material.Metal
part_40.Size = Vector3.new(20, 2.4, 2)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(-172, 443.819, 2539)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BrickColor = BrickColor.new("Dark stone grey")
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_41 = Instance.new("Part", msubmarine)
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.Anchored = false
part_41.Material = Enum.Material.Metal
part_41.Size = Vector3.new(43, 2.4, 2)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(-171.5, 417.019, 2602)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Dark stone grey")
part_41.Friction = 0.3
part_41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_42 = Instance.new("Part", msubmarine)
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Anchored = false
part_42.Material = Enum.Material.Metal
part_42.Size = Vector3.new(43, 2.4, 2)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(-171.5, 419.419, 2602)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Dark stone grey")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_43 = Instance.new("Part", msubmarine)
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.Anchored = false
part_43.Material = Enum.Material.Metal
part_43.Size = Vector3.new(43, 2.4, 2)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(-171.5, 421.819, 2602)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Dark stone grey")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_44 = Instance.new("Part", msubmarine)
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.Anchored = false
part_44.Material = Enum.Material.Metal
part_44.Size = Vector3.new(20, 2.4, 2)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(-172, 446.219, 2539)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BrickColor = BrickColor.new("Dark stone grey")
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_45 = Instance.new("Part", msubmarine)
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.Anchored = false
part_45.Material = Enum.Material.Metal
part_45.Size = Vector3.new(43, 2.4, 2)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(-171.5, 414.619, 2602)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Dark stone grey")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_46 = Instance.new("Part", msubmarine)
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.Anchored = false
part_46.Material = Enum.Material.Metal
part_46.Size = Vector3.new(143, 2.4, 2)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(-192, 419.419, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BrickColor = BrickColor.new("Dark stone grey")
part_46.Friction = 0.3
part_46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_47 = Instance.new("Part", msubmarine)
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.Anchored = false
part_47.Material = Enum.Material.Metal
part_47.Size = Vector3.new(143, 2.4, 2)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(-192, 424.219, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BrickColor = BrickColor.new("Dark stone grey")
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_48 = Instance.new("Part", msubmarine)
part_48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.Anchored = false
part_48.Material = Enum.Material.Metal
part_48.Size = Vector3.new(143, 2.4, 2)
part_48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.CFrame = CFrame.new(-192, 421.819, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BrickColor = BrickColor.new("Dark stone grey")
part_48.Friction = 0.3
part_48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_49 = Instance.new("Part", msubmarine)
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.Anchored = false
part_49.Material = Enum.Material.Metal
part_49.Size = Vector3.new(143, 2.4, 2)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(-192, 426.619, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BrickColor = BrickColor.new("Dark stone grey")
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_50 = Instance.new("Part", msubmarine)
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.Anchored = false
part_50.Material = Enum.Material.Metal
part_50.Size = Vector3.new(20, 2.4, 2)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(-172, 448.619, 2539)
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BrickColor = BrickColor.new("Dark stone grey")
part_50.Friction = 0.3
part_50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_51 = Instance.new("Part", msubmarine)
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.Anchored = false
part_51.Material = Enum.Material.Metal
part_51.Size = Vector3.new(20, 2.4, 2)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(-172, 439.019, 2539)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = BrickColor.new("Dark stone grey")
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_52 = Instance.new("Part", msubmarine)
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.Anchored = false
part_52.Material = Enum.Material.Metal
part_52.Size = Vector3.new(143, 2.4, 2)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(-192, 429.019, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("Dark stone grey")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_53 = Instance.new("Part", msubmarine)
part_53.FormFactor = Enum.FormFactor.Plate
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.Anchored = false
part_53.Material = Enum.Material.Metal
part_53.Size = Vector3.new(20, 0.4, 6)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(-172, 452.419, 2537)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BrickColor = BrickColor.new("Dark stone grey")
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_54 = Instance.new("Part", msubmarine)
part_54.FormFactor = Enum.FormFactor.Plate
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.Anchored = false
part_54.Material = Enum.Material.Metal
part_54.Size = Vector3.new(43, 0.4, 145)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(-171.5, 413.219, 2530.5)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BrickColor = BrickColor.new("Dark stone grey")
part_54.Friction = 0.3
part_54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_55 = Instance.new("Part", msubmarine)
part_55.FormFactor = Enum.FormFactor.Plate
part_55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.Anchored = false
part_55.Material = Enum.Material.Metal
part_55.Size = Vector3.new(4, 0.4, 8)
part_55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.CFrame = CFrame.new(-180, 452.419, 2530)
part_55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BrickColor = BrickColor.new("Dark stone grey")
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_56 = Instance.new("Part", msubmarine)
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.Anchored = false
part_56.Material = Enum.Material.Metal
part_56.Size = Vector3.new(143, 2.4, 2)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(-192, 414.619, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = BrickColor.new("Dark stone grey")
part_56.Friction = 0.3
part_56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_57 = Instance.new("Part", msubmarine)
part_57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.Anchored = false
part_57.Material = Enum.Material.Metal
part_57.Size = Vector3.new(20, 2.4, 2)
part_57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.CFrame = CFrame.new(-172, 436.619, 2539)
part_57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BrickColor = BrickColor.new("Dark stone grey")
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_58 = Instance.new("Part", msubmarine)
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.Anchored = false
part_58.Material = Enum.Material.Metal
part_58.Size = Vector3.new(143, 2.4, 2)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(-192, 417.019, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BrickColor = BrickColor.new("Dark stone grey")
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_59 = Instance.new("Part", msubmarine)
part_59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.Anchored = false
part_59.Material = Enum.Material.Metal
part_59.Size = Vector3.new(143, 2.4, 2)
part_59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.CFrame = CFrame.new(-192, 431.419, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BrickColor = BrickColor.new("Dark stone grey")
part_59.Friction = 0.3
part_59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_60 = Instance.new("Part", msubmarine)
part_60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.Anchored = false
part_60.Material = Enum.Material.Metal
part_60.Size = Vector3.new(143, 2.4, 2)
part_60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.CFrame = CFrame.new(-192, 433.819, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BrickColor = BrickColor.new("Dark stone grey")
part_60.Friction = 0.3
part_60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_61 = Instance.new("Part", msubmarine)
part_61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.Anchored = false
part_61.Material = Enum.Material.Metal
part_61.Size = Vector3.new(141, 2.4, 2)
part_61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.CFrame = CFrame.new(-151, 414.619, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BrickColor = BrickColor.new("Dark stone grey")
part_61.Friction = 0.3
part_61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_62 = Instance.new("Part", msubmarine)
part_62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.Anchored = false
part_62.Material = Enum.Material.Metal
part_62.Size = Vector3.new(20, 2.4, 2)
part_62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.CFrame = CFrame.new(-181, 446.219, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BrickColor = BrickColor.new("Dark stone grey")
part_62.Friction = 0.3
part_62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_63 = Instance.new("TrussPart", msubmarine)
part_63.Friction = 0.3
part_63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.Reflectance = 0.8
part_63.Anchored = false
part_63.Material = Enum.Material.Metal
part_63.Size = Vector3.new(2, 16, 2)
part_63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BrickColor = BrickColor.new("Dark stone grey")
part_63.CFrame = CFrame.new(-172, 443.419, 2533)* CFrame.Angles(0, 1.5707963705063, 0)
part_63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.Name = "Part"
part_63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_64 = Instance.new("Part", msubmarine)
part_64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.Anchored = false
part_64.Material = Enum.Material.Metal
part_64.Size = Vector3.new(20, 2.4, 2)
part_64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.CFrame = CFrame.new(-181, 441.419, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BrickColor = BrickColor.new("Dark stone grey")
part_64.Friction = 0.3
part_64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_65 = Instance.new("Part", msubmarine)
part_65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.Anchored = false
part_65.Material = Enum.Material.Metal
part_65.Size = Vector3.new(20, 2.4, 2)
part_65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.CFrame = CFrame.new(-181, 451.019, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BrickColor = BrickColor.new("Dark stone grey")
part_65.Friction = 0.3
part_65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_66 = Instance.new("Part", msubmarine)
part_66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.Anchored = false
part_66.Material = Enum.Material.Metal
part_66.Size = Vector3.new(141, 2.4, 2)
part_66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.CFrame = CFrame.new(-151, 424.219, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BrickColor = BrickColor.new("Dark stone grey")
part_66.Friction = 0.3
part_66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_67 = Instance.new("Part", msubmarine)
part_67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.Anchored = false
part_67.Material = Enum.Material.Metal
part_67.Size = Vector3.new(20, 2.4, 2)
part_67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.CFrame = CFrame.new(-181, 448.619, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BrickColor = BrickColor.new("Dark stone grey")
part_67.Friction = 0.3
part_67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_68 = Instance.new("Part", msubmarine)
part_68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.Anchored = false
part_68.Material = Enum.Material.Metal
part_68.Size = Vector3.new(20, 2.4, 2)
part_68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.CFrame = CFrame.new(-181, 436.619, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BrickColor = BrickColor.new("Dark stone grey")
part_68.Friction = 0.3
part_68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_69 = Instance.new("Part", msubmarine)
part_69.FormFactor = Enum.FormFactor.Plate
part_69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.Anchored = false
part_69.Material = Enum.Material.Metal
part_69.Size = Vector3.new(5, 0.4, 4)
part_69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.CFrame = CFrame.new(-172, 435.619, 2529.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BrickColor = BrickColor.new("Dark stone grey")
part_69.Friction = 0.3
part_69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_70 = Instance.new("Part", msubmarine)
part_70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.Anchored = false
part_70.Material = Enum.Material.Metal
part_70.Size = Vector3.new(20, 2.4, 2)
part_70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.CFrame = CFrame.new(-181, 443.819, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BrickColor = BrickColor.new("Dark stone grey")
part_70.Friction = 0.3
part_70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_71 = Instance.new("Part", msubmarine)
part_71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.Anchored = false
part_71.Material = Enum.Material.Metal
part_71.Size = Vector3.new(20, 2.4, 2)
part_71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.CFrame = CFrame.new(-181, 439.019, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BrickColor = BrickColor.new("Dark stone grey")
part_71.Friction = 0.3
part_71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_72 = Instance.new("Part", msubmarine)
part_72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.Anchored = false
part_72.Material = Enum.Material.Metal
part_72.Size = Vector3.new(20, 2.4, 2)
part_72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.CFrame = CFrame.new(-163, 446.219, 2528)* CFrame.Angles(-0, 1.5707963705063, 0)
part_72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BrickColor = BrickColor.new("Dark stone grey")
part_72.Friction = 0.3
part_72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_73 = Instance.new("Part", msubmarine)
part_73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.Anchored = false
part_73.Material = Enum.Material.Metal
part_73.Size = Vector3.new(141, 2.4, 2)
part_73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.CFrame = CFrame.new(-151, 431.419, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BrickColor = BrickColor.new("Dark stone grey")
part_73.Friction = 0.3
part_73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_74 = Instance.new("Part", msubmarine)
part_74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.Anchored = false
part_74.Material = Enum.Material.Metal
part_74.Size = Vector3.new(20, 2.4, 2)
part_74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.CFrame = CFrame.new(-163, 443.819, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BrickColor = BrickColor.new("Dark stone grey")
part_74.Friction = 0.3
part_74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_75 = Instance.new("Part", msubmarine)
part_75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.Anchored = false
part_75.Material = Enum.Material.Metal
part_75.Size = Vector3.new(20, 2.4, 2)
part_75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.CFrame = CFrame.new(-163, 441.419, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BrickColor = BrickColor.new("Dark stone grey")
part_75.Friction = 0.3
part_75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_76 = Instance.new("Part", msubmarine)
part_76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.Anchored = false
part_76.Material = Enum.Material.Metal
part_76.Size = Vector3.new(141, 2.4, 2)
part_76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.CFrame = CFrame.new(-151, 417.019, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BrickColor = BrickColor.new("Dark stone grey")
part_76.Friction = 0.3
part_76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_77 = Instance.new("Part", msubmarine)
part_77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.Anchored = false
part_77.Material = Enum.Material.Metal
part_77.Size = Vector3.new(141, 2.4, 2)
part_77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.CFrame = CFrame.new(-151, 433.819, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BrickColor = BrickColor.new("Dark stone grey")
part_77.Friction = 0.3
part_77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_78 = Instance.new("Part", msubmarine)
part_78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.Anchored = false
part_78.Material = Enum.Material.Metal
part_78.Size = Vector3.new(20, 2.4, 2)
part_78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.CFrame = CFrame.new(-163, 439.019, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BrickColor = BrickColor.new("Dark stone grey")
part_78.Friction = 0.3
part_78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_79 = Instance.new("Part", msubmarine)
part_79.FormFactor = Enum.FormFactor.Plate
part_79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.Anchored = false
part_79.Material = Enum.Material.Metal
part_79.Size = Vector3.new(8, 0.4, 8)
part_79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.CFrame = CFrame.new(-166, 452.419, 2530)
part_79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BrickColor = BrickColor.new("Dark stone grey")
part_79.Friction = 0.3
part_79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_80 = Instance.new("Part", msubmarine)
part_80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.Anchored = false
part_80.Material = Enum.Material.Metal
part_80.Size = Vector3.new(141, 2.4, 2)
part_80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.CFrame = CFrame.new(-151, 429.019, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BrickColor = BrickColor.new("Dark stone grey")
part_80.Friction = 0.3
part_80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_81 = Instance.new("Part", msubmarine)
part_81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.Anchored = false
part_81.Material = Enum.Material.Metal
part_81.Size = Vector3.new(20, 2.4, 2)
part_81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.CFrame = CFrame.new(-163, 448.619, 2528)* CFrame.Angles(-0, 1.5707963705063, 0)
part_81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BrickColor = BrickColor.new("Dark stone grey")
part_81.Friction = 0.3
part_81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_82 = Instance.new("Part", msubmarine)
part_82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.Anchored = false
part_82.Material = Enum.Material.Metal
part_82.Size = Vector3.new(141, 2.4, 2)
part_82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.CFrame = CFrame.new(-151, 426.619, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BrickColor = BrickColor.new("Dark stone grey")
part_82.Friction = 0.3
part_82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_83 = Instance.new("Part", msubmarine)
part_83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.Anchored = false
part_83.Material = Enum.Material.Metal
part_83.Size = Vector3.new(141, 2.4, 2)
part_83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.CFrame = CFrame.new(-151, 419.419, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BrickColor = BrickColor.new("Dark stone grey")
part_83.Friction = 0.3
part_83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_84 = Instance.new("Part", msubmarine)
part_84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.Anchored = false
part_84.Material = Enum.Material.Metal
part_84.Size = Vector3.new(20, 2.4, 2)
part_84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.CFrame = CFrame.new(-163, 451.019, 2528)* CFrame.Angles(-0, 1.5707963705063, 0)
part_84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BrickColor = BrickColor.new("Dark stone grey")
part_84.Friction = 0.3
part_84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_85 = Instance.new("Part", msubmarine)
part_85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.Anchored = false
part_85.Material = Enum.Material.Metal
part_85.Size = Vector3.new(141, 2.4, 2)
part_85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.CFrame = CFrame.new(-151, 421.819, 2530.5)* CFrame.Angles(0, 1.5707963705063, 0)
part_85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BrickColor = BrickColor.new("Dark stone grey")
part_85.Friction = 0.3
part_85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_86 = Instance.new("Part", msubmarine)
part_86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.Anchored = false
part_86.Material = Enum.Material.Metal
part_86.Size = Vector3.new(20, 2.4, 2)
part_86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.CFrame = CFrame.new(-172, 443.819, 2517)
part_86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BrickColor = BrickColor.new("Dark stone grey")
part_86.Friction = 0.3
part_86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_87 = Instance.new("TrussPart", msubmarine)
part_87.Friction = 0.3
part_87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.Reflectance = 0.8
part_87.Anchored = false
part_87.Material = Enum.Material.Metal
part_87.Size = Vector3.new(2, 22, 2)
part_87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BrickColor = BrickColor.new("Dark stone grey")
part_87.CFrame = CFrame.new(-172, 424.419, 2526)
part_87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.Name = "Part"
part_87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines

 part_88 = Instance.new("Part", msubmarine)
part_88.FormFactor = Enum.FormFactor.Plate
part_88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.Anchored = false
part_88.Material = Enum.Material.Metal
part_88.Size = Vector3.new(20, 0.4, 10)
part_88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.CFrame = CFrame.new(-172, 452.419, 2521)
part_88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BrickColor = BrickColor.new("Dark stone grey")
part_88.Friction = 0.3
part_88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_89 = Instance.new("Part", msubmarine)
part_89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.Anchored = false
part_89.Material = Enum.Material.Metal
part_89.Size = Vector3.new(20, 2.4, 2)
part_89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.CFrame = CFrame.new(-172, 451.019, 2517)
part_89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BrickColor = BrickColor.new("Dark stone grey")
part_89.Friction = 0.3
part_89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_90 = Instance.new("Part", msubmarine)
part_90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.Anchored = false
part_90.Material = Enum.Material.Metal
part_90.Size = Vector3.new(20, 2.4, 2)
part_90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.CFrame = CFrame.new(-172, 439.019, 2517)
part_90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BrickColor = BrickColor.new("Dark stone grey")
part_90.Friction = 0.3
part_90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_91 = Instance.new("Part", msubmarine)
part_91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.Anchored = false
part_91.Material = Enum.Material.Metal
part_91.Size = Vector3.new(20, 2.4, 2)
part_91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.CFrame = CFrame.new(-172, 446.219, 2517)
part_91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BrickColor = BrickColor.new("Dark stone grey")
part_91.Friction = 0.3
part_91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_92 = Instance.new("Part", msubmarine)
part_92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.Anchored = false
part_92.Material = Enum.Material.Metal
part_92.Size = Vector3.new(20, 2.4, 2)
part_92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.CFrame = CFrame.new(-163, 436.619, 2528)* CFrame.Angles(0, 1.5707963705063, 0)
part_92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BrickColor = BrickColor.new("Dark stone grey")
part_92.Friction = 0.3
part_92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_93 = Instance.new("Part", msubmarine)
part_93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.Anchored = false
part_93.Material = Enum.Material.Metal
part_93.Size = Vector3.new(20, 2.4, 2)
part_93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.CFrame = CFrame.new(-172, 448.619, 2517)
part_93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BrickColor = BrickColor.new("Dark stone grey")
part_93.Friction = 0.3
part_93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_94 = Instance.new("Part", msubmarine)
part_94.FormFactor = Enum.FormFactor.Plate
part_94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.Anchored = false
part_94.Material = Enum.Material.Metal
part_94.Size = Vector3.new(4, 0.4, 65)
part_94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.CFrame = CFrame.new(-172, 435.219, 2490.5)
part_94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BrickColor = BrickColor.new("Dark stone grey")
part_94.Friction = 0.3
part_94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 surfacelight_2 = Instance.new("SurfaceLight", part_94)
surfacelight_2.Color = Color3.new(1, 0.0117647, 0.0117647)
surfacelight_2.Face = Enum.NormalId.Bottom
surfacelight_2.Range = 20
surfacelight_2.Brightness = 10

 part_95 = Instance.new("Part", msubmarine)
part_95.FormFactor = Enum.FormFactor.Plate
part_95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.Anchored = false
part_95.Material = Enum.Material.Metal
part_95.Size = Vector3.new(20, 0.4, 71)
part_95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.CFrame = CFrame.new(-160, 435.219, 2493.5)
part_95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BrickColor = BrickColor.new("Dark stone grey")
part_95.Friction = 0.3
part_95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 surfacelight_3 = Instance.new("SurfaceLight", part_95)
surfacelight_3.Color = Color3.new(1, 0.0117647, 0.0117647)
surfacelight_3.Face = Enum.NormalId.Bottom
surfacelight_3.Range = 20
surfacelight_3.Brightness = 10

 part_96 = Instance.new("Part", msubmarine)
part_96.FormFactor = Enum.FormFactor.Plate
part_96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.Anchored = false
part_96.Material = Enum.Material.Metal
part_96.Size = Vector3.new(19, 0.4, 71)
part_96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.CFrame = CFrame.new(-183.5, 435.219, 2493.5)
part_96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BrickColor = BrickColor.new("Dark stone grey")
part_96.Friction = 0.3
part_96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 surfacelight_4 = Instance.new("SurfaceLight", part_96)
surfacelight_4.Color = Color3.new(1, 0.0117647, 0.0117647)
surfacelight_4.Face = Enum.NormalId.Bottom
surfacelight_4.Range = 20
surfacelight_4.Brightness = 10

 part_97 = Instance.new("Part", msubmarine)
part_97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.Anchored = false
part_97.Material = Enum.Material.Metal
part_97.Size = Vector3.new(41, 2.4, 2)
part_97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.CFrame = CFrame.new(-170.5, 414.619, 2459)
part_97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BrickColor = BrickColor.new("Dark stone grey")
part_97.Friction = 0.3
part_97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_98 = Instance.new("Part", msubmarine)
part_98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.Anchored = false
part_98.Material = Enum.Material.Metal
part_98.Size = Vector3.new(20, 2.4, 2)
part_98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.CFrame = CFrame.new(-172, 436.619, 2517)
part_98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BrickColor = BrickColor.new("Dark stone grey")
part_98.Friction = 0.3
part_98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_99 = Instance.new("Part", msubmarine)
part_99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.Anchored = false
part_99.Material = Enum.Material.Metal
part_99.Size = Vector3.new(20, 2.4, 2)
part_99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.CFrame = CFrame.new(-172, 441.419, 2517)
part_99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_99.BrickColor = BrickColor.new("Dark stone grey")
part_99.Friction = 0.3
part_99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_100 = Instance.new("Part", msubmarine)
part_100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.Anchored = false
part_100.Material = Enum.Material.Metal
part_100.Size = Vector3.new(41, 2.4, 2)
part_100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.CFrame = CFrame.new(-170.5, 417.019, 2459)
part_100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_100.BrickColor = BrickColor.new("Dark stone grey")
part_100.Friction = 0.3
part_100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_101 = Instance.new("Part", msubmarine)
part_101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.Anchored = false
part_101.Material = Enum.Material.Metal
part_101.Size = Vector3.new(41, 2.4, 2)
part_101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.CFrame = CFrame.new(-170.5, 433.819, 2459)
part_101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_101.BrickColor = BrickColor.new("Dark stone grey")
part_101.Friction = 0.3
part_101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_102 = Instance.new("Part", msubmarine)
part_102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.Anchored = false
part_102.Material = Enum.Material.Metal
part_102.Size = Vector3.new(41, 2.4, 2)
part_102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.CFrame = CFrame.new(-170.5, 429.019, 2459)
part_102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_102.BrickColor = BrickColor.new("Dark stone grey")
part_102.Friction = 0.3
part_102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_103 = Instance.new("Part", msubmarine)
part_103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.Anchored = false
part_103.Material = Enum.Material.Metal
part_103.Size = Vector3.new(41, 2.4, 2)
part_103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.CFrame = CFrame.new(-170.5, 421.819, 2459)
part_103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_103.BrickColor = BrickColor.new("Dark stone grey")
part_103.Friction = 0.3
part_103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_104 = Instance.new("Part", msubmarine)
part_104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.Anchored = false
part_104.Material = Enum.Material.Metal
part_104.Size = Vector3.new(41, 2.4, 2)
part_104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.CFrame = CFrame.new(-170.5, 426.619, 2459)
part_104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_104.BrickColor = BrickColor.new("Dark stone grey")
part_104.Friction = 0.3
part_104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_105 = Instance.new("Part", msubmarine)
part_105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.Anchored = false
part_105.Material = Enum.Material.Metal
part_105.Size = Vector3.new(41, 2.4, 2)
part_105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.CFrame = CFrame.new(-170.5, 419.419, 2459)
part_105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_105.BrickColor = BrickColor.new("Dark stone grey")
part_105.Friction = 0.3
part_105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_106 = Instance.new("Part", msubmarine)
part_106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.Anchored = false
part_106.Material = Enum.Material.Metal
part_106.Size = Vector3.new(41, 2.4, 2)
part_106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.CFrame = CFrame.new(-170.5, 431.419, 2459)
part_106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_106.BrickColor = BrickColor.new("Dark stone grey")
part_106.Friction = 0.3
part_106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_107 = Instance.new("Part", msubmarine)
part_107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.Anchored = false
part_107.Material = Enum.Material.Metal
part_107.Size = Vector3.new(41, 2.4, 2)
part_107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.CFrame = CFrame.new(-170.5, 424.219, 2459)
part_107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_107.BrickColor = BrickColor.new("Dark stone grey")
part_107.Friction = 0.3
part_107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_108 = Instance.new("Part", msubmarine)
part_108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.Anchored = false
part_108.Material = Enum.Material.Metal
part_108.Size = Vector3.new(18, 12.4, 2)
part_108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.CFrame = CFrame.new(-180, 419.619, 2491)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_108.BrickColor = BrickColor.new("Dark stone grey")
part_108.Friction = 0.3
part_108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_109 = Instance.new("Part", msubmarine)
part_109.FormFactor = Enum.FormFactor.Plate
part_109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.Anchored = false
part_109.Size = Vector3.new(1, 3.85, 2)
part_109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.CFrame = CFrame.new(-178.5, 415.202, 2479)* CFrame.Angles(-0, -1.5707963705063, 0)
part_109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_109.BrickColor = BrickColor.new("Black")
part_109.Friction = 0.3
part_109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mainseat = Instance.new("VehicleSeat", msubmarine)
mainseat.Friction = 0.3
mainseat.TurnSpeed = 0
mainseat.Torque = 0
mainseat.HeadsUpDisplay = false
mainseat.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.TopSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.Anchored = false
mainseat.BrickColor = BrickColor.new("Black")
mainseat.CFrame = CFrame.new(-178.5, 413.916, 2480.5)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
mainseat.Size = Vector3.new(2, 1, 2)
mainseat.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.BackSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.RightSurface = Enum.SurfaceType.SmoothNoOutlines
mainseat.Name = "mainseat"

 engine = Instance.new("Part", msubmarine)
engine.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
engine.TopSurface = Enum.SurfaceType.SmoothNoOutlines
engine.Anchored = false
engine.Material = Enum.Material.SmoothPlastic
engine.Size = Vector3.new(8, 7.4, 9)
engine.Name = "engine"
engine.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
engine.CFrame = CFrame.new(-185, 417.119, 2485.5)* CFrame.Angles(3.141592502594, 1.9073880253018e-007, -3.141592502594)
engine.RightSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BackSurface = Enum.SurfaceType.SmoothNoOutlines
engine.BrickColor = BrickColor.new("Dark stone grey")
engine.Friction = 0.3
engine.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_110 = Instance.new("Part", msubmarine)
part_110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.Anchored = false
part_110.Material = Enum.Material.SmoothPlastic
part_110.Size = Vector3.new(8, 6.4, 6)
part_110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.CFrame = CFrame.new(-177, 416.619, 2486.91)* CFrame.Angles(-0, -8.7422776573476e-008, -0)
part_110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_110.BrickColor = BrickColor.new("Dark stone grey")
part_110.Friction = 0.3
part_110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_111 = Instance.new("Part", msubmarine)
part_111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.Anchored = false
part_111.Material = Enum.Material.Metal
part_111.Size = Vector3.new(19.989, 1.2, 28.205)
part_111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.CFrame = CFrame.new(-180.983, 425.619, 2477.897)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_111.BrickColor = BrickColor.new("Dark stone grey")
part_111.Friction = 0.3
part_111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_112 = Instance.new("Part", msubmarine)
part_112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.Anchored = false
part_112.Material = Enum.Material.SmoothPlastic
part_112.Size = Vector3.new(8, 2.4, 7)
part_112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.CFrame = CFrame.new(-185, 414.619, 2469.5)
part_112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_112.BrickColor = BrickColor.new("Dark stone grey")
part_112.Friction = 0.3
part_112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_8 = Instance.new("Seat", msubmarine)
seat_8.Friction = 0.3
seat_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.Anchored = false
seat_8.BrickColor = BrickColor.new("Black")
seat_8.CFrame = CFrame.new(-184, 413.929, 2501.9)* CFrame.Angles(-0, -1.5707963705063, 0)
seat_8.Size = Vector3.new(2, 1, 2)
seat_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_8.Name = "Seat"

 part_113 = Instance.new("Part", msubmarine)
part_113.FormFactor = Enum.FormFactor.Plate
part_113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.Anchored = false
part_113.Size = Vector3.new(1, 3.6, 2)
part_113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.CFrame = CFrame.new(-185.5, 415.229, 2501.9)
part_113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_113.BrickColor = BrickColor.new("Black")
part_113.Friction = 0.3
part_113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_114 = Instance.new("Part", msubmarine)
part_114.FormFactor = Enum.FormFactor.Custom
part_114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.Anchored = false
part_114.Material = Enum.Material.SmoothPlastic
part_114.Size = Vector3.new(2.73, 0.783, 1.565)
part_114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.CFrame = CFrame.new(-181.4, 414.784, 2501.822)* CFrame.Angles(-0, 0, 1.5707963705063)
part_114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_114.BrickColor = BrickColor.new("Dark stone grey")
part_114.Friction = 0.3
part_114.Shape = Enum.PartType.Cylinder
part_114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_115 = Instance.new("Part", msubmarine)
part_115.FormFactor = Enum.FormFactor.Plate
part_115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.Anchored = false
part_115.Size = Vector3.new(1, 3.6, 2)
part_115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.CFrame = CFrame.new(-177.5, 415.229, 2501.9)* CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
part_115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_115.BrickColor = BrickColor.new("Black")
part_115.Friction = 0.3
part_115.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 seat_9 = Instance.new("Seat", msubmarine)
seat_9.Friction = 0.3
seat_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.Anchored = false
seat_9.BrickColor = BrickColor.new("Black")
seat_9.CFrame = CFrame.new(-179, 413.929, 2501.9)* CFrame.Angles(0, 1.5707963705063, 0)
seat_9.Size = Vector3.new(2, 1, 2)
seat_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
seat_9.Name = "Seat"

 part_116 = Instance.new("Part", msubmarine)
part_116.FormFactor = Enum.FormFactor.Custom
part_116.CanCollide = false
part_116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.Anchored = false
part_116.Material = Enum.Material.Wood
part_116.Size = Vector3.new(0.2, 4.226, 3.6)
part_116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.CFrame = CFrame.new(-181.401, 416.228, 2501.8)* CFrame.Angles(-0, 0, 1.5707963705063)
part_116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_116.BrickColor = BrickColor.new("Pine Cone")
part_116.Friction = 0.3
part_116.Shape = Enum.PartType.Cylinder
part_116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_4 = Instance.new("SpecialMesh", part_116)
mesh_4.Scale = Vector3.new(0.783, 1, 1)
mesh_4.MeshType = Enum.MeshType.Cylinder

 part_117 = Instance.new("Part", msubmarine)
part_117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.Anchored = false
part_117.Material = Enum.Material.SmoothPlastic
part_117.Size = Vector3.new(8, 1.2, 7)
part_117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.CFrame = CFrame.new(-185, 416.419, 2469.5)
part_117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_117.BrickColor = BrickColor.new("Really black")
part_117.Friction = 0.3
part_117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_118 = Instance.new("Part", msubmarine)
part_118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.Anchored = false
part_118.Material = Enum.Material.Metal
part_118.Size = Vector3.new(6, 3.4, 6)
part_118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.CFrame = CFrame.new(-177.1, 417.119, 2486.9)* CFrame.Angles(0, 1.5707963705063, 0)
part_118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_118.BrickColor = BrickColor.new("Really black")
part_118.Friction = 0.3
part_118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local waterremover = Instance.new("Part", msubmarine)
waterremover.CanCollide = false
waterremover.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover.Transparency = 1
waterremover.TopSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover.Material = Enum.Material.Metal
waterremover.Size = Vector3.new(187.702, 24.467, 42.556)
waterremover.Name = "waterremover"
waterremover.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover.CFrame = CFrame.new(-171.446, 425.415, 2551.325)* CFrame.Angles(0, 1.5707963705063, 0)
waterremover.RightSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover.BackSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover.BrickColor = BrickColor.new("Dark stone grey")
waterremover.Friction = 0.3
waterremover.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local waterremover2 = Instance.new("Part", msubmarine)
waterremover2.CanCollide = false
waterremover2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover2.Material = Enum.Material.Metal
waterremover2.Size = Vector3.new(23.89, 39.255, 19.81)
waterremover2.Name = "waterremover2"
waterremover2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover2.CFrame = CFrame.new(-172.076, 431.734, 2527.956)* CFrame.Angles(0, 1.5707963705063, 0)
waterremover2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover2.BrickColor = BrickColor.new("Dark stone grey")
waterremover2.Friction = 0.3
waterremover2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
waterremover2.Transparency = 1


msubmarine:BreakJoints()


local engine = msubmarine.engine

local prev
local parts = msubmarine:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") or (parts[i].className == "TrussPart") then 
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
msubmarine:MakeJoints()
msubmarine.Parent = workspace.Terrain

char.Torso.CFrame = engine.CFrame*CFrame.new(-4,-1,0)
local hatchopen = true
waterremover.Touched:connect(function(h)
	if h==game.Workspace.Terrain then
		print("touched terrain")
		while wait() do
			if hatchopen == false then
				local previouscframe = waterremover.CFrame
		game.Workspace.Terrain:FillBlock(waterremover.CFrame, waterremover.Size, Enum.Material.Air)
			--wait(5)
			--game.Workspace.Terrain:FillBlock(previouscframe, waterremover.Size, Enum.Material.Water)
			end
			end
		end
end)
local debugmode = false
waterremover2.Touched:connect(function(h)
	if h==game.Workspace.Terrain then
		print("touched terrain")
		while wait() do
			if hatchopen == false then
				local previouscframe = waterremover2.CFrame
		game.Workspace.Terrain:FillBlock(waterremover2.CFrame, waterremover2.Size, Enum.Material.Air)
			if debugmode == true then
			wait(1)
			game.Workspace.Terrain:FillBlock(previouscframe, waterremover.Size, Enum.Material.Water)
			end
			end
			end
		end
end)

local bv = Instance.new("BodyVelocity", engine)
bv.velocity = Vector3.new(0, 0, 0)
local bg = Instance.new("BodyGyro",engine)
local bav = Instance.new("BodyAngularVelocity", engine)
bav.angularvelocity = Vector3.new(0, 0, 0)
local bodyposition = Instance.new("BodyPosition", engine)
bodyposition.maxForce = Vector3.new(0, 10000000000, 0)
bodyposition.position = Vector3.new(0, 400, 0)


local enginesound = Instance.new("Sound",engine)
enginesound.Volume = .5
enginesound.SoundId = "rbxassetid://138082003"
enginesound.Pitch = 1
enginesound.Looped = true
mouse.KeyDown:connect(function(key)
if key == "y" and engineon == false then
engineon = true
enginesound:Play()
end
end)
mouse.KeyDown:connect(function(key)
if key == "u" and engineon == true then
engineon = false
enginesound:Stop()
end
end)

local wpressed = false
local apressed = false
local spressed = false
local dpressed = false
local autopilot = false
local accel = 0
local angle = 0
local angletorque = 1e+10
local zpressed = 0
mouse.KeyDown:connect(function(key)
if key == "z" then
	zpressed = zpressed + 1
		if zpressed == 1 then
			autopilot = true
		end
		if zpressed == 2 then
			zpressed = 0
			autopilot = false
		end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "w" and engineon == true and autopilot == false then
wpressed = true
bv.MaxForce = Vector3.new(9e20,0,9e20)
while wpressed == true do wait(.08)
accel = accel + 1
if accel >20 then accel = 20 end
bv.Velocity = (engine.CFrame.lookVector * accel)
end
end
end)

mouse.KeyUp:connect(function(key)
if key == "w" then
wpressed = false
while wpressed == false and engineon == true and autopilot == false and accel>0 do wait(.08)
	accel = accel - 1
	bv.Velocity = (engine.CFrame.lookVector * accel)
end
end
end)

mouse.KeyDown:connect(function(key)
if key == "a" and engineon == true and autopilot == false then
	apressed = true
	angle = 8
	bav.AngularVelocity = Vector3.new(0,angle,0)
	bav.MaxTorque = Vector3.new(0,angletorque,0)
end
end)

mouse.KeyUp:connect(function(key)
if key == "a" and engineon == true and autopilot == false then
	angle = 0
	apressed = false
	bav.MaxTorque = Vector3.new(0,0,0)
end
end)

mouse.KeyDown:connect(function(key)
if key == "d" and engineon == true and autopilot == false then
	dpressed = true
	angle = 8
	bav.AngularVelocity = Vector3.new(0,-angle,0)
		bav.MaxTorque = Vector3.new(0,-angletorque,0)
end
end)

mouse.KeyUp:connect(function(key)
if key == "d" and engineon == true and autopilot == false then
	angle = 0
	dpressed = false
	bav.MaxTorque = Vector3.new(0,0,0)
end
end)

local epressed = false
mouse.KeyDown:connect(function(key)
if key == "e" and engineon == true and autopilot == false then
epressed = true
bodyposition.Position = bodyposition.Position+Vector3.new(0,10,0)
end
end)
mouse.KeyUp:connect(function(key)
if key == "e" and engineon == true and autopilot == false then
epressed = false
end
end)

local qpressed = false
mouse.KeyDown:connect(function(key)
if key == "q" and engineon == true and autopilot == false then
qpressed = true
bodyposition.Position = bodyposition.Position-Vector3.new(0,10,0)
end
end)
mouse.KeyUp:connect(function(key)
if key == "q" and engineon == true and autopilot == false then
qpressed = false
end
end)

local doorsound = Instance.new("Sound",msubmarine.hatch1)
doorsound.Volume = .5
doorsound.SoundId = "rbxassetid://192416584"
doorsound.Pitch = 1
doorsound.Looped = false
local doorsound2 = Instance.new("Sound",msubmarine.hatch2)
doorsound2.Volume = .5
doorsound2.SoundId = "rbxassetid://169054195"
doorsound2.Pitch = 1
doorsound2.Looped = false
local ppressed = 0
mouse.KeyDown:connect(function(key)
if key == "p" then
	ppressed = ppressed + 1
	if ppressed == 1 then
	doorsound:Play()
	msubmarine.hatch1.Transparency = 1
	msubmarine.hatch1.CanCollide = false
	msubmarine.hatch2.Transparency = 0
	msubmarine.hatch2.CanCollide = true
	hatchopen = false
	end
	if ppressed == 2 then
	doorsound2:Play()
	msubmarine.hatch1.Transparency = 0
	msubmarine.hatch1.CanCollide = true
	msubmarine.hatch2.Transparency = 1
	msubmarine.hatch2.CanCollide = false
	hatchopen = true
	ppressed = 0
	end
	end
end)

local vpressed = 0
mouse.KeyDown:connect(function(key)
if key == "v" then
	vpressed = vpressed + 1
	if vpressed == 1 then
	debugmode = true
	print("debugmode = true")
	end
	if vpressed == 2 then
	debugmode = false
	print("debugmode = false")
	vpressed = 0
	end
	end
end)


local alarm = Instance.new("Sound",engine)
alarm.Volume = 1
alarm.SoundId = "rbxassetid://148793971"
alarm.Pitch = 1
alarm.Looped = true
local explosionsound = Instance.new("Sound",engine)
explosionsound.Volume = 1
explosionsound.SoundId = "rbxassetid://144699494"
explosionsound.Pitch = 1
explosionsound.Looped = false
mouse.KeyDown:connect(function(key)
if key == "t" then
	print("suicide")
	alarm:Play()
	wait(3)
	local explosion = Instance.new("Explosion",engine)
	explosion.Position = engine.Position
	explosion.ExplosionType = Enum.ExplosionType.NoCraters
	explosion.DestroyJointRadiusPercent = 0
	explosion.BlastRadius = 0
	explosionsound:Play()
	wait(1)
	local explosion = Instance.new("Explosion",msubmarine.Part)
	explosion.Position = msubmarine.Part.Position
	explosion.ExplosionType = Enum.ExplosionType.NoCraters
	explosion.DestroyJointRadiusPercent = 0
	explosion.BlastRadius = 0
	explosionsound:Play()
	wait(1)
	local explosion = Instance.new("Explosion",msubmarine.hatch1)
	explosion.Position = msubmarine.hatch1.Position
	explosion.ExplosionType = Enum.ExplosionType.NoCraters
	explosion.DestroyJointRadiusPercent = 0
	explosion.BlastRadius = 0
	explosionsound:Play()
	wait(1)
	local explosion = Instance.new("Explosion",msubmarine.mainseat)
	explosion.Position = msubmarine.mainseat.Position
	explosion.ExplosionType = Enum.ExplosionType.NoCraters
	explosion.DestroyJointRadiusPercent = 0
	explosion.BlastRadius = 0
	explosionsound:Play()
	wait(1)
	local explosion = Instance.new("Explosion",msubmarine.Seat)
	explosion.Position = msubmarine.Seat.Position
	explosion.ExplosionType = Enum.ExplosionType.NoCraters
	explosion.DestroyJointRadiusPercent = 0
	explosion.BlastRadius = 0
	explosionsound:Play()
	wait(1)
	local explosion = Instance.new("Explosion",msubmarine.Seat)
	explosion.Position = msubmarine.Seat.Position
	explosionsound:Play()
	
	local explosion = Instance.new("Explosion",msubmarine.mainseat)
	explosion.Position = msubmarine.mainseat.Position
	explosionsound:Play()
	
	local explosion = Instance.new("Explosion",msubmarine.hatch1)
	explosion.Position = msubmarine.hatch1.Position
	explosionsound:Play()
	
	local explosion = Instance.new("Explosion",engine)
	explosion.Position = engine.Position
	explosionsound:Play()
	
	msubmarine:BreakJoints()
	alarm:Stop()
	end
end)


 char.Humanoid.Died:connect(function()
         workspace.Terrain.MSubmarine:Destroy()
        end)
        
        player.CharacterRemoving:connect(function()
               workspace.Terrain.MSubmarine:Destroy()
        end)
		
		player.Chatted:connect(function(msg)
			if msg == "g/r" then
              workspace.Terrain.MSubmarine:Destroy()
			end
		end)


--Torpedo--

local cpressed = 0
mouse.KeyDown:connect(function(key)
if key == "c" and engineon == true then
	cpressed = cpressed + 1
	if cpressed == 1 then
	print("Torpedo View Enabled")
	camera.CameraSubject = msubmarine.camerapart
	end
	if cpressed == 2 then
	print("Torpedo View Disabled")
	camera.CameraSubject = char.Humanoid
	cpressed = 0
	end
	end
end)


local missile = Instance.new("Part")
missile.FormFactor = Enum.FormFactor.Plate
missile.Reflectance = 0.1
missile.Material = Enum.Material.Metal
missile.Size = Vector3.new(2, 2.8, 22)
missile.Name = "missile"
missile.CFrame = CFrame.new(-170.6, 414, 2674)* CFrame.Angles(-3.1415927410126, 0, -1.5707963705063)
missile.BrickColor = BrickColor.new("Dark stone grey")
missile.Friction = 0.3

local mesh = Instance.new("SpecialMesh", missile)
mesh.Scale = Vector3.new(7, 7, 7)
mesh.MeshId = "http://www.roblox.com/asset/?id=2697549"
mesh.TextureId = "http://www.roblox.com/asset/?id=2697544"
mesh.MeshType = Enum.MeshType.FileMesh


local gf = Instance.new("Sound",missile)
gf.Volume = 1
gf.SoundId = "rbxassetid://515938017"
gf.Pitch = 1

local canfire = true
function fire()
	if canfire == true then
canfire = false
mouse.Icon = "rbxasset://textures/GunWaitCursor.png"
gf:Play()
local nmissile = missile:Clone()
nmissile.Name = "Torpedo Missile"
nmissile.Parent = workspace
game.Debris:AddItem(nmissile,4)

nmissile.CFrame = msubmarine.camerapart.CFrame* CFrame.Angles(-3.1415927410126, 0, -1.5707963705063)

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
bvelocity.velocity = mouse.Hit.lookVector*300

nmissile.Touched:connect(function(h)
if (not h:isDescendantOf(msubmarine)) and h~=game.Workspace.Terrain then
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
                ex.Volume = 3
				ex.SoundId = "rbxassetid://440145223"
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
canfire = true
mouse.Icon = "rbxasset://textures/GunCursor.png"
	end
	end

mouse.KeyDown:connect(function(key)
    if key:byte() == 91 and engineon == true then
	fire()
end
end)