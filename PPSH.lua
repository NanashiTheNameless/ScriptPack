local player = game.Players.LocalPlayer
local char = player.Character
local tor = char.Torso
local camera = game.Workspace.CurrentCamera
local ra = char['Right Arm']
local la = char['Left Arm']
local ammo = 71
local maxammo = 71
local neck=tor:findFirstChild'Neck'
local nco=neck.C0
local UserInputService = game:GetService("UserInputService")
local firing = false
local shellsenabled = false

function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

bin=Instance.new('HopperBin',player.Backpack)
bin.Name='PPSH-41'

bin.Selected:connect(function(mouse)
pcall(function()
if char:FindFirstChild("PPSHClone") then char.PPSHClone:Destroy() end
local reloading = false
local canfire = true
local canmovemouse = true
local mouselook = 0
local aimed = false
local tool = Instance.new("Tool",char)

local ppsh = Instance.new("Model", tool)
ppsh.Name = "ppsh"

 handle = Instance.new("Part", ppsh)
handle.FormFactor = Enum.FormFactor.Symmetric
handle.CanCollide = false
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Transparency = 1
handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Reflectance = 0.1
handle.Anchored = false
handle.Material = Enum.Material.Metal
handle.Size = Vector3.new(0.856, 0.856, 0.856)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(134.255, 3.832, 84.391)* CFrame.Angles(-1.5207579906473e-007, 1.80538290806e-006, -0.0003191729192622)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Dark stone grey")
handle.Friction = 0.3
handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part = Instance.new("Part", ppsh)
part.FormFactor = Enum.FormFactor.Plate
part.CanCollide = false
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Anchored = false
part.Material = Enum.Material.Wood
part.Size = Vector3.new(1, 0.4, 1)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(134.179, 3.777, 85.684)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Reddish brown")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("SpecialMesh", part)
mesh.Scale = Vector3.new(0.25, 0.25, 0.167)
mesh.MeshType = Enum.MeshType.Wedge

 part_2 = Instance.new("Part", ppsh)
part_2.FormFactor = Enum.FormFactor.Plate
part_2.CanCollide = false
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Anchored = false
part_2.Material = Enum.Material.Wood
part_2.Size = Vector3.new(1, 0.4, 1)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(134.175, 3.327, 86.101)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, 3.1415493488312)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Reddish brown")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_2 = Instance.new("SpecialMesh", part_2)
mesh_2.Scale = Vector3.new(0.25, 0.167, 0.667)
mesh_2.MeshType = Enum.MeshType.Wedge

 part_3 = Instance.new("Part", ppsh)
part_3.FormFactor = Enum.FormFactor.Plate
part_3.CanCollide = false
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Anchored = false
part_3.Material = Enum.Material.Wood
part_3.Size = Vector3.new(1, 0.4, 1)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(134.175, 3.594, 86.101)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Reddish brown")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("SpecialMesh", part_3)
mesh_3.Scale = Vector3.new(0.25, 1.167, 0.667)
mesh_3.MeshType = Enum.MeshType.Brick

 stock = Instance.new("Part", ppsh)
stock.FormFactor = Enum.FormFactor.Plate
stock.CanCollide = false
stock.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
stock.TopSurface = Enum.SurfaceType.SmoothNoOutlines
stock.Anchored = false
stock.Material = Enum.Material.Wood
stock.Size = Vector3.new(1, 0.4, 1)
stock.Name = "Stock"
stock.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
stock.CFrame = CFrame.new(134.172, 3.561, 86.517)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
stock.RightSurface = Enum.SurfaceType.SmoothNoOutlines
stock.BackSurface = Enum.SurfaceType.SmoothNoOutlines
stock.BrickColor = BrickColor.new("Reddish brown")
stock.Friction = 0.3
stock.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_4 = Instance.new("SpecialMesh", stock)
mesh_4.Scale = Vector3.new(0.25, 1.333, 0.167)
mesh_4.MeshType = Enum.MeshType.Brick

 part_4 = Instance.new("Part", ppsh)
part_4.FormFactor = Enum.FormFactor.Custom
part_4.CanCollide = false
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Anchored = false
part_4.Material = Enum.Material.Metal
part_4.Size = Vector3.new(0.242, 0.242, 0.242)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(134.178, 4.026, 81.881)* CFrame.Angles(-1.5717061758041, 8.5014959040564e-005, -0.0080821355804801)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Really black")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_5 = Instance.new("CylinderMesh", part_4)
mesh_5.Scale = Vector3.new(0.6, 0.038, 0.6)

 muzzleflash = Instance.new("Part", ppsh)
muzzleflash.CanCollide = false
muzzleflash.Transparency = 1
muzzleflash.TopSurface = Enum.SurfaceType.Smooth
muzzleflash.Anchored = false
muzzleflash.Material = Enum.Material.Neon
muzzleflash.Size = Vector3.new(1.001, 2.003, 2.003)
muzzleflash.Name = "MuzzleFlash"
muzzleflash.CFrame = CFrame.new(134.206, 4.029, 80.998)* CFrame.Angles(0.010700599290431, 1.5627064704895, -1.5815346240997)
muzzleflash.BrickColor = BrickColor.new("New Yeller")
muzzleflash.Friction = 0.3
muzzleflash.BottomSurface = Enum.SurfaceType.Smooth

 mesh_6 = Instance.new("SpecialMesh", muzzleflash)
mesh_6.Scale = Vector3.new(0.5, 1, 0.5)
mesh_6.MeshType = Enum.MeshType.Sphere

 pointlight = Instance.new("PointLight", muzzleflash)
pointlight.Enabled = false
pointlight.Color = Color3.new(1, 1, 0)
pointlight.Brightness = 5
pointlight.Range = 5

 newp = Instance.new("Part", ppsh)
newp.CanCollide = false
newp.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
newp.Transparency = 1
newp.TopSurface = Enum.SurfaceType.SmoothNoOutlines
newp.Anchored = false
newp.Material = Enum.Material.Metal
newp.Size = Vector3.new(0.242, 0.242, 0.242)
newp.Name = "newp"
newp.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
newp.CFrame = CFrame.new(134.182, 4.035, 81.738)* CFrame.Angles(1.2531131687865e-006, -0.00099066097754985, -3.862278390443e-005)
newp.RightSurface = Enum.SurfaceType.SmoothNoOutlines
newp.BackSurface = Enum.SurfaceType.SmoothNoOutlines
newp.BrickColor = BrickColor.new("Really black")
newp.Friction = 0.3
newp.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_7 = Instance.new("BlockMesh", newp)
mesh_7.Scale = Vector3.new(0.828, 0.828, 0.828)

 mag = Instance.new("Part", ppsh)
mag.FormFactor = Enum.FormFactor.Symmetric
mag.CanCollide = false
mag.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
mag.Elasticity = 0
mag.TopSurface = Enum.SurfaceType.Smooth
mag.Anchored = false
mag.Material = Enum.Material.Metal
mag.Size = Vector3.new(1, 1, 1)
mag.Name = "mag"
mag.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
mag.CFrame = CFrame.new(134.18, 3.537, 83.84)* CFrame.Angles(-1.5707964897156, -1.5707963705063, 0)
mag.RightSurface = Enum.SurfaceType.SmoothNoOutlines
mag.BackSurface = Enum.SurfaceType.SmoothNoOutlines
mag.BrickColor = BrickColor.new("Dark stone grey")
mag.Friction = 0.3
mag.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_8 = Instance.new("CylinderMesh", mag)
mesh_8.Scale = Vector3.new(0.9, 0.41, 0.9)

 part_5 = Instance.new("Part", ppsh)
part_5.FormFactor = Enum.FormFactor.Plate
part_5.CanCollide = false
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.Anchored = false
part_5.Material = Enum.Material.Metal
part_5.Size = Vector3.new(1, 2.4, 1)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(134.182, 4.024, 83.319)* CFrame.Angles(-1.5707964897156, 4.6109793316873e-008, -4.6110906759544e-010)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Dark stone grey")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_9 = Instance.new("CylinderMesh", part_5)
mesh_9.Scale = Vector3.new(1, 1.2, 0.19)

 part_6 = Instance.new("Part", ppsh)
part_6.FormFactor = Enum.FormFactor.Plate
part_6.CanCollide = false
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Anchored = false
part_6.Material = Enum.Material.Metal
part_6.Size = Vector3.new(1, 0.4, 1)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(134.183, 4.158, 82.302)* CFrame.Angles(0.0042714844457805, 1.5627138614655, -0.0051786983385682)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Dark stone grey")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_10 = Instance.new("SpecialMesh", part_6)
mesh_10.Scale = Vector3.new(0.083, 0.333, 0.083)
mesh_10.MeshType = Enum.MeshType.Brick

 part_7 = Instance.new("Part", ppsh)
part_7.FormFactor = Enum.FormFactor.Plate
part_7.CanCollide = false
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Anchored = false
part_7.Material = Enum.Material.Metal
part_7.Size = Vector3.new(1, 0.4, 1)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(134.194, 3.942, 83.767)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Dark stone grey")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("SpecialMesh", part_7)
mesh_11.Scale = Vector3.new(0.25, 0.083, 0.167)
mesh_11.MeshType = Enum.MeshType.Brick

 part_8 = Instance.new("Part", ppsh)
part_8.FormFactor = Enum.FormFactor.Plate
part_8.CanCollide = false
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.Anchored = false
part_8.Material = Enum.Material.Metal
part_8.Size = Vector3.new(1, 0.4, 1)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(134.193, 3.809, 83.934)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Dark stone grey")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_12 = Instance.new("SpecialMesh", part_8)
mesh_12.Scale = Vector3.new(0.25, 0.75, 0.167)
mesh_12.MeshType = Enum.MeshType.Brick

 part_9 = Instance.new("Part", ppsh)
part_9.FormFactor = Enum.FormFactor.Plate
part_9.CanCollide = false
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Anchored = false
part_9.Material = Enum.Material.Metal
part_9.Size = Vector3.new(1, 0.4, 1)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(134.184, 4.158, 82.219)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Dark stone grey")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_13 = Instance.new("SpecialMesh", part_9)
mesh_13.Scale = Vector3.new(0.083, 0.333, 0.083)
mesh_13.MeshType = Enum.MeshType.Wedge

 part_10 = Instance.new("Part", ppsh)
part_10.FormFactor = Enum.FormFactor.Plate
part_10.CanCollide = false
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Anchored = false
part_10.Material = Enum.Material.Metal
part_10.Size = Vector3.new(1, 0.4, 1)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(134.183, 4.158, 82.385)* CFrame.Angles(3.1406810283661, 0.0080923540517688, -3.1415493488312)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Dark stone grey")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("SpecialMesh", part_10)
mesh_14.Scale = Vector3.new(0.083, 0.333, 0.083)
mesh_14.MeshType = Enum.MeshType.Wedge

 part_11 = Instance.new("Part", ppsh)
part_11.FormFactor = Enum.FormFactor.Plate
part_11.CanCollide = false
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Anchored = false
part_11.Material = Enum.Material.Metal
part_11.Size = Vector3.new(1, 0.4, 1)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(134.196, 3.825, 83.601)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Dark stone grey")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_15 = Instance.new("SpecialMesh", part_11)
mesh_15.Scale = Vector3.new(0.25, 0.667, 0.167)
mesh_15.MeshType = Enum.MeshType.Brick

 part_12 = Instance.new("Part", ppsh)
part_12.FormFactor = Enum.FormFactor.Plate
part_12.CanCollide = false
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Anchored = false
part_12.Material = Enum.Material.Metal
part_12.Size = Vector3.new(1, 0.4, 1)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(134.196, 3.65, 83.601)* CFrame.Angles(-1.5717036724091, 4.335065750638e-005, -0.0080923531204462)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Dark stone grey")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("SpecialMesh", part_12)
mesh_16.Scale = Vector3.new(0.25, 0.417, 0.083)
mesh_16.MeshType = Enum.MeshType.Wedge

 part_13 = Instance.new("Part", ppsh)
part_13.FormFactor = Enum.FormFactor.Plate
part_13.CanCollide = false
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Anchored = false
part_13.Material = Enum.Material.Metal
part_13.Size = Vector3.new(1, 0.4, 1)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(134.19, 3.459, 84.309)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, 3.1415493488312)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Dark stone grey")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("SpecialMesh", part_13)
mesh_17.Scale = Vector3.new(0.083, 0.167, 0.083)
mesh_17.MeshType = Enum.MeshType.Wedge

 part_14 = Instance.new("Part", ppsh)
part_14.FormFactor = Enum.FormFactor.Plate
part_14.CanCollide = false
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.Anchored = false
part_14.Material = Enum.Material.Metal
part_14.Size = Vector3.new(1, 0.4, 1)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(134.197, 3.875, 83.467)* CFrame.Angles(-1.5717036724091, 4.335065750638e-005, -0.0080923531204462)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Dark stone grey")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("SpecialMesh", part_14)
mesh_18.Scale = Vector3.new(0.25, 0.25, 0.167)
mesh_18.MeshType = Enum.MeshType.Wedge

 part_15 = Instance.new("Part", ppsh)
part_15.FormFactor = Enum.FormFactor.Plate
part_15.CanCollide = false
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Anchored = false
part_15.Material = Enum.Material.Metal
part_15.Size = Vector3.new(1, 0.4, 1)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(134.187, 3.576, 84.642)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Dark stone grey")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("SpecialMesh", part_15)
mesh_19.Scale = Vector3.new(0.083, 0.417, 0.083)
mesh_19.MeshType = Enum.MeshType.Brick

 part_16 = Instance.new("Part", ppsh)
part_16.FormFactor = Enum.FormFactor.Plate
part_16.CanCollide = false
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.Anchored = false
part_16.Material = Enum.Material.Metal
part_16.Size = Vector3.new(1, 0.4, 1)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(134.188, 3.459, 84.476)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Dark stone grey")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_20 = Instance.new("SpecialMesh", part_16)
mesh_20.Scale = Vector3.new(0.083, 0.167, 0.25)
mesh_20.MeshType = Enum.MeshType.Brick

 part_17 = Instance.new("Part", ppsh)
part_17.FormFactor = Enum.FormFactor.Plate
part_17.CanCollide = false
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.Anchored = false
part_17.Material = Enum.Material.Wood
part_17.Size = Vector3.new(1, 0.4, 1)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(134.182, 3.41, 85.226)* CFrame.Angles(3.1406810283661, 0.0080923540517688, 4.3383752199588e-005)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Reddish brown")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_21 = Instance.new("SpecialMesh", part_17)
mesh_21.Scale = Vector3.new(0.25, 0.083, 0.083)
mesh_21.MeshType = Enum.MeshType.Wedge

 part_18 = Instance.new("Part", ppsh)
part_18.FormFactor = Enum.FormFactor.Plate
part_18.CanCollide = false
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.Anchored = false
part_18.Material = Enum.Material.Wood
part_18.Size = Vector3.new(1, 0.4, 1)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(134.183, 3.627, 85.184)* CFrame.Angles(-0.00091102049918845, -0.0080923540517688, -4.3163738155272e-005)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Reddish brown")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("SpecialMesh", part_18)
mesh_22.Scale = Vector3.new(0.25, 0.5, 0.333)
mesh_22.MeshType = Enum.MeshType.Brick

 part_19 = Instance.new("Part", ppsh)
part_19.FormFactor = Enum.FormFactor.Plate
part_19.CanCollide = false
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.Anchored = false
part_19.Material = Enum.Material.Metal
part_19.Size = Vector3.new(1, 0.4, 1)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(134.187, 3.459, 84.642)* CFrame.Angles(3.1406810283661, 0.0080923540517688, 4.3383752199588e-005)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = BrickColor.new("Dark stone grey")
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("SpecialMesh", part_19)
mesh_23.Scale = Vector3.new(0.083, 0.167, 0.083)
mesh_23.MeshType = Enum.MeshType.Wedge

 part_20 = Instance.new("Part", ppsh)
part_20.FormFactor = Enum.FormFactor.Plate
part_20.CanCollide = false
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.Anchored = false
part_20.Material = Enum.Material.Wood
part_20.Size = Vector3.new(1, 0.4, 1)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(134.181, 3.777, 85.392)* CFrame.Angles(3.1406810283661, 0.0080923540517688, -3.1415493488312)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Reddish brown")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_24 = Instance.new("SpecialMesh", part_20)
mesh_24.Scale = Vector3.new(0.25, 0.25, 0.417)
mesh_24.MeshType = Enum.MeshType.Wedge

 part_21 = Instance.new("Part", ppsh)
part_21.FormFactor = Enum.FormFactor.Plate
part_21.CanCollide = false
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Anchored = false
part_21.Material = Enum.Material.Wood
part_21.Size = Vector3.new(1, 0.4, 1)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(134.183, 3.777, 85.101)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Reddish brown")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_25 = Instance.new("SpecialMesh", part_21)
mesh_25.Scale = Vector3.new(0.25, 0.25, 0.167)
mesh_25.MeshType = Enum.MeshType.Brick

 part_22 = Instance.new("Part", ppsh)
part_22.FormFactor = Enum.FormFactor.Plate
part_22.CanCollide = false
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.Anchored = false
part_22.Material = Enum.Material.Metal
part_22.Size = Vector3.new(1, 0.4, 1)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(134.182, 4.024, 84.769)* CFrame.Angles(-1.5707964897156, 4.6109793316873e-008, -4.6110906759544e-010)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Dark stone grey")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("CylinderMesh", part_22)
mesh_26.Scale = Vector3.new(1, 1.2, 0.2)

 part_23 = Instance.new("Part", ppsh)
part_23.FormFactor = Enum.FormFactor.Plate
part_23.CanCollide = false
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Anchored = false
part_23.Material = Enum.Material.Wood
part_23.Size = Vector3.new(1, 0.4, 1)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(134.188, 3.809, 84.517)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("Reddish brown")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("SpecialMesh", part_23)
mesh_27.Scale = Vector3.new(0.25, 0.75, 1)
mesh_27.MeshType = Enum.MeshType.Brick

 part_24 = Instance.new("Part", ppsh)
part_24.FormFactor = Enum.FormFactor.Plate
part_24.CanCollide = false
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Anchored = false
part_24.Material = Enum.Material.Metal
part_24.Size = Vector3.new(1, 0.4, 1)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(134.19, 3.576, 84.309)* CFrame.Angles(-0.00091091770445928, -0.0080922329798341, -4.3334443034837e-005)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Dark stone grey")
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("SpecialMesh", part_24)
mesh_28.Scale = Vector3.new(0.083, 0.417, 0.083)
mesh_28.MeshType = Enum.MeshType.Brick

 part_25 = Instance.new("Part", ppsh)
part_25.FormFactor = Enum.FormFactor.Plate
part_25.CanCollide = false
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.Anchored = false
part_25.Material = Enum.Material.Wood
part_25.Size = Vector3.new(1, 0.4, 1)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(134.183, 3.41, 85.143)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, 3.1415493488312)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Reddish brown")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("SpecialMesh", part_25)
mesh_29.Scale = Vector3.new(0.25, 0.083, 0.083)
mesh_29.MeshType = Enum.MeshType.Wedge

 part_26 = Instance.new("Part", ppsh)
part_26.FormFactor = Enum.FormFactor.Plate
part_26.CanCollide = false
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Anchored = false
part_26.Material = Enum.Material.Wood
part_26.Size = Vector3.new(1, 0.4, 1)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(134.185, 3.593, 84.851)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, 3.1415493488312)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Reddish brown")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("SpecialMesh", part_26)
mesh_30.Scale = Vector3.new(0.25, 0.333, 0.333)
mesh_30.MeshType = Enum.MeshType.Wedge

 chamber = Instance.new("Part", ppsh)
chamber.FormFactor = Enum.FormFactor.Plate
chamber.CanCollide = false
chamber.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
chamber.TopSurface = Enum.SurfaceType.SmoothNoOutlines
chamber.Anchored = false
chamber.Material = Enum.Material.Metal
chamber.Size = Vector3.new(1, 0.4, 1)
chamber.Name = "Chamber"
chamber.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
chamber.CFrame = CFrame.new(134.188, 4.126, 84.475)* CFrame.Angles(0.0042714844457805, 1.5627138614655, -0.0051786983385682)
chamber.RightSurface = Enum.SurfaceType.SmoothNoOutlines
chamber.BackSurface = Enum.SurfaceType.SmoothNoOutlines
chamber.BrickColor = BrickColor.new("Dark stone grey")
chamber.Friction = 0.3
chamber.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("SpecialMesh", chamber)
mesh_31.Scale = Vector3.new(0.25, 0.167, 0.083)
mesh_31.MeshType = Enum.MeshType.Brick

 part_27 = Instance.new("Part", ppsh)
part_27.FormFactor = Enum.FormFactor.Plate
part_27.CanCollide = false
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.Anchored = false
part_27.Material = Enum.Material.Wood
part_27.Size = Vector3.new(1, 0.4, 1)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(134.18, 3.627, 85.559)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Reddish brown")
part_27.Friction = 0.3
part_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("SpecialMesh", part_27)
mesh_32.Scale = Vector3.new(0.25, 0.5, 0.417)
mesh_32.MeshType = Enum.MeshType.Brick

 part_28 = Instance.new("Part", ppsh)
part_28.FormFactor = Enum.FormFactor.Plate
part_28.CanCollide = false
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.Anchored = false
part_28.Material = Enum.Material.Wood
part_28.Size = Vector3.new(1, 0.4, 1)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(134.183, 3.893, 85.1)* CFrame.Angles(3.1406810283661, 0.0080923540517688, -3.1415493488312)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Reddish brown")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("SpecialMesh", part_28)
mesh_33.Scale = Vector3.new(0.25, 0.333, 0.167)
mesh_33.MeshType = Enum.MeshType.Wedge

 part_29 = Instance.new("Part", ppsh)
part_29.FormFactor = Enum.FormFactor.Plate
part_29.CanCollide = false
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Anchored = false
part_29.Material = Enum.Material.Wood
part_29.Size = Vector3.new(1, 0.4, 1)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(134.182, 3.477, 85.309)* CFrame.Angles(3.1406810283661, 0.0080923540517688, 4.3383752199588e-005)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("Reddish brown")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("SpecialMesh", part_29)
mesh_34.Scale = Vector3.new(0.25, 0.25, 0.083)
mesh_34.MeshType = Enum.MeshType.Wedge

 part_30 = Instance.new("Part", ppsh)
part_30.FormFactor = Enum.FormFactor.Plate
part_30.CanCollide = false
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Anchored = false
part_30.Material = Enum.Material.Wood
part_30.Size = Vector3.new(1, 0.4, 1)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(134.184, 3.476, 85.059)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, 3.1415493488312)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("Reddish brown")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("SpecialMesh", part_30)
mesh_35.Scale = Vector3.new(0.25, 0.25, 0.083)
mesh_35.MeshType = Enum.MeshType.Wedge

 part_31 = Instance.new("Part", ppsh)
part_31.FormFactor = Enum.FormFactor.Plate
part_31.CanCollide = false
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Anchored = false
part_31.Material = Enum.Material.Wood
part_31.Size = Vector3.new(1, 0.4, 1)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(134.18, 3.444, 85.559)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, 3.1415493488312)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Reddish brown")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("SpecialMesh", part_31)
mesh_36.Scale = Vector3.new(0.25, 0.417, 0.417)
mesh_36.MeshType = Enum.MeshType.Wedge

 part_32 = Instance.new("Part", ppsh)
part_32.FormFactor = Enum.FormFactor.Plate
part_32.CanCollide = false
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Anchored = false
part_32.Material = Enum.Material.Wood
part_32.Size = Vector3.new(1, 0.4, 1)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(134.183, 3.477, 85.184)* CFrame.Angles(-0.00091165496269241, -0.0080923540517688, -4.3383752199588e-005)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Reddish brown")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("SpecialMesh", part_32)
mesh_37.Scale = Vector3.new(0.25, 0.25, 0.167)
mesh_37.MeshType = Enum.MeshType.Brick

local gungui = Instance.new("GuiMain", player.PlayerGui)
gungui.Name = "GunGUI"

 main = Instance.new("Frame", gungui)
main.ZIndex = 2
main.Size = UDim2.new(0, 120, 0, 75)
main.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
main.Name = "Main"
main.Position = UDim2.new(1, -250, 1, -100)
main.BorderSizePixel = 0
main.BackgroundTransparency = 1
main.BackgroundColor3 = Color3.new(1, 1, 1)

local amount = Instance.new("TextLabel", main)
amount.TextStrokeTransparency = 0.8
amount.BackgroundColor3 = Color3.new(1, 1, 1)
amount.BackgroundTransparency = 1
amount.Size = UDim2.new(0.5, 0, 0.5, 0)
amount.TextColor3 = Color3.new(1, 1, 1)
amount.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
amount.Text = "["..ammo.."/"..maxammo.."]"
amount.Position = UDim2.new(0.25, 0, 0, 20)
amount.Font = Enum.Font.SourceSansBold
amount.Name = "Amount"
amount.FontSize = Enum.FontSize.Size36

 borders = Instance.new("Frame", main)
borders.ZIndex = 2
borders.Size = UDim2.new(1, 0, 1, 0)
borders.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
borders.Name = "Borders"
borders.BackgroundTransparency = 1
borders.BackgroundColor3 = Color3.new(1, 1, 1)

 gname = Instance.new("TextLabel", main)
gname.TextStrokeTransparency = 0.8
gname.BackgroundColor3 = Color3.new(1, 1, 1)
gname.BackgroundTransparency = 1
gname.Size = UDim2.new(0.5, 0, 0.5, 0)
gname.TextColor3 = Color3.new(1, 1, 1)
gname.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
gname.Text = "PPSH-41"
gname.Position = UDim2.new(0.25, 0, 0, -20)
gname.Font = Enum.Font.SourceSansBold
gname.Name = "gname"
gname.FontSize = Enum.FontSize.Size36

 desc = Instance.new("TextLabel", main)
desc.TextStrokeTransparency = 0.8
desc.BackgroundColor3 = Color3.new(1, 1, 1)
desc.BackgroundTransparency = 1
desc.Size = UDim2.new(0.5, 0, 0.5, 0)
desc.TextColor3 = Color3.new(1, 1, 1)
desc.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
desc.Text = "7.62x25mm Tokarev"
desc.Position = UDim2.new(0.25, 0, 0, 50)
desc.Font = Enum.Font.SourceSansBold
desc.Name = "desc"
desc.FontSize = Enum.FontSize.Size18

 local hitm = Instance.new("ImageLabel", gungui)
hitm.Visible = false
hitm.BorderSizePixel = 0
hitm.Image = "http://www.roblox.com/asset/?id=131358529"
hitm.Name = "Hit"
hitm.Position = UDim2.new(0, 938, 0, 198)
hitm.BorderColor3 = Color3.new(0, 0, 0)
hitm.BackgroundTransparency = 1
hitm.Size = UDim2.new(0, 45, 0, 45)
hitm.BackgroundColor3 = Color3.new(0, 0, 0)

ppsh.Parent = tool
ppsh:BreakJoints()
ppsh:MakeJoints()

local prev
local parts = ppsh:GetChildren()

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
			parts[i].Anchored = false
		end 
		prev = parts[i] 
	end 
end
ppsh:MakeJoints()

tor["Right Shoulder"].Part1 = nil
tor["Left Shoulder"].Part1 = nil

weld(tor, ra, CFrame.new(.6,.1,0)*CFrame.Angles(math.rad(0),0,0))
weld(la, ra, CFrame.new(.9,.8,-.1)*CFrame.Angles(math.rad(-5),0,-.4))
ppsh.Handle.Weld.Name = "Weld2"
weld(ppsh.Handle, ra, CFrame.new(0,-.5,.9)*CFrame.Angles(math.rad(90),0,0))
local weld1 = tor.Weld
local offset = CFrame.new(0,-.1,-0.8)*CFrame.Angles(math.pi/2,0,0)
local barrel = newp

local newl = char["Left Arm"]:Clone()
newl.Size = Vector3.new(.9,1.9,.9)
local newr = char["Right Arm"]:Clone()
newr.Size = Vector3.new(.9,1.9,.9)
newl.Weld:Destroy()
newl.Parent = camera
newr.Parent = camera
weld(newl, la, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
weld(newr, ra, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))

mouse.KeyDown:connect(function(key)
if key == "f" then
	mouselook = mouselook + 1
	if mouselook == 1 then
		
	end
	if mouselook == 2 then
		mouselook = 0
	end
end
end)
 
mouse.TargetFilter = workspace
mouse.Move:connect(function(key)
	if mouselook == 0 then
	--mouse.Icon = "http://www.roblox.com/asset/?id=316279304"
	hitm.Position = UDim2.new(0, mouse.X-22.5, 0, mouse.Y-22.5)
	if canmovemouse == true then
	local p0c0 = tor:GetRenderCFrame()*weld1.C0
	weld1.C1 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
	end
	end
end)

local particleemitter = Instance.new("ParticleEmitter")
particleemitter.VelocitySpread = 360
particleemitter.Lifetime = NumberRange.new(1, 2)
particleemitter.Speed = NumberRange.new(10)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0.1)})
particleemitter.Acceleration = Vector3.new(0, -30, 0)
particleemitter.RotSpeed = NumberRange.new(260)
particleemitter.Texture = "http://www.roblox.com/asset/?id=274551257"

local gf1 = Instance.new("Sound")
gf1.SoundId="rbxassetid://224837148"
gf1.PlayOnRemove=false
gf1.Volume=0.7
gf1.Looped=false
gf1.Pitch = 1
gf1.Parent=barrel
local gf2 = Instance.new("Sound")
gf2.SoundId="rbxassetid://240785604"
gf2.PlayOnRemove=false
gf2.Volume=0.7
gf2.Looped=false
gf2.Pitch = 1
gf2.Parent=barrel

local magin = Instance.new("Sound")
magin.SoundId="http://www.roblox.com/asset/?id=131045429"
magin.PlayOnRemove=false
magin.Volume=0.7
magin.Looped=false
magin.Pitch = 1
magin.Parent=ppsh.mag
local magout = Instance.new("Sound")
magout.SoundId="http://www.roblox.com/asset/?id=131045401"
magout.PlayOnRemove=false
magout.Volume=0.7
magout.Looped=false
magout.Pitch = 1
magout.Parent=ppsh.mag

function reload()
coroutine.resume(coroutine.create(function()
maxammo = 0
ammo = 0
canfire = false
la.Weld.C0 = CFrame.new(.9,.8,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.7,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.6,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.5,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.4,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.3,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-5),0,-.4)

wait(.5)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(10),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(15),0,-.4)
magout:Play()
local magc = ppsh.mag:Clone()
ppsh.mag.Transparency = 1
amount.Text = "["..ammo.."/"..maxammo.."]"
magc.Weld:Destroy()
magc.Parent = char
weld(magc, la, CFrame.new(-1,-.15,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)))
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(20),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(25),0,-.4)
wait(.1)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(30),0,-.4)
magc.Weld:Destroy()
magc.Parent = workspace
magc.CanCollide = true
game.Debris:AddItem(magc,3)
wait(1)
local magc = ppsh.mag:Clone()
magc.Weld:Destroy()
magc.Transparency = 0
magc.Parent = char
weld(magc, la, CFrame.new(0,-1,-.1)*CFrame.Angles(math.rad(-180),math.rad(0),math.rad(0)))
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(25),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(20),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(15),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(10),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-10),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-15),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-20),0,-.4)
magin:Play()
magc:Destroy()
ppsh.mag.Transparency = 0
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-25),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-20),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-15),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-10),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.2,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.3,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.4,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.5,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.6,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
wait(.05)
la.Weld.C0 = CFrame.new(.9,.7,-.1)*CFrame.Angles(math.rad(-5),0,-.4)


wait(.05)
la.Weld.C0 = CFrame.new(.9,.8,-.1)*CFrame.Angles(math.rad(-5),0,-.4)
canfire = true
maxammo = 71
ammo = 71
amount.Text = "["..ammo.."/"..maxammo.."]"
end))
end

function anim()
	coroutine.resume(coroutine.create(function()
	local p0c0 = tor:GetRenderCFrame()*weld1.C0
	offset = CFrame.new(0,-.1,-0.6)*CFrame.Angles(math.pi/2,0,0)*CFrame.Angles(math.rad(2),0,0)
	weld1.C1 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
	wait()
	offset = CFrame.new(0,-.1,-0.4)*CFrame.Angles(math.pi/2,0,0)*CFrame.Angles(math.rad(4),0,0)
	weld1.C1 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
	wait()
	offset = CFrame.new(0,-.1,-0.2)*CFrame.Angles(math.pi/2,0,0)*CFrame.Angles(math.rad(6),0,0)
	weld1.C1 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
	wait()
	offset = CFrame.new(0,-.1,-0.4)*CFrame.Angles(math.pi/2,0,0)*CFrame.Angles(math.rad(4),0,0)
	weld1.C1 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
	wait()
	offset = CFrame.new(0,-.1,-0.6)*CFrame.Angles(math.pi/2,0,0)*CFrame.Angles(math.rad(2),0,0)
	weld1.C1 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
	wait()
	offset = CFrame.new(0,-.1,-0.8)*CFrame.Angles(math.pi/2,0,0)*CFrame.Angles(math.rad(0),0,0)
	weld1.C1 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
	end))
end

local newp = ppsh.newp

function fire()
	if ammo >=1 and canfire == true then
		firing = true
		--gf1.Pitch = math.random(1,1.5)
		gf1:Play()
		if aimed == false then
		anim()
		local cam_rot = camera.CoordinateFrame - camera.CoordinateFrame.p
		local cam_scroll = (camera.CoordinateFrame.p - camera.Focus.p).magnitude
		local ncf = CFrame.new(camera.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.0025+math.random()/100, math.random(-10,10)/1000, 0)
		camera.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
		end
		
		
	local missile = Instance.new("Part")
	missile.CFrame = barrel.CFrame*CFrame.new(0,0,2)
	missile.Material = Enum.Material.Metal
	missile.Size = Vector3.new(0.2, 0.2, 0.2)
	missile.CanCollide = false

	local bvelocity = Instance.new("BodyVelocity",missile)
	bvelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	bvelocity.velocity = mouse.Hit.lookVector*600
	--missile.Velocity = mouse.Hit.lookVector*1000

	missile.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.BrickColor = BrickColor.new("Bright yellow")
	missile.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.Name = "Bullet"
	missile.Parent = workspace
	game.Debris:AddItem(missile,4.2)
	local bodyForce = Instance.new('BodyForce', missile)
	bodyForce.Name = 'Antigravity'
	bodyForce.force = Vector3.new(0, missile:GetMass() * 196.2, 0)
	ammo = ammo - 1
	amount.Text = "["..ammo.."/"..maxammo.."]"
	coroutine.resume(coroutine.create(function()
	wait()
	ppsh.MuzzleFlash.Transparency = 0.3
	ppsh.MuzzleFlash.PointLight.Enabled = true
	wait()
	ppsh.MuzzleFlash.Transparency = 1
	ppsh.MuzzleFlash.PointLight.Enabled = false
	end))
	
	if shellsenabled == true then
	local shell = Instance.new("Part")
	shell.CFrame = ppsh.Chamber.CFrame * CFrame.fromEulerAnglesXYZ(1.5,0,0)
	shell.Size = Vector3.new(1,1,1)
	shell.BrickColor = BrickColor.new(24)
	shell.BottomSurface = 0
	shell.TopSurface = 0
	shell.Name = "Shell"
	shell.Velocity = ppsh.Chamber.CFrame.lookVector * 20 + Vector3.new(math.random(-10,10),20,math.random(-10,10))
	shell.RotVelocity = Vector3.new(0,200,0)
   	shell.CanCollide = false
	shell.Parent = workspace
	coroutine.resume(coroutine.create(function()
		wait(.1)
		shell.CanCollide = true
		while (shell) do wait()
			shell.Transparency=shell.Transparency+.01
		end
	end))
	game.Debris:AddItem(shell,3)
	local shellmesh = Instance.new("SpecialMesh")
	shellmesh.Scale = Vector3.new(.1,.25,.1)
	shellmesh.Parent = shell
	end
	
	if math.random(1,4)==1 then
	local air = Instance.new("Sound")
	air.SoundId="rbxassetid://341519743"
	air.PlayOnRemove=false
	air.Volume=0.7
	air.Looped=false
	air.Pitch = 1
	air.Parent=missile
	air:Play()
	end
	firing = false
	missile.Touched:connect(function(h)
	if (not h:isDescendantOf(ppsh)) and (not h:isDescendantOf(char)) then
	missile:Destroy()
	if not h.Name:lower():find("base") and h.Anchored == false then
	h.Velocity =  h.CFrame.lookVector*-10
	end
		if h.Parent:FindFirstChild("Humanoid") then 
			coroutine.resume(coroutine.create(function()
hitm.Rotation = math.random(1, 360)
hitm.Visible = true
wait(.1)
hitm.Visible = false
			end))
			local pclone = particleemitter:Clone()
					pclone.Parent = h
					game.Debris:AddItem(pclone,.5)
			--missile:Destroy()
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 500 h.Parent.Humanoid.Health = 500 end
missile:destroy()
				local dmg = (math.random(4,12))
				if aimed == true then
					dmg = (math.random(12,24))
				end
				
				local hitms = Instance.new("Sound")
				hitms.SoundId="rbxassetid://131864673"
				hitms.PlayOnRemove=false
				hitms.Volume=0.7
				hitms.Looped=false
				hitms.Pitch = 1
				hitms.Parent=player.PlayerGui
				hitms:Play()
				game.Debris:AddItem(hitms,1)
				
				if math.random(1,5)==1 then
				local hitsound = Instance.new("Sound")
				hitsound.SoundId="rbxassetid://144884872"
				hitsound.PlayOnRemove=false
				hitsound.Volume=0.7
				hitsound.Looped=false
				hitsound.Pitch = 1
				hitsound.Parent=h
				hitsound:Play()
				game.Debris:AddItem(hitsound,1)
				end
				
				--Ragdoll--
				local victim = h.Parent
				if victim.Humanoid.Health <=0 then
				print("died")
			if victim.Head:FindFirstChild("ParticleEmitter") then victim.Head.ParticleEmitter:Destroy() end
			victim.Archivable = true
            local rg = victim:Clone()
            rg.HumanoidRootPart:Destroy()
            rg.Name = ""
            rg.Humanoid.MaxHealth = 0
            for i, v in pairs(rg.Torso:GetChildren()) do
                if v:IsA("Motor6D") then
                    v:Destroy()
                end
            end
           
            local n = Instance.new("Glue", rg.Torso)
            n.Name = "Neck"
            n.Part0 = rg.Torso
            n.Part1 = rg.Head
            n.C0 = CFrame.new(0, 1, 0)
            n.C1 = CFrame.new(0, -0.5, 0)
           
            local rs = Instance.new("Glue", rg.Torso)
            rs.Name = "Right Shoulder"
            rs.Part0 = rg.Torso
            rs.Part1 = rg["Right Arm"]
            rs.C0 = CFrame.new(1.5, 0.5, 0)
            rs.C1 = CFrame.new(0, 0.5, 0)
            local ls = Instance.new("Glue", rg.Torso)
            ls.Name = "Left Shoulder"
            ls.Part0 = rg.Torso
            ls.Part1 = rg["Left Arm"]
            ls.C0 = CFrame.new(-1.5, 0.5, 0)
            ls.C1 = CFrame.new(0, 0.5, 0)
           
            local rh = Instance.new("Glue", rg.Torso)
            rh.Name = "Right Hip"
            rh.Part0 = rg.Torso
            rh.Part1 = rg["Right Leg"]
            rh.C0 = CFrame.new(0.5, -1, 0)
            rh.C1 = CFrame.new(0, 1, 0)
            local lh = Instance.new("Glue", rg.Torso)
            lh.Name = "Left Hip"
            lh.Part0 = rg.Torso
            lh.Part1 = rg["Left Leg"]
            lh.C0 = CFrame.new(-0.5, -1, 0)
            lh.C1 = CFrame.new(0, 1, 0)
            victim.Torso:Destroy()
            victim.Head:Destroy()
            victim["Left Leg"]:Destroy()
            victim["Left Arm"]:Destroy()
            victim["Right Leg"]:Destroy()
            victim["Right Arm"]:Destroy()
            rg.Parent = game.Workspace
            rg.Head.BrickColor = BrickColor.new("Maroon")
end
				--Ragdoll End--
				
				local textt = dmg
				h.Parent.Humanoid:TakeDamage(dmg)
				if h.Name == "Head" then h.Parent.Humanoid:TakeDamage(dmg)  end
				local guiMain = Instance.new("BillboardGui",h.Parent.Head)
guiMain.AlwaysOnTop = true
guiMain.Size = UDim2.new(5,5,5)
guiMain.Name = "guiMain"
local bar3 = Instance.new("TextLabel")
bar3.Position = UDim2.new(0, 50, 0, 0)
bar3.Size = UDim2.new(0, 100, 0, 100)
bar3.Parent = guiMain;
bar3.BackgroundColor3 = Color3.new(255/255,255/255,255/255)
bar3.BorderColor3 = Color3.new(27/255,42/255,53/255)
bar3.BackgroundTransparency = 1
bar3.BorderSizePixel = 1
bar3.Text = textt
bar3.TextColor3 = Color3.new(255/255,0/255,0/255)
bar3.TextStrokeColor3 = Color3.new(0/255,0/255,0/255)
bar3.TextStrokeTransparency = 1
bar3.Font = "SourceSans"
bar3.FontSize = Enum.FontSize.Size24 
coroutine.resume(coroutine.create(function()
	wait(.2) guiMain:Destroy()
end))
		end
		end
	end)
	end
	if ammo <=0 and canfire == true then
		gf2:Play()
	end
end

local mousedown = false
mouse.Button1Down:connect(function()
	mousedown = true
	while mousedown == true do wait(.1)
			fire()
	end
	end)
mouse.Button1Up:connect(function()
			mousedown = false
	end)


mouse.KeyDown:connect(function(key)
if key == "r" then
if canfire == true then
		reload()
end
end
end)

local swingsound = Instance.new("Sound")
swingsound.SoundId="rbxassetid://181894961"
swingsound.PlayOnRemove=false
swingsound.Volume=0.7
swingsound.Looped=false
swingsound.Pitch = 1
swingsound.Parent=ppsh.Stock
--game.Debris:AddItem(swingsound,1)

local handleweld = ppsh.Handle.Weld
local swinging = false
function melee()
canmovemouse = false
ppsh.Stock.CanCollide = true
swinging = true
swingsound:Play()
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-90),0,0)
wait()
handleweld.C0 = CFrame.new(0,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(20)))
weld1.C1 = CFrame.new(-.6,1,0)*CFrame.Angles(math.rad(-90),(math.rad(-10)),0)
wait()
handleweld.C0 = CFrame.new(0,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(40)))
weld1.C1 = CFrame.new(-.6,1.2,0)*CFrame.Angles(math.rad(-90),(math.rad(-20)),0)
wait()
handleweld.C0 = CFrame.new(0,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(60)))
weld1.C1 = CFrame.new(-.6,1.4,0)*CFrame.Angles(math.rad(-90),(math.rad(-30)),0)
wait()
handleweld.C0 = CFrame.new(-1,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(80)))
weld1.C1 = CFrame.new(-.6,1.4,0)*CFrame.Angles(math.rad(-90),(math.rad(-40)),0)
wait()
handleweld.C0 = CFrame.new(-1,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(100)))
wait()
handleweld.C0 = CFrame.new(-1,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(100)))
--Return--
wait()
ppsh.Stock.CanCollide = false
swinging = false
handleweld.C0 = CFrame.new(-1,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(100)))
wait()
handleweld.C0 = CFrame.new(-1,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(80)))
weld1.C1 = CFrame.new(-.6,1.4,0)*CFrame.Angles(math.rad(-90),(math.rad(-40)),0)
wait()
handleweld.C0 = CFrame.new(0,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(60)))
weld1.C1 = CFrame.new(-.6,1.4,0)*CFrame.Angles(math.rad(-90),(math.rad(-30)),0)
wait()
handleweld.C0 = CFrame.new(0,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(40)))
weld1.C1 = CFrame.new(-.6,1.2,0)*CFrame.Angles(math.rad(-90),(math.rad(-20)),0)
wait()
handleweld.C0 = CFrame.new(0,-.5,.9)*CFrame.Angles(math.rad(90),0,(math.rad(20)))
weld1.C1 = CFrame.new(-.6,1,0)*CFrame.Angles(math.rad(-90),(math.rad(-10)),0)
wait()
handleweld.C0 = CFrame.new(0,-.5,.9)*CFrame.Angles(math.rad(90),0,0)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-90),0,0)
wait()
canmovemouse = true
end

local debounce = false
ppsh.Stock.Touched:connect(function(h)
	if swinging == true then
if h.Parent:FindFirstChild("Humanoid") then 
if debounce == false then
		debounce = true
		local pclone = particleemitter:Clone()
		pclone.Parent = h
		game.Debris:AddItem(pclone,.5)
		if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
		if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 500 h.Parent.Humanoid.Health = 500 end
		local dmg = (math.random(10,25))
		local textt = dmg
		h.Parent.Humanoid:TakeDamage(dmg)
		
		local hitsound = Instance.new("Sound")
		hitsound.SoundId="rbxassetid://545219984"
		hitsound.PlayOnRemove=false
		hitsound.Volume=0.7
		hitsound.Looped=false
		hitsound.Pitch = 1
		hitsound.Parent=h
		hitsound:Play()
		game.Debris:AddItem(hitsound,1)
		
		if h.Parent:FindFirstChild("Torso") then h.Parent.Torso.Velocity  = char.Head.CFrame.lookVector*15 end
		
		--Ragdoll--
				local victim = h.Parent
				if victim.Humanoid.Health <=0 then
				print("died")
			if victim.Head:FindFirstChild("ParticleEmitter") then victim.Head.ParticleEmitter:Destroy() end
			victim.Archivable = true
            local rg = victim:Clone()
            rg.HumanoidRootPart:Destroy()
            rg.Name = ""
            rg.Humanoid.MaxHealth = 0
            for i, v in pairs(rg.Torso:GetChildren()) do
                if v:IsA("Motor6D") then
                    v:Destroy()
                end
            end
           
            local n = Instance.new("Glue", rg.Torso)
            n.Name = "Neck"
            n.Part0 = rg.Torso
            n.Part1 = rg.Head
            n.C0 = CFrame.new(0, 1, 0)
            n.C1 = CFrame.new(0, -0.5, 0)
           
            local rs = Instance.new("Glue", rg.Torso)
            rs.Name = "Right Shoulder"
            rs.Part0 = rg.Torso
            rs.Part1 = rg["Right Arm"]
            rs.C0 = CFrame.new(1.5, 0.5, 0)
            rs.C1 = CFrame.new(0, 0.5, 0)
            local ls = Instance.new("Glue", rg.Torso)
            ls.Name = "Left Shoulder"
            ls.Part0 = rg.Torso
            ls.Part1 = rg["Left Arm"]
            ls.C0 = CFrame.new(-1.5, 0.5, 0)
            ls.C1 = CFrame.new(0, 0.5, 0)
           
            local rh = Instance.new("Glue", rg.Torso)
            rh.Name = "Right Hip"
            rh.Part0 = rg.Torso
            rh.Part1 = rg["Right Leg"]
            rh.C0 = CFrame.new(0.5, -1, 0)
            rh.C1 = CFrame.new(0, 1, 0)
            local lh = Instance.new("Glue", rg.Torso)
            lh.Name = "Left Hip"
            lh.Part0 = rg.Torso
            lh.Part1 = rg["Left Leg"]
            lh.C0 = CFrame.new(-0.5, -1, 0)
            lh.C1 = CFrame.new(0, 1, 0)
            victim.Torso:Destroy()
            victim.Head:Destroy()
            victim["Left Leg"]:Destroy()
            victim["Left Arm"]:Destroy()
            victim["Right Leg"]:Destroy()
            victim["Right Arm"]:Destroy()
            rg.Parent = game.Workspace
            rg.Head.BrickColor = BrickColor.new("Maroon")
end
				--Ragdoll End--
		
		local guiMain = Instance.new("BillboardGui",h.Parent.Head)
		guiMain.AlwaysOnTop = true
		guiMain.Size = UDim2.new(5,5,5)
		guiMain.Name = "guiMain"
		local bar3 = Instance.new("TextLabel")
		bar3.Position = UDim2.new(0, 50, 0, 0)
		bar3.Size = UDim2.new(0, 100, 0, 100)
		bar3.Parent = guiMain;
		bar3.BackgroundColor3 = Color3.new(255/255,255/255,255/255)
		bar3.BorderColor3 = Color3.new(27/255,42/255,53/255)
		bar3.BackgroundTransparency = 1
		bar3.BorderSizePixel = 1
		bar3.Text = textt
		bar3.TextColor3 = Color3.new(255/255,0/255,0/255)
		bar3.TextStrokeColor3 = Color3.new(0/255,0/255,0/255)
		bar3.TextStrokeTransparency = 1
		bar3.Font = "SourceSans"
		bar3.FontSize = Enum.FontSize.Size24 
		coroutine.resume(coroutine.create(function()
		wait(.2) guiMain:Destroy()
		end))
end
wait(.1) debounce = false
end
end
	end)

local eased = 1
function easeanim()
canmovemouse = false
canfire = false
local p0c0 = tor:GetRenderCFrame()*weld1.C0
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-90),0,0)
wait(.1)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-80),0,0)
wait(.1)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-70),0,0)
wait(.1)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-60),0,0)
wait(.2)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-60),(math.rad(-20)),0)
wait(.1)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-60),(math.rad(-40)),0)
char.Humanoid.WalkSpeed = 16
mouse.Icon = ""
end
function uneaseanim()
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-60),(math.rad(-20)),0)
wait(.1)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-60),0,0)
wait(.1)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-70),0,0)
wait(.1)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-80),0,0)
wait(.1)
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-90),0,0)
wait(.1)
weld1.C1 = CFrame.new(.6,.1,0)*CFrame.Angles(math.rad(0),0,0)

canfire = true
canmovemouse = true
local p0c0 = tor:GetRenderCFrame()*weld1.C0
offset = CFrame.new(0,-.1,-0.8)*CFrame.Angles(math.pi/2,0,0)
weld1.C1 = (CFrame.new(p0c0.p, mouse.Hit.p)*offset):inverse()*p0c0
char.Humanoid.WalkSpeed = 16
mouse.Icon = "http://www.roblox.com/asset/?id=316279304"
end
mouse.KeyDown:connect(function(key)
if key == "e" then
	eased = eased + 1
	if eased == 1 then
		easeanim()
	end
	if eased == 2 then
		eased = 0
		uneaseanim()
	end
	end
end)

mouse.KeyDown:connect(function(key)
if key == "q" and swinging == false and eased == 0 and aimed == false and firing == false then
	melee()
end
end)

mouse.KeyDown:connect(function(key)
if key == "p" then

local ppshc = ppsh:Clone()
ppshc.Handle:Destroy()
ppshc.Parent = workspace
ppshc.Name = "PPSHClone"
ppshc.Part.CFrame = char.Head.CFrame*CFrame.new(0,0,-4)

local prev
local parts = ppshc:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			parts[i].CanCollide = true
		end 
		prev = parts[i] 
	end 
end

ppshc.Part.Touched:connect(function(h)
if h.Parent:FindFirstChild("Humanoid") then 
ppshc:Destroy()
local scriptclone = script:Clone()
scriptclone.Parent = h.Parent

end
end)

end
end)

mouse.KeyDown:connect(function(k)
    if k:byte() == 48 and eased == 1 then 
        char.Humanoid.WalkSpeed = 30
for i = 1,5 do
		game.Workspace.CurrentCamera.FieldOfView = (70+(i*2))
   wait()
    end
end
end)
mouse.KeyUp:connect(function(k)
    if k:byte() == 48 and char.Humanoid.WalkSpeed == 30 then
        char.Humanoid.WalkSpeed = 16
for i = 1,5 do
game.Workspace.CurrentCamera.FieldOfView = (80-(i*2))
wait()
    end
    end
end)

local UserInputService = game:GetService("UserInputService")
local camera = game.Workspace.CurrentCamera
weld(char.Head, tor, CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(0),0,0))
local headweld = char.Head.Weld
local aiming = false
function aim()
	coroutine.resume(coroutine.create(function()
	aiming = true
	aimed = true
	canmovemouse = false
	camera.FieldOfView = 50
	UserInputService.MouseIconEnabled = false
	weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(-.4,.8,0)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(0,.8,0)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,0)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,.1)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,.2)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,.3)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,.4)*CFrame.Angles(math.rad(-90),0,0)
	headweld.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(0),0,.05)
	wait(.1)
	headweld.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(0),0,.10)
	wait(.1)
	headweld.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(0),0,.15)
	char.Humanoid.WalkSpeed = 0
	aiming = false
	end))
end
function unaim()
	coroutine.resume(coroutine.create(function()
	headweld.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(0),0,.10)
	wait(.1)
	headweld.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(0),0,.05)
	wait(.1)
	headweld.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(0),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,.3)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,.2)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,.1)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(.2,.8,0)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(0,.8,0)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(-.4,.8,0)*CFrame.Angles(math.rad(-90),0,0)
	wait(.1)
	weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-90),0,0)
	aimed = false
	canmovemouse = true
	camera.FieldOfView = 70
	UserInputService.MouseIconEnabled = true
	char.Humanoid.WalkSpeed = 16
	end))
end
mouse.Button2Down:connect(function()
	if eased == 0 and aimed == false and aiming == false and swinging == false then
	aim()
	end
end)
mouse.Button2Up:connect(function()
	if aimed == true and aiming == false then
	unaim()
	end
end)


local crouched = 0
local proned = 0

function crouch()
	local newl = char["Left Leg"]:Clone()
	newl.Parent = char
	weld(newl, char.Torso, CFrame.new(-0.5, 0.75, 1))
	newl.CanCollide = false
	local newr = char["Right Leg"]:Clone()
	newr.Parent = char
	weld(newr, char.Torso, CFrame.new(0.5,0.495,1.25) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0))
	newr.CanCollide = false
	local collider = Instance.new("Part",char)
	collider.Transparency = 1
	collider.CanCollide = true
	collider.Size = Vector3.new(2, 0.2, 3)
	collider.Name = "Collider"
	collider:BreakJoints()
	weld(collider, newl, CFrame.new(0,.968,0))
	char["Left Leg"].Transparency = 1
	char["Right Leg"].Transparency = 1
	char.Torso["Left Hip"].Parent = char.Head
	char.Torso["Right Hip"].Parent = char.Head
	char["Left Leg"].Parent = char.Head
	char["Right Leg"].Parent = char.Head
end
function uncrouch()
	char.Collider:Destroy()
	char["Left Leg"]:Destroy()
	char["Right Leg"]:Destroy()
	char.Head["Left Hip"].Parent = char.Torso
	char.Head["Right Hip"].Parent = char.Torso
	char.Head["Left Leg"].Parent = char
	char.Head["Right Leg"].Parent = char
	char["Left Leg"].Transparency = 0
	char["Right Leg"].Transparency = 0
end

function prone()
	local newl = char["Left Leg"]:Clone()
	newl.Parent = char
	weld(newl, char.Torso, CFrame.new(0.4, 1.25, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),0.25,0))
	newl.CanCollide = false
	local newr = char["Right Leg"]:Clone()
	newr.Parent = char
	weld(newr, char.Torso, CFrame.new(-0.4, 1.25, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),-0.25,0))
	newr.CanCollide = false
	char["Left Leg"].Transparency = 1
	char["Right Leg"].Transparency = 1
	char.Torso["Left Hip"].Parent = char.Head
	char.Torso["Right Hip"].Parent = char.Head
	char["Left Leg"].Parent = char.Head
	char["Right Leg"].Parent = char.Head
end
function unprone()
	char["Left Leg"]:Destroy()
	char["Right Leg"]:Destroy()
	char.Head["Left Hip"].Parent = char.Torso
	char.Head["Right Hip"].Parent = char.Torso
	char.Head["Left Leg"].Parent = char
	char.Head["Right Leg"].Parent = char
	char["Left Leg"].Transparency = 0
	char["Right Leg"].Transparency = 0
end

mouse.KeyDown:connect(function(key)
if key == "c" and proned == 0 then
	crouched = crouched + 1
	if crouched == 1 then
		crouch()
	end
	if crouched == 2 then
		uncrouch()
		crouched = 0
	end
end
end)
mouse.KeyDown:connect(function(key)
if key == "x" and crouched == 0 then
	proned = proned + 1
	if proned == 1 then
		prone()
	end
	if proned == 2 then
		unprone()
		proned = 0
	end
end
end)

--Equipped Stance--
canmovemouse = false
canfire = false
weld1.C1 = CFrame.new(-.6,.8,0)*CFrame.Angles(math.rad(-60),(math.rad(-40)),0)
--Equipped Stance End--

bin.Deselected:connect(function()
local ppshc = ppsh:Clone()
if ppshc:FindFirstChild("Handle") then ppshc.Handle.Weld:Destroy() end
if ppshc:FindFirstChild("Handle") then ppshc.Handle.Weld2:Destroy() end
if ppshc:FindFirstChild("Handle") then ppshc.Handle.CanCollide = true end
	ppshc.Parent = char
	ppshc.Name = "PPSHClone"
	
	local prev
local parts = ppshc:GetChildren()

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
			parts[i].CanCollide = false
		end 
		prev = parts[i] 
	end 
end
	
	weld(ppshc.Handle, tor, CFrame.new(.5,0,0)*CFrame.Angles(math.rad(-120),(math.rad(-90)),0))
	
	ppsh:Destroy()
	tool:Destroy()
	newl:Destroy()
	newr:Destroy()
	local reloading = false
local canfire = false
local canmovemouse = false
	gungui:Destroy()
	if la:FindFirstChild("Weld") then la.Weld:Destroy() end
	tor["Left Shoulder"].Part1 = la
	if ra:FindFirstChild("Weld") then ra.Weld:Destroy() end
	tor["Right Shoulder"].Part1 = ra
	if char.Torso:FindFirstChild("Weld") then char.Torso.Weld:Destroy() end
end)
end)
end)