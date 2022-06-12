local player = game.Players.LocalPlayer
local char = player.Character
local tor = char.Torso
local camera = game.Workspace.CurrentCamera
local ra = char['Right Arm']
local la = char['Left Arm']
local ammo = 250
local maxammo = 250

function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

bin=Instance.new('HopperBin',player.Backpack)
bin.Name='Maxim'

bin.Selected:connect(function(mouse)
pcall(function()
local canfire = false
local cancrouch = true
local crouched = 0
local tool = Instance.new("Tool",char)
local maxim = Instance.new("Model", tool)
maxim.Name = "Maxim"

 handle = Instance.new("Part", maxim)
handle.FormFactor = Enum.FormFactor.Symmetric
handle.CanCollide = false
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Transparency = 1
handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Anchored = false
handle.Material = Enum.Material.Metal
handle.Size = Vector3.new(0.693, 0.693, 0.693)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(-10.223, 2.553, 100.131)* CFrame.Angles(3.141476392746, -0.010084789246321, -3.1415796279907)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Black")
handle.Friction = 0.3
handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 newp = Instance.new("Part", maxim)
newp.CanCollide = false
newp.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
newp.Transparency = 1
newp.TopSurface = Enum.SurfaceType.SmoothNoOutlines
newp.Anchored = false
newp.Material = Enum.Material.Metal
newp.Size = Vector3.new(0.242, 0.242, 0.242)
newp.Name = "newp"
newp.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
newp.CFrame = CFrame.new(-10.2, 2.137, 106.587)* CFrame.Angles(3.1415915489197, -0.010082421824336, -3.141538143158)
newp.RightSurface = Enum.SurfaceType.SmoothNoOutlines
newp.BackSurface = Enum.SurfaceType.SmoothNoOutlines
newp.BrickColor = BrickColor.new("Really black")
newp.Friction = 0.3
newp.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("BlockMesh", newp)
mesh.Scale = Vector3.new(0.828, 0.828, 0.828)

 muzzleflash = Instance.new("Part", maxim)
muzzleflash.CanCollide = false
muzzleflash.Transparency = 1
muzzleflash.TopSurface = Enum.SurfaceType.Smooth
muzzleflash.Anchored = false
muzzleflash.Material = Enum.Material.Neon
muzzleflash.Size = Vector3.new(1.001, 2.003, 2.003)
muzzleflash.Name = "MuzzleFlash"
muzzleflash.CFrame = CFrame.new(-10.199, 2.121, 107.361)* CFrame.Angles(1.4805293083191, -1.5704510211945, -0.090421967208385)
muzzleflash.BrickColor = BrickColor.new("New Yeller")
muzzleflash.Friction = 0.3
muzzleflash.BottomSurface = Enum.SurfaceType.Smooth

 mesh_2 = Instance.new("SpecialMesh", muzzleflash)
mesh_2.Scale = Vector3.new(0.5, 1, 0.5)
mesh_2.MeshType = Enum.MeshType.Sphere

 pointlight = Instance.new("PointLight", muzzleflash)
pointlight.Enabled = false
pointlight.Color = Color3.new(1, 1, 0)
pointlight.Brightness = 5
pointlight.Range = 5

 partt = Instance.new("Part", maxim)
partt.FormFactor = Enum.FormFactor.Custom
partt.CanCollide = false
partt.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
partt.TopSurface = Enum.SurfaceType.SmoothNoOutlines
partt.Anchored = false
partt.Material = Enum.Material.Metal
partt.Size = Vector3.new(0.242, 0.242, 0.242)
partt.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
partt.CFrame = CFrame.new(-10.205, 2.135, 106.488)* CFrame.Angles(-1.5707985162735, 5.4661384638166e-005, 0.010087701492012)
partt.RightSurface = Enum.SurfaceType.SmoothNoOutlines
partt.BrickColor = BrickColor.new("Really black")
partt.Friction = 0.3
partt.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
partt.Name = "Realbarrel"

 mesh_3 = Instance.new("CylinderMesh", partt)
mesh_3.Scale = Vector3.new(0.84, 0.038, 0.757)

 part_2 = Instance.new("Part", maxim)
part_2.FormFactor = Enum.FormFactor.Custom
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Anchored = false
part_2.Material = Enum.Material.Metal
part_2.Size = Vector3.new(0.2, 0.52, 0.2)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(-10.62, 2.321, 100.15)* CFrame.Angles(3.1415910720825, -0.010084392502904, -9.7323545560357e-006)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Brown")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_4 = Instance.new("CylinderMesh", part_2)

 part_3 = Instance.new("Part", maxim)
part_3.FormFactor = Enum.FormFactor.Custom
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Anchored = false
part_3.Material = Enum.Material.Metal
part_3.Size = Vector3.new(0.27, 0.2, 0.26)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(-10.625, 2.601, 100.15)* CFrame.Angles(3.1415910720825, -0.010084392502904, -9.7323545560357e-006)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Black")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_5 = Instance.new("CylinderMesh", part_3)

 part_4 = Instance.new("Part", maxim)
part_4.FormFactor = Enum.FormFactor.Custom
part_4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.Anchored = false
part_4.Material = Enum.Material.Metal
part_4.Size = Vector3.new(0.2, 0.47, 0.2)
part_4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.CFrame = CFrame.new(-9.983, 2.601, 100.311)* CFrame.Angles(3.1415627002716, -1.3090280294418, 1.5707893371582)
part_4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_4.BrickColor = BrickColor.new("Black")
part_4.Friction = 0.3
part_4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_6 = Instance.new("CylinderMesh", part_4)

 part_5 = Instance.new("Part", maxim)
part_5.FormFactor = Enum.FormFactor.Custom
part_5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.Anchored = false
part_5.Material = Enum.Material.Metal
part_5.Size = Vector3.new(0.2, 0.57, 0.2)
part_5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.CFrame = CFrame.new(-9.949, 2.281, 100.123)* CFrame.Angles(3.1415910720825, -0.010084391571581, 3.1415829658508)
part_5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_5.BrickColor = BrickColor.new("Brown")
part_5.Friction = 0.3
part_5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_7 = Instance.new("CylinderMesh", part_5)

 part_6 = Instance.new("Part", maxim)
part_6.FormFactor = Enum.FormFactor.Custom
part_6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.Anchored = false
part_6.Material = Enum.Material.Metal
part_6.Size = Vector3.new(0.2, 0.47, 0.2)
part_6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.CFrame = CFrame.new(-10.582, 1.996, 100.338)* CFrame.Angles(-3.1415679454803, 1.2888501882553, -1.5708026885986)
part_6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_6.BrickColor = BrickColor.new("Black")
part_6.Friction = 0.3
part_6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_8 = Instance.new("CylinderMesh", part_6)

 part_7 = Instance.new("Part", maxim)
part_7.FormFactor = Enum.FormFactor.Custom
part_7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.Anchored = false
part_7.Material = Enum.Material.Metal
part_7.Size = Vector3.new(0.27, 0.2, 0.26)
part_7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.CFrame = CFrame.new(-9.944, 2.596, 100.123)* CFrame.Angles(3.1415910720825, -0.010084391571581, 3.1415829658508)
part_7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_7.BrickColor = BrickColor.new("Black")
part_7.Friction = 0.3
part_7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_9 = Instance.new("CylinderMesh", part_7)

 part_8 = Instance.new("Part", maxim)
part_8.FormFactor = Enum.FormFactor.Custom
part_8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.Anchored = false
part_8.Material = Enum.Material.Metal
part_8.Size = Vector3.new(0.27, 0.2, 0.26)
part_8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.CFrame = CFrame.new(-9.944, 1.996, 100.123)* CFrame.Angles(3.1415910720825, -0.010084391571581, 3.1415829658508)
part_8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_8.BrickColor = BrickColor.new("Black")
part_8.Friction = 0.3
part_8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_10 = Instance.new("CylinderMesh", part_8)

 part_9 = Instance.new("Part", maxim)
part_9.FormFactor = Enum.FormFactor.Custom
part_9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.Anchored = false
part_9.Material = Enum.Material.Metal
part_9.Size = Vector3.new(0.2, 0.47, 0.2)
part_9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.CFrame = CFrame.new(-9.983, 2.001, 100.311)* CFrame.Angles(3.1415627002716, -1.3090280294418, 1.5707893371582)
part_9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_9.BrickColor = BrickColor.new("Black")
part_9.Friction = 0.3
part_9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_11 = Instance.new("CylinderMesh", part_9)

 part_10 = Instance.new("Part", maxim)
part_10.FormFactor = Enum.FormFactor.Custom
part_10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.Anchored = false
part_10.Material = Enum.Material.Metal
part_10.Size = Vector3.new(0.4, 0.2, 0.4)
part_10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.CFrame = CFrame.new(-9.902, 2.296, 101.083)* CFrame.Angles(3.1415910720825, -0.010084391571581, 1.5707945823669)
part_10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_10.BrickColor = BrickColor.new("Grime")
part_10.Friction = 0.3
part_10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_12 = Instance.new("CylinderMesh", part_10)

 part_11 = Instance.new("Part", maxim)
part_11.FormFactor = Enum.FormFactor.Custom
part_11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.Anchored = false
part_11.Material = Enum.Material.Metal
part_11.Size = Vector3.new(0.4, 0.2, 0.2)
part_11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.CFrame = CFrame.new(-10.475, 2.806, 100.789)* CFrame.Angles(3.1415910720825, -0.010084391571581, 1.5707945823669)
part_11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_11.BrickColor = BrickColor.new("Black")
part_11.Friction = 0.3
part_11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_13 = Instance.new("CylinderMesh", part_11)

 part_12 = Instance.new("Part", maxim)
part_12.FormFactor = Enum.FormFactor.Custom
part_12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.Anchored = false
part_12.Material = Enum.Material.Metal
part_12.Size = Vector3.new(2, 0.2, 0.2)
part_12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.CFrame = CFrame.new(-9.892, 2.196, 102.083)* CFrame.Angles(0.00076929741771892, -1.5610673427582, 0.00015821406850591)
part_12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_12.BrickColor = BrickColor.new("Grime")
part_12.Friction = 0.3
part_12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_13 = Instance.new("Part", maxim)
part_13.FormFactor = Enum.FormFactor.Custom
part_13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.Anchored = false
part_13.Material = Enum.Material.Metal
part_13.Size = Vector3.new(0.2, 0.62, 0.2)
part_13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.CFrame = CFrame.new(-10.879, 0.233, 98.718)* CFrame.Angles(3.0475556850433, -0.36884933710098, 1.5697827339172)
part_13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_13.BrickColor = BrickColor.new("Grime")
part_13.Friction = 0.3
part_13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_14 = Instance.new("CylinderMesh", part_13)

 part_14 = Instance.new("Part", maxim)
part_14.FormFactor = Enum.FormFactor.Custom
part_14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.Anchored = false
part_14.Material = Enum.Material.Metal
part_14.Size = Vector3.new(0.2, 0.2, 0.6)
part_14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.CFrame = CFrame.new(-10.275, 2.706, 100.787)* CFrame.Angles(0.00075197109254077, -1.5610918998718, 0.00017665923223831)
part_14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_14.BrickColor = BrickColor.new("Black")
part_14.Friction = 0.3
part_14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_15 = Instance.new("Part", maxim)
part_15.FormFactor = Enum.FormFactor.Custom
part_15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.Anchored = false
part_15.Material = Enum.Material.Metal
part_15.Size = Vector3.new(0.2, 0.2, 0.2)
part_15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.CFrame = CFrame.new(-11.184, 0.243, 98.836)* CFrame.Angles(3.0479154586792, -0.010039283894002, 3.1406397819519)
part_15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_15.BrickColor = BrickColor.new("Grime")
part_15.Friction = 0.3
part_15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_15 = Instance.new("SpecialMesh", part_15)
mesh_15.MeshType = Enum.MeshType.Sphere

 parttoblock_strong_joint = Instance.new("ManualWeld", part_15)
parttoblock_strong_joint.Part1 = floor
parttoblock_strong_joint.Name = "Part-to-Block Strong Joint"
parttoblock_strong_joint.C1 = CFrame.new(-0.788, 0.053, -0.689)* CFrame.Angles(3.1137511730194, 1.5603466033936, 3.0758209228516)
parttoblock_strong_joint.Part0 = part_15
parttoblock_strong_joint.C0 = CFrame.new(-0.1, -0.1, -0.1)* CFrame.Angles(-0, -1.5707963705063, 0)

 part_16 = Instance.new("Part", maxim)
part_16.FormFactor = Enum.FormFactor.Custom
part_16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.Anchored = false
part_16.Material = Enum.Material.Metal
part_16.Size = Vector3.new(0.4, 0.2, 0.2)
part_16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.CFrame = CFrame.new(-10.075, 2.806, 100.784)* CFrame.Angles(3.1415910720825, -0.010084391571581, 1.5707945823669)
part_16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_16.BrickColor = BrickColor.new("Black")
part_16.Friction = 0.3
part_16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_16 = Instance.new("CylinderMesh", part_16)

 part_17 = Instance.new("Part", maxim)
part_17.FormFactor = Enum.FormFactor.Custom
part_17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.Anchored = false
part_17.Material = Enum.Material.Metal
part_17.Size = Vector3.new(0.27, 0.2, 0.26)
part_17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.CFrame = CFrame.new(-10.625, 2.001, 100.15)* CFrame.Angles(3.1415910720825, -0.010084392502904, -9.7323545560357e-006)
part_17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_17.BrickColor = BrickColor.new("Black")
part_17.Friction = 0.3
part_17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_17 = Instance.new("CylinderMesh", part_17)

 part_18 = Instance.new("Part", maxim)
part_18.FormFactor = Enum.FormFactor.Custom
part_18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.Anchored = false
part_18.Material = Enum.Material.Metal
part_18.Size = Vector3.new(0.2, 0.4, 0.2)
part_18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.CFrame = CFrame.new(-11.183, 0.331, 99.019)* CFrame.Angles(-3.140040397644, 1.5607419013977, 1.1328037977219)
part_18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_18.BrickColor = BrickColor.new("Grime")
part_18.Friction = 0.3
part_18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_18 = Instance.new("CylinderMesh", part_18)

 parttoblock_strong_joint_2 = Instance.new("ManualWeld", part_18)
parttoblock_strong_joint_2.Part1 = floor
parttoblock_strong_joint_2.Name = "Part-to-Block Strong Joint"
parttoblock_strong_joint_2.C1 = CFrame.new(-0.785, 0.406, -0.477)* CFrame.Angles(3.1137678623199, 1.5603408813477, 1.1616598367691)
parttoblock_strong_joint_2.Part0 = part_18
parttoblock_strong_joint_2.C0 = CFrame.new(-0.1, -0.2, 0.1)

 part_19 = Instance.new("Part", maxim)
part_19.FormFactor = Enum.FormFactor.Custom
part_19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.Anchored = false
part_19.Material = Enum.Material.Metal
part_19.Size = Vector3.new(2.6, 0.8, 0.8)
part_19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.CFrame = CFrame.new(-10.255, 2.296, 101.786)* CFrame.Angles(0.00076929741771892, -1.5610673427582, 0.00015821406850591)
part_19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_19.BrickColor = BrickColor.new("Black")
part_19.Friction = 0.3
part_19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_20 = Instance.new("Part", maxim)
part_20.FormFactor = Enum.FormFactor.Custom
part_20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.Anchored = false
part_20.Material = Enum.Material.Metal
part_20.Size = Vector3.new(0.2, 0.2, 0.2)
part_20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.CFrame = CFrame.new(-10.586, 0.222, 98.602)* CFrame.Angles(3.0475556850433, -0.36884930729866, 3.1405711174011)
part_20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_20.BrickColor = BrickColor.new("Grime")
part_20.Friction = 0.3
part_20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_19 = Instance.new("SpecialMesh", part_20)
mesh_19.MeshType = Enum.MeshType.Sphere

 part_21 = Instance.new("Part", maxim)
part_21.FormFactor = Enum.FormFactor.Custom
part_21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.Anchored = false
part_21.Material = Enum.Material.Metal
part_21.Size = Vector3.new(0.6, 0.4, 0.2)
part_21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.CFrame = CFrame.new(-11.161, 0.765, 101.156)* CFrame.Angles(-3.1401557922363, 1.5610857009888, 2.6772110462189)
part_21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_21.BrickColor = BrickColor.new("Grime")
part_21.Friction = 0.3
part_21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_22 = Instance.new("Part", maxim)
part_22.FormFactor = Enum.FormFactor.Custom
part_22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.Anchored = false
part_22.Material = Enum.Material.Metal
part_22.Size = Vector3.new(0.28, 0.2, 0.27)
part_22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.CFrame = CFrame.new(-10.687, 2.324, 101.013)* CFrame.Angles(-2.9406938552856, -0.12886936962605, 1.5969601869583)
part_22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_22.BrickColor = BrickColor.new("Black")
part_22.Friction = 0.3
part_22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_20 = Instance.new("CylinderMesh", part_22)

 part_23 = Instance.new("Part", maxim)
part_23.FormFactor = Enum.FormFactor.Custom
part_23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.Anchored = false
part_23.Material = Enum.Material.Metal
part_23.Size = Vector3.new(0.2, 0.47, 0.2)
part_23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.CFrame = CFrame.new(-10.582, 2.596, 100.338)* CFrame.Angles(-3.1415679454803, 1.2888501882553, -1.5708026885986)
part_23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_23.BrickColor = BrickColor.new("Black")
part_23.Friction = 0.3
part_23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_21 = Instance.new("CylinderMesh", part_23)

 part_24 = Instance.new("Part", maxim)
part_24.FormFactor = Enum.FormFactor.Custom
part_24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.Anchored = false
part_24.Material = Enum.Material.Metal
part_24.Size = Vector3.new(0.6, 1.8, 0.2)
part_24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.CFrame = CFrame.new(-9.372, 0.5, 100.049)* CFrame.Angles(-3.1408696174622, 1.561079621315, 1.4769771099091)
part_24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_24.BrickColor = BrickColor.new("Grime")
part_24.Friction = 0.3
part_24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_22 = Instance.new("CylinderMesh", part_24)

 part_25 = Instance.new("Part", maxim)
part_25.FormFactor = Enum.FormFactor.Custom
part_25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.Anchored = false
part_25.Material = Enum.Material.Metal
part_25.Size = Vector3.new(0.6, 1.8, 0.2)
part_25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.CFrame = CFrame.new(-11.172, 0.5, 100.067)* CFrame.Angles(-3.1400864124298, 1.5607419013977, 1.4761973619461)
part_25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_25.BrickColor = BrickColor.new("Grime")
part_25.Friction = 0.3
part_25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_23 = Instance.new("CylinderMesh", part_25)

 parttoblock_strong_joint_3 = Instance.new("ManualWeld", part_25)
parttoblock_strong_joint_3.Part1 = floor
parttoblock_strong_joint_3.Name = "Part-to-Block Strong Joint"
parttoblock_strong_joint_3.C1 = CFrame.new(-0.767, 0.782, 1.301)* CFrame.Angles(3.1137306690216, 1.5603408813477, 1.5050446987152)
parttoblock_strong_joint_3.Part0 = part_25
parttoblock_strong_joint_3.C0 = CFrame.new(-0.3, -0.9, 0.1)

 part_26 = Instance.new("Part", maxim)
part_26.FormFactor = Enum.FormFactor.Custom
part_26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.Anchored = false
part_26.Material = Enum.Material.Metal
part_26.Size = Vector3.new(0.2, 0.4, 0.2)
part_26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.CFrame = CFrame.new(-10.203, 2.796, 105.906)* CFrame.Angles(3.1415910720825, -0.010084391571581, 3.1415829658508)
part_26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_26.BrickColor = BrickColor.new("Grime")
part_26.Friction = 0.3
part_26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_27 = Instance.new("Part", maxim)
part_27.FormFactor = Enum.FormFactor.Custom
part_27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.Anchored = false
part_27.Material = Enum.Material.Metal
part_27.Size = Vector3.new(0.2, 0.2, 1.6)
part_27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.CFrame = CFrame.new(-10.26, 0.944, 101.282)* CFrame.Angles(-3.1401433944702, 1.5610857009888, 2.6771984100342)
part_27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_27.BrickColor = BrickColor.new("Grime")
part_27.Friction = 0.3
part_27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_28 = Instance.new("Part", maxim)
part_28.FormFactor = Enum.FormFactor.Custom
part_28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.Anchored = false
part_28.Material = Enum.Material.Metal
part_28.Size = Vector3.new(0.6, 0.2, 1.6)
part_28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.CFrame = CFrame.new(-10.256, 1.06, 101.625)* CFrame.Angles(3.1414487361908, 1.5610979795456, 2.8234071731567)
part_28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_28.BrickColor = BrickColor.new("Grime")
part_28.Friction = 0.3
part_28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_29 = Instance.new("Part", maxim)
part_29.FormFactor = Enum.FormFactor.Custom
part_29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.Anchored = false
part_29.Material = Enum.Material.Metal
part_29.Size = Vector3.new(0.8, 0.4, 0.6)
part_29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.CFrame = CFrame.new(-11.729, 1.186, 102.371)* CFrame.Angles(1.5707937479019, 9.6549938461976e-006, -0.010084353387356)
part_29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_29.BrickColor = BrickColor.new("Grime")
part_29.Friction = 0.3
part_29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_24 = Instance.new("CylinderMesh", part_29)

 part_30 = Instance.new("Part", maxim)
part_30.FormFactor = Enum.FormFactor.Custom
part_30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.Anchored = false
part_30.Material = Enum.Material.Metal
part_30.Size = Vector3.new(0.4, 0.2, 0.4)
part_30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.CFrame = CFrame.new(-10.595, 1.756, 102.71)* CFrame.Angles(-1.6207068256335e-006, 0.010084483772516, -1.5707945823669)
part_30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_30.BrickColor = BrickColor.new("Grime")
part_30.Friction = 0.3
part_30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_25 = Instance.new("CylinderMesh", part_30)

 part_31 = Instance.new("Part", maxim)
part_31.FormFactor = Enum.FormFactor.Custom
part_31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.Anchored = false
part_31.Material = Enum.Material.Metal
part_31.Size = Vector3.new(0.2, 0.24, 0.2)
part_31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.CFrame = CFrame.new(-10.757, 2.318, 101.018)* CFrame.Angles(-2.9406938552856, -0.12886936962605, 1.5969601869583)
part_31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_31.BrickColor = BrickColor.new("Black")
part_31.Friction = 0.3
part_31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_26 = Instance.new("CylinderMesh", part_31)

 part_32 = Instance.new("Part", maxim)
part_32.FormFactor = Enum.FormFactor.Custom
part_32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.Anchored = false
part_32.Material = Enum.Material.Metal
part_32.Size = Vector3.new(0.8, 0.2, 0.8)
part_32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.CFrame = CFrame.new(-9.442, 3.496, 102.978)* CFrame.Angles(1.5707937479019, 9.7427664513816e-006, 3.1315083503723)
part_32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_32.BrickColor = BrickColor.new("Grime")
part_32.Friction = 0.3
part_32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_27 = Instance.new("CylinderMesh", part_32)

 part_33 = Instance.new("Part", maxim)
part_33.FormFactor = Enum.FormFactor.Custom
part_33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.Anchored = false
part_33.Material = Enum.Material.Metal
part_33.Size = Vector3.new(1, 0.2, 0.2)
part_33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.CFrame = CFrame.new(-10.596, 1.456, 102.61)* CFrame.Angles(-3.1408407688141, 1.5610918998718, 3.1414160728455)
part_33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_33.BrickColor = BrickColor.new("Grime")
part_33.Friction = 0.3
part_33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_34 = Instance.new("Part", maxim)
part_34.FormFactor = Enum.FormFactor.Custom
part_34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.Anchored = false
part_34.Material = Enum.Material.Metal
part_34.Size = Vector3.new(0.6, 0.2, 1.6)
part_34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.CFrame = CFrame.new(-10.241, 1.204, 103.137)* CFrame.Angles(-3.1404769420624, 1.5610918998718, -3.0180556774139)
part_34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_34.BrickColor = BrickColor.new("Grime")
part_34.Friction = 0.3
part_34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_35 = Instance.new("Part", maxim)
part_35.FormFactor = Enum.FormFactor.Custom
part_35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.Anchored = false
part_35.Material = Enum.Material.Metal
part_35.Size = Vector3.new(2.4, 0.6, 0.2)
part_35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.CFrame = CFrame.new(-10.241, 1.874, 103.105)* CFrame.Angles(2.7460143566132, -0.0093019148334861, 3.1376979351044)
part_35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_35.BrickColor = BrickColor.new("Grime")
part_35.Friction = 0.3
part_35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_36 = Instance.new("Part", maxim)
part_36.FormFactor = Enum.FormFactor.Custom
part_36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.Anchored = false
part_36.Material = Enum.Material.Metal
part_36.Size = Vector3.new(0.4, 0.2, 0.2)
part_36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.CFrame = CFrame.new(-10.842, 3.196, 102.992)* CFrame.Angles(-1.620705802452e-006, 0.010084391571581, 9.7322817964596e-006)
part_36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_36.BrickColor = BrickColor.new("Grime")
part_36.Friction = 0.3
part_36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_37 = Instance.new("Part", maxim)
part_37.FormFactor = Enum.FormFactor.Custom
part_37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.Anchored = false
part_37.Material = Enum.Material.Metal
part_37.Size = Vector3.new(1.2, 0.4, 0.2)
part_37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.CFrame = CFrame.new(-10.042, 3.696, 102.984)* CFrame.Angles(-1.620705802452e-006, 0.010084391571581, 9.7322817964596e-006)
part_37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_37.BrickColor = BrickColor.new("Grime")
part_37.Friction = 0.3
part_37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_38 = Instance.new("Part", maxim)
part_38.FormFactor = Enum.FormFactor.Custom
part_38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.Anchored = false
part_38.Material = Enum.Material.Metal
part_38.Size = Vector3.new(2.4, 0.8, 0.2)
part_38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.CFrame = CFrame.new(-10.242, 2.496, 102.986)* CFrame.Angles(3.1415910720825, -0.01008884049952, 3.1415910720825)
part_38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_38.BrickColor = BrickColor.new("Grime")
part_38.Friction = 0.3
part_38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_39 = Instance.new("Part", maxim)
part_39.FormFactor = Enum.FormFactor.Custom
part_39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.Anchored = false
part_39.Material = Enum.Material.Metal
part_39.Size = Vector3.new(0.8, 0.4, 0.6)
part_39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.CFrame = CFrame.new(-11.729, 0.386, 102.371)* CFrame.Angles(1.5707937479019, 9.6549938461976e-006, -0.010084353387356)
part_39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_39.BrickColor = BrickColor.new("Grime")
part_39.Friction = 0.3
part_39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_28 = Instance.new("CylinderMesh", part_39)

 part_40 = Instance.new("Part", maxim)
part_40.FormFactor = Enum.FormFactor.Custom
part_40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.Anchored = false
part_40.Material = Enum.Material.Metal
part_40.Size = Vector3.new(0.4, 0.2, 1.6)
part_40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.CFrame = CFrame.new(-10.246, 1.233, 102.665)* CFrame.Angles(-3.1414239406586, 1.5610918998718, 3.1179714202881)
part_40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_40.BrickColor = BrickColor.new("Grime")
part_40.Friction = 0.3
part_40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_41 = Instance.new("Part", maxim)
part_41.FormFactor = Enum.FormFactor.Custom
part_41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.Anchored = false
part_41.Material = Enum.Material.Metal
part_41.Size = Vector3.new(1, 0.6, 0.2)
part_41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.CFrame = CFrame.new(-9.542, 3.196, 102.979)* CFrame.Angles(-1.620705802452e-006, 0.010084391571581, 9.7322817964596e-006)
part_41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_41.BrickColor = BrickColor.new("Grime")
part_41.Friction = 0.3
part_41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_42 = Instance.new("Part", maxim)
part_42.FormFactor = Enum.FormFactor.Custom
part_42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.Anchored = false
part_42.Material = Enum.Material.Metal
part_42.Size = Vector3.new(0.6, 0.4, 0.2)
part_42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.CFrame = CFrame.new(-11.156, 0.965, 101.665)* CFrame.Angles(-0.00015229804557748, -1.5610979795456, 0.3181771337986)
part_42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_42.BrickColor = BrickColor.new("Grime")
part_42.Friction = 0.3
part_42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_43 = Instance.new("Part", maxim)
part_43.FormFactor = Enum.FormFactor.Custom
part_43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.Anchored = false
part_43.Material = Enum.Material.Metal
part_43.Size = Vector3.new(1, 0.4, 1.2)
part_43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.CFrame = CFrame.new(-10.239, 2.396, 103.286)* CFrame.Angles(0.00076063501182944, -1.561079621315, -1.5706294775009)
part_43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_43.BrickColor = BrickColor.new("Grime")
part_43.Friction = 0.3
part_43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_29 = Instance.new("CylinderMesh", part_43)

 part_44 = Instance.new("Part", maxim)
part_44.FormFactor = Enum.FormFactor.Custom
part_44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.Anchored = false
part_44.Material = Enum.Material.Metal
part_44.Size = Vector3.new(1.4, 1.48, 1)
part_44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.CFrame = CFrame.new(-8.992, 0.866, 104.024)* CFrame.Angles(0.00075193966040388, -1.5610918998718, 0.00017660295998212)
part_44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_44.BrickColor = BrickColor.new("Grime")
part_44.Friction = 0.3
part_44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_30 = Instance.new("SpecialMesh", part_44)
mesh_30.Scale = Vector3.new(3.5, 3.5, 3.5)
mesh_30.MeshId = "http://www.roblox.com/asset/?id=92575220"
mesh_30.MeshType = Enum.MeshType.FileMesh

 part_45 = Instance.new("Part", maxim)
part_45.FormFactor = Enum.FormFactor.Custom
part_45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.Anchored = false
part_45.Material = Enum.Material.Metal
part_45.Size = Vector3.new(0.26, 0.4, 0.4)
part_45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.CFrame = CFrame.new(-10.213, 2.666, 105.946)* CFrame.Angles(0.00075197248952463, -1.5610918998718, -1.5706207752228)
part_45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_45.BrickColor = BrickColor.new("Dark stone grey")
part_45.Friction = 0.3
part_45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_31 = Instance.new("CylinderMesh", part_45)

 part_46 = Instance.new("WedgePart", maxim)
part_46.FormFactor = Enum.FormFactor.Custom
part_46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.Friction = 0.3
part_46.Material = Enum.Material.Metal
part_46.Size = Vector3.new(0.2, 0.6, 0.4)
part_46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.Name = "Part"
part_46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_46.CFrame = CFrame.new(-10.842, 3.596, 102.992)* CFrame.Angles(-3.1408407688141, 1.5610918998718, 3.1414160728455)
part_46.BrickColor = BrickColor.new("Grime")
part_46.Anchored = false

 part_47 = Instance.new("Part", maxim)
part_47.FormFactor = Enum.FormFactor.Custom
part_47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.Anchored = false
part_47.Material = Enum.Material.Metal
part_47.Size = Vector3.new(0.29, 0.4, 0.2)
part_47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.CFrame = CFrame.new(-9.923, 2.091, 105.903)* CFrame.Angles(-1.6692863482604e-006, 0.010084440000355, -2.3943984508514)
part_47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_47.BrickColor = BrickColor.new("Grime")
part_47.Friction = 0.3
part_47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_32 = Instance.new("CylinderMesh", part_47)

 part_48 = Instance.new("Part", maxim)
part_48.FormFactor = Enum.FormFactor.Custom
part_48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.Anchored = false
part_48.Material = Enum.Material.Metal
part_48.Size = Vector3.new(0.2, 0.6, 0.2)
part_48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.CFrame = CFrame.new(-10.542, 3.196, 102.989)* CFrame.Angles(-1.620705802452e-006, 0.010084391571581, 9.7322817964596e-006)
part_48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_48.BrickColor = BrickColor.new("Grime")
part_48.Friction = 0.3
part_48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_49 = Instance.new("Part", maxim)
part_49.FormFactor = Enum.FormFactor.Custom
part_49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.Anchored = false
part_49.Material = Enum.Material.Metal
part_49.Size = Vector3.new(0.4, 0.2, 0.4)
part_49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.CFrame = CFrame.new(-9.885, 1.756, 102.713)* CFrame.Angles(-1.6207068256335e-006, 0.010084483772516, -1.5707945823669)
part_49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_49.BrickColor = BrickColor.new("Grime")
part_49.Friction = 0.3
part_49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_33 = Instance.new("CylinderMesh", part_49)

 part_50 = Instance.new("WedgePart", maxim)
part_50.FormFactor = Enum.FormFactor.Custom
part_50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.Friction = 0.3
part_50.Material = Enum.Material.Metal
part_50.Size = Vector3.new(0.2, 0.4, 0.4)
part_50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.Name = "Part"
part_50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_50.CFrame = CFrame.new(-10.593, 1.756, 102.91)* CFrame.Angles(3.1415910720825, -0.010084483772516, 3.1415829658508)
part_50.BrickColor = BrickColor.new("Grime")
part_50.Anchored = false

 part_51 = Instance.new("Part", maxim)
part_51.FormFactor = Enum.FormFactor.Custom
part_51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.Anchored = false
part_51.Material = Enum.Material.Metal
part_51.Size = Vector3.new(0.25, 0.4, 0.28)
part_51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.CFrame = CFrame.new(-10.266, 0.227, 98.597)* CFrame.Angles(3.0479137897491, -0.010039239190519, -1.5717417001724)
part_51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_51.BrickColor = BrickColor.new("Grime")
part_51.Friction = 0.3
part_51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_34 = Instance.new("CylinderMesh", part_51)

 part_52 = Instance.new("Part", maxim)
part_52.FormFactor = Enum.FormFactor.Custom
part_52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.Anchored = false
part_52.Material = Enum.Material.Metal
part_52.Size = Vector3.new(0.6, 0.2, 1.6)
part_52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.CFrame = CFrame.new(-10.251, 1.184, 102.184)* CFrame.Angles(-3.1411907672882, 1.5610918998718, 3.0176885128021)
part_52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_52.BrickColor = BrickColor.new("Grime")
part_52.Friction = 0.3
part_52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_53 = Instance.new("Part", maxim)
part_53.FormFactor = Enum.FormFactor.Custom
part_53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.Anchored = false
part_53.Material = Enum.Material.Metal
part_53.Size = Vector3.new(0.6, 0.4, 0.2)
part_53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.CFrame = CFrame.new(-9.35, 1.085, 102.187)* CFrame.Angles(0.00040633179014549, -1.5610918998718, 0.12390845268965)
part_53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_53.BrickColor = BrickColor.new("Grime")
part_53.Friction = 0.3
part_53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_54 = Instance.new("Part", maxim)
part_54.FormFactor = Enum.FormFactor.Symmetric
part_54.CanCollide = false
part_54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.Anchored = false
part_54.Material = Enum.Material.Metal
part_54.Size = Vector3.new(1, 1, 1)
part_54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.CFrame = CFrame.new(-11.049, 2.556, 102.399)* CFrame.Angles(3.1415910720825, -0.010086314752698, 1.5706133842468)
part_54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_54.BrickColor = BrickColor.new("Dark stone grey")
part_54.Friction = 0.3
part_54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_35 = Instance.new("BlockMesh", part_54)
mesh_35.Scale = Vector3.new(0.15, 1, 0.48)

 part_55 = Instance.new("Part", maxim)
part_55.FormFactor = Enum.FormFactor.Custom
part_55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.Anchored = false
part_55.Material = Enum.Material.Metal
part_55.Size = Vector3.new(0.4, 0.4, 0.2)
part_55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.CFrame = CFrame.new(-9.346, 1.133, 102.658)* CFrame.Angles(0.00016852722910699, -1.5610918998718, 0.023621102795005)
part_55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_55.BrickColor = BrickColor.new("Grime")
part_55.Friction = 0.3
part_55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_56 = Instance.new("Part", maxim)
part_56.FormFactor = Enum.FormFactor.Custom
part_56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.Anchored = false
part_56.Material = Enum.Material.Metal
part_56.Size = Vector3.new(0.8, 0.2, 0.2)
part_56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.CFrame = CFrame.new(-11.042, 2.996, 102.994)* CFrame.Angles(-1.620705802452e-006, 0.010084391571581, 9.7322817964596e-006)
part_56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_56.BrickColor = BrickColor.new("Grime")
part_56.Friction = 0.3
part_56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_57 = Instance.new("Part", maxim)
part_57.FormFactor = Enum.FormFactor.Custom
part_57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.Anchored = false
part_57.Material = Enum.Material.Metal
part_57.Size = Vector3.new(1, 0.4, 1.2)
part_57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.CFrame = CFrame.new(-10.213, 2.396, 105.886)* CFrame.Angles(0.00076063501182944, -1.561079621315, -1.5706294775009)
part_57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_57.BrickColor = BrickColor.new("Grime")
part_57.Friction = 0.3
part_57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_36 = Instance.new("CylinderMesh", part_57)

 part_58 = Instance.new("Part", maxim)
part_58.FormFactor = Enum.FormFactor.Custom
part_58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.Anchored = false
part_58.Material = Enum.Material.Metal
part_58.Size = Vector3.new(0.6, 0.68, 1)
part_58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.CFrame = CFrame.new(-8.992, 0.866, 104.024)* CFrame.Angles(0.0004386200744193, -1.5610918998718, -0.73862856626511)
part_58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_58.BrickColor = BrickColor.new("Grime")
part_58.Friction = 0.3
part_58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_37 = Instance.new("SpecialMesh", part_58)
mesh_37.Scale = Vector3.new(3.5, 3.5, 3.5)
mesh_37.MeshId = "http://www.roblox.com/asset/?id=92575220"
mesh_37.MeshType = Enum.MeshType.FileMesh

 part_59 = Instance.new("Part", maxim)
part_59.FormFactor = Enum.FormFactor.Custom
part_59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.Anchored = false
part_59.Material = Enum.Material.Metal
part_59.Size = Vector3.new(0.6, 0.4, 0.2)
part_59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.CFrame = CFrame.new(-9.356, 0.965, 101.647)* CFrame.Angles(-0.00015229804557748, -1.5610979795456, 0.3181771337986)
part_59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_59.BrickColor = BrickColor.new("Grime")
part_59.Friction = 0.3
part_59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_60 = Instance.new("Part", maxim)
part_60.FormFactor = Enum.FormFactor.Custom
part_60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.Anchored = false
part_60.Material = Enum.Material.Metal
part_60.Size = Vector3.new(0.4, 2.08, 0.2)
part_60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.CFrame = CFrame.new(-10.262, 0.694, 101.018)* CFrame.Angles(2.3895282745361, -0.0073592090047896, 1.563901424408)
part_60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_60.BrickColor = BrickColor.new("Grime")
part_60.Friction = 0.3
part_60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_38 = Instance.new("CylinderMesh", part_60)

 part_61 = Instance.new("Part", maxim)
part_61.FormFactor = Enum.FormFactor.Custom
part_61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.Anchored = false
part_61.Material = Enum.Material.Metal
part_61.Size = Vector3.new(0.8, 0.4, 0.6)
part_61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.CFrame = CFrame.new(-12.529, 1.186, 102.379)* CFrame.Angles(1.5707937479019, 9.6549938461976e-006, -0.010084353387356)
part_61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_61.BrickColor = BrickColor.new("Grime")
part_61.Friction = 0.3
part_61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_39 = Instance.new("CylinderMesh", part_61)

 part_62 = Instance.new("WedgePart", maxim)
part_62.FormFactor = Enum.FormFactor.Custom
part_62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.Friction = 0.3
part_62.Material = Enum.Material.Metal
part_62.Size = Vector3.new(0.2, 0.2, 1.8)
part_62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.Name = "Part"
part_62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_62.CFrame = CFrame.new(-9.893, 2.396, 101.983)* CFrame.Angles(3.1415910720825, -0.010084391571581, 3.1415829658508)
part_62.BrickColor = BrickColor.new("Grime")
part_62.Anchored = false

 floor = Instance.new("Part", maxim)
floor.FormFactor = Enum.FormFactor.Custom
floor.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
floor.Transparency = 1
floor.TopSurface = Enum.SurfaceType.SmoothNoOutlines
floor.Anchored = false
floor.Material = Enum.Material.Metal
floor.Size = Vector3.new(1.6, 0.2, 1.4)
floor.Name = "floor"
floor.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
floor.CFrame = CFrame.new(-10.296, 0.1, 99.633)* CFrame.Angles(-5.7265966461273e-005, -2.1649524569511e-005, 0.00029166688909754)
floor.RightSurface = Enum.SurfaceType.SmoothNoOutlines
floor.BrickColor = BrickColor.new("Mid gray")
floor.Friction = 0.3
floor.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_63 = Instance.new("Part", maxim)
part_63.FormFactor = Enum.FormFactor.Custom
part_63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.Anchored = false
part_63.Material = Enum.Material.Metal
part_63.Size = Vector3.new(0.2, 0.4, 0.2)
part_63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.CFrame = CFrame.new(-9.383, 0.331, 99)* CFrame.Angles(-3.140823841095, 1.5610918998718, 1.1335785388947)
part_63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_63.BrickColor = BrickColor.new("Grime")
part_63.Friction = 0.3
part_63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_40 = Instance.new("CylinderMesh", part_63)

 part_64 = Instance.new("WedgePart", maxim)
part_64.FormFactor = Enum.FormFactor.Custom
part_64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.Friction = 0.3
part_64.Material = Enum.Material.Metal
part_64.Size = Vector3.new(0.2, 0.2, 0.4)
part_64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.Name = "Part"
part_64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_64.CFrame = CFrame.new(-11.242, 3.196, 102.996)* CFrame.Angles(-3.1408407688141, 1.5610918998718, 3.1414160728455)
part_64.BrickColor = BrickColor.new("Grime")
part_64.Anchored = false

 part_65 = Instance.new("Part", maxim)
part_65.FormFactor = Enum.FormFactor.Custom
part_65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.Anchored = false
part_65.Material = Enum.Material.Metal
part_65.Size = Vector3.new(0.2, 0.2, 0.2)
part_65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.CFrame = CFrame.new(-9.384, 0.243, 98.818)* CFrame.Angles(3.0479137897491, -0.010039268061519, 3.1406397819519)
part_65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_65.BrickColor = BrickColor.new("Grime")
part_65.Friction = 0.3
part_65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_41 = Instance.new("SpecialMesh", part_65)
mesh_41.MeshType = Enum.MeshType.Sphere

 part_66 = Instance.new("Part", maxim)
part_66.FormFactor = Enum.FormFactor.Custom
part_66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.Anchored = false
part_66.Material = Enum.Material.Metal
part_66.Size = Vector3.new(0.2, 0.65, 0.2)
part_66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.CFrame = CFrame.new(-9.665, 0.233, 98.71)* CFrame.Angles(3.0482692718506, 0.34876951575279, -1.5718023777008)
part_66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_66.BrickColor = BrickColor.new("Grime")
part_66.Friction = 0.3
part_66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_42 = Instance.new("CylinderMesh", part_66)

 part_67 = Instance.new("Part", maxim)
part_67.FormFactor = Enum.FormFactor.Custom
part_67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.Anchored = false
part_67.Material = Enum.Material.Metal
part_67.Size = Vector3.new(0.6, 0.4, 0.2)
part_67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.CFrame = CFrame.new(-11.15, 1.085, 102.205)* CFrame.Angles(0.00040633179014549, -1.5610918998718, 0.12390845268965)
part_67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_67.BrickColor = BrickColor.new("Grime")
part_67.Friction = 0.3
part_67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_68 = Instance.new("Part", maxim)
part_68.FormFactor = Enum.FormFactor.Custom
part_68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.Anchored = false
part_68.Material = Enum.Material.Metal
part_68.Size = Vector3.new(0.2, 0.6, 0.2)
part_68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.CFrame = CFrame.new(-10.267, 0.222, 98.598)* CFrame.Angles(3.0479137897491, -0.010039341636002, 1.5698508024216)
part_68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_68.BrickColor = BrickColor.new("Grime")
part_68.Friction = 0.3
part_68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_43 = Instance.new("CylinderMesh", part_68)

 part_69 = Instance.new("Part", maxim)
part_69.FormFactor = Enum.FormFactor.Custom
part_69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.Anchored = false
part_69.Material = Enum.Material.Metal
part_69.Size = Vector3.new(1, 0.2, 0.2)
part_69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.CFrame = CFrame.new(-9.886, 1.456, 102.613)* CFrame.Angles(-3.1408407688141, 1.5610918998718, 3.1414160728455)
part_69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_69.BrickColor = BrickColor.new("Grime")
part_69.Friction = 0.3
part_69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_70 = Instance.new("WedgePart", maxim)
part_70.FormFactor = Enum.FormFactor.Custom
part_70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.Friction = 0.3
part_70.Material = Enum.Material.Metal
part_70.Size = Vector3.new(0.2, 0.4, 0.6)
part_70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.Name = "Part"
part_70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_70.CFrame = CFrame.new(-10.598, 1.756, 102.41)* CFrame.Angles(-1.6207069393204e-006, 0.010084483772516, 9.7323545560357e-006)
part_70.BrickColor = BrickColor.new("Grime")
part_70.Anchored = false

 part_71 = Instance.new("Part", maxim)
part_71.FormFactor = Enum.FormFactor.Custom
part_71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.Anchored = false
part_71.Material = Enum.Material.Metal
part_71.Size = Vector3.new(0.6, 0.2, 0.86)
part_71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.CFrame = CFrame.new(-10.248, 2.556, 102.386)* CFrame.Angles(0.00075197109254077, -1.5610918998718, 0.00017665923223831)
part_71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.BrickColor = BrickColor.new("Really black")
part_71.Friction = 0.3
part_71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_71.Name = "Chamber"

 part_72 = Instance.new("Part", maxim)
part_72.FormFactor = Enum.FormFactor.Custom
part_72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.Anchored = false
part_72.Material = Enum.Material.Metal
part_72.Size = Vector3.new(0.4, 0.4, 0.2)
part_72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.CFrame = CFrame.new(-11.146, 1.133, 102.676)* CFrame.Angles(0.00016852722910699, -1.5610918998718, 0.023621102795005)
part_72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_72.BrickColor = BrickColor.new("Grime")
part_72.Friction = 0.3
part_72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_73 = Instance.new("Part", maxim)
part_73.FormFactor = Enum.FormFactor.Custom
part_73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.Anchored = false
part_73.Material = Enum.Material.Metal
part_73.Size = Vector3.new(0.2, 0.2, 0.2)
part_73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.CFrame = CFrame.new(-9.956, 0.222, 98.595)* CFrame.Angles(3.0482692718506, 0.34876951575279, -0.0010123332031071)
part_73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_73.BrickColor = BrickColor.new("Grime")
part_73.Friction = 0.3
part_73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_44 = Instance.new("SpecialMesh", part_73)
mesh_44.MeshType = Enum.MeshType.Sphere

 part_74 = Instance.new("Part", maxim)
part_74.FormFactor = Enum.FormFactor.Custom
part_74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.Anchored = false
part_74.Material = Enum.Material.Metal
part_74.Size = Vector3.new(1.6, 0.47, 1.4)
part_74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.CFrame = CFrame.new(-10.246, 1.261, 102.586)* CFrame.Angles(3.1415910720825, -0.010084391571581, 3.1415829658508)
part_74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_74.BrickColor = BrickColor.new("Grime")
part_74.Friction = 0.3
part_74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_45 = Instance.new("CylinderMesh", part_74)

 part_75 = Instance.new("Part", maxim)
part_75.FormFactor = Enum.FormFactor.Custom
part_75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.Anchored = false
part_75.Material = Enum.Material.Metal
part_75.Size = Vector3.new(0.8, 0.34, 0.6)
part_75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.CFrame = CFrame.new(-11.729, 1.206, 102.371)* CFrame.Angles(1.5707937479019, 9.6549938461976e-006, -0.010084353387356)
part_75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_75.BrickColor = BrickColor.new("Black")
part_75.Friction = 0.3
part_75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_46 = Instance.new("CylinderMesh", part_75)

 part_76 = Instance.new("Part", maxim)
part_76.FormFactor = Enum.FormFactor.Custom
part_76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.Anchored = false
part_76.Material = Enum.Material.Metal
part_76.Size = Vector3.new(0.24, 0.4, 0.4)
part_76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.CFrame = CFrame.new(-10.209, 2.136, 106.286)* CFrame.Angles(0.00076929741771892, -1.5610673427582, -1.5706380605698)
part_76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_76.BrickColor = BrickColor.new("Dark stone grey")
part_76.Friction = 0.3
part_76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_47 = Instance.new("CylinderMesh", part_76)

 part_77 = Instance.new("WedgePart", maxim)
part_77.FormFactor = Enum.FormFactor.Custom
part_77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.Friction = 0.3
part_77.Material = Enum.Material.Metal
part_77.Size = Vector3.new(0.2, 0.4, 0.6)
part_77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.Name = "Part"
part_77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_77.CFrame = CFrame.new(-9.888, 1.756, 102.413)* CFrame.Angles(-1.6207069393204e-006, 0.010084483772516, 9.7323545560357e-006)
part_77.BrickColor = BrickColor.new("Grime")
part_77.Anchored = false

 part_78 = Instance.new("WedgePart", maxim)
part_78.FormFactor = Enum.FormFactor.Custom
part_78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.Friction = 0.3
part_78.Material = Enum.Material.Metal
part_78.Size = Vector3.new(0.2, 0.4, 0.4)
part_78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.Name = "Part"
part_78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_78.CFrame = CFrame.new(-9.883, 1.756, 102.913)* CFrame.Angles(3.1415910720825, -0.010084483772516, 3.1415829658508)
part_78.BrickColor = BrickColor.new("Grime")
part_78.Anchored = false

 part_79 = Instance.new("Part", maxim)
part_79.FormFactor = Enum.FormFactor.Custom
part_79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.Anchored = false
part_79.Material = Enum.Material.Metal
part_79.Size = Vector3.new(0.6, 0.4, 0.2)
part_79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.CFrame = CFrame.new(-9.361, 0.765, 101.138)* CFrame.Angles(-3.1401557922363, 1.5610857009888, 2.6772110462189)
part_79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_79.BrickColor = BrickColor.new("Grime")
part_79.Friction = 0.3
part_79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_80 = Instance.new("Part", maxim)
part_80.FormFactor = Enum.FormFactor.Custom
part_80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.Anchored = false
part_80.Material = Enum.Material.Metal
part_80.Size = Vector3.new(0.4, 2.4, 0.2)
part_80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.CFrame = CFrame.new(-10.232, 0.859, 104.044)* CFrame.Angles(0.31892883777618, 0.009581939317286, -1.5739585161209)
part_80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_80.BrickColor = BrickColor.new("Grime")
part_80.Friction = 0.3
part_80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_48 = Instance.new("CylinderMesh", part_80)

 part_81 = Instance.new("Part", maxim)
part_81.FormFactor = Enum.FormFactor.Custom
part_81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.Anchored = false
part_81.Material = Enum.Material.Metal
part_81.Size = Vector3.new(0.6, 0.4, 0.2)
part_81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.CFrame = CFrame.new(-11.141, 1.105, 103.134)* CFrame.Angles(-3.1404769420624, 1.5610918998718, -3.0180556774139)
part_81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_81.BrickColor = BrickColor.new("Grime")
part_81.Friction = 0.3
part_81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_82 = Instance.new("Part", maxim)
part_82.FormFactor = Enum.FormFactor.Custom
part_82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.Anchored = false
part_82.Material = Enum.Material.Metal
part_82.Size = Vector3.new(0.91, 2.2, 1.11)
part_82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.CFrame = CFrame.new(-10.241, 2.401, 104.586)* CFrame.Angles(0.00075197248952463, -1.5610918998718, -1.5706207752228)
part_82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_82.BrickColor = BrickColor.new("Grime")
part_82.Friction = 0.3
part_82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_49 = Instance.new("CylinderMesh", part_82)

 part_83 = Instance.new("Part", maxim)
part_83.FormFactor = Enum.FormFactor.Custom
part_83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.Anchored = false
part_83.Material = Enum.Material.Metal
part_83.Size = Vector3.new(0.6, 0.68, 1)
part_83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.CFrame = CFrame.new(-11.472, 0.866, 104.049)* CFrame.Angles(-3.1402361392975, 1.5610979795456, -2.4086065292358)
part_83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_83.BrickColor = BrickColor.new("Grime")
part_83.Friction = 0.3
part_83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_50 = Instance.new("SpecialMesh", part_83)
mesh_50.Scale = Vector3.new(3.5, 3.5, 3.5)
mesh_50.MeshId = "http://www.roblox.com/asset/?id=92575220"
mesh_50.MeshType = Enum.MeshType.FileMesh

 part_84 = Instance.new("Part", maxim)
part_84.FormFactor = Enum.FormFactor.Custom
part_84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.Anchored = false
part_84.Material = Enum.Material.Metal
part_84.Size = Vector3.new(1.4, 0.82, 0.4)
part_84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.CFrame = CFrame.new(-12.129, 0.776, 102.375)* CFrame.Angles(-1.5908984778434e-006, 0.010084391571581, 9.6445055532968e-006)
part_84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_84.BrickColor = BrickColor.new("Grime")
part_84.Friction = 0.3
part_84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_85 = Instance.new("Part", maxim)
part_85.FormFactor = Enum.FormFactor.Custom
part_85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.Anchored = false
part_85.Material = Enum.Material.Metal
part_85.Size = Vector3.new(0.6, 0.27, 0.6)
part_85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.CFrame = CFrame.new(-10.232, 2.741, 104.986)* CFrame.Angles(3.1415910720825, -0.010084391571581, 3.1415829658508)
part_85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_85.BrickColor = BrickColor.new("Grime")
part_85.Friction = 0.3
part_85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_51 = Instance.new("CylinderMesh", part_85)

 part_86 = Instance.new("Part", maxim)
part_86.FormFactor = Enum.FormFactor.Custom
part_86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.Anchored = false
part_86.Material = Enum.Material.Metal
part_86.Size = Vector3.new(0.2, 1.18, 0.4)
part_86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.CFrame = CFrame.new(-13.034, 1.528, 102.384)* CFrame.Angles(-2.0242121081537e-006, 0.010083020664752, 0.77176189422607)
part_86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_86.BrickColor = BrickColor.new("Grime")
part_86.Friction = 0.3
part_86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_87 = Instance.new("Part", maxim)
part_87.FormFactor = Enum.FormFactor.Custom
part_87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.Anchored = false
part_87.Material = Enum.Material.Metal
part_87.Size = Vector3.new(1.4, 1.48, 1)
part_87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.CFrame = CFrame.new(-11.472, 0.866, 104.049)* CFrame.Angles(-3.140841960907, 1.5610918998718, 3.1414172649384)
part_87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_87.BrickColor = BrickColor.new("Grime")
part_87.Friction = 0.3
part_87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_52 = Instance.new("SpecialMesh", part_87)
mesh_52.Scale = Vector3.new(3.5, 3.5, 3.5)
mesh_52.MeshId = "http://www.roblox.com/asset/?id=92575220"
mesh_52.MeshType = Enum.MeshType.FileMesh

 part_88 = Instance.new("Part", maxim)
part_88.FormFactor = Enum.FormFactor.Custom
part_88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.Anchored = false
part_88.Material = Enum.Material.Metal
part_88.Size = Vector3.new(0.6, 0.4, 0.2)
part_88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.CFrame = CFrame.new(-9.341, 1.105, 103.115)* CFrame.Angles(-3.1404769420624, 1.5610918998718, -3.0180556774139)
part_88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_88.BrickColor = BrickColor.new("Grime")
part_88.Friction = 0.3
part_88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_89 = Instance.new("Part", maxim)
part_89.FormFactor = Enum.FormFactor.Custom
part_89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.Anchored = false
part_89.Material = Enum.Material.Metal
part_89.Size = Vector3.new(1, 0.4, 0.2)
part_89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.CFrame = CFrame.new(-9.334, 0.922, 103.845)* CFrame.Angles(-3.1399192810059, 1.5610979795456, -2.8237855434418)
part_89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_89.BrickColor = BrickColor.new("Grime")
part_89.Friction = 0.3
part_89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_90 = Instance.new("Part", maxim)
part_90.FormFactor = Enum.FormFactor.Custom
part_90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.Anchored = false
part_90.Material = Enum.Material.Metal
part_90.Size = Vector3.new(1, 0.4, 0.2)
part_90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.CFrame = CFrame.new(-11.134, 0.922, 103.864)* CFrame.Angles(-3.1399192810059, 1.5610979795456, -2.8237855434418)
part_90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_90.BrickColor = BrickColor.new("Grime")
part_90.Friction = 0.3
part_90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_91 = Instance.new("Part", maxim)
part_91.FormFactor = Enum.FormFactor.Custom
part_91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.Anchored = false
part_91.Material = Enum.Material.Metal
part_91.Size = Vector3.new(0.8, 0.4, 0.6)
part_91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.CFrame = CFrame.new(-12.529, 0.386, 102.379)* CFrame.Angles(1.5707937479019, 9.6549938461976e-006, -0.010084353387356)
part_91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_91.BrickColor = BrickColor.new("Grime")
part_91.Friction = 0.3
part_91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_53 = Instance.new("CylinderMesh", part_91)

 part_92 = Instance.new("Part", maxim)
part_92.FormFactor = Enum.FormFactor.Custom
part_92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.Anchored = false
part_92.Material = Enum.Material.Metal
part_92.Size = Vector3.new(0.4, 0.4, 0.2)
part_92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.CFrame = CFrame.new(-13.446, 1.951, 102.389)* CFrame.Angles(-1.5811659097672, 0.79897439479828, 0.014461411163211)
part_92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_92.BrickColor = BrickColor.new("Grime")
part_92.Friction = 0.3
part_92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_54 = Instance.new("CylinderMesh", part_92)

 part_93 = Instance.new("Part", maxim)
part_93.FormFactor = Enum.FormFactor.Custom
part_93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.Anchored = false
part_93.Material = Enum.Material.Metal
part_93.Size = Vector3.new(0.2, 0.2, 1.6)
part_93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.CFrame = CFrame.new(-10.237, 1.143, 103.506)* CFrame.Angles(-3.139940738678, 1.5610979795456, -2.8237640857697)
part_93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_93.BrickColor = BrickColor.new("Grime")
part_93.Friction = 0.3
part_93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_94 = Instance.new("Part", maxim)
part_94.FormFactor = Enum.FormFactor.Custom
part_94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.Anchored = false
part_94.Material = Enum.Material.Metal
part_94.Size = Vector3.new(0.8, 1.4, 0.4)
part_94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.CFrame = CFrame.new(-12.129, 0.786, 102.375)* CFrame.Angles(-1.5908984778434e-006, 0.010084391571581, 9.6445055532968e-006)
part_94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_94.BrickColor = BrickColor.new("Grime")
part_94.Friction = 0.3
part_94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_95 = Instance.new("Part", maxim)
part_95.FormFactor = Enum.FormFactor.Custom
part_95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.Anchored = false
part_95.Material = Enum.Material.Metal
part_95.Size = Vector3.new(0.8, 0.34, 0.6)
part_95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.CFrame = CFrame.new(-12.529, 1.206, 102.379)* CFrame.Angles(1.5707937479019, 9.6549938461976e-006, -0.010084353387356)
part_95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_95.BrickColor = BrickColor.new("Black")
part_95.Friction = 0.3
part_95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_55 = Instance.new("CylinderMesh", part_95)

 part_96 = Instance.new("Part", maxim)
part_96.FormFactor = Enum.FormFactor.Custom
part_96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.Anchored = false
part_96.Material = Enum.Material.Metal
part_96.Size = Vector3.new(0.8, 0.2, 0.34)
part_96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.CFrame = CFrame.new(-12.129, 1.406, 102.375)* CFrame.Angles(-1.5908984778434e-006, 0.010084391571581, 9.6445055532968e-006)
part_96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_96.BrickColor = BrickColor.new("Black")
part_96.Friction = 0.3
part_96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_97 = Instance.new("Part", maxim)
part_97.FormFactor = Enum.FormFactor.Symmetric
part_97.CanCollide = false
part_97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.Anchored = false
part_97.Material = Enum.Material.Metal
part_97.Size = Vector3.new(1, 1, 1)
part_97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.CFrame = CFrame.new(-12.179, 1.43, 102.379)* CFrame.Angles(3.1415910720825, -0.010086313821375, -0.00018903266754933)
part_97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_97.BrickColor = BrickColor.new("Dark stone grey")
part_97.Friction = 0.3
part_97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_56 = Instance.new("BlockMesh", part_97)
mesh_56.Scale = Vector3.new(0.15, 1, 0.28)

 part_98 = Instance.new("Part", maxim)
part_98.FormFactor = Enum.FormFactor.Symmetric
part_98.CanCollide = false
part_98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.Anchored = false
part_98.Material = Enum.Material.Metal
part_98.Size = Vector3.new(1, 1, 1)
part_98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.CFrame = CFrame.new(-11.849, 2.226, 102.409)* CFrame.Angles(3.1415910720825, -0.010086313821375, 0.78521370887756)
part_98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_98.BrickColor = BrickColor.new("Dark stone grey")
part_98.Friction = 0.3
part_98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_57 = Instance.new("BlockMesh", part_98)
mesh_57.Scale = Vector3.new(0.15, 1, 0.48)

 lever3 = Instance.new("Part", maxim)
lever3.FormFactor = Enum.FormFactor.Custom
lever3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
lever3.Transparency = 1
lever3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
lever3.Anchored = false
lever3.Material = Enum.Material.Metal
lever3.Size = Vector3.new(1.25, 0.2, 0.2)
lever3.Name = "lever3"
lever3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
lever3.CFrame = CFrame.new(-10.685, 2.685, 100.81)* CFrame.Angles(5.6118293287e-005, -1.4393390417099, 2.1570045948029)
lever3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
lever3.BrickColor = BrickColor.new("Black")
lever3.Friction = 0.3
lever3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 lever2 = Instance.new("Part", maxim)
lever2.FormFactor = Enum.FormFactor.Custom
lever2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
lever2.Transparency = 1
lever2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
lever2.Anchored = false
lever2.Material = Enum.Material.Metal
lever2.Size = Vector3.new(1.25, 0.2, 0.2)
lever2.Name = "lever2"
lever2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
lever2.CFrame = CFrame.new(-10.605, 2.708, 101.64)* CFrame.Angles(5.6149816373363e-005, -1.4393390417099, 0.58620721101761)
lever2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
lever2.BrickColor = BrickColor.new("Black")
lever2.Friction = 0.3
lever2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 lever = Instance.new("Part", maxim)
lever.FormFactor = Enum.FormFactor.Custom
lever.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
lever.TopSurface = Enum.SurfaceType.SmoothNoOutlines
lever.Anchored = false
lever.Material = Enum.Material.Metal
lever.Size = Vector3.new(1.25, 0.2, 0.2)
lever.Name = "lever"
lever.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
lever.CFrame = CFrame.new(-10.605, 2.196, 101.64)* CFrame.Angles(5.6094311730703e-005, -1.4393390417099, -0.19919024407864)
lever.RightSurface = Enum.SurfaceType.SmoothNoOutlines
lever.BrickColor = BrickColor.new("Black")
lever.Friction = 0.3
lever.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

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
gname.Text = "Maxim Machine Gun"
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
desc.Text = ".303 British"
desc.Position = UDim2.new(0.25, 0, 0, 50)
desc.Font = Enum.Font.SourceSansBold
desc.Name = "desc"
desc.FontSize = Enum.FontSize.Size18


maxim.Parent = tool
maxim:BreakJoints()

local prev
local parts = maxim:GetChildren()

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
maxim:MakeJoints()

local barrel = maxim.newp
local Handle = maxim.Handle
local apressed = false
local dpressed = false
local wpressed = false
local spressed = false
local ppressed = 0
local vpressed = 0
local bpressed = 0
local angle = 0
local angle2 = -90
local crouched = 0

tor["Left Shoulder"].Part1 = nil
weld(la, tor, CFrame.new(1,.5,.2)*CFrame.Angles(math.rad(-90),0,0))
weld(maxim.Handle, la, CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0))
maxim.Handle.Weld.Name = "Weld2"

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
	Handle.Weld.C0 = CFrame.new(-1,-.6,.75)*CFrame.Angles(math.rad(90),0,0)
	tor["Right Shoulder"].Part1 = nil
	weld(ra, la, CFrame.new(-2,0,0)*CFrame.Angles(math.rad(0),0,0))
	canfire = true
	coroutine.resume(coroutine.create(function()
	wait(.3)
	char.Head.Anchored = true
	char["Left Leg"].Anchored = true
	char["Right Leg"].Anchored = true
	end))
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
	Handle.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
	if ra:FindFirstChild("Weld") then ra.Weld:Destroy() end
	tor["Right Shoulder"].Part1 = ra
	canfire = false
	coroutine.resume(coroutine.create(function()
	wait()
	char.Head.Anchored = false
	char["Left Leg"].Anchored = false
	char["Right Leg"].Anchored = false
	end))
end

mouse.KeyDown:connect(function(key)
if key == "c" and cancrouch == true then
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
if key == "a" and crouched == 1 then
	apressed = true
	while apressed == true and crouched == 1 do wait()
	angle = angle - .02
	if angle <= -0.8 then angle = -0.8 end
	la.Weld.C0 = CFrame.new(1,.5,.2)*CFrame.Angles(math.rad(angle2),angle,0)
	end
end
end)
mouse.KeyUp:connect(function(key)
if key == "a" then
	apressed = false
end
end)
mouse.KeyDown:connect(function(key)
if key == "d" and crouched == 1 then
	dpressed = true
	while dpressed == true and crouched == 1 do wait()
	angle = angle + .02
	if angle >= 0.8 then angle = 0.8 end
	la.Weld.C0 = CFrame.new(1,.5,.2)*CFrame.Angles(math.rad(angle2),angle,0)
	end
end
end)
mouse.KeyUp:connect(function(key)
if key == "d" then
	dpressed = false
end
end)
mouse.KeyDown:connect(function(key)
if key == "w" and crouched == 1 then
	wpressed = true
	while wpressed == true and crouched == 1 do wait(.05)
	angle2 = angle2 - .5
	la.Weld.C0 = CFrame.new(1,.5,.2)*CFrame.Angles(math.rad(angle2),angle,0)
	end
end
end)
mouse.KeyUp:connect(function(key)
if key == "w" then
	wpressed = false
end
end)
mouse.KeyDown:connect(function(key)
if key == "s" and crouched == 1 then
	spressed = true
	while spressed == true and crouched == 1 do wait(.05)
	angle2 = angle2 + .5
	la.Weld.C0 = CFrame.new(1,.5,.2)*CFrame.Angles(math.rad(angle2),angle,0)
	end
end
end)
mouse.KeyUp:connect(function(key)
if key == "s" then
	spressed = false
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
gf1.SoundId="rbxassetid://458287091"
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
local gf3 = Instance.new("Sound")
gf3.SoundId="rbxassetid://318369098"
gf3.PlayOnRemove=false
gf3.Volume=0.7
gf3.Looped=false
gf3.Pitch = 1
gf3.Parent=maxim.lever

local lever = maxim.lever
local lever2 = maxim.lever2
local lever3 = maxim.lever3
function boltanim()
gf3:Play()
lever.Transparency = 1
lever3.Transparency = 0
maxim.Realbarrel.BrickColor = BrickColor.new("Bright orange")
wait(.02)
lever3.Transparency = 1
lever.Transparency = 0
maxim.Realbarrel.BrickColor = BrickColor.new("Really black")
end

mouse.KeyDown:connect(function(key)
if key == "p" then
	ppressed = ppressed + 1
	if ppressed == 1 then
		print("Shells Enabled")
	end
	if ppressed == 2 then
		ppressed = 0
		print("Shells Disabled")
	end
end
end)
mouse.KeyDown:connect(function(key)
if key == "v" then
	vpressed = vpressed + 1
	if vpressed == 1 then
		print("Body Movement Enabled")
		char.Head.Anchored = false
		char["Left Leg"].Anchored = false
		char["Right Leg"].Anchored = false
	end
	if vpressed == 2 then
		vpressed = 0
		print("Body Movement Disabled")
		char.Head.Anchored = true
		char["Left Leg"].Anchored = true
		char["Right Leg"].Anchored = true
	end
end
end)
mouse.KeyDown:connect(function(key)
if key == "b" then
	bpressed = bpressed + 1
	if bpressed == 1 then
		print("Barrelsight Enabled")
		camera.CameraSubject = maxim.newp
	end
	if bpressed == 2 then
		bpressed = 0
		print("Barrelsight Disabled")
		camera.CameraSubject = char.Humanoid
	end
end
end)

function fire()
	if ammo >=1 and canfire == true then
		boltanim()
		gf1.PlaybackSpeed = math.random(1,1.5)
		gf1:Play()
	local missile = Instance.new("Part")
	missile.CFrame = barrel.CFrame*CFrame.new(0,0,-.3)
	missile.Material = Enum.Material.Metal
	missile.Size = Vector3.new(0.2, 0.2, 0.2)
	missile.CanCollide = false

	--local bvelocity = Instance.new("BodyVelocity",missile)
--bvelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
--bvelocity.velocity = newp.CFrame.lookVector*520
missile.Velocity = newp.CFrame.lookVector*520

	missile.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.BrickColor = BrickColor.new("Bright yellow")
	missile.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	missile.Name = "Bullet"
	missile.Parent = workspace
	game.Debris:AddItem(missile,3.2)
	--local bodyForce = Instance.new('BodyForce', missile)
	--bodyForce.Name = 'Antigravity'
	--bodyForce.force = Vector3.new(0, missile:GetMass() * 196.2, 0)
	ammo = ammo - 1
	amount.Text = "["..ammo.."/"..maxammo.."]"
	coroutine.resume(coroutine.create(function()
	wait()
	maxim.MuzzleFlash.Transparency = 0.3
	maxim.MuzzleFlash.PointLight.Enabled = true
	wait()
	maxim.MuzzleFlash.Transparency = 1
	maxim.MuzzleFlash.PointLight.Enabled = false
	end))
	if ppressed == 1 then
	local shell = Instance.new("Part")
	shell.CFrame = maxim.Chamber.CFrame * CFrame.fromEulerAnglesXYZ(1.5,0,0)
	shell.Size = Vector3.new(1,1,1)
	shell.BrickColor = BrickColor.new(24)
	shell.BottomSurface = 0
	shell.TopSurface = 0
	shell.Name = "Shell"
	shell.Velocity = maxim.Chamber.CFrame.lookVector * 20 + Vector3.new(math.random(-10,10),20,math.random(-10,10))
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
	game.Debris:AddItem(shell,2)
	local shellmesh = Instance.new("SpecialMesh")
	shellmesh.Scale = Vector3.new(.1,.25,.1)
	shellmesh.Parent = shell
	end
	
	missile.Touched:connect(function(h)
	if (not h:isDescendantOf(maxim)) then
	missile:Destroy()
	if not h.Name:lower():find("base") and h.Anchored == false then
	h.Velocity =  h.CFrame.lookVector*-5
	end
		if h.Parent:FindFirstChild("Humanoid") then 
			local pclone = particleemitter:Clone()
					pclone.Parent = h
					game.Debris:AddItem(pclone,.5)
			--missile:Destroy()
				if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
if h.Parent.Humanoid.Health >1000 then h.Parent.Humanoid.MaxHealth = 500 h.Parent.Humanoid.Health = 500 end
missile:destroy()
				local dmg = (math.random(10,28))
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

mouse.Button1Down:connect(function()
	mousedown = true
	while mousedown == true do wait(.1)
			fire()
	end
	end)
mouse.Button1Up:connect(function()
			mousedown = false
	end)

bin.Deselected:connect(function()
	maxim:Destroy()
	tool:Destroy()
	gungui:Destroy()
	canfire = false
	if crouched == 1 then crouched = 0 uncrouch() end
	if la:FindFirstChild("Weld") then la.Weld:Destroy() end
	tor["Left Shoulder"].Part1 = la
	if ra:FindFirstChild("Weld") then ra.Weld:Destroy() end
	tor["Right Shoulder"].Part1 = ra
	if char.Torso:FindFirstChild("Weld") then char.Torso.Weld:Destroy() end
end)
end)
end)